; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/pci.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ce_attr = type { i32, i32, i32, i32, ptr, ptr }
%struct.ce_pipe_config = type { i32, i32, i32, i32, i32, i32 }
%struct.ce_service_to_pipe = type { i32, i32, i32 }
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
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath10k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath10k_bus_ops = type { ptr, ptr, ptr }
%struct.ath10k_pci_supp_chip = type { i32, i32 }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.140, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.186, i32, i32, i32, %struct.anon.187, %struct.anon.188, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.193, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.197, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.anon.188 = type { [6 x %struct.ieee80211_supported_band] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
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
%struct.anon.197 = type { i16, i32, i32, i32, i32, i32 }
%struct.ath10k_radar_found_info = type { i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath10k_bus_params = type { i32, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ath10k_ce = type { %struct.spinlock, ptr, [12 x %struct.ath10k_ce_pipe], ptr, i32 }
%struct.ath10k_ce_pipe = type { ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.ath10k_hw_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath10k_hw_values = type { i32, i8, i8, i8, i16, i8, i32, i32, i8 }
%struct.ath10k_pci = type { ptr, ptr, ptr, ptr, i32, i32, [12 x %struct.ath10k_pci_pipe], ptr, %struct.mutex, %struct.work_struct, %struct.ath10k_ce, %struct.timer_list, i16, %struct.spinlock, i32, %struct.timer_list, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, [0 x %struct.ath10k_ahb] }
%struct.ath10k_pci_pipe = type { ptr, i8, ptr, i32, %struct.spinlock }
%struct.ath10k_ahb = type { ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.ath10k_ce_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath10k_ce_ring = type { i32, i32, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, [0 x ptr] }
%struct.ath10k_hif_sg_item = type { i16, ptr, ptr, i32, i16 }
%struct.bmi_xfer = type { i8, i8, i8, i32 }
%struct.ath10k_hw_mem_layout = type { i32, i32, i32, %struct.anon.199 }
%struct.anon.199 = type { ptr, i32 }
%struct.ath10k_fw_crash_data = type { %struct.guid_t, %struct.timespec64, [60 x i32], [12 x %struct.ath10k_ce_crash_data], ptr, i32 }
%struct.guid_t = type { [16 x i8] }
%struct.timespec64 = type { i64, i32 }
%struct.ath10k_ce_crash_data = type { i32, i32, i32, i32, i32 }
%struct.ath10k_mem_region = type { i32, i32, i32, ptr, %struct.anon.200 }
%struct.anon.200 = type { ptr, i32 }
%struct.ath10k_mem_section = type { i32, i32 }
%struct.ath10k_dump_ram_data_hdr = type { i32, i32, i32, [0 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.198, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.198 = type { ptr }

@__param_str_irq_mode = internal constant [20 x i8] c"ath10k_pci.irq_mode\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@ath10k_pci_irq_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_irq_mode = internal constant %struct.kernel_param { ptr @__param_str_irq_mode, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @ath10k_pci_irq_mode } }, section "__param", align 4
@__UNIQUE_ID_irq_modetype403 = internal constant [34 x i8] c"ath10k_pci.parmtype=irq_mode:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_mode404 = internal constant [65 x i8] c"ath10k_pci.parm=irq_mode:0: auto, 1: legacy, 2: msi (default: 0)\00", section ".modinfo", align 1
@__param_str_reset_mode = internal constant [22 x i8] c"ath10k_pci.reset_mode\00", align 1
@ath10k_pci_reset_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_reset_mode = internal constant %struct.kernel_param { ptr @__param_str_reset_mode, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @ath10k_pci_reset_mode } }, section "__param", align 4
@__UNIQUE_ID_reset_modetype405 = internal constant [36 x i8] c"ath10k_pci.parmtype=reset_mode:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_reset_mode406 = internal constant [62 x i8] c"ath10k_pci.parm=reset_mode:0: auto, 1: warm only (default: 0)\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to write diag value at 0x%x: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ath10k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"pci tx item %d paddr %pad len %d n_items %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pci tx data: \00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pci hif get free queue number\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pci hif send complete check\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pci hif map service\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath10k/pci.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci hif get default pipe\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get pcie state addr: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid pcie state addr\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get pipe cfg addr: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid pipe cfg addr\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to write pipe cfg: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get svc/pipe map: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid svc_to_pipe map\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to write svc/pipe map: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get pcie config_flags: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to write pcie config_flags: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get early alloc val: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set early alloc val: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get option val: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set option val: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to allocate copy engine pipe %d: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to initialize copy engine pipe %d: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"boot hif power down\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"boot waiting target to initialise\0A\00", [61 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"boot target indicator %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to read device register, device is gone\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"device has crashed during init\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"failed to receive initialized event from target: %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"boot target initialised\0A\00", [39 x i8] zeroinitializer }, align 32
@ath10k_pci_setup_resource.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ce->ce_lock\00", [19 x i8] zeroinitializer }, align 32
@ath10k_pci_setup_resource.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ar_pci->ps_lock\00", [47 x i8] zeroinitializer }, align 32
@ath10k_pci_setup_resource.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ar_pci->ce_diag_mutex\00", [41 x i8] zeroinitializer }, align 32
@ath10k_pci_setup_resource.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&ar_pci->dump_work)\00", [58 x i8] zeroinitializer }, align 32
@ath10k_pci_setup_resource.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&ar_pci->rx_post_retry)\00", [39 x i8] zeroinitializer }, align 32
@pci_host_ce_config_wlan = internal constant { [12 x %struct.ce_attr], [64 x i8] } { [12 x %struct.ce_attr] [%struct.ce_attr { i32 0, i32 16, i32 256, i32 0, ptr @ath10k_pci_htc_tx_cb, ptr null }, %struct.ce_attr { i32 0, i32 0, i32 2048, i32 512, ptr null, ptr @ath10k_pci_htt_htc_rx_cb }, %struct.ce_attr { i32 0, i32 0, i32 2048, i32 128, ptr null, ptr @ath10k_pci_htc_rx_cb }, %struct.ce_attr { i32 0, i32 32, i32 2048, i32 0, ptr @ath10k_pci_htc_tx_cb, ptr null }, %struct.ce_attr { i32 8, i32 8192, i32 256, i32 0, ptr @ath10k_pci_htt_tx_cb, ptr null }, %struct.ce_attr { i32 0, i32 0, i32 512, i32 512, ptr null, ptr @ath10k_pci_htt_rx_cb }, %struct.ce_attr zeroinitializer, %struct.ce_attr { i32 16, i32 2, i32 2048, i32 2, ptr null, ptr null }, %struct.ce_attr { i32 0, i32 0, i32 2048, i32 128, ptr null, ptr @ath10k_pci_pktlog_rx_cb }, %struct.ce_attr zeroinitializer, %struct.ce_attr zeroinitializer, %struct.ce_attr zeroinitializer], [64 x i8] zeroinitializer }, align 32
@pci_target_ce_config_wlan = internal constant { [10 x %struct.ce_pipe_config], [48 x i8] } { [10 x %struct.ce_pipe_config] [%struct.ce_pipe_config { i32 0, i32 33554432, i32 536870912, i32 65536, i32 0, i32 0 }, %struct.ce_pipe_config { i32 16777216, i32 16777216, i32 536870912, i32 524288, i32 0, i32 0 }, %struct.ce_pipe_config { i32 33554432, i32 16777216, i32 1073741824, i32 524288, i32 0, i32 0 }, %struct.ce_pipe_config { i32 50331648, i32 33554432, i32 536870912, i32 524288, i32 0, i32 0 }, %struct.ce_pipe_config { i32 67108864, i32 33554432, i32 65536, i32 65536, i32 0, i32 0 }, %struct.ce_pipe_config { i32 83886080, i32 16777216, i32 536870912, i32 131072, i32 0, i32 0 }, %struct.ce_pipe_config { i32 100663296, i32 50331648, i32 536870912, i32 1048576, i32 0, i32 0 }, %struct.ce_pipe_config { i32 117440512, i32 50331648, i32 0, i32 0, i32 0, i32 0 }, %struct.ce_pipe_config { i32 134217728, i32 16777216, i32 1073741824, i32 524288, i32 134217728, i32 0 }, %struct.ce_pipe_config { i32 150994944, i32 50331648, i32 536870912, i32 524288, i32 134217728, i32 0 }], [48 x i8] zeroinitializer }, align 32
@pci_target_service_to_ce_map_wlan = internal constant { [17 x %struct.ce_service_to_pipe], [52 x i8] } { [17 x %struct.ce_service_to_pipe] [%struct.ce_service_to_pipe { i32 67174400, i32 33554432, i32 50331648 }, %struct.ce_service_to_pipe { i32 67174400, i32 16777216, i32 33554432 }, %struct.ce_service_to_pipe { i32 33619968, i32 33554432, i32 50331648 }, %struct.ce_service_to_pipe { i32 33619968, i32 16777216, i32 33554432 }, %struct.ce_service_to_pipe { i32 16842752, i32 33554432, i32 50331648 }, %struct.ce_service_to_pipe { i32 16842752, i32 16777216, i32 33554432 }, %struct.ce_service_to_pipe { i32 50397184, i32 33554432, i32 50331648 }, %struct.ce_service_to_pipe { i32 50397184, i32 16777216, i32 33554432 }, %struct.ce_service_to_pipe { i32 65536, i32 33554432, i32 50331648 }, %struct.ce_service_to_pipe { i32 65536, i32 16777216, i32 33554432 }, %struct.ce_service_to_pipe { i32 16777216, i32 33554432, i32 0 }, %struct.ce_service_to_pipe { i32 16777216, i32 16777216, i32 16777216 }, %struct.ce_service_to_pipe { i32 16646144, i32 33554432, i32 0 }, %struct.ce_service_to_pipe { i32 16646144, i32 16777216, i32 16777216 }, %struct.ce_service_to_pipe { i32 196608, i32 33554432, i32 67108864 }, %struct.ce_service_to_pipe { i32 196608, i32 16777216, i32 83886080 }, %struct.ce_service_to_pipe zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to allocate copy engine pipes: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@__initcall__kmod_ath10k_pci__418_3809_ath10k_pci_init6 = internal global ptr @ath10k_pci_init, section ".initcall6.init", align 4
@ath10k_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.69, ptr @ath10k_pci_id_table, ptr @ath10k_pci_probe, ptr @ath10k_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath10k_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ath10k_pci_exit = internal global ptr @ath10k_pci_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author419 = internal constant [35 x i8] c"ath10k_pci.author=Qualcomm Atheros\00", section ".modinfo", align 1
@__UNIQUE_ID_description420 = internal constant [90 x i8] c"ath10k_pci.description=Driver support for Qualcomm Atheros 802.11ac WLAN PCIe/AHB devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file421 = internal constant [59 x i8] c"ath10k_pci.file=drivers/net/wireless/ath/ath10k/ath10k_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license422 = internal constant [32 x i8] c"ath10k_pci.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware423 = internal constant [56 x i8] c"ath10k_pci.firmware=ath10k/QCA988X/hw2.0/firmware-2.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware424 = internal constant [56 x i8] c"ath10k_pci.firmware=ath10k/QCA988X/hw2.0/firmware-3.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware425 = internal constant [56 x i8] c"ath10k_pci.firmware=ath10k/QCA988X/hw2.0/firmware-4.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware426 = internal constant [56 x i8] c"ath10k_pci.firmware=ath10k/QCA988X/hw2.0/firmware-5.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware427 = internal constant [51 x i8] c"ath10k_pci.firmware=ath10k/QCA988X/hw2.0/board.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware428 = internal constant [53 x i8] c"ath10k_pci.firmware=ath10k/QCA988X/hw2.0/board-2.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware429 = internal constant [56 x i8] c"ath10k_pci.firmware=ath10k/QCA9887/hw1.0/firmware-5.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware430 = internal constant [51 x i8] c"ath10k_pci.firmware=ath10k/QCA9887/hw1.0/board.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware431 = internal constant [53 x i8] c"ath10k_pci.firmware=ath10k/QCA9887/hw1.0/board-2.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware432 = internal constant [56 x i8] c"ath10k_pci.firmware=ath10k/QCA6174/hw2.1/firmware-4.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware433 = internal constant [56 x i8] c"ath10k_pci.firmware=ath10k/QCA6174/hw2.1/firmware-5.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware434 = internal constant [51 x i8] c"ath10k_pci.firmware=ath10k/QCA6174/hw2.1/board.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware435 = internal constant [53 x i8] c"ath10k_pci.firmware=ath10k/QCA6174/hw2.1/board-2.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware436 = internal constant [56 x i8] c"ath10k_pci.firmware=ath10k/QCA6174/hw3.0/firmware-4.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware437 = internal constant [56 x i8] c"ath10k_pci.firmware=ath10k/QCA6174/hw3.0/firmware-5.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware438 = internal constant [56 x i8] c"ath10k_pci.firmware=ath10k/QCA6174/hw3.0/firmware-6.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware439 = internal constant [51 x i8] c"ath10k_pci.firmware=ath10k/QCA6174/hw3.0/board.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware440 = internal constant [53 x i8] c"ath10k_pci.firmware=ath10k/QCA6174/hw3.0/board-2.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware441 = internal constant [56 x i8] c"ath10k_pci.firmware=ath10k/QCA9377/hw1.0/firmware-6.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware442 = internal constant [56 x i8] c"ath10k_pci.firmware=ath10k/QCA9377/hw1.0/firmware-5.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware443 = internal constant [51 x i8] c"ath10k_pci.firmware=ath10k/QCA9377/hw1.0/board.bin\00", section ".modinfo", align 1
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to post pci rx buf: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__ath10k_pci_rx_post_buf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unaligned skb\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to dma map pci rx buf\0A\00", [34 x i8] zeroinitializer }, align 32
@ath10k_pci_targ_cpu_to_ce_addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_ath10k_log_dbg = external dso_local global %struct.tracepoint, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bmi cmd took %lu jiffies hz %d ret %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ath10k_pci_bmi_recv_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unexpected: BMI data received; ignoring\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pUl\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"n/a\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware crashed! (guid %s)\0A\00", [35 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to read firmware dump area: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"firmware register dump:\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%02d]: 0x%08X 0x%08X 0x%08X 0x%08X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"failed to get memcpy hi address for firmware address %d: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed to memcpy firmware memory from %d (%d B): %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"memory region %s size %d is larger that remaining ramdump buffer size %zu\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"failed to switch ram config to IRAM for section %s: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to set RAM config from 0x%x to 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Skipping pci_dump_memory_reg invalid state\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to copy ramdump region %s: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"incorrect memdump region 0x%x with section start address 0x%x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"incorrect ramdump format with start address 0x%x and stop address 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"next ramdump section 0x%x is smaller than current end address 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ramdump buffer is too small: %zu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to read ramdump from section 0x%x: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rxed more than expected (nbytes %d, max %d)\00", [52 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci rx ce pipe %d len %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci rx: \00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ath10k_pci\00", [21 x i8] zeroinitializer }, align 32
@ath10k_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.6, i32 3801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013failed to register ath10k pci driver: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ath10k_pci_init\00", [16 x i8] zeroinitializer }, align 32
@ath10k_pci_init._entry_ptr = internal global ptr @ath10k_pci_init._entry, section ".printk_index", align 4
@ath10k_pci_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.6, i32 3805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013ahb init failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ath10k_pci_init._entry_ptr.74 = internal global ptr @ath10k_pci_init._entry.72, section ".printk_index", align 4
@ath10k_pci_id_table = internal constant { [10 x %struct.pci_device_id], [64 x i8] } { [10 x %struct.pci_device_id] [%struct.pci_device_id { i32 1911, i32 4524, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 60, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 65, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 62, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 64, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 86, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 70, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 66, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5772, i32 80, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@ath10k_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ath10k_pci_pm_suspend, ptr @ath10k_pci_pm_resume, ptr @ath10k_pci_pm_suspend, ptr @ath10k_pci_pm_resume, ptr @ath10k_pci_pm_suspend, ptr @ath10k_pci_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ath10k_pci_hif_ops = internal constant { %struct.ath10k_hif_ops, [44 x i8] } { %struct.ath10k_hif_ops { ptr @ath10k_pci_hif_tx_sg, ptr @ath10k_pci_hif_diag_read, ptr @ath10k_pci_diag_write_mem, ptr @ath10k_pci_hif_exchange_bmi_msg, ptr @ath10k_pci_hif_start, ptr @ath10k_pci_hif_stop, ptr null, ptr null, ptr @ath10k_pci_hif_map_service_to_pipe, ptr @ath10k_pci_hif_get_default_pipe, ptr @ath10k_pci_hif_send_complete_check, ptr @ath10k_pci_hif_get_free_queue_number, ptr @ath10k_pci_read32, ptr @ath10k_pci_write32, ptr @ath10k_pci_hif_power_up, ptr @ath10k_pci_hif_power_down, ptr @ath10k_pci_hif_suspend, ptr @ath10k_pci_hif_resume, ptr @ath10k_pci_hif_fetch_cal_eeprom, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ath10k_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.6, i32 3606, ptr @.str.77, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to allocate core\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ath10k_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ath10k_pci_probe._entry_ptr = internal global ptr @ath10k_pci_probe._entry, section ".printk_index", align 4
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pci probe %04x:%04x %04x:%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@ath10k_pci_bus_ops = internal constant { %struct.ath10k_bus_ops, [20 x i8] } { %struct.ath10k_bus_ops { ptr @ath10k_bus_pci_read32, ptr @ath10k_bus_pci_write32, ptr @ath10k_pci_get_num_banks }, [20 x i8] zeroinitializer }, align 32
@ath10k_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&ar_pci->ps_timer)\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to setup resource: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to claim device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to wake up device : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"pci irq %s oper_irq_mode %d irq_mode %d reset_mode %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to request irqs: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to reset chip: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register driver core: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"device %04x with chip_id %08x isn't supported\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"boot warm reset\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to wait for target init: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"boot warm reset complete\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"boot 988x chip reset\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to warm reset attempt %d of %d: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to init copy engine: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to poke copy engine: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"boot chip reset complete (warm)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"refusing cold reset as requested\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to wait for target after cold reset: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"boot qca988x chip reset complete (cold)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"boot cold reset\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"boot cold reset complete\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"boot qca6174 chip reset\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to warm reset: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"boot qca6174 chip reset complete (cold)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"boot qca99x0 chip reset\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"boot qca99x0 chip reset complete (cold)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"boot hif start\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"boot hif stop\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"boot hif power up\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"firmware crashed during chip reset\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize CE: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to setup init config: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"timeout while reading device EEPROM at %04x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to read device EEPROM at %04x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"refusing to read mmio out of bounds at 0x%08x - 0x%08zx (max 0x%08zx)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to wake target for read32 at 0x%08x: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pci ps wake refcount %lu awake %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pci ps wake reg refcount %lu awake %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"device wakeup took %d ms which is unusually long, otherwise it works normally.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pci ps sleep refcount %lu awake %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"refusing to write mmio out of bounds at 0x%08x - 0x%08zx (max 0x%08zx)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"failed to wake target for write32 of 0x%08x at 0x%08x: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unknown number of banks, assuming 1\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pci ps timer refcount %lu awake %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pci ps sleep reg refcount %lu awake %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable pci device: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ath\00", [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to request region BAR%d: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to set dma mask to 32-bit: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to iomap BAR%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"boot pci_mem 0x%pK\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"limiting irq mode to: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msi\00", [28 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"legacy\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to request legacy irq %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to wake device up on irq: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request MSI irq %d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ath10k_pci_supp_chips = internal constant { [18 x %struct.ath10k_pci_supp_chip], [48 x i8] } { [18 x %struct.ath10k_pci_supp_chip] [%struct.ath10k_pci_supp_chip { i32 4524, i32 2 }, %struct.ath10k_pci_supp_chip { i32 60, i32 2 }, %struct.ath10k_pci_supp_chip { i32 65, i32 4 }, %struct.ath10k_pci_supp_chip { i32 65, i32 5 }, %struct.ath10k_pci_supp_chip { i32 65, i32 8 }, %struct.ath10k_pci_supp_chip { i32 65, i32 9 }, %struct.ath10k_pci_supp_chip { i32 65, i32 10 }, %struct.ath10k_pci_supp_chip { i32 62, i32 4 }, %struct.ath10k_pci_supp_chip { i32 62, i32 5 }, %struct.ath10k_pci_supp_chip { i32 62, i32 8 }, %struct.ath10k_pci_supp_chip { i32 62, i32 9 }, %struct.ath10k_pci_supp_chip { i32 62, i32 10 }, %struct.ath10k_pci_supp_chip { i32 64, i32 1 }, %struct.ath10k_pci_supp_chip { i32 70, i32 0 }, %struct.ath10k_pci_supp_chip { i32 86, i32 0 }, %struct.ath10k_pci_supp_chip { i32 66, i32 0 }, %struct.ath10k_pci_supp_chip { i32 66, i32 1 }, %struct.ath10k_pci_supp_chip { i32 80, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci remove\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to resume hif: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to wake up target: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@switch.table.ath10k_pci_get_num_banks = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 3, i32 3, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 9, i32 9, i32 9], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.145 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 7]
@__sancov_gen_cov_switch_values.146 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 7]
@__sancov_gen_cov_switch_values.147 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 7]
@__sancov_gen_cov_switch_values.148 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 7]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.151 = internal global [11 x i64] [i64 9, i64 32, i64 60, i64 62, i64 64, i64 65, i64 66, i64 70, i64 80, i64 86, i64 4524]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.153 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 7]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 7]
@__sancov_gen_cov_switch_values.155 = internal global [11 x i64] [i64 9, i64 16, i64 60, i64 62, i64 64, i64 65, i64 66, i64 70, i64 80, i64 86, i64 4524]
@__sancov_gen_cov_switch_values.156 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 7]
@___asan_gen_.157 = private unnamed_addr constant [20 x i8] c"ath10k_pci_irq_mode\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 31, i32 21 }
@___asan_gen_.160 = private unnamed_addr constant [22 x i8] c"ath10k_pci_reset_mode\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 32, i32 21 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1155, i32 19 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1375, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1378, i32 50 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1429, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1792, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1830, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1842, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1871, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2343, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2349, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2358, i32 18 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2364, i32 18 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2374, i32 18 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2383, i32 18 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2389, i32 18 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2397, i32 18 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2406, i32 18 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2417, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2426, i32 18 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2439, i32 18 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2448, i32 18 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2456, i32 18 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2502, i32 19 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2535, i32 19 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2878, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3288, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3295, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3320, i32 18 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3325, i32 19 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3330, i32 18 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3335, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3462, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3463, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3464, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3466, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3468, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [24 x i8] c"pci_host_ce_config_wlan\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 119, i32 29 }
@___asan_gen_.289 = private unnamed_addr constant [26 x i8] c"pci_target_ce_config_wlan\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 225, i32 36 }
@___asan_gen_.292 = private unnamed_addr constant [34 x i8] c"pci_target_service_to_ce_map_wlan\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 338, i32 40 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3497, i32 18 }
@___asan_gen_.298 = private unnamed_addr constant [18 x i8] c"ath10k_pci_driver\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3784, i32 26 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 826, i32 20 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 777, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 783, i32 19 }
@___asan_gen_.314 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 326, i32 6 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2256, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2221, i32 19 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1765, i32 33 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1767, i32 33 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1769, i32 17 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1446, i32 18 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1452, i32 17 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1454, i32 18 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1029, i32 19 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1036, i32 19 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1686, i32 20 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1702, i32 21 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1573, i32 19 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1611, i32 19 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1647, i32 19 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1482, i32 19 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1503, i32 20 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1517, i32 21 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1527, i32 20 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1537, i32 20 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1211, i32 20 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1222, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1224, i32 50 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3798, i32 8 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3800, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3805, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant [20 x i8] c"ath10k_pci_id_table\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 53, i32 35 }
@___asan_gen_.406 = private unnamed_addr constant [18 x i8] c"ath10k_pci_pm_ops\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3780, i32 8 }
@___asan_gen_.409 = private unnamed_addr constant [19 x i8] c"ath10k_pci_hif_ops\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3072, i32 36 }
@___asan_gen_.412 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3606, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3610, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [19 x i8] c"ath10k_pci_bus_ops\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3526, i32 36 }
@___asan_gen_.433 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3631, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3635, i32 18 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3641, i32 18 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3647, i32 19 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3660, i32 18 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3666, i32 19 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3690, i32 18 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3707, i32 18 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3714, i32 17 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2624, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2649, i32 19 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2653, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2679, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2691, i32 20 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2708, i32 20 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2716, i32 20 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2721, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2726, i32 19 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2738, i32 19 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2743, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3343, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3369, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2752, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2771, i32 19 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2775, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2784, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2799, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1959, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2074, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2820, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2840, i32 20 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2851, i32 18 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2857, i32 18 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3015, i32 18 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3024, i32 18 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 658, i32 19 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 665, i32 19 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 542, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 444, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 475, i32 21 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 576, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 635, i32 19 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 642, i32 19 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2310, i32 18 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 599, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 458, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3384, i32 18 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3388, i32 42 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3390, i32 18 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3398, i32 18 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3408, i32 18 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3413, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3230, i32 19 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 759, i32 10 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 761, i32 9 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3187, i32 19 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3108, i32 19 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3170, i32 19 }
@___asan_gen_.610 = private unnamed_addr constant [22 x i8] c"ath10k_pci_supp_chips\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 68, i32 42 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3740, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 3775, i32 19 }
@___asan_gen_.619 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.620 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath10k/pci.c\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 2918, i32 18 }
@___asan_gen_.622 = private unnamed_addr constant [38 x i8] c"switch.table.ath10k_pci_get_num_banks\00", align 1
@llvm.compiler.used = appending global [193 x ptr] [ptr @__UNIQUE_ID_author419, ptr @__UNIQUE_ID_description420, ptr @__UNIQUE_ID_file421, ptr @__UNIQUE_ID_firmware423, ptr @__UNIQUE_ID_firmware424, ptr @__UNIQUE_ID_firmware425, ptr @__UNIQUE_ID_firmware426, ptr @__UNIQUE_ID_firmware427, ptr @__UNIQUE_ID_firmware428, ptr @__UNIQUE_ID_firmware429, ptr @__UNIQUE_ID_firmware430, ptr @__UNIQUE_ID_firmware431, ptr @__UNIQUE_ID_firmware432, ptr @__UNIQUE_ID_firmware433, ptr @__UNIQUE_ID_firmware434, ptr @__UNIQUE_ID_firmware435, ptr @__UNIQUE_ID_firmware436, ptr @__UNIQUE_ID_firmware437, ptr @__UNIQUE_ID_firmware438, ptr @__UNIQUE_ID_firmware439, ptr @__UNIQUE_ID_firmware440, ptr @__UNIQUE_ID_firmware441, ptr @__UNIQUE_ID_firmware442, ptr @__UNIQUE_ID_firmware443, ptr @__UNIQUE_ID_irq_mode404, ptr @__UNIQUE_ID_irq_modetype403, ptr @__UNIQUE_ID_license422, ptr @__UNIQUE_ID_reset_mode406, ptr @__UNIQUE_ID_reset_modetype405, ptr @__exitcall_ath10k_pci_exit, ptr @__initcall__kmod_ath10k_pci__418_3809_ath10k_pci_init6, ptr @__param_irq_mode, ptr @__param_reset_mode, ptr @ath10k_pci_exit, ptr @ath10k_pci_init._entry, ptr @ath10k_pci_init._entry.72, ptr @ath10k_pci_init._entry_ptr, ptr @ath10k_pci_init._entry_ptr.74, ptr @ath10k_pci_probe._entry, ptr @ath10k_pci_probe._entry_ptr, ptr @ath10k_pci_irq_mode, ptr @ath10k_pci_reset_mode, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @ath10k_pci_setup_resource.__key, ptr @.str.31, ptr @ath10k_pci_setup_resource.__key.32, ptr @.str.33, ptr @ath10k_pci_setup_resource.__key.34, ptr @.str.35, ptr @ath10k_pci_setup_resource.__key.36, ptr @.str.37, ptr @ath10k_pci_setup_resource.__key.38, ptr @.str.39, ptr @pci_host_ce_config_wlan, ptr @pci_target_ce_config_wlan, ptr @pci_target_service_to_ce_map_wlan, ptr @.str.40, ptr @ath10k_pci_driver, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @ath10k_pci_id_table, ptr @ath10k_pci_pm_ops, ptr @ath10k_pci_hif_ops, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @ath10k_pci_bus_ops, ptr @ath10k_pci_probe.__key, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @ath10k_pci_supp_chips, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @switch.table.ath10k_pci_get_num_banks], section "llvm.metadata"
@0 = internal global [156 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_irq_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_reset_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_setup_resource.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_setup_resource.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_setup_resource.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_setup_resource.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_setup_resource.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_host_ce_config_wlan to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_target_ce_config_wlan to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_target_service_to_ce_map_wlan to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_id_table to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_hif_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_bus_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_pci_supp_chips to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_pci_get_num_banks to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_write32(ptr noundef %ar, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ce_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %0 = ptrtoint ptr %ce_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_priv.i, align 4
  %bus_ops = getelementptr inbounds %struct.ath10k_ce, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_ops, align 4
  %write32 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32, align 4
  tail call void %5(ptr noundef %ar, i32 noundef %offset, i32 noundef %value) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_pci_read32(ptr noundef %ar, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ce_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %0 = ptrtoint ptr %ce_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_priv.i, align 4
  %bus_ops = getelementptr inbounds %struct.ath10k_ce, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = tail call i32 %5(ptr noundef %ar, i32 noundef %offset) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_pci_soc_read32(ptr noundef %ar, i32 noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, %addr
  %ce_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %4 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath10k_ce, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1.i = tail call i32 %9(ptr noundef %ar, i32 noundef %add) #9
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_soc_write32(ptr noundef %ar, i32 noundef %addr, i32 noundef %val) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, %addr
  %ce_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %4 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath10k_ce, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i, align 4
  %write32.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i, align 4
  tail call void %9(ptr noundef %ar, i32 noundef %add, i32 noundef %val) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_pci_reg_read32(ptr noundef %ar, i32 noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %pcie_local_base_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %pcie_local_base_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pcie_local_base_address, align 4
  %add = add i32 %3, %addr
  %ce_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %4 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath10k_ce, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1.i = tail call i32 %9(ptr noundef %ar, i32 noundef %add) #9
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_reg_write32(ptr noundef %ar, i32 noundef %addr, i32 noundef %val) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %pcie_local_base_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %pcie_local_base_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pcie_local_base_address, align 4
  %add = add i32 %3, %addr
  %ce_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %4 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath10k_ce, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i, align 4
  %write32.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i, align 4
  tail call void %9(ptr noundef %ar, i32 noundef %add, i32 noundef %val) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath10k_pci_irq_pending(ptr noundef %ar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %soc_core_base_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %soc_core_base_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %soc_core_base_address, align 4
  %add = add i32 %3, 12
  %ce_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %4 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath10k_ce, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1.i = tail call i32 %9(ptr noundef %ar, i32 noundef %add) #9
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %pcie_intr_fw_mask = getelementptr inbounds %struct.ath10k_hw_regs, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %pcie_intr_fw_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pcie_intr_fw_mask, align 4
  %pcie_intr_ce_mask_all = getelementptr inbounds %struct.ath10k_hw_regs, ptr %11, i32 0, i32 26
  %14 = ptrtoint ptr %pcie_intr_ce_mask_all to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcie_intr_ce_mask_all, align 4
  %or = or i32 %15, %13
  %and = and i32 %or, %call1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_disable_and_clear_legacy_irq(ptr noundef %ar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %soc_core_base_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %soc_core_base_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %soc_core_base_address, align 4
  %add = add i32 %3, 8
  %ce_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %4 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath10k_ce, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i, align 4
  %write32.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i, align 4
  tail call void %9(ptr noundef %ar, i32 noundef %add, i32 noundef 0) #9
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %soc_core_base_address2 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %soc_core_base_address2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %soc_core_base_address2, align 4
  %pcie_intr_clr_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %11, i32 0, i32 27
  %14 = ptrtoint ptr %pcie_intr_clr_address to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcie_intr_clr_address, align 4
  %add4 = add i32 %15, %13
  %pcie_intr_fw_mask = getelementptr inbounds %struct.ath10k_hw_regs, ptr %11, i32 0, i32 25
  %16 = ptrtoint ptr %pcie_intr_fw_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcie_intr_fw_mask, align 4
  %pcie_intr_ce_mask_all = getelementptr inbounds %struct.ath10k_hw_regs, ptr %11, i32 0, i32 26
  %18 = ptrtoint ptr %pcie_intr_ce_mask_all to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pcie_intr_ce_mask_all, align 4
  %or = or i32 %19, %17
  %20 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i19 = getelementptr inbounds %struct.ath10k_ce, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bus_ops.i19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus_ops.i19, align 4
  %write32.i20 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write32.i20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i20, align 4
  tail call void %25(ptr noundef %ar, i32 noundef %add4, i32 noundef %or) #9
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %soc_core_base_address8 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %soc_core_base_address8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %soc_core_base_address8, align 4
  %add9 = add i32 %29, 8
  %30 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i22 = getelementptr inbounds %struct.ath10k_ce, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %bus_ops.i22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus_ops.i22, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call1.i = tail call i32 %35(ptr noundef %ar, i32 noundef %add9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_enable_legacy_irq(ptr noundef %ar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %soc_core_base_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %soc_core_base_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %soc_core_base_address, align 4
  %add = add i32 %3, 8
  %pcie_intr_fw_mask = getelementptr inbounds %struct.ath10k_hw_regs, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %pcie_intr_fw_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pcie_intr_fw_mask, align 4
  %pcie_intr_ce_mask_all = getelementptr inbounds %struct.ath10k_hw_regs, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %pcie_intr_ce_mask_all to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pcie_intr_ce_mask_all, align 4
  %or = or i32 %7, %5
  %ce_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %8 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath10k_ce, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus_ops.i, align 4
  %write32.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i, align 4
  tail call void %13(ptr noundef %ar, i32 noundef %add, i32 noundef %or) #9
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %soc_core_base_address4 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %soc_core_base_address4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %soc_core_base_address4, align 4
  %add5 = add i32 %17, 8
  %18 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i12 = getelementptr inbounds %struct.ath10k_ce, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %bus_ops.i12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus_ops.i12, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call1.i = tail call i32 %23(ptr noundef %ar, i32 noundef %add5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_rx_post(ptr nocapture noundef readonly %ar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %hw_values = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %0 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_values, align 4
  %ce_count5 = getelementptr inbounds %struct.ath10k_hw_values, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ce_count5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ce_count5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp7.not = icmp eq i8 %3, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 6, i32 %i.08
  tail call fastcc void @ath10k_pci_rx_post_pipe(ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %i.08, 1
  %4 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_values, align 4
  %ce_count = getelementptr inbounds %struct.ath10k_hw_values, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ce_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ce_count, align 4
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_pci_rx_post_pipe(ptr nocapture noundef readonly %pipe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_ce_state = getelementptr inbounds %struct.ath10k_pci_pipe, ptr %pipe, i32 0, i32 2
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
  %buf_sz = getelementptr inbounds %struct.ath10k_pci_pipe, ptr %pipe, i32 0, i32 3
  %6 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dest_ring = getelementptr inbounds %struct.ath10k_ce_pipe, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %dest_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dest_ring, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #9
  %call4 = tail call i32 @__ath10k_ce_rx_num_free_bufs(ptr noundef %5) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp655 = icmp sgt i32 %call4, -1
  br i1 %cmp655, label %if.end3.while.body_crit_edge, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.while.body_crit_edge:                     ; preds = %if.end3
  br label %while.body

while.cond:                                       ; preds = %if.end53.i
  %dec = add nsw i32 %num.056, -1
  %cmp6 = icmp sgt i32 %num.056, 0
  br i1 %cmp6, label %while.cond.while.body_crit_edge, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %if.end3.while.body_crit_edge
  %num.056 = phi i32 [ %dec, %while.cond.while.body_crit_edge ], [ %call4, %if.end3.while.body_crit_edge ]
  %10 = ptrtoint ptr %hif_ce_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hif_ce_state, align 4
  %ce_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %11, i32 0, i32 131
  %12 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ce_priv.i.i, align 4
  %14 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe, align 4
  %16 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_sz, align 4
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %17, i32 noundef 2592) #9
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %while.body.if.end12_crit_edge, label %if.end.i

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b94.i = load i1, ptr @__ath10k_pci_rx_post_buf.__already_done, align 1
  br i1 %.b94.i, label %land.rhs.i.if.end32.i_crit_edge, label %if.then10.i, !prof !387

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then10.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__ath10k_pci_rx_post_buf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 777, i32 noundef 9, ptr noundef nonnull @.str.42) #9
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then10.i, %land.rhs.i.if.end32.i_crit_edge, %if.end.i.if.end32.i_crit_edge
  %dev.i = getelementptr inbounds %struct.ath10k, ptr %11, i32 0, i32 3
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
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
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %24) #9
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %skb_tailroom.exit.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !387

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %22) #9
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %22, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %36, %if.end.i.i.i ], [ %34, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %38, i32 noundef -1) #9
  br label %__ath10k_pci_rx_post_buf.exit.thread34

dma_map_single_attrs.exit.i:                      ; preds = %skb_tailroom.exit.i
  %add.i = add i32 %cond.i.i, %26
  tail call void @debug_dma_map_single(ptr noundef %22, ptr noundef %24, i32 noundef %add.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %39 = load ptr, ptr @mem_map, align 4
  %40 = ptrtoint ptr %24 to i32
  %sub.i.i = add i32 %40, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %39, i32 %shr.i.i
  %and.i.i = and i32 %40, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %22, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %add.i, i32 noundef 2, i32 noundef 0) #9
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %42, i32 noundef %call41.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.__ath10k_pci_rx_post_buf.exit.thread34_crit_edge, label %if.end53.i

dma_map_single_attrs.exit.i.__ath10k_pci_rx_post_buf.exit.thread34_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ath10k_pci_rx_post_buf.exit.thread34

__ath10k_pci_rx_post_buf.exit.thread34:           ; preds = %dma_map_single_attrs.exit.i.__ath10k_pci_rx_post_buf.exit.thread34_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %11, ptr noundef nonnull @.str.43) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #9
  br label %if.end12

if.end53.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call41.i.i, ptr %cb.i.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %13) #9
  %ops.i = getelementptr inbounds %struct.ath10k_ce_pipe, ptr %15, i32 0, i32 9
  %44 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i, align 4
  %ce_rx_post_buf.i = getelementptr inbounds %struct.ath10k_ce_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %ce_rx_post_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ce_rx_post_buf.i, align 4
  %call56.i = tail call i32 %47(ptr noundef %15, ptr noundef nonnull %call.i.i.i, i32 noundef %call41.i.i) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool58.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool58.not.i, label %while.cond, label %if.then59.i

if.then59.i:                                      ; preds = %if.end53.i
  %len.i.le = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %data_len.i.i.i.le = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %50 = ptrtoint ptr %len.i.le to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i.le, align 4
  %52 = ptrtoint ptr %data_len.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_len.i.i.i.le, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.i.not.i96.i = icmp eq i32 %53, 0
  br i1 %tobool.i.not.i96.i, label %cond.false.i102.i, label %if.then59.i.__ath10k_pci_rx_post_buf.exit_crit_edge

if.then59.i.__ath10k_pci_rx_post_buf.exit_crit_edge: ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ath10k_pci_rx_post_buf.exit

cond.false.i102.i:                                ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #11
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
  br label %__ath10k_pci_rx_post_buf.exit

__ath10k_pci_rx_post_buf.exit:                    ; preds = %cond.false.i102.i, %if.then59.i.__ath10k_pci_rx_post_buf.exit_crit_edge
  %cond.i103.i = phi i32 [ %sub.ptr.sub.i101.i, %cond.false.i102.i ], [ 0, %if.then59.i.__ath10k_pci_rx_post_buf.exit_crit_edge ]
  %add63.i = add i32 %cond.i103.i, %51
  tail call void @dma_unmap_page_attrs(ptr noundef %49, i32 noundef %call41.i.i, i32 noundef %add63.i, i32 noundef 2, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call56.i)
  %cond = icmp eq i32 %call56.i, -28
  br i1 %cond, label %__ath10k_pci_rx_post_buf.exit.cleanup_crit_edge, label %__ath10k_pci_rx_post_buf.exit.if.end12_crit_edge

__ath10k_pci_rx_post_buf.exit.if.end12_crit_edge: ; preds = %__ath10k_pci_rx_post_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

__ath10k_pci_rx_post_buf.exit.cleanup_crit_edge:  ; preds = %__ath10k_pci_rx_post_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %__ath10k_pci_rx_post_buf.exit.if.end12_crit_edge, %__ath10k_pci_rx_post_buf.exit.thread34, %while.body.if.end12_crit_edge
  %retval.0.i31 = phi i32 [ %call56.i, %__ath10k_pci_rx_post_buf.exit.if.end12_crit_edge ], [ -5, %__ath10k_pci_rx_post_buf.exit.thread34 ], [ -12, %while.body.if.end12_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i31) #9
  %rx_post_retry = getelementptr inbounds %struct.ath10k, ptr %1, i32 1, i32 41, i32 5, i32 0, i32 0, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %58, 50
  %call13 = tail call i32 @mod_timer(ptr noundef %rx_post_retry, i32 noundef %add) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %__ath10k_pci_rx_post_buf.exit.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_rx_replenish_retry(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr i8, ptr %t, i32 -1412
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
  br i1 %cmp7.not.i, label %entry.ath10k_pci_rx_post.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ath10k_pci_rx_post.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_rx_post.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath10k_pci, ptr %drv_priv.i.i, i32 0, i32 6, i32 %i.08.i
  tail call fastcc void @ath10k_pci_rx_post_pipe(ptr noundef %arrayidx.i) #9
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
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ath10k_pci_rx_post.exit_crit_edge

for.body.i.ath10k_pci_rx_post.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_rx_post.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ath10k_pci_rx_post.exit:                          ; preds = %for.body.i.ath10k_pci_rx_post.exit_crit_edge, %entry.ath10k_pci_rx_post.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_pci_diag_write_mem(ptr noundef %ar, i32 noundef %address, ptr nocapture noundef readonly %data, i32 noundef %nbytes) #2 align 64 {
entry:
  %address.addr = alloca i32, align 4
  %buf = alloca ptr, align 4
  %completed_nbytes = alloca i32, align 4
  %ce_data_base = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %address.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %address, ptr %address.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf, align 4, !annotation !388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %completed_nbytes) #9
  %2 = ptrtoint ptr %completed_nbytes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %completed_nbytes, align 4, !annotation !388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ce_data_base) #9
  %3 = ptrtoint ptr %ce_data_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ce_data_base, align 4
  %ce_diag_mutex = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 4, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ce_diag_mutex, i32 noundef 0) #9
  %ce_diag1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 4, i32 3
  %4 = ptrtoint ptr %ce_diag1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce_diag1, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %nbytes, i32 2048)
  %dev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef %6, ptr noundef nonnull %ce_data_base, i32 noundef 2592, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.then48_crit_edge, label %if.end

entry.if.then48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.end:                                           ; preds = %entry
  %targ_cpu_to_ce_addr.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 0, i32 2
  %9 = ptrtoint ptr %targ_cpu_to_ce_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %targ_cpu_to_ce_addr.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b46.i = load i1, ptr @ath10k_pci_targ_cpu_to_ce_addr.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i.ath10k_pci_targ_cpu_to_ce_addr.exit_crit_edge, label %if.then.i, !prof !387

land.rhs.i.ath10k_pci_targ_cpu_to_ce_addr.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_targ_cpu_to_ce_addr.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ath10k_pci_targ_cpu_to_ce_addr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 890, i32 noundef 9, ptr noundef null) #9
  br label %ath10k_pci_targ_cpu_to_ce_addr.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %address.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %address.addr, align 4
  %call41.i = call i32 %10(ptr noundef %ar, i32 noundef %12) #9
  br label %ath10k_pci_targ_cpu_to_ce_addr.exit

ath10k_pci_targ_cpu_to_ce_addr.exit:              ; preds = %if.end39.i, %if.then.i, %land.rhs.i.ath10k_pci_targ_cpu_to_ce_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -524, %if.then.i ], [ -524, %land.rhs.i.ath10k_pci_targ_cpu_to_ce_addr.exit_crit_edge ]
  %13 = ptrtoint ptr %address.addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i, ptr %address.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %tobool4.not93 = icmp eq i32 %nbytes, 0
  br i1 %tobool4.not93, label %ath10k_pci_targ_cpu_to_ce_addr.exit.if.end46_crit_edge, label %ath10k_pci_targ_cpu_to_ce_addr.exit.while.body_crit_edge

ath10k_pci_targ_cpu_to_ce_addr.exit.while.body_crit_edge: ; preds = %ath10k_pci_targ_cpu_to_ce_addr.exit
  br label %while.body

ath10k_pci_targ_cpu_to_ce_addr.exit.if.end46_crit_edge: ; preds = %ath10k_pci_targ_cpu_to_ce_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %ath10k_pci_targ_cpu_to_ce_addr.exit.while.body_crit_edge
  %data.addr.095 = phi ptr [ %add.ptr, %if.end40.while.body_crit_edge ], [ %data, %ath10k_pci_targ_cpu_to_ce_addr.exit.while.body_crit_edge ]
  %remaining_bytes.094 = phi i32 [ %sub, %if.end40.while.body_crit_edge ], [ %nbytes, %ath10k_pci_targ_cpu_to_ce_addr.exit.while.body_crit_edge ]
  %14 = call i32 @llvm.smin.i32(i32 %remaining_bytes.094, i32 2048)
  %15 = call ptr @memcpy(ptr %call.i, ptr %data.addr.095, i32 %14)
  %16 = ptrtoint ptr %address.addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address.addr, align 4
  %call11 = call i32 @ath10k_ce_rx_post_buf(ptr noundef %5, ptr noundef nonnull %address.addr, i32 noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end14, label %while.body.if.end46_crit_edge

while.body.if.end46_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.end14:                                         ; preds = %while.body
  %18 = ptrtoint ptr %ce_data_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ce_data_base, align 4
  %call15 = call i32 @ath10k_ce_send(ptr noundef %5, ptr noundef null, i32 noundef %19, i32 noundef %14, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end14.while.cond19_crit_edge, label %if.end14.if.end46_crit_edge

if.end14.if.end46_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.end14.while.cond19_crit_edge:                  ; preds = %if.end14
  br label %while.cond19

while.cond19:                                     ; preds = %while.body22.while.cond19_crit_edge, %if.end14.while.cond19_crit_edge
  %i.0 = phi i32 [ %add, %while.body22.while.cond19_crit_edge ], [ 0, %if.end14.while.cond19_crit_edge ]
  %call20 = call i32 @ath10k_ce_completed_send_next(ptr noundef %5, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %while.cond19.while.cond26_crit_edge, label %while.body22

while.cond19.while.cond26_crit_edge:              ; preds = %while.cond19
  br label %while.cond26

while.body22:                                     ; preds = %while.cond19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 10737400) #9
  %add = add nuw nsw i32 %i.0, 50
  %cmp23 = icmp ugt i32 %i.0, 9950
  br i1 %cmp23, label %while.body22.if.end46_crit_edge, label %while.body22.while.cond19_crit_edge

while.body22.while.cond19_crit_edge:              ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond19

while.body22.if.end46_crit_edge:                  ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

while.cond26:                                     ; preds = %while.body29.while.cond26_crit_edge, %while.cond19.while.cond26_crit_edge
  %i.1 = phi i32 [ %add30, %while.body29.while.cond26_crit_edge ], [ 0, %while.cond19.while.cond26_crit_edge ]
  %call27 = call i32 @ath10k_ce_completed_recv_next(ptr noundef %5, ptr noundef nonnull %buf, ptr noundef nonnull %completed_nbytes) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %while.end34, label %while.body29

while.body29:                                     ; preds = %while.cond26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 10737400) #9
  %add30 = add nuw nsw i32 %i.1, 50
  %cmp31 = icmp ugt i32 %i.1, 9950
  br i1 %cmp31, label %while.body29.if.end46_crit_edge, label %while.body29.while.cond26_crit_edge

while.body29.while.cond26_crit_edge:              ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond26

while.body29.if.end46_crit_edge:                  ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

while.end34:                                      ; preds = %while.cond26
  %22 = ptrtoint ptr %completed_nbytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %completed_nbytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %23)
  %cmp35.not = icmp eq i32 %14, %23
  br i1 %cmp35.not, label %if.end37, label %while.end34.if.end46_crit_edge

while.end34.if.end46_crit_edge:                   ; preds = %while.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.end37:                                         ; preds = %while.end34
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = ptrtoint ptr %address.addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %address.addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp38.not = icmp eq i32 %27, %29
  br i1 %cmp38.not, label %if.end40, label %if.end37.if.end46_crit_edge

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.end40:                                         ; preds = %if.end37
  %sub = sub i32 %remaining_bytes.094, %14
  %add41 = add i32 %27, %14
  %30 = ptrtoint ptr %address.addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add41, ptr %address.addr, align 4
  %add.ptr = getelementptr i8, ptr %data.addr.095, i32 %14
  %tobool4.not = icmp eq i32 %sub, 0
  br i1 %tobool4.not, label %if.end40.if.end46_crit_edge, label %if.end40.while.body_crit_edge

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.end46:                                         ; preds = %if.end40.if.end46_crit_edge, %if.end37.if.end46_crit_edge, %while.end34.if.end46_crit_edge, %while.body29.if.end46_crit_edge, %while.body22.if.end46_crit_edge, %if.end14.if.end46_crit_edge, %while.body.if.end46_crit_edge, %ath10k_pci_targ_cpu_to_ce_addr.exit.if.end46_crit_edge
  %ret.1 = phi i32 [ 0, %ath10k_pci_targ_cpu_to_ce_addr.exit.if.end46_crit_edge ], [ -16, %while.body29.if.end46_crit_edge ], [ -16, %while.body22.if.end46_crit_edge ], [ %call11, %while.body.if.end46_crit_edge ], [ %call15, %if.end14.if.end46_crit_edge ], [ 0, %if.end40.if.end46_crit_edge ], [ -5, %while.end34.if.end46_crit_edge ], [ -5, %if.end37.if.end46_crit_edge ]
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %33 = ptrtoint ptr %ce_data_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ce_data_base, align 4
  call void @dma_free_attrs(ptr noundef %32, i32 noundef %6, ptr noundef nonnull %call.i, i32 noundef %34, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp47.not = icmp eq i32 %ret.1, 0
  br i1 %cmp47.not, label %if.end46.if.end49_crit_edge, label %if.end46.if.then48_crit_edge

if.end46.if.then48_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.end46.if.end49_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then48:                                        ; preds = %if.end46.if.then48_crit_edge, %entry.if.then48_crit_edge
  %ret.18689 = phi i32 [ %ret.1, %if.end46.if.then48_crit_edge ], [ -12, %entry.if.then48_crit_edge ]
  %35 = ptrtoint ptr %address.addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %address.addr, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str, i32 noundef %36, i32 noundef %ret.18689) #9
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end46.if.end49_crit_edge
  %ret.18690 = phi i32 [ %ret.18689, %if.then48 ], [ 0, %if.end46.if.end49_crit_edge ]
  call void @mutex_unlock(ptr noundef %ce_diag_mutex) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ce_data_base) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %completed_nbytes) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %ret.18690
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_rx_post_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_send(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_completed_send_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_completed_recv_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_pci_hif_tx_sg(ptr noundef %ar, i8 noundef zeroext %pipe_id, ptr noundef %items, i32 noundef %n_items) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %ce_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %0 = ptrtoint ptr %ce_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_priv.i, align 4
  %idxprom = zext i8 %pipe_id to i32
  %arrayidx = getelementptr %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 6, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %src_ring2 = getelementptr inbounds %struct.ath10k_ce_pipe, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %src_ring2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src_ring2, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #9
  %nentries_mask3 = getelementptr inbounds %struct.ath10k_ce_ring, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %nentries_mask3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nentries_mask3, align 4
  %sw_index4 = getelementptr inbounds %struct.ath10k_ce_ring, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %sw_index4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sw_index4, align 4
  %write_index5 = getelementptr inbounds %struct.ath10k_ce_ring, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %write_index5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %write_index5, align 4
  %12 = xor i32 %11, -1
  %sub6 = add i32 %9, %12
  %and = and i32 %sub6, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %n_items)
  %cmp = icmp ult i32 %and, %n_items
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader, !prof !389

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %sub8 = add i32 %n_items, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8)
  %cmp9144 = icmp sgt i32 %sub8, 0
  br i1 %cmp9144, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.do.body33_crit_edge

for.cond.preheader.do.body33_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %i.0145 = phi i32 [ %inc, %for.inc.do.body_crit_edge ], [ 0, %for.cond.preheader.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %13 = load i32, ptr @ath10k_debug_mask, align 4
  %and10 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %do.body.if.then13_crit_edge

do.body.if.then13_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_hif_tx_sg, %if.then13)) #9
          to label %do.end [label %if.then13], !srcloc !390

if.then13:                                        ; preds = %lor.lhs.false, %do.body.if.then13_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %paddr = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0145, i32 3
  %len = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0145, i32 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len, align 4
  %conv = zext i16 %15 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %i.0145, ptr noundef %paddr, i32 noundef %conv, i32 noundef %n_items) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %lor.lhs.false
  %arrayidx17 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0145
  %vaddr = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0145, i32 2
  %16 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vaddr, align 4
  %len19 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0145, i32 4
  %18 = ptrtoint ptr %len19 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len19, align 4
  %conv20 = zext i16 %19 to i32
  tail call void @ath10k_dbg_dump(ptr noundef %ar, i32 noundef 64, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef %17, i32 noundef %conv20) #9
  %transfer_context = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0145, i32 1
  %20 = ptrtoint ptr %transfer_context to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_context, align 4
  %paddr23 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0145, i32 3
  %22 = ptrtoint ptr %paddr23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %paddr23, align 4
  %24 = ptrtoint ptr %len19 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len19, align 4
  %conv26 = zext i16 %25 to i32
  %26 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx17, align 4
  %conv28 = zext i16 %27 to i32
  %call29 = tail call i32 @ath10k_ce_send_nolock(ptr noundef %3, ptr noundef %21, i32 noundef %23, i32 noundef %conv26, i32 noundef %conv28, i32 noundef 65536) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.inc, label %do.end.err68_crit_edge

do.end.err68_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err68

for.inc:                                          ; preds = %do.end
  %inc = add nuw nsw i32 %i.0145, 1
  %exitcond.not = icmp eq i32 %inc, %sub8
  br i1 %exitcond.not, label %for.inc.do.body33_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.do.body33_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

do.body33:                                        ; preds = %for.inc.do.body33_crit_edge, %for.cond.preheader.do.body33_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.do.body33_crit_edge ], [ %sub8, %for.inc.do.body33_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %28 = load i32, ptr @ath10k_debug_mask, align 4
  %and34 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %do.body33.if.then39_crit_edge

do.body33.if.then39_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

lor.lhs.false36:                                  ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_hif_tx_sg, %if.then39)) #9
          to label %do.end47 [label %if.then39], !srcloc !390

if.then39:                                        ; preds = %lor.lhs.false36, %do.body33.if.then39_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %paddr41 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0.lcssa, i32 3
  %len43 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0.lcssa, i32 4
  %29 = ptrtoint ptr %len43 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len43, align 4
  %conv44 = zext i16 %30 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %i.0.lcssa, ptr noundef %paddr41, i32 noundef %conv44, i32 noundef %n_items) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then39, %lor.lhs.false36
  %arrayidx48 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0.lcssa
  %vaddr49 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0.lcssa, i32 2
  %31 = ptrtoint ptr %vaddr49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vaddr49, align 4
  %len51 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0.lcssa, i32 4
  %33 = ptrtoint ptr %len51 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %len51, align 4
  %conv52 = zext i16 %34 to i32
  tail call void @ath10k_dbg_dump(ptr noundef %ar, i32 noundef 64, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef %32, i32 noundef %conv52) #9
  %transfer_context54 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0.lcssa, i32 1
  %35 = ptrtoint ptr %transfer_context54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %transfer_context54, align 4
  %paddr56 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0.lcssa, i32 3
  %37 = ptrtoint ptr %paddr56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %paddr56, align 4
  %39 = ptrtoint ptr %len51 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %len51, align 4
  %conv59 = zext i16 %40 to i32
  %41 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx48, align 4
  %conv62 = zext i16 %42 to i32
  %call63 = tail call i32 @ath10k_ce_send_nolock(ptr noundef %3, ptr noundef %36, i32 noundef %38, i32 noundef %conv59, i32 noundef %conv62, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %do.end47.cleanup_crit_edge, label %do.end47.err68_crit_edge

do.end47.err68_crit_edge:                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %err68

do.end47.cleanup_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err68:                                            ; preds = %do.end47.err68_crit_edge, %do.end.err68_crit_edge
  %err.0 = phi i32 [ %call63, %do.end47.err68_crit_edge ], [ %call29, %do.end.err68_crit_edge ]
  %i.1 = phi i32 [ %i.0.lcssa, %do.end47.err68_crit_edge ], [ %i.0145, %do.end.err68_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp70146 = icmp sgt i32 %i.1, 0
  br i1 %cmp70146, label %err68.for.body72_crit_edge, label %err68.cleanup_crit_edge

err68.cleanup_crit_edge:                          ; preds = %err68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err68.for.body72_crit_edge:                       ; preds = %err68
  br label %for.body72

for.body72:                                       ; preds = %for.body72.for.body72_crit_edge, %err68.for.body72_crit_edge
  %i.2147 = phi i32 [ %dec, %for.body72.for.body72_crit_edge ], [ %i.1, %err68.for.body72_crit_edge ]
  tail call void @__ath10k_ce_send_revert(ptr noundef %3) #9
  %dec = add nsw i32 %i.2147, -1
  %cmp70 = icmp ugt i32 %i.2147, 1
  br i1 %cmp70, label %for.body72.for.body72_crit_edge, label %for.body72.cleanup_crit_edge

for.body72.cleanup_crit_edge:                     ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body72.for.body72_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body72

cleanup:                                          ; preds = %for.body72.cleanup_crit_edge, %err68.cleanup_crit_edge, %do.end47.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end47.cleanup_crit_edge ], [ %err.0, %err68.cleanup_crit_edge ], [ -105, %entry.cleanup_crit_edge ], [ %err.0, %for.body72.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %1) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_dbg_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_send_nolock(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_ce_send_revert(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_pci_hif_diag_read(ptr noundef %ar, i32 noundef %address, ptr nocapture noundef writeonly %buf, i32 noundef %buf_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ath10k_pci_diag_read_mem(ptr noundef %ar, i32 noundef %address, ptr noundef %buf, i32 noundef %buf_len)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_pci_diag_read_mem(ptr noundef %ar, i32 noundef %address, ptr nocapture noundef writeonly %data, i32 noundef %nbytes) unnamed_addr #2 align 64 {
entry:
  %buf = alloca ptr, align 4
  %completed_nbytes = alloca i32, align 4
  %ce_data = alloca i32, align 4
  %ce_data_base = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf, align 4, !annotation !388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %completed_nbytes) #9
  %1 = ptrtoint ptr %completed_nbytes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %completed_nbytes, align 4, !annotation !388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ce_data) #9
  %2 = ptrtoint ptr %ce_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ce_data, align 4, !annotation !388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ce_data_base) #9
  %3 = ptrtoint ptr %ce_data_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ce_data_base, align 4
  %ce_diag_mutex = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 4, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ce_diag_mutex, i32 noundef 0) #9
  %ce_diag1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 4, i32 3
  %4 = ptrtoint ptr %ce_diag1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce_diag1, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %nbytes, i32 2048)
  %dev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef %6, ptr noundef nonnull %ce_data_base, i32 noundef 2592, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end46_crit_edge, label %if.end

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.end:                                           ; preds = %entry
  %targ_cpu_to_ce_addr.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 0, i32 2
  %9 = ptrtoint ptr %targ_cpu_to_ce_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %targ_cpu_to_ce_addr.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b46.i = load i1, ptr @ath10k_pci_targ_cpu_to_ce_addr.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i.ath10k_pci_targ_cpu_to_ce_addr.exit_crit_edge, label %if.then.i, !prof !387

land.rhs.i.ath10k_pci_targ_cpu_to_ce_addr.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_targ_cpu_to_ce_addr.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ath10k_pci_targ_cpu_to_ce_addr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 890, i32 noundef 9, ptr noundef null) #9
  br label %ath10k_pci_targ_cpu_to_ce_addr.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call41.i = call i32 %10(ptr noundef %ar, i32 noundef %address) #9
  br label %ath10k_pci_targ_cpu_to_ce_addr.exit

ath10k_pci_targ_cpu_to_ce_addr.exit:              ; preds = %if.end39.i, %if.then.i, %land.rhs.i.ath10k_pci_targ_cpu_to_ce_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -524, %if.then.i ], [ -524, %land.rhs.i.ath10k_pci_targ_cpu_to_ce_addr.exit_crit_edge ]
  %11 = ptrtoint ptr %ce_data_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ce_data_base, align 4
  %13 = ptrtoint ptr %ce_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ce_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %tobool4.not85 = icmp eq i32 %nbytes, 0
  br i1 %tobool4.not85, label %ath10k_pci_targ_cpu_to_ce_addr.exit.if.then44_crit_edge, label %ath10k_pci_targ_cpu_to_ce_addr.exit.while.body_crit_edge

ath10k_pci_targ_cpu_to_ce_addr.exit.while.body_crit_edge: ; preds = %ath10k_pci_targ_cpu_to_ce_addr.exit
  br label %while.body

ath10k_pci_targ_cpu_to_ce_addr.exit.if.then44_crit_edge: ; preds = %ath10k_pci_targ_cpu_to_ce_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %ath10k_pci_targ_cpu_to_ce_addr.exit.while.body_crit_edge
  %address.addr.088 = phi i32 [ %add41, %if.end40.while.body_crit_edge ], [ %retval.0.i, %ath10k_pci_targ_cpu_to_ce_addr.exit.while.body_crit_edge ]
  %data.addr.087 = phi ptr [ %add.ptr, %if.end40.while.body_crit_edge ], [ %data, %ath10k_pci_targ_cpu_to_ce_addr.exit.while.body_crit_edge ]
  %remaining_bytes.086 = phi i32 [ %sub, %if.end40.while.body_crit_edge ], [ %nbytes, %ath10k_pci_targ_cpu_to_ce_addr.exit.while.body_crit_edge ]
  %14 = call i32 @llvm.umin.i32(i32 %remaining_bytes.086, i32 2048)
  %15 = ptrtoint ptr %ce_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ce_data, align 4
  %call11 = call i32 @ath10k_ce_rx_post_buf(ptr noundef %5, ptr noundef nonnull %ce_data, i32 noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end14, label %while.body.if.then44_crit_edge

while.body.if.then44_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.end14:                                         ; preds = %while.body
  %call15 = call i32 @ath10k_ce_send(ptr noundef %5, ptr noundef null, i32 noundef %address.addr.088, i32 noundef %14, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.while.cond19_crit_edge, label %if.end14.if.then44_crit_edge

if.end14.if.then44_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.end14.while.cond19_crit_edge:                  ; preds = %if.end14
  br label %while.cond19

while.cond19:                                     ; preds = %while.body22.while.cond19_crit_edge, %if.end14.while.cond19_crit_edge
  %i.0 = phi i32 [ %add, %while.body22.while.cond19_crit_edge ], [ 0, %if.end14.while.cond19_crit_edge ]
  %call20 = call i32 @ath10k_ce_completed_send_next(ptr noundef %5, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %while.cond19.while.cond26_crit_edge, label %while.body22

while.cond19.while.cond26_crit_edge:              ; preds = %while.cond19
  br label %while.cond26

while.body22:                                     ; preds = %while.cond19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 10737400) #9
  %add = add nuw nsw i32 %i.0, 50
  %cmp23 = icmp ugt i32 %i.0, 9950
  br i1 %cmp23, label %while.body22.if.then44_crit_edge, label %while.body22.while.cond19_crit_edge

while.body22.while.cond19_crit_edge:              ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond19

while.body22.if.then44_crit_edge:                 ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

while.cond26:                                     ; preds = %while.body29.while.cond26_crit_edge, %while.cond19.while.cond26_crit_edge
  %i.1 = phi i32 [ %add30, %while.body29.while.cond26_crit_edge ], [ 0, %while.cond19.while.cond26_crit_edge ]
  %call27 = call i32 @ath10k_ce_completed_recv_next(ptr noundef %5, ptr noundef nonnull %buf, ptr noundef nonnull %completed_nbytes) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %while.end34, label %while.body29

while.body29:                                     ; preds = %while.cond26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 10737400) #9
  %add30 = add nuw nsw i32 %i.1, 50
  %cmp31 = icmp ugt i32 %i.1, 9950
  br i1 %cmp31, label %while.body29.if.then44_crit_edge, label %while.body29.while.cond26_crit_edge

while.body29.while.cond26_crit_edge:              ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond26

while.body29.if.then44_crit_edge:                 ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

while.end34:                                      ; preds = %while.cond26
  %19 = ptrtoint ptr %completed_nbytes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %completed_nbytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %20)
  %cmp35.not = icmp eq i32 %14, %20
  br i1 %cmp35.not, label %if.end37, label %while.end34.if.then44_crit_edge

while.end34.if.then44_crit_edge:                  ; preds = %while.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.end37:                                         ; preds = %while.end34
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = ptrtoint ptr %ce_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ce_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp38.not = icmp eq i32 %24, %26
  br i1 %cmp38.not, label %if.end40, label %if.end37.if.then44_crit_edge

if.end37.if.then44_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.end40:                                         ; preds = %if.end37
  %sub = sub i32 %remaining_bytes.086, %14
  %27 = call ptr @memcpy(ptr %data.addr.087, ptr %call.i, i32 %14)
  %add41 = add i32 %address.addr.088, %14
  %add.ptr = getelementptr i8, ptr %data.addr.087, i32 %14
  %tobool4.not = icmp eq i32 %sub, 0
  br i1 %tobool4.not, label %if.end40.if.then44_crit_edge, label %if.end40.while.body_crit_edge

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end40.if.then44_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.then44:                                        ; preds = %if.end40.if.then44_crit_edge, %if.end37.if.then44_crit_edge, %while.end34.if.then44_crit_edge, %while.body29.if.then44_crit_edge, %while.body22.if.then44_crit_edge, %if.end14.if.then44_crit_edge, %while.body.if.then44_crit_edge, %ath10k_pci_targ_cpu_to_ce_addr.exit.if.then44_crit_edge
  %ret.1 = phi i32 [ 0, %ath10k_pci_targ_cpu_to_ce_addr.exit.if.then44_crit_edge ], [ -16, %while.body29.if.then44_crit_edge ], [ -16, %while.body22.if.then44_crit_edge ], [ %call11, %while.body.if.then44_crit_edge ], [ %call15, %if.end14.if.then44_crit_edge ], [ 0, %if.end40.if.then44_crit_edge ], [ -5, %while.end34.if.then44_crit_edge ], [ -5, %if.end37.if.then44_crit_edge ]
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %30 = ptrtoint ptr %ce_data_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ce_data_base, align 4
  call void @dma_free_attrs(ptr noundef %29, i32 noundef %6, ptr noundef nonnull %call.i, i32 noundef %31, i32 noundef 0) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %entry.if.end46_crit_edge
  %ret.182 = phi i32 [ %ret.1, %if.then44 ], [ -12, %entry.if.end46_crit_edge ]
  call void @mutex_unlock(ptr noundef %ce_diag_mutex) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ce_data_base) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ce_data) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %completed_nbytes) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %ret.182
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @ath10k_pci_hif_get_free_queue_number(ptr noundef %ar, i8 noundef zeroext %pipe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_hif_get_free_queue_number, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %idxprom = zext i8 %pipe to i32
  %arrayidx = getelementptr %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 6, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @ath10k_ce_num_free_src_entries(ptr noundef %2) #9
  %conv = trunc i32 %call2 to i16
  ret i16 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_num_free_src_entries(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_hif_send_complete_check(ptr noundef %ar, i8 noundef zeroext %pipe, i32 noundef %force) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_hif_send_complete_check, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1, ptr noundef nonnull @.str.4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool2.not = icmp eq i32 %force, 0
  br i1 %tobool2.not, label %if.then3, label %do.end.if.end8_crit_edge

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = zext i8 %pipe to i32
  br label %if.end8

if.then3:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %1 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then3.if.then.i_crit_edge

if.then3.if.then.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_hif_send_complete_check, %if.then.i)) #9
          to label %ath10k_pci_hif_get_free_queue_number.exit [label %if.then.i], !srcloc !390

if.then.i:                                        ; preds = %lor.lhs.false.i, %if.then3.if.then.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1, ptr noundef nonnull @.str.3) #9
  br label %ath10k_pci_hif_get_free_queue_number.exit

ath10k_pci_hif_get_free_queue_number.exit:        ; preds = %if.then.i, %lor.lhs.false.i
  %idxprom.i = zext i8 %pipe to i32
  %arrayidx.i = getelementptr %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 6, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call2.i = tail call i32 @ath10k_ce_num_free_src_entries(ptr noundef %3) #9
  %conv = and i32 %call2.i, 65535
  %attr = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 0, i32 3
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attr, align 4
  %src_nentries = getelementptr %struct.ce_attr, ptr %5, i32 %idxprom.i, i32 1
  %6 = ptrtoint ptr %src_nentries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_nentries, align 4
  %shr = lshr i32 %7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv)
  %cmp = icmp ult i32 %shr, %conv
  br i1 %cmp, label %ath10k_pci_hif_get_free_queue_number.exit.cleanup10_crit_edge, label %ath10k_pci_hif_get_free_queue_number.exit.if.end8_crit_edge

ath10k_pci_hif_get_free_queue_number.exit.if.end8_crit_edge: ; preds = %ath10k_pci_hif_get_free_queue_number.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

ath10k_pci_hif_get_free_queue_number.exit.cleanup10_crit_edge: ; preds = %ath10k_pci_hif_get_free_queue_number.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup10

if.end8:                                          ; preds = %ath10k_pci_hif_get_free_queue_number.exit.if.end8_crit_edge, %do.end.if.end8_crit_edge
  %conv9.pre-phi = phi i32 [ %.pre, %do.end.if.end8_crit_edge ], [ %idxprom.i, %ath10k_pci_hif_get_free_queue_number.exit.if.end8_crit_edge ]
  tail call void @ath10k_ce_per_engine_service(ptr noundef %ar, i32 noundef %conv9.pre-phi) #9
  br label %cleanup10

cleanup10:                                        ; preds = %if.end8, %ath10k_pci_hif_get_free_queue_number.exit.cleanup10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_per_engine_service(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_pci_hif_map_service_to_pipe(ptr noundef %ar, i16 noundef zeroext %service_id, ptr nocapture noundef writeonly %ul_pipe, ptr nocapture noundef writeonly %dl_pipe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_hif_map_service_to_pipe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %serv_to_pipe = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1, i32 1
  %conv = zext i16 %service_id to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %ul_set.0.off0172 = phi i1 [ false, %do.end ], [ %ul_set.1.off0, %for.inc.for.body_crit_edge ]
  %i.0170 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %dl_set.0.off0169 = phi i1 [ false, %do.end ], [ %dl_set.1.off0, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %serv_to_pipe to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %serv_to_pipe, align 4
  %arrayidx = getelementptr %struct.ce_service_to_pipe, ptr %2, i32 %i.0170
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp4.not = icmp eq i32 %5, %conv
  br i1 %cmp4.not, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %pipedir = getelementptr %struct.ce_service_to_pipe, ptr %2, i32 %i.0170, i32 1
  %6 = ptrtoint ptr %pipedir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipedir, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end7.for.inc_crit_edge [
    i32 3, label %sw.bb68
    i32 1, label %sw.bb
    i32 2, label %sw.bb34
  ]

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb:                                            ; preds = %if.end7
  br i1 %dl_set.0.off0169, label %do.end20, label %sw.bb.if.end26_crit_edge, !prof !389

sw.bb.if.end26_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end20:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1842, i32 noundef 9, ptr noundef null) #9
  br label %if.end26

if.end26:                                         ; preds = %do.end20, %sw.bb.if.end26_crit_edge
  %pipenum = getelementptr %struct.ce_service_to_pipe, ptr %2, i32 %i.0170, i32 2
  br label %for.inc.sink.split

sw.bb34:                                          ; preds = %if.end7
  br i1 %ul_set.0.off0172, label %do.end52, label %sw.bb34.if.end58_crit_edge, !prof !389

sw.bb34.if.end58_crit_edge:                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

do.end52:                                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1847, i32 noundef 9, ptr noundef null) #9
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %sw.bb34.if.end58_crit_edge
  %pipenum66 = getelementptr %struct.ce_service_to_pipe, ptr %2, i32 %i.0170, i32 2
  br label %for.inc.sink.split

sw.bb68:                                          ; preds = %if.end7
  br i1 %dl_set.0.off0169, label %do.end86, label %sw.bb68.if.end92_crit_edge, !prof !389

sw.bb68.if.end92_crit_edge:                       ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

do.end86:                                         ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1852, i32 noundef 9, ptr noundef null) #9
  br label %if.end92

if.end92:                                         ; preds = %do.end86, %sw.bb68.if.end92_crit_edge
  br i1 %ul_set.0.off0172, label %do.end117, label %if.end92.if.end123_crit_edge, !prof !389

if.end92.if.end123_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

do.end117:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1853, i32 noundef 9, ptr noundef null) #9
  br label %if.end123

if.end123:                                        ; preds = %do.end117, %if.end92.if.end123_crit_edge
  %pipenum131 = getelementptr %struct.ce_service_to_pipe, ptr %2, i32 %i.0170, i32 2
  %10 = ptrtoint ptr %pipenum131 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pipenum131, align 4
  %12 = lshr i32 %11, 24
  %conv132 = trunc i32 %12 to i8
  %13 = ptrtoint ptr %dl_pipe to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv132, ptr %dl_pipe, align 1
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end123, %if.end58, %if.end26
  %pipenum.sink = phi ptr [ %pipenum, %if.end26 ], [ %pipenum66, %if.end58 ], [ %pipenum131, %if.end123 ]
  %dl_pipe.sink = phi ptr [ %dl_pipe, %if.end26 ], [ %ul_pipe, %if.end58 ], [ %ul_pipe, %if.end123 ]
  %dl_set.1.off0.ph = phi i1 [ true, %if.end26 ], [ %dl_set.0.off0169, %if.end58 ], [ true, %if.end123 ]
  %ul_set.1.off0.ph = phi i1 [ %ul_set.0.off0172, %if.end26 ], [ true, %if.end58 ], [ true, %if.end123 ]
  %14 = ptrtoint ptr %pipenum.sink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pipenum.sink, align 4
  %16 = lshr i32 %15, 24
  %conv33 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %dl_pipe.sink to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv33, ptr %dl_pipe.sink, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dl_set.1.off0 = phi i1 [ %dl_set.0.off0169, %for.body.for.inc_crit_edge ], [ %dl_set.0.off0169, %if.end7.for.inc_crit_edge ], [ %dl_set.1.off0.ph, %for.inc.sink.split ]
  %ul_set.1.off0 = phi i1 [ %ul_set.0.off0172, %for.body.for.inc_crit_edge ], [ %ul_set.0.off0172, %if.end7.for.inc_crit_edge ], [ %ul_set.1.off0.ph, %for.inc.sink.split ]
  %inc = add nuw nsw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %18 = select i1 %ul_set.1.off0, i1 %dl_set.1.off0, i1 false
  %retval.0 = select i1 %18, i32 0, i32 -2
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_hif_get_default_pipe(ptr noundef %ar, ptr nocapture noundef writeonly %ul_pipe, ptr nocapture noundef writeonly %dl_pipe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_hif_get_default_pipe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1, ptr noundef nonnull @.str.7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %call1 = tail call i32 @ath10k_pci_hif_map_service_to_pipe(ptr noundef %ar, i16 noundef zeroext 1, ptr noundef %ul_pipe, ptr noundef %dl_pipe)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_irq_msi_fw_mask(ptr noundef %ar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_rev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 6
  %0 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_rev, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 7, label %entry.sw.bb_crit_edge12
    i32 1, label %entry.sw.bb_crit_edge13
    i32 5, label %entry.sw.bb_crit_edge14
  ]

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge12, %entry.sw.bb_crit_edge13, %entry.sw.bb_crit_edge14
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %soc_core_base_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %soc_core_base_address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %soc_core_base_address, align 4
  %ce_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %7 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath10k_ce, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus_ops.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call1.i = tail call i32 %12(ptr noundef %ar, i32 noundef %6) #9
  %and = and i32 %call1.i, -2049
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %soc_core_base_address2 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %soc_core_base_address2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %soc_core_base_address2, align 4
  %17 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i11 = getelementptr inbounds %struct.ath10k_ce, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bus_ops.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_ops.i11, align 4
  %write32.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i, align 4
  tail call void %22(ptr noundef %ar, i32 noundef %16, i32 noundef %and) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_ce_deinit(ptr noundef %ar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_values = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %0 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_values, align 4
  %ce_count5 = getelementptr inbounds %struct.ath10k_hw_values, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ce_count5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ce_count5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp7.not = icmp eq i8 %3, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @ath10k_ce_deinit_pipe(ptr noundef %ar, i32 noundef %i.08) #9
  %inc = add nuw nsw i32 %i.08, 1
  %4 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_values, align 4
  %ce_count = getelementptr inbounds %struct.ath10k_hw_values, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ce_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ce_count, align 4
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_deinit_pipe(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_flush(ptr noundef %ar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_post_retry.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 5, i32 0, i32 0, i32 0, i32 3
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %rx_post_retry.i) #9
  %drv_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %hw_values.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %0 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_values.i, align 4
  %ce_count20.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ce_count20.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ce_count20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp22.not.i = icmp eq i8 %3, 0
  br i1 %cmp22.not.i, label %entry.ath10k_pci_buffer_cleanup.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ath10k_pci_buffer_cleanup.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_buffer_cleanup.exit

for.body.i:                                       ; preds = %ath10k_pci_tx_pipe_cleanup.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %pipe_num.023.i = phi i32 [ %inc.i, %ath10k_pci_tx_pipe_cleanup.exit.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath10k_pci, ptr %drv_priv.i.i, i32 0, i32 6, i32 %pipe_num.023.i
  %hif_ce_state.i.i = getelementptr %struct.ath10k_pci, ptr %drv_priv.i.i, i32 0, i32 6, i32 %pipe_num.023.i, i32 2
  %4 = ptrtoint ptr %hif_ce_state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hif_ce_state.i.i, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %dest_ring.i.i = getelementptr inbounds %struct.ath10k_ce_pipe, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %dest_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dest_ring.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %for.body.i.ath10k_pci_rx_pipe_cleanup.exit.i_crit_edge, label %if.end.i.i

for.body.i.ath10k_pci_rx_pipe_cleanup.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_rx_pipe_cleanup.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %buf_sz.i.i = getelementptr %struct.ath10k_pci, ptr %drv_priv.i.i, i32 0, i32 6, i32 %pipe_num.023.i, i32 3
  %10 = ptrtoint ptr %buf_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_sz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.ath10k_pci_rx_pipe_cleanup.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.ath10k_pci_rx_pipe_cleanup.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_rx_pipe_cleanup.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp27.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp27.not.i.i, label %for.cond.preheader.i.i.ath10k_pci_rx_pipe_cleanup.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.ath10k_pci_rx_pipe_cleanup.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_rx_pipe_cleanup.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %dev.i.i = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ath10k_ce_ring, ptr %9, i32 0, i32 11, i32 %i.028.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end6.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end6.i.i:                                      ; preds = %for.body.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx.i.i, align 4
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 4
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3
  %19 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cb.i.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 6
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end6.i.i.skb_tailroom.exit.i.i_crit_edge

if.end6.i.i.skb_tailroom.exit.i.i_crit_edge:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tailroom.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 17
  %25 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %skb_tailroom.exit.i.i

skb_tailroom.exit.i.i:                            ; preds = %cond.false.i.i.i, %if.end6.i.i.skb_tailroom.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.end6.i.i.skb_tailroom.exit.i.i_crit_edge ]
  %add.i.i = add i32 %cond.i.i.i, %22
  tail call void @dma_unmap_page_attrs(ptr noundef %18, i32 noundef %20, i32 noundef %add.i.i, i32 noundef 2, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %15, i32 noundef 1) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %skb_tailroom.exit.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %9, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %30
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.ath10k_pci_rx_pipe_cleanup.exit.i_crit_edge

for.inc.i.i.ath10k_pci_rx_pipe_cleanup.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_rx_pipe_cleanup.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

ath10k_pci_rx_pipe_cleanup.exit.i:                ; preds = %for.inc.i.i.ath10k_pci_rx_pipe_cleanup.exit.i_crit_edge, %for.cond.preheader.i.i.ath10k_pci_rx_pipe_cleanup.exit.i_crit_edge, %if.end.i.i.ath10k_pci_rx_pipe_cleanup.exit.i_crit_edge, %for.body.i.ath10k_pci_rx_pipe_cleanup.exit.i_crit_edge
  %31 = ptrtoint ptr %hif_ce_state.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hif_ce_state.i.i, align 4
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %src_ring.i.i = getelementptr inbounds %struct.ath10k_ce_pipe, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %src_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %src_ring.i.i, align 4
  %tobool.not.i8.i = icmp eq ptr %36, null
  br i1 %tobool.not.i8.i, label %ath10k_pci_rx_pipe_cleanup.exit.i.ath10k_pci_tx_pipe_cleanup.exit.i_crit_edge, label %if.end.i11.i

ath10k_pci_rx_pipe_cleanup.exit.i.ath10k_pci_tx_pipe_cleanup.exit.i_crit_edge: ; preds = %ath10k_pci_rx_pipe_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_tx_pipe_cleanup.exit.i

if.end.i11.i:                                     ; preds = %ath10k_pci_rx_pipe_cleanup.exit.i
  %buf_sz.i9.i = getelementptr %struct.ath10k_pci, ptr %drv_priv.i.i, i32 0, i32 6, i32 %pipe_num.023.i, i32 3
  %37 = ptrtoint ptr %buf_sz.i9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf_sz.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool1.not.i10.i = icmp eq i32 %38, 0
  br i1 %tobool1.not.i10.i, label %if.end.i11.i.ath10k_pci_tx_pipe_cleanup.exit.i_crit_edge, label %for.cond.preheader.i12.i

if.end.i11.i.ath10k_pci_tx_pipe_cleanup.exit.i_crit_edge: ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_tx_pipe_cleanup.exit.i

for.cond.preheader.i12.i:                         ; preds = %if.end.i11.i
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp23.not.i.i = icmp eq i32 %40, 0
  br i1 %cmp23.not.i.i, label %for.cond.preheader.i12.i.ath10k_pci_tx_pipe_cleanup.exit.i_crit_edge, label %for.cond.preheader.i12.i.for.body.i15.i_crit_edge

for.cond.preheader.i12.i.for.body.i15.i_crit_edge: ; preds = %for.cond.preheader.i12.i
  br label %for.body.i15.i

for.cond.preheader.i12.i.ath10k_pci_tx_pipe_cleanup.exit.i_crit_edge: ; preds = %for.cond.preheader.i12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_tx_pipe_cleanup.exit.i

for.body.i15.i:                                   ; preds = %for.inc.i19.i.for.body.i15.i_crit_edge, %for.cond.preheader.i12.i.for.body.i15.i_crit_edge
  %i.024.i.i = phi i32 [ %inc.i17.i, %for.inc.i19.i.for.body.i15.i_crit_edge ], [ 0, %for.cond.preheader.i12.i.for.body.i15.i_crit_edge ]
  %arrayidx.i13.i = getelementptr %struct.ath10k_ce_ring, ptr %36, i32 0, i32 11, i32 %i.024.i.i
  %41 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i13.i, align 4
  %tobool4.not.i14.i = icmp eq ptr %42, null
  br i1 %tobool4.not.i14.i, label %for.body.i15.i.for.inc.i19.i_crit_edge, label %if.end6.i16.i

for.body.i15.i.for.inc.i19.i_crit_edge:           ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i19.i

if.end6.i16.i:                                    ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx.i13.i, align 4
  tail call void @ath10k_htc_tx_completion_handler(ptr noundef %32, ptr noundef nonnull %42) #9
  br label %for.inc.i19.i

for.inc.i19.i:                                    ; preds = %if.end6.i16.i, %for.body.i15.i.for.inc.i19.i_crit_edge
  %inc.i17.i = add nuw i32 %i.024.i.i, 1
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %36, align 4
  %cmp.i18.i = icmp ult i32 %inc.i17.i, %45
  br i1 %cmp.i18.i, label %for.inc.i19.i.for.body.i15.i_crit_edge, label %for.inc.i19.i.ath10k_pci_tx_pipe_cleanup.exit.i_crit_edge

for.inc.i19.i.ath10k_pci_tx_pipe_cleanup.exit.i_crit_edge: ; preds = %for.inc.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_tx_pipe_cleanup.exit.i

for.inc.i19.i.for.body.i15.i_crit_edge:           ; preds = %for.inc.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i15.i

ath10k_pci_tx_pipe_cleanup.exit.i:                ; preds = %for.inc.i19.i.ath10k_pci_tx_pipe_cleanup.exit.i_crit_edge, %for.cond.preheader.i12.i.ath10k_pci_tx_pipe_cleanup.exit.i_crit_edge, %if.end.i11.i.ath10k_pci_tx_pipe_cleanup.exit.i_crit_edge, %ath10k_pci_rx_pipe_cleanup.exit.i.ath10k_pci_tx_pipe_cleanup.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %pipe_num.023.i, 1
  %46 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ce_count.i, align 4
  %conv.i = zext i8 %49 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %ath10k_pci_tx_pipe_cleanup.exit.i.for.body.i_crit_edge, label %ath10k_pci_tx_pipe_cleanup.exit.i.ath10k_pci_buffer_cleanup.exit_crit_edge

ath10k_pci_tx_pipe_cleanup.exit.i.ath10k_pci_buffer_cleanup.exit_crit_edge: ; preds = %ath10k_pci_tx_pipe_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_buffer_cleanup.exit

ath10k_pci_tx_pipe_cleanup.exit.i.for.body.i_crit_edge: ; preds = %ath10k_pci_tx_pipe_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ath10k_pci_buffer_cleanup.exit:                   ; preds = %ath10k_pci_tx_pipe_cleanup.exit.i.ath10k_pci_buffer_cleanup.exit_crit_edge, %entry.ath10k_pci_buffer_cleanup.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_pci_hif_exchange_bmi_msg(ptr noundef %ar, ptr noundef %req, i32 noundef %req_len, ptr noundef writeonly %resp, ptr noundef %resp_len) #2 align 64 {
entry:
  %xfer = alloca %struct.bmi_xfer, align 8
  %unused_buffer = alloca i32, align 4
  %unused_nbytes = alloca i32, align 4
  %unused_id = alloca i32, align 4
  %unused_buffer53 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe_info = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 24
  %arrayidx2 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe_info, align 4
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xfer) #9
  %4 = ptrtoint ptr %xfer to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %xfer, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 2118) #9
  %tobool.not = icmp eq ptr %resp, null
  %tobool.not.not = xor i1 %tobool.not, true
  %tobool7.not = icmp eq ptr %resp_len, null
  %or.cond = and i1 %tobool7.not, %tobool.not.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %or.cond121 = or i1 %tobool.not, %tobool7.not
  br i1 %or.cond121, label %if.end.if.end13_crit_edge, label %land.lhs.true11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true11:                                  ; preds = %if.end
  %5 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.if.end13_crit_edge

land.lhs.true11.if.end13_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true11.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %call14 = tail call ptr @kmemdup(ptr noundef %req, i32 noundef %req_len, i32 noundef 3264) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %dev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call14) #9
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end17
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !387

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %8) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %14, i32 noundef -1) #9
  br label %err_dma

dma_map_single_attrs.exit:                        ; preds = %if.end17
  tail call void @debug_dma_map_single(ptr noundef %8, ptr noundef nonnull %call14, i32 noundef %req_len) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %call14 to i32
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i
  %and.i = and i32 %16, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %req_len, i32 noundef 1, i32 noundef 0) #9
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.err_dma_crit_edge, label %if.end23

dma_map_single_attrs.exit.err_dma_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dma

if.end23:                                         ; preds = %dma_map_single_attrs.exit
  br i1 %or.cond121, label %if.end23.if.end41_crit_edge, label %if.end8.i.i

if.end23.if.end41_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end8.i.i:                                      ; preds = %if.end23
  %19 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resp_len, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #12
  %tobool29.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool29.not, label %if.end8.i.i.err_req.thread_crit_edge, label %if.end31

if.end8.i.i.err_req.thread_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_req.thread

if.end31:                                         ; preds = %if.end8.i.i
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resp_len, align 4
  %call.i124 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i) #9
  br i1 %call.i124, label %land.rhs.i126, label %dma_map_single_attrs.exit141

land.rhs.i126:                                    ; preds = %if.end31
  %.b1.i125 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i125, label %land.rhs.i126.dma_map_single_attrs.exit141.thread_crit_edge, label %if.then.i130, !prof !387

land.rhs.i126.dma_map_single_attrs.exit141.thread_crit_edge: ; preds = %land.rhs.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit141.thread

if.then.i130:                                     ; preds = %land.rhs.i126
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i127 = tail call ptr @dev_driver_string(ptr noundef %22) #9
  %init_name.i.i128 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %init_name.i.i128 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i128, align 8
  %tobool.not.i.i129 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i129, label %if.end.i.i131, label %if.then.i130.dev_name.exit.i133_crit_edge

if.then.i130.dev_name.exit.i133_crit_edge:        ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i133

if.end.i.i131:                                    ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %22, align 4
  br label %dev_name.exit.i133

dev_name.exit.i133:                               ; preds = %if.end.i.i131, %if.then.i130.dev_name.exit.i133_crit_edge
  %retval.0.i.i132 = phi ptr [ %28, %if.end.i.i131 ], [ %26, %if.then.i130.dev_name.exit.i133_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i127, ptr noundef %retval.0.i.i132) #9
  br label %dma_map_single_attrs.exit141.thread

dma_map_single_attrs.exit141.thread:              ; preds = %dev_name.exit.i133, %land.rhs.i126.dma_map_single_attrs.exit141.thread_crit_edge
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %30, i32 noundef -1) #9
  br label %err_req.thread

dma_map_single_attrs.exit141:                     ; preds = %if.end31
  tail call void @debug_dma_map_single(ptr noundef %22, ptr noundef nonnull %call9.i.i, i32 noundef %24) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %31 = load ptr, ptr @mem_map, align 4
  %32 = ptrtoint ptr %call9.i.i to i32
  %sub.i134 = add i32 %32, 1073741824
  %shr.i135 = lshr i32 %sub.i134, 12
  %add.ptr.i136 = getelementptr %struct.page, ptr %31, i32 %shr.i135
  %and.i137 = and i32 %32, 3968
  %call41.i138 = tail call i32 @dma_map_page_attrs(ptr noundef %22, ptr noundef %add.ptr.i136, i32 noundef %and.i137, i32 noundef %24, i32 noundef 2, i32 noundef 0) #9
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %34, i32 noundef %call41.i138) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i138)
  %cmp.i142 = icmp eq i32 %call41.i138, -1
  br i1 %cmp.i142, label %dma_map_single_attrs.exit141.err_req.thread_crit_edge, label %if.end38

dma_map_single_attrs.exit141.err_req.thread_crit_edge: ; preds = %dma_map_single_attrs.exit141
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_req.thread

if.end38:                                         ; preds = %dma_map_single_attrs.exit141
  call void @__sanitizer_cov_trace_pc() #11
  %wait_for_resp = getelementptr inbounds %struct.bmi_xfer, ptr %xfer, i32 0, i32 2
  %35 = ptrtoint ptr %wait_for_resp to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %wait_for_resp, align 2
  %resp_len39 = getelementptr inbounds %struct.bmi_xfer, ptr %xfer, i32 0, i32 3
  %36 = ptrtoint ptr %resp_len39 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %resp_len39, align 4
  %call40 = call i32 @ath10k_ce_rx_post_buf(ptr noundef %3, ptr noundef nonnull %xfer, i32 noundef %call41.i138) #9
  br label %if.end41

if.end41:                                         ; preds = %if.end38, %if.end23.if.end41_crit_edge
  %resp_paddr.0 = phi i32 [ %call41.i138, %if.end38 ], [ 0, %if.end23.if.end41_crit_edge ]
  %tresp.0 = phi ptr [ %call9.i.i, %if.end38 ], [ null, %if.end23.if.end41_crit_edge ]
  %call42 = call i32 @ath10k_ce_send(ptr noundef %1, ptr noundef nonnull %xfer, i32 noundef %call41.i, i32 noundef %req_len, i32 noundef -1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.err_resp_crit_edge

if.end41.err_resp_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_resp

if.end45:                                         ; preds = %if.end41
  %call46 = call fastcc i32 @ath10k_pci_bmi_wait(ptr noundef %ar, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %xfer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.err_resp_crit_edge, label %if.then48

if.end45.err_resp_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_resp

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused_buffer) #9
  %37 = ptrtoint ptr %unused_buffer to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %unused_buffer, align 4, !annotation !388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused_nbytes) #9
  %38 = ptrtoint ptr %unused_nbytes to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %unused_nbytes, align 4, !annotation !388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused_id) #9
  %39 = ptrtoint ptr %unused_id to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %unused_id, align 4, !annotation !388
  %call49 = call i32 @ath10k_ce_cancel_send_next(ptr noundef %1, ptr noundef null, ptr noundef nonnull %unused_buffer, ptr noundef nonnull %unused_nbytes, ptr noundef nonnull %unused_id) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused_id) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused_nbytes) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused_buffer) #9
  br label %err_resp

err_resp:                                         ; preds = %if.then48, %if.end45.err_resp_crit_edge, %if.end41.err_resp_crit_edge
  %ret.0 = phi i32 [ %call42, %if.end41.err_resp_crit_edge ], [ %call46, %if.then48 ], [ 0, %if.end45.err_resp_crit_edge ]
  br i1 %tobool.not, label %err_resp.err_req_crit_edge, label %if.then52

err_resp.err_req_crit_edge:                       ; preds = %err_resp
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_req

if.then52:                                        ; preds = %err_resp
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused_buffer53) #9
  %40 = ptrtoint ptr %unused_buffer53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %unused_buffer53, align 4, !annotation !388
  %call54 = call i32 @ath10k_ce_revoke_recv_next(ptr noundef %3, ptr noundef null, ptr noundef nonnull %unused_buffer53) #9
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %43 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %resp_len, align 4
  call void @dma_unmap_page_attrs(ptr noundef %42, i32 noundef %resp_paddr.0, i32 noundef %44, i32 noundef 2, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused_buffer53) #9
  br label %err_req

err_req.thread:                                   ; preds = %dma_map_single_attrs.exit141.err_req.thread_crit_edge, %dma_map_single_attrs.exit141.thread, %if.end8.i.i.err_req.thread_crit_edge
  %tresp.1.ph = phi ptr [ %call9.i.i, %dma_map_single_attrs.exit141.thread ], [ %call9.i.i, %dma_map_single_attrs.exit141.err_req.thread_crit_edge ], [ null, %if.end8.i.i.err_req.thread_crit_edge ]
  %ret.1.ph = phi i32 [ -5, %dma_map_single_attrs.exit141.thread ], [ -5, %dma_map_single_attrs.exit141.err_req.thread_crit_edge ], [ -12, %if.end8.i.i.err_req.thread_crit_edge ]
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %46, i32 noundef %call41.i, i32 noundef %req_len, i32 noundef 1, i32 noundef 0) #9
  br label %err_dma

err_req:                                          ; preds = %if.then52, %err_resp.err_req_crit_edge
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  call void @dma_unmap_page_attrs(ptr noundef %48, i32 noundef %call41.i, i32 noundef %req_len, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp58 = icmp ne i32 %ret.0, 0
  %brmerge = or i1 %tobool7.not, %cmp58
  br i1 %brmerge, label %err_req.err_dma_crit_edge, label %if.then61

err_req.err_dma_crit_edge:                        ; preds = %err_req
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dma

if.then61:                                        ; preds = %err_req
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %resp_len, align 4
  %resp_len62 = getelementptr inbounds %struct.bmi_xfer, ptr %xfer, i32 0, i32 3
  %51 = ptrtoint ptr %resp_len62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %resp_len62, align 4
  %53 = call i32 @llvm.umin.i32(i32 %50, i32 %52)
  %54 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %resp_len, align 4
  %55 = call ptr @memcpy(ptr %resp, ptr %tresp.0, i32 %53)
  br label %err_dma

err_dma:                                          ; preds = %if.then61, %err_req.err_dma_crit_edge, %err_req.thread, %dma_map_single_attrs.exit.err_dma_crit_edge, %dma_map_single_attrs.exit.thread
  %tresp.2 = phi ptr [ %tresp.0, %if.then61 ], [ %tresp.0, %err_req.err_dma_crit_edge ], [ null, %dma_map_single_attrs.exit.err_dma_crit_edge ], [ null, %dma_map_single_attrs.exit.thread ], [ %tresp.1.ph, %err_req.thread ]
  %ret.2 = phi i32 [ 0, %if.then61 ], [ %ret.0, %err_req.err_dma_crit_edge ], [ -5, %dma_map_single_attrs.exit.err_dma_crit_edge ], [ -5, %dma_map_single_attrs.exit.thread ], [ %ret.1.ph, %err_req.thread ]
  call void @kfree(ptr noundef nonnull %call14) #9
  call void @kfree(ptr noundef %tresp.2) #9
  br label %cleanup

cleanup:                                          ; preds = %err_dma, %if.end13.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_dma ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true11.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xfer) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_pci_bmi_wait(ptr noundef %ar, ptr noundef %tx_pipe, ptr noundef %rx_pipe, ptr nocapture noundef readonly %xfer) unnamed_addr #2 align 64 {
entry:
  %xfer.i19 = alloca ptr, align 4
  %nbytes.i = alloca i32, align 4
  %xfer.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 300
  %1 = load volatile i32, ptr @jiffies, align 128
  %rx_done = getelementptr inbounds %struct.bmi_xfer, ptr %xfer, i32 0, i32 1
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub25 = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub25)
  %cmp26 = icmp sgt i32 %sub25, -1
  br i1 %cmp26, label %while.body.lr.ph, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body.lr.ph:                                 ; preds = %entry
  %wait_for_resp = getelementptr inbounds %struct.bmi_xfer, ptr %xfer, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xfer.i) #9
  %3 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %xfer.i, align 4, !annotation !388
  %call.i = call i32 @ath10k_ce_completed_send_next(ptr noundef %tx_pipe, ptr noundef nonnull %xfer.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.ath10k_pci_bmi_send_done.exit_crit_edge

while.body.ath10k_pci_bmi_send_done.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_bmi_send_done.exit

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %xfer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xfer.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %5, align 4
  br label %ath10k_pci_bmi_send_done.exit

ath10k_pci_bmi_send_done.exit:                    ; preds = %if.end.i, %while.body.ath10k_pci_bmi_send_done.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xfer.i) #9
  %7 = ptrtoint ptr %rx_pipe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_pipe, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xfer.i19) #9
  %9 = ptrtoint ptr %xfer.i19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %xfer.i19, align 4, !annotation !388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nbytes.i) #9
  %10 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %nbytes.i, align 4, !annotation !388
  %call.i20 = call i32 @ath10k_ce_completed_recv_next(ptr noundef %rx_pipe, ptr noundef nonnull %xfer.i19, ptr noundef nonnull %nbytes.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %if.end.i22, label %ath10k_pci_bmi_send_done.exit.ath10k_pci_bmi_recv_data.exit_crit_edge

ath10k_pci_bmi_send_done.exit.ath10k_pci_bmi_recv_data.exit_crit_edge: ; preds = %ath10k_pci_bmi_send_done.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_bmi_recv_data.exit

if.end.i22:                                       ; preds = %ath10k_pci_bmi_send_done.exit
  %11 = ptrtoint ptr %xfer.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xfer.i19, align 4
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %land.rhs.i, label %if.end43.i

land.rhs.i:                                       ; preds = %if.end.i22
  %.b52.i = load i1, ptr @ath10k_pci_bmi_recv_data.__already_done, align 1
  br i1 %.b52.i, label %land.rhs.i.ath10k_pci_bmi_recv_data.exit_crit_edge, label %if.then11.i, !prof !387

land.rhs.i.ath10k_pci_bmi_recv_data.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_bmi_recv_data.exit

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ath10k_pci_bmi_recv_data.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2217, i32 noundef 9, ptr noundef null) #9
  br label %ath10k_pci_bmi_recv_data.exit

if.end43.i:                                       ; preds = %if.end.i22
  %wait_for_resp.i = getelementptr inbounds %struct.bmi_xfer, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %wait_for_resp.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wait_for_resp.i, align 2, !range !391
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool44.not.i = icmp eq i8 %14, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end46.i

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %8, ptr noundef nonnull @.str.47) #9
  br label %ath10k_pci_bmi_recv_data.exit

if.end46.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nbytes.i, align 4
  %resp_len.i = getelementptr inbounds %struct.bmi_xfer, ptr %12, i32 0, i32 3
  %17 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %resp_len.i, align 4
  %rx_done.i = getelementptr inbounds %struct.bmi_xfer, ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %rx_done.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %rx_done.i, align 1
  br label %ath10k_pci_bmi_recv_data.exit

ath10k_pci_bmi_recv_data.exit:                    ; preds = %if.end46.i, %if.then45.i, %if.then11.i, %land.rhs.i.ath10k_pci_bmi_recv_data.exit_crit_edge, %ath10k_pci_bmi_send_done.exit.ath10k_pci_bmi_recv_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbytes.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xfer.i19) #9
  %19 = ptrtoint ptr %xfer to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %xfer, align 4, !range !391
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %ath10k_pci_bmi_recv_data.exit.if.end_crit_edge, label %land.lhs.true

ath10k_pci_bmi_recv_data.exit.if.end_crit_edge:   ; preds = %ath10k_pci_bmi_recv_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %ath10k_pci_bmi_recv_data.exit
  %21 = ptrtoint ptr %rx_done to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rx_done, align 1, !range !391
  %23 = ptrtoint ptr %wait_for_resp to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %wait_for_resp, align 2, !range !391
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp4 = icmp eq i8 %22, %24
  br i1 %cmp4, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %ath10k_pci_bmi_recv_data.exit.if.end_crit_edge
  call void @schedule() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %25
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

out:                                              ; preds = %if.end.out_crit_edge, %land.lhs.true.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ -110, %entry.out_crit_edge ], [ -110, %if.end.out_crit_edge ], [ 0, %land.lhs.true.out_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub6 = sub i32 %26, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub6)
  %cmp7 = icmp ugt i32 %sub6, 100
  br i1 %cmp7, label %do.body, label %out.if.end14_crit_edge

out.if.end14_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.body:                                          ; preds = %out
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %27 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %do.body.if.then12_crit_edge

do.body.if.then12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_bmi_wait, %if.then12)) #9
          to label %if.end14 [label %if.then12], !srcloc !390

if.then12:                                        ; preds = %lor.lhs.false, %do.body.if.then12_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.46, i32 noundef %sub6, i32 noundef 100, i32 noundef %ret.0) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %lor.lhs.false, %out.if.end14_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_cancel_send_next(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_revoke_recv_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_pci_init_config(ptr noundef %ar) local_unnamed_addr #2 align 64 {
entry:
  %val.i162 = alloca i32, align 4
  %val.i160 = alloca i32, align 4
  %val.i158 = alloca i32, align 4
  %val.i156 = alloca i32, align 4
  %val.i154 = alloca i32, align 4
  %val.i152 = alloca i32, align 4
  %val.i150 = alloca i32, align 4
  %val.i148 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val.i, align 4
  %call.i = call fastcc i32 @ath10k_pci_diag_read_mem(ptr noundef %ar, i32 noundef 4196600, ptr noundef nonnull %val.i, i32 noundef 4) #9
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val.i, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.8, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i148) #9
  %4 = ptrtoint ptr %val.i148 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val.i148, align 4
  %call.i149 = call fastcc i32 @ath10k_pci_diag_read_mem(ptr noundef %ar, i32 noundef %3, ptr noundef nonnull %val.i148, i32 noundef 4) #9
  %5 = ptrtoint ptr %val.i148 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i148, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i148) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %cmp7.not = icmp eq i32 %call.i149, 0
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.10, i32 noundef %call.i149) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp10 = icmp eq i32 %6, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %pipe_config = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1
  %8 = ptrtoint ptr %pipe_config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe_config, align 4
  %hw_values = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %10 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_values, align 4
  %num_target_ce_config_wlan = getelementptr inbounds %struct.ath10k_hw_values, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %num_target_ce_config_wlan to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_target_ce_config_wlan, align 2
  %conv = zext i8 %13 to i32
  %mul = mul nuw nsw i32 %conv, 24
  %call13 = tail call i32 @ath10k_pci_diag_write_mem(ptr noundef %ar, i32 noundef %7, ptr noundef %9, i32 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.12, i32 noundef %call13) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %add18 = add i32 %3, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i150) #9
  %14 = ptrtoint ptr %val.i150 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %val.i150, align 4
  %call.i151 = call fastcc i32 @ath10k_pci_diag_read_mem(ptr noundef %ar, i32 noundef %add18, ptr noundef nonnull %val.i150, i32 noundef 4) #9
  %15 = ptrtoint ptr %val.i150 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i150, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i150) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %cmp20.not = icmp eq i32 %call.i151, 0
  br i1 %cmp20.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.13, i32 noundef %call.i151) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp24 = icmp eq i32 %16, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %serv_to_pipe = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1, i32 1
  %18 = ptrtoint ptr %serv_to_pipe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %serv_to_pipe, align 4
  %call28 = tail call i32 @ath10k_pci_diag_write_mem(ptr noundef %ar, i32 noundef %17, ptr noundef %19, i32 noundef 204)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 0
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.15, i32 noundef %call28) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %add33 = add i32 %3, 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i152) #9
  %20 = ptrtoint ptr %val.i152 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %val.i152, align 4
  %call.i153 = call fastcc i32 @ath10k_pci_diag_read_mem(ptr noundef %ar, i32 noundef %add33, ptr noundef nonnull %val.i152, i32 noundef 4) #9
  %21 = ptrtoint ptr %val.i152 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i152, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i152) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %cmp35.not = icmp eq i32 %call.i153, 0
  br i1 %cmp35.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.16, i32 noundef %call.i153) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %23 = and i32 %22, -16777217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i154) #9
  %24 = ptrtoint ptr %val.i154 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %val.i154, align 4
  %call.i155 = call i32 @ath10k_pci_diag_write_mem(ptr noundef %ar, i32 noundef %add33, ptr noundef nonnull %val.i154, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i154) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %cmp41.not = icmp eq i32 %call.i155, 0
  br i1 %cmp41.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.17, i32 noundef %call.i155) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i156) #9
  %25 = ptrtoint ptr %val.i156 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %val.i156, align 4
  %call.i157 = call fastcc i32 @ath10k_pci_diag_read_mem(ptr noundef %ar, i32 noundef 4196608, ptr noundef nonnull %val.i156, i32 noundef 4) #9
  %26 = ptrtoint ptr %val.i156 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i156, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i156) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %cmp47.not = icmp eq i32 %call.i157, 0
  br i1 %cmp47.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.18, i32 noundef %call.i157) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end44
  %28 = or i32 %27, 35437
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %ce_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %30 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath10k_ce, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus_ops.i, align 4
  %get_num_banks.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %get_num_banks.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_num_banks.i, align 4
  %call1.i = tail call i32 %35(ptr noundef %ar) #9
  %and52 = and i32 %call1.i, 15
  %or53 = or i32 %and52, %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i158) #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %or53) #9
  %37 = ptrtoint ptr %val.i158 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %val.i158, align 4
  %call.i159 = call i32 @ath10k_pci_diag_write_mem(ptr noundef %ar, i32 noundef 4196608, ptr noundef nonnull %val.i158, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i158) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %cmp55.not = icmp eq i32 %call.i159, 0
  br i1 %cmp55.not, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.19, i32 noundef %call.i159) #9
  br label %cleanup

if.end58:                                         ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i160) #9
  %38 = ptrtoint ptr %val.i160 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %val.i160, align 4
  %call.i161 = call fastcc i32 @ath10k_pci_diag_read_mem(ptr noundef %ar, i32 noundef 4196556, ptr noundef nonnull %val.i160, i32 noundef 4) #9
  %39 = ptrtoint ptr %val.i160 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i160, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i160) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %cmp61.not = icmp eq i32 %call.i161, 0
  br i1 %cmp61.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.20, i32 noundef %call.i161) #9
  br label %cleanup

if.end64:                                         ; preds = %if.end58
  %41 = or i32 %40, 268435456
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i162) #9
  %42 = ptrtoint ptr %val.i162 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %val.i162, align 4
  %call.i163 = call i32 @ath10k_pci_diag_write_mem(ptr noundef %ar, i32 noundef 4196556, ptr noundef nonnull %val.i162, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i162) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %cmp67.not = icmp eq i32 %call.i163, 0
  br i1 %cmp67.not, label %if.end64.cleanup_crit_edge, label %if.then69

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.21, i32 noundef %call.i163) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %if.end64.cleanup_crit_edge, %if.then63, %if.then57, %if.then49, %if.then43, %if.then37, %if.then31, %if.then26, %if.then22, %if.then16, %if.then11, %if.then8, %if.then4, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ -5, %if.then4 ], [ %call.i149, %if.then8 ], [ -5, %if.then11 ], [ %call13, %if.then16 ], [ %call.i151, %if.then22 ], [ -5, %if.then26 ], [ %call28, %if.then31 ], [ %call.i153, %if.then37 ], [ %call.i155, %if.then43 ], [ %call.i157, %if.then49 ], [ %call.i159, %if.then57 ], [ %call.i161, %if.then63 ], [ %call.i163, %if.then69 ], [ 0, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_pci_alloc_pipes(ptr noundef %ar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %ce_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %0 = ptrtoint ptr %ce_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_priv.i, align 4
  %hw_values = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %2 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_values, align 4
  %ce_count42 = getelementptr inbounds %struct.ath10k_hw_values, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ce_count42 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ce_count42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp44.not = icmp eq i8 %5, 0
  br i1 %cmp44.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %attr = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 0, i32 3
  %ce_diag = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 4, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 6, i32 %i.045
  %arrayidx3 = getelementptr %struct.ath10k_ce, ptr %1, i32 0, i32 2, i32 %i.045
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx3, ptr %arrayidx, align 4
  %conv4 = trunc i32 %i.045 to i8
  %pipe_num = getelementptr %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 6, i32 %i.045, i32 1
  %7 = ptrtoint ptr %pipe_num to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %pipe_num, align 4
  %hif_ce_state = getelementptr %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 6, i32 %i.045, i32 2
  %8 = ptrtoint ptr %hif_ce_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ar, ptr %hif_ce_state, align 4
  %9 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attr, align 4
  %arrayidx5 = getelementptr %struct.ce_attr, ptr %10, i32 %i.045
  %call6 = tail call i32 @ath10k_ce_alloc_pipe(ptr noundef %ar, i32 noundef %i.045, ptr noundef %arrayidx5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.22, i32 noundef %i.045, i32 noundef %call6) #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.045)
  %cmp7 = icmp eq i32 %i.045, 7
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %ce_diag to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %ce_diag, align 4
  br label %for.inc

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %attr, align 4
  %src_sz_max = getelementptr %struct.ce_attr, ptr %15, i32 %i.045, i32 2
  %16 = ptrtoint ptr %src_sz_max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_sz_max, align 4
  %buf_sz = getelementptr %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 6, i32 %i.045, i32 3
  %18 = ptrtoint ptr %buf_sz to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %buf_sz, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %if.then9
  %inc = add nuw nsw i32 %i.045, 1
  %19 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_values, align 4
  %ce_count = getelementptr inbounds %struct.ath10k_hw_values, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ce_count to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ce_count, align 4
  %conv = zext i8 %22 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_alloc_pipe(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_free_pipes(ptr noundef %ar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_values = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %0 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_values, align 4
  %ce_count5 = getelementptr inbounds %struct.ath10k_hw_values, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ce_count5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ce_count5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp7.not = icmp eq i8 %3, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @ath10k_ce_free_pipe(ptr noundef %ar, i32 noundef %i.08) #9
  %inc = add nuw nsw i32 %i.08, 1
  %4 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_values, align 4
  %ce_count = getelementptr inbounds %struct.ath10k_hw_values, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ce_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ce_count, align 4
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_free_pipe(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_pci_init_pipes(ptr noundef %ar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_values = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %0 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_values, align 4
  %ce_count15 = getelementptr inbounds %struct.ath10k_hw_values, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ce_count15 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ce_count15, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp17.not = icmp eq i8 %3, 0
  br i1 %cmp17.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %attr = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attr, align 4
  %arrayidx = getelementptr %struct.ce_attr, ptr %5, i32 %i.018
  %call2 = tail call i32 @ath10k_ce_init_pipe(ptr noundef %ar, i32 noundef %i.018, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.23, i32 noundef %i.018, i32 noundef %call2) #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.018, 1
  %6 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_values, align 4
  %ce_count = getelementptr inbounds %struct.ath10k_hw_values, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ce_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ce_count, align 4
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_init_pipe(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_hif_power_down(ptr noundef %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_hif_power_down, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.24) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_init_napi(ptr noundef %ar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %napi_dev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 125
  %napi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 126
  tail call void @netif_napi_add(ptr noundef %napi_dev, ptr noundef %napi, ptr noundef nonnull @ath10k_pci_napi_poll, i32 noundef 64) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_napi_poll(ptr noundef %ctx, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ctx, i32 -21120
  %regs.i = getelementptr i8, ptr %ctx, i32 -20004
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %fw_indicator_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %fw_indicator_address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_indicator_address.i, align 4
  %ce_priv.i.i.i = getelementptr i8, ptr %ctx, i32 300
  %4 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1.i.i = tail call i32 %9(ptr noundef %add.ptr, i32 noundef %3) #9
  %and.i = and i32 %call1.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %fw_indicator_address.i26 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %fw_indicator_address.i26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_indicator_address.i26, align 4
  %14 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i.i28 = getelementptr inbounds %struct.ath10k_ce, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %bus_ops.i.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus_ops.i.i28, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call1.i.i29 = tail call i32 %19(ptr noundef %add.ptr, i32 noundef %13) #9
  %and.i30 = and i32 %call1.i.i29, -2
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %fw_indicator_address2.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %21, i32 0, i32 21
  %22 = ptrtoint ptr %fw_indicator_address2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_indicator_address2.i, align 4
  %24 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i8.i = getelementptr inbounds %struct.ath10k_ce, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %bus_ops.i8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus_ops.i8.i, align 4
  %write32.i.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i.i, align 4
  tail call void %29(ptr noundef %add.ptr, i32 noundef %23, i32 noundef %and.i30) #9
  %workqueue.i = getelementptr i8, ptr %ctx, i32 -15080
  %30 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %workqueue.i, align 8
  %dump_work.i = getelementptr i8, ptr %ctx, i32 1304
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %dump_work.i) #9
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %ctx, i32 noundef 0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ath10k_ce_per_engine_service_any(ptr noundef %add.ptr) #9
  %call2 = tail call i32 @ath10k_htt_txrx_compl_task(ptr noundef %add.ptr, i32 noundef %budget) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %budget)
  %cmp = icmp slt i32 %call2, %budget
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call4 = tail call zeroext i1 @napi_complete_done(ptr noundef %ctx, i32 noundef %call2) #9
  %32 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath10k_ce, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus_ops.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %ce_wrapper_base_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %ce_wrapper_base_address.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ce_wrapper_base_address.i, align 4
  %call1.i = tail call i32 %37(ptr noundef %add.ptr, i32 noundef %41) #9
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %ce_wrap_intr_sum_host_msi_mask.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %43, i32 0, i32 24
  %44 = ptrtoint ptr %ce_wrap_intr_sum_host_msi_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ce_wrap_intr_sum_host_msi_mask.i, align 4
  %and.i32 = and i32 %45, %call1.i
  %ce_wrap_intr_sum_host_msi_lsb.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %43, i32 0, i32 23
  %46 = ptrtoint ptr %ce_wrap_intr_sum_host_msi_lsb.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ce_wrap_intr_sum_host_msi_lsb.i, align 4
  %shr.i = lshr i32 %and.i32, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool.not = icmp eq i32 %shr.i, 0
  br i1 %tobool.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.then3
  %call.i33 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %ctx) #9
  br i1 %call.i33, label %if.then.i, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__napi_schedule(ptr noundef %ctx) #9
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  %soc_core_base_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %43, i32 0, i32 2
  %48 = ptrtoint ptr %soc_core_base_address.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %soc_core_base_address.i, align 4
  %add.i = add i32 %49, 8
  %pcie_intr_fw_mask.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %43, i32 0, i32 25
  %50 = ptrtoint ptr %pcie_intr_fw_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pcie_intr_fw_mask.i, align 4
  %pcie_intr_ce_mask_all.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %43, i32 0, i32 26
  %52 = ptrtoint ptr %pcie_intr_ce_mask_all.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pcie_intr_ce_mask_all.i, align 4
  %or.i = or i32 %53, %51
  %54 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i.i36 = getelementptr inbounds %struct.ath10k_ce, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %bus_ops.i.i36 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus_ops.i.i36, align 4
  %write32.i.i37 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %write32.i.i37 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write32.i.i37, align 4
  tail call void %59(ptr noundef %add.ptr, i32 noundef %add.i, i32 noundef %or.i) #9
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address4.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %soc_core_base_address4.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %soc_core_base_address4.i, align 4
  %add5.i = add i32 %63, 8
  %64 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i12.i = getelementptr inbounds %struct.ath10k_ce, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %bus_ops.i12.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus_ops.i12.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call1.i.i38 = tail call i32 %69(ptr noundef %add.ptr, i32 noundef %add5.i) #9
  %hw_rev.i = getelementptr i8, ptr %ctx, i32 -20220
  %70 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hw_rev.i, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %71, label %if.end8.cleanup_crit_edge [
    i32 0, label %if.end8.sw.bb.i_crit_edge
    i32 7, label %if.end8.sw.bb.i_crit_edge46
    i32 1, label %if.end8.sw.bb.i_crit_edge47
    i32 5, label %if.end8.sw.bb.i_crit_edge48
  ]

if.end8.sw.bb.i_crit_edge48:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge47:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge46:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end8.sw.bb.i_crit_edge, %if.end8.sw.bb.i_crit_edge46, %if.end8.sw.bb.i_crit_edge47, %if.end8.sw.bb.i_crit_edge48
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address.i40 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %soc_core_base_address.i40 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %soc_core_base_address.i40, align 4
  %77 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i.i42 = getelementptr inbounds %struct.ath10k_ce, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %bus_ops.i.i42 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus_ops.i.i42, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %call1.i.i43 = tail call i32 %82(ptr noundef %add.ptr, i32 noundef %76) #9
  %or.i44 = or i32 %call1.i.i43, 2048
  %83 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address2.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %soc_core_base_address2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %soc_core_base_address2.i, align 4
  %87 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i11.i = getelementptr inbounds %struct.ath10k_ce, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %bus_ops.i11.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bus_ops.i11.i, align 4
  %write32.i.i45 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %write32.i.i45 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write32.i.i45, align 4
  tail call void %92(ptr noundef %add.ptr, i32 noundef %86, i32 noundef %or.i44) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.i, %if.end8.cleanup_crit_edge, %if.then.i, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call2, %if.end.cleanup_crit_edge ], [ %call2, %if.then6.cleanup_crit_edge ], [ %call2, %if.then.i ], [ %call2, %if.end8.cleanup_crit_edge ], [ %call2, %sw.bb.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_pci_wait_for_target_init(ptr noundef %ar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_wait_for_target_init, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.25) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %ce_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %oper_irq_mode = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 20
  %add.neg = sub i32 -300, %1
  br label %do.body3

do.body3:                                         ; preds = %do.cond28.do.body3_crit_edge, %do.end
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %fw_indicator_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %fw_indicator_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_indicator_address, align 4
  %6 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath10k_ce, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call1.i = tail call i32 %11(ptr noundef %ar, i32 noundef %5) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %12 = load i32, ptr @ath10k_debug_mask, align 4
  %and6 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %do.body3.if.then10_crit_edge

do.body3.if.then10_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

lor.lhs.false8:                                   ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_wait_for_target_init, %if.then10)) #9
          to label %do.end13 [label %if.then10], !srcloc !390

if.then10:                                        ; preds = %lor.lhs.false8, %do.body3.if.then10_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.26, i32 noundef %call1.i) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %lor.lhs.false8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp = icmp eq i32 %call1.i, -1
  br i1 %cmp, label %do.end13.do.cond28_crit_edge, label %if.end15

do.end13.do.cond28_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond28

if.end15:                                         ; preds = %do.end13
  %13 = and i32 %call1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.end23, label %if.end33.critedge

if.end23:                                         ; preds = %if.end15
  %15 = ptrtoint ptr %oper_irq_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oper_irq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp24 = icmp eq i32 %16, 1
  br i1 %cmp24, label %if.then25, label %if.end23.if.end26_crit_edge

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %soc_core_base_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %soc_core_base_address.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %soc_core_base_address.i, align 4
  %add.i = add i32 %20, 8
  %pcie_intr_fw_mask.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %18, i32 0, i32 25
  %21 = ptrtoint ptr %pcie_intr_fw_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pcie_intr_fw_mask.i, align 4
  %pcie_intr_ce_mask_all.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %18, i32 0, i32 26
  %23 = ptrtoint ptr %pcie_intr_ce_mask_all.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pcie_intr_ce_mask_all.i, align 4
  %or.i = or i32 %24, %22
  %25 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus_ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32.i.i, align 4
  tail call void %30(ptr noundef %ar, i32 noundef %add.i, i32 noundef %or.i) #9
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %soc_core_base_address4.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %soc_core_base_address4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %soc_core_base_address4.i, align 4
  %add5.i = add i32 %34, 8
  %35 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i12.i = getelementptr inbounds %struct.ath10k_ce, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %bus_ops.i12.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus_ops.i12.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %call1.i.i = tail call i32 %40(ptr noundef %ar, i32 noundef %add5.i) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #9
  br label %do.cond28

do.cond28:                                        ; preds = %if.end26, %do.end13.do.cond28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %51
  %cmp29 = icmp slt i32 %sub, 0
  br i1 %cmp29, label %do.cond28.do.body3_crit_edge, label %do.end30

do.cond28.do.body3_crit_edge:                     ; preds = %do.cond28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

do.end30:                                         ; preds = %do.cond28
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %soc_core_base_address.i75 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %soc_core_base_address.i75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %soc_core_base_address.i75, align 4
  %add.i76 = add i32 %55, 8
  %56 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i.i78 = getelementptr inbounds %struct.ath10k_ce, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %bus_ops.i.i78 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus_ops.i.i78, align 4
  %write32.i.i79 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %write32.i.i79 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i.i79, align 4
  tail call void %61(ptr noundef %ar, i32 noundef %add.i76, i32 noundef 0) #9
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %soc_core_base_address2.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %soc_core_base_address2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %soc_core_base_address2.i, align 4
  %pcie_intr_clr_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %63, i32 0, i32 27
  %66 = ptrtoint ptr %pcie_intr_clr_address.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pcie_intr_clr_address.i, align 4
  %add4.i = add i32 %67, %65
  %pcie_intr_fw_mask.i80 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %63, i32 0, i32 25
  %68 = ptrtoint ptr %pcie_intr_fw_mask.i80 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pcie_intr_fw_mask.i80, align 4
  %pcie_intr_ce_mask_all.i81 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %63, i32 0, i32 26
  %70 = ptrtoint ptr %pcie_intr_ce_mask_all.i81 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pcie_intr_ce_mask_all.i81, align 4
  %or.i82 = or i32 %71, %69
  %72 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i19.i = getelementptr inbounds %struct.ath10k_ce, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %bus_ops.i19.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bus_ops.i19.i, align 4
  %write32.i20.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %write32.i20.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write32.i20.i, align 4
  tail call void %77(ptr noundef %ar, i32 noundef %add4.i, i32 noundef %or.i82) #9
  %78 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs, align 4
  %soc_core_base_address8.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %soc_core_base_address8.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %soc_core_base_address8.i, align 4
  %add9.i = add i32 %81, 8
  %82 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i22.i = getelementptr inbounds %struct.ath10k_ce, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %bus_ops.i22.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bus_ops.i22.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %call1.i.i83 = tail call i32 %87(ptr noundef %ar, i32 noundef %add9.i) #9
  %hw_rev.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 6
  %88 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %hw_rev.i, align 4
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %89, label %do.end30.ath10k_pci_irq_msi_fw_mask.exit_crit_edge [
    i32 0, label %do.end30.sw.bb.i_crit_edge
    i32 7, label %do.end30.sw.bb.i_crit_edge148
    i32 1, label %do.end30.sw.bb.i_crit_edge149
    i32 5, label %do.end30.sw.bb.i_crit_edge150
  ]

do.end30.sw.bb.i_crit_edge150:                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

do.end30.sw.bb.i_crit_edge149:                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

do.end30.sw.bb.i_crit_edge148:                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

do.end30.sw.bb.i_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

do.end30.ath10k_pci_irq_msi_fw_mask.exit_crit_edge: ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_irq_msi_fw_mask.exit

sw.bb.i:                                          ; preds = %do.end30.sw.bb.i_crit_edge, %do.end30.sw.bb.i_crit_edge148, %do.end30.sw.bb.i_crit_edge149, %do.end30.sw.bb.i_crit_edge150
  %91 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs, align 4
  %soc_core_base_address.i85 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %soc_core_base_address.i85 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %soc_core_base_address.i85, align 4
  %95 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i.i87 = getelementptr inbounds %struct.ath10k_ce, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %bus_ops.i.i87 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bus_ops.i.i87, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %call1.i.i88 = tail call i32 %100(ptr noundef %ar, i32 noundef %94) #9
  %and.i = and i32 %call1.i.i88, -2049
  %101 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs, align 4
  %soc_core_base_address2.i89 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %soc_core_base_address2.i89 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %soc_core_base_address2.i89, align 4
  %105 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i11.i = getelementptr inbounds %struct.ath10k_ce, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %bus_ops.i11.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bus_ops.i11.i, align 4
  %write32.i.i90 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %write32.i.i90 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write32.i.i90, align 4
  tail call void %110(ptr noundef %ar, i32 noundef %104, i32 noundef %and.i) #9
  br label %ath10k_pci_irq_msi_fw_mask.exit

ath10k_pci_irq_msi_fw_mask.exit:                  ; preds = %sw.bb.i, %do.end30.ath10k_pci_irq_msi_fw_mask.exit_crit_edge
  br i1 %cmp, label %if.then32, label %ath10k_pci_irq_msi_fw_mask.exit.if.end33_crit_edge

ath10k_pci_irq_msi_fw_mask.exit.if.end33_crit_edge: ; preds = %ath10k_pci_irq_msi_fw_mask.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then32:                                        ; preds = %ath10k_pci_irq_msi_fw_mask.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end33.critedge:                                ; preds = %if.end15
  %111 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs, align 4
  %soc_core_base_address.i92 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %soc_core_base_address.i92 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %soc_core_base_address.i92, align 4
  %add.i93 = add i32 %114, 8
  %115 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i.i95 = getelementptr inbounds %struct.ath10k_ce, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %bus_ops.i.i95 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bus_ops.i.i95, align 4
  %write32.i.i96 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %write32.i.i96 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write32.i.i96, align 4
  tail call void %120(ptr noundef %ar, i32 noundef %add.i93, i32 noundef 0) #9
  %121 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs, align 4
  %soc_core_base_address2.i97 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %soc_core_base_address2.i97 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %soc_core_base_address2.i97, align 4
  %pcie_intr_clr_address.i98 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %122, i32 0, i32 27
  %125 = ptrtoint ptr %pcie_intr_clr_address.i98 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pcie_intr_clr_address.i98, align 4
  %add4.i99 = add i32 %126, %124
  %pcie_intr_fw_mask.i100 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %122, i32 0, i32 25
  %127 = ptrtoint ptr %pcie_intr_fw_mask.i100 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pcie_intr_fw_mask.i100, align 4
  %pcie_intr_ce_mask_all.i101 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %122, i32 0, i32 26
  %129 = ptrtoint ptr %pcie_intr_ce_mask_all.i101 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pcie_intr_ce_mask_all.i101, align 4
  %or.i102 = or i32 %130, %128
  %131 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i19.i103 = getelementptr inbounds %struct.ath10k_ce, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %bus_ops.i19.i103 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bus_ops.i19.i103, align 4
  %write32.i20.i104 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %write32.i20.i104 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write32.i20.i104, align 4
  tail call void %136(ptr noundef %ar, i32 noundef %add4.i99, i32 noundef %or.i102) #9
  %137 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs, align 4
  %soc_core_base_address8.i105 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %soc_core_base_address8.i105 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %soc_core_base_address8.i105, align 4
  %add9.i106 = add i32 %140, 8
  %141 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i22.i107 = getelementptr inbounds %struct.ath10k_ce, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %bus_ops.i22.i107 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bus_ops.i22.i107, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %call1.i.i108 = tail call i32 %146(ptr noundef %ar, i32 noundef %add9.i106) #9
  %hw_rev.i109 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 6
  %147 = ptrtoint ptr %hw_rev.i109 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %hw_rev.i109, align 4
  %149 = zext i32 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %148, label %if.end33.critedge.if.end33_crit_edge [
    i32 0, label %if.end33.critedge.sw.bb.i119_crit_edge
    i32 7, label %if.end33.critedge.sw.bb.i119_crit_edge151
    i32 1, label %if.end33.critedge.sw.bb.i119_crit_edge152
    i32 5, label %if.end33.critedge.sw.bb.i119_crit_edge153
  ]

if.end33.critedge.sw.bb.i119_crit_edge153:        ; preds = %if.end33.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i119

if.end33.critedge.sw.bb.i119_crit_edge152:        ; preds = %if.end33.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i119

if.end33.critedge.sw.bb.i119_crit_edge151:        ; preds = %if.end33.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i119

if.end33.critedge.sw.bb.i119_crit_edge:           ; preds = %if.end33.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i119

if.end33.critedge.if.end33_crit_edge:             ; preds = %if.end33.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb.i119:                                       ; preds = %if.end33.critedge.sw.bb.i119_crit_edge, %if.end33.critedge.sw.bb.i119_crit_edge151, %if.end33.critedge.sw.bb.i119_crit_edge152, %if.end33.critedge.sw.bb.i119_crit_edge153
  %150 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs, align 4
  %soc_core_base_address.i111 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %soc_core_base_address.i111 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %soc_core_base_address.i111, align 4
  %154 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i.i113 = getelementptr inbounds %struct.ath10k_ce, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %bus_ops.i.i113 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %bus_ops.i.i113, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 4
  %call1.i.i114 = tail call i32 %159(ptr noundef %ar, i32 noundef %153) #9
  %and.i115 = and i32 %call1.i.i114, -2049
  %160 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs, align 4
  %soc_core_base_address2.i116 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %161, i32 0, i32 2
  %162 = ptrtoint ptr %soc_core_base_address2.i116 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %soc_core_base_address2.i116, align 4
  %164 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i11.i117 = getelementptr inbounds %struct.ath10k_ce, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %bus_ops.i11.i117 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %bus_ops.i11.i117, align 4
  %write32.i.i118 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %write32.i.i118 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %write32.i.i118, align 4
  tail call void %169(ptr noundef %ar, i32 noundef %163, i32 noundef %and.i115) #9
  br label %if.end33

if.end33:                                         ; preds = %sw.bb.i119, %if.end33.critedge.if.end33_crit_edge, %ath10k_pci_irq_msi_fw_mask.exit.if.end33_crit_edge
  %and34 = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %and38 = and i32 %call1.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %do.body42

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.29, i32 noundef %call1.i) #9
  br label %cleanup

do.body42:                                        ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %170 = load i32, ptr @ath10k_debug_mask, align 4
  %and43 = and i32 %170, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %do.body42.if.then47_crit_edge

do.body42.if.then47_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

lor.lhs.false45:                                  ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_wait_for_target_init, %if.then47)) #9
          to label %cleanup [label %if.then47], !srcloc !390

if.then47:                                        ; preds = %lor.lhs.false45, %do.body42.if.then47_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.30) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %lor.lhs.false45, %if.then40, %if.then36, %if.then32
  %retval.0 = phi i32 [ -5, %if.then32 ], [ -70, %if.then36 ], [ -110, %if.then40 ], [ 0, %if.then47 ], [ 0, %lor.lhs.false45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_pci_setup_resource(ptr noundef %ar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %ce_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %0 = ptrtoint ptr %ce_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_priv.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @ath10k_pci_setup_resource.__key, i16 noundef signext 3) #9
  %ps_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %ps_lock, ptr noundef nonnull @.str.33, ptr noundef nonnull @ath10k_pci_setup_resource.__key.32, i16 noundef signext 3) #9
  %ce_diag_mutex = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 4, i32 4
  tail call void @__mutex_init(ptr noundef %ce_diag_mutex, ptr noundef nonnull @.str.35, ptr noundef nonnull @ath10k_pci_setup_resource.__key.34) #9
  %dump_work = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 4
  tail call void @__init_work(ptr noundef %dump_work, i32 noundef 0) #9
  %2 = ptrtoint ptr %dump_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %dump_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 5, i32 4, i32 0, i32 7
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.37, ptr noundef nonnull @ath10k_pci_setup_resource.__key.36, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry14 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 5
  %3 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 5, i32 3
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry14, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 5, i32 4, i32 0, i32 3
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ath10k_pci_fw_dump_work, ptr %func, align 4
  %rx_post_retry = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 5, i32 0, i32 0, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %rx_post_retry, ptr noundef nonnull @ath10k_pci_rx_replenish_retry, i32 noundef 0, ptr noundef nonnull @.str.39, ptr noundef nonnull @ath10k_pci_setup_resource.__key.38) #9
  %call21 = tail call ptr @kmemdup(ptr noundef nonnull @pci_host_ce_config_wlan, i32 noundef 288, i32 noundef 3264) #9
  %attr = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 0, i32 3
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call21, ptr %attr, align 4
  %tobool.not = icmp eq ptr %call21, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call23 = tail call ptr @kmemdup(ptr noundef nonnull @pci_target_ce_config_wlan, i32 noundef 240, i32 noundef 3264) #9
  %pipe_config = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1
  %7 = ptrtoint ptr %pipe_config to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call23, ptr %pipe_config, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %if.end.err_free_attr_crit_edge, label %if.end27

if.end.err_free_attr_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_attr

if.end27:                                         ; preds = %if.end
  %call28 = tail call ptr @kmemdup(ptr noundef nonnull @pci_target_service_to_ce_map_wlan, i32 noundef 204, i32 noundef 3264) #9
  %serv_to_pipe = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1, i32 1
  %8 = ptrtoint ptr %serv_to_pipe to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call28, ptr %serv_to_pipe, align 4
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %if.end27.err_free_pipe_config_crit_edge, label %if.end32

if.end27.err_free_pipe_config_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_pipe_config

if.end32:                                         ; preds = %if.end27
  %hw_rev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 6
  %9 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_rev, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %10, label %if.end32.if.end36_crit_edge [
    i32 1, label %if.end32.if.then35_crit_edge
    i32 5, label %if.end32.if.then35_crit_edge85
  ]

if.end32.if.then35_crit_edge85:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

if.end32.if.then35_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then35:                                        ; preds = %if.end32.if.then35_crit_edge, %if.end32.if.then35_crit_edge85
  %12 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %attr, align 4
  %src_sz_max.i = getelementptr %struct.ce_attr, ptr %13, i32 5, i32 2
  %14 = ptrtoint ptr %src_sz_max.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %src_sz_max.i, align 4
  %dest_nentries.i = getelementptr %struct.ce_attr, ptr %13, i32 5, i32 3
  %15 = ptrtoint ptr %dest_nentries.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %dest_nentries.i, align 4
  %16 = ptrtoint ptr %pipe_config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pipe_config, align 4
  %pipedir.i = getelementptr %struct.ce_pipe_config, ptr %17, i32 5, i32 1
  %18 = ptrtoint ptr %pipedir.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 33554432, ptr %pipedir.i, align 4
  %nbytes_max.i = getelementptr %struct.ce_pipe_config, ptr %17, i32 5, i32 3
  %19 = ptrtoint ptr %nbytes_max.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 524288, ptr %nbytes_max.i, align 4
  %20 = ptrtoint ptr %serv_to_pipe to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serv_to_pipe, align 4
  %pipenum.i = getelementptr %struct.ce_service_to_pipe, ptr %21, i32 15, i32 2
  %22 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16777216, ptr %pipenum.i, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end32.if.end36_crit_edge
  %23 = ptrtoint ptr %ce_priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ce_priv.i, align 4
  %hw_values.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %25 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_values.i, align 4
  %ce_count42.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ce_count42.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ce_count42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp44.not.i = icmp eq i8 %28, 0
  br i1 %cmp44.not.i, label %if.end36.cleanup_crit_edge, label %for.body.lr.ph.i

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end36
  %ce_diag.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 4, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.045.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 6, i32 %i.045.i
  %arrayidx3.i = getelementptr %struct.ath10k_ce, ptr %24, i32 0, i32 2, i32 %i.045.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx3.i, ptr %arrayidx.i, align 4
  %conv4.i = trunc i32 %i.045.i to i8
  %pipe_num.i = getelementptr %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 6, i32 %i.045.i, i32 1
  %30 = ptrtoint ptr %pipe_num.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv4.i, ptr %pipe_num.i, align 4
  %hif_ce_state.i = getelementptr %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 6, i32 %i.045.i, i32 2
  %31 = ptrtoint ptr %hif_ce_state.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %ar, ptr %hif_ce_state.i, align 4
  %32 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %attr, align 4
  %arrayidx5.i = getelementptr %struct.ce_attr, ptr %33, i32 %i.045.i
  %call6.i = tail call i32 @ath10k_ce_alloc_pipe(ptr noundef %ar, i32 noundef %i.045.i, ptr noundef %arrayidx5.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then39

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.045.i)
  %cmp7.i = icmp eq i32 %i.045.i, 7
  br i1 %cmp7.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %36 = ptrtoint ptr %ce_diag.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %ce_diag.i, align 4
  br label %for.inc.i

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %attr, align 4
  %src_sz_max.i70 = getelementptr %struct.ce_attr, ptr %38, i32 %i.045.i, i32 2
  %39 = ptrtoint ptr %src_sz_max.i70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %src_sz_max.i70, align 4
  %buf_sz.i = getelementptr %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 6, i32 %i.045.i, i32 3
  %41 = ptrtoint ptr %buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %buf_sz.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %if.then9.i
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %42 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ce_count.i, align 4
  %conv.i = zext i8 %45 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.then39:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.22, i32 noundef %i.045.i, i32 noundef %call6.i) #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.40, i32 noundef %call6.i) #9
  %46 = ptrtoint ptr %serv_to_pipe to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %serv_to_pipe, align 4
  tail call void @kfree(ptr noundef %47) #9
  br label %err_free_pipe_config

err_free_pipe_config:                             ; preds = %if.then39, %if.end27.err_free_pipe_config_crit_edge
  %ret.0 = phi i32 [ %call6.i, %if.then39 ], [ -12, %if.end27.err_free_pipe_config_crit_edge ]
  %48 = ptrtoint ptr %pipe_config to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pipe_config, align 4
  tail call void @kfree(ptr noundef %49) #9
  br label %err_free_attr

err_free_attr:                                    ; preds = %err_free_pipe_config, %if.end.err_free_attr_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_pipe_config ], [ -12, %if.end.err_free_attr_crit_edge ]
  %50 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %attr, align 4
  tail call void @kfree(ptr noundef %51) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_attr, %for.inc.i.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free_attr ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_pci_fw_dump_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  %val.i.i.i = alloca i32, align 4
  %reg_dump_values.i = alloca [60 x i32], align 4
  %guid = alloca [37 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr i8, ptr %work, i32 -832
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %guid) #9
  %2 = call ptr @memset(ptr %guid, i32 255, i32 37)
  %dump_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 81
  tail call void @mutex_lock_nested(ptr noundef %dump_mutex, i32 noundef 0) #9
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #9
  %fw_crash_counter = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 120, i32 1
  %3 = ptrtoint ptr %fw_crash_counter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_crash_counter, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %fw_crash_counter, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #9
  %call = tail call ptr @ath10k_coredump_new(ptr noundef %1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %guid, i32 noundef 37, ptr noundef nonnull @.str.48, ptr noundef nonnull %call) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %guid, i32 noundef 37, ptr noundef nonnull @.str.49) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef nonnull %guid) #9
  call void @ath10k_print_driver_info(ptr noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %reg_dump_values.i) #9
  %5 = call ptr @memset(ptr %reg_dump_values.i, i32 0, i32 240)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 81, i32 5
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !389

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1440, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #9
  %7 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %val.i.i.i, align 4
  %call.i.i.i = call fastcc i32 @ath10k_pci_diag_read_mem(ptr noundef %1, i32 noundef 4196356, ptr noundef nonnull %val.i.i.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i.i.i, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.54, i32 noundef 4, i32 noundef %call.i.i.i) #9
  br label %if.then26.i

if.end.i.i:                                       ; preds = %if.end.i
  %call2.i.i = call fastcc i32 @ath10k_pci_diag_read_mem(ptr noundef %1, i32 noundef %10, ptr noundef nonnull %reg_dump_values.i, i32 noundef 240) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp3.not.i.i, label %do.end30.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef %10, i32 noundef 240, i32 noundef %call2.i.i) #9
  br label %if.then26.i

if.then26.i:                                      ; preds = %if.then4.i.i, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ %call2.i.i, %if.then4.i.i ], [ %call.i.i.i, %if.then.i.i ]
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.51, i32 noundef %retval.0.i.ph.i) #9
  br label %ath10k_pci_dump_registers.exit

do.end30.i:                                       ; preds = %if.end.i.i
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.52) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end30.i
  %i.071.i = phi i32 [ 0, %do.end30.i ], [ %add38.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx32.i = getelementptr [60 x i32], ptr %reg_dump_values.i, i32 0, i32 %i.071.i
  %11 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx32.i, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12) #9
  %add.i = or i32 %i.071.i, 1
  %arrayidx33.i = getelementptr [60 x i32], ptr %reg_dump_values.i, i32 0, i32 %add.i
  %14 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx33.i, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #9
  %add34.i = or i32 %i.071.i, 2
  %arrayidx35.i = getelementptr [60 x i32], ptr %reg_dump_values.i, i32 0, i32 %add34.i
  %17 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx35.i, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18) #9
  %add36.i = or i32 %i.071.i, 3
  %arrayidx37.i = getelementptr [60 x i32], ptr %reg_dump_values.i, i32 0, i32 %add36.i
  %20 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx37.i, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21) #9
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.53, i32 noundef %i.071.i, i32 noundef %13, i32 noundef %16, i32 noundef %19, i32 noundef %22) #9
  %add38.i = add nuw nsw i32 %i.071.i, 4
  %cmp31.i = icmp ult i32 %i.071.i, 56
  br i1 %cmp31.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  br i1 %tobool.not, label %for.end.i.ath10k_pci_dump_registers.exit_crit_edge, label %for.body44.preheader.i

for.end.i.ath10k_pci_dump_registers.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_dump_registers.exit

for.body44.preheader.i:                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %uglygep.i = getelementptr i8, ptr %call, i32 32
  %23 = call ptr @memcpy(ptr %uglygep.i, ptr %reg_dump_values.i, i32 240)
  br label %ath10k_pci_dump_registers.exit

ath10k_pci_dump_registers.exit:                   ; preds = %for.body44.preheader.i, %for.end.i.ath10k_pci_dump_registers.exit_crit_edge, %if.then26.i
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %reg_dump_values.i) #9
  call void @ath10k_ce_dump_registers(ptr noundef %1, ptr noundef %call) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %24 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i24 = icmp eq i32 %24, 0
  br i1 %tobool.not.i24, label %ath10k_pci_dump_registers.exit.if.end.i30_crit_edge, label %land.rhs.i28

ath10k_pci_dump_registers.exit.if.end.i30_crit_edge: ; preds = %ath10k_pci_dump_registers.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i30

land.rhs.i28:                                     ; preds = %ath10k_pci_dump_registers.exit
  %dep_map.i25 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 81, i32 5
  %call.i.i26 = call i32 @lock_is_held_type(ptr noundef %dep_map.i25, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %cmp.not.i27 = icmp eq i32 %call.i.i26, 0
  br i1 %cmp.not.i27, label %do.end.i29, label %land.rhs.i28.if.end.i30_crit_edge, !prof !389

land.rhs.i28.if.end.i30_crit_edge:                ; preds = %land.rhs.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i30

do.end.i29:                                       ; preds = %land.rhs.i28
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1666, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i30

if.end.i30:                                       ; preds = %do.end.i29, %land.rhs.i28.if.end.i30_crit_edge, %ath10k_pci_dump_registers.exit.if.end.i30_crit_edge
  br i1 %tobool.not, label %if.end.i30.ath10k_pci_dump_memory.exit_crit_edge, label %if.end26.i

if.end.i30.ath10k_pci_dump_memory.exit_crit_edge: ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_dump_memory.exit

if.end26.i:                                       ; preds = %if.end.i30
  %call27.i = call ptr @ath10k_coredump_get_mem_layout(ptr noundef %1) #9
  %tobool28.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool28.not.i, label %if.end26.i.ath10k_pci_dump_memory.exit_crit_edge, label %if.end30.i

if.end26.i.ath10k_pci_dump_memory.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_dump_memory.exit

if.end30.i:                                       ; preds = %if.end26.i
  %region_table.i = getelementptr inbounds %struct.ath10k_hw_mem_layout, ptr %call27.i, i32 0, i32 3
  %25 = ptrtoint ptr %region_table.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %region_table.i, align 4
  %ramdump_buf.i = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %call, i32 0, i32 4
  %27 = ptrtoint ptr %ramdump_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ramdump_buf.i, align 8
  %ramdump_buf_len.i = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %call, i32 0, i32 5
  %29 = ptrtoint ptr %ramdump_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ramdump_buf_len.i, align 4
  %31 = call ptr @memset(ptr %28, i32 0, i32 %30)
  %size.i = getelementptr inbounds %struct.ath10k_hw_mem_layout, ptr %call27.i, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp32170.i = icmp sgt i32 %33, 0
  br i1 %cmp32170.i, label %for.body.lr.ph.i, label %if.end30.i.ath10k_pci_dump_memory.exit_crit_edge

if.end30.i.ath10k_pci_dump_memory.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_dump_memory.exit

for.body.lr.ph.i:                                 ; preds = %if.end30.i
  %regs.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 37
  %ce_priv.i.i.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 131
  %conf_mutex.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  %state.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %mem.i125.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 143, i32 12
  br label %for.body.i31

for.body.i31:                                     ; preds = %if.end63.i.for.body.i31_crit_edge, %for.body.lr.ph.i
  %buf.0178.i = phi ptr [ %28, %for.body.lr.ph.i ], [ %add.ptr64.i, %if.end63.i.for.body.i31_crit_edge ]
  %i.0177.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end63.i.for.body.i31_crit_edge ]
  %buf_len.0176.i = phi i32 [ %30, %for.body.lr.ph.i ], [ %sub65.i, %if.end63.i.for.body.i31_crit_edge ]
  %current_region.0171.i = phi ptr [ %26, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end63.i.for.body.i31_crit_edge ]
  %len.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.0171.i, i32 0, i32 2
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %buf_len.0176.i)
  %cmp33.i = icmp ugt i32 %35, %buf_len.0176.i
  br i1 %cmp33.i, label %if.then34.i, label %if.end36.i

if.then34.i:                                      ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.0171.i, i32 0, i32 3
  %36 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.56, ptr noundef %37, i32 noundef %35, i32 noundef %buf_len.0176.i) #9
  br label %ath10k_pci_dump_memory.exit

if.end36.i:                                       ; preds = %for.body.i31
  %38 = ptrtoint ptr %current_region.0171.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %current_region.0171.i, align 4
  %40 = and i32 %39, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %switch.i = icmp eq i32 %40, 4
  br i1 %switch.i, label %if.then40.i, label %if.end36.i.if.end46.i_crit_edge

if.end36.i.if.end46.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then40.i:                                      ; preds = %if.end36.i
  %start.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.0171.i, i32 0, i32 1
  %41 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %start.i, align 4
  %shr.i = lshr i32 %42, 20
  %43 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i.i, align 4
  %soc_core_base_address.i.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %soc_core_base_address.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %soc_core_base_address.i.i, align 4
  %add.i.i = add i32 %46, 24
  %47 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %bus_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus_ops.i.i.i, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write32.i.i.i, align 4
  call void %52(ptr noundef %1, i32 noundef %add.i.i, i32 noundef %shr.i) #9
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 4
  %soc_core_base_address2.i.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %soc_core_base_address2.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %soc_core_base_address2.i.i, align 4
  %add3.i.i = add i32 %56, 24
  %57 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i12.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %bus_ops.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus_ops.i12.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %call1.i.i.i = call i32 %62(ptr noundef %1, i32 noundef %add3.i.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i.i, i32 %shr.i)
  %cmp.not.i.i32 = icmp eq i32 %call1.i.i.i, %shr.i
  br i1 %cmp.not.i.i32, label %ath10k_pci_set_ram_config.exit.thread.i, label %if.then43.i

ath10k_pci_set_ram_config.exit.thread.i:          ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %current_region.0171.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr.i = load i32, ptr %current_region.0171.i, align 4
  br label %if.end46.i

if.then43.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef %call1.i.i.i, i32 noundef %shr.i) #9
  %name44.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.0171.i, i32 0, i32 3
  %64 = ptrtoint ptr %name44.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name44.i, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.57, ptr noundef %65, i32 noundef -5) #9
  br label %ath10k_pci_dump_memory.exit

if.end46.i:                                       ; preds = %ath10k_pci_set_ram_config.exit.thread.i, %if.end36.i.if.end46.i_crit_edge
  %66 = phi i32 [ %.pr.i, %ath10k_pci_set_ram_config.exit.thread.i ], [ %39, %if.end36.i.if.end46.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buf.0178.i, i32 12
  %sub.i = add i32 %buf_len.0176.i, -12
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %66, label %sw.default.i [
    i32 6, label %sw.bb.i
    i32 7, label %sw.bb49.i
  ]

sw.bb.i:                                          ; preds = %if.end46.i
  %68 = ptrtoint ptr %mem.i125.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mem.i125.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 528432
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !392
  %71 = call i32 @llvm.bswap.i32(i32 %70) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  %start.i.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.0171.i, i32 0, i32 1
  %72 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %start.i.i, align 4
  %add.i122.i = add i32 %73, %71
  %74 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp19.not.i.i = icmp eq i32 %75, 0
  br i1 %cmp19.not.i.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.for.body.i.i_crit_edge

sw.bb.i.for.body.i.i_crit_edge:                   ; preds = %sw.bb.i
  br label %for.body.i.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb.i.for.body.i.i_crit_edge
  %i.020.i.i = phi i32 [ %add9.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb.i.for.body.i.i_crit_edge ]
  %add2.i.i = add i32 %add.i122.i, %i.020.i.i
  %76 = ptrtoint ptr %mem.i125.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mem.i125.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %77, i32 315404
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !394
  call void @arm_heavy_mb() #9
  %78 = call i32 @llvm.bswap.i32(i32 %add2.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %78) #9, !srcloc !395
  %79 = ptrtoint ptr %mem.i125.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mem.i125.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %80, i32 315408
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #9, !srcloc !392
  %82 = call i32 @llvm.bswap.i32(i32 %81) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i, i32 %i.020.i.i
  %83 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %add.ptr8.i.i, align 4
  %add9.i.i = add i32 %i.020.i.i, 4
  %84 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len.i, align 4
  %cmp.i.i = icmp ult i32 %add9.i.i, %85
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.sw.epilog.i_crit_edge

for.body.i.i.sw.epilog.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

sw.bb49.i:                                        ; preds = %if.end46.i
  call void @mutex_lock_nested(ptr noundef %conf_mutex.i.i, i32 noundef 0) #9
  %86 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %state.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp.not.i123.i = icmp eq i32 %87, 1
  br i1 %cmp.not.i123.i, label %for.cond.preheader.i.i, label %ath10k_pci_dump_memory_reg.exit.thread.i

for.cond.preheader.i.i:                           ; preds = %sw.bb49.i
  %88 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp116.not.i.i = icmp eq i32 %89, 0
  br i1 %cmp116.not.i.i, label %ath10k_pci_dump_memory_reg.exit.thread141.i, label %for.body.lr.ph.i.i

ath10k_pci_dump_memory_reg.exit.thread141.i:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %conf_mutex.i.i) #9
  br label %sw.epilog.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %start.i126.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.0171.i, i32 0, i32 1
  br label %for.body.i131.i

ath10k_pci_dump_memory_reg.exit.thread.i:         ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.59) #9
  call void @mutex_unlock(ptr noundef %conf_mutex.i.i) #9
  br label %99

for.body.i131.i:                                  ; preds = %for.body.i131.i.for.body.i131.i_crit_edge, %for.body.lr.ph.i.i
  %i.017.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i130.i, %for.body.i131.i.for.body.i131.i_crit_edge ]
  %90 = ptrtoint ptr %mem.i125.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mem.i125.i, align 4
  %92 = ptrtoint ptr %start.i126.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %start.i126.i, align 4
  %add.ptr.i128.i = getelementptr i8, ptr %91, i32 %93
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i128.i, i32 %i.017.i.i
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #9, !srcloc !392
  %95 = call i32 @llvm.bswap.i32(i32 %94) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  %add.ptr4.i129.i = getelementptr i8, ptr %add.ptr.i, i32 %i.017.i.i
  %96 = ptrtoint ptr %add.ptr4.i129.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %add.ptr4.i129.i, align 4
  %add.i130.i = add i32 %i.017.i.i, 4
  %97 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len.i, align 4
  %cmp1.i.i = icmp ult i32 %add.i130.i, %98
  br i1 %cmp1.i.i, label %for.body.i131.i.for.body.i131.i_crit_edge, label %ath10k_pci_dump_memory_reg.exit.i

for.body.i131.i.for.body.i131.i_crit_edge:        ; preds = %for.body.i131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i131.i

ath10k_pci_dump_memory_reg.exit.i:                ; preds = %for.body.i131.i
  call void @mutex_unlock(ptr noundef %conf_mutex.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp51.i = icmp slt i32 %98, 0
  br i1 %cmp51.i, label %ath10k_pci_dump_memory_reg.exit.i._crit_edge, label %ath10k_pci_dump_memory_reg.exit.i.sw.epilog.i_crit_edge

ath10k_pci_dump_memory_reg.exit.i.sw.epilog.i_crit_edge: ; preds = %ath10k_pci_dump_memory_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

ath10k_pci_dump_memory_reg.exit.i._crit_edge:     ; preds = %ath10k_pci_dump_memory_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %99

99:                                               ; preds = %ath10k_pci_dump_memory_reg.exit.i._crit_edge, %ath10k_pci_dump_memory_reg.exit.thread.i
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end46.i
  %size.i.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.0171.i, i32 0, i32 4, i32 1
  %100 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.not.i132.i = icmp eq i32 %101, 0
  br i1 %cmp.not.i132.i, label %if.end.i.i35, label %if.then.i134.i

if.then.i134.i:                                   ; preds = %sw.default.i
  %102 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %current_region.0171.i, null
  %tobool1.not.i.i.i = icmp eq ptr %add.ptr.i, null
  %or.cond.i.i.i = or i1 %tobool1.not.i.i.i, %tobool.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i134.i.sw.epilog.i_crit_edge, label %if.end.i.i.i

if.then.i134.i.sw.epilog.i_crit_edge:             ; preds = %if.then.i134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end.i.i.i:                                     ; preds = %if.then.i134.i
  %section_table.i.i.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.0171.i, i32 0, i32 4
  %104 = ptrtoint ptr %section_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %section_table.i.i.i, align 4
  %start.i.i.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.0171.i, i32 0, i32 1
  %106 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %start.i.i.i, align 4
  %108 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %105, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %107)
  %cmp.i.i.i = icmp ult i32 %109, %107
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.end6.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef %107, i32 noundef %109) #9
  br label %sw.epilog.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %107)
  %cmp9145.not.i.i.i = icmp eq i32 %109, %107
  br i1 %cmp9145.not.i.i.i, label %if.end6.i.i.i.for.cond10.i.i.i.preheader_crit_edge, label %for.body.preheader.i.i.i

if.end6.i.i.i.for.cond10.i.i.i.preheader_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond10.i.i.i.preheader

for.body.preheader.i.i.i:                         ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = sub i32 %109, %107
  %110 = call ptr @memset(ptr %add.ptr.i, i32 170, i32 %sub.i.i.i)
  %uglygep.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %sub.i.i.i
  br label %for.cond10.i.i.i.preheader

for.cond10.i.i.i.preheader:                       ; preds = %for.body.preheader.i.i.i, %if.end6.i.i.i.for.cond10.i.i.i.preheader_crit_edge
  %buf.addr.1.i.i.i.ph = phi ptr [ %uglygep.i.i.i, %for.body.preheader.i.i.i ], [ %add.ptr.i, %if.end6.i.i.i.for.cond10.i.i.i.preheader_crit_edge ]
  br label %for.cond10.i.i.i

for.cond10.i.i.i:                                 ; preds = %for.end53.i.i.i.for.cond10.i.i.i_crit_edge, %for.cond10.i.i.i.preheader
  %buf.addr.1.i.i.i = phi ptr [ %buf.addr.2.lcssa.i.i.i, %for.end53.i.i.i.for.cond10.i.i.i_crit_edge ], [ %buf.addr.1.i.i.i.ph, %for.cond10.i.i.i.preheader ]
  %buf_len.addr.0.i.i.i = phi i32 [ %sub39.i.i.i, %for.end53.i.i.i.for.cond10.i.i.i_crit_edge ], [ %103, %for.cond10.i.i.i.preheader ]
  %cur_section.0.i.i.i = phi ptr [ %next_section.0.i.i.i, %for.end53.i.i.i.for.cond10.i.i.i_crit_edge ], [ %105, %for.cond10.i.i.i.preheader ]
  %count.0.i.i.i = phi i32 [ %add54.i.i.i, %for.end53.i.i.i.for.cond10.i.i.i_crit_edge ], [ 0, %for.cond10.i.i.i.preheader ]
  %i.1.i.i.i = phi i32 [ %add.i.i.i, %for.end53.i.i.i.for.cond10.i.i.i_crit_edge ], [ 0, %for.cond10.i.i.i.preheader ]
  %cmp11.not.i.i.i = icmp eq ptr %cur_section.0.i.i.i, null
  br i1 %cmp11.not.i.i.i, label %for.cond10.i.i.i.ath10k_pci_dump_memory_generic.exit.i_crit_edge, label %for.body12.i.i.i

for.cond10.i.i.i.ath10k_pci_dump_memory_generic.exit.i_crit_edge: ; preds = %for.cond10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_dump_memory_generic.exit.i

for.body12.i.i.i:                                 ; preds = %for.cond10.i.i.i
  %end.i.i.i = getelementptr inbounds %struct.ath10k_mem_section, ptr %cur_section.0.i.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %end.i.i.i, align 4
  %113 = ptrtoint ptr %cur_section.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cur_section.0.i.i.i, align 4
  %sub14.i.i.i = sub i32 %112, %114
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %114)
  %cmp15.i.i.i = icmp eq i32 %112, %114
  br i1 %cmp15.i.i.i, label %if.then16.i.i.i, label %if.end19.i.i.i

if.then16.i.i.i:                                  ; preds = %for.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.62, i32 noundef %112, i32 noundef %112) #9
  br label %ath10k_pci_dump_memory_generic.exit.i

if.end19.i.i.i:                                   ; preds = %for.body12.i.i.i
  %add.i.i.i = add i32 %i.1.i.i.i, 1
  %115 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %116)
  %cmp21.i.i.i = icmp eq i32 %add.i.i.i, %116
  br i1 %cmp21.i.i.i, label %if.end19.i.i.i.if.end33.i.i.i_crit_edge, label %if.else.i.i.i

if.end19.i.i.i.if.end33.i.i.i_crit_edge:          ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i.i

if.else.i.i.i:                                    ; preds = %if.end19.i.i.i
  %add.ptr.i.i.i = getelementptr %struct.ath10k_mem_section, ptr %cur_section.0.i.i.i, i32 1
  %117 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %112)
  %cmp25.i.i.i = icmp ult i32 %118, %112
  br i1 %cmp25.i.i.i, label %if.then26.i.i.i, label %if.end29.i.i.i

if.then26.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %118, i32 noundef %112) #9
  br label %ath10k_pci_dump_memory_generic.exit.i

if.end29.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub32.i.i.i = sub i32 %118, %112
  br label %if.end33.i.i.i

if.end33.i.i.i:                                   ; preds = %if.end29.i.i.i, %if.end19.i.i.i.if.end33.i.i.i_crit_edge
  %next_section.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.end29.i.i.i ], [ null, %if.end19.i.i.i.if.end33.i.i.i_crit_edge ]
  %skip_size.0.i.i.i = phi i32 [ %sub32.i.i.i, %if.end29.i.i.i ], [ 0, %if.end19.i.i.i.if.end33.i.i.i_crit_edge ]
  %add34.i.i.i = add i32 %skip_size.0.i.i.i, %sub14.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %buf_len.addr.0.i.i.i, i32 %add34.i.i.i)
  %cmp35.i.i.i = icmp ult i32 %buf_len.addr.0.i.i.i, %add34.i.i.i
  br i1 %cmp35.i.i.i, label %if.then36.i.i.i, label %if.end37.i.i.i

if.then36.i.i.i:                                  ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef %buf_len.addr.0.i.i.i) #9
  br label %ath10k_pci_dump_memory_generic.exit.i

if.end37.i.i.i:                                   ; preds = %if.end33.i.i.i
  %sub39.i.i.i = sub i32 %buf_len.addr.0.i.i.i, %add34.i.i.i
  %call.i.i.i33 = call fastcc i32 @ath10k_pci_diag_read_mem(ptr noundef %1, i32 noundef %114, ptr noundef %buf.addr.1.i.i.i, i32 noundef %sub14.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i33)
  %tobool41.not.i.i.i = icmp eq i32 %call.i.i.i33, 0
  br i1 %tobool41.not.i.i.i, label %if.end44.i.i.i, label %if.then42.i.i.i

if.then42.i.i.i:                                  ; preds = %if.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %cur_section.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cur_section.0.i.i.i, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.65, i32 noundef %120, i32 noundef %call.i.i.i33) #9
  br label %ath10k_pci_dump_memory_generic.exit.i

if.end44.i.i.i:                                   ; preds = %if.end37.i.i.i
  %add.ptr45.i.i.i = getelementptr i8, ptr %buf.addr.1.i.i.i, i32 %sub14.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_size.0.i.i.i)
  %cmp48148.not.i.i.i = icmp eq i32 %skip_size.0.i.i.i, 0
  br i1 %cmp48148.not.i.i.i, label %if.end44.i.i.i.for.end53.i.i.i_crit_edge, label %for.body49.preheader.i.i.i

if.end44.i.i.i.for.end53.i.i.i_crit_edge:         ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end53.i.i.i

for.body49.preheader.i.i.i:                       ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %121 = call ptr @memset(ptr %add.ptr45.i.i.i, i32 170, i32 %skip_size.0.i.i.i)
  %uglygep172.i.i.i = getelementptr i8, ptr %buf.addr.1.i.i.i, i32 %add34.i.i.i
  br label %for.end53.i.i.i

for.end53.i.i.i:                                  ; preds = %for.body49.preheader.i.i.i, %if.end44.i.i.i.for.end53.i.i.i_crit_edge
  %buf.addr.2.lcssa.i.i.i = phi ptr [ %add.ptr45.i.i.i, %if.end44.i.i.i.for.end53.i.i.i_crit_edge ], [ %uglygep172.i.i.i, %for.body49.preheader.i.i.i ]
  %add54.i.i.i = add i32 %add34.i.i.i, %count.0.i.i.i
  %tobool55.not.i.i.i = icmp eq ptr %next_section.0.i.i.i, null
  br i1 %tobool55.not.i.i.i, label %for.end53.i.i.i.ath10k_pci_dump_memory_generic.exit.i_crit_edge, label %for.end53.i.i.i.for.cond10.i.i.i_crit_edge

for.end53.i.i.i.for.cond10.i.i.i_crit_edge:       ; preds = %for.end53.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond10.i.i.i

for.end53.i.i.i.ath10k_pci_dump_memory_generic.exit.i_crit_edge: ; preds = %for.end53.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_dump_memory_generic.exit.i

if.end.i.i35:                                     ; preds = %sw.default.i
  %start.i135.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.0171.i, i32 0, i32 1
  %122 = ptrtoint ptr %start.i135.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %start.i135.i, align 4
  %124 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %len.i, align 4
  %call2.i.i34 = call fastcc i32 @ath10k_pci_diag_read_mem(ptr noundef %1, i32 noundef %123, ptr noundef %add.ptr.i, i32 noundef %125) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i34)
  %tobool.not.i.i = icmp eq i32 %call2.i.i34, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #11
  %name.i.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.0171.i, i32 0, i32 3
  %126 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %name.i.i, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.60, ptr noundef %127, i32 noundef %call2.i.i34) #9
  br label %ath10k_pci_dump_memory_generic.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %len.i, align 4
  br label %ath10k_pci_dump_memory_generic.exit.i

ath10k_pci_dump_memory_generic.exit.i:            ; preds = %if.end4.i.i, %if.then3.i.i, %for.end53.i.i.i.ath10k_pci_dump_memory_generic.exit.i_crit_edge, %if.then42.i.i.i, %if.then36.i.i.i, %if.then26.i.i.i, %if.then16.i.i.i, %for.cond10.i.i.i.ath10k_pci_dump_memory_generic.exit.i_crit_edge
  %retval.0.i136.i = phi i32 [ %call2.i.i34, %if.then3.i.i ], [ %129, %if.end4.i.i ], [ %count.0.i.i.i, %if.then16.i.i.i ], [ %count.0.i.i.i, %if.then36.i.i.i ], [ %count.0.i.i.i, %if.then42.i.i.i ], [ %count.0.i.i.i, %if.then26.i.i.i ], [ %add54.i.i.i, %for.end53.i.i.i.ath10k_pci_dump_memory_generic.exit.i_crit_edge ], [ %count.0.i.i.i, %for.cond10.i.i.i.ath10k_pci_dump_memory_generic.exit.i_crit_edge ]
  %130 = call i32 @llvm.smax.i32(i32 %retval.0.i136.i, i32 0) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %ath10k_pci_dump_memory_generic.exit.i, %if.then3.i.i.i, %if.then.i134.i.sw.epilog.i_crit_edge, %99, %ath10k_pci_dump_memory_reg.exit.i.sw.epilog.i_crit_edge, %ath10k_pci_dump_memory_reg.exit.thread141.i, %for.body.i.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %count.0.i = phi i32 [ 0, %sw.bb.i.sw.epilog.i_crit_edge ], [ 0, %99 ], [ %98, %ath10k_pci_dump_memory_reg.exit.i.sw.epilog.i_crit_edge ], [ 0, %ath10k_pci_dump_memory_reg.exit.thread141.i ], [ 0, %if.then3.i.i.i ], [ 0, %if.then.i134.i.sw.epilog.i_crit_edge ], [ %130, %ath10k_pci_dump_memory_generic.exit.i ], [ %85, %for.body.i.i.sw.epilog.i_crit_edge ]
  %131 = ptrtoint ptr %current_region.0171.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %current_region.0171.i, align 4
  %133 = call i32 @llvm.bswap.i32(i32 %132) #9
  %134 = ptrtoint ptr %buf.0178.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %buf.0178.i, align 4
  %start59.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.0171.i, i32 0, i32 1
  %135 = ptrtoint ptr %start59.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %start59.i, align 4
  %137 = call i32 @llvm.bswap.i32(i32 %136) #9
  %start60.i = getelementptr inbounds %struct.ath10k_dump_ram_data_hdr, ptr %buf.0178.i, i32 0, i32 1
  %138 = ptrtoint ptr %start60.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %start60.i, align 4
  %139 = call i32 @llvm.bswap.i32(i32 %count.0.i) #9
  %length.i = getelementptr inbounds %struct.ath10k_dump_ram_data_hdr, ptr %buf.0178.i, i32 0, i32 2
  %140 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i)
  %cmp61.i = icmp eq i32 %count.0.i, 0
  br i1 %cmp61.i, label %sw.epilog.i.ath10k_pci_dump_memory.exit_crit_edge, label %if.end63.i

sw.epilog.i.ath10k_pci_dump_memory.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_dump_memory.exit

if.end63.i:                                       ; preds = %sw.epilog.i
  %add.ptr64.i = getelementptr i8, ptr %add.ptr.i, i32 %count.0.i
  %sub65.i = sub i32 %sub.i, %count.0.i
  %incdec.ptr.i = getelementptr %struct.ath10k_mem_region, ptr %current_region.0171.i, i32 1
  %inc.i = add nuw nsw i32 %i.0177.i, 1
  %141 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %size.i, align 4
  %cmp32.i = icmp slt i32 %inc.i, %142
  br i1 %cmp32.i, label %if.end63.i.for.body.i31_crit_edge, label %if.end63.i.ath10k_pci_dump_memory.exit_crit_edge

if.end63.i.ath10k_pci_dump_memory.exit_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_dump_memory.exit

if.end63.i.for.body.i31_crit_edge:                ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i31

ath10k_pci_dump_memory.exit:                      ; preds = %if.end63.i.ath10k_pci_dump_memory.exit_crit_edge, %sw.epilog.i.ath10k_pci_dump_memory.exit_crit_edge, %if.then43.i, %if.then34.i, %if.end30.i.ath10k_pci_dump_memory.exit_crit_edge, %if.end26.i.ath10k_pci_dump_memory.exit_crit_edge, %if.end.i30.ath10k_pci_dump_memory.exit_crit_edge
  call void @mutex_unlock(ptr noundef %dump_mutex) #9
  call void @ath10k_core_start_recovery(ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %guid) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_pci_release_resource(ptr noundef %ar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_post_retry.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 5, i32 0, i32 0, i32 0, i32 3
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %rx_post_retry.i) #9
  %napi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 126
  tail call void @__netif_napi_del(ptr noundef %napi) #9
  tail call void @synchronize_net() #9
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
  br i1 %cmp7.not.i, label %entry.ath10k_pci_ce_deinit.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ath10k_pci_ce_deinit.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_ce_deinit.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  tail call void @ath10k_ce_deinit_pipe(ptr noundef %ar, i32 noundef %i.08.i) #9
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
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ath10k_pci_ce_deinit.exit_crit_edge

for.body.i.ath10k_pci_ce_deinit.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_ce_deinit.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ath10k_pci_ce_deinit.exit:                        ; preds = %for.body.i.ath10k_pci_ce_deinit.exit_crit_edge, %entry.ath10k_pci_ce_deinit.exit_crit_edge
  %8 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_values.i, align 4
  %ce_count5.i8 = getelementptr inbounds %struct.ath10k_hw_values, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ce_count5.i8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ce_count5.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp7.not.i9 = icmp eq i8 %11, 0
  br i1 %cmp7.not.i9, label %ath10k_pci_ce_deinit.exit.ath10k_pci_free_pipes.exit_crit_edge, label %ath10k_pci_ce_deinit.exit.for.body.i15_crit_edge

ath10k_pci_ce_deinit.exit.for.body.i15_crit_edge: ; preds = %ath10k_pci_ce_deinit.exit
  br label %for.body.i15

ath10k_pci_ce_deinit.exit.ath10k_pci_free_pipes.exit_crit_edge: ; preds = %ath10k_pci_ce_deinit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_free_pipes.exit

for.body.i15:                                     ; preds = %for.body.i15.for.body.i15_crit_edge, %ath10k_pci_ce_deinit.exit.for.body.i15_crit_edge
  %i.08.i10 = phi i32 [ %inc.i11, %for.body.i15.for.body.i15_crit_edge ], [ 0, %ath10k_pci_ce_deinit.exit.for.body.i15_crit_edge ]
  tail call void @ath10k_ce_free_pipe(ptr noundef %ar, i32 noundef %i.08.i10) #9
  %inc.i11 = add nuw nsw i32 %i.08.i10, 1
  %12 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i12 = getelementptr inbounds %struct.ath10k_hw_values, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ce_count.i12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ce_count.i12, align 4
  %conv.i13 = zext i8 %15 to i32
  %cmp.i14 = icmp ult i32 %inc.i11, %conv.i13
  br i1 %cmp.i14, label %for.body.i15.for.body.i15_crit_edge, label %for.body.i15.ath10k_pci_free_pipes.exit_crit_edge

for.body.i15.ath10k_pci_free_pipes.exit_crit_edge: ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_free_pipes.exit

for.body.i15.for.body.i15_crit_edge:              ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i15

ath10k_pci_free_pipes.exit:                       ; preds = %for.body.i15.ath10k_pci_free_pipes.exit_crit_edge, %ath10k_pci_ce_deinit.exit.ath10k_pci_free_pipes.exit_crit_edge
  %attr = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 0, i32 3
  %16 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %attr, align 4
  tail call void @kfree(ptr noundef %17) #9
  %pipe_config = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1
  %18 = ptrtoint ptr %pipe_config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pipe_config, align 4
  tail call void @kfree(ptr noundef %19) #9
  %serv_to_pipe = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1, i32 1
  %20 = ptrtoint ptr %serv_to_pipe to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serv_to_pipe, align 4
  tail call void @kfree(ptr noundef %21) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ath10k_pci_driver, ptr noundef null, ptr noundef nonnull @.str.69) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @ath10k_ahb_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %do.end7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %call2) #13
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  ret i32 %call2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_pci_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @ath10k_pci_driver) #9
  tail call void @ath10k_ahb_exit() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ahb_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ath10k_ce_rx_num_free_bufs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htc_tx_completion_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_per_engine_service_any(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_htt_txrx_compl_task(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_coredump_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_print_driver_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_dump_registers(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_start_recovery(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_coredump_get_mem_layout(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_pci_htc_tx_cb(ptr noundef %ce_state) #2 align 64 {
entry:
  %list = alloca %struct.sk_buff_head, align 4
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ce_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_state, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list) #9
  %2 = getelementptr inbounds i8, ptr %list, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #9
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !388
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.65, ptr %list, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %7 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i, align 4
  %call8 = call i32 @ath10k_ce_completed_send_next(ptr noundef %ce_state, ptr noundef nonnull %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %entry.while.body_crit_edge, label %entry.while.cond3.preheader_crit_edge

entry.while.cond3.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond3.preheader

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.cond3.preheader:                            ; preds = %while.cond.backedge.while.cond3.preheader_crit_edge, %entry.while.cond3.preheader_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list, align 4
  %cmp.i.i10 = icmp eq ptr %9, %list
  %tobool.not.i1215 = icmp eq ptr %9, null
  %tobool.not.i12 = or i1 %cmp.i.i10, %tobool.not.i1215
  br i1 %tobool.not.i12, label %while.cond3.preheader.while.end6_crit_edge, label %while.cond3.preheader.while.body5_crit_edge

while.cond3.preheader.while.body5_crit_edge:      ; preds = %while.cond3.preheader
  br label %while.body5

while.cond3.preheader.while.end6_crit_edge:       ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end6

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  %cmp2 = icmp eq ptr %11, null
  br i1 %cmp2, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %11, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %11, i32 0, i32 1
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
  %call = call i32 @ath10k_ce_completed_send_next(ptr noundef %ce_state, ptr noundef nonnull %skb) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.cond3.preheader_crit_edge

while.cond.backedge.while.cond3.preheader_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond3.preheader

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body5:                                      ; preds = %while.body5.while.body5_crit_edge, %while.cond3.preheader.while.body5_crit_edge
  %spec.store.select.i.i13 = phi ptr [ %29, %while.body5.while.body5_crit_edge ], [ %9, %while.cond3.preheader.while.body5_crit_edge ]
  %19 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %21 = ptrtoint ptr %spec.store.select.i.i13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spec.store.select.i.i13, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %spec.store.select.i.i13, i32 0, i32 1
  %23 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i13, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %prev17.i.i, align 4
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %22, ptr %24, align 8
  %27 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %spec.store.select.i.i13, ptr %skb, align 4
  call void @ath10k_htc_tx_completion_handler(ptr noundef %1, ptr noundef nonnull %spec.store.select.i.i13) #9
  %28 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %29, %list
  %tobool.not.i16 = icmp eq ptr %29, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i16
  br i1 %tobool.not.i, label %while.body5.while.end6_crit_edge, label %while.body5.while.body5_crit_edge

while.body5.while.body5_crit_edge:                ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body5

while.body5.while.end6_crit_edge:                 ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end6

while.end6:                                       ; preds = %while.body5.while.end6_crit_edge, %while.cond3.preheader.while.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_pci_htt_htc_rx_cb(ptr noundef %ce_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ce_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_state, align 4
  tail call void @ath10k_ce_per_engine_service(ptr noundef %1, i32 noundef 4) #9
  tail call fastcc void @ath10k_pci_process_rx_cb(ptr noundef %ce_state, ptr noundef nonnull @ath10k_htc_rx_completion_handler)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_pci_htc_rx_cb(ptr noundef %ce_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ath10k_pci_process_rx_cb(ptr noundef %ce_state, ptr noundef nonnull @ath10k_htc_rx_completion_handler)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_pci_htt_tx_cb(ptr noundef %ce_state) #2 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ce_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #9
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !388
  %call5 = call i32 @ath10k_ce_completed_send_next(ptr noundef %ce_state, ptr noundef nonnull %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %9, i32 noundef %11, i32 noundef 1, i32 noundef 0) #9
  %12 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb, align 4
  call void @ath10k_htt_hif_tx_complete(ptr noundef %1, ptr noundef %13) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end, %while.body.while.cond.backedge_crit_edge
  %call = call i32 @ath10k_ce_completed_send_next(ptr noundef %ce_state, ptr noundef nonnull %skb) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_pci_htt_rx_cb(ptr noundef %ce_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ce_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_state, align 4
  tail call void @ath10k_ce_per_engine_service(ptr noundef %1, i32 noundef 4) #9
  tail call fastcc void @ath10k_pci_process_htt_rx_cb(ptr noundef %ce_state)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_pci_pktlog_rx_cb(ptr noundef %ce_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ath10k_pci_process_rx_cb(ptr noundef %ce_state, ptr noundef nonnull @ath10k_htt_rx_pktlog_completion_handler)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_pci_process_rx_cb(ptr noundef %ce_state, ptr nocapture noundef readonly %callback) unnamed_addr #2 align 64 {
entry:
  %list = alloca %struct.sk_buff_head, align 4
  %transfer_context = alloca ptr, align 4
  %nbytes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ce_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_state, align 4
  %id = getelementptr inbounds %struct.ath10k_ce_pipe, ptr %ce_state, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list) #9
  %4 = getelementptr inbounds i8, ptr %list, i32 12
  %5 = call ptr @memset(ptr %4, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %transfer_context) #9
  %6 = ptrtoint ptr %transfer_context to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %transfer_context, align 4, !annotation !388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nbytes) #9
  %7 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %nbytes, align 4, !annotation !388
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.65, ptr %list, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i, align 4
  %call342 = call i32 @ath10k_ce_completed_recv_next(ptr noundef %ce_state, ptr noundef nonnull %transfer_context, ptr noundef nonnull %nbytes) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342)
  %cmp43 = icmp eq i32 %call342, 0
  br i1 %cmp43, label %while.body.lr.ph, label %entry.while.cond9.preheader_crit_edge

entry.while.cond9.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond9.preheader

while.body.lr.ph:                                 ; preds = %entry
  %dev = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 3
  br label %while.body

while.cond9.preheader:                            ; preds = %while.cond.backedge.while.cond9.preheader_crit_edge, %entry.while.cond9.preheader_crit_edge
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %cmp.i.i44 = icmp eq ptr %12, %list
  %tobool.not.i4145 = icmp eq ptr %12, null
  %tobool.not.i46 = or i1 %cmp.i.i44, %tobool.not.i4145
  br i1 %tobool.not.i46, label %while.cond9.preheader.while.end20_crit_edge, label %while.cond9.preheader.do.body_crit_edge

while.cond9.preheader.do.body_crit_edge:          ; preds = %while.cond9.preheader
  br label %do.body

while.cond9.preheader.while.end20_crit_edge:      ; preds = %while.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end20

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
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @dma_unmap_page_attrs(ptr noundef %24, i32 noundef %26, i32 noundef %add, i32 noundef 2, i32 noundef 0) #9
  %27 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %28)
  %cmp6 = icmp ult i32 %add, %28
  br i1 %cmp6, label %if.then, label %if.end, !prof !389

if.then:                                          ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.66, i32 noundef %28, i32 noundef %add) #9
  call void @__dev_kfree_skb_any(ptr noundef %14, i32 noundef 1) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end, %if.then
  %call3 = call i32 @ath10k_ce_completed_recv_next(ptr noundef %ce_state, ptr noundef nonnull %transfer_context, ptr noundef nonnull %nbytes) #9
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.cond9.preheader_crit_edge

while.cond.backedge.while.cond9.preheader_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond9.preheader

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end:                                           ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = call ptr @skb_put(ptr noundef %14, i32 noundef %28) #9
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 4
  %31 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list, ptr %14, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %14, i32 0, i32 1
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
  %36 = phi ptr [ %55, %do.end.do.body_crit_edge ], [ %12, %while.cond9.preheader.do.body_crit_edge ]
  %37 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %36, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %42, ptr %prev17.i.i, align 4
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %40, ptr %42, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %45 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %do.body.if.then15_crit_edge

do.body.if.then15_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_process_rx_cb, %if.then15)) #9
          to label %do.end [label %if.then15], !srcloc !390

if.then15:                                        ; preds = %lor.lhs.false, %do.body.if.then15_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id, align 4
  %len17 = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 6
  %48 = ptrtoint ptr %len17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len17, align 4
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.67, i32 noundef %47, i32 noundef %49) #9
  br label %do.end

do.end:                                           ; preds = %if.then15, %lor.lhs.false
  %data = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 19
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %len19 = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 6
  %52 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len19, align 4
  call void @ath10k_dbg_dump(ptr noundef %1, i32 noundef 64, ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef %51, i32 noundef %53) #9
  call void %callback(ptr noundef %1, ptr noundef nonnull %36) #9, !callees !396
  %54 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %55, %list
  %tobool.not.i41 = icmp eq ptr %55, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i41
  br i1 %tobool.not.i, label %do.end.while.end20_crit_edge, label %do.end.do.body_crit_edge

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end.while.end20_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end20

while.end20:                                      ; preds = %do.end.while.end20_crit_edge, %while.cond9.preheader.while.end20_crit_edge
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 142
  %arrayidx = getelementptr %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 6, i32 %3
  call fastcc void @ath10k_pci_rx_post_pipe(ptr noundef %arrayidx)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbytes) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %transfer_context) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htc_rx_completion_handler(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htt_hif_tx_complete(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_pci_process_htt_rx_cb(ptr noundef %ce_state) unnamed_addr #2 align 64 {
entry:
  %list = alloca %struct.sk_buff_head, align 4
  %transfer_context = alloca ptr, align 4
  %nbytes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ce_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_state, align 4
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 142
  %id = getelementptr inbounds %struct.ath10k_ce_pipe, ptr %ce_state, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 6, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list) #9
  %6 = getelementptr inbounds i8, ptr %list, i32 12
  %7 = call ptr @memset(ptr %6, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %transfer_context) #9
  %8 = ptrtoint ptr %transfer_context to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %transfer_context, align 4, !annotation !388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nbytes) #9
  %9 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %nbytes, align 4, !annotation !388
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.65, ptr %list, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %12 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %qlen.i, align 4
  %call316 = call i32 @ath10k_ce_completed_recv_next_nolock(ptr noundef %ce_state, ptr noundef nonnull %transfer_context, ptr noundef nonnull %nbytes) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call316)
  %cmp17 = icmp eq i32 %call316, 0
  br i1 %cmp17, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dev = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 3
  br label %while.body

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
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
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
  %23 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %24)
  %cmp5 = icmp ult i32 %add, %24
  br i1 %cmp5, label %if.then, label %if.end, !prof !389

if.then:                                          ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.66, i32 noundef %24, i32 noundef %add) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end, %if.then
  %call3 = call i32 @ath10k_ce_completed_recv_next_nolock(ptr noundef %ce_state, ptr noundef nonnull %transfer_context, ptr noundef nonnull %nbytes) #9
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end:                                           ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3
  %27 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cb.i, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %26, i32 noundef %28, i32 noundef %add, i32 noundef 2) #9
  %29 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nbytes, align 4
  %call8 = call ptr @skb_put(ptr noundef %14, i32 noundef %30) #9
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i, align 4
  %33 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list, ptr %14, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %14, i32 0, i32 1
  %34 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %prev10.i.i.i, align 4
  store volatile ptr %14, ptr %prev.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %14, ptr %32, align 4
  %36 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %37, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %38 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qlen.i, align 4
  %40 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %list, align 4
  %cmp.i.i18 = icmp eq ptr %41, %list
  %tobool.not.i1519 = icmp eq ptr %41, null
  %tobool.not.i20 = or i1 %cmp.i.i18, %tobool.not.i1519
  br i1 %tobool.not.i20, label %while.end.while.end30_crit_edge, label %do.body.lr.ph

while.end.while.end30_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end30

do.body.lr.ph:                                    ; preds = %while.end
  %dev24 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %skb_tailroom.exit13.do.body_crit_edge, %do.body.lr.ph
  %42 = phi ptr [ %41, %do.body.lr.ph ], [ %80, %skb_tailroom.exit13.do.body_crit_edge ]
  %43 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %42, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %48, ptr %prev17.i.i, align 4
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %46, ptr %48, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %51 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %do.body.if.then16_crit_edge

do.body.if.then16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_process_htt_rx_cb, %if.then16)) #9
          to label %do.end [label %if.then16], !srcloc !390

if.then16:                                        ; preds = %lor.lhs.false, %do.body.if.then16_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id, align 4
  %len18 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 6
  %54 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len18, align 4
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.67, i32 noundef %53, i32 noundef %55) #9
  br label %do.end

do.end:                                           ; preds = %if.then16, %lor.lhs.false
  %data = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 19
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data, align 4
  %len20 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 6
  %58 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len20, align 4
  call void @ath10k_dbg_dump(ptr noundef %1, i32 noundef 64, ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef %57, i32 noundef %59) #9
  %60 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len20, align 4
  %call.i = call ptr @skb_pull(ptr noundef nonnull %42, i32 noundef 8) #9
  %call1.i = call zeroext i1 @ath10k_htt_t2h_msg_handler(ptr noundef %1, ptr noundef nonnull %42) #9
  %62 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len20, align 4
  %sub = sub i32 %61, %63
  %call23 = call ptr @skb_push(ptr noundef nonnull %42, i32 noundef %sub) #9
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  %tail.i2 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 16
  %66 = ptrtoint ptr %tail.i2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %tail.i2, align 8
  call void @skb_trim(ptr noundef nonnull %42, i32 noundef 0) #9
  %67 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev24, align 4
  %cb.i3 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 3
  %69 = ptrtoint ptr %cb.i3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cb.i3, align 4
  %71 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len20, align 4
  %data_len.i.i4 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 7
  %73 = ptrtoint ptr %data_len.i.i4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data_len.i.i4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i.not.i5 = icmp eq i32 %74, 0
  br i1 %tobool.i.not.i5, label %cond.false.i11, label %do.end.skb_tailroom.exit13_crit_edge

do.end.skb_tailroom.exit13_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tailroom.exit13

cond.false.i11:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %end.i6 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 17
  %75 = ptrtoint ptr %end.i6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %end.i6, align 4
  %77 = ptrtoint ptr %tail.i2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tail.i2, align 8
  %sub.ptr.lhs.cast.i8 = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast.i9 = ptrtoint ptr %78 to i32
  %sub.ptr.sub.i10 = sub i32 %sub.ptr.lhs.cast.i8, %sub.ptr.rhs.cast.i9
  br label %skb_tailroom.exit13

skb_tailroom.exit13:                              ; preds = %cond.false.i11, %do.end.skb_tailroom.exit13_crit_edge
  %cond.i12 = phi i32 [ %sub.ptr.sub.i10, %cond.false.i11 ], [ 0, %do.end.skb_tailroom.exit13_crit_edge ]
  %add29 = add i32 %cond.i12, %72
  call void @dma_sync_single_for_device(ptr noundef %68, i32 noundef %70, i32 noundef %add29, i32 noundef 2) #9
  %79 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %80, %list
  %tobool.not.i15 = icmp eq ptr %80, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i15
  br i1 %tobool.not.i, label %skb_tailroom.exit13.while.end30_crit_edge, label %skb_tailroom.exit13.do.body_crit_edge

skb_tailroom.exit13.do.body_crit_edge:            ; preds = %skb_tailroom.exit13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

skb_tailroom.exit13.while.end30_crit_edge:        ; preds = %skb_tailroom.exit13
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end30

while.end30:                                      ; preds = %skb_tailroom.exit13.while.end30_crit_edge, %while.end.while.end30_crit_edge
  call void @ath10k_ce_rx_update_write_idx(ptr noundef %5, i32 noundef %39) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbytes) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %transfer_context) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_completed_recv_next_nolock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_rx_update_write_idx(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath10k_htt_t2h_msg_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htt_rx_pktlog_completion_handler(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ahb_init() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %pci_dev) #2 align 64 {
entry:
  %bus_params = alloca %struct.ath10k_bus_params, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bus_params) #9
  %0 = call ptr @memset(ptr %bus_params, i32 0, i32 12)
  %device = getelementptr inbounds %struct.pci_device_id, ptr %pci_dev, i32 0, i32 1
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %device, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %2, label %do.end [
    i32 4524, label %entry.sw.epilog_crit_edge
    i32 60, label %entry.sw.epilog_crit_edge270
    i32 80, label %sw.bb1
    i32 65, label %entry.sw.bb2_crit_edge
    i32 62, label %entry.sw.bb2_crit_edge271
    i32 64, label %sw.bb3
    i32 70, label %sw.bb4
    i32 86, label %sw.bb5
    i32 66, label %sw.bb6
  ]

entry.sw.bb2_crit_edge271:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.epilog_crit_edge270:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge271
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 3599, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge270
  %hw_rev.0 = phi i32 [ 5, %sw.bb6 ], [ 3, %sw.bb5 ], [ 4, %sw.bb4 ], [ 2, %sw.bb3 ], [ 1, %sw.bb2 ], [ 7, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge270 ]
  %pci_ps.0.off0 = phi i1 [ true, %sw.bb6 ], [ false, %sw.bb5 ], [ false, %sw.bb4 ], [ false, %sw.bb3 ], [ true, %sw.bb2 ], [ false, %sw.bb1 ], [ false, %entry.sw.epilog_crit_edge ], [ false, %entry.sw.epilog_crit_edge270 ]
  %is_qca988x.0.off0 = phi i1 [ false, %sw.bb6 ], [ false, %sw.bb5 ], [ false, %sw.bb4 ], [ false, %sw.bb3 ], [ false, %sw.bb2 ], [ false, %sw.bb1 ], [ true, %entry.sw.epilog_crit_edge ], [ true, %entry.sw.epilog_crit_edge270 ]
  %pci_soft_reset.0 = phi ptr [ @ath10k_pci_warm_reset, %sw.bb6 ], [ @ath10k_pci_qca99x0_soft_chip_reset, %sw.bb5 ], [ @ath10k_pci_qca99x0_soft_chip_reset, %sw.bb4 ], [ @ath10k_pci_qca99x0_soft_chip_reset, %sw.bb3 ], [ @ath10k_pci_warm_reset, %sw.bb2 ], [ @ath10k_pci_warm_reset, %sw.bb1 ], [ @ath10k_pci_warm_reset, %entry.sw.epilog_crit_edge ], [ @ath10k_pci_warm_reset, %entry.sw.epilog_crit_edge270 ]
  %pci_hard_reset.0 = phi ptr [ @ath10k_pci_qca6174_chip_reset, %sw.bb6 ], [ @ath10k_pci_qca99x0_chip_reset, %sw.bb5 ], [ @ath10k_pci_qca99x0_chip_reset, %sw.bb4 ], [ @ath10k_pci_qca99x0_chip_reset, %sw.bb3 ], [ @ath10k_pci_qca6174_chip_reset, %sw.bb2 ], [ @ath10k_pci_qca988x_chip_reset, %sw.bb1 ], [ @ath10k_pci_qca988x_chip_reset, %entry.sw.epilog_crit_edge ], [ @ath10k_pci_qca988x_chip_reset, %entry.sw.epilog_crit_edge270 ]
  %targ_cpu_to_ce_addr.0 = phi ptr [ @ath10k_pci_qca6174_targ_cpu_to_ce_addr, %sw.bb6 ], [ @ath10k_pci_qca99x0_targ_cpu_to_ce_addr, %sw.bb5 ], [ @ath10k_pci_qca99x0_targ_cpu_to_ce_addr, %sw.bb4 ], [ @ath10k_pci_qca99x0_targ_cpu_to_ce_addr, %sw.bb3 ], [ @ath10k_pci_qca6174_targ_cpu_to_ce_addr, %sw.bb2 ], [ @ath10k_pci_qca988x_targ_cpu_to_ce_addr, %sw.bb1 ], [ @ath10k_pci_qca988x_targ_cpu_to_ce_addr, %entry.sw.epilog_crit_edge ], [ @ath10k_pci_qca988x_targ_cpu_to_ce_addr, %entry.sw.epilog_crit_edge270 ]
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @ath10k_core_create(i32 noundef 1596, ptr noundef %dev, i32 noundef 0, i32 noundef %hw_rev.0, ptr noundef nonnull @ath10k_pci_hif_ops) #9
  %tobool21.not = icmp eq ptr %call, null
  br i1 %tobool21.not, label %do.end25, label %do.body28

do.end25:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.75) #13
  br label %cleanup

do.body28:                                        ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %do.body28.if.then31_crit_edge

do.body28.if.then31_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

lor.lhs.false:                                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_probe, %if.then31)) #9
          to label %do.end38 [label %if.then31], !srcloc !390

if.then31:                                        ; preds = %lor.lhs.false, %do.body28.if.then31_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %5 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vendor, align 8
  %conv = zext i16 %6 to i32
  %device32 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %7 = ptrtoint ptr %device32 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device32, align 2
  %conv33 = zext i16 %8 to i32
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %9 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %subsystem_vendor, align 4
  %conv34 = zext i16 %10 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %11 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %subsystem_device, align 2
  %conv35 = zext i16 %12 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef nonnull %call, i32 noundef 32, ptr noundef nonnull @.str.79, i32 noundef %conv, i32 noundef %conv33, i32 noundef %conv34, i32 noundef %conv35) #9
  br label %do.end38

do.end38:                                         ; preds = %if.then31, %lor.lhs.false
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 142
  %13 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pdev, ptr %drv_priv.i, align 4
  %dev42 = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 4
  %14 = ptrtoint ptr %dev42 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev42, align 4
  %ar43 = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 8
  %15 = ptrtoint ptr %ar43 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %ar43, align 4
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device, align 4
  %conv45 = trunc i32 %17 to i16
  %dev_id = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 7
  %18 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv45, ptr %dev_id, align 8
  %pci_ps47 = getelementptr inbounds %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 17
  %frombool = zext i1 %pci_ps.0.off0 to i8
  %19 = ptrtoint ptr %pci_ps47 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %pci_ps47, align 1
  %ce = getelementptr inbounds %struct.ath10k, ptr %call, i32 1, i32 0, i32 31, i32 5, i32 7
  %bus_ops = getelementptr inbounds %struct.ath10k, ptr %call, i32 1, i32 4
  %20 = ptrtoint ptr %bus_ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ath10k_pci_bus_ops, ptr %bus_ops, align 4
  %pci_soft_reset48 = getelementptr inbounds %struct.ath10k, ptr %call, i32 1, i32 41, i32 17
  %21 = ptrtoint ptr %pci_soft_reset48 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pci_soft_reset.0, ptr %pci_soft_reset48, align 4
  %pci_hard_reset49 = getelementptr inbounds %struct.ath10k, ptr %call, i32 1, i32 41, i32 17, i32 0, i32 1
  %22 = ptrtoint ptr %pci_hard_reset49 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pci_hard_reset.0, ptr %pci_hard_reset49, align 4
  %targ_cpu_to_ce_addr50 = getelementptr inbounds %struct.ath10k, ptr %call, i32 1, i32 41, i32 17, i32 0, i32 2
  %23 = ptrtoint ptr %targ_cpu_to_ce_addr50 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %targ_cpu_to_ce_addr.0, ptr %targ_cpu_to_ce_addr50, align 4
  %ce_priv = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 131
  %24 = ptrtoint ptr %ce_priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ce, ptr %ce_priv, align 4
  %vendor52 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %25 = ptrtoint ptr %vendor52 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vendor52, align 8
  %conv53 = zext i16 %26 to i32
  %id = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 50
  %27 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv53, ptr %id, align 4
  %device55 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %28 = ptrtoint ptr %device55 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %device55, align 2
  %conv56 = zext i16 %29 to i32
  %device58 = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 50, i32 1
  %30 = ptrtoint ptr %device58 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv56, ptr %device58, align 4
  %subsystem_vendor59 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %31 = ptrtoint ptr %subsystem_vendor59 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %subsystem_vendor59, align 4
  %conv60 = zext i16 %32 to i32
  %subsystem_vendor62 = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 50, i32 2
  %33 = ptrtoint ptr %subsystem_vendor62 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv60, ptr %subsystem_vendor62, align 4
  %subsystem_device63 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %34 = ptrtoint ptr %subsystem_device63 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %subsystem_device63, align 2
  %conv64 = zext i16 %35 to i32
  %subsystem_device66 = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 50, i32 3
  %36 = ptrtoint ptr %subsystem_device66 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv64, ptr %subsystem_device66, align 4
  %ps_timer = getelementptr inbounds %struct.ath10k, ptr %call, i32 1, i32 41, i32 14, i32 0, i32 0, i32 0, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %ps_timer, ptr noundef nonnull @ath10k_pci_ps_timer, i32 noundef 0, ptr noundef nonnull @.str.80, ptr noundef nonnull @ath10k_pci_probe.__key) #9
  %call70 = tail call i32 @ath10k_pci_setup_resource(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.then72

if.then72:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.81, i32 noundef %call70) #9
  br label %err_core_destroy

if.end73:                                         ; preds = %do.end38
  %call74 = tail call fastcc i32 @ath10k_pci_claim(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.82, i32 noundef %call74) #9
  br label %err_free_pipes

if.end77:                                         ; preds = %if.end73
  %call78 = tail call fastcc i32 @ath10k_pci_force_wake(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.then80

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef nonnull %call, ptr noundef nonnull @.str.83, i32 noundef %call78) #9
  br label %err_sleep

if.end81:                                         ; preds = %if.end77
  %hw_values.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 39
  %37 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_values.i, align 4
  %ce_count5.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %ce_count5.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ce_count5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp7.not.i = icmp eq i8 %40, 0
  br i1 %cmp7.not.i, label %if.end81.ath10k_pci_ce_deinit.exit_crit_edge, label %if.end81.for.body.i_crit_edge

if.end81.for.body.i_crit_edge:                    ; preds = %if.end81
  br label %for.body.i

if.end81.ath10k_pci_ce_deinit.exit_crit_edge:     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_ce_deinit.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end81.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end81.for.body.i_crit_edge ]
  tail call void @ath10k_ce_deinit_pipe(ptr noundef %call, i32 noundef %i.08.i) #9
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %41 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ce_count.i, align 4
  %conv.i = zext i8 %44 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ath10k_pci_ce_deinit.exit_crit_edge

for.body.i.ath10k_pci_ce_deinit.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_ce_deinit.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ath10k_pci_ce_deinit.exit:                        ; preds = %for.body.i.ath10k_pci_ce_deinit.exit_crit_edge, %if.end81.ath10k_pci_ce_deinit.exit_crit_edge
  tail call fastcc void @ath10k_pci_irq_disable(ptr noundef %call)
  %napi_dev.i.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 125
  %napi.i.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 126
  tail call void @netif_napi_add(ptr noundef %napi_dev.i.i, ptr noundef %napi.i.i, ptr noundef nonnull @ath10k_pci_napi_poll, i32 noundef 64) #9
  %45 = load i32, ptr @ath10k_pci_irq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.not.i = icmp eq i32 %45, 0
  br i1 %cmp.not.i, label %ath10k_pci_ce_deinit.exit.if.then2.i_crit_edge, label %if.end.i

ath10k_pci_ce_deinit.exit.if.then2.i_crit_edge:   ; preds = %ath10k_pci_ce_deinit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i

if.end.i:                                         ; preds = %ath10k_pci_ce_deinit.exit
  tail call void (ptr, ptr, ...) @ath10k_info(ptr noundef %call, ptr noundef nonnull @.str.135, i32 noundef %45) #9
  %.pr.i = load i32, ptr @ath10k_pci_irq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp1.not.i = icmp eq i32 %.pr.i, 1
  br i1 %cmp1.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.end.i.if.then2.i_crit_edge

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i.if.then2.i_crit_edge, %ath10k_pci_ce_deinit.exit.if.then2.i_crit_edge
  %oper_irq_mode.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 20
  %46 = ptrtoint ptr %oper_irq_mode.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %oper_irq_mode.i, align 4
  %47 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %drv_priv.i, align 4
  %call3.i = tail call i32 @pci_enable_msi(ptr noundef %48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then2.i.ath10k_pci_init_irq.exit_crit_edge, label %if.then2.i.if.end7.i_crit_edge

if.then2.i.if.end7.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then2.i.ath10k_pci_init_irq.exit_crit_edge:    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_init_irq.exit

if.end7.i:                                        ; preds = %if.then2.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %oper_irq_mode8.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 20
  %49 = ptrtoint ptr %oper_irq_mode8.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %oper_irq_mode8.i, align 4
  %regs.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 37
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %soc_core_base_address.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %soc_core_base_address.i, align 4
  %add.i = add i32 %53, 8
  %pcie_intr_fw_mask.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %51, i32 0, i32 25
  %54 = ptrtoint ptr %pcie_intr_fw_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pcie_intr_fw_mask.i, align 4
  %pcie_intr_ce_mask_all.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %51, i32 0, i32 26
  %56 = ptrtoint ptr %pcie_intr_ce_mask_all.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pcie_intr_ce_mask_all.i, align 4
  %or.i = or i32 %57, %55
  %58 = ptrtoint ptr %ce_priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ce_priv, align 4
  %bus_ops.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus_ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write32.i.i, align 4
  tail call void %63(ptr noundef %call, i32 noundef %add.i, i32 noundef %or.i) #9
  br label %ath10k_pci_init_irq.exit

ath10k_pci_init_irq.exit:                         ; preds = %if.end7.i, %if.then2.i.ath10k_pci_init_irq.exit_crit_edge
  %oper_irq_mode.i218 = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 20
  %64 = ptrtoint ptr %oper_irq_mode.i218 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %oper_irq_mode.i218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp.i219 = icmp eq i32 %65, 2
  %.str.136..str.137.i = select i1 %cmp.i219, ptr @.str.136, ptr @.str.137
  %66 = load i32, ptr @ath10k_pci_irq_mode, align 4
  %67 = load i32, ptr @ath10k_pci_reset_mode, align 4
  tail call void (ptr, ptr, ...) @ath10k_info(ptr noundef %call, ptr noundef nonnull @.str.85, ptr noundef nonnull %.str.136..str.137.i, i32 noundef %65, i32 noundef %66, i32 noundef %67) #9
  %68 = ptrtoint ptr %oper_irq_mode.i218 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %oper_irq_mode.i218, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %69, label %ath10k_pci_init_irq.exit.if.then89_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

ath10k_pci_init_irq.exit.if.then89_crit_edge:     ; preds = %ath10k_pci_init_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then89

sw.bb.i:                                          ; preds = %ath10k_pci_init_irq.exit
  %71 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %drv_priv.i, align 4
  %irq.i.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 46
  %73 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq.i.i, align 4
  %call.i.i.i = tail call i32 @request_threaded_irq(i32 noundef %74, ptr noundef nonnull @ath10k_pci_interrupt_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.69, ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.if.end90_crit_edge, label %if.then.i.i

sw.bb.i.if.end90_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %drv_priv.i, align 4
  %irq3.i.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 46
  %77 = ptrtoint ptr %irq3.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq3.i.i, align 4
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %call, ptr noundef nonnull @.str.138, i32 noundef %78, i32 noundef %call.i.i.i) #9
  br label %if.then89

sw.bb2.i:                                         ; preds = %ath10k_pci_init_irq.exit
  %79 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %drv_priv.i, align 4
  %irq.i7.i = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 46
  %81 = ptrtoint ptr %irq.i7.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %irq.i7.i, align 4
  %call.i.i8.i = tail call i32 @request_threaded_irq(i32 noundef %82, ptr noundef nonnull @ath10k_pci_interrupt_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.69, ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8.i)
  %tobool.not.i9.i = icmp eq i32 %call.i.i8.i, 0
  br i1 %tobool.not.i9.i, label %sw.bb2.i.if.end90_crit_edge, label %if.then.i11.i

sw.bb2.i.if.end90_crit_edge:                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then.i11.i:                                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %drv_priv.i, align 4
  %irq3.i10.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 46
  %85 = ptrtoint ptr %irq3.i10.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %irq3.i10.i, align 4
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %call, ptr noundef nonnull @.str.140, i32 noundef %86, i32 noundef %call.i.i8.i) #9
  br label %if.then89

if.then89:                                        ; preds = %if.then.i11.i, %if.then.i.i, %ath10k_pci_init_irq.exit.if.then89_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i8.i, %if.then.i11.i ], [ %call.i.i.i, %if.then.i.i ], [ -22, %ath10k_pci_init_irq.exit.if.then89_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %call, ptr noundef nonnull @.str.86, i32 noundef %retval.0.i.ph) #9
  br label %err_deinit_irq

if.end90:                                         ; preds = %sw.bb2.i.if.end90_crit_edge, %sw.bb.i.if.end90_crit_edge
  %dev_type = getelementptr inbounds %struct.ath10k_bus_params, ptr %bus_params, i32 0, i32 1
  %87 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %dev_type, align 4
  %link_can_suspend = getelementptr inbounds %struct.ath10k_bus_params, ptr %bus_params, i32 0, i32 2
  %88 = ptrtoint ptr %link_can_suspend to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %link_can_suspend, align 4
  br i1 %is_qca988x.0.off0, label %if.then92, label %if.end90.if.end104_crit_edge

if.end90.if.end104_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then92:                                        ; preds = %if.end90
  %regs = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 37
  %89 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs, align 4
  %soc_chip_id_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %90, i32 0, i32 19
  %91 = ptrtoint ptr %soc_chip_id_address to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %soc_chip_id_address, align 4
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %90, align 4
  %add.i223 = add i32 %94, %92
  %95 = ptrtoint ptr %ce_priv to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ce_priv, align 4
  %bus_ops.i.i225 = getelementptr inbounds %struct.ath10k_ce, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %bus_ops.i.i225 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bus_ops.i.i225, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %call1.i.i = tail call i32 %100(ptr noundef %call, i32 noundef %add.i223) #9
  %101 = ptrtoint ptr %bus_params to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call1.i.i, ptr %bus_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp.not = icmp eq i32 %call1.i.i, -1
  br i1 %cmp.not, label %if.then92.if.end104_crit_edge, label %if.then96

if.then92.if.end104_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then96:                                        ; preds = %if.then92
  %102 = ptrtoint ptr %device55 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %device55, align 2
  %conv98 = zext i16 %103 to i32
  %and.i = lshr i32 %call1.i.i, 8
  %shr.i = and i32 %and.i, 15
  br label %for.body.i226

for.body.i226:                                    ; preds = %for.inc.i.for.body.i226_crit_edge, %if.then96
  %cmp12.i = phi i1 [ true, %if.then96 ], [ %cmp.i229, %for.inc.i.for.body.i226_crit_edge ]
  %i.010.i = phi i32 [ 0, %if.then96 ], [ %inc.i228, %for.inc.i.for.body.i226_crit_edge ]
  %arrayidx.i = getelementptr [18 x %struct.ath10k_pci_supp_chip], ptr @ath10k_pci_supp_chips, i32 0, i32 %i.010.i
  %104 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %conv98)
  %cmp2.i = icmp eq i32 %105, %conv98
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i226.for.inc.i_crit_edge

for.body.i226.for.inc.i_crit_edge:                ; preds = %for.body.i226
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i226
  %rev_id3.i = getelementptr [18 x %struct.ath10k_pci_supp_chip], ptr @ath10k_pci_supp_chips, i32 0, i32 %i.010.i, i32 1
  %106 = ptrtoint ptr %rev_id3.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rev_id3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %shr.i)
  %cmp4.i227 = icmp eq i32 %107, %shr.i
  br i1 %cmp4.i227, label %land.lhs.true.i.ath10k_pci_chip_is_supported.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i.ath10k_pci_chip_is_supported.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_chip_is_supported.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i226.for.inc.i_crit_edge
  %inc.i228 = add nuw nsw i32 %i.010.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %i.010.i)
  %cmp.i229 = icmp ult i32 %i.010.i, 17
  %exitcond.not.i = icmp eq i32 %inc.i228, 18
  br i1 %exitcond.not.i, label %for.inc.i.ath10k_pci_chip_is_supported.exit_crit_edge, label %for.inc.i.for.body.i226_crit_edge

for.inc.i.for.body.i226_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i226

for.inc.i.ath10k_pci_chip_is_supported.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_chip_is_supported.exit

ath10k_pci_chip_is_supported.exit:                ; preds = %for.inc.i.ath10k_pci_chip_is_supported.exit_crit_edge, %land.lhs.true.i.ath10k_pci_chip_is_supported.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i229, %for.inc.i.ath10k_pci_chip_is_supported.exit_crit_edge ], [ %cmp12.i, %land.lhs.true.i.ath10k_pci_chip_is_supported.exit_crit_edge ]
  br i1 %cmp.lcssa.i, label %ath10k_pci_chip_is_supported.exit.if.end104_crit_edge, label %ath10k_pci_chip_is_supported.exit.err_unsupported_crit_edge

ath10k_pci_chip_is_supported.exit.err_unsupported_crit_edge: ; preds = %ath10k_pci_chip_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unsupported

ath10k_pci_chip_is_supported.exit.if.end104_crit_edge: ; preds = %ath10k_pci_chip_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.end104:                                        ; preds = %ath10k_pci_chip_is_supported.exit.if.end104_crit_edge, %if.then92.if.end104_crit_edge, %if.end90.if.end104_crit_edge
  %108 = ptrtoint ptr %pci_hard_reset49 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pci_hard_reset49, align 4
  %tobool.not.i = icmp eq ptr %109, null
  br i1 %tobool.not.i, label %ath10k_pci_chip_reset.exit.thread, label %ath10k_pci_chip_reset.exit, !prof !389

ath10k_pci_chip_reset.exit.thread:                ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2808, i32 noundef 9, ptr noundef null) #9
  br label %if.then107

ath10k_pci_chip_reset.exit:                       ; preds = %if.end104
  %call25.i = tail call i32 %109(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool106.not = icmp eq i32 %call25.i, 0
  br i1 %tobool106.not, label %if.end108, label %ath10k_pci_chip_reset.exit.if.then107_crit_edge

ath10k_pci_chip_reset.exit.if.then107_crit_edge:  ; preds = %ath10k_pci_chip_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then107

if.then107:                                       ; preds = %ath10k_pci_chip_reset.exit.if.then107_crit_edge, %ath10k_pci_chip_reset.exit.thread
  %retval.0.i230269 = phi i32 [ -524, %ath10k_pci_chip_reset.exit.thread ], [ %call25.i, %ath10k_pci_chip_reset.exit.if.then107_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %call, ptr noundef nonnull @.str.87, i32 noundef %retval.0.i230269) #9
  br label %err_free_irq

if.end108:                                        ; preds = %ath10k_pci_chip_reset.exit
  %regs109 = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 37
  %110 = ptrtoint ptr %regs109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs109, align 4
  %soc_chip_id_address110 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %111, i32 0, i32 19
  %112 = ptrtoint ptr %soc_chip_id_address110 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %soc_chip_id_address110, align 4
  %114 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %111, align 4
  %add.i232 = add i32 %115, %113
  %116 = ptrtoint ptr %ce_priv to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ce_priv, align 4
  %bus_ops.i.i234 = getelementptr inbounds %struct.ath10k_ce, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %bus_ops.i.i234 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bus_ops.i.i234, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %call1.i.i235 = tail call i32 %121(ptr noundef %call, i32 noundef %add.i232) #9
  %122 = ptrtoint ptr %bus_params to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call1.i.i235, ptr %bus_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i235)
  %cmp114 = icmp eq i32 %call1.i.i235, -1
  br i1 %cmp114, label %if.end108.err_unsupported_crit_edge, label %if.end117

if.end108.err_unsupported_crit_edge:              ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unsupported

if.end117:                                        ; preds = %if.end108
  %123 = ptrtoint ptr %device55 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %device55, align 2
  %conv119 = zext i16 %124 to i32
  %and.i236 = lshr i32 %call1.i.i235, 8
  %shr.i237 = and i32 %and.i236, 15
  br label %for.body.i242

for.body.i242:                                    ; preds = %for.inc.i249.for.body.i242_crit_edge, %if.end117
  %cmp12.i238 = phi i1 [ true, %if.end117 ], [ %cmp.i247, %for.inc.i249.for.body.i242_crit_edge ]
  %i.010.i239 = phi i32 [ 0, %if.end117 ], [ %inc.i246, %for.inc.i249.for.body.i242_crit_edge ]
  %arrayidx.i240 = getelementptr [18 x %struct.ath10k_pci_supp_chip], ptr @ath10k_pci_supp_chips, i32 0, i32 %i.010.i239
  %125 = ptrtoint ptr %arrayidx.i240 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.i240, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %conv119)
  %cmp2.i241 = icmp eq i32 %126, %conv119
  br i1 %cmp2.i241, label %land.lhs.true.i245, label %for.body.i242.for.inc.i249_crit_edge

for.body.i242.for.inc.i249_crit_edge:             ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i249

land.lhs.true.i245:                               ; preds = %for.body.i242
  %rev_id3.i243 = getelementptr [18 x %struct.ath10k_pci_supp_chip], ptr @ath10k_pci_supp_chips, i32 0, i32 %i.010.i239, i32 1
  %127 = ptrtoint ptr %rev_id3.i243 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rev_id3.i243, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %shr.i237)
  %cmp4.i244 = icmp eq i32 %128, %shr.i237
  br i1 %cmp4.i244, label %land.lhs.true.i245.ath10k_pci_chip_is_supported.exit251_crit_edge, label %land.lhs.true.i245.for.inc.i249_crit_edge

land.lhs.true.i245.for.inc.i249_crit_edge:        ; preds = %land.lhs.true.i245
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i249

land.lhs.true.i245.ath10k_pci_chip_is_supported.exit251_crit_edge: ; preds = %land.lhs.true.i245
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_chip_is_supported.exit251

for.inc.i249:                                     ; preds = %land.lhs.true.i245.for.inc.i249_crit_edge, %for.body.i242.for.inc.i249_crit_edge
  %inc.i246 = add nuw nsw i32 %i.010.i239, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %i.010.i239)
  %cmp.i247 = icmp ult i32 %i.010.i239, 17
  %exitcond.not.i248 = icmp eq i32 %inc.i246, 18
  br i1 %exitcond.not.i248, label %for.inc.i249.ath10k_pci_chip_is_supported.exit251_crit_edge, label %for.inc.i249.for.body.i242_crit_edge

for.inc.i249.for.body.i242_crit_edge:             ; preds = %for.inc.i249
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i242

for.inc.i249.ath10k_pci_chip_is_supported.exit251_crit_edge: ; preds = %for.inc.i249
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_chip_is_supported.exit251

ath10k_pci_chip_is_supported.exit251:             ; preds = %for.inc.i249.ath10k_pci_chip_is_supported.exit251_crit_edge, %land.lhs.true.i245.ath10k_pci_chip_is_supported.exit251_crit_edge
  %cmp.lcssa.i250 = phi i1 [ %cmp.i247, %for.inc.i249.ath10k_pci_chip_is_supported.exit251_crit_edge ], [ %cmp12.i238, %land.lhs.true.i245.ath10k_pci_chip_is_supported.exit251_crit_edge ]
  br i1 %cmp.lcssa.i250, label %if.end123, label %ath10k_pci_chip_is_supported.exit251.err_unsupported_crit_edge

ath10k_pci_chip_is_supported.exit251.err_unsupported_crit_edge: ; preds = %ath10k_pci_chip_is_supported.exit251
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unsupported

if.end123:                                        ; preds = %ath10k_pci_chip_is_supported.exit251
  %call124 = call i32 @ath10k_core_register(ptr noundef %call, ptr noundef nonnull %bus_params) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end123.cleanup_crit_edge, label %if.then126

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then126:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %call, ptr noundef nonnull @.str.88, i32 noundef %call124) #9
  br label %err_free_irq

err_unsupported:                                  ; preds = %ath10k_pci_chip_is_supported.exit251.err_unsupported_crit_edge, %if.end108.err_unsupported_crit_edge, %ath10k_pci_chip_is_supported.exit.err_unsupported_crit_edge
  %129 = ptrtoint ptr %device55 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %device55, align 2
  %conv129 = zext i16 %130 to i32
  %131 = ptrtoint ptr %bus_params to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %bus_params, align 4
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %call, ptr noundef nonnull @.str.89, i32 noundef %conv129, i32 noundef %132) #9
  br label %err_free_irq

err_free_irq:                                     ; preds = %err_unsupported, %if.then126, %if.then107
  %ret.1 = phi i32 [ %retval.0.i230269, %if.then107 ], [ -19, %err_unsupported ], [ %call124, %if.then126 ]
  %133 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %drv_priv.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 46
  %135 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %irq.i, align 4
  %call1.i = call ptr @free_irq(i32 noundef %136, ptr noundef %call) #9
  br label %err_deinit_irq

err_deinit_irq:                                   ; preds = %err_free_irq, %if.then89
  %ret.2 = phi i32 [ %retval.0.i.ph, %if.then89 ], [ %ret.1, %err_free_irq ]
  call void @ath10k_pci_release_resource(ptr noundef %call)
  br label %err_sleep

err_sleep:                                        ; preds = %err_deinit_irq, %if.then80
  %ret.3 = phi i32 [ %call78, %if.then80 ], [ %ret.2, %err_deinit_irq ]
  call fastcc void @ath10k_pci_sleep_sync(ptr noundef %call)
  %137 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %drv_priv.i, align 4
  %mem.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 12
  %139 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mem.i, align 4
  call void @pci_iounmap(ptr noundef %138, ptr noundef %140) #9
  call void @pci_release_region(ptr noundef %138, i32 noundef 0) #9
  call void @pci_clear_master(ptr noundef %138) #9
  call void @pci_disable_device(ptr noundef %138) #9
  br label %err_free_pipes

err_free_pipes:                                   ; preds = %err_sleep, %if.then76
  %ret.4 = phi i32 [ %call74, %if.then76 ], [ %ret.3, %err_sleep ]
  %hw_values.i254 = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 39
  %141 = ptrtoint ptr %hw_values.i254 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hw_values.i254, align 4
  %ce_count5.i255 = getelementptr inbounds %struct.ath10k_hw_values, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %ce_count5.i255 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %ce_count5.i255, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp7.not.i256 = icmp eq i8 %144, 0
  br i1 %cmp7.not.i256, label %err_free_pipes.err_core_destroy_crit_edge, label %err_free_pipes.for.body.i262_crit_edge

err_free_pipes.for.body.i262_crit_edge:           ; preds = %err_free_pipes
  br label %for.body.i262

err_free_pipes.err_core_destroy_crit_edge:        ; preds = %err_free_pipes
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_core_destroy

for.body.i262:                                    ; preds = %for.body.i262.for.body.i262_crit_edge, %err_free_pipes.for.body.i262_crit_edge
  %i.08.i257 = phi i32 [ %inc.i258, %for.body.i262.for.body.i262_crit_edge ], [ 0, %err_free_pipes.for.body.i262_crit_edge ]
  call void @ath10k_ce_free_pipe(ptr noundef %call, i32 noundef %i.08.i257) #9
  %inc.i258 = add nuw nsw i32 %i.08.i257, 1
  %145 = ptrtoint ptr %hw_values.i254 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hw_values.i254, align 4
  %ce_count.i259 = getelementptr inbounds %struct.ath10k_hw_values, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %ce_count.i259 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %ce_count.i259, align 4
  %conv.i260 = zext i8 %148 to i32
  %cmp.i261 = icmp ult i32 %inc.i258, %conv.i260
  br i1 %cmp.i261, label %for.body.i262.for.body.i262_crit_edge, label %for.body.i262.err_core_destroy_crit_edge

for.body.i262.err_core_destroy_crit_edge:         ; preds = %for.body.i262
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_core_destroy

for.body.i262.for.body.i262_crit_edge:            ; preds = %for.body.i262
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i262

err_core_destroy:                                 ; preds = %for.body.i262.err_core_destroy_crit_edge, %err_free_pipes.err_core_destroy_crit_edge, %if.then72
  %ret.5 = phi i32 [ %call70, %if.then72 ], [ %ret.4, %err_free_pipes.err_core_destroy_crit_edge ], [ %ret.4, %for.body.i262.err_core_destroy_crit_edge ]
  call void @ath10k_core_destroy(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %err_core_destroy, %if.end123.cleanup_crit_edge, %do.end25, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ %ret.5, %err_core_destroy ], [ -12, %do.end25 ], [ 0, %if.end123.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bus_params) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_pci_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_remove, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.141) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %do.end
  tail call void @ath10k_core_unregister(ptr noundef nonnull %1) #9
  %drv_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 142
  %3 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_priv.i.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i, align 4
  %call1.i = tail call ptr @free_irq(i32 noundef %6, ptr noundef nonnull %1) #9
  %oper_irq_mode.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 143, i32 20
  %7 = ptrtoint ptr %oper_irq_mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oper_irq_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cond.i = icmp eq i32 %8, 1
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %regs.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 37
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %soc_core_base_address.i.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %soc_core_base_address.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %soc_core_base_address.i.i, align 4
  %add.i.i = add i32 %12, 8
  %ce_priv.i.i.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 131
  %13 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bus_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus_ops.i.i.i, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %18(ptr noundef nonnull %1, i32 noundef %add.i.i, i32 noundef 0) #9
  br label %ath10k_pci_deinit_irq.exit

sw.default.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drv_priv.i.i, align 4
  tail call void @pci_disable_msi(ptr noundef %20) #9
  br label %ath10k_pci_deinit_irq.exit

ath10k_pci_deinit_irq.exit:                       ; preds = %sw.default.i, %sw.bb.i
  tail call void @ath10k_pci_release_resource(ptr noundef nonnull %1)
  tail call fastcc void @ath10k_pci_sleep_sync(ptr noundef nonnull %1)
  %21 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drv_priv.i.i, align 4
  %mem.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 143, i32 12
  %23 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mem.i, align 4
  tail call void @pci_iounmap(ptr noundef %22, ptr noundef %24) #9
  tail call void @pci_release_region(ptr noundef %22, i32 noundef 0) #9
  tail call void @pci_clear_master(ptr noundef %22) #9
  tail call void @pci_disable_device(ptr noundef %22) #9
  tail call void @ath10k_core_destroy(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %ath10k_pci_deinit_irq.exit, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_warm_reset(ptr noundef %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_warm_reset, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.90) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #9
  %fw_warm_reset_counter = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 120, i32 2
  %1 = ptrtoint ptr %fw_warm_reset_counter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_warm_reset_counter, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %fw_warm_reset_counter, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #9
  tail call fastcc void @ath10k_pci_irq_disable(ptr noundef %ar)
  %regs.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %3 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %ce_priv.i.i.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %7 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %bus_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus_ops.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call1.i.i.i = tail call i32 %12(ptr noundef %ar, i32 noundef %6) #9
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %soc_reset_control_si0_rst_mask.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %soc_reset_control_si0_rst_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %soc_reset_control_si0_rst_mask.i, align 4
  %or.i = or i32 %16, %call1.i.i.i
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  %19 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i16.i = getelementptr inbounds %struct.ath10k_ce, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %bus_ops.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus_ops.i.i16.i, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %24(ptr noundef %ar, i32 noundef %18, i32 noundef %or.i) #9
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i19.i = getelementptr inbounds %struct.ath10k_ce, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %bus_ops.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus_ops.i.i19.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call1.i.i20.i = tail call i32 %34(ptr noundef %ar, i32 noundef %28) #9
  tail call void @msleep(i32 noundef 10) #9
  %35 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %39 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i23.i = getelementptr inbounds %struct.ath10k_ce, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %bus_ops.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus_ops.i.i23.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %call1.i.i24.i = tail call i32 %44(ptr noundef %ar, i32 noundef %38) #9
  %45 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i, align 4
  %soc_reset_control_si0_rst_mask4.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %soc_reset_control_si0_rst_mask4.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %soc_reset_control_si0_rst_mask4.i, align 4
  %neg.i = xor i32 %48, -1
  %and.i = and i32 %call1.i.i24.i, %neg.i
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %46, align 4
  %51 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i27.i = getelementptr inbounds %struct.ath10k_ce, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %bus_ops.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus_ops.i.i27.i, align 4
  %write32.i.i28.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %write32.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write32.i.i28.i, align 4
  tail call void %56(ptr noundef %ar, i32 noundef %50, i32 noundef %and.i) #9
  %57 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %61 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i31.i = getelementptr inbounds %struct.ath10k_ce, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %bus_ops.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus_ops.i.i31.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %call1.i.i32.i = tail call i32 %66(ptr noundef %ar, i32 noundef %60) #9
  tail call void @msleep(i32 noundef 10) #9
  %67 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i.i, align 4
  %fw_indicator_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %68, i32 0, i32 21
  %69 = ptrtoint ptr %fw_indicator_address.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fw_indicator_address.i, align 4
  %71 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bus_ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write32.i.i, align 4
  tail call void %76(ptr noundef %ar, i32 noundef %70, i32 noundef 0) #9
  %77 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %81 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i.i35 = getelementptr inbounds %struct.ath10k_ce, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %bus_ops.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bus_ops.i.i.i35, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %call1.i.i.i36 = tail call i32 %86(ptr noundef %ar, i32 noundef %80) #9
  %or.i37 = or i32 %call1.i.i.i36, 64
  %87 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %91 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i6.i = getelementptr inbounds %struct.ath10k_ce, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %bus_ops.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bus_ops.i.i6.i, align 4
  %write32.i.i.i38 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %write32.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write32.i.i.i38, align 4
  tail call void %96(ptr noundef %ar, i32 noundef %90, i32 noundef %or.i37) #9
  %hw_values.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %97 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw_values.i, align 4
  %ce_count15.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %ce_count15.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ce_count15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp17.not.i = icmp eq i8 %100, 0
  br i1 %cmp17.not.i, label %do.end.ath10k_pci_init_pipes.exit_crit_edge, label %for.body.lr.ph.i

do.end.ath10k_pci_init_pipes.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_init_pipes.exit

for.body.lr.ph.i:                                 ; preds = %do.end
  %attr.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %101 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %attr.i, align 4
  %arrayidx.i = getelementptr %struct.ce_attr, ptr %102, i32 %i.018.i
  %call2.i = tail call i32 @ath10k_ce_init_pipe(ptr noundef %ar, i32 noundef %i.018.i, ptr noundef %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.23, i32 noundef %i.018.i, i32 noundef %call2.i) #9
  br label %ath10k_pci_init_pipes.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %103 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ce_count.i, align 4
  %conv.i = zext i8 %106 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ath10k_pci_init_pipes.exit_crit_edge

for.inc.i.ath10k_pci_init_pipes.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_init_pipes.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ath10k_pci_init_pipes.exit:                       ; preds = %for.inc.i.ath10k_pci_init_pipes.exit_crit_edge, %if.then.i, %do.end.ath10k_pci_init_pipes.exit_crit_edge
  %call3 = tail call i32 @ath10k_pci_wait_for_target_init(ptr noundef %ar)
  %107 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  %add.i.i = add i32 %110, 80
  %111 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i.i41 = getelementptr inbounds %struct.ath10k_ce, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %bus_ops.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bus_ops.i.i.i41, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %call1.i.i.i42 = tail call i32 %116(ptr noundef %ar, i32 noundef %add.i.i) #9
  %and.i43 = and i32 %call1.i.i.i42, -5
  %117 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %118, align 4
  %add.i3.i = add i32 %120, 80
  %121 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i5.i = getelementptr inbounds %struct.ath10k_ce, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %bus_ops.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bus_ops.i.i5.i, align 4
  %write32.i.i.i44 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %write32.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write32.i.i.i44, align 4
  tail call void %126(ptr noundef %ar, i32 noundef %add.i3.i, i32 noundef %and.i43) #9
  %127 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs.i.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 4
  %131 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i.i47 = getelementptr inbounds %struct.ath10k_ce, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %bus_ops.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bus_ops.i.i.i47, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %call1.i.i.i48 = tail call i32 %136(ptr noundef %ar, i32 noundef %130) #9
  %137 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs.i.i, align 4
  %soc_reset_control_ce_rst_mask.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %138, i32 0, i32 18
  %139 = ptrtoint ptr %soc_reset_control_ce_rst_mask.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %soc_reset_control_ce_rst_mask.i, align 4
  %or.i49 = or i32 %140, %call1.i.i.i48
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %138, align 4
  %143 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i10.i = getelementptr inbounds %struct.ath10k_ce, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %bus_ops.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bus_ops.i.i10.i, align 4
  %write32.i.i.i50 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %write32.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write32.i.i.i50, align 4
  tail call void %148(ptr noundef %ar, i32 noundef %142, i32 noundef %or.i49) #9
  tail call void @msleep(i32 noundef 10) #9
  %149 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regs.i.i, align 4
  %soc_reset_control_ce_rst_mask2.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %150, i32 0, i32 18
  %151 = ptrtoint ptr %soc_reset_control_ce_rst_mask2.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %soc_reset_control_ce_rst_mask2.i, align 4
  %neg.i51 = xor i32 %152, -1
  %and.i52 = and i32 %call1.i.i.i48, %neg.i51
  %153 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %150, align 4
  %155 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i13.i = getelementptr inbounds %struct.ath10k_ce, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %bus_ops.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %bus_ops.i.i13.i, align 4
  %write32.i.i14.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %write32.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write32.i.i14.i, align 4
  tail call void %160(ptr noundef %ar, i32 noundef %154, i32 noundef %and.i52) #9
  %161 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs.i.i, align 4
  %fw_indicator_address.i54 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %162, i32 0, i32 21
  %163 = ptrtoint ptr %fw_indicator_address.i54 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %fw_indicator_address.i54, align 4
  %165 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i56 = getelementptr inbounds %struct.ath10k_ce, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %bus_ops.i.i56 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bus_ops.i.i56, align 4
  %write32.i.i57 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %write32.i.i57 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write32.i.i57, align 4
  tail call void %170(ptr noundef %ar, i32 noundef %164, i32 noundef 0) #9
  %171 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs.i.i, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %172, align 4
  %175 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i.i58 = getelementptr inbounds %struct.ath10k_ce, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %bus_ops.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %bus_ops.i.i.i58, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 4
  %call1.i.i.i59 = tail call i32 %180(ptr noundef %ar, i32 noundef %174) #9
  %or.i60 = or i32 %call1.i.i.i59, 64
  %181 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs.i.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %182, align 4
  %185 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i6.i61 = getelementptr inbounds %struct.ath10k_ce, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %bus_ops.i.i6.i61 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bus_ops.i.i6.i61, align 4
  %write32.i.i.i62 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %write32.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %write32.i.i.i62, align 4
  tail call void %190(ptr noundef %ar, i32 noundef %184, i32 noundef %or.i60) #9
  %191 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hw_values.i, align 4
  %ce_count15.i64 = getelementptr inbounds %struct.ath10k_hw_values, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %ce_count15.i64 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %ce_count15.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %cmp17.not.i65 = icmp eq i8 %194, 0
  br i1 %cmp17.not.i65, label %ath10k_pci_init_pipes.exit.ath10k_pci_init_pipes.exit80_crit_edge, label %for.body.lr.ph.i67

ath10k_pci_init_pipes.exit.ath10k_pci_init_pipes.exit80_crit_edge: ; preds = %ath10k_pci_init_pipes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_init_pipes.exit80

for.body.lr.ph.i67:                               ; preds = %ath10k_pci_init_pipes.exit
  %attr.i66 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 0, i32 3
  br label %for.body.i72

for.body.i72:                                     ; preds = %for.inc.i78.for.body.i72_crit_edge, %for.body.lr.ph.i67
  %i.018.i68 = phi i32 [ 0, %for.body.lr.ph.i67 ], [ %inc.i74, %for.inc.i78.for.body.i72_crit_edge ]
  %195 = ptrtoint ptr %attr.i66 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %attr.i66, align 4
  %arrayidx.i69 = getelementptr %struct.ce_attr, ptr %196, i32 %i.018.i68
  %call2.i70 = tail call i32 @ath10k_ce_init_pipe(ptr noundef %ar, i32 noundef %i.018.i68, ptr noundef %arrayidx.i69) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i70)
  %tobool.not.i71 = icmp eq i32 %call2.i70, 0
  br i1 %tobool.not.i71, label %for.inc.i78, label %if.then.i73

if.then.i73:                                      ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.23, i32 noundef %i.018.i68, i32 noundef %call2.i70) #9
  br label %ath10k_pci_init_pipes.exit80

for.inc.i78:                                      ; preds = %for.body.i72
  %inc.i74 = add nuw nsw i32 %i.018.i68, 1
  %197 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i75 = getelementptr inbounds %struct.ath10k_hw_values, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %ce_count.i75 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %ce_count.i75, align 4
  %conv.i76 = zext i8 %200 to i32
  %cmp.i77 = icmp ult i32 %inc.i74, %conv.i76
  br i1 %cmp.i77, label %for.inc.i78.for.body.i72_crit_edge, label %for.inc.i78.ath10k_pci_init_pipes.exit80_crit_edge

for.inc.i78.ath10k_pci_init_pipes.exit80_crit_edge: ; preds = %for.inc.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_init_pipes.exit80

for.inc.i78.for.body.i72_crit_edge:               ; preds = %for.inc.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i72

ath10k_pci_init_pipes.exit80:                     ; preds = %for.inc.i78.ath10k_pci_init_pipes.exit80_crit_edge, %if.then.i73, %ath10k_pci_init_pipes.exit.ath10k_pci_init_pipes.exit80_crit_edge
  %call5 = tail call i32 @ath10k_pci_wait_for_target_init(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body9, label %if.then7

if.then7:                                         ; preds = %ath10k_pci_init_pipes.exit80
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.91, i32 noundef %call5) #9
  br label %cleanup

do.body9:                                         ; preds = %ath10k_pci_init_pipes.exit80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %201 = load i32, ptr @ath10k_debug_mask, align 4
  %and10 = and i32 %201, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %do.body9.if.then14_crit_edge

do.body9.if.then14_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

lor.lhs.false12:                                  ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_warm_reset, %if.then14)) #9
          to label %cleanup [label %if.then14], !srcloc !390

if.then14:                                        ; preds = %lor.lhs.false12, %do.body9.if.then14_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.92) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %lor.lhs.false12, %if.then7
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_qca988x_chip_reset(ptr noundef %ar) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_qca988x_chip_reset, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.93) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %hw_values.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %attr.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 0, i32 3
  %call1 = tail call i32 @ath10k_pci_warm_reset(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.94, i32 noundef 1, i32 noundef 3, i32 noundef %call1) #9
  br label %for.inc

if.end4:                                          ; preds = %do.end
  %1 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_values.i, align 4
  %ce_count15.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ce_count15.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ce_count15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp17.not.i = icmp eq i8 %4, 0
  br i1 %cmp17.not.i, label %if.end4.if.end8_crit_edge, label %if.end4.for.body.i_crit_edge

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end4.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attr.i, align 4
  %arrayidx.i = getelementptr %struct.ce_attr, ptr %6, i32 %i.018.i
  %call2.i = tail call i32 @ath10k_ce_init_pipe(ptr noundef %ar, i32 noundef %i.018.i, ptr noundef %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.then7

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %7 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ce_count.i, align 4
  %conv.i = zext i8 %10 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end8_crit_edge

for.inc.i.if.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.then7:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.23, i32 noundef %i.018.i, i32 noundef %call2.i) #9
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.95, i32 noundef %call2.i) #9
  br label %for.inc

if.end8:                                          ; preds = %for.inc.i.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %call.i = call fastcc i32 @ath10k_pci_diag_read_mem(ptr noundef %ar, i32 noundef 4196352, ptr noundef nonnull %val.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end8.do.body13_crit_edge, label %if.then11

if.end8.do.body13_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.96, i32 noundef %call.i) #9
  br label %for.inc

do.body13:                                        ; preds = %if.end8.2.do.body13_crit_edge, %if.end8.1.do.body13_crit_edge, %if.end8.do.body13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %11 = load i32, ptr @ath10k_debug_mask, align 4
  %and14 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %do.body13.if.then18_crit_edge

do.body13.if.then18_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

lor.lhs.false16:                                  ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_qca988x_chip_reset, %if.then18)) #9
          to label %cleanup [label %if.then18], !srcloc !390

if.then18:                                        ; preds = %lor.lhs.false16, %do.body13.if.then18_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.97) #9
  br label %cleanup

for.inc:                                          ; preds = %if.then11, %if.then7, %if.then3
  %call1.1 = tail call i32 @ath10k_pci_warm_reset(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool2.not.1 = icmp eq i32 %call1.1, 0
  br i1 %tobool2.not.1, label %if.end4.1, label %if.then3.1

if.then3.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.94, i32 noundef 2, i32 noundef 3, i32 noundef %call1.1) #9
  br label %for.inc.1

if.end4.1:                                        ; preds = %for.inc
  %12 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_values.i, align 4
  %ce_count15.i.1 = getelementptr inbounds %struct.ath10k_hw_values, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ce_count15.i.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ce_count15.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp17.not.i.1 = icmp eq i8 %15, 0
  br i1 %cmp17.not.i.1, label %if.end4.1.if.end8.1_crit_edge, label %if.end4.1.for.body.i.1_crit_edge

if.end4.1.for.body.i.1_crit_edge:                 ; preds = %if.end4.1
  br label %for.body.i.1

if.end4.1.if.end8.1_crit_edge:                    ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.1

for.body.i.1:                                     ; preds = %for.inc.i.1.for.body.i.1_crit_edge, %if.end4.1.for.body.i.1_crit_edge
  %i.018.i.1 = phi i32 [ %inc.i.1, %for.inc.i.1.for.body.i.1_crit_edge ], [ 0, %if.end4.1.for.body.i.1_crit_edge ]
  %16 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %attr.i, align 4
  %arrayidx.i.1 = getelementptr %struct.ce_attr, ptr %17, i32 %i.018.i.1
  %call2.i.1 = tail call i32 @ath10k_ce_init_pipe(ptr noundef %ar, i32 noundef %i.018.i.1, ptr noundef %arrayidx.i.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.1)
  %tobool.not.i.1 = icmp eq i32 %call2.i.1, 0
  br i1 %tobool.not.i.1, label %for.inc.i.1, label %if.then7.1

if.then7.1:                                       ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.23, i32 noundef %i.018.i.1, i32 noundef %call2.i.1) #9
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.95, i32 noundef %call2.i.1) #9
  br label %for.inc.1

for.inc.i.1:                                      ; preds = %for.body.i.1
  %inc.i.1 = add nuw nsw i32 %i.018.i.1, 1
  %18 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i.1 = getelementptr inbounds %struct.ath10k_hw_values, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ce_count.i.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ce_count.i.1, align 4
  %conv.i.1 = zext i8 %21 to i32
  %cmp.i.1 = icmp ult i32 %inc.i.1, %conv.i.1
  br i1 %cmp.i.1, label %for.inc.i.1.for.body.i.1_crit_edge, label %for.inc.i.1.if.end8.1_crit_edge

for.inc.i.1.if.end8.1_crit_edge:                  ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.1

for.inc.i.1.for.body.i.1_crit_edge:               ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.1

if.end8.1:                                        ; preds = %for.inc.i.1.if.end8.1_crit_edge, %if.end4.1.if.end8.1_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %call.i.1 = call fastcc i32 @ath10k_pci_diag_read_mem(ptr noundef %ar, i32 noundef 4196352, ptr noundef nonnull %val.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool10.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool10.not.1, label %if.end8.1.do.body13_crit_edge, label %if.then11.1

if.end8.1.do.body13_crit_edge:                    ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

if.then11.1:                                      ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.96, i32 noundef %call.i.1) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then11.1, %if.then7.1, %if.then3.1
  %call1.2 = tail call i32 @ath10k_pci_warm_reset(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %tobool2.not.2 = icmp eq i32 %call1.2, 0
  br i1 %tobool2.not.2, label %if.end4.2, label %if.then3.2

if.then3.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.94, i32 noundef 3, i32 noundef 3, i32 noundef %call1.2) #9
  br label %for.inc.2

if.end4.2:                                        ; preds = %for.inc.1
  %22 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_values.i, align 4
  %ce_count15.i.2 = getelementptr inbounds %struct.ath10k_hw_values, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ce_count15.i.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ce_count15.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp17.not.i.2 = icmp eq i8 %25, 0
  br i1 %cmp17.not.i.2, label %if.end4.2.if.end8.2_crit_edge, label %if.end4.2.for.body.i.2_crit_edge

if.end4.2.for.body.i.2_crit_edge:                 ; preds = %if.end4.2
  br label %for.body.i.2

if.end4.2.if.end8.2_crit_edge:                    ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.2

for.body.i.2:                                     ; preds = %for.inc.i.2.for.body.i.2_crit_edge, %if.end4.2.for.body.i.2_crit_edge
  %i.018.i.2 = phi i32 [ %inc.i.2, %for.inc.i.2.for.body.i.2_crit_edge ], [ 0, %if.end4.2.for.body.i.2_crit_edge ]
  %26 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %attr.i, align 4
  %arrayidx.i.2 = getelementptr %struct.ce_attr, ptr %27, i32 %i.018.i.2
  %call2.i.2 = tail call i32 @ath10k_ce_init_pipe(ptr noundef %ar, i32 noundef %i.018.i.2, ptr noundef %arrayidx.i.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.2)
  %tobool.not.i.2 = icmp eq i32 %call2.i.2, 0
  br i1 %tobool.not.i.2, label %for.inc.i.2, label %if.then7.2

if.then7.2:                                       ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.23, i32 noundef %i.018.i.2, i32 noundef %call2.i.2) #9
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.95, i32 noundef %call2.i.2) #9
  br label %for.inc.2

for.inc.i.2:                                      ; preds = %for.body.i.2
  %inc.i.2 = add nuw nsw i32 %i.018.i.2, 1
  %28 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i.2 = getelementptr inbounds %struct.ath10k_hw_values, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %ce_count.i.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ce_count.i.2, align 4
  %conv.i.2 = zext i8 %31 to i32
  %cmp.i.2 = icmp ult i32 %inc.i.2, %conv.i.2
  br i1 %cmp.i.2, label %for.inc.i.2.for.body.i.2_crit_edge, label %for.inc.i.2.if.end8.2_crit_edge

for.inc.i.2.if.end8.2_crit_edge:                  ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.2

for.inc.i.2.for.body.i.2_crit_edge:               ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.2

if.end8.2:                                        ; preds = %for.inc.i.2.if.end8.2_crit_edge, %if.end4.2.if.end8.2_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %call.i.2 = call fastcc i32 @ath10k_pci_diag_read_mem(ptr noundef %ar, i32 noundef 4196352, ptr noundef nonnull %val.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool10.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool10.not.2, label %if.end8.2.do.body13_crit_edge, label %if.then11.2

if.end8.2.do.body13_crit_edge:                    ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

if.then11.2:                                      ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.96, i32 noundef %call.i.2) #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then11.2, %if.then7.2, %if.then3.2
  %32 = load i32, ptr @ath10k_pci_reset_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp22 = icmp eq i32 %32, 1
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.98) #9
  br label %cleanup

if.end24:                                         ; preds = %for.inc.2
  tail call fastcc void @ath10k_pci_cold_reset(ptr noundef %ar)
  %call29 = tail call i32 @ath10k_pci_wait_for_target_init(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body33, label %if.then31

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.100, i32 noundef %call29) #9
  br label %cleanup

do.body33:                                        ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %33 = load i32, ptr @ath10k_debug_mask, align 4
  %and34 = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %do.body33.if.then38_crit_edge

do.body33.if.then38_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

lor.lhs.false36:                                  ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_qca988x_chip_reset, %if.then38)) #9
          to label %cleanup [label %if.then38], !srcloc !390

if.then38:                                        ; preds = %lor.lhs.false36, %do.body33.if.then38_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.101) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %lor.lhs.false36, %if.then31, %if.then23, %if.then18, %lor.lhs.false16
  %retval.0 = phi i32 [ -1, %if.then23 ], [ %call29, %if.then31 ], [ 0, %if.then18 ], [ 0, %if.then38 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_qca988x_targ_cpu_to_ce_addr(ptr noundef %ar, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %addr, 1048575
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %soc_core_base_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %soc_core_base_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %soc_core_base_address, align 4
  %ce_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %4 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath10k_ce, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1.i = tail call i32 %9(ptr noundef %ar, i32 noundef %3) #9
  %shl = shl i32 %call1.i, 21
  %or = or i32 %and, 1048576
  %or2 = or i32 %shl, %or
  ret i32 %or2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_qca6174_chip_reset(ptr noundef %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_qca6174_chip_reset, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.104) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  tail call fastcc void @ath10k_pci_cold_reset(ptr noundef %ar)
  %call5 = tail call i32 @ath10k_pci_wait_for_target_init(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.100, i32 noundef %call5) #9
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %call9 = tail call i32 @ath10k_pci_warm_reset(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body13, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.105, i32 noundef %call9) #9
  br label %cleanup

do.body13:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %1 = load i32, ptr @ath10k_debug_mask, align 4
  %and14 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %do.body13.if.then18_crit_edge

do.body13.if.then18_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

lor.lhs.false16:                                  ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_qca6174_chip_reset, %if.then18)) #9
          to label %cleanup [label %if.then18], !srcloc !390

if.then18:                                        ; preds = %lor.lhs.false16, %do.body13.if.then18_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.106) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %lor.lhs.false16, %if.then11, %if.then7
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ %call9, %if.then11 ], [ 0, %if.then18 ], [ 0, %lor.lhs.false16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_qca6174_targ_cpu_to_ce_addr(ptr noundef %ar, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %addr, 1048575
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %soc_core_base_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %soc_core_base_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %soc_core_base_address, align 4
  %ce_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %4 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath10k_ce, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1.i = tail call i32 %9(ptr noundef %ar, i32 noundef %3) #9
  %shl = shl i32 %call1.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %addr)
  %cmp.inv = icmp ult i32 %addr, 1048576
  %cond = select i1 %cmp.inv, i32 0, i32 1048576
  %or = or i32 %and, %cond
  %or2 = or i32 %shl, %or
  ret i32 %or2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_qca99x0_soft_chip_reset(ptr noundef %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ath10k_pci_irq_disable(ptr noundef %ar)
  %call = tail call i32 @ath10k_pci_qca99x0_chip_reset(ptr noundef %ar)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_qca99x0_chip_reset(ptr noundef %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_qca99x0_chip_reset, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.107) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  tail call fastcc void @ath10k_pci_cold_reset(ptr noundef %ar)
  %call5 = tail call i32 @ath10k_pci_wait_for_target_init(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body9, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.100, i32 noundef %call5) #9
  br label %cleanup

do.body9:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %1 = load i32, ptr @ath10k_debug_mask, align 4
  %and10 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %do.body9.if.then14_crit_edge

do.body9.if.then14_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

lor.lhs.false12:                                  ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_qca99x0_chip_reset, %if.then14)) #9
          to label %cleanup [label %if.then14], !srcloc !390

if.then14:                                        ; preds = %lor.lhs.false12, %do.body9.if.then14_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.108) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %lor.lhs.false12, %if.then7
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_qca99x0_targ_cpu_to_ce_addr(ptr noundef %ar, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %addr, 1048575
  %ce_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %0 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_priv.i.i, align 4
  %bus_ops.i = getelementptr inbounds %struct.ath10k_ce, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1.i = tail call i32 %5(ptr noundef %ar, i32 noundef 262192) #9
  %or = or i32 %and, %call1.i
  %or1 = or i32 %or, 1048576
  ret i32 %or1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_core_create(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_pci_ps_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr i8, ptr %t, i32 -1512
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 4
  %ps_lock = getelementptr i8, ptr %t, i32 -48
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ps_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_ps_timer, %if.then)) #9
          to label %do.end13 [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %ps_wake_refcount = getelementptr i8, ptr %t, i32 -4
  %3 = ptrtoint ptr %ps_wake_refcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ps_wake_refcount, align 4
  %ps_awake = getelementptr i8, ptr %t, i32 48
  %5 = ptrtoint ptr %ps_awake to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ps_awake, align 4, !range !391
  %7 = zext i8 %6 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 16384, ptr noundef nonnull @.str.127, i32 noundef %4, i32 noundef %7) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then, %lor.lhs.false
  %ps_wake_refcount14 = getelementptr i8, ptr %t, i32 -4
  %8 = ptrtoint ptr %ps_wake_refcount14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ps_wake_refcount14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp15.not = icmp eq i32 %9, 0
  br i1 %cmp15.not, label %if.end18, label %do.end13.skip_crit_edge

do.end13.skip_crit_edge:                          ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip

if.end18:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__ath10k_pci_sleep(ptr noundef %1)
  br label %skip

skip:                                             ; preds = %if.end18, %do.end13.skip_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ps_lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_pci_claim(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ar, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @pci_enable_device(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.129, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @pci_request_region(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.130) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.131, i32 noundef 0, i32 noundef %call3) #9
  br label %err_device

if.end6:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.132, i32 noundef %call.i) #9
  br label %err_region

if.end10:                                         ; preds = %if.end6
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #9
  tail call void @pci_set_master(ptr noundef %1) #9
  %end = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47, i32 0, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.end10.cond.end_crit_edge, label %cond.false

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %resource = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resource, align 8
  %sub = add i32 %4, 1
  %add = sub i32 %sub, %6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end10.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end10.cond.end_crit_edge ]
  %mem_len = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 16
  %7 = ptrtoint ptr %mem_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %mem_len, align 4
  %call16 = tail call ptr @pci_iomap(ptr noundef %1, i32 noundef 0, i32 noundef 0) #9
  %mem = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 12
  %8 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16, ptr %mem, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.then19, label %do.body

if.then19:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.133, i32 noundef 0) #9
  tail call void @pci_clear_master(ptr noundef %1) #9
  br label %err_region

do.body:                                          ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %9 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %do.body.if.then23_crit_edge

do.body.if.then23_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_claim, %if.then23)) #9
          to label %cleanup [label %if.then23], !srcloc !390

if.then23:                                        ; preds = %lor.lhs.false, %do.body.if.then23_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.134, ptr noundef %11) #9
  br label %cleanup

err_region:                                       ; preds = %if.then19, %if.then9
  %ret.0 = phi i32 [ %call.i, %if.then9 ], [ -5, %if.then19 ]
  tail call void @pci_release_region(ptr noundef %1, i32 noundef 0) #9
  br label %err_device

err_device:                                       ; preds = %err_region, %if.then5
  %ret.1 = phi i32 [ %call3, %if.then5 ], [ %ret.0, %err_region ]
  tail call void @pci_disable_device(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %err_device, %if.then23, %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %ret.1, %err_device ], [ 0, %if.then23 ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_pci_force_wake(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %pci_ps = getelementptr inbounds %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 17
  %0 = ptrtoint ptr %pci_ps to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pci_ps, align 1, !range !391
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  %ps_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ps_lock) #9
  %ps_awake = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 16
  %2 = ptrtoint ptr %ps_awake to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ps_awake, align 4, !range !391
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.then7, label %do.body1.if.end15_crit_edge

do.body1.if.end15_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then7:                                         ; preds = %do.body1
  %mem = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 12
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 4
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %pcie_local_base_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %pcie_local_base_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcie_local_base_address, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %9
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !394
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 16777216) #9, !srcloc !395
  %hw_values.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  br label %while.body.i

while.body.i:                                     ; preds = %cond.false6.i.while.body.i_crit_edge, %if.then7
  %curr_delay.027.i = phi i32 [ 5, %if.then7 ], [ %spec.select.i, %cond.false6.i.while.body.i_crit_edge ]
  %tot_delay.026.i = phi i32 [ 0, %if.then7 ], [ %add.i, %cond.false6.i.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem, align 4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %pcie_local_base_address.i.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %pcie_local_base_address.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcie_local_base_address.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !392
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  %and.i.i = and i32 %17, 7
  %18 = ptrtoint ptr %hw_values.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_values.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %21)
  %cmp.i.i = icmp eq i32 %and.i.i, %21
  br i1 %cmp.i.i, label %if.then.i, label %cond.false6.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %tot_delay.026.i)
  %cmp1.i = icmp sgt i32 %tot_delay.026.i, 10000
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i.if.then12_crit_edge

if.then.i.if.then12_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.lhs.trunc.i = trunc i32 %tot_delay.026.i to i16
  %div2324.i = udiv i16 %div23.lhs.trunc.i, 1000
  %div23.zext.i = zext i16 %div2324.i to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.122, i32 noundef %div23.zext.i) #9
  br label %if.then12

cond.false6.i:                                    ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %22(i32 noundef %curr_delay.027.i) #9
  %add.i = add i32 %tot_delay.026.i, %curr_delay.027.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %curr_delay.027.i)
  %cmp8.i = icmp slt i32 %curr_delay.027.i, 50
  %add10.i = add i32 %curr_delay.027.i, 5
  %spec.select.i = select i1 %cmp8.i, i32 %add10.i, i32 %curr_delay.027.i
  %cmp.i = icmp slt i32 %add.i, 30000
  br i1 %cmp.i, label %cond.false6.i.while.body.i_crit_edge, label %cond.false6.i.if.end15_crit_edge

cond.false6.i.if.end15_crit_edge:                 ; preds = %cond.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

cond.false6.i.while.body.i_crit_edge:             ; preds = %cond.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.then12:                                        ; preds = %if.then2.i, %if.then.i.if.then12_crit_edge
  %23 = ptrtoint ptr %ps_awake to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %ps_awake, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %cond.false6.i.if.end15_crit_edge, %do.body1.if.end15_crit_edge
  %ret.0 = phi i32 [ 0, %do.body1.if.end15_crit_edge ], [ 0, %if.then12 ], [ -110, %cond.false6.i.if.end15_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ps_lock, i32 noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end15 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_pci_irq_disable(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ath10k_ce_disable_interrupts(ptr noundef %ar) #9
  %regs.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %soc_core_base_address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %soc_core_base_address.i, align 4
  %add.i = add i32 %3, 8
  %ce_priv.i.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %4 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i.i, align 4
  tail call void %9(ptr noundef %ar, i32 noundef %add.i, i32 noundef 0) #9
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address2.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %soc_core_base_address2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %soc_core_base_address2.i, align 4
  %pcie_intr_clr_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %11, i32 0, i32 27
  %14 = ptrtoint ptr %pcie_intr_clr_address.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcie_intr_clr_address.i, align 4
  %add4.i = add i32 %15, %13
  %pcie_intr_fw_mask.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %11, i32 0, i32 25
  %16 = ptrtoint ptr %pcie_intr_fw_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcie_intr_fw_mask.i, align 4
  %pcie_intr_ce_mask_all.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %11, i32 0, i32 26
  %18 = ptrtoint ptr %pcie_intr_ce_mask_all.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pcie_intr_ce_mask_all.i, align 4
  %or.i = or i32 %19, %17
  %20 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i19.i = getelementptr inbounds %struct.ath10k_ce, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bus_ops.i19.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus_ops.i19.i, align 4
  %write32.i20.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write32.i20.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i20.i, align 4
  tail call void %25(ptr noundef %ar, i32 noundef %add4.i, i32 noundef %or.i) #9
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address8.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %soc_core_base_address8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %soc_core_base_address8.i, align 4
  %add9.i = add i32 %29, 8
  %30 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i22.i = getelementptr inbounds %struct.ath10k_ce, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %bus_ops.i22.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus_ops.i22.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call1.i.i = tail call i32 %35(ptr noundef %ar, i32 noundef %add9.i) #9
  %hw_rev.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 6
  %36 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_rev.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %37, label %entry.ath10k_pci_irq_msi_fw_mask.exit_crit_edge [
    i32 0, label %entry.sw.bb.i_crit_edge
    i32 7, label %entry.sw.bb.i_crit_edge10
    i32 1, label %entry.sw.bb.i_crit_edge11
    i32 5, label %entry.sw.bb.i_crit_edge12
  ]

entry.sw.bb.i_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.ath10k_pci_irq_msi_fw_mask.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_irq_msi_fw_mask.exit

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge10, %entry.sw.bb.i_crit_edge11, %entry.sw.bb.i_crit_edge12
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address.i4 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %soc_core_base_address.i4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %soc_core_base_address.i4, align 4
  %43 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i.i6 = getelementptr inbounds %struct.ath10k_ce, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %bus_ops.i.i6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus_ops.i.i6, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %call1.i.i7 = tail call i32 %48(ptr noundef %ar, i32 noundef %42) #9
  %and.i = and i32 %call1.i.i7, -2049
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address2.i8 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %soc_core_base_address2.i8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %soc_core_base_address2.i8, align 4
  %53 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i11.i = getelementptr inbounds %struct.ath10k_ce, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %bus_ops.i11.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus_ops.i11.i, align 4
  %write32.i.i9 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write32.i.i9 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write32.i.i9, align 4
  tail call void %58(ptr noundef %ar, i32 noundef %52, i32 noundef %and.i) #9
  br label %ath10k_pci_irq_msi_fw_mask.exit

ath10k_pci_irq_msi_fw_mask.exit:                  ; preds = %sw.bb.i, %entry.ath10k_pci_irq_msi_fw_mask.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_core_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_pci_sleep_sync(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %pci_ps = getelementptr inbounds %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 17
  %0 = ptrtoint ptr %pci_ps to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pci_ps, align 1, !range !391
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ps_lock.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ps_lock.i) #9
  %mem.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 12
  %2 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem.i, align 4
  %regs.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %pcie_local_base_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %pcie_local_base_address.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pcie_local_base_address.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %7
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !394
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #9, !srcloc !395
  %ps_awake.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 16
  %8 = ptrtoint ptr %ps_awake.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ps_awake.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ps_lock.i, i32 noundef %call3.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ps_timer = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 14, i32 0, i32 0, i32 0, i32 0, i32 4
  %call2 = tail call i32 @del_timer_sync(ptr noundef %ps_timer) #9
  %ps_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 3
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ps_lock) #9
  %ps_wake_refcount = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 14, i32 0, i32 0, i32 0, i32 0, i32 3
  %9 = ptrtoint ptr %ps_wake_refcount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ps_wake_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp10.not = icmp eq i32 %10, 0
  br i1 %cmp10.not, label %if.end.if.end29_crit_edge, label %do.end23, !prof !387

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 624, i32 noundef 9, ptr noundef null) #9
  br label %if.end29

if.end29:                                         ; preds = %do.end23, %if.end.if.end29_crit_edge
  tail call fastcc void @__ath10k_pci_sleep(ptr noundef %ar)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ps_lock, i32 noundef %call7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_pci_cold_reset(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_cold_reset, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.102) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #9
  %fw_cold_reset_counter = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 120, i32 3
  %1 = ptrtoint ptr %fw_cold_reset_counter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_cold_reset_counter, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %fw_cold_reset_counter, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #9
  %regs.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %pcie_local_base_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %4, i32 0, i32 22
  %5 = ptrtoint ptr %pcie_local_base_address.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pcie_local_base_address.i, align 4
  %add.i = add i32 %6, 8
  %ce_priv.i.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %7 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus_ops.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call1.i.i = tail call i32 %12(ptr noundef %ar, i32 noundef %add.i) #9
  %or = or i32 %call1.i.i, 1
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %pcie_local_base_address.i2 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %pcie_local_base_address.i2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pcie_local_base_address.i2, align 4
  %add.i3 = add i32 %16, 8
  %17 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i.i5 = getelementptr inbounds %struct.ath10k_ce, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bus_ops.i.i5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_ops.i.i5, align 4
  %write32.i.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i.i, align 4
  tail call void %22(ptr noundef %ar, i32 noundef %add.i3, i32 noundef %or) #9
  tail call void @msleep(i32 noundef 20) #9
  %and3 = and i32 %call1.i.i, -2
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %pcie_local_base_address.i7 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %pcie_local_base_address.i7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pcie_local_base_address.i7, align 4
  %add.i8 = add i32 %26, 8
  %27 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i.i10 = getelementptr inbounds %struct.ath10k_ce, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %bus_ops.i.i10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus_ops.i.i10, align 4
  %write32.i.i11 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write32.i.i11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32.i.i11, align 4
  tail call void %32(ptr noundef %ar, i32 noundef %add.i8, i32 noundef %and3) #9
  tail call void @msleep(i32 noundef 20) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %33 = load i32, ptr @ath10k_debug_mask, align 4
  %and5 = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %do.end.if.then9_crit_edge

do.end.if.then9_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

lor.lhs.false7:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_cold_reset, %if.then9)) #9
          to label %do.end12 [label %if.then9], !srcloc !390

if.then9:                                         ; preds = %lor.lhs.false7, %do.end.if.then9_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.103) #9
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %lor.lhs.false7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_hif_start(ptr noundef %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_hif_start, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.109) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  tail call void @ath10k_core_napi_enable(ptr noundef %ar) #9
  tail call void @ath10k_ce_enable_interrupts(ptr noundef %ar) #9
  %regs.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %1 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i.i, align 4
  %soc_core_base_address.i.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %soc_core_base_address.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %soc_core_base_address.i.i, align 4
  %add.i.i = add i32 %4, 8
  %pcie_intr_fw_mask.i.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %2, i32 0, i32 25
  %5 = ptrtoint ptr %pcie_intr_fw_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pcie_intr_fw_mask.i.i, align 4
  %pcie_intr_ce_mask_all.i.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %2, i32 0, i32 26
  %7 = ptrtoint ptr %pcie_intr_ce_mask_all.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pcie_intr_ce_mask_all.i.i, align 4
  %or.i.i = or i32 %8, %6
  %ce_priv.i.i.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %9 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %bus_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus_ops.i.i.i, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %14(ptr noundef %ar, i32 noundef %add.i.i, i32 noundef %or.i.i) #9
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  %soc_core_base_address4.i.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %soc_core_base_address4.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %soc_core_base_address4.i.i, align 4
  %add5.i.i = add i32 %18, 8
  %19 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i12.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %bus_ops.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus_ops.i12.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call1.i.i.i = tail call i32 %24(ptr noundef %ar, i32 noundef %add5.i.i) #9
  %hw_rev.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 6
  %25 = ptrtoint ptr %hw_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_rev.i.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %26, label %do.end.ath10k_pci_irq_enable.exit_crit_edge [
    i32 0, label %do.end.sw.bb.i.i_crit_edge
    i32 7, label %do.end.sw.bb.i.i_crit_edge9
    i32 1, label %do.end.sw.bb.i.i_crit_edge10
    i32 5, label %do.end.sw.bb.i.i_crit_edge11
  ]

do.end.sw.bb.i.i_crit_edge11:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

do.end.sw.bb.i.i_crit_edge10:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

do.end.sw.bb.i.i_crit_edge9:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

do.end.sw.bb.i.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

do.end.ath10k_pci_irq_enable.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_irq_enable.exit

sw.bb.i.i:                                        ; preds = %do.end.sw.bb.i.i_crit_edge, %do.end.sw.bb.i.i_crit_edge9, %do.end.sw.bb.i.i_crit_edge10, %do.end.sw.bb.i.i_crit_edge11
  %28 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i, align 4
  %soc_core_base_address.i4.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %soc_core_base_address.i4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %soc_core_base_address.i4.i, align 4
  %32 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i6.i = getelementptr inbounds %struct.ath10k_ce, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %bus_ops.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus_ops.i.i6.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call1.i.i7.i = tail call i32 %37(ptr noundef %ar, i32 noundef %31) #9
  %or.i8.i = or i32 %call1.i.i7.i, 2048
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %soc_core_base_address2.i.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %soc_core_base_address2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %soc_core_base_address2.i.i, align 4
  %42 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i11.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %bus_ops.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus_ops.i11.i.i, align 4
  %write32.i.i9.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %write32.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i.i9.i, align 4
  tail call void %47(ptr noundef %ar, i32 noundef %41, i32 noundef %or.i8.i) #9
  br label %ath10k_pci_irq_enable.exit

ath10k_pci_irq_enable.exit:                       ; preds = %sw.bb.i.i, %do.end.ath10k_pci_irq_enable.exit_crit_edge
  %hw_values.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %48 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_values.i, align 4
  %ce_count5.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %ce_count5.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ce_count5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp7.not.i = icmp eq i8 %51, 0
  br i1 %cmp7.not.i, label %ath10k_pci_irq_enable.exit.ath10k_pci_rx_post.exit_crit_edge, label %ath10k_pci_irq_enable.exit.for.body.i_crit_edge

ath10k_pci_irq_enable.exit.for.body.i_crit_edge:  ; preds = %ath10k_pci_irq_enable.exit
  br label %for.body.i

ath10k_pci_irq_enable.exit.ath10k_pci_rx_post.exit_crit_edge: ; preds = %ath10k_pci_irq_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_rx_post.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %ath10k_pci_irq_enable.exit.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %ath10k_pci_irq_enable.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 6, i32 %i.08.i
  tail call fastcc void @ath10k_pci_rx_post_pipe(ptr noundef %arrayidx.i) #9
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %52 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ce_count.i, align 4
  %conv.i = zext i8 %55 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ath10k_pci_rx_post.exit_crit_edge

for.body.i.ath10k_pci_rx_post.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_rx_post.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ath10k_pci_rx_post.exit:                          ; preds = %for.body.i.ath10k_pci_rx_post.exit_crit_edge, %ath10k_pci_irq_enable.exit.ath10k_pci_rx_post.exit_crit_edge
  %56 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %drv_priv.i, align 4
  %link_ctl = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 2
  %58 = ptrtoint ptr %link_ctl to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %link_ctl, align 4
  %call2 = tail call i32 @pcie_capability_write_word(ptr noundef %57, i32 noundef 16, i16 noundef zeroext %59) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_pci_hif_stop(ptr noundef %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_hif_stop, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.110) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  tail call fastcc void @ath10k_pci_irq_disable(ptr noundef %ar)
  %1 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %drv_priv.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %4) #9
  tail call void @ath10k_core_napi_sync_disable(ptr noundef %ar) #9
  %dump_work = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 4
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %dump_work) #9
  %pci_soft_reset.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17
  %5 = ptrtoint ptr %pci_soft_reset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_soft_reset.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end.ath10k_pci_safe_chip_reset.exit_crit_edge, label %if.end.i

do.end.ath10k_pci_safe_chip_reset.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_safe_chip_reset.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 %6(ptr noundef %ar) #9
  br label %ath10k_pci_safe_chip_reset.exit

ath10k_pci_safe_chip_reset.exit:                  ; preds = %if.end.i, %do.end.ath10k_pci_safe_chip_reset.exit_crit_edge
  tail call void @ath10k_pci_flush(ptr noundef %ar)
  %ps_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 3
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ps_lock) #9
  %ps_wake_refcount = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 14, i32 0, i32 0, i32 0, i32 0, i32 3
  %7 = ptrtoint ptr %ps_wake_refcount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ps_wake_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp12.not = icmp eq i32 %8, 0
  br i1 %cmp12.not, label %ath10k_pci_safe_chip_reset.exit.if.end31_crit_edge, label %do.end25, !prof !387

ath10k_pci_safe_chip_reset.exit.if.end31_crit_edge: ; preds = %ath10k_pci_safe_chip_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.end25:                                         ; preds = %ath10k_pci_safe_chip_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2099, i32 noundef 9, ptr noundef null) #9
  br label %if.end31

if.end31:                                         ; preds = %do.end25, %ath10k_pci_safe_chip_reset.exit.if.end31_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ps_lock, i32 noundef %call7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_hif_power_up(ptr noundef %ar, i32 noundef %fw_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_hif_power_up, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !390

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.111) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %1 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %drv_priv.i, align 4
  %link_ctl = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 2
  %call2 = tail call i32 @pcie_capability_read_word(ptr noundef %2, i32 noundef 16, ptr noundef %link_ctl) #9
  %3 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_priv.i, align 4
  %5 = ptrtoint ptr %link_ctl to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %link_ctl, align 4
  %7 = and i16 %6, -4
  %call7 = tail call i32 @pcie_capability_write_word(ptr noundef %4, i32 noundef 16, i16 noundef zeroext %7) #9
  %pci_hard_reset.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 0, i32 1
  %8 = ptrtoint ptr %pci_hard_reset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_hard_reset.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %ath10k_pci_chip_reset.exit.thread, label %ath10k_pci_chip_reset.exit, !prof !389

ath10k_pci_chip_reset.exit.thread:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2808, i32 noundef 9, ptr noundef null) #9
  br label %if.then10

ath10k_pci_chip_reset.exit:                       ; preds = %do.end
  %call25.i = tail call i32 %9(ptr noundef %ar) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool9.not = icmp eq i32 %call25.i, 0
  br i1 %tobool9.not, label %if.end14, label %ath10k_pci_chip_reset.exit.if.then10_crit_edge

ath10k_pci_chip_reset.exit.if.then10_crit_edge:   ; preds = %ath10k_pci_chip_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %ath10k_pci_chip_reset.exit.if.then10_crit_edge, %ath10k_pci_chip_reset.exit.thread
  %retval.0.i75 = phi i32 [ -524, %ath10k_pci_chip_reset.exit.thread ], [ %call25.i, %ath10k_pci_chip_reset.exit.if.then10_crit_edge ]
  %regs.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %fw_indicator_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %fw_indicator_address.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_indicator_address.i, align 4
  %ce_priv.i.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %14 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus_ops.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call1.i.i = tail call i32 %19(ptr noundef %ar, i32 noundef %13) #9
  %and.i = and i32 %call1.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then10.if.end13_crit_edge, label %if.then12

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.112) #9
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %fw_indicator_address.i54 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %21, i32 0, i32 21
  %22 = ptrtoint ptr %fw_indicator_address.i54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_indicator_address.i54, align 4
  %24 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i.i56 = getelementptr inbounds %struct.ath10k_ce, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %bus_ops.i.i56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus_ops.i.i56, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call1.i.i57 = tail call i32 %29(ptr noundef %ar, i32 noundef %23) #9
  %and.i58 = and i32 %call1.i.i57, -2
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %fw_indicator_address2.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %31, i32 0, i32 21
  %32 = ptrtoint ptr %fw_indicator_address2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fw_indicator_address2.i, align 4
  %34 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i8.i = getelementptr inbounds %struct.ath10k_ce, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %bus_ops.i8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus_ops.i8.i, align 4
  %write32.i.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i, align 4
  tail call void %39(ptr noundef %ar, i32 noundef %33, i32 noundef %and.i58) #9
  %workqueue.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 77
  %40 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %workqueue.i, align 8
  %dump_work.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %dump_work.i) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then10.if.end13_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.87, i32 noundef %retval.0.i75) #9
  br label %cleanup

if.end14:                                         ; preds = %ath10k_pci_chip_reset.exit
  %hw_values.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %42 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_values.i, align 4
  %ce_count15.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %ce_count15.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ce_count15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp17.not.i = icmp eq i8 %45, 0
  br i1 %cmp17.not.i, label %if.end14.if.end18_crit_edge, label %for.body.lr.ph.i

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.body.lr.ph.i:                                 ; preds = %if.end14
  %attr.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %46 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %attr.i, align 4
  %arrayidx.i = getelementptr %struct.ce_attr, ptr %47, i32 %i.018.i
  %call2.i = tail call i32 @ath10k_ce_init_pipe(ptr noundef %ar, i32 noundef %i.018.i, ptr noundef %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i59 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i59, label %for.inc.i, label %if.then17

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %48 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ce_count.i, align 4
  %conv.i = zext i8 %51 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end18_crit_edge

for.inc.i.if.end18_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.then17:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.23, i32 noundef %i.018.i, i32 noundef %call2.i) #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.113, i32 noundef %call2.i) #9
  br label %cleanup

if.end18:                                         ; preds = %for.inc.i.if.end18_crit_edge, %if.end14.if.end18_crit_edge
  %call19 = tail call i32 @ath10k_pci_init_config(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end18
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.114, i32 noundef %call19) #9
  %52 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_values.i, align 4
  %ce_count5.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %ce_count5.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ce_count5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp7.not.i = icmp eq i8 %55, 0
  br i1 %cmp7.not.i, label %if.then21.cleanup_crit_edge, label %if.then21.for.body.i66_crit_edge

if.then21.for.body.i66_crit_edge:                 ; preds = %if.then21
  br label %for.body.i66

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i66:                                     ; preds = %for.body.i66.for.body.i66_crit_edge, %if.then21.for.body.i66_crit_edge
  %i.08.i = phi i32 [ %inc.i62, %for.body.i66.for.body.i66_crit_edge ], [ 0, %if.then21.for.body.i66_crit_edge ]
  tail call void @ath10k_ce_deinit_pipe(ptr noundef %ar, i32 noundef %i.08.i) #9
  %inc.i62 = add nuw nsw i32 %i.08.i, 1
  %56 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i63 = getelementptr inbounds %struct.ath10k_hw_values, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ce_count.i63 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ce_count.i63, align 4
  %conv.i64 = zext i8 %59 to i32
  %cmp.i65 = icmp ult i32 %inc.i62, %conv.i64
  br i1 %cmp.i65, label %for.body.i66.for.body.i66_crit_edge, label %for.body.i66.cleanup_crit_edge

for.body.i66.cleanup_crit_edge:                   ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i66.for.body.i66_crit_edge:              ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i66

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %regs.i67 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %60 = ptrtoint ptr %regs.i67 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i67, align 4
  %soc_core_base_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %soc_core_base_address.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %soc_core_base_address.i, align 4
  %ce_priv.i.i.i68 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %64 = ptrtoint ptr %ce_priv.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ce_priv.i.i.i68, align 4
  %bus_ops.i.i69 = getelementptr inbounds %struct.ath10k_ce, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %bus_ops.i.i69 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus_ops.i.i69, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call1.i.i70 = tail call i32 %69(ptr noundef %ar, i32 noundef %63) #9
  %or.i = or i32 %call1.i.i70, 8192
  %70 = ptrtoint ptr %ce_priv.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ce_priv.i.i.i68, align 4
  %bus_ops.i2.i = getelementptr inbounds %struct.ath10k_ce, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %bus_ops.i2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus_ops.i2.i, align 4
  %write32.i.i71 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %write32.i.i71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write32.i.i71, align 4
  tail call void %75(ptr noundef %ar, i32 noundef %63, i32 noundef %or.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %for.body.i66.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.then17, %if.end13
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %retval.0.i75, %if.end13 ], [ %call2.i, %if.then17 ], [ %call19, %if.then21.cleanup_crit_edge ], [ %call19, %for.body.i66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath10k_pci_hif_suspend(ptr nocapture noundef readnone %ar) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath10k_pci_hif_resume(ptr nocapture noundef readnone %ar) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_hif_fetch_cal_eeprom(ptr noundef %ar, ptr nocapture noundef writeonly %data, ptr nocapture noundef writeonly %data_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_rev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 6
  %0 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cal_data_len = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 45, i32 15
  %2 = ptrtoint ptr %cal_data_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cal_data_len, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %regs.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.i.i = add i32 %7, 40
  %ce_priv.i.i.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %8 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bus_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus_ops.i.i.i, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %13(ptr noundef %ar, i32 noundef %add.i.i, i32 noundef 0) #9
  %14 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus_ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i, align 4
  tail call void %19(ptr noundef %ar, i32 noundef 81980, i32 noundef 6176) #9
  %20 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i6.i = getelementptr inbounds %struct.ath10k_ce, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bus_ops.i6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus_ops.i6.i, align 4
  %write32.i7.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write32.i7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i7.i, align 4
  tail call void %25(ptr noundef %ar, i32 noundef 82028, i32 noundef 6176) #9
  %26 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i9.i = getelementptr inbounds %struct.ath10k_ce, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %bus_ops.i9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus_ops.i9.i, align 4
  %write32.i10.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %write32.i10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i10.i, align 4
  tail call void %31(ptr noundef %ar, i32 noundef 81936, i32 noundef 131072) #9
  %32 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i12.i = getelementptr inbounds %struct.ath10k_ce, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %bus_ops.i12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus_ops.i12.i, align 4
  %write32.i13.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write32.i13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i13.i, align 4
  tail call void %37(ptr noundef %ar, i32 noundef 65536, i32 noundef 852152) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp343.not = icmp eq i32 %3, 0
  br i1 %cmp343.not, label %if.end2.err_free_crit_edge, label %if.end2.for.body_crit_edge

if.end2.for.body_crit_edge:                       ; preds = %if.end2
  br label %for.body

if.end2.err_free_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end2.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end2.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %i.044
  %conv.i = and i32 %i.044, 65535
  %shl.i = shl nuw i32 %conv.i, 16
  %and.i = and i32 %shl.i, 16711680
  %38 = and i32 %i.044, 65280
  %or.i = or i32 %38, %and.i
  %or4.i = or i32 %or.i, -1593835360
  %39 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i.i27 = getelementptr inbounds %struct.ath10k_ce, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %bus_ops.i.i27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus_ops.i.i27, align 4
  %write32.i.i28 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write32.i.i28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write32.i.i28, align 4
  tail call void %44(ptr noundef %ar, i32 noundef 65544, i32 noundef %or4.i) #9
  %45 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i39.i = getelementptr inbounds %struct.ath10k_ce, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %bus_ops.i39.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus_ops.i39.i, align 4
  %write32.i40.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write32.i40.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write32.i40.i, align 4
  tail call void %50(ptr noundef %ar, i32 noundef 65540, i32 noundef 276) #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i30.do.body.i_crit_edge, %for.body
  %wait_limit.0.i = phi i32 [ 100000, %for.body ], [ %dec.i, %if.end.i30.do.body.i_crit_edge ]
  %51 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i42.i = getelementptr inbounds %struct.ath10k_ce, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %bus_ops.i42.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus_ops.i42.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %call1.i.i29 = tail call i32 %56(ptr noundef %ar, i32 noundef 65540) #9
  %57 = and i32 %call1.i.i29, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i, label %if.end.i30, label %if.end13.i

if.end.i30:                                       ; preds = %do.body.i
  %dec.i = add nsw i32 %wait_limit.0.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 2147480) #9
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i30.err_free.sink.split_crit_edge, label %if.end.i30.do.body.i_crit_edge

if.end.i30.do.body.i_crit_edge:                   ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end.i30.err_free.sink.split_crit_edge:         ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free.sink.split

if.end13.i:                                       ; preds = %do.body.i
  %59 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i44.i = getelementptr inbounds %struct.ath10k_ce, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %bus_ops.i44.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus_ops.i44.i, align 4
  %write32.i45.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %write32.i45.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write32.i45.i, align 4
  tail call void %64(ptr noundef %ar, i32 noundef 65540, i32 noundef %call1.i.i29) #9
  %65 = and i32 %call1.i.i29, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool16.not.i = icmp eq i32 %65, 0
  br i1 %tobool16.not.i, label %for.inc, label %if.end13.i.err_free.sink.split_crit_edge

if.end13.i.err_free.sink.split_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free.sink.split

for.inc:                                          ; preds = %if.end13.i
  %66 = ptrtoint ptr %ce_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ce_priv.i.i.i.i, align 4
  %bus_ops.i47.i = getelementptr inbounds %struct.ath10k_ce, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %bus_ops.i47.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus_ops.i47.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %call1.i48.i = tail call i32 %71(ptr noundef %ar, i32 noundef 65552) #9
  %conv21.i = trunc i32 %call1.i48.i to i8
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv21.i, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %rem.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i31 = icmp ne i32 %rem.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp114.not.i = icmp ult i32 %3, 2
  %or.cond.i = or i1 %cmp114.not.i, %cmp.not.i31
  br i1 %or.cond.i, label %for.end.err_free_crit_edge, label %for.body.preheader.i

for.end.err_free_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free

for.body.preheader.i:                             ; preds = %for.end
  %div13.i = lshr i32 %3, 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %checksum.015.i = phi i32 [ %xor.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i16, ptr %call9.i, i32 %i.016.i
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx.i, align 2
  %75 = tail call i16 @llvm.bswap.i16(i16 %74) #9
  %conv.i32 = zext i16 %75 to i32
  %xor.i = xor i32 %checksum.015.i, %conv.i32
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div13.i
  br i1 %exitcond.not.i, label %ath10k_pci_validate_cal.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ath10k_pci_validate_cal.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %xor.i)
  %phi.cmp.i = icmp eq i32 %xor.i, 65535
  br i1 %phi.cmp.i, label %if.end10, label %ath10k_pci_validate_cal.exit.err_free_crit_edge

ath10k_pci_validate_cal.exit.err_free_crit_edge:  ; preds = %ath10k_pci_validate_cal.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free

if.end10:                                         ; preds = %ath10k_pci_validate_cal.exit
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call9.i, ptr %data, align 4
  %77 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %3, ptr %data_len, align 4
  br label %cleanup

err_free.sink.split:                              ; preds = %if.end13.i.err_free.sink.split_crit_edge, %if.end.i30.err_free.sink.split_crit_edge
  %.str.116.sink = phi ptr [ @.str.116, %if.end.i30.err_free.sink.split_crit_edge ], [ @.str.117, %if.end13.i.err_free.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull %.str.116.sink, i32 noundef %conv.i) #9
  br label %err_free

err_free:                                         ; preds = %err_free.sink.split, %ath10k_pci_validate_cal.exit.err_free_crit_edge, %for.end.err_free_crit_edge, %if.end2.err_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %err_free ], [ 0, %if.end10 ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_enable_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_napi_sync_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_bus_pci_read32(ptr noundef %ar, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 4
  %mem_len = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 16
  %0 = ptrtoint ptr %mem_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp = icmp ugt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end, !prof !389

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %offset, i32 noundef %add, i32 noundef %1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @ath10k_pci_wake(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.119, i32 noundef %offset, i32 noundef %call4) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mem = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 12
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %offset
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !392
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  tail call fastcc void @ath10k_pci_sleep(ptr noundef %ar)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then6 ], [ %5, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_bus_pci_write32(ptr noundef %ar, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 4
  %mem_len = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 16
  %0 = ptrtoint ptr %mem_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp = icmp ugt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end, !prof !389

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.124, i32 noundef %offset, i32 noundef %add, i32 noundef %1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @ath10k_pci_wake(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.125, i32 noundef %value, i32 noundef %offset, i32 noundef %call4) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mem = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 12
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !394
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %value) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !395
  tail call fastcc void @ath10k_pci_sleep(ptr noundef %ar)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_get_num_banks(ptr noundef %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.155)
  switch i16 %3, label %entry.sw.epilog6_crit_edge [
    i16 4524, label %entry.cleanup_crit_edge
    i16 60, label %entry.cleanup_crit_edge9
    i16 64, label %entry.cleanup_crit_edge10
    i16 86, label %entry.cleanup_crit_edge11
    i16 70, label %entry.cleanup_crit_edge12
    i16 80, label %entry.cleanup_crit_edge13
    i16 65, label %entry.sw.bb1_crit_edge
    i16 62, label %entry.sw.bb1_crit_edge14
    i16 66, label %sw.bb5
  ]

entry.sw.bb1_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.cleanup_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.sw.epilog6_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog6

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge14
  %bus_param = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 136
  %5 = ptrtoint ptr %bus_param to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus_param, align 4
  %and = lshr i32 %6, 8
  %shr = and i32 %and, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %shr)
  %7 = icmp ult i32 %shr, 11
  br i1 %7, label %switch.hole_check, label %sw.bb1.sw.epilog6_crit_edge

sw.bb1.sw.epilog6_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog6

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog6:                                       ; preds = %switch.hole_check.sw.epilog6_crit_edge, %sw.bb1.sw.epilog6_crit_edge, %entry.sw.epilog6_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.126) #9
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb1
  %switch.maskindex = trunc i32 %shr to i16
  %switch.shifted = lshr i16 1847, %switch.maskindex
  %8 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %switch.lobit.not = icmp eq i16 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog6_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog6_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog6

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.ath10k_pci_get_num_banks, i32 0, i32 %shr
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %sw.epilog6, %sw.bb5, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge9, %entry.cleanup_crit_edge10, %entry.cleanup_crit_edge11, %entry.cleanup_crit_edge12, %entry.cleanup_crit_edge13
  %retval.0 = phi i32 [ 1, %sw.epilog6 ], [ 9, %sw.bb5 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge9 ], [ 1, %entry.cleanup_crit_edge10 ], [ 1, %entry.cleanup_crit_edge11 ], [ 1, %entry.cleanup_crit_edge12 ], [ 1, %entry.cleanup_crit_edge13 ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_pci_wake(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %pci_ps = getelementptr inbounds %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 17
  %0 = ptrtoint ptr %pci_ps to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pci_ps, align 1, !range !391
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  %ps_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ps_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %do.body2.if.then13_crit_edge

do.body2.if.then13_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

lor.lhs.false:                                    ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_wake, %if.then13)) #9
          to label %do.end18 [label %if.then13], !srcloc !390

if.then13:                                        ; preds = %lor.lhs.false, %do.body2.if.then13_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %ps_wake_refcount = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 14, i32 0, i32 0, i32 0, i32 0, i32 3
  %3 = ptrtoint ptr %ps_wake_refcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ps_wake_refcount, align 4
  %ps_awake = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 16
  %5 = ptrtoint ptr %ps_awake to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ps_awake, align 4, !range !391
  %7 = zext i8 %6 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 16384, ptr noundef nonnull @.str.120, i32 noundef %4, i32 noundef %7) #9
  br label %do.end18

do.end18:                                         ; preds = %if.then13, %lor.lhs.false
  %ps_awake19 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 16
  %8 = ptrtoint ptr %ps_awake19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ps_awake19, align 4, !range !391
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool20.not = icmp eq i8 %9, 0
  br i1 %tobool20.not, label %if.then21, label %do.end18.if.then31_crit_edge

do.end18.if.then31_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then21:                                        ; preds = %do.end18
  tail call fastcc void @__ath10k_pci_wake(ptr noundef %ar)
  %mem.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 12
  %regs.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %hw_values.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  br label %while.body.i

while.body.i:                                     ; preds = %cond.false6.i.while.body.i_crit_edge, %if.then21
  %curr_delay.027.i = phi i32 [ 5, %if.then21 ], [ %spec.select.i, %cond.false6.i.while.body.i_crit_edge ]
  %tot_delay.026.i = phi i32 [ 0, %if.then21 ], [ %add.i, %cond.false6.i.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem.i.i, align 4
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %pcie_local_base_address.i.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %pcie_local_base_address.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcie_local_base_address.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !392
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  %and.i.i = and i32 %17, 7
  %18 = ptrtoint ptr %hw_values.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_values.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %21)
  %cmp.i.i = icmp eq i32 %and.i.i, %21
  br i1 %cmp.i.i, label %if.then.i, label %cond.false6.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %tot_delay.026.i)
  %cmp1.i = icmp sgt i32 %tot_delay.026.i, 10000
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i.if.then25_crit_edge

if.then.i.if.then25_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.lhs.trunc.i = trunc i32 %tot_delay.026.i to i16
  %div2324.i = udiv i16 %div23.lhs.trunc.i, 1000
  %div23.zext.i = zext i16 %div2324.i to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.122, i32 noundef %div23.zext.i) #9
  br label %if.then25

cond.false6.i:                                    ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %22(i32 noundef %curr_delay.027.i) #9
  %add.i = add i32 %tot_delay.026.i, %curr_delay.027.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %curr_delay.027.i)
  %cmp8.i = icmp slt i32 %curr_delay.027.i, 50
  %add10.i = add i32 %curr_delay.027.i, 5
  %spec.select.i = select i1 %cmp8.i, i32 %add10.i, i32 %curr_delay.027.i
  %cmp.i = icmp slt i32 %add.i, 30000
  br i1 %cmp.i, label %cond.false6.i.while.body.i_crit_edge, label %cond.false6.i.if.end61_crit_edge

cond.false6.i.if.end61_crit_edge:                 ; preds = %cond.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

cond.false6.i.while.body.i_crit_edge:             ; preds = %cond.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.then25:                                        ; preds = %if.then2.i, %if.then.i.if.then25_crit_edge
  %23 = ptrtoint ptr %ps_awake19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %ps_awake19, align 4
  br label %if.then31

if.then31:                                        ; preds = %if.then25, %do.end18.if.then31_crit_edge
  %ps_wake_refcount32 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 14, i32 0, i32 0, i32 0, i32 0, i32 3
  %24 = ptrtoint ptr %ps_wake_refcount32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ps_wake_refcount32, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %ps_wake_refcount32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp34 = icmp eq i32 %inc, 0
  br i1 %cmp34, label %do.end47, label %if.then31.if.end61_crit_edge, !prof !389

if.then31.if.end61_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

do.end47:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 558, i32 noundef 9, ptr noundef null) #9
  br label %if.end61

if.end61:                                         ; preds = %do.end47, %if.then31.if.end61_crit_edge, %cond.false6.i.if.end61_crit_edge
  %ret.085 = phi i32 [ 0, %if.then31.if.end61_crit_edge ], [ 0, %do.end47 ], [ -110, %cond.false6.i.if.end61_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ps_lock, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.085, %if.end61 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_pci_sleep(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %pci_ps = getelementptr inbounds %struct.ath10k_pci, ptr %drv_priv.i, i32 0, i32 17
  %0 = ptrtoint ptr %pci_ps to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pci_ps, align 1, !range !391
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  %ps_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ps_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %do.body2.if.then13_crit_edge

do.body2.if.then13_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

lor.lhs.false:                                    ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_pci_sleep, %if.then13)) #9
          to label %do.end18 [label %if.then13], !srcloc !390

if.then13:                                        ; preds = %lor.lhs.false, %do.body2.if.then13_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %ps_wake_refcount = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 14, i32 0, i32 0, i32 0, i32 0, i32 3
  %3 = ptrtoint ptr %ps_wake_refcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ps_wake_refcount, align 4
  %ps_awake = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 16
  %5 = ptrtoint ptr %ps_awake to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ps_awake, align 4, !range !391
  %7 = zext i8 %6 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 16384, ptr noundef nonnull @.str.123, i32 noundef %4, i32 noundef %7) #9
  br label %do.end18

do.end18:                                         ; preds = %if.then13, %lor.lhs.false
  %ps_wake_refcount19 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 14, i32 0, i32 0, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %ps_wake_refcount19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ps_wake_refcount19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp20 = icmp eq i32 %9, 0
  br i1 %cmp20, label %do.end33, label %if.end49.critedge, !prof !389

do.end33:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 579, i32 noundef 9, ptr noundef null) #9
  br label %skip

if.end49.critedge:                                ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %9, -1
  %10 = ptrtoint ptr %ps_wake_refcount19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec, ptr %ps_wake_refcount19, align 4
  %ps_timer = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 14, i32 0, i32 0, i32 0, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %11, 6
  %call52 = tail call i32 @mod_timer(ptr noundef %ps_timer, i32 noundef %add) #9
  br label %skip

skip:                                             ; preds = %if.end49.critedge, %do.end33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ps_lock, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %skip, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ath10k_pci_wake(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 10
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !389

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 442, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %1 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %lor.lhs.false, label %if.end.if.then28_crit_edge

if.end.if.then28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@__ath10k_pci_wake, %if.then28)) #9
          to label %do.end32 [label %if.then28], !srcloc !390

if.then28:                                        ; preds = %lor.lhs.false, %if.end.if.then28_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %ps_wake_refcount = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 14, i32 0, i32 0, i32 0, i32 0, i32 3
  %2 = ptrtoint ptr %ps_wake_refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ps_wake_refcount, align 4
  %ps_awake = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 16
  %4 = ptrtoint ptr %ps_awake to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ps_awake, align 4, !range !391
  %6 = zext i8 %5 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 16384, ptr noundef nonnull @.str.121, i32 noundef %3, i32 noundef %6) #9
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %lor.lhs.false
  %mem = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 12
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem, align 4
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %pcie_local_base_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %pcie_local_base_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pcie_local_base_address, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %12
  %add.ptr33 = getelementptr i8, ptr %add.ptr, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !394
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 16777216) #9, !srcloc !395
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ath10k_pci_sleep(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 10
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !389

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 456, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %1 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %lor.lhs.false, label %if.end.if.then28_crit_edge

if.end.if.then28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@__ath10k_pci_sleep, %if.then28)) #9
          to label %do.end32 [label %if.then28], !srcloc !390

if.then28:                                        ; preds = %lor.lhs.false, %if.end.if.then28_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %ps_wake_refcount = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 14, i32 0, i32 0, i32 0, i32 0, i32 3
  %2 = ptrtoint ptr %ps_wake_refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ps_wake_refcount, align 4
  %ps_awake = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 16
  %4 = ptrtoint ptr %ps_awake to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ps_awake, align 4, !range !391
  %6 = zext i8 %5 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 16384, ptr noundef nonnull @.str.128, i32 noundef %3, i32 noundef %6) #9
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %lor.lhs.false
  %mem = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 12
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem, align 4
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %pcie_local_base_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %pcie_local_base_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pcie_local_base_address, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %12
  %add.ptr33 = getelementptr i8, ptr %add.ptr, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !394
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 0) #9, !srcloc !395
  %ps_awake34 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 16
  %13 = ptrtoint ptr %ps_awake34 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %ps_awake34, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_disable_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_interrupt_handler(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.ath10k, ptr %arg, i32 0, i32 37
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %fw_indicator_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %fw_indicator_address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_indicator_address.i, align 4
  %ce_priv.i.i.i = getelementptr inbounds %struct.ath10k, ptr %arg, i32 0, i32 131
  %4 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i.i = getelementptr inbounds %struct.ath10k_ce, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1.i.i = tail call i32 %9(ptr noundef %arg, i32 noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp.i = icmp eq i32 %call1.i.i, -1
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @ath10k_pci_force_wake(ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %arg, ptr noundef nonnull @.str.139, i32 noundef %call2) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %oper_irq_mode = getelementptr inbounds %struct.ath10k, ptr %arg, i32 0, i32 143, i32 20
  %10 = ptrtoint ptr %oper_irq_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oper_irq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %land.lhs.true, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end4
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %soc_core_base_address.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %soc_core_base_address.i, align 4
  %add.i = add i32 %15, 12
  %16 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i.i20 = getelementptr inbounds %struct.ath10k_ce, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %bus_ops.i.i20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus_ops.i.i20, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call1.i.i21 = tail call i32 %21(ptr noundef %arg, i32 noundef %add.i) #9
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %pcie_intr_fw_mask.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %23, i32 0, i32 25
  %24 = ptrtoint ptr %pcie_intr_fw_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pcie_intr_fw_mask.i, align 4
  %pcie_intr_ce_mask_all.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %23, i32 0, i32 26
  %26 = ptrtoint ptr %pcie_intr_ce_mask_all.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pcie_intr_ce_mask_all.i, align 4
  %or.i = or i32 %27, %25
  %and.i = and i32 %or.i, %call1.i.i21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end4.if.end7_crit_edge
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address.i23 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %soc_core_base_address.i23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %soc_core_base_address.i23, align 4
  %add.i24 = add i32 %31, 8
  %32 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i.i26 = getelementptr inbounds %struct.ath10k_ce, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %bus_ops.i.i26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus_ops.i.i26, align 4
  %write32.i.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i.i, align 4
  tail call void %37(ptr noundef %arg, i32 noundef %add.i24, i32 noundef 0) #9
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address2.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %soc_core_base_address2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %soc_core_base_address2.i, align 4
  %pcie_intr_clr_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %39, i32 0, i32 27
  %42 = ptrtoint ptr %pcie_intr_clr_address.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pcie_intr_clr_address.i, align 4
  %add4.i = add i32 %43, %41
  %pcie_intr_fw_mask.i27 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %39, i32 0, i32 25
  %44 = ptrtoint ptr %pcie_intr_fw_mask.i27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pcie_intr_fw_mask.i27, align 4
  %pcie_intr_ce_mask_all.i28 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %39, i32 0, i32 26
  %46 = ptrtoint ptr %pcie_intr_ce_mask_all.i28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pcie_intr_ce_mask_all.i28, align 4
  %or.i29 = or i32 %47, %45
  %48 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i19.i = getelementptr inbounds %struct.ath10k_ce, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %bus_ops.i19.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus_ops.i19.i, align 4
  %write32.i20.i = getelementptr inbounds %struct.ath10k_bus_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write32.i20.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write32.i20.i, align 4
  tail call void %53(ptr noundef %arg, i32 noundef %add4.i, i32 noundef %or.i29) #9
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address8.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %soc_core_base_address8.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %soc_core_base_address8.i, align 4
  %add9.i = add i32 %57, 8
  %58 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i22.i = getelementptr inbounds %struct.ath10k_ce, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %bus_ops.i22.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus_ops.i22.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %call1.i.i30 = tail call i32 %63(ptr noundef %arg, i32 noundef %add9.i) #9
  %hw_rev.i = getelementptr inbounds %struct.ath10k, ptr %arg, i32 0, i32 6
  %64 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hw_rev.i, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %65, label %if.end7.ath10k_pci_irq_msi_fw_mask.exit_crit_edge [
    i32 0, label %if.end7.sw.bb.i_crit_edge
    i32 7, label %if.end7.sw.bb.i_crit_edge39
    i32 1, label %if.end7.sw.bb.i_crit_edge40
    i32 5, label %if.end7.sw.bb.i_crit_edge41
  ]

if.end7.sw.bb.i_crit_edge41:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end7.sw.bb.i_crit_edge40:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end7.sw.bb.i_crit_edge39:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end7.sw.bb.i_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end7.ath10k_pci_irq_msi_fw_mask.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_irq_msi_fw_mask.exit

sw.bb.i:                                          ; preds = %if.end7.sw.bb.i_crit_edge, %if.end7.sw.bb.i_crit_edge39, %if.end7.sw.bb.i_crit_edge40, %if.end7.sw.bb.i_crit_edge41
  %67 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address.i32 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %soc_core_base_address.i32 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %soc_core_base_address.i32, align 4
  %71 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i.i34 = getelementptr inbounds %struct.ath10k_ce, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %bus_ops.i.i34 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bus_ops.i.i34, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %call1.i.i35 = tail call i32 %76(ptr noundef %arg, i32 noundef %70) #9
  %and.i36 = and i32 %call1.i.i35, -2049
  %77 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address2.i37 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %soc_core_base_address2.i37 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %soc_core_base_address2.i37, align 4
  %81 = ptrtoint ptr %ce_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ce_priv.i.i.i, align 4
  %bus_ops.i11.i = getelementptr inbounds %struct.ath10k_ce, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %bus_ops.i11.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bus_ops.i11.i, align 4
  %write32.i.i38 = getelementptr inbounds %struct.ath10k_bus_ops, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %write32.i.i38 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write32.i.i38, align 4
  tail call void %86(ptr noundef %arg, i32 noundef %80, i32 noundef %and.i36) #9
  br label %ath10k_pci_irq_msi_fw_mask.exit

ath10k_pci_irq_msi_fw_mask.exit:                  ; preds = %sw.bb.i, %if.end7.ath10k_pci_irq_msi_fw_mask.exit_crit_edge
  %napi = getelementptr inbounds %struct.ath10k, ptr %arg, i32 0, i32 126
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call.i, label %if.then.i, label %ath10k_pci_irq_msi_fw_mask.exit.cleanup_crit_edge

ath10k_pci_irq_msi_fw_mask.exit.cleanup_crit_edge: ; preds = %ath10k_pci_irq_msi_fw_mask.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %ath10k_pci_irq_msi_fw_mask.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %ath10k_pci_irq_msi_fw_mask.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 1, %ath10k_pci_irq_msi_fw_mask.exit.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @ath10k_pci_sleep_sync(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_pci_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drv_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 142
  %2 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !388
  %call2.i = tail call fastcc i32 @ath10k_pci_force_wake(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then

if.end.i:                                         ; preds = %entry
  %call3.i = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef 64, ptr noundef nonnull %val.i) #9
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %and.i = and i32 %6, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.i.ath10k_pci_resume.exit.thread_crit_edge, label %if.then4.i

if.end.i.ath10k_pci_resume.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_pci_resume.exit.thread

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i = and i32 %6, -65281
  %call6.i = call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef 64, i32 noundef %and5.i) #9
  br label %ath10k_pci_resume.exit.thread

ath10k_pci_resume.exit.thread:                    ; preds = %if.then4.i, %if.end.i.ath10k_pci_resume.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.144, i32 noundef %call2.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.143, i32 noundef %call2.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %ath10k_pci_resume.exit.thread
  ret i32 %call2.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

attributes #0 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !91, !93, !95, !97, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !145, !146, !148, !150, !152, !153, !155, !157, !159, !160, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !220, !221, !222, !224, !225, !226, !228, !230, !232, !233, !234, !235, !236, !237, !239, !241, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376}
!llvm.module.flags = !{!378, !379, !380, !381, !382, !383, !384, !385}
!llvm.ident = !{!386}

!0 = !{ptr @__param_irq_mode, !1, !"__param_irq_mode", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_irq_modetype403, !1, !"__UNIQUE_ID_irq_modetype403", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_irq_mode404, !4, !"__UNIQUE_ID_irq_mode404", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 35, i32 1}
!5 = !{ptr @__param_reset_mode, !6, !"__param_reset_mode", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 37, i32 1}
!7 = !{ptr @__UNIQUE_ID_reset_modetype405, !6, !"__UNIQUE_ID_reset_modetype405", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_reset_mode406, !9, !"__UNIQUE_ID_reset_mode406", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 38, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1155, i32 19}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1375, i32 3}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1378, i32 50}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1429, i32 2}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1792, i32 2}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1830, i32 2}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1842, i32 4}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1871, i32 2}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2343, i32 18}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2349, i32 18}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2358, i32 18}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2364, i32 18}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2374, i32 18}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2383, i32 18}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2389, i32 18}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2397, i32 18}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2406, i32 18}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2417, i32 18}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2426, i32 18}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2439, i32 18}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2448, i32 18}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2456, i32 18}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2502, i32 19}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2535, i32 19}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2878, i32 2}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3288, i32 2}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3295, i32 3}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3320, i32 18}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3325, i32 19}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3330, i32 18}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3335, i32 2}
!72 = !{ptr @ath10k_pci_setup_resource.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3462, i32 2}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ath10k_pci_setup_resource.__key.32, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3463, i32 2}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ath10k_pci_setup_resource.__key.34, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3464, i32 2}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ath10k_pci_setup_resource.__key.36, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3466, i32 2}
!83 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ath10k_pci_setup_resource.__key.38, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3468, i32 2}
!86 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3497, i32 18}
!89 = !{ptr @__initcall__kmod_ath10k_pci__418_3809_ath10k_pci_init6, !90, !"__initcall__kmod_ath10k_pci__418_3809_ath10k_pci_init6", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3809, i32 1}
!91 = !{ptr @__exitcall_ath10k_pci_exit, !92, !"__exitcall_ath10k_pci_exit", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3817, i32 1}
!93 = !{ptr @__UNIQUE_ID_author419, !94, !"__UNIQUE_ID_author419", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3819, i32 1}
!95 = !{ptr @__UNIQUE_ID_description420, !96, !"__UNIQUE_ID_description420", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3820, i32 1}
!97 = !{ptr @__UNIQUE_ID_file421, !98, !"__UNIQUE_ID_file421", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3821, i32 1}
!99 = !{ptr @__UNIQUE_ID_license422, !98, !"__UNIQUE_ID_license422", i1 false, i1 false}
!100 = !{ptr @__UNIQUE_ID_firmware423, !101, !"__UNIQUE_ID_firmware423", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3824, i32 1}
!102 = !{ptr @__UNIQUE_ID_firmware424, !103, !"__UNIQUE_ID_firmware424", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3825, i32 1}
!104 = !{ptr @__UNIQUE_ID_firmware425, !105, !"__UNIQUE_ID_firmware425", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3826, i32 1}
!106 = !{ptr @__UNIQUE_ID_firmware426, !107, !"__UNIQUE_ID_firmware426", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3827, i32 1}
!108 = !{ptr @__UNIQUE_ID_firmware427, !109, !"__UNIQUE_ID_firmware427", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3828, i32 1}
!110 = !{ptr @__UNIQUE_ID_firmware428, !111, !"__UNIQUE_ID_firmware428", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3829, i32 1}
!112 = !{ptr @__UNIQUE_ID_firmware429, !113, !"__UNIQUE_ID_firmware429", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3832, i32 1}
!114 = !{ptr @__UNIQUE_ID_firmware430, !115, !"__UNIQUE_ID_firmware430", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3833, i32 1}
!116 = !{ptr @__UNIQUE_ID_firmware431, !117, !"__UNIQUE_ID_firmware431", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3834, i32 1}
!118 = !{ptr @__UNIQUE_ID_firmware432, !119, !"__UNIQUE_ID_firmware432", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3837, i32 1}
!120 = !{ptr @__UNIQUE_ID_firmware433, !121, !"__UNIQUE_ID_firmware433", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3838, i32 1}
!122 = !{ptr @__UNIQUE_ID_firmware434, !123, !"__UNIQUE_ID_firmware434", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3839, i32 1}
!124 = !{ptr @__UNIQUE_ID_firmware435, !125, !"__UNIQUE_ID_firmware435", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3840, i32 1}
!126 = !{ptr @__UNIQUE_ID_firmware436, !127, !"__UNIQUE_ID_firmware436", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3843, i32 1}
!128 = !{ptr @__UNIQUE_ID_firmware437, !129, !"__UNIQUE_ID_firmware437", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3844, i32 1}
!130 = !{ptr @__UNIQUE_ID_firmware438, !131, !"__UNIQUE_ID_firmware438", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3845, i32 1}
!132 = !{ptr @__UNIQUE_ID_firmware439, !133, !"__UNIQUE_ID_firmware439", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3846, i32 1}
!134 = !{ptr @__UNIQUE_ID_firmware440, !135, !"__UNIQUE_ID_firmware440", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3847, i32 1}
!136 = !{ptr @__UNIQUE_ID_firmware441, !137, !"__UNIQUE_ID_firmware441", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3850, i32 1}
!138 = !{ptr @__UNIQUE_ID_firmware442, !139, !"__UNIQUE_ID_firmware442", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3851, i32 1}
!140 = !{ptr @__UNIQUE_ID_firmware443, !141, !"__UNIQUE_ID_firmware443", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3852, i32 1}
!142 = !{ptr @__param_str_irq_mode, !1, !"__param_str_irq_mode", i1 false, i1 false}
!143 = !{ptr @ath10k_pci_irq_mode, !144, !"ath10k_pci_irq_mode", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 31, i32 21}
!145 = !{ptr @__param_str_reset_mode, !6, !"__param_str_reset_mode", i1 false, i1 false}
!146 = !{ptr @ath10k_pci_reset_mode, !147, !"ath10k_pci_reset_mode", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 32, i32 21}
!148 = !{ptr @.str.41, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 826, i32 20}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 777, i32 2}
!152 = !{ptr @.str.42, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.43, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 783, i32 19}
!155 = distinct !{null, !156, !"__already_done", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 890, i32 6}
!157 = distinct !{null, !158, !"__already_done", i1 false, i1 false}
!158 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!159 = !{ptr @.str.44, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.45, !158, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.46, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2256, i32 3}
!163 = distinct !{null, !164, !"__already_done", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2217, i32 6}
!165 = !{ptr @.str.47, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2221, i32 19}
!167 = !{ptr @.str.48, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1765, i32 33}
!169 = !{ptr @.str.49, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1767, i32 33}
!171 = !{ptr @.str.50, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1769, i32 17}
!173 = !{ptr @.str.51, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1446, i32 18}
!175 = !{ptr @.str.52, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1452, i32 17}
!177 = !{ptr @.str.53, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1454, i32 18}
!179 = !{ptr @.str.54, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1029, i32 19}
!181 = !{ptr @.str.55, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1036, i32 19}
!183 = !{ptr @.str.56, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1686, i32 20}
!185 = !{ptr @.str.57, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1702, i32 21}
!187 = !{ptr @.str.58, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1573, i32 19}
!189 = !{ptr @.str.59, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1611, i32 19}
!191 = !{ptr @.str.60, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1647, i32 19}
!193 = !{ptr @.str.61, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1482, i32 19}
!195 = !{ptr @.str.62, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1503, i32 20}
!197 = !{ptr @.str.63, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1517, i32 21}
!199 = !{ptr @.str.64, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1527, i32 20}
!201 = !{ptr @.str.65, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1537, i32 20}
!203 = !{ptr @pci_host_ce_config_wlan, !204, !"pci_host_ce_config_wlan", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 119, i32 29}
!205 = !{ptr @.str.66, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1211, i32 20}
!207 = !{ptr @.str.67, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1222, i32 3}
!209 = !{ptr @.str.68, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1224, i32 50}
!211 = !{ptr @pci_target_ce_config_wlan, !212, !"pci_target_ce_config_wlan", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 225, i32 36}
!213 = !{ptr @pci_target_service_to_ce_map_wlan, !214, !"pci_target_service_to_ce_map_wlan", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 338, i32 40}
!215 = !{ptr @.str.69, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3798, i32 8}
!217 = !{ptr @.str.70, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3800, i32 3}
!219 = !{ptr @.str.71, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @ath10k_pci_init._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @ath10k_pci_init._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.73, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3805, i32 3}
!224 = !{ptr @ath10k_pci_init._entry.72, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @ath10k_pci_init._entry_ptr.74, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @ath10k_pci_driver, !227, !"ath10k_pci_driver", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3784, i32 26}
!228 = !{ptr @ath10k_pci_id_table, !229, !"ath10k_pci_id_table", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 53, i32 35}
!230 = !{ptr @.str.75, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3606, i32 3}
!232 = !{ptr @.str.76, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.77, !231, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.78, !231, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @ath10k_pci_probe._entry, !231, !"_entry", i1 false, i1 false}
!236 = !{ptr @ath10k_pci_probe._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.79, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3610, i32 2}
!239 = !{ptr @ath10k_pci_probe.__key, !240, !"__key", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3631, i32 2}
!241 = !{ptr @.str.80, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.81, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3635, i32 18}
!244 = !{ptr @.str.82, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3641, i32 18}
!246 = !{ptr @.str.83, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3647, i32 19}
!248 = distinct !{null, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3656, i32 18}
!250 = !{ptr @.str.85, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3660, i32 18}
!252 = !{ptr @.str.86, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3666, i32 19}
!254 = !{ptr @.str.87, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3690, i32 18}
!256 = !{ptr @.str.88, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3707, i32 18}
!258 = !{ptr @.str.89, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3714, i32 17}
!260 = !{ptr @.str.90, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2624, i32 2}
!262 = !{ptr @.str.91, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2649, i32 19}
!264 = !{ptr @.str.92, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2653, i32 2}
!266 = !{ptr @.str.93, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2679, i32 2}
!268 = !{ptr @.str.94, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2691, i32 20}
!270 = !{ptr @.str.95, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2708, i32 20}
!272 = !{ptr @.str.96, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2716, i32 20}
!274 = !{ptr @.str.97, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2721, i32 3}
!276 = !{ptr @.str.98, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2726, i32 19}
!278 = distinct !{null, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2732, i32 19}
!280 = !{ptr @.str.100, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2738, i32 19}
!282 = !{ptr @.str.101, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2743, i32 2}
!284 = !{ptr @.str.102, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3343, i32 2}
!286 = !{ptr @.str.103, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3369, i32 2}
!288 = !{ptr @.str.104, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2752, i32 2}
!290 = !{ptr @.str.105, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2771, i32 19}
!292 = !{ptr @.str.106, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2775, i32 2}
!294 = !{ptr @.str.107, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2784, i32 2}
!296 = !{ptr @.str.108, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2799, i32 2}
!298 = !{ptr @ath10k_pci_hif_ops, !299, !"ath10k_pci_hif_ops", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3072, i32 36}
!300 = !{ptr @.str.109, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 1959, i32 2}
!302 = !{ptr @.str.110, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2074, i32 2}
!304 = !{ptr @.str.111, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2820, i32 2}
!306 = !{ptr @.str.112, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2840, i32 20}
!308 = !{ptr @.str.113, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2851, i32 18}
!310 = !{ptr @.str.114, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2857, i32 18}
!312 = distinct !{null, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2863, i32 18}
!314 = !{ptr @.str.116, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3015, i32 18}
!316 = !{ptr @.str.117, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3024, i32 18}
!318 = !{ptr @ath10k_pci_bus_ops, !319, !"ath10k_pci_bus_ops", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3526, i32 36}
!320 = !{ptr @.str.118, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 658, i32 19}
!322 = !{ptr @.str.119, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 665, i32 19}
!324 = !{ptr @.str.120, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 542, i32 2}
!326 = !{ptr @.str.121, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 444, i32 2}
!328 = !{ptr @.str.122, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 475, i32 21}
!330 = !{ptr @.str.123, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 576, i32 2}
!332 = !{ptr @.str.124, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 635, i32 19}
!334 = !{ptr @.str.125, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 642, i32 19}
!336 = !{ptr @.str.126, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2310, i32 18}
!338 = !{ptr @.str.127, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 599, i32 2}
!340 = !{ptr @.str.128, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 458, i32 2}
!342 = !{ptr @.str.129, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3384, i32 18}
!344 = !{ptr @.str.130, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3388, i32 42}
!346 = !{ptr @.str.131, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3390, i32 18}
!348 = !{ptr @.str.132, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3398, i32 18}
!350 = !{ptr @.str.133, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3408, i32 18}
!352 = !{ptr @.str.134, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3413, i32 2}
!354 = !{ptr @.str.135, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3230, i32 19}
!356 = !{ptr @.str.136, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 759, i32 10}
!358 = !{ptr @.str.137, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 761, i32 9}
!360 = !{ptr @.str.138, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3187, i32 19}
!362 = !{ptr @.str.139, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3108, i32 19}
!364 = !{ptr @.str.140, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3170, i32 19}
!366 = !{ptr @ath10k_pci_supp_chips, !367, !"ath10k_pci_supp_chips", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 68, i32 42}
!368 = !{ptr @.str.141, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3740, i32 2}
!370 = !{ptr @ath10k_pci_pm_ops, !371, !"ath10k_pci_pm_ops", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3780, i32 8}
!372 = distinct !{null, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3763, i32 19}
!374 = !{ptr @.str.143, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 3775, i32 19}
!376 = !{ptr @.str.144, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/ath/ath10k/pci.c", i32 2918, i32 18}
!378 = !{i32 1, !"wchar_size", i32 2}
!379 = !{i32 1, !"min_enum_size", i32 4}
!380 = !{i32 8, !"branch-target-enforcement", i32 0}
!381 = !{i32 8, !"sign-return-address", i32 0}
!382 = !{i32 8, !"sign-return-address-all", i32 0}
!383 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!384 = !{i32 7, !"uwtable", i32 1}
!385 = !{i32 7, !"frame-pointer", i32 2}
!386 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!387 = !{!"branch_weights", i32 2000, i32 1}
!388 = !{!"auto-init"}
!389 = !{!"branch_weights", i32 1, i32 2000}
!390 = !{i64 2148581148, i64 2148581153, i64 2148581166, i64 2148581210, i64 2148581244, i64 2148581265}
!391 = !{i8 0, i8 2}
!392 = !{i64 5076163}
!393 = !{i64 2152616512}
!394 = !{i64 2152617867}
!395 = !{i64 5075745}
!396 = !{ptr @ath10k_htc_rx_completion_handler, ptr @ath10k_htt_rx_pktlog_completion_handler}
