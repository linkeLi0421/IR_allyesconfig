; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/sdio.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.92 }
%struct.atomic_t = type { i32 }
%union.anon.92 = type { i32 }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath10k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.141, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.187, i32, i32, i32, %struct.anon.188, %struct.anon.189, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.194, i32, %struct.anon.195, %struct.anon.196, %struct.anon.197, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.198, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
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
%struct.anon.141 = type { i32, ptr }
%struct.ath10k_bmi = type { i8 }
%struct.ath10k_wmi = type { i32, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.idr, i32, i32, [16 x %struct.ath10k_mem_chunk] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ath10k_mem_chunk = type { ptr, i32, i32, i32 }
%struct.ath10k_htc = type { ptr, [9 x %struct.ath10k_htc_ep], %struct.spinlock, %struct.ath10k_htc_ops, [256 x i8], i32, %struct.completion, i32, i32, i8, i32 }
%struct.ath10k_htc_ep = type { ptr, i32, i32, %struct.ath10k_htc_ep_ops, i32, i32, i8, i8, i8, i32, i32, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.ath10k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.ath10k_htc_ops = type { ptr }
%struct.ath10k_htt = type { ptr, i32, %struct.sk_buff_head, i8, i8, %struct.completion, i8, i8, ptr, i32, %struct.anon.142, i32, %struct.spinlock, i32, i32, i32, %struct.idr, %struct.wait_queue_head, %struct.anon.146, i8, %struct.atomic_t, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ieee80211_rx_status, %struct.anon.148, %struct.anon.151, %struct.anon.161, i8, ptr, ptr, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, [4 x i8] }
%struct.anon.142 = type { ptr, i8, [16 x %struct.hlist_head], %union.anon.143, i32, i32, i32, i32, i32, %struct.anon.144, %struct.anon.145, %struct.timer_list, %struct.spinlock }
%struct.hlist_head = type { ptr }
%union.anon.143 = type { ptr }
%struct.anon.144 = type { ptr, i32 }
%struct.anon.145 = type { i32 }
%struct.anon.146 = type { %union.anon.147, [0 x %struct.htt_tx_done] }
%union.anon.147 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.htt_tx_done = type { i16, i16, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.anon.148 = type { i32, %union.anon.149, i32 }
%union.anon.149 = type { ptr }
%struct.anon.151 = type { i32, %union.anon.152, i32 }
%union.anon.152 = type { ptr }
%struct.anon.161 = type { i8, ptr, i32, i16, i16, i16, i32, i32 }
%struct.ath10k_hw_params = type { i32, i16, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, %struct.ath10k_hw_params_fw, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath10k_hw_params_fw = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.ath10k_fw_components = type { ptr, ptr, i32, ptr, ptr, i32, %struct.ath10k_fw_file }
%struct.ath10k_fw_file = type { ptr, [32 x i8], [1 x i32], i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.anon.187 = type { i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, [32 x i8] }
%struct.anon.188 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.anon.189 = type { [6 x %struct.ieee80211_supported_band] }
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
%struct.anon.194 = type { ptr, i32, %struct.ath10k_spec_scan }
%struct.ath10k_spec_scan = type { i8, i8 }
%struct.anon.195 = type { ptr }
%struct.anon.196 = type { %struct.ath10k_fw_components, i8 }
%struct.anon.197 = type { i32, i32, i32, i32 }
%struct.ath10k_thermal = type { ptr, %struct.completion, i32, i32, i32 }
%struct.ath10k_wow = type { i32, %struct.completion, %struct.wiphy_wowlan_support }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ath10k_per_peer_tx_stats = type { i32, i32, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.106, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.125, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.106 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.125 = type { ptr }
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
%struct.anon.198 = type { i16, i32, i32, i32, i32, i32 }
%struct.ath10k_radar_found_info = type { i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath10k_bus_params = type { i32, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ath10k_fw_crash_data = type { %struct.guid_t, %struct.timespec64, [60 x i32], [12 x %struct.ath10k_ce_crash_data], ptr, i32 }
%struct.guid_t = type { [16 x i8] }
%struct.timespec64 = type { i64, i32 }
%struct.ath10k_ce_crash_data = type { i32, i32, i32, i32, i32 }
%struct.ath10k_hw_mem_layout = type { i32, i32, i32, %struct.anon.199 }
%struct.anon.199 = type { ptr, i32 }
%struct.ath10k_mem_region = type { i32, i32, i32, ptr, %struct.anon.200 }
%struct.anon.200 = type { ptr, i32 }
%struct.ath10k_mem_section = type { i32, i32 }
%struct.ath10k_dump_ram_data_hdr = type { i32, i32, i32, [0 x i8] }
%struct.ath10k_sdio_irq_enable_regs = type { i8, i8, i8, i8 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.ath10k_sdio = type { ptr, %struct.ath10k_mbox_info, i8, [9 x i32], [9 x i32], [1024 x %struct.ath10k_sdio_bus_request], %struct.list_head, %struct.sk_buff_head, %struct.spinlock, [64 x %struct.ath10k_sdio_rx_data], i32, ptr, %struct.ath10k_sdio_irq_data, ptr, ptr, i8, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.timer_list, i32 }
%struct.ath10k_mbox_info = type { i32, [2 x %struct.ath10k_mbox_ext_info], i32, i32, i32, i32 }
%struct.ath10k_mbox_ext_info = type { i32, i32 }
%struct.ath10k_sdio_bus_request = type { %struct.list_head, i32, ptr, i32, i32, i8, ptr }
%struct.ath10k_sdio_rx_data = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.ath10k_sdio_irq_data = type { %struct.mutex, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.129 = type { i32, i16 }
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
%struct.ath10k_hif_sg_item = type { i16, ptr, ptr, i32, i16 }
%struct.ath10k_sdio_irq_proc_regs = type { i8, i8, i8, i8, i8, i8, i8, i8, [8 x i32], i32 }
%struct.ath10k_htc_hdr = type { i8, i8, i16, %union.anon.153, %union.anon.154, %union.anon.155 }
%union.anon.153 = type { i8 }
%union.anon.154 = type { i8 }
%union.anon.155 = type { i16 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pUl\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"n/a\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware crashed! (guid %s)\0A\00", [35 x i8] zeroinitializer }, align 32
@ath10k_sdio_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str.29, ptr @ath10k_sdio_devices, ptr @ath10k_sdio_probe, ptr @ath10k_sdio_remove, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath10k_sdio_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_ath10k_sdio__541_2691_ath10k_sdio_init6 = internal global ptr @ath10k_sdio_init, section ".initcall6.init", align 4
@__exitcall_ath10k_sdio_exit = internal global ptr @ath10k_sdio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author542 = internal constant [36 x i8] c"ath10k_sdio.author=Qualcomm Atheros\00", section ".modinfo", align 1
@__UNIQUE_ID_description543 = internal constant [87 x i8] c"ath10k_sdio.description=Driver support for Qualcomm Atheros 802.11ac WLAN SDIO devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file544 = internal constant [61 x i8] c"ath10k_sdio.file=drivers/net/wireless/ath/ath10k/ath10k_sdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license545 = internal constant [33 x i8] c"ath10k_sdio.license=Dual BSD/GPL\00", section ".modinfo", align 1
@ath10k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sdio hi_option_flag2 %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unable to read host interest offset %d value\0A\00", [50 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to set mbox window read address: %d\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to read from mbox window data address: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to write 0x%x to address 0x%x: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sdio write32 addr 0x%x val 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to read from address 0x%x: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sdio read addr 0x%x buf 0x%p len %zu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdio read \00", [21 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_log_dbg = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to disable sdio interrupts: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to write to address 0x%x: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sdio write addr 0x%x buf 0x%p len %zu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio write \00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to read firmware dump area: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to read firmware dump value: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"firmware register dump:\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%02d]: 0x%08X 0x%08X 0x%08X 0x%08X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to read mem %d value\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"memory region %s size %d is larger that remaining ramdump buffer size %zu\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to copy ramdump region %s: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"incorrect memdump region 0x%x with section start address 0x%x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"incorrect ramdump format with start address 0x%x and stop address 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"next ramdump section 0x%x is smaller than current end address 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ramdump buffer is too small: %zu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to read ramdump from section 0x%x: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"failed to update mbox interrupt status register : %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ath10k_sdio\00", [20 x i8] zeroinitializer }, align 32
@ath10k_sdio_devices = internal constant { [3 x %struct.sdio_device_id], [60 x i8] } { [3 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 625, i16 1290, i32 0 }, %struct.sdio_device_id { i8 -1, i16 625, i16 1793, i32 0 }, %struct.sdio_device_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@ath10k_sdio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ath10k_sdio_pm_suspend, ptr @ath10k_sdio_pm_resume, ptr @ath10k_sdio_pm_suspend, ptr @ath10k_sdio_pm_resume, ptr @ath10k_sdio_pm_suspend, ptr @ath10k_sdio_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ath10k_sdio_hif_ops = internal constant { %struct.ath10k_hif_ops, [44 x i8] } { %struct.ath10k_hif_ops { ptr @ath10k_sdio_hif_tx_sg, ptr @ath10k_sdio_hif_diag_read, ptr @ath10k_sdio_hif_diag_write_mem, ptr @ath10k_sdio_bmi_exchange_msg, ptr @ath10k_sdio_hif_start, ptr @ath10k_sdio_hif_stop, ptr @ath10k_sdio_hif_start_post, ptr @ath10k_sdio_get_htt_tx_complete, ptr @ath10k_sdio_hif_map_service_to_pipe, ptr @ath10k_sdio_hif_get_default_pipe, ptr null, ptr null, ptr null, ptr null, ptr @ath10k_sdio_hif_power_up, ptr @ath10k_sdio_hif_power_down, ptr @ath10k_sdio_hif_suspend, ptr @ath10k_sdio_hif_resume, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ath10k_sdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.32, i32 2530, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to allocate core\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ath10k_sdio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/ath10k/sdio.c\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ath10k_sdio_probe._entry_ptr = internal global ptr @ath10k_sdio_probe._entry, section ".printk_index", align 4
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"sdio new func %d vendor 0x%x device 0x%x block 0x%x/0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@ath10k_sdio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ar_sdio->lock\00", [17 x i8] zeroinitializer }, align 32
@ath10k_sdio_probe.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ar_sdio->wr_async_lock\00", [40 x i8] zeroinitializer }, align 32
@ath10k_sdio_probe.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ar_sdio->irq_data.mtx\00", [41 x i8] zeroinitializer }, align 32
@ath10k_sdio_probe.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&ar_sdio->wr_async_work)\00", [53 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ath10k_sdio_wq\00", [17 x i8] zeroinitializer }, align 32
@ath10k_sdio_probe.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&ar_sdio->async_work_rx)\00", [53 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unsupported device id %u (0x%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register driver core: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ath10k_sdio_probe.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&ar_sdio->sleep_timer)\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unable to allocate bus request for async request\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"failed to write 0x%p to mbox window data address: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to set mbox window write address: %d\00", [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to send the bmi data to the device: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"unable to read the bmi data from the device: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.56 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"unable to decrement the command credit count register: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bmi communication timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sdio read32 addr 0x%x val 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to read RX_LOOKAHEAD_VALID: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bmi_recv_buf FIFO empty\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to claim sdio interrupt: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable sdio interrupts: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to process pending SDIO interrupts: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sdio pending mailbox msg lookahead 0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sdio host_int_status 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sdio pending irqs done %d status %d\00", [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"read int status fail, start recovery\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sdio mbox lookahead is zero\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get pending recv messages: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"the total number of pkts to be fetched (%u) exceeds maximum %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"payload length %d exceeds max htc length: %zu\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"exceeds length, start recovery\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"rx buffer requested with invalid htc_hdr length (%d, 0x%x): %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate a bundle: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"alloc_rx_pkt error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HTC bundle length %u exceeds maximum %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sdio vsg buffer size limit: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read bundle packets: %d\00", [62 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to read from fixed (sb) address 0x%x: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sdio readsb addr 0x%x buf 0x%p len %zu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdio readsb \00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid endpoint in look-ahead: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ep %d is not connected\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CPU interrupt status is zero\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"unable to write to cpu interrupt status address: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"failed to write value 0x%x to fixed sb address 0x%x: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sdio writesb32 addr 0x%x val 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdio error interrupt\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid error interrupt status: 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sdio error_int_status 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sdio interrupt error wakeup\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rx underflow interrupt error\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tx overflow interrupt error\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"unable to write to error int status address: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"firmware crashed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to clear debug interrupt: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to read fifo/chip control register: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed to write to FIFO_TIMEOUT_AND_CHIP_CONTROL: %d\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to disable mbox sleep: %d\00", [63 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sdio read rtc state: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read rtc state: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sdio irq disable request timed out\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to release sdio interrupt: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to read hi_acs_flags : %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sdio mailbox swap service enabled\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sdio mailbox swap service disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unable to read hi_acs_flags for htt tx comple : %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sdio reduce tx complete fw%sack\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" not \00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sdio wmi ctrl mbox_addr 0x%x mbox_size %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sdio htt data mbox_addr 0x%x mbox_size %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported HTC service id: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sdio hif get default pipe\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdio power on\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to config sdio: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to enable sdio function: %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sdio configuration\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable driver strength: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to enable 4-bit async irq mode: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to set sdio block size to %d: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdio power off\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to disable sdio function: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to reset sdio: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sdio resume configuring sdio\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"napi poll: done: %d, budget:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to write skb to 0x%x asynchronously: %d\00", [49 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sdio removed func %d vendor 0x%x device 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to set sdio host pm flags (0x%x, 0x%x): %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ath10k_sdio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.32, i32 2681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013sdio driver registration failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ath10k_sdio_init\00", [47 x i8] zeroinitializer }, align 32
@ath10k_sdio_init._entry_ptr = internal global ptr @ath10k_sdio_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1280, i64 1792]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 1280, i64 1792]
@__sancov_gen_cov_switch_values.135 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 256, i64 768]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967171]
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2495, i32 33 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2497, i32 33 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2499, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant [19 x i8] c"ath10k_sdio_driver\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2664, i32 27 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2240, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2210, i32 19 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1741, i32 19 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1748, i32 19 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 227, i32 19 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 232, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 307, i32 19 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 312, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 314, i32 50 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1563, i32 19 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 335, i32 19 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 340, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 342, i32 50 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2256, i32 19 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2268, i32 19 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2272, i32 17 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2274, i32 18 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2225, i32 20 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2445, i32 20 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2407, i32 19 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2302, i32 19 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2323, i32 20 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2337, i32 21 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2347, i32 20 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2357, i32 20 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1719, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2665, i32 10 }
@___asan_gen_.230 = private unnamed_addr constant [20 x i8] c"ath10k_sdio_devices\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2656, i32 36 }
@___asan_gen_.233 = private unnamed_addr constant [19 x i8] c"ath10k_sdio_pm_ops\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2173, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c"ath10k_sdio_hif_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2118, i32 36 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2530, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2537, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2578, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2579, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2580, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2585, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2586, i32 23 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2596, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2602, i32 18 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2622, i32 18 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2626, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1500, i32 8 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1792, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1800, i32 19 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1212, i32 9 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1276, i32 8 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1144, i32 9 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1156, i32 19 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 288, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1177, i32 20 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1186, i32 19 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1887, i32 19 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1896, i32 19 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1544, i32 19 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1023, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1035, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1071, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 964, i32 19 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 987, i32 20 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 791, i32 19 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 548, i32 19 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 559, i32 20 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 565, i32 20 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 574, i32 20 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 597, i32 21 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 621, i32 20 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 512, i32 8 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 686, i32 19 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 694, i32 19 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 362, i32 19 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 367, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 369, i32 50 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 439, i32 20 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 448, i32 20 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 897, i32 19 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 915, i32 19 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 258, i32 19 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 263, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 847, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 851, i32 19 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 856, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 861, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 865, i32 19 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 869, i32 19 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 878, i32 19 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 803, i32 18 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 810, i32 19 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1401, i32 19 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1416, i32 19 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1426, i32 21 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1430, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1381, i32 19 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1950, i32 19 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1956, i32 19 }
@___asan_gen_.471 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 87, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1817, i32 19 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1822, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1826, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1846, i32 8 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1852, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2086, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2093, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2098, i32 19 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2109, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1580, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1584, i32 18 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1592, i32 19 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 139, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 170, i32 19 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 185, i32 19 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 207, i32 19 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1621, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1631, i32 19 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1638, i32 19 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2012, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2190, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1332, i32 19 }
@___asan_gen_.545 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.549 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1984, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2643, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2160, i32 19 }
@___asan_gen_.557 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.563 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.564 = private constant [42 x i8] c"../drivers/net/wireless/ath/ath10k/sdio.c\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 2681, i32 3 }
@llvm.compiler.used = appending global [152 x ptr] [ptr @__UNIQUE_ID_author542, ptr @__UNIQUE_ID_description543, ptr @__UNIQUE_ID_file544, ptr @__UNIQUE_ID_license545, ptr @__exitcall_ath10k_sdio_exit, ptr @__initcall__kmod_ath10k_sdio__541_2691_ath10k_sdio_init6, ptr @ath10k_sdio_exit, ptr @ath10k_sdio_init._entry, ptr @ath10k_sdio_init._entry_ptr, ptr @ath10k_sdio_probe._entry, ptr @ath10k_sdio_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ath10k_sdio_driver, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @ath10k_sdio_devices, ptr @ath10k_sdio_pm_ops, ptr @ath10k_sdio_hif_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @ath10k_sdio_probe.__key, ptr @.str.36, ptr @ath10k_sdio_probe.__key.37, ptr @.str.38, ptr @ath10k_sdio_probe.__key.39, ptr @.str.40, ptr @ath10k_sdio_probe.__key.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @ath10k_sdio_probe.__key.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @ath10k_sdio_probe.__key.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @init_completion.__key, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @skb_queue_head_init.__key, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_sdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_sdio_devices to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_sdio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_sdio_hif_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_sdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_sdio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_sdio_probe.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_sdio_probe.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_sdio_probe.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_sdio_probe.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_sdio_probe.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_sdio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_sdio_fw_crashed_dump(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  %reg_dump_values.i = alloca [60 x i32], align 4
  %guid = alloca [37 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %guid) #10
  %0 = call ptr @memset(ptr %guid, i32 255, i32 37)
  %call = tail call fastcc zeroext i1 @ath10k_sdio_is_fast_dump_supported(ptr noundef %ar)
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath10k_bmi_start(ptr noundef %ar) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fw_crash_counter = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 120, i32 1
  %1 = ptrtoint ptr %fw_crash_counter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_crash_counter, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %fw_crash_counter, align 4
  %irq_data1.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1576
  %irq_en_reg.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1600
  %3 = ptrtoint ptr %irq_en_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_en_reg.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %irq_data1.i, i32 noundef 0) #10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 0, ptr %4, align 1
  %call2.i = tail call fastcc i32 @ath10k_sdio_write(ptr noundef %ar, i32 noundef 2088, ptr noundef %4, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.ath10k_sdio_disable_intrs.exit_crit_edge, label %if.then.i

if.end.ath10k_sdio_disable_intrs.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_disable_intrs.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.12, i32 noundef %call2.i) #10
  br label %ath10k_sdio_disable_intrs.exit

ath10k_sdio_disable_intrs.exit:                   ; preds = %if.then.i, %if.end.ath10k_sdio_disable_intrs.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %irq_data1.i) #10
  %call2 = tail call ptr @ath10k_coredump_new(ptr noundef %ar) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %ath10k_sdio_disable_intrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %guid, i32 noundef 37, ptr noundef nonnull @.str, ptr noundef nonnull %call2) #10
  br label %if.end9

if.else:                                          ; preds = %ath10k_sdio_disable_intrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %guid, i32 noundef 37, ptr noundef nonnull @.str.1) #10
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.2, ptr noundef nonnull %guid) #10
  call void @ath10k_print_driver_info(ptr noundef %ar) #10
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %reg_dump_values.i) #10
  %6 = call ptr @memset(ptr %reg_dump_values.i, i32 0, i32 240)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end9.if.then.i29_crit_edge, label %if.end.i.i.i

if.end9.if.then.i29_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i29

if.end.i.i.i:                                     ; preds = %if.end9
  %call1.i.i.i = call i32 @ath10k_sdio_hif_diag_read(ptr noundef %ar, i32 noundef 4196356, ptr noundef nonnull %call7.i.i.i.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i, label %ath10k_sdio_diag_read32.exit.i.i

ath10k_sdio_diag_read32.exit.i.i:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #10
  br label %if.then.i29

if.then.i29:                                      ; preds = %ath10k_sdio_diag_read32.exit.i.i, %if.end9.if.then.i29_crit_edge
  %retval.0.i7.i.i = phi i32 [ %call1.i.i.i, %ath10k_sdio_diag_read32.exit.i.i ], [ -12, %if.end9.if.then.i29_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.4, i32 noundef 4) #10
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i7.i.i) #10
  br label %ath10k_sdio_dump_registers.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %8 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call7.i.i.i.i.i, align 8
  %10 = call i32 @llvm.bswap.i32(i32 %9) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #10
  br i1 %call, label %if.end6.i, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.024.i.i = phi i32 [ %add2.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %add.i.i = add i32 %i.024.i.i, %10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i49.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not.i.i50.i = icmp eq ptr %call7.i.i.i.i49.i, null
  br i1 %tobool.not.i.i50.i, label %for.body.i.i.if.end6.thread63.i_crit_edge, label %if.end.i.i53.i

for.body.i.i.if.end6.thread63.i_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.thread63.i

if.end.i.i53.i:                                   ; preds = %for.body.i.i
  %call1.i.i51.i = call i32 @ath10k_sdio_hif_diag_read(ptr noundef %ar, i32 noundef %add.i.i, ptr noundef nonnull %call7.i.i.i.i49.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i51.i)
  %tobool2.not.i.i52.i = icmp eq i32 %call1.i.i51.i, 0
  br i1 %tobool2.not.i.i52.i, label %if.end.i.i, label %ath10k_sdio_diag_read32.exit.i54.i

ath10k_sdio_diag_read32.exit.i54.i:               ; preds = %if.end.i.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i49.i) #10
  br label %if.end6.thread63.i

if.end6.thread63.i:                               ; preds = %ath10k_sdio_diag_read32.exit.i54.i, %for.body.i.i.if.end6.thread63.i_crit_edge
  %retval.0.i13.i.i = phi i32 [ %call1.i.i51.i, %ath10k_sdio_diag_read32.exit.i54.i ], [ -12, %for.body.i.i.if.end6.thread63.i_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.20, i32 noundef %add.i.i) #10
  br label %if.then8.i

if.end.i.i:                                       ; preds = %if.end.i.i53.i
  %12 = ptrtoint ptr %call7.i.i.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call7.i.i.i.i49.i, align 8
  %14 = call i32 @llvm.bswap.i32(i32 %13) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i49.i) #10
  %add.ptr.i.i = getelementptr i8, ptr %reg_dump_values.i, i32 %i.024.i.i
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr.i.i, align 4
  %add2.i.i = add nuw nsw i32 %i.024.i.i, 4
  %cmp.i.i = icmp ult i32 %i.024.i.i, 236
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.if.end9.i_crit_edge

if.end.i.i.if.end9.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end6.i:                                        ; preds = %if.end.i
  %call3.i = call i32 @ath10k_bmi_read_memory(ptr noundef %ar, i32 noundef %10, ptr noundef nonnull %reg_dump_values.i, i32 noundef 240) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool7.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end9.i_crit_edge, label %if.end6.i.if.then8.i_crit_edge

if.end6.i.if.then8.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.end6.i.if.end9.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end6.i.if.then8.i_crit_edge, %if.end6.thread63.i
  %ret.066.i = phi i32 [ %retval.0.i13.i.i, %if.end6.thread63.i ], [ %call3.i, %if.end6.i.if.then8.i_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.17, i32 noundef %ret.066.i) #10
  br label %ath10k_sdio_dump_registers.exit

if.end9.i:                                        ; preds = %if.end6.i.if.end9.i_crit_edge, %if.end.i.i.if.end9.i_crit_edge
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.18) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.i
  %i.073.i = phi i32 [ 0, %if.end9.i ], [ %add15.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [60 x i32], ptr %reg_dump_values.i, i32 0, i32 %i.073.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = or i32 %i.073.i, 1
  %arrayidx10.i = getelementptr [60 x i32], ptr %reg_dump_values.i, i32 0, i32 %add.i
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10.i, align 4
  %add11.i = or i32 %i.073.i, 2
  %arrayidx12.i = getelementptr [60 x i32], ptr %reg_dump_values.i, i32 0, i32 %add11.i
  %20 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx12.i, align 4
  %add13.i = or i32 %i.073.i, 3
  %arrayidx14.i = getelementptr [60 x i32], ptr %reg_dump_values.i, i32 0, i32 %add13.i
  %22 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx14.i, align 4
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.19, i32 noundef %i.073.i, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #10
  %add15.i = add nuw nsw i32 %i.073.i, 4
  %cmp.i = icmp ult i32 %i.073.i, 56
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  br i1 %tobool3.not, label %ath10k_sdio_dump_registers.exit.thread, label %for.end.i.for.body21.i_crit_edge

for.end.i.for.body21.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body21.i

ath10k_sdio_dump_registers.exit.thread:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %reg_dump_values.i) #10
  br label %ath10k_sdio_dump_memory.exit

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %for.end.i.for.body21.i_crit_edge
  %i.174.i = phi i32 [ %inc.i, %for.body21.i.for.body21.i_crit_edge ], [ 0, %for.end.i.for.body21.i_crit_edge ]
  %arrayidx22.i = getelementptr [60 x i32], ptr %reg_dump_values.i, i32 0, i32 %i.174.i
  %24 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx22.i, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #10
  %arrayidx23.i = getelementptr %struct.ath10k_fw_crash_data, ptr %call2, i32 0, i32 2, i32 %i.174.i
  %27 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx23.i, align 4
  %inc.i = add nuw nsw i32 %i.174.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 60
  br i1 %exitcond.not.i, label %for.body21.i.ath10k_sdio_dump_registers.exit_crit_edge, label %for.body21.i.for.body21.i_crit_edge

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body21.i

for.body21.i.ath10k_sdio_dump_registers.exit_crit_edge: ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_dump_registers.exit

ath10k_sdio_dump_registers.exit:                  ; preds = %for.body21.i.ath10k_sdio_dump_registers.exit_crit_edge, %if.then8.i, %if.then.i29
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %reg_dump_values.i) #10
  br i1 %tobool3.not, label %ath10k_sdio_dump_registers.exit.ath10k_sdio_dump_memory.exit_crit_edge, label %if.end.i31

ath10k_sdio_dump_registers.exit.ath10k_sdio_dump_memory.exit_crit_edge: ; preds = %ath10k_sdio_dump_registers.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_dump_memory.exit

if.end.i31:                                       ; preds = %ath10k_sdio_dump_registers.exit
  %call.i = call ptr @ath10k_coredump_get_mem_layout(ptr noundef %ar) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i31.ath10k_sdio_dump_memory.exit_crit_edge, label %if.end3.i

if.end.i31.ath10k_sdio_dump_memory.exit_crit_edge: ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_dump_memory.exit

if.end3.i:                                        ; preds = %if.end.i31
  %region_table.i = getelementptr inbounds %struct.ath10k_hw_mem_layout, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %region_table.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %region_table.i, align 4
  %ramdump_buf.i = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %call2, i32 0, i32 4
  %30 = ptrtoint ptr %ramdump_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ramdump_buf.i, align 8
  %ramdump_buf_len.i = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %call2, i32 0, i32 5
  %32 = ptrtoint ptr %ramdump_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ramdump_buf_len.i, align 4
  %34 = call ptr @memset(ptr %31, i32 0, i32 %33)
  %size.i = getelementptr inbounds %struct.ath10k_hw_mem_layout, ptr %call.i, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp78.i = icmp sgt i32 %36, 0
  br i1 %cmp78.i, label %if.end3.i.for.body.i32_crit_edge, label %if.end3.i.ath10k_sdio_dump_memory.exit_crit_edge

if.end3.i.ath10k_sdio_dump_memory.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_dump_memory.exit

if.end3.i.for.body.i32_crit_edge:                 ; preds = %if.end3.i
  br label %for.body.i32

for.body.i32:                                     ; preds = %if.end17.i.for.body.i32_crit_edge, %if.end3.i.for.body.i32_crit_edge
  %buf.085.i = phi ptr [ %add.ptr18.i, %if.end17.i.for.body.i32_crit_edge ], [ %31, %if.end3.i.for.body.i32_crit_edge ]
  %i.084.i = phi i32 [ %inc.i36, %if.end17.i.for.body.i32_crit_edge ], [ 0, %if.end3.i.for.body.i32_crit_edge ]
  %buf_len.083.i = phi i32 [ %sub19.i, %if.end17.i.for.body.i32_crit_edge ], [ %33, %if.end3.i.for.body.i32_crit_edge ]
  %current_region.079.i = phi ptr [ %incdec.ptr.i, %if.end17.i.for.body.i32_crit_edge ], [ %29, %if.end3.i.for.body.i32_crit_edge ]
  %len.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.079.i, i32 0, i32 2
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %buf_len.083.i)
  %cmp5.i = icmp ugt i32 %38, %buf_len.083.i
  br i1 %cmp5.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.079.i, i32 0, i32 3
  %39 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.21, ptr noundef %40, i32 noundef %38, i32 noundef %buf_len.083.i) #10
  br label %ath10k_sdio_dump_memory.exit

if.end8.i:                                        ; preds = %for.body.i32
  %add.ptr.i = getelementptr i8, ptr %buf.085.i, i32 12
  %sub.i = add i32 %buf_len.083.i, -12
  %size.i.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.079.i, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.not.i.i = icmp eq i32 %42, 0
  br i1 %cmp.not.i.i, label %if.end.i.i35, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end8.i
  %tobool.not.i.i.i33 = icmp eq ptr %current_region.079.i, null
  %tobool1.not.i.i.i = icmp eq ptr %add.ptr.i, null
  %or.cond.i.i.i = or i1 %tobool1.not.i.i.i, %tobool.not.i.i.i33
  br i1 %or.cond.i.i.i, label %if.then.i.i.ath10k_sdio_dump_memory_generic.exit.thread.i_crit_edge, label %if.end.i.i.i34

if.then.i.i.ath10k_sdio_dump_memory_generic.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_dump_memory_generic.exit.thread.i

if.end.i.i.i34:                                   ; preds = %if.then.i.i
  %section_table.i.i.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.079.i, i32 0, i32 4
  %43 = ptrtoint ptr %section_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %section_table.i.i.i, align 4
  %start.i.i.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.079.i, i32 0, i32 1
  %45 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %start.i.i.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %46)
  %cmp.i.i.i = icmp ult i32 %48, %46
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.end6.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.23, i32 noundef %46, i32 noundef %48) #10
  br label %ath10k_sdio_dump_memory_generic.exit.thread.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i34
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %46)
  %cmp9139.not.i.i.i = icmp eq i32 %48, %46
  br i1 %cmp9139.not.i.i.i, label %if.end6.i.i.i.for.cond10.preheader.i.i.i_crit_edge, label %for.body.preheader.i.i.i

if.end6.i.i.i.for.cond10.preheader.i.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond10.preheader.i.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = sub i32 %48, %46
  %49 = call ptr @memset(ptr %add.ptr.i, i32 170, i32 %sub.i.i.i)
  %uglygep.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %sub.i.i.i
  br label %for.cond10.preheader.i.i.i

for.cond10.preheader.i.i.i:                       ; preds = %for.body.preheader.i.i.i, %if.end6.i.i.i.for.cond10.preheader.i.i.i_crit_edge
  %buf.addr.0.lcssa.i.i.i = phi ptr [ %add.ptr.i, %if.end6.i.i.i.for.cond10.preheader.i.i.i_crit_edge ], [ %uglygep.i.i.i, %for.body.preheader.i.i.i ]
  %tobool11.not146.i.i.i = icmp eq ptr %44, null
  br i1 %tobool11.not146.i.i.i, label %for.cond10.preheader.i.i.i.ath10k_sdio_dump_memory_generic.exit.thread.i_crit_edge, label %for.cond10.preheader.i.i.i.for.body12.i.i.i_crit_edge

for.cond10.preheader.i.i.i.for.body12.i.i.i_crit_edge: ; preds = %for.cond10.preheader.i.i.i
  br label %for.body12.i.i.i

for.cond10.preheader.i.i.i.ath10k_sdio_dump_memory_generic.exit.thread.i_crit_edge: ; preds = %for.cond10.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_dump_memory_generic.exit.thread.i

for.body12.i.i.i:                                 ; preds = %for.end53.i.i.i.for.body12.i.i.i_crit_edge, %for.cond10.preheader.i.i.i.for.body12.i.i.i_crit_edge
  %i.1151.i.i.i = phi i32 [ %inc20.i.i.i, %for.end53.i.i.i.for.body12.i.i.i_crit_edge ], [ 0, %for.cond10.preheader.i.i.i.for.body12.i.i.i_crit_edge ]
  %count.0150.i.i.i = phi i32 [ %add54.i.i.i, %for.end53.i.i.i.for.body12.i.i.i_crit_edge ], [ 0, %for.cond10.preheader.i.i.i.for.body12.i.i.i_crit_edge ]
  %cur_section.0149.i.i.i = phi ptr [ %next_section.0.i.i.i, %for.end53.i.i.i.for.body12.i.i.i_crit_edge ], [ %44, %for.cond10.preheader.i.i.i.for.body12.i.i.i_crit_edge ]
  %buf_len.addr.0148.i.i.i = phi i32 [ %sub39.i.i.i, %for.end53.i.i.i.for.body12.i.i.i_crit_edge ], [ %38, %for.cond10.preheader.i.i.i.for.body12.i.i.i_crit_edge ]
  %buf.addr.1147.i.i.i = phi ptr [ %buf.addr.2.lcssa.i.i.i, %for.end53.i.i.i.for.body12.i.i.i_crit_edge ], [ %buf.addr.0.lcssa.i.i.i, %for.cond10.preheader.i.i.i.for.body12.i.i.i_crit_edge ]
  %end.i.i.i = getelementptr inbounds %struct.ath10k_mem_section, ptr %cur_section.0149.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %end.i.i.i, align 4
  %52 = ptrtoint ptr %cur_section.0149.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cur_section.0149.i.i.i, align 4
  %sub14.i.i.i = sub i32 %51, %53
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp15.i.i.i = icmp eq i32 %51, %53
  br i1 %cmp15.i.i.i, label %if.then16.i.i.i, label %if.end19.i.i.i

if.then16.i.i.i:                                  ; preds = %for.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.24, i32 noundef %51, i32 noundef %51) #10
  br label %ath10k_sdio_dump_memory_generic.exit.i

if.end19.i.i.i:                                   ; preds = %for.body12.i.i.i
  %inc20.i.i.i = add i32 %i.1151.i.i.i, 1
  %54 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc20.i.i.i, i32 %55)
  %cmp22.i.i.i = icmp eq i32 %inc20.i.i.i, %55
  br i1 %cmp22.i.i.i, label %if.end19.i.i.i.if.end34.i.i.i_crit_edge, label %if.else.i.i.i

if.end19.i.i.i.if.end34.i.i.i_crit_edge:          ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i.i.i

if.else.i.i.i:                                    ; preds = %if.end19.i.i.i
  %add.ptr.i.i.i = getelementptr %struct.ath10k_mem_section, ptr %cur_section.0149.i.i.i, i32 1
  %56 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %51)
  %cmp26.i.i.i = icmp ult i32 %57, %51
  br i1 %cmp26.i.i.i, label %if.then27.i.i.i, label %if.end30.i.i.i

if.then27.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.25, i32 noundef %57, i32 noundef %51) #10
  br label %ath10k_sdio_dump_memory_generic.exit.i

if.end30.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub33.i.i.i = sub i32 %57, %51
  br label %if.end34.i.i.i

if.end34.i.i.i:                                   ; preds = %if.end30.i.i.i, %if.end19.i.i.i.if.end34.i.i.i_crit_edge
  %next_section.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.end30.i.i.i ], [ null, %if.end19.i.i.i.if.end34.i.i.i_crit_edge ]
  %skip_size.0.i.i.i = phi i32 [ %sub33.i.i.i, %if.end30.i.i.i ], [ 0, %if.end19.i.i.i.if.end34.i.i.i_crit_edge ]
  %add.i.i.i = add i32 %skip_size.0.i.i.i, %sub14.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %buf_len.addr.0148.i.i.i, i32 %add.i.i.i)
  %cmp35.i.i.i = icmp ult i32 %buf_len.addr.0148.i.i.i, %add.i.i.i
  br i1 %cmp35.i.i.i, label %if.then36.i.i.i, label %if.end37.i.i.i

if.then36.i.i.i:                                  ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.26, i32 noundef %buf_len.addr.0148.i.i.i) #10
  br label %ath10k_sdio_dump_memory_generic.exit.i

if.end37.i.i.i:                                   ; preds = %if.end34.i.i.i
  %sub39.i.i.i = sub i32 %buf_len.addr.0148.i.i.i, %add.i.i.i
  %call.i.i.i = call fastcc i32 @ath10k_sdio_read_mem(ptr noundef %ar, i32 noundef %53, ptr noundef %buf.addr.1147.i.i.i, i32 noundef %sub14.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool41.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool41.not.i.i.i, label %if.end44.i.i.i, label %if.then42.i.i.i

if.then42.i.i.i:                                  ; preds = %if.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %cur_section.0149.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cur_section.0149.i.i.i, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.27, i32 noundef %59, i32 noundef %call.i.i.i) #10
  br label %ath10k_sdio_dump_memory_generic.exit.i

if.end44.i.i.i:                                   ; preds = %if.end37.i.i.i
  %add.ptr45.i.i.i = getelementptr i8, ptr %buf.addr.1147.i.i.i, i32 %sub14.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_size.0.i.i.i)
  %cmp48142.not.i.i.i = icmp eq i32 %skip_size.0.i.i.i, 0
  br i1 %cmp48142.not.i.i.i, label %if.end44.i.i.i.for.end53.i.i.i_crit_edge, label %for.body49.preheader.i.i.i

if.end44.i.i.i.for.end53.i.i.i_crit_edge:         ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end53.i.i.i

for.body49.preheader.i.i.i:                       ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = call ptr @memset(ptr %add.ptr45.i.i.i, i32 170, i32 %skip_size.0.i.i.i)
  %uglygep176.i.i.i = getelementptr i8, ptr %buf.addr.1147.i.i.i, i32 %add.i.i.i
  br label %for.end53.i.i.i

for.end53.i.i.i:                                  ; preds = %for.body49.preheader.i.i.i, %if.end44.i.i.i.for.end53.i.i.i_crit_edge
  %buf.addr.2.lcssa.i.i.i = phi ptr [ %add.ptr45.i.i.i, %if.end44.i.i.i.for.end53.i.i.i_crit_edge ], [ %uglygep176.i.i.i, %for.body49.preheader.i.i.i ]
  %add54.i.i.i = add i32 %add.i.i.i, %count.0150.i.i.i
  %tobool11.not.i.i.i = icmp eq ptr %next_section.0.i.i.i, null
  br i1 %tobool11.not.i.i.i, label %for.end53.i.i.i.ath10k_sdio_dump_memory_generic.exit.i_crit_edge, label %for.end53.i.i.i.for.body12.i.i.i_crit_edge

for.end53.i.i.i.for.body12.i.i.i_crit_edge:       ; preds = %for.end53.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.i.i.i

for.end53.i.i.i.ath10k_sdio_dump_memory_generic.exit.i_crit_edge: ; preds = %for.end53.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_dump_memory_generic.exit.i

if.end.i.i35:                                     ; preds = %if.end8.i
  %start.i.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.079.i, i32 0, i32 1
  %61 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %start.i.i, align 4
  br i1 %call, label %if.then1.i.i, label %if.else.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = call i32 @ath10k_bmi_read_memory(ptr noundef %ar, i32 noundef %62, ptr noundef %add.ptr.i, i32 noundef %38) #10
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i.i = call fastcc i32 @ath10k_sdio_read_mem(ptr noundef %ar, i32 noundef %62, ptr noundef %add.ptr.i, i32 noundef %38) #10
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.then1.i.i
  %ret.0.i.i = phi i32 [ %call3.i.i, %if.then1.i.i ], [ %call6.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool8.not.i.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.079.i, i32 0, i32 3
  %63 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name.i.i, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.22, ptr noundef %64, i32 noundef %ret.0.i.i) #10
  br label %ath10k_sdio_dump_memory_generic.exit.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i, align 4
  br label %ath10k_sdio_dump_memory_generic.exit.i

ath10k_sdio_dump_memory_generic.exit.i:           ; preds = %if.end10.i.i, %if.then9.i.i, %for.end53.i.i.i.ath10k_sdio_dump_memory_generic.exit.i_crit_edge, %if.then42.i.i.i, %if.then36.i.i.i, %if.then27.i.i.i, %if.then16.i.i.i
  %retval.0.i.i = phi i32 [ %ret.0.i.i, %if.then9.i.i ], [ %66, %if.end10.i.i ], [ %count.0150.i.i.i, %if.then42.i.i.i ], [ %count.0150.i.i.i, %if.then36.i.i.i ], [ %count.0150.i.i.i, %if.then27.i.i.i ], [ %count.0150.i.i.i, %if.then16.i.i.i ], [ %add54.i.i.i, %for.end53.i.i.i.ath10k_sdio_dump_memory_generic.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp11.i = icmp sgt i32 %retval.0.i.i, -1
  br i1 %cmp11.i, label %ath10k_sdio_dump_memory_generic.exit.i.ath10k_sdio_dump_memory_generic.exit.thread.i_crit_edge, label %ath10k_sdio_dump_memory_generic.exit.i._crit_edge

ath10k_sdio_dump_memory_generic.exit.i._crit_edge: ; preds = %ath10k_sdio_dump_memory_generic.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %67

ath10k_sdio_dump_memory_generic.exit.i.ath10k_sdio_dump_memory_generic.exit.thread.i_crit_edge: ; preds = %ath10k_sdio_dump_memory_generic.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_dump_memory_generic.exit.thread.i

ath10k_sdio_dump_memory_generic.exit.thread.i:    ; preds = %ath10k_sdio_dump_memory_generic.exit.i.ath10k_sdio_dump_memory_generic.exit.thread.i_crit_edge, %for.cond10.preheader.i.i.i.ath10k_sdio_dump_memory_generic.exit.thread.i_crit_edge, %if.then3.i.i.i, %if.then.i.i.ath10k_sdio_dump_memory_generic.exit.thread.i_crit_edge
  %retval.0.i56.i = phi i32 [ %retval.0.i.i, %ath10k_sdio_dump_memory_generic.exit.i.ath10k_sdio_dump_memory_generic.exit.thread.i_crit_edge ], [ 0, %if.then3.i.i.i ], [ 0, %if.then.i.i.ath10k_sdio_dump_memory_generic.exit.thread.i_crit_edge ], [ 0, %for.cond10.preheader.i.i.i.ath10k_sdio_dump_memory_generic.exit.thread.i_crit_edge ]
  br label %67

67:                                               ; preds = %ath10k_sdio_dump_memory_generic.exit.thread.i, %ath10k_sdio_dump_memory_generic.exit.i._crit_edge
  %68 = phi i32 [ %retval.0.i56.i, %ath10k_sdio_dump_memory_generic.exit.thread.i ], [ 0, %ath10k_sdio_dump_memory_generic.exit.i._crit_edge ]
  %69 = ptrtoint ptr %current_region.079.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %current_region.079.i, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70) #10
  %72 = ptrtoint ptr %buf.085.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %buf.085.i, align 4
  %start.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %current_region.079.i, i32 0, i32 1
  %73 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %start.i, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74) #10
  %start14.i = getelementptr inbounds %struct.ath10k_dump_ram_data_hdr, ptr %buf.085.i, i32 0, i32 1
  %76 = ptrtoint ptr %start14.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %start14.i, align 4
  %77 = call i32 @llvm.bswap.i32(i32 %68) #10
  %length.i = getelementptr inbounds %struct.ath10k_dump_ram_data_hdr, ptr %buf.085.i, i32 0, i32 2
  %78 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp15.i = icmp eq i32 %68, 0
  br i1 %cmp15.i, label %.ath10k_sdio_dump_memory.exit_crit_edge, label %if.end17.i

.ath10k_sdio_dump_memory.exit_crit_edge:          ; preds = %67
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_dump_memory.exit

if.end17.i:                                       ; preds = %67
  %add.ptr18.i = getelementptr i8, ptr %add.ptr.i, i32 %68
  %sub19.i = sub i32 %sub.i, %68
  %incdec.ptr.i = getelementptr %struct.ath10k_mem_region, ptr %current_region.079.i, i32 1
  %inc.i36 = add nuw nsw i32 %i.084.i, 1
  %79 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size.i, align 4
  %cmp.i37 = icmp slt i32 %inc.i36, %80
  br i1 %cmp.i37, label %if.end17.i.for.body.i32_crit_edge, label %if.end17.i.ath10k_sdio_dump_memory.exit_crit_edge

if.end17.i.ath10k_sdio_dump_memory.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_dump_memory.exit

if.end17.i.for.body.i32_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i32

ath10k_sdio_dump_memory.exit:                     ; preds = %if.end17.i.ath10k_sdio_dump_memory.exit_crit_edge, %.ath10k_sdio_dump_memory.exit_crit_edge, %if.then6.i, %if.end3.i.ath10k_sdio_dump_memory.exit_crit_edge, %if.end.i31.ath10k_sdio_dump_memory.exit_crit_edge, %ath10k_sdio_dump_registers.exit.ath10k_sdio_dump_memory.exit_crit_edge, %ath10k_sdio_dump_registers.exit.thread
  %81 = ptrtoint ptr %irq_en_reg.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %irq_en_reg.i, align 4
  call void @mutex_lock_nested(ptr noundef %irq_data1.i, i32 noundef 0) #10
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -47, ptr %82, align 1
  %cpu_int_status_en.i = getelementptr inbounds %struct.ath10k_sdio_irq_enable_regs, ptr %82, i32 0, i32 1
  %84 = ptrtoint ptr %cpu_int_status_en.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %cpu_int_status_en.i, align 1
  %err_int_status_en.i = getelementptr inbounds %struct.ath10k_sdio_irq_enable_regs, ptr %82, i32 0, i32 2
  %85 = ptrtoint ptr %err_int_status_en.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 3, ptr %err_int_status_en.i, align 1
  %cntr_int_status_en.i = getelementptr inbounds %struct.ath10k_sdio_irq_enable_regs, ptr %82, i32 0, i32 3
  %86 = ptrtoint ptr %cntr_int_status_en.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %cntr_int_status_en.i, align 1
  %call136.i = call fastcc i32 @ath10k_sdio_write(ptr noundef %ar, i32 noundef 2088, ptr noundef %82, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.i)
  %tobool.not.i40 = icmp eq i32 %call136.i, 0
  br i1 %tobool.not.i40, label %ath10k_sdio_dump_memory.exit.ath10k_sdio_enable_intrs.exit_crit_edge, label %if.then.i41

ath10k_sdio_dump_memory.exit.ath10k_sdio_enable_intrs.exit_crit_edge: ; preds = %ath10k_sdio_dump_memory.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_enable_intrs.exit

if.then.i41:                                      ; preds = %ath10k_sdio_dump_memory.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.28, i32 noundef %call136.i) #10
  br label %ath10k_sdio_enable_intrs.exit

ath10k_sdio_enable_intrs.exit:                    ; preds = %if.then.i41, %ath10k_sdio_dump_memory.exit.ath10k_sdio_enable_intrs.exit_crit_edge
  call void @mutex_unlock(ptr noundef %irq_data1.i) #10
  call void @ath10k_core_start_recovery(ptr noundef %ar) #10
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %guid) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ath10k_sdio_is_fast_dump_supported(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.if.then.i_crit_edge, label %if.end.i.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @ath10k_sdio_hif_diag_read(ptr noundef %ar, i32 noundef 4196556, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %ath10k_sdio_diag_read32.exit.thread9.i, label %ath10k_sdio_diag_read32.exit.i

ath10k_sdio_diag_read32.exit.thread9.i:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i.i.i, align 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %ath10k_sdio_read_host_interest_value.exit

ath10k_sdio_diag_read32.exit.i:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %if.then.i

if.then.i:                                        ; preds = %ath10k_sdio_diag_read32.exit.i, %entry.if.then.i_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.4, i32 noundef 204) #10
  br label %ath10k_sdio_read_host_interest_value.exit

ath10k_sdio_read_host_interest_value.exit:        ; preds = %if.then.i, %ath10k_sdio_diag_read32.exit.thread9.i
  %param.0 = phi i32 [ -1, %if.then.i ], [ %3, %ath10k_sdio_diag_read32.exit.thread9.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %ath10k_sdio_read_host_interest_value.exit.if.then_crit_edge

ath10k_sdio_read_host_interest_value.exit.if.then_crit_edge: ; preds = %ath10k_sdio_read_host_interest_value.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %ath10k_sdio_read_host_interest_value.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_is_fast_dump_supported, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !290

if.then:                                          ; preds = %lor.lhs.false, %ath10k_sdio_read_host_interest_value.exit.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.3, i32 noundef %param.0) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %and2 = and i32 %param.0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3 = icmp ne i32 %and2, 0
  ret i1 %tobool3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_bmi_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_coredump_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_print_driver_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_start_recovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_sdio_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sdio_unregister_driver(ptr noundef nonnull @ath10k_sdio_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sdio_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_register_driver(ptr noundef nonnull @ath10k_sdio_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sdio_hif_diag_read(ptr noundef %ar, i32 noundef %address, ptr nocapture noundef writeonly %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %buf_len, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @ath10k_sdio_write32(ptr noundef %ar, i32 noundef 2172, i32 noundef %address)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.5, i32 noundef %call1) #10
  br label %out

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @ath10k_sdio_read(ptr noundef %ar, i32 noundef 2164, ptr noundef nonnull %call9.i.i, i32 noundef %buf_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.6, i32 noundef %call5) #10
  br label %out

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = call ptr @memcpy(ptr %buf, ptr %call9.i.i, i32 %buf_len)
  br label %out

out:                                              ; preds = %if.end8, %if.then7, %if.then3
  %ret.0 = phi i32 [ %call1, %if.then3 ], [ %call5, %if.then7 ], [ 0, %if.end8 ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_sdio_write32(ptr noundef %ar, i32 noundef %addr, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #10
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ret, align 4, !annotation !291
  tail call void @sdio_claim_host(ptr noundef %1) #10
  call void @sdio_writel(ptr noundef %1, i32 noundef %val, i32 noundef %addr, ptr noundef nonnull %ret) #10
  %3 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.7, i32 noundef %val, i32 noundef %addr, i32 noundef %4) #10
  br label %out

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %5 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %do.body.if.then4_crit_edge

do.body.if.then4_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_write32, %if.then4)) #10
          to label %out [label %if.then4], !srcloc !290

if.then4:                                         ; preds = %lor.lhs.false, %do.body.if.then4_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.8, i32 noundef %addr, i32 noundef %val) #10
  br label %out

out:                                              ; preds = %if.then4, %lor.lhs.false, %if.then
  call void @sdio_release_host(ptr noundef %1) #10
  %6 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #10
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_sdio_read(ptr noundef %ar, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  tail call void @sdio_claim_host(ptr noundef %1) #10
  %call2 = tail call i32 @sdio_memcpy_fromio(ptr noundef %1, ptr noundef %buf, i32 noundef %addr, i32 noundef %len) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.9, i32 noundef %addr, i32 noundef %call2) #10
  br label %out

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %do.body.if.then5_crit_edge

do.body.if.then5_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_read, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !290

if.then5:                                         ; preds = %lor.lhs.false, %do.body.if.then5_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.10, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %lor.lhs.false
  tail call void @ath10k_dbg_dump(ptr noundef %ar, i32 noundef 131072, ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef %buf, i32 noundef %len) #10
  br label %out

out:                                              ; preds = %do.end, %if.then
  tail call void @sdio_release_host(ptr noundef %1) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writel(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_fromio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_dbg_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_sdio_write(ptr noundef %ar, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  tail call void @sdio_claim_host(ptr noundef %1) #10
  %call2 = tail call i32 @sdio_memcpy_toio(ptr noundef %1, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.13, i32 noundef %addr, i32 noundef %call2) #10
  br label %out

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %do.body.if.then5_crit_edge

do.body.if.then5_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_write, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !290

if.then5:                                         ; preds = %lor.lhs.false, %do.body.if.then5_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.14, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %lor.lhs.false
  tail call void @ath10k_dbg_dump(ptr noundef %ar, i32 noundef 131072, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef %buf, i32 noundef %len) #10
  br label %out

out:                                              ; preds = %do.end, %if.then
  tail call void @sdio_release_host(ptr noundef %1) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_toio(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_bmi_read_memory(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_sdio_read_mem(ptr noundef %ar, i32 noundef %address, ptr nocapture noundef writeonly %buf, i32 noundef %buf_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %cmp23.not = icmp eq i32 %buf_len, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.024 = phi i32 [ %add2, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add = add i32 %i.024, %address
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.if.then_crit_edge, label %if.end.i

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @ath10k_sdio_hif_diag_read(ptr noundef %ar, i32 noundef %add, ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %ath10k_sdio_diag_read32.exit

ath10k_sdio_diag_read32.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %if.then

if.then:                                          ; preds = %ath10k_sdio_diag_read32.exit, %for.body.if.then_crit_edge
  %retval.0.i13 = phi i32 [ %call1.i, %ath10k_sdio_diag_read32.exit ], [ -12, %for.body.if.then_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.20, i32 noundef %add) #10
  br label %for.end

if.end:                                           ; preds = %if.end.i
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i.i, align 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.024
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %add.ptr, align 1
  %add2 = add i32 %i.024, 4
  %cmp = icmp ult i32 %add2, %buf_len
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ %retval.0.i13, %if.then ], [ -1, %entry.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_coredump_get_mem_layout(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sdio_probe(ptr noundef %func, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %bus_params = alloca %struct.ath10k_bus_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bus_params) #10
  %0 = call ptr @memset(ptr %bus_params, i32 0, i32 12)
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %call = tail call ptr @ath10k_core_create(i32 noundef 34588, ptr noundef %dev, i32 noundef 2, i32 noundef 1, ptr noundef nonnull @ath10k_sdio_hif_ops) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %napi_dev = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 125
  %napi = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 126
  tail call void @netif_napi_add(ptr noundef %napi_dev, ptr noundef %napi, ptr noundef nonnull @ath10k_sdio_napi_poll, i32 noundef 64) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %1 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_probe, %if.then5)) #10
          to label %do.end9 [label %if.then5], !srcloc !290

if.then5:                                         ; preds = %lor.lhs.false, %if.end.if.then5_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  %vendor = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 5
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 2
  %conv = zext i16 %5 to i32
  %device = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 6
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 4
  %conv6 = zext i16 %7 to i32
  %max_blksize = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 7
  %8 = ptrtoint ptr %max_blksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_blksize, align 8
  %cur_blksize = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 8
  %10 = ptrtoint ptr %cur_blksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_blksize, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef nonnull %call, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %3, i32 noundef %conv, i32 noundef %conv6, i32 noundef %9, i32 noundef %11) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %lor.lhs.false
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 142
  %dev11 = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev11, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef 44, i32 noundef 3520) #10
  %irq_data = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1576
  %irq_proc_reg = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1599
  %14 = ptrtoint ptr %irq_proc_reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %irq_proc_reg, align 4
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %do.end9.err_core_destroy_crit_edge, label %if.end17

do.end9.err_core_destroy_crit_edge:               ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_core_destroy

if.end17:                                         ; preds = %do.end9
  %15 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev11, align 4
  %call19 = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 65536, i32 noundef 3264) #10
  %vsg_buffer = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1601
  %17 = ptrtoint ptr %vsg_buffer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call19, ptr %vsg_buffer, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.end17.err_core_destroy_crit_edge, label %if.end23

if.end17.err_core_destroy_crit_edge:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_core_destroy

if.end23:                                         ; preds = %if.end17
  %18 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev11, align 4
  %call.i182 = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef 4, i32 noundef 3520) #10
  %irq_en_reg = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1600
  %20 = ptrtoint ptr %irq_en_reg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i182, ptr %irq_en_reg, align 4
  %tobool29.not = icmp eq ptr %call.i182, null
  br i1 %tobool29.not, label %if.end23.err_core_destroy_crit_edge, label %if.end31

if.end23.err_core_destroy_crit_edge:              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_core_destroy

if.end31:                                         ; preds = %if.end23
  %21 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev11, align 4
  %call.i183 = tail call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef 2060, i32 noundef 3520) #10
  %bmi_buf = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1602
  %23 = ptrtoint ptr %bmi_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i183, ptr %bmi_buf, align 4
  %tobool35.not = icmp eq ptr %call.i183, null
  br i1 %tobool35.not, label %if.end31.err_core_destroy_crit_edge, label %if.end37

if.end31.err_core_destroy_crit_edge:              ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_core_destroy

if.end37:                                         ; preds = %if.end31
  %24 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %func, ptr %drv_priv.i, align 4
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %25 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %drv_priv.i, ptr %driver_data.i, align 4
  %is_disabled = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1603
  %26 = ptrtoint ptr %is_disabled to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %is_disabled, align 4
  %ar40 = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1575
  %27 = ptrtoint ptr %ar40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %ar40, align 4
  %lock = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1243
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @ath10k_sdio_probe.__key, i16 noundef signext 3) #10
  %wr_async_lock = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1618
  tail call void @__raw_spin_lock_init(ptr noundef %wr_async_lock, ptr noundef nonnull @.str.38, ptr noundef nonnull @ath10k_sdio_probe.__key.37, i16 noundef signext 3) #10
  tail call void @__mutex_init(ptr noundef %irq_data, ptr noundef nonnull @.str.40, ptr noundef nonnull @ath10k_sdio_probe.__key.39) #10
  %bus_req_freeq = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1227
  %28 = ptrtoint ptr %bus_req_freeq to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %bus_req_freeq, ptr %bus_req_freeq, align 4
  %prev.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1228
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %bus_req_freeq, ptr %prev.i, align 4
  %wr_asyncq = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1616
  %30 = ptrtoint ptr %wr_asyncq to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %wr_asyncq, ptr %wr_asyncq, align 4
  %prev.i184 = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1617
  %31 = ptrtoint ptr %prev.i184 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %wr_asyncq, ptr %prev.i184, align 4
  %wr_async_work = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1605
  tail call void @__init_work(ptr noundef %wr_async_work, i32 noundef 0) #10
  %32 = ptrtoint ptr %wr_async_work to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %wr_async_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1609
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.42, ptr noundef nonnull @ath10k_sdio_probe.__key.41, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry57 = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1606
  %33 = ptrtoint ptr %entry57 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry57, ptr %entry57, align 4
  %prev.i185 = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1607
  %34 = ptrtoint ptr %prev.i185 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry57, ptr %prev.i185, align 4
  %func59 = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1608
  %35 = ptrtoint ptr %func59 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ath10k_sdio_write_async_work, ptr %func59, align 4
  %call62 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.43, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.44) #10
  %workqueue = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1604
  %36 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call62, ptr %workqueue, align 4
  %tobool64.not = icmp eq ptr %call62, null
  br i1 %tobool64.not, label %if.end37.err_core_destroy_crit_edge, label %if.end37.for.body_crit_edge

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  br label %for.body

if.end37.err_core_destroy_crit_edge:              ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_core_destroy

for.body:                                         ; preds = %ath10k_sdio_free_bus_req.exit.for.body_crit_edge, %if.end37.for.body_crit_edge
  %i.0190 = phi i32 [ %inc, %ath10k_sdio_free_bus_req.exit.for.body_crit_edge ], [ 0, %if.end37.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i, i32 0, i32 5, i32 %i.0190
  %37 = call ptr @memset(ptr %arrayidx, i32 0, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %39, ptr noundef %bus_req_freeq) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.ath10k_sdio_free_bus_req.exit_crit_edge

for.body.ath10k_sdio_free_bus_req.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_free_bus_req.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx, ptr %prev.i, align 4
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %bus_req_freeq, ptr %arrayidx, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %arrayidx, ptr %39, align 4
  br label %ath10k_sdio_free_bus_req.exit

ath10k_sdio_free_bus_req.exit:                    ; preds = %if.end.i.i.i, %for.body.ath10k_sdio_free_bus_req.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %inc = add nuw nsw i32 %i.0190, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %ath10k_sdio_free_bus_req.exit.for.body_crit_edge

ath10k_sdio_free_bus_req.exit.for.body_crit_edge: ; preds = %ath10k_sdio_free_bus_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %ath10k_sdio_free_bus_req.exit
  %rx_head = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1229
  %lock.i186 = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1232
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i186, ptr noundef nonnull @.str.129, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %44 = ptrtoint ptr %rx_head to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %rx_head, ptr %rx_head, align 4
  %prev.i.i187 = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1230
  %45 = ptrtoint ptr %prev.i.i187 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %rx_head, ptr %prev.i.i187, align 4
  %qlen.i.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1231
  %46 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %qlen.i.i, align 4
  %async_work_rx = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1629
  tail call void @__init_work(ptr noundef %async_work_rx, i32 noundef 0) #10
  %47 = ptrtoint ptr %async_work_rx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -64, ptr %async_work_rx, align 4
  %lockdep_map74 = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1633
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map74, ptr noundef nonnull @.str.46, ptr noundef nonnull @ath10k_sdio_probe.__key.45, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry76 = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1630
  %48 = ptrtoint ptr %entry76 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %entry76, ptr %entry76, align 4
  %prev.i188 = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1631
  %49 = ptrtoint ptr %prev.i188 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %entry76, ptr %prev.i188, align 4
  %func78 = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1632
  %50 = ptrtoint ptr %func78 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ath10k_rx_indication_async_work, ptr %func78, align 4
  %device81 = getelementptr inbounds %struct.sdio_device_id, ptr %id, i32 0, i32 2
  %51 = ptrtoint ptr %device81 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %device81, align 4
  %conv82 = zext i16 %52 to i32
  %and83 = and i32 %conv82, 3840
  %53 = zext i32 %and83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and83, label %if.then88 [
    i32 1280, label %for.end.if.end91_crit_edge
    i32 1792, label %for.end.if.end91_crit_edge191
  ]

for.end.if.end91_crit_edge191:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

for.end.if.end91_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then88:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.47, i32 noundef %and83, i32 noundef %conv82) #10
  br label %err_free_wq

if.end91:                                         ; preds = %for.end.if.end91_crit_edge, %for.end.if.end91_crit_edge191
  %dev_id = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 7
  %54 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 66, ptr %dev_id, align 8
  %vendor92 = getelementptr inbounds %struct.sdio_device_id, ptr %id, i32 0, i32 1
  %55 = ptrtoint ptr %vendor92 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vendor92, align 2
  %conv93 = zext i16 %56 to i32
  %id94 = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 50
  %57 = ptrtoint ptr %id94 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv93, ptr %id94, align 4
  %58 = ptrtoint ptr %device81 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %device81, align 4
  %conv97 = zext i16 %59 to i32
  %device99 = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 50, i32 1
  %60 = ptrtoint ptr %device99 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv97, ptr %device99, align 4
  %mbox_info1.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 4
  %61 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %drv_priv.i, align 4
  %device2.i = getelementptr inbounds %struct.sdio_func, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %device2.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %device2.i, align 4
  %65 = ptrtoint ptr %mbox_info1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4096, ptr %mbox_info1.i, align 4
  %block_size.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 24
  %66 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 256, ptr %block_size.i, align 4
  %block_mask.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 28
  %67 = ptrtoint ptr %block_mask.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 255, ptr %block_mask.i, align 4
  %gmbox_addr.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 32
  %68 = ptrtoint ptr %gmbox_addr.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 28672, ptr %gmbox_addr.i, align 4
  %gmbox_sz.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 36
  %69 = ptrtoint ptr %gmbox_sz.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 16384, ptr %gmbox_sz.i, align 4
  %ext_info.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 8
  %70 = ptrtoint ptr %ext_info.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 20480, ptr %ext_info.i, align 4
  %and.i = and i16 %64, 3840
  %conv7.i = zext i16 %and.i to i32
  %71 = zext i32 %conv7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %conv7.i, label %sw.default.i [
    i32 1280, label %sw.bb.i
    i32 1792, label %sw.bb15.i
  ]

sw.bb.i:                                          ; preds = %if.end91
  %72 = and i16 %64, 252
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp.i = icmp eq i16 %72, 0
  %htc_ext_sz.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 12
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %htc_ext_sz.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 36864, ptr %htc_ext_sz.i, align 4
  br label %ath10k_sdio_set_mbox_info.exit

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %htc_ext_sz.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 57344, ptr %htc_ext_sz.i, align 4
  br label %ath10k_sdio_set_mbox_info.exit

sw.bb15.i:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %htc_ext_sz18.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 12
  %75 = ptrtoint ptr %htc_ext_sz18.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 57344, ptr %htc_ext_sz18.i, align 4
  br label %ath10k_sdio_set_mbox_info.exit

sw.default.i:                                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %htc_ext_sz21.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 12
  %76 = ptrtoint ptr %htc_ext_sz21.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 36864, ptr %htc_ext_sz21.i, align 4
  br label %ath10k_sdio_set_mbox_info.exit

ath10k_sdio_set_mbox_info.exit:                   ; preds = %sw.default.i, %sw.bb15.i, %if.else.i, %if.then.i
  %htc_ext_sz27.i = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 143, i32 12
  %77 = ptrtoint ptr %htc_ext_sz27.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %htc_ext_sz27.i, align 4
  %add28.i = add i32 %78, 22528
  %arrayidx30.i = getelementptr %struct.ath10k, ptr %call, i32 0, i32 143, i32 16
  %79 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add28.i, ptr %arrayidx30.i, align 4
  %htc_ext_sz34.i = getelementptr %struct.ath10k, ptr %call, i32 0, i32 143, i32 20
  %80 = ptrtoint ptr %htc_ext_sz34.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 36864, ptr %htc_ext_sz34.i, align 4
  %dev_type = getelementptr inbounds %struct.ath10k_bus_params, ptr %bus_params, i32 0, i32 1
  %81 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %dev_type, align 4
  %82 = ptrtoint ptr %bus_params to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %bus_params, align 4
  %hl_msdu_ids = getelementptr inbounds %struct.ath10k_bus_params, ptr %bus_params, i32 0, i32 3
  %83 = ptrtoint ptr %hl_msdu_ids to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %hl_msdu_ids, align 1
  %hw = getelementptr inbounds %struct.ath10k, ptr %call, i32 0, i32 1
  %84 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw, align 4
  %max_mtu = getelementptr inbounds %struct.ieee80211_hw, ptr %85, i32 0, i32 32
  %86 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1500, ptr %max_mtu, align 4
  %call100 = call i32 @ath10k_core_register(ptr noundef nonnull %call, ptr noundef nonnull %bus_params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %do.body104, label %if.then102

if.then102:                                       ; preds = %ath10k_sdio_set_mbox_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.48, i32 noundef %call100) #10
  br label %err_free_wq

do.body104:                                       ; preds = %ath10k_sdio_set_mbox_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sleep_timer = getelementptr inbounds %struct.ath10k, ptr %call, i32 2, i32 85, i32 1640
  call void @init_timer_key(ptr noundef %sleep_timer, ptr noundef nonnull @ath10k_sdio_sleep_timer_handler, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @ath10k_sdio_probe.__key.49) #10
  br label %cleanup

err_free_wq:                                      ; preds = %if.then102, %if.then88
  %ret.0 = phi i32 [ -19, %if.then88 ], [ %call100, %if.then102 ]
  %87 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %workqueue, align 4
  call void @destroy_workqueue(ptr noundef %88) #10
  br label %err_core_destroy

err_core_destroy:                                 ; preds = %err_free_wq, %if.end37.err_core_destroy_crit_edge, %if.end31.err_core_destroy_crit_edge, %if.end23.err_core_destroy_crit_edge, %if.end17.err_core_destroy_crit_edge, %do.end9.err_core_destroy_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_wq ], [ -12, %do.end9.err_core_destroy_crit_edge ], [ -12, %if.end17.err_core_destroy_crit_edge ], [ -12, %if.end23.err_core_destroy_crit_edge ], [ -12, %if.end31.err_core_destroy_crit_edge ], [ -12, %if.end37.err_core_destroy_crit_edge ]
  call void @ath10k_core_destroy(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %err_core_destroy, %do.body104, %do.end
  %retval.0 = phi i32 [ %ret.1, %err_core_destroy ], [ 0, %do.body104 ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bus_params) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_sdio_remove(ptr nocapture noundef readonly %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ar1 = getelementptr inbounds %struct.ath10k_sdio, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_remove, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !290

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num, align 4
  %vendor = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 5
  %7 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vendor, align 2
  %conv = zext i16 %8 to i32
  %device = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 6
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 4
  %conv3 = zext i16 %10 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.130, i32 noundef %6, i32 noundef %conv, i32 noundef %conv3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  tail call void @ath10k_core_unregister(ptr noundef %3) #10
  %napi = getelementptr inbounds %struct.ath10k, ptr %3, i32 0, i32 126
  tail call void @__netif_napi_del(ptr noundef %napi) #10
  tail call void @synchronize_net() #10
  tail call void @ath10k_core_destroy(ptr noundef %3) #10
  %workqueue = getelementptr inbounds %struct.ath10k_sdio, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %12) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_core_create(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sdio_napi_poll(ptr noundef %ctx, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ctx, i32 -21120
  %call = tail call i32 @ath10k_htt_rx_hl_indication(ptr noundef %add.ptr, i32 noundef %budget) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_napi_poll, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !290

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %add.ptr, i32 noundef 65536, ptr noundef nonnull @.str.127, i32 noundef %call, i32 noundef %budget) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %if.then2, label %do.end.if.end4_crit_edge

do.end.if.end4_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call zeroext i1 @napi_complete_done(ptr noundef %ctx, i32 noundef %call) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %do.end.if.end4_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_sdio_write_async_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr i8, ptr %work, i32 -120
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 4
  %mbox_info2 = getelementptr i8, ptr %work, i32 -34392
  %wr_async_lock = getelementptr i8, ptr %work, i32 52
  tail call void @_raw_spin_lock_bh(ptr noundef %wr_async_lock) #10
  %wr_asyncq = getelementptr i8, ptr %work, i32 44
  %2 = ptrtoint ptr %wr_asyncq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr_asyncq, align 4
  %cmp.not48 = icmp eq ptr %3, %wr_asyncq
  br i1 %cmp.not48, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mbox_state = getelementptr i8, ptr %work, i32 188
  %sleep_timer = getelementptr i8, ptr %work, i32 140
  %lock.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 2, i32 85, i32 1243
  %bus_req_freeq.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 2, i32 85, i32 1227
  %prev.i.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 2, i32 85, i32 1228
  br label %for.body

for.body:                                         ; preds = %__ath10k_sdio_write_async.exit.for.body_crit_edge, %for.body.lr.ph
  %req.049 = phi ptr [ %3, %for.body.lr.ph ], [ %tmp_req.051, %__ath10k_sdio_write_async.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %req.049 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp_req.051 = load ptr, ptr %req.049, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req.049) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req.049, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %req.049 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req.049, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %req.049 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %req.049, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %req.049, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %wr_async_lock) #10
  %address = getelementptr inbounds %struct.ath10k_sdio_bus_request, ptr %req.049, i32 0, i32 1
  %13 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %address, align 4
  %15 = ptrtoint ptr %mbox_info2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mbox_info2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp14.not = icmp ult i32 %14, %16
  br i1 %cmp14.not, label %list_del.exit.if.end_crit_edge, label %land.lhs.true

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %list_del.exit
  %17 = ptrtoint ptr %mbox_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mbox_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp15 = icmp eq i32 %18, 2
  br i1 %cmp15, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @ath10k_sdio_set_mbox_sleep(ptr noundef %1, i1 noundef zeroext false)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %19, 5
  %call17 = tail call i32 @mod_timer(ptr noundef %sleep_timer, i32 noundef %add) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %list_del.exit.if.end_crit_edge
  %skb1.i = getelementptr inbounds %struct.ath10k_sdio_bus_request, ptr %req.049, i32 0, i32 2
  %20 = ptrtoint ptr %skb1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb1.i, align 4
  %22 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %address, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 19
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  %call.i = tail call fastcc i32 @ath10k_sdio_write(ptr noundef %1, i32 noundef %23, ptr noundef %25, i32 noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %address, align 4
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.128, i32 noundef %29, i32 noundef %call.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %htc_msg.i = getelementptr inbounds %struct.ath10k_sdio_bus_request, ptr %req.049, i32 0, i32 5
  %30 = ptrtoint ptr %htc_msg.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %htc_msg.i, align 4, !range !292
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool3.not.i = icmp eq i8 %31, 0
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %eid.i = getelementptr inbounds %struct.ath10k_sdio_bus_request, ptr %req.049, i32 0, i32 3
  %32 = ptrtoint ptr %eid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %eid.i, align 4
  %arrayidx.i = getelementptr %struct.ath10k, ptr %1, i32 0, i32 42, i32 1, i32 %33
  tail call void @ath10k_htc_notify_tx_completion(ptr noundef %arrayidx.i, ptr noundef %21) #10
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  %comp.i = getelementptr inbounds %struct.ath10k_sdio_bus_request, ptr %req.049, i32 0, i32 6
  %34 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %comp.i, align 4
  %tobool5.not.i = icmp eq ptr %35, null
  br i1 %tobool5.not.i, label %if.else.i.if.end9.i_crit_edge, label %if.then6.i

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @complete(ptr noundef nonnull %35) #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.else.i.if.end9.i_crit_edge, %if.then4.i
  %36 = call ptr @memset(ptr %req.049, i32 0, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #10
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req.049, ptr noundef %38, ptr noundef %bus_req_freeq.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end9.i.__ath10k_sdio_write_async.exit_crit_edge

if.end9.i.__ath10k_sdio_write_async.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ath10k_sdio_write_async.exit

if.end.i.i.i.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %req.049, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %req.049 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %bus_req_freeq.i.i, ptr %req.049, align 4
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %req.049, ptr %38, align 4
  br label %__ath10k_sdio_write_async.exit

__ath10k_sdio_write_async.exit:                   ; preds = %if.end.i.i.i.i, %if.end9.i.__ath10k_sdio_write_async.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #10
  tail call void @_raw_spin_lock_bh(ptr noundef %wr_async_lock) #10
  %cmp.not = icmp eq ptr %tmp_req.051, %wr_asyncq
  br i1 %cmp.not, label %__ath10k_sdio_write_async.exit.for.end_crit_edge, label %__ath10k_sdio_write_async.exit.for.body_crit_edge

__ath10k_sdio_write_async.exit.for.body_crit_edge: ; preds = %__ath10k_sdio_write_async.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

__ath10k_sdio_write_async.exit.for.end_crit_edge: ; preds = %__ath10k_sdio_write_async.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %__ath10k_sdio_write_async.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wr_async_lock) #10
  %mbox_state25 = getelementptr i8, ptr %work, i32 188
  %43 = ptrtoint ptr %mbox_state25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mbox_state25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp26 = icmp eq i32 %44, 1
  br i1 %cmp26, label %if.then27, label %for.end.if.end29_crit_edge

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call fastcc i32 @ath10k_sdio_set_mbox_sleep(ptr noundef %1, i1 noundef zeroext true)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %for.end.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_rx_indication_async_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr i8, ptr %work, i32 -216
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 4
  %rx_head = getelementptr i8, ptr %work, i32 -1600
  %call13 = tail call ptr @skb_dequeue(ptr noundef %rx_head) #10
  %tobool.not14 = icmp eq ptr %call13, null
  br i1 %tobool.not14, label %entry.while.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %call15 = phi ptr [ %call, %if.end.if.end_crit_edge ], [ %call13, %entry.if.end_crit_edge ]
  %eid = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %eid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eid, align 4
  %idxprom = zext i8 %3 to i32
  %ep_rx_complete = getelementptr %struct.ath10k, ptr %1, i32 0, i32 42, i32 1, i32 %idxprom, i32 3, i32 1
  %4 = ptrtoint ptr %ep_rx_complete to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep_rx_complete, align 4
  tail call void %5(ptr noundef %1, ptr noundef nonnull %call15) #10
  %call = tail call ptr @skb_dequeue(ptr noundef %rx_head) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %dev_flags = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 66
  %6 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dev_flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %while.end.if.end6_crit_edge, label %if.then5

while.end.if.end6_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %while.end
  tail call fastcc void @local_bh_disable()
  %napi = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 126
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #10
  br i1 %call.i, label %if.then.i, label %if.then5.napi_schedule.exit_crit_edge

if.then5.napi_schedule.exit_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule(ptr noundef %napi) #10
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %if.then5.napi_schedule.exit_crit_edge
  tail call fastcc void @local_bh_enable()
  br label %if.end6

if.end6:                                          ; preds = %napi_schedule.exit, %while.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_core_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_sdio_sleep_timer_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_state = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %mbox_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %mbox_state, align 4
  %workqueue = getelementptr i8, ptr %t, i32 -144
  %1 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %workqueue, align 4
  %wr_async_work = getelementptr i8, ptr %t, i32 -140
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %wr_async_work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sdio_hif_tx_sg(ptr noundef %ar, i8 noundef zeroext %pipe_id, ptr nocapture noundef readonly %items, i32 noundef %n_items) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %pipe_id to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_items)
  %cmp27 = icmp sgt i32 %n_items, 0
  br i1 %cmp27, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %block_mask.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 28
  %arrayidx3 = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i, i32 0, i32 3, i32 %conv.i
  %arrayidx4 = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i, i32 0, i32 4, i32 %conv.i
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %n_items
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %transfer_context = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.028, i32 1
  %0 = ptrtoint ptr %transfer_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_context, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = ptrtoint ptr %block_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_mask.i, align 4
  %add.i = add i32 %5, %3
  %neg.i = xor i32 %5, -1
  %and.i = and i32 %add.i, %neg.i
  tail call void @skb_trim(ptr noundef %1, i32 noundef %and.i) #10
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %add = add i32 %9, %7
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %sub = sub i32 %add, %11
  %call6 = tail call fastcc i32 @ath10k_sdio_prep_async_req(ptr noundef %ar, i32 noundef %sub, ptr noundef %1, ptr noundef null, i1 noundef zeroext true, i32 noundef %conv.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup9_crit_edge

for.body.cleanup9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup9

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %workqueue = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1604
  %12 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %workqueue, align 4
  %wr_async_work = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1605
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %wr_async_work) #10
  br label %cleanup9

cleanup9:                                         ; preds = %for.end, %for.body.cleanup9_crit_edge
  %retval.2 = phi i32 [ 0, %for.end ], [ %call6, %for.body.cleanup9_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sdio_hif_diag_write_mem(ptr noundef %ar, i32 noundef %address, ptr noundef %data, i32 noundef %nbytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ath10k_sdio_write(ptr noundef %ar, i32 noundef 2164, ptr noundef %data, i32 noundef %nbytes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.52, ptr noundef %data, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @ath10k_sdio_write32(ptr noundef %ar, i32 noundef 2168, i32 noundef %address)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.53, i32 noundef %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sdio_bmi_exchange_msg(ptr noundef %ar, ptr noundef readonly %req, i32 noundef %req_len, ptr noundef writeonly %resp, ptr noundef readonly %resp_len) #0 align 64 {
entry:
  %rx_word.i = alloca i32, align 4
  %cmd_credits.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_credits.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -300, %0
  %1 = ptrtoint ptr %cmd_credits.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cmd_credits.i, align 4
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub15.i = add i32 %2, %add.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15.i)
  %cmp16.i = icmp slt i32 %sub15.i, 0
  br i1 %cmp16.i, label %if.then.land.rhs.i_crit_edge, label %if.then.if.then3.i_crit_edge

if.then.if.then3.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.then.land.rhs.i_crit_edge:                     ; preds = %if.then
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %if.then.land.rhs.i_crit_edge
  %storemerge17.i = phi i32 [ %and.i, %if.end.i.land.rhs.i_crit_edge ], [ 0, %if.then.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge17.i)
  %tobool.not.i = icmp eq i32 %storemerge17.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %land.rhs.i.if.end_crit_edge

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.body.i:                                     ; preds = %land.rhs.i
  %call.i = call fastcc i32 @ath10k_sdio_read32(ptr noundef %ar, i32 noundef 2128, ptr noundef nonnull %cmd_credits.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.56, i32 noundef %call.i) #10
  br label %ath10k_sdio_bmi_credits.exit

if.end.i:                                         ; preds = %while.body.i
  %3 = ptrtoint ptr %cmd_credits.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd_credits.i, align 4
  %and.i = and i32 %4, 255
  store i32 %and.i, ptr %cmd_credits.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %5, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.land.rhs.i_crit_edge, label %while.end.i

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

while.end.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %phi.cmp.i = icmp eq i32 %and.i, 0
  br i1 %phi.cmp.i, label %while.end.i.if.then3.i_crit_edge, label %while.end.i.if.end_crit_edge

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.end.i.if.then3.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.then3.i:                                       ; preds = %while.end.i.if.then3.i_crit_edge, %if.then.if.then3.i_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.57) #10
  br label %ath10k_sdio_bmi_credits.exit

ath10k_sdio_bmi_credits.exit:                     ; preds = %if.then3.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ -110, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_credits.i) #10
  br label %cleanup

if.end:                                           ; preds = %while.end.i.if.end_crit_edge, %land.rhs.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_credits.i) #10
  %mbox_info = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 4
  %6 = ptrtoint ptr %mbox_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbox_info, align 4
  %bmi_buf = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1602
  %8 = ptrtoint ptr %bmi_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmi_buf, align 4
  %10 = call ptr @memcpy(ptr %9, ptr %req, i32 %req_len)
  %11 = load ptr, ptr %bmi_buf, align 4
  %call5 = tail call fastcc i32 @ath10k_sdio_write(ptr noundef %ar, i32 noundef %7, ptr noundef %11, i32 noundef %req_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.54, i32 noundef %call5) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %resp, null
  %tobool11.not = icmp eq ptr %resp_len, null
  %or.cond = or i1 %tobool10.not, %tobool11.not
  br i1 %or.cond, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_word.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i54 = sub i32 -300, %12
  %13 = ptrtoint ptr %rx_word.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %rx_word.i, align 4
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub17.i = add i32 %14, %add.neg.i54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17.i)
  %cmp18.i = icmp slt i32 %sub17.i, 0
  br i1 %cmp18.i, label %if.end13.while.body.i59_crit_edge, label %if.end13.if.then3.i67_crit_edge

if.end13.if.then3.i67_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i67

if.end13.while.body.i59_crit_edge:                ; preds = %if.end13
  br label %while.body.i59

land.rhs.i56:                                     ; preds = %if.end.i64
  br i1 %tobool.not.i55, label %land.rhs.i56.while.body.i59_crit_edge, label %ath10k_sdio_bmi_get_rx_lookahead.exit

land.rhs.i56.while.body.i59_crit_edge:            ; preds = %land.rhs.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i59

while.body.i59:                                   ; preds = %land.rhs.i56.while.body.i59_crit_edge, %if.end13.while.body.i59_crit_edge
  %call.i57 = call fastcc i32 @ath10k_sdio_read32(ptr noundef %ar, i32 noundef 2048, ptr noundef nonnull %rx_word.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool1.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool1.not.i58, label %if.end.i64, label %if.then.i60

if.then.i60:                                      ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.59, i32 noundef %call.i57) #10
  br label %ath10k_sdio_bmi_get_rx_lookahead.exit.thread

if.end.i64:                                       ; preds = %while.body.i59
  %15 = ptrtoint ptr %rx_word.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_word.i, align 4
  %and.i61 = and i32 %16, 1
  store i32 %and.i61, ptr %rx_word.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub.i62 = add i32 %17, %add.neg.i54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i62)
  %cmp.i63 = icmp slt i32 %sub.i62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.not.i55 = icmp eq i32 %and.i61, 0
  br i1 %cmp.i63, label %land.rhs.i56, label %while.end.i66

while.end.i66:                                    ; preds = %if.end.i64
  br i1 %tobool.not.i55, label %while.end.i66.if.then3.i67_crit_edge, label %ath10k_sdio_bmi_get_rx_lookahead.exit.thread73

while.end.i66.if.then3.i67_crit_edge:             ; preds = %while.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i67

ath10k_sdio_bmi_get_rx_lookahead.exit.thread73:   ; preds = %while.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_word.i) #10
  br label %if.end17

if.then3.i67:                                     ; preds = %while.end.i66.if.then3.i67_crit_edge, %if.end13.if.then3.i67_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.60) #10
  br label %ath10k_sdio_bmi_get_rx_lookahead.exit.thread

ath10k_sdio_bmi_get_rx_lookahead.exit.thread:     ; preds = %if.then3.i67, %if.then.i60
  %retval.0.i68.ph = phi i32 [ -22, %if.then3.i67 ], [ %call.i57, %if.then.i60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_word.i) #10
  br label %cleanup

ath10k_sdio_bmi_get_rx_lookahead.exit:            ; preds = %land.rhs.i56
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_word.i) #10
  br label %if.end17

if.end17:                                         ; preds = %ath10k_sdio_bmi_get_rx_lookahead.exit, %ath10k_sdio_bmi_get_rx_lookahead.exit.thread73
  %mbox_info18 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 4
  %18 = ptrtoint ptr %mbox_info18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mbox_info18, align 4
  %bmi_buf20 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1602
  %20 = ptrtoint ptr %bmi_buf20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bmi_buf20, align 4
  %22 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resp_len, align 4
  %call21 = tail call fastcc i32 @ath10k_sdio_read(ptr noundef %ar, i32 noundef %19, ptr noundef %21, i32 noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.55, i32 noundef %call21) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %bmi_buf20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bmi_buf20, align 4
  %26 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %resp_len, align 4
  %28 = call ptr @memcpy(ptr %resp, ptr %25, i32 %27)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then23, %ath10k_sdio_bmi_get_rx_lookahead.exit.thread, %if.end9.cleanup_crit_edge, %if.then7, %ath10k_sdio_bmi_credits.exit
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ %call21, %if.then23 ], [ 0, %if.end24 ], [ %retval.0.i, %ath10k_sdio_bmi_credits.exit ], [ 0, %if.end9.cleanup_crit_edge ], [ %retval.0.i68.ph, %ath10k_sdio_bmi_get_rx_lookahead.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sdio_hif_start(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  tail call void @ath10k_core_napi_enable(ptr noundef %ar) #10
  tail call void @msleep(i32 noundef 20) #10
  %irq_data1.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1576
  %irq_en_reg.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1600
  %0 = ptrtoint ptr %irq_en_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_en_reg.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %irq_data1.i, i32 noundef 0) #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %1, align 1
  %call2.i = tail call fastcc i32 @ath10k_sdio_write(ptr noundef %ar, i32 noundef 2088, ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end, label %ath10k_sdio_disable_intrs.exit

ath10k_sdio_disable_intrs.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.12, i32 noundef %call2.i) #10
  tail call void @mutex_unlock(ptr noundef %irq_data1.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_unlock(ptr noundef %irq_data1.i) #10
  %ext_info = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 8
  %3 = ptrtoint ptr %ext_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ext_info, align 4
  %mbox_addr = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 44
  %5 = ptrtoint ptr %mbox_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mbox_addr, align 4
  %htc_ext_sz = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 12
  %6 = ptrtoint ptr %htc_ext_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %htc_ext_sz, align 4
  %mbox_size = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %mbox_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mbox_size, align 4
  %9 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv_priv.i, align 4
  tail call void @sdio_claim_host(ptr noundef %10) #10
  %11 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drv_priv.i, align 4
  %call8 = tail call i32 @sdio_claim_irq(ptr noundef %12, ptr noundef nonnull @ath10k_sdio_irq_handler) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.61, i32 noundef %call8) #10
  %13 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv_priv.i, align 4
  tail call void @sdio_release_host(ptr noundef %14) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %15 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drv_priv.i, align 4
  tail call void @sdio_release_host(ptr noundef %16) #10
  %17 = ptrtoint ptr %irq_en_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_en_reg.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %irq_data1.i, i32 noundef 0) #10
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -47, ptr %18, align 1
  %cpu_int_status_en.i = getelementptr inbounds %struct.ath10k_sdio_irq_enable_regs, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %cpu_int_status_en.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %cpu_int_status_en.i, align 1
  %err_int_status_en.i = getelementptr inbounds %struct.ath10k_sdio_irq_enable_regs, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %err_int_status_en.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %err_int_status_en.i, align 1
  %cntr_int_status_en.i = getelementptr inbounds %struct.ath10k_sdio_irq_enable_regs, ptr %18, i32 0, i32 3
  %22 = ptrtoint ptr %cntr_int_status_en.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %cntr_int_status_en.i, align 1
  %call136.i = tail call fastcc i32 @ath10k_sdio_write(ptr noundef %ar, i32 noundef 2088, ptr noundef %18, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.i)
  %tobool.not.i53 = icmp eq i32 %call136.i, 0
  br i1 %tobool.not.i53, label %ath10k_sdio_enable_intrs.exit.thread, label %if.then16

ath10k_sdio_enable_intrs.exit.thread:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %irq_data1.i) #10
  br label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.28, i32 noundef %call136.i) #10
  tail call void @mutex_unlock(ptr noundef %irq_data1.i) #10
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.62, i32 noundef %call136.i) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %ath10k_sdio_enable_intrs.exit.thread
  %call18 = tail call fastcc i32 @ath10k_sdio_set_mbox_sleep(ptr noundef %ar, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 20) #10
  %call22 = tail call fastcc i32 @ath10k_sdio_set_mbox_sleep(ptr noundef %ar, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end17.cleanup_crit_edge, %if.then10, %ath10k_sdio_disable_intrs.exit
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ %call2.i, %ath10k_sdio_disable_intrs.exit ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call22, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_sdio_hif_stop(ptr noundef %ar) #0 align 64 {
entry:
  %irqs_disabled_comp.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %irq_en_reg.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1600
  %0 = ptrtoint ptr %irq_en_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_en_reg.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %irqs_disabled_comp.i) #10
  %2 = getelementptr inbounds i8, ptr %irqs_disabled_comp.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 4, i32 noundef 2592) #10
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.ath10k_sdio_irq_disable.exit_crit_edge, label %if.end.i

entry.ath10k_sdio_irq_disable.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_irq_disable.exit

if.end.i:                                         ; preds = %entry
  %irq_data1.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1576
  tail call void @mutex_lock_nested(ptr noundef %irq_data1.i, i32 noundef 0) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %1, align 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %6, align 1
  %call3.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #10
  tail call void @mutex_unlock(ptr noundef %irq_data1.i) #10
  %8 = ptrtoint ptr %irqs_disabled_comp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %irqs_disabled_comp.i, align 4
  call void @__init_swait_queue_head(ptr noundef %2, ptr noundef nonnull @.str.104, ptr noundef nonnull @init_completion.__key) #10
  %call5.i = call fastcc i32 @ath10k_sdio_prep_async_req(ptr noundef %ar, i32 noundef 2088, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %irqs_disabled_comp.i, i1 noundef zeroext false, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end8.i:                                        ; preds = %if.end.i
  %workqueue.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1604
  %9 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %workqueue.i, align 4
  %wr_async_work.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1605
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %wr_async_work.i) #10
  %call10.i = call i32 @wait_for_completion_timeout(ptr noundef nonnull %irqs_disabled_comp.i, i32 noundef 300) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end8.i.if.end13.i_crit_edge

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.102) #10
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end13.i_crit_edge
  %11 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drv_priv.i, align 4
  call void @sdio_claim_host(ptr noundef %12) #10
  %13 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv_priv.i, align 4
  %call15.i = call i32 @sdio_release_irq(ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end18.i_crit_edge, label %if.then17.i

if.end13.i.if.end18.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.103, i32 noundef %call15.i) #10
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end13.i.if.end18.i_crit_edge
  %15 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drv_priv.i, align 4
  call void @sdio_release_host(ptr noundef %16) #10
  br label %out.i

out.i:                                            ; preds = %if.end18.i, %if.end.i.out.i_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #10
  br label %ath10k_sdio_irq_disable.exit

ath10k_sdio_irq_disable.exit:                     ; preds = %out.i, %entry.ath10k_sdio_irq_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %irqs_disabled_comp.i) #10
  %async_work_rx = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1629
  %call1 = call zeroext i1 @cancel_work_sync(ptr noundef %async_work_rx) #10
  %rx_head = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1229
  %call246 = call ptr @skb_dequeue(ptr noundef %rx_head) #10
  %tobool.not47 = icmp eq ptr %call246, null
  br i1 %tobool.not47, label %ath10k_sdio_irq_disable.exit.while.end_crit_edge, label %ath10k_sdio_irq_disable.exit.while.body_crit_edge

ath10k_sdio_irq_disable.exit.while.body_crit_edge: ; preds = %ath10k_sdio_irq_disable.exit
  br label %while.body

ath10k_sdio_irq_disable.exit.while.end_crit_edge: ; preds = %ath10k_sdio_irq_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %ath10k_sdio_irq_disable.exit.while.body_crit_edge
  %call248 = phi ptr [ %call2, %while.body.while.body_crit_edge ], [ %call246, %ath10k_sdio_irq_disable.exit.while.body_crit_edge ]
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call248, i32 noundef 1) #10
  %call2 = call ptr @skb_dequeue(ptr noundef %rx_head) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %ath10k_sdio_irq_disable.exit.while.end_crit_edge
  %wr_async_work = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1605
  %call3 = call zeroext i1 @cancel_work_sync(ptr noundef %wr_async_work) #10
  %wr_async_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1618
  call void @_raw_spin_lock_bh(ptr noundef %wr_async_lock) #10
  %wr_asyncq = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1616
  %17 = ptrtoint ptr %wr_asyncq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wr_asyncq, align 4
  %cmp.not50 = icmp eq ptr %18, %wr_asyncq
  br i1 %cmp.not50, label %while.end.for.end_crit_edge, label %for.body.lr.ph

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %lock.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1243
  %bus_req_freeq.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1227
  %prev.i.i44 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1228
  br label %for.body

for.body:                                         ; preds = %ath10k_sdio_free_bus_req.exit.for.body_crit_edge, %for.body.lr.ph
  %req.051 = phi ptr [ %18, %for.body.lr.ph ], [ %tmp_req.052, %ath10k_sdio_free_bus_req.exit.for.body_crit_edge ]
  %19 = ptrtoint ptr %req.051 to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp_req.052 = load ptr, ptr %req.051, align 4
  %call.i.i43 = call zeroext i1 @__list_del_entry_valid(ptr noundef %req.051) #10
  br i1 %call.i.i43, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req.051, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %req.051 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req.051, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %26 = ptrtoint ptr %req.051 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %req.051, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %req.051, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %htc_msg = getelementptr inbounds %struct.ath10k_sdio_bus_request, ptr %req.051, i32 0, i32 5
  %28 = ptrtoint ptr %htc_msg to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %htc_msg, align 4, !range !292
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool11.not = icmp eq i8 %29, 0
  br i1 %tobool11.not, label %if.else, label %if.then

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %eid = getelementptr inbounds %struct.ath10k_sdio_bus_request, ptr %req.051, i32 0, i32 3
  %30 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %eid, align 4
  %arrayidx = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 %31
  %skb12 = getelementptr inbounds %struct.ath10k_sdio_bus_request, ptr %req.051, i32 0, i32 2
  %32 = ptrtoint ptr %skb12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb12, align 4
  call void @ath10k_htc_notify_tx_completion(ptr noundef %arrayidx, ptr noundef %33) #10
  br label %if.end17

if.else:                                          ; preds = %list_del.exit
  %skb13 = getelementptr inbounds %struct.ath10k_sdio_bus_request, ptr %req.051, i32 0, i32 2
  %34 = ptrtoint ptr %skb13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skb13, align 4
  %tobool14.not = icmp eq ptr %35, null
  br i1 %tobool14.not, label %if.else.if.end17_crit_edge, label %if.then15

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef nonnull %35, i32 noundef 0) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.else.if.end17_crit_edge, %if.then
  %36 = call ptr @memset(ptr %req.051, i32 0, i32 32)
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %37 = ptrtoint ptr %prev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i44, align 4
  %call.i.i.i45 = call zeroext i1 @__list_add_valid(ptr noundef %req.051, ptr noundef %38, ptr noundef %bus_req_freeq.i) #10
  br i1 %call.i.i.i45, label %if.end.i.i.i, label %if.end17.ath10k_sdio_free_bus_req.exit_crit_edge

if.end17.ath10k_sdio_free_bus_req.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_free_bus_req.exit

if.end.i.i.i:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %prev.i.i44 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %req.051, ptr %prev.i.i44, align 4
  %40 = ptrtoint ptr %req.051 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %bus_req_freeq.i, ptr %req.051, align 4
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %req.051, ptr %38, align 4
  br label %ath10k_sdio_free_bus_req.exit

ath10k_sdio_free_bus_req.exit:                    ; preds = %if.end.i.i.i, %if.end17.ath10k_sdio_free_bus_req.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %cmp.not = icmp eq ptr %tmp_req.052, %wr_asyncq
  br i1 %cmp.not, label %ath10k_sdio_free_bus_req.exit.for.end_crit_edge, label %ath10k_sdio_free_bus_req.exit.for.body_crit_edge

ath10k_sdio_free_bus_req.exit.for.body_crit_edge: ; preds = %ath10k_sdio_free_bus_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

ath10k_sdio_free_bus_req.exit.for.end_crit_edge:  ; preds = %ath10k_sdio_free_bus_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %ath10k_sdio_free_bus_req.exit.for.end_crit_edge, %while.end.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %wr_async_lock) #10
  call void @ath10k_core_napi_sync_disable(ptr noundef %ar) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sdio_hif_start_post(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @ath10k_sdio_hif_diag_read(ptr noundef %ar, i32 noundef 4196544, ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %ath10k_sdio_diag_read32.exit

ath10k_sdio_diag_read32.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %if.then

if.then:                                          ; preds = %ath10k_sdio_diag_read32.exit, %entry.if.then_crit_edge
  %retval.0.i39 = phi i32 [ %call1.i, %ath10k_sdio_diag_read32.exit ], [ -12, %entry.if.then_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.105, i32 noundef %retval.0.i39) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %3 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and11 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool3.not, label %do.body10, label %do.body

do.body:                                          ; preds = %if.end
  br i1 %tobool12.not, label %lor.lhs.false, label %do.body.if.end20.sink.split_crit_edge

do.body.if.end20.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.sink.split

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_hif_start_post, %if.end20.sink.split)) #10
          to label %if.end20 [label %if.end20.sink.split], !srcloc !290

do.body10:                                        ; preds = %if.end
  br i1 %tobool12.not, label %lor.lhs.false13, label %do.body10.if.end20.sink.split_crit_edge

do.body10.if.end20.sink.split_crit_edge:          ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.sink.split

lor.lhs.false13:                                  ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_hif_start_post, %if.end20.sink.split)) #10
          to label %if.end20 [label %if.end20.sink.split], !srcloc !290

if.end20.sink.split:                              ; preds = %lor.lhs.false13, %do.body10.if.end20.sink.split_crit_edge, %lor.lhs.false, %do.body.if.end20.sink.split_crit_edge
  %.str.107.sink = phi ptr [ @.str.106, %lor.lhs.false ], [ @.str.106, %do.body.if.end20.sink.split_crit_edge ], [ @.str.107, %lor.lhs.false13 ], [ @.str.107, %do.body10.if.end20.sink.split_crit_edge ]
  %.sink.ph = phi i8 [ 1, %lor.lhs.false ], [ 1, %do.body.if.end20.sink.split_crit_edge ], [ 0, %lor.lhs.false13 ], [ 0, %do.body10.if.end20.sink.split_crit_edge ]
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull %.str.107.sink) #10
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %lor.lhs.false13, %lor.lhs.false
  %.sink = phi i8 [ 1, %lor.lhs.false ], [ 0, %lor.lhs.false13 ], [ %.sink.ph, %if.end20.sink.split ]
  %swap_mbox19 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 40
  %5 = ptrtoint ptr %swap_mbox19 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %swap_mbox19, align 4
  %call21 = tail call fastcc i32 @ath10k_sdio_set_mbox_sleep(ptr noundef %ar, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then
  %retval.0 = phi i32 [ %retval.0.i39, %if.then ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sdio_get_htt_tx_complete(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @ath10k_sdio_hif_diag_read(ptr noundef %ar, i32 noundef 4196544, ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %ath10k_sdio_diag_read32.exit

ath10k_sdio_diag_read32.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %if.then

if.then:                                          ; preds = %ath10k_sdio_diag_read32.exit, %entry.if.then_crit_edge
  %retval.0.i19 = phi i32 [ %call1.i, %ath10k_sdio_diag_read32.exit ], [ -12, %entry.if.then_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.108, i32 noundef %retval.0.i19) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i.i, align 8
  %3 = shl i32 %2, 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %and = and i32 %3, 131072
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and2 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_get_htt_tx_complete, %if.then5)) #10
          to label %cleanup [label %if.then5], !srcloc !290

if.then5:                                         ; preds = %lor.lhs.false, %if.end.if.then5_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool6.not, ptr @.str.111, ptr @.str.110
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.109, ptr noundef nonnull %cond) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ %retval.0.i19, %if.then ], [ %and, %if.then5 ], [ %and, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sdio_hif_map_service_to_pipe(ptr noundef %ar, i16 noundef zeroext %service_id, ptr nocapture noundef writeonly %ul_pipe, ptr nocapture noundef writeonly %dl_pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %conv = zext i16 %service_id to i32
  %service_id2 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %service_id2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %service_id2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp3 = icmp eq i32 %1, %conv
  br i1 %cmp3, label %entry.if.end9_crit_edge, label %for.inc

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.inc:                                          ; preds = %entry
  %service_id2.1 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 1, i32 2
  %2 = ptrtoint ptr %service_id2.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %service_id2.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp3.1 = icmp eq i32 %3, %conv
  br i1 %cmp3.1, label %for.inc.if.end9_crit_edge, label %for.inc.1

for.inc.if.end9_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.inc.1:                                        ; preds = %for.inc
  %service_id2.2 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 2, i32 2
  %4 = ptrtoint ptr %service_id2.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %service_id2.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp3.2 = icmp eq i32 %5, %conv
  br i1 %cmp3.2, label %for.inc.1.if.end9_crit_edge, label %for.inc.2

for.inc.1.if.end9_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.inc.2:                                        ; preds = %for.inc.1
  %service_id2.3 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 3, i32 2
  %6 = ptrtoint ptr %service_id2.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %service_id2.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp3.3 = icmp eq i32 %7, %conv
  br i1 %cmp3.3, label %for.inc.2.if.end9_crit_edge, label %for.inc.3

for.inc.2.if.end9_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.inc.3:                                        ; preds = %for.inc.2
  %service_id2.4 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 4, i32 2
  %8 = ptrtoint ptr %service_id2.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %service_id2.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp3.4 = icmp eq i32 %9, %conv
  br i1 %cmp3.4, label %for.inc.3.if.end9_crit_edge, label %for.inc.4

for.inc.3.if.end9_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.inc.4:                                        ; preds = %for.inc.3
  %service_id2.5 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 5, i32 2
  %10 = ptrtoint ptr %service_id2.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %service_id2.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp3.5 = icmp eq i32 %11, %conv
  br i1 %cmp3.5, label %for.inc.4.if.end9_crit_edge, label %for.inc.5

for.inc.4.if.end9_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.inc.5:                                        ; preds = %for.inc.4
  %service_id2.6 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 6, i32 2
  %12 = ptrtoint ptr %service_id2.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %service_id2.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp3.6 = icmp eq i32 %13, %conv
  br i1 %cmp3.6, label %for.inc.5.if.end9_crit_edge, label %for.inc.6

for.inc.5.if.end9_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.inc.6:                                        ; preds = %for.inc.5
  %service_id2.7 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 7, i32 2
  %14 = ptrtoint ptr %service_id2.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %service_id2.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv)
  %cmp3.7 = icmp eq i32 %15, %conv
  br i1 %cmp3.7, label %for.inc.6.if.end9_crit_edge, label %for.inc.7

for.inc.6.if.end9_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.inc.7:                                        ; preds = %for.inc.6
  %service_id2.8 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 8, i32 2
  %16 = ptrtoint ptr %service_id2.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %service_id2.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp3.8 = icmp eq i32 %17, %conv
  br i1 %cmp3.8, label %for.inc.7.if.end9_crit_edge, label %for.inc.7.cleanup_crit_edge

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.7.if.end9_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %for.inc.7.if.end9_crit_edge, %for.inc.6.if.end9_crit_edge, %for.inc.5.if.end9_crit_edge, %for.inc.4.if.end9_crit_edge, %for.inc.3.if.end9_crit_edge, %for.inc.2.if.end9_crit_edge, %for.inc.1.if.end9_crit_edge, %for.inc.if.end9_crit_edge, %entry.if.end9_crit_edge
  %i.0124.lcssa = phi i32 [ 0, %entry.if.end9_crit_edge ], [ 1, %for.inc.if.end9_crit_edge ], [ 2, %for.inc.1.if.end9_crit_edge ], [ 3, %for.inc.2.if.end9_crit_edge ], [ 4, %for.inc.3.if.end9_crit_edge ], [ 5, %for.inc.4.if.end9_crit_edge ], [ 6, %for.inc.5.if.end9_crit_edge ], [ 7, %for.inc.6.if.end9_crit_edge ], [ 8, %for.inc.7.if.end9_crit_edge ]
  %eid7 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 %i.0124.lcssa, i32 1
  %18 = ptrtoint ptr %eid7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %eid7, align 4
  %conv10 = trunc i32 %19 to i8
  %20 = ptrtoint ptr %dl_pipe to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv10, ptr %dl_pipe, align 1
  %21 = ptrtoint ptr %ul_pipe to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv10, ptr %ul_pipe, align 1
  %swap_mbox = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 40
  %22 = ptrtoint ptr %swap_mbox to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %swap_mbox, align 4, !range !292
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool11.not = icmp eq i8 %23, 0
  %ext_info26 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 8
  %arrayidx27 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 143, i32 16
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %htc_ext_sz = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 12
  %htc_ext_sz24 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 143, i32 20
  br label %if.end41

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %htc_ext_sz36 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 143, i32 20
  %htc_ext_sz40 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 12
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then12
  %htt_addr.0.in = phi ptr [ %ext_info26, %if.then12 ], [ %arrayidx27, %if.else ]
  %wmi_addr.0.in = phi ptr [ %arrayidx27, %if.then12 ], [ %ext_info26, %if.else ]
  %htt_mbox_size.0.in = phi ptr [ %htc_ext_sz, %if.then12 ], [ %htc_ext_sz36, %if.else ]
  %wmi_mbox_size.0.in = phi ptr [ %htc_ext_sz24, %if.then12 ], [ %htc_ext_sz40, %if.else ]
  %24 = zext i16 %service_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.135)
  switch i16 %service_id, label %sw.default [
    i16 1, label %if.end41.cleanup_crit_edge
    i16 256, label %sw.bb
    i16 768, label %sw.bb54
  ]

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end41
  %25 = ptrtoint ptr %wmi_mbox_size.0.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %wmi_mbox_size.0 = load i32, ptr %wmi_mbox_size.0.in, align 4
  %26 = ptrtoint ptr %wmi_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %wmi_addr.0 = load i32, ptr %wmi_addr.0.in, align 4
  %arrayidx43 = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i, i32 0, i32 3, i32 %19
  %27 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %wmi_addr.0, ptr %arrayidx43, align 4
  %arrayidx44 = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i, i32 0, i32 4, i32 %19
  %28 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %wmi_mbox_size.0, ptr %arrayidx44, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %29 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %lor.lhs.false, label %sw.bb.if.then48_crit_edge

sw.bb.if.then48_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

lor.lhs.false:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_hif_map_service_to_pipe, %if.then48)) #10
          to label %cleanup [label %if.then48], !srcloc !290

if.then48:                                        ; preds = %lor.lhs.false, %sw.bb.if.then48_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx43, align 4
  %32 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx44, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.112, i32 noundef %31, i32 noundef %33) #10
  br label %cleanup

sw.bb54:                                          ; preds = %if.end41
  %34 = ptrtoint ptr %htt_mbox_size.0.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %htt_mbox_size.0 = load i32, ptr %htt_mbox_size.0.in, align 4
  %35 = ptrtoint ptr %htt_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %htt_addr.0 = load i32, ptr %htt_addr.0.in, align 4
  %arrayidx56 = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i, i32 0, i32 3, i32 %19
  %36 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %htt_addr.0, ptr %arrayidx56, align 4
  %arrayidx58 = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i, i32 0, i32 4, i32 %19
  %37 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %htt_mbox_size.0, ptr %arrayidx58, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %38 = load i32, ptr @ath10k_debug_mask, align 4
  %and60 = and i32 %38, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %sw.bb54.if.then65_crit_edge

sw.bb54.if.then65_crit_edge:                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then65

lor.lhs.false62:                                  ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_hif_map_service_to_pipe, %if.then65)) #10
          to label %cleanup [label %if.then65], !srcloc !290

if.then65:                                        ; preds = %lor.lhs.false62, %sw.bb54.if.then65_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx56, align 4
  %41 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx58, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.113, i32 noundef %40, i32 noundef %42) #10
  br label %cleanup

sw.default:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.114, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.then65, %lor.lhs.false62, %if.then48, %lor.lhs.false, %if.end41.cleanup_crit_edge, %for.inc.7.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %if.then65 ], [ 0, %if.then48 ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false62 ], [ -22, %for.inc.7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_sdio_hif_get_default_pipe(ptr noundef %ar, ptr nocapture noundef writeonly %ul_pipe, ptr nocapture noundef writeonly %dl_pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_hif_get_default_pipe, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !290

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.115) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %1 = ptrtoint ptr %ul_pipe to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ul_pipe, align 1
  %2 = ptrtoint ptr %dl_pipe to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %dl_pipe, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sdio_hif_power_up(ptr noundef %ar, i32 noundef %fw_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %is_disabled = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1603
  %2 = ptrtoint ptr %is_disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_disabled, align 4, !range !292
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %do.body.if.then4_crit_edge

do.body.if.then4_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_hif_power_up, %if.then4)) #10
          to label %do.end [label %if.then4], !srcloc !290

if.then4:                                         ; preds = %lor.lhs.false, %do.body.if.then4_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.116) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %lor.lhs.false
  %call6 = tail call fastcc i32 @ath10k_sdio_config(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.117, i32 noundef %call6) #10
  br label %cleanup

if.end9:                                          ; preds = %do.end
  tail call void @sdio_claim_host(ptr noundef %1) #10
  %call10 = tail call i32 @sdio_enable_func(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %call10) #10
  tail call void @sdio_release_host(ptr noundef %1) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  tail call void @sdio_release_host(ptr noundef %1) #10
  tail call void @msleep(i32 noundef 20) #10
  %5 = ptrtoint ptr %is_disabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_disabled, align 4
  %irq_data1.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1576
  %irq_en_reg.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1600
  %6 = ptrtoint ptr %irq_en_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_en_reg.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %irq_data1.i, i32 noundef 0) #10
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %7, align 1
  %call2.i = tail call fastcc i32 @ath10k_sdio_write(ptr noundef %ar, i32 noundef 2088, ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end13.ath10k_sdio_disable_intrs.exit_crit_edge, label %if.then.i

if.end13.ath10k_sdio_disable_intrs.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_disable_intrs.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.12, i32 noundef %call2.i) #10
  br label %ath10k_sdio_disable_intrs.exit

ath10k_sdio_disable_intrs.exit:                   ; preds = %if.then.i, %if.end13.ath10k_sdio_disable_intrs.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %irq_data1.i) #10
  br label %cleanup

cleanup:                                          ; preds = %ath10k_sdio_disable_intrs.exit, %if.then12, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then8 ], [ %call10, %if.then12 ], [ 0, %entry.cleanup_crit_edge ], [ %call2.i, %ath10k_sdio_disable_intrs.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_sdio_hif_power_down(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %is_disabled = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1603
  %0 = ptrtoint ptr %is_disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_disabled, align 4, !range !292
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %do.body.if.then3_crit_edge

do.body.if.then3_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_hif_power_down, %if.then3)) #10
          to label %do.end [label %if.then3], !srcloc !290

if.then3:                                         ; preds = %lor.lhs.false, %do.body.if.then3_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.123) #10
  br label %do.end

do.end:                                           ; preds = %if.then3, %lor.lhs.false
  %sleep_timer = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1640
  %call5 = tail call i32 @del_timer_sync(ptr noundef %sleep_timer) #10
  %call6 = tail call fastcc i32 @ath10k_sdio_set_mbox_sleep(ptr noundef %ar, i1 noundef zeroext true)
  %3 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_priv.i, align 4
  tail call void @sdio_claim_host(ptr noundef %4) #10
  %5 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv_priv.i, align 4
  %call8 = tail call i32 @sdio_disable_func(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.124, i32 noundef %call8) #10
  %7 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv_priv.i, align 4
  tail call void @sdio_release_host(ptr noundef %8) #10
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %9 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv_priv.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %call14 = tail call i32 @mmc_hw_reset(ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.if.end17_crit_edge, label %if.then16

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.125, i32 noundef %call14) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12.if.end17_crit_edge
  %15 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drv_priv.i, align 4
  tail call void @sdio_release_host(ptr noundef %16) #10
  %17 = ptrtoint ptr %is_disabled to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %is_disabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath10k_sdio_hif_suspend(ptr nocapture noundef readnone %ar) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sdio_hif_resume(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 103
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %do.body, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then_crit_edge

do.body.if.then_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_hif_resume, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !290

if.then:                                          ; preds = %lor.lhs.false, %do.body.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.126) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %call1 = tail call fastcc i32 @ath10k_sdio_config(ptr noundef %ar)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_sdio_prep_async_req(ptr noundef %ar, i32 noundef %addr, ptr noundef %skb, ptr noundef %comp, i1 noundef zeroext %htc_msg, i32 noundef %eid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1243
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %bus_req_freeq.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1227
  %0 = ptrtoint ptr %bus_req_freeq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %bus_req_freeq.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %bus_req_freeq.i
  br i1 %cmp.i.not.i, label %ath10k_sdio_alloc_busreq.exit.thread, label %if.end.i

ath10k_sdio_alloc_busreq.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.ath10k_sdio_alloc_busreq.exit_crit_edge

if.end.i.ath10k_sdio_alloc_busreq.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_alloc_busreq.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %ath10k_sdio_alloc_busreq.exit

ath10k_sdio_alloc_busreq.exit:                    ; preds = %if.end.i.i.i, %if.end.i.ath10k_sdio_alloc_busreq.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %ath10k_sdio_alloc_busreq.exit.if.then_crit_edge, label %if.end

ath10k_sdio_alloc_busreq.exit.if.then_crit_edge:  ; preds = %ath10k_sdio_alloc_busreq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %ath10k_sdio_alloc_busreq.exit.if.then_crit_edge, %ath10k_sdio_alloc_busreq.exit.thread
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.51) #10
  br label %cleanup

if.end:                                           ; preds = %ath10k_sdio_alloc_busreq.exit
  %frombool = zext i1 %htc_msg to i8
  %skb2 = getelementptr inbounds %struct.ath10k_sdio_bus_request, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %skb2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %skb, ptr %skb2, align 4
  %eid3 = getelementptr inbounds %struct.ath10k_sdio_bus_request, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %eid3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %eid, ptr %eid3, align 4
  %address = getelementptr inbounds %struct.ath10k_sdio_bus_request, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %addr, ptr %address, align 4
  %htc_msg5 = getelementptr inbounds %struct.ath10k_sdio_bus_request, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %htc_msg5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %htc_msg5, align 4
  %comp7 = getelementptr inbounds %struct.ath10k_sdio_bus_request, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %comp7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %comp, ptr %comp7, align 4
  %wr_async_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1618
  tail call void @_raw_spin_lock_bh(ptr noundef %wr_async_lock) #10
  %wr_asyncq = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1616
  %prev.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1617
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %1, ptr noundef %16, ptr noundef %wr_asyncq) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %prev.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %wr_asyncq, ptr %1, align 4
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %1, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wr_async_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_sdio_read32(ptr noundef %ar, i32 noundef %addr, ptr nocapture noundef %val) unnamed_addr #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #10
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ret, align 4, !annotation !291
  tail call void @sdio_claim_host(ptr noundef %1) #10
  %call2 = call i32 @sdio_readl(ptr noundef %1, i32 noundef %addr, ptr noundef nonnull %ret) #10
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2, ptr %val, align 4
  %4 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.9, i32 noundef %addr, i32 noundef %5) #10
  br label %out

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %6 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %do.body.if.then5_crit_edge

do.body.if.then5_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_read32, %if.then5)) #10
          to label %out [label %if.then5], !srcloc !290

if.then5:                                         ; preds = %lor.lhs.false, %do.body.if.then5_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.58, i32 noundef %addr, i32 noundef %8) #10
  br label %out

out:                                              ; preds = %if.then5, %lor.lhs.false, %if.then
  call void @sdio_release_host(ptr noundef %1) #10
  %9 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #10
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_sdio_irq_handler(ptr nocapture noundef readonly %func) #0 align 64 {
entry:
  %done = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ar1 = getelementptr inbounds %struct.ath10k_sdio, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %done) #10
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %done, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void @sdio_release_host(ptr noundef %6) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -10000, %7
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %call3 = call fastcc i32 @ath10k_sdio_mbox_proc_pending_irqs(ptr noundef %3, ptr noundef nonnull %done)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.cond, label %land.lhs.true.critedge

do.cond:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.rhs, label %if.end9.critedge

land.rhs:                                         ; preds = %do.cond
  %9 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %done, align 1, !range !292
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %land.rhs.do.body_crit_edge, label %if.end9.critedge17

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true.critedge:                           ; preds = %do.body
  tail call void @ath10k_mac_tx_push_pending(ptr noundef %3) #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %call3)
  %cmp7.not = icmp eq i32 %call3, -125
  br i1 %cmp7.not, label %land.lhs.true.critedge.if.end9_crit_edge, label %if.then8

land.lhs.true.critedge.if.end9_crit_edge:         ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %3, ptr noundef nonnull @.str.63, i32 noundef %call3) #10
  br label %if.end9

if.end9.critedge:                                 ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath10k_mac_tx_push_pending(ptr noundef %3) #10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %14) #10
  br label %if.end9

if.end9.critedge17:                               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath10k_mac_tx_push_pending(ptr noundef %3) #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %16) #10
  br label %if.end9

if.end9:                                          ; preds = %if.end9.critedge17, %if.end9.critedge, %if.then8, %land.lhs.true.critedge.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %done) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_sdio_set_mbox_sleep(ptr noundef %ar, i1 noundef zeroext %enable_sleep) unnamed_addr #0 align 64 {
entry:
  %ret.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !291
  %1 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %drv_priv.i, align 4
  tail call void @sdio_claim_host(ptr noundef %2) #10
  %call1 = call fastcc i32 @ath10k_sdio_read32(ptr noundef %ar, i32 noundef 2152, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.97, i32 noundef %call1) #10
  br label %release

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, -65537
  %masksel = select i1 %enable_sleep, i32 0, i32 65536
  %storemerge = or i32 %and, %masksel
  %.sink = select i1 %enable_sleep, i32 2, i32 3
  %5 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1652
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %5, align 4
  %call6 = tail call fastcc i32 @ath10k_sdio_write32(ptr noundef %ar, i32 noundef 2152, i32 noundef %storemerge)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.98, i32 noundef %call6) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  br i1 %enable_sleep, label %if.end9.release_crit_edge, label %do.body.preheader

if.end9.release_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

do.body.preheader:                                ; preds = %if.end9
  %ar1.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1575
  br label %do.body

do.body:                                          ; preds = %if.end25.do.body_crit_edge, %do.body.preheader
  %rtc_state.0 = phi i8 [ %rtc_state.154, %if.end25.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %retry.0 = phi i32 [ %dec, %if.end25.do.body_crit_edge ], [ 10, %do.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 26843500) #10
  %8 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ar1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %10 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ret.i, align 4
  %11 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drv_priv.i, align 4
  %call.i = call zeroext i8 @sdio_f0_readb(ptr noundef %12, i32 noundef 4408, ptr noundef nonnull %ret.i) #10
  %13 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %ath10k_sdio_read_rtc_state.exit.thread, label %ath10k_sdio_read_rtc_state.exit

ath10k_sdio_read_rtc_state.exit.thread:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %15 = and i8 %call.i, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  br label %do.body16

ath10k_sdio_read_rtc_state.exit:                  ; preds = %do.body
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %9, ptr noundef nonnull @.str.101, i32 noundef %14) #10
  %16 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i.pr = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.pr)
  %tobool13.not = icmp eq i32 %retval.0.i.pr, 0
  br i1 %tobool13.not, label %ath10k_sdio_read_rtc_state.exit.do.body16_crit_edge, label %if.then14

ath10k_sdio_read_rtc_state.exit.do.body16_crit_edge: ; preds = %ath10k_sdio_read_rtc_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

if.then14:                                        ; preds = %ath10k_sdio_read_rtc_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.99, i32 noundef %retval.0.i.pr) #10
  br label %release

do.body16:                                        ; preds = %ath10k_sdio_read_rtc_state.exit.do.body16_crit_edge, %ath10k_sdio_read_rtc_state.exit.thread
  %rtc_state.154 = phi i8 [ %15, %ath10k_sdio_read_rtc_state.exit.thread ], [ %rtc_state.0, %ath10k_sdio_read_rtc_state.exit.do.body16_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %17 = load i32, ptr @ath10k_debug_mask, align 4
  %and17 = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %do.body16.if.then20_crit_edge

do.body16.if.then20_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false:                                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_set_mbox_sleep, %if.then20)) #10
          to label %do.end [label %if.then20], !srcloc !290

if.then20:                                        ; preds = %lor.lhs.false, %do.body16.if.then20_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %rtc_state.154 to i32
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.100, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then20, %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rtc_state.154)
  %cmp = icmp eq i8 %rtc_state.154, 1
  br i1 %cmp, label %do.end.release_crit_edge, label %if.end25

do.end.release_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

if.end25:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 322122000) #10
  %dec = add nsw i32 %retry.0, -1
  %cmp27.not = icmp eq i32 %dec, 0
  br i1 %cmp27.not, label %if.end25.release_crit_edge, label %if.end25.do.body_crit_edge

if.end25.do.body_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end25.release_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

release:                                          ; preds = %if.end25.release_crit_edge, %do.end.release_crit_edge, %if.then14, %if.end9.release_crit_edge, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call6, %if.end9.release_crit_edge ], [ %retval.0.i.pr, %if.then14 ], [ 0, %if.end25.release_crit_edge ], [ 0, %do.end.release_crit_edge ]
  %19 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drv_priv.i, align 4
  call void @sdio_release_host(ptr noundef %20) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_sdio_mbox_proc_pending_irqs(ptr noundef %ar, ptr nocapture noundef %done) unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %lookaheads.i = alloca [64 x i32], align 4
  %n_lookaheads.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data1.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1576
  %irq_proc_reg2.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1599
  %0 = ptrtoint ptr %irq_proc_reg2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_proc_reg2.i, align 4
  %irq_en_reg3.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1600
  %2 = ptrtoint ptr %irq_en_reg3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_en_reg3.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %irq_data1.i, i32 noundef 0) #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.thread, label %if.end.i

land.lhs.true.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %irq_data1.i) #10
  br label %if.then3

if.end.i:                                         ; preds = %entry
  %call16.i = tail call fastcc i32 @ath10k_sdio_read(ptr noundef %ar, i32 noundef 2048, ptr noundef %1, i32 noundef 44) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.then

if.end19.i:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 1
  %and65.i = and i8 %9, %7
  %10 = and i8 %and65.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool28.not.i = icmp eq i8 %10, 0
  br i1 %tobool28.not.i, label %if.end19.i.if.end_crit_edge, label %if.end30.i

if.end19.i.if.end_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end30.i:                                       ; preds = %if.end19.i
  %and33.i = and i8 %and65.i, -2
  %rx_lookahead_valid.i = getelementptr inbounds %struct.ath10k_sdio_irq_proc_regs, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %rx_lookahead_valid.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rx_lookahead_valid.i, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool38.not.i = icmp eq i8 %13, 0
  br i1 %tobool38.not.i, label %if.end30.i.if.end_crit_edge, label %if.then39.i

if.end30.i.if.end_crit_edge:                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then39.i:                                      ; preds = %if.end30.i
  %rx_lookahead.i = getelementptr inbounds %struct.ath10k_sdio_irq_proc_regs, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %rx_lookahead.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_lookahead.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool40.not.i = icmp eq i32 %15, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %if.then39.i.if.end_crit_edge

if.then39.i.if.end_crit_edge:                     ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then41.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.68) #10
  br label %if.end

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath10k_core_start_recovery(ptr noundef %ar) #10
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.67) #10
  tail call void @mutex_unlock(ptr noundef %irq_data1.i) #10
  %17 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %done, align 1
  br label %do.body98

if.end:                                           ; preds = %if.then41.i, %if.then39.i.if.end_crit_edge, %if.end30.i.if.end_crit_edge, %if.end19.i.if.end_crit_edge
  %host_int_status.0.ph = phi i8 [ %and65.i, %if.end19.i.if.end_crit_edge ], [ %and33.i, %if.then39.i.if.end_crit_edge ], [ %and33.i, %if.then41.i ], [ %and33.i, %if.end30.i.if.end_crit_edge ]
  %lookahead.0.ph = phi i32 [ 0, %if.end19.i.if.end_crit_edge ], [ %16, %if.then39.i.if.end_crit_edge ], [ %16, %if.then41.i ], [ 0, %if.end30.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %irq_data1.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %host_int_status.0.ph)
  %tobool1.not = icmp eq i8 %host_int_status.0.ph, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lookahead.0.ph)
  %tobool2.not = icmp eq i32 %lookahead.0.ph, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool2.not, label %land.lhs.true.if.then3_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true.if.then3_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %land.lhs.true.if.then3_crit_edge, %land.lhs.true.thread
  %18 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %done, align 1
  br label %do.body98

if.end4:                                          ; preds = %if.end
  br i1 %tobool2.not, label %if.end4.do.body16_crit_edge, label %if.end4.do.body_crit_edge

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end4.do.body16_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

do.body:                                          ; preds = %if.end4.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %19 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %do.body.if.then9_crit_edge

do.body.if.then9_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_mbox_proc_pending_irqs, %if.then9)) #10
          to label %do.end [label %if.then9], !srcloc !290

if.then9:                                         ; preds = %lor.lhs.false, %do.body.if.then9_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.64, i32 noundef %lookahead.0.ph) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %lor.lhs.false
  %drv_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %lookaheads.i) #10
  %20 = getelementptr inbounds i8, ptr %lookaheads.i, i32 4
  %21 = call ptr @memset(ptr %20, i32 255, i32 252)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_lookaheads.i) #10
  %22 = ptrtoint ptr %n_lookaheads.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %n_lookaheads.i, align 4
  %23 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %done, align 1
  %24 = ptrtoint ptr %lookaheads.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %lookahead.0.ph, ptr %lookaheads.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %block_mask.i.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 28
  %max_msgs_per_htc_bundle.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 42, i32 9
  %n_rx_pkts.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1574
  %rx_pkts.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1254
  %mbox_info.i52.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 4
  %alloc_len.i53.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1255
  %act_len.i59.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1256
  %trailer_only.i.i64.i = getelementptr inbounds %struct.ath10k_sdio_rx_data, ptr %rx_pkts.i.i, i32 0, i32 6
  %vsg_buffer.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1601
  %htc1.i.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 42
  %rx_head.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1229
  %workqueue_aux.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 78
  %async_work_rx.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1629
  %add.neg.i = sub i32 -2000, %25
  br label %for.cond.preheader.i.i

do.bodythread-pre-split.i:                        ; preds = %if.end15.i
  %cmp.i.i = icmp sgt i32 %192, 64
  br i1 %cmp.i.i, label %if.then.i.i, label %do.bodythread-pre-split.i.for.cond.preheader.i.i_crit_edge

do.bodythread-pre-split.i.for.cond.preheader.i.i_crit_edge: ; preds = %do.bodythread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %do.bodythread-pre-split.i.for.cond.preheader.i.i_crit_edge, %do.end
  %26 = phi i32 [ 1, %do.end ], [ %192, %do.bodythread-pre-split.i.for.cond.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1150.i.i = icmp sgt i32 %26, 0
  br i1 %cmp1150.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %if.end.thread.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

if.end.thread.i:                                  ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %n_rx_pkts.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %n_rx_pkts.i.i, align 4
  br label %if.else.i

if.then.i.i:                                      ; preds = %do.bodythread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.70, i32 noundef %192, i32 noundef 64) #10
  br label %err.i.i

for.body.i.i:                                     ; preds = %if.end42.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %pkt_cnt.0152.i.i = phi i32 [ %inc.i.i, %if.end42.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i.0151.i.i = phi i32 [ %inc43.i.i, %if.end42.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %lookaheads.i, i32 %i.0151.i.i
  %len.i.i = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %arrayidx.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %len.i.i, align 2
  %30 = call i16 @llvm.bswap.i16(i16 %29) #10
  %conv.i.i = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4088, i16 %30)
  %cmp2.i.i = icmp ugt i16 %30, 4088
  br i1 %cmp2.i.i, label %if.then4.i.i, label %if.end7.i.i

if.then4.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.71, i32 noundef %conv.i.i, i32 noundef 4088) #10
  call void @ath10k_core_start_recovery(ptr noundef %ar) #10
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.72) #10
  br label %err.i.i

if.end7.i.i:                                      ; preds = %for.body.i.i
  %add.i.i = add nuw nsw i32 %conv.i.i, 8
  %31 = ptrtoint ptr %block_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %block_mask.i.i.i, align 4
  %add.i.i.i = add i32 %32, %add.i.i
  %neg.i.i.i = xor i32 %32, -1
  %and.i.i.i = and i32 %add.i.i.i, %neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and.i.i.i)
  %cmp11.i.i = icmp ugt i32 %and.i.i.i, 4096
  br i1 %cmp11.i.i, label %if.then13.i.i, label %if.end18.i.i

if.then13.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i, align 4
  %conv14.i.i = zext i8 %34 to i32
  %flags.i.i = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %arrayidx.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags.i.i, align 1
  %conv15.i.i = zext i8 %36 to i32
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.73, i32 noundef %conv14.i.i, i32 noundef %conv15.i.i, i32 noundef %conv.i.i) #10
  br label %err.i.i

if.end18.i.i:                                     ; preds = %if.end7.i.i
  %37 = ptrtoint ptr %max_msgs_per_htc_bundle.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %max_msgs_per_htc_bundle.i.i, align 4
  %flags19.i.i = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %arrayidx.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %flags19.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags19.i.i, align 1
  %conv.i.i.i = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %38)
  %cmp.i.i.i = icmp ugt i8 %38, 16
  %41 = shl nuw nsw i32 %conv.i.i.i, 2
  %shl.i.i.i = and i32 %41, 48
  %extra_count.0.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 0
  %shr.i.i.i = lshr i32 %conv.i.i.i, 4
  %add.i111.i.i = or i32 %extra_count.0.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i111.i.i)
  %tobool.not.i.i = icmp eq i32 %add.i111.i.i, 0
  br i1 %tobool.not.i.i, label %if.end18.i.i.if.end28.i.i_crit_edge, label %if.then21.i.i

if.end18.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i.i

if.then21.i.i:                                    ; preds = %if.end18.i.i
  %arrayidx22.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %pkt_cnt.0152.i.i
  %conv.i112.i.i = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i111.i.i, i32 %conv.i112.i.i)
  %cmp.i113.i.i = icmp ugt i32 %add.i111.i.i, %conv.i112.i.i
  br i1 %cmp.i113.i.i, label %if.then.i.i.i, label %if.then21.i.i.for.body.i.i.i_crit_edge

if.then21.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.then21.i.i
  br label %for.body.i.i.i

if.then.i.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i112.i.i.le = zext i8 %38 to i32
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.76, i32 noundef %conv.i.i, i32 noundef %conv.i112.i.i.le) #10
  br label %cleanup.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then21.i.i.for.body.i.i.i_crit_edge
  %i.023.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then21.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.ath10k_sdio_rx_data, ptr %arrayidx22.i.i, i32 %i.023.i.i.i
  %call.i.i.i.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %and.i.i.i, i32 noundef 2592) #10
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i.i.i.i.i, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i.cleanup.i.i_crit_edge, label %for.inc.i.i.i

for.body.i.i.i.cleanup.i.i_crit_edge:             ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %act_len3.i.i.i.i = getelementptr %struct.ath10k_sdio_rx_data, ptr %arrayidx22.i.i, i32 %i.023.i.i.i, i32 2
  %43 = ptrtoint ptr %act_len3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add.i.i, ptr %act_len3.i.i.i.i, align 4
  %alloc_len.i.i.i.i = getelementptr %struct.ath10k_sdio_rx_data, ptr %arrayidx22.i.i, i32 %i.023.i.i.i, i32 1
  %44 = ptrtoint ptr %alloc_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and.i.i.i, ptr %alloc_len.i.i.i.i, align 4
  %part_of_bundle5.i.i.i.i = getelementptr %struct.ath10k_sdio_rx_data, ptr %arrayidx22.i.i, i32 %i.023.i.i.i, i32 4
  %45 = ptrtoint ptr %part_of_bundle5.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %part_of_bundle5.i.i.i.i, align 4
  %last_in_bundle8.i.i.i.i = getelementptr %struct.ath10k_sdio_rx_data, ptr %arrayidx22.i.i, i32 %i.023.i.i.i, i32 5
  %46 = ptrtoint ptr %last_in_bundle8.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %last_in_bundle8.i.i.i.i, align 1
  %trailer_only.i.i.i.i = getelementptr %struct.ath10k_sdio_rx_data, ptr %arrayidx22.i.i, i32 %i.023.i.i.i, i32 6
  %47 = ptrtoint ptr %trailer_only.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %trailer_only.i.i.i.i, align 2
  %inc.i.i.i = add nuw nsw i32 %i.023.i.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i.i, %add.i111.i.i
  br i1 %exitcond.not.i.i, label %cleanup.thread.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

cleanup.thread.i.i:                               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add27.i.i = add i32 %add.i111.i.i, %pkt_cnt.0152.i.i
  br label %if.end28.i.i

cleanup.i.i:                                      ; preds = %for.body.i.i.i.cleanup.i.i_crit_edge, %if.then.i.i.i
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.74, i32 noundef -12) #10
  br label %err.i.i

if.end28.i.i:                                     ; preds = %cleanup.thread.i.i, %if.end18.i.i.if.end28.i.i_crit_edge
  %pkt_cnt.2.i.i = phi i32 [ %pkt_cnt.0152.i.i, %if.end18.i.i.if.end28.i.i_crit_edge ], [ %add27.i.i, %cleanup.thread.i.i ]
  %48 = ptrtoint ptr %flags19.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags19.i.i, align 1
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool31.not.i.i = icmp eq i8 %50, 0
  %add33.i.i = add i32 %and.i.i.i, 256
  %spec.select.i.i = select i1 %tobool31.not.i.i, i32 %and.i.i.i, i32 %add33.i.i
  %arrayidx36.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %pkt_cnt.2.i.i
  %call.i.i.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %spec.select.i.i, i32 noundef 2592) #10
  %51 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i.i.i.i.i, ptr %arrayidx36.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then41.i.i, label %if.end42.i.i

if.then41.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.75, i32 noundef -12) #10
  br label %err.i.i

if.end42.i.i:                                     ; preds = %if.end28.i.i
  %52 = xor i1 %tobool.not.i.i, true
  %frombool1.i.i.i = zext i1 %52 to i8
  %act_len3.i.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %pkt_cnt.2.i.i, i32 2
  %53 = ptrtoint ptr %act_len3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.i.i, ptr %act_len3.i.i.i, align 4
  %alloc_len.i.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %pkt_cnt.2.i.i, i32 1
  %54 = ptrtoint ptr %alloc_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select.i.i, ptr %alloc_len.i.i.i, align 4
  %part_of_bundle5.i.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %pkt_cnt.2.i.i, i32 4
  %55 = ptrtoint ptr %part_of_bundle5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %frombool1.i.i.i, ptr %part_of_bundle5.i.i.i, align 4
  %last_in_bundle8.i.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %pkt_cnt.2.i.i, i32 5
  %56 = ptrtoint ptr %last_in_bundle8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %frombool1.i.i.i, ptr %last_in_bundle8.i.i.i, align 1
  %trailer_only.i.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %pkt_cnt.2.i.i, i32 6
  %57 = ptrtoint ptr %trailer_only.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %trailer_only.i.i.i, align 2
  %inc.i.i = add i32 %pkt_cnt.2.i.i, 1
  %inc43.i.i = add nuw nsw i32 %i.0151.i.i, 1
  %exitcond173.not.i.i = icmp eq i32 %inc43.i.i, %26
  br i1 %exitcond173.not.i.i, label %if.end.i125, label %if.end42.i.i.for.body.i.i_crit_edge

if.end42.i.i.for.body.i.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

err.i.i:                                          ; preds = %if.then41.i.i, %cleanup.i.i, %if.then13.i.i, %if.then4.i.i, %if.then.i.i
  %ret.0.i.i = phi i32 [ -12, %if.then.i.i ], [ -12, %if.then4.i.i ], [ -22, %if.then13.i.i ], [ -12, %cleanup.i.i ], [ -12, %if.then41.i.i ]
  br label %for.body47.i.i

for.body47.i.i:                                   ; preds = %if.end52.i.i.for.body47.i.i_crit_edge, %err.i.i
  %i.1153.i.i = phi i32 [ 0, %err.i.i ], [ %inc56.i.i, %if.end52.i.i.for.body47.i.i_crit_edge ]
  %alloc_len.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.1153.i.i, i32 1
  %58 = ptrtoint ptr %alloc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %alloc_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool50.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool50.not.i.i, label %for.body47.i.i.do.end.i_crit_edge, label %if.end52.i.i

for.body47.i.i.do.end.i_crit_edge:                ; preds = %for.body47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end52.i.i:                                     ; preds = %for.body47.i.i
  %arrayidx49.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.1153.i.i
  %60 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx49.i.i, align 4
  call void @consume_skb(ptr noundef %61) #10
  %62 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %arrayidx49.i.i, align 4
  %63 = ptrtoint ptr %alloc_len.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %alloc_len.i.i, align 4
  %act_len.i.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.1153.i.i, i32 2
  %64 = ptrtoint ptr %act_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %act_len.i.i.i, align 4
  %trailer_only.i116.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.1153.i.i, i32 6
  %65 = ptrtoint ptr %trailer_only.i116.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %trailer_only.i116.i.i, align 2
  %inc56.i.i = add nuw nsw i32 %i.1153.i.i, 1
  %exitcond174.not.i.i = icmp eq i32 %inc56.i.i, 64
  br i1 %exitcond174.not.i.i, label %if.end52.i.i.do.end.i_crit_edge, label %if.end52.i.i.for.body47.i.i_crit_edge

if.end52.i.i.for.body47.i.i_crit_edge:            ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body47.i.i

if.end52.i.i.do.end.i_crit_edge:                  ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i125:                                      ; preds = %if.end42.i.i
  %66 = ptrtoint ptr %n_rx_pkts.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %inc.i.i, ptr %n_rx_pkts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i.i)
  %cmp.i = icmp ugt i32 %inc.i.i, 1
  br i1 %cmp.i, label %if.end3.i, label %if.end.i125.if.else.i_crit_edge

if.end.i125.if.else.i_crit_edge:                  ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.end3.i:                                        ; preds = %if.end.i125
  %67 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %done, align 1
  %68 = ptrtoint ptr %n_rx_pkts.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr89.i = load i32, ptr %n_rx_pkts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr89.i)
  %cmp5.i = icmp ugt i32 %.pr89.i, 1
  br i1 %cmp5.i, label %if.end3.i.for.body.i40.i_crit_edge, label %if.end3.i.if.else.i_crit_edge

if.end3.i.if.else.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.end3.i.for.body.i40.i_crit_edge:               ; preds = %if.end3.i
  br label %for.body.i40.i

for.body.i40.i:                                   ; preds = %for.body.i40.i.for.body.i40.i_crit_edge, %if.end3.i.for.body.i40.i_crit_edge
  %virt_pkt_len.04.i.i = phi i32 [ %add.i37.i, %for.body.i40.i.for.body.i40.i_crit_edge ], [ 0, %if.end3.i.for.body.i40.i_crit_edge ]
  %i.03.i.i = phi i32 [ %inc.i38.i, %for.body.i40.i.for.body.i40.i_crit_edge ], [ 0, %if.end3.i.for.body.i40.i_crit_edge ]
  %alloc_len.i36.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.03.i.i, i32 1
  %69 = ptrtoint ptr %alloc_len.i36.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %alloc_len.i36.i, align 4
  %add.i37.i = add i32 %70, %virt_pkt_len.04.i.i
  %inc.i38.i = add nuw i32 %i.03.i.i, 1
  %exitcond.not.i39.i = icmp eq i32 %inc.i38.i, %.pr89.i
  br i1 %exitcond.not.i39.i, label %for.end.i41.i, label %for.body.i40.i.for.body.i40.i_crit_edge

for.body.i40.i.for.body.i40.i_crit_edge:          ; preds = %for.body.i40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i40.i

for.end.i41.i:                                    ; preds = %for.body.i40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i37.i)
  %cmp1.i.i = icmp ugt i32 %add.i37.i, 65536
  br i1 %cmp1.i.i, label %if.then.i42.i, label %if.end.i.i

if.then.i42.i:                                    ; preds = %for.end.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.77, i32 noundef %add.i37.i) #10
  br label %err.i47.i

if.end.i.i:                                       ; preds = %for.end.i41.i
  %71 = ptrtoint ptr %mbox_info.i52.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mbox_info.i52.i, align 4
  %73 = ptrtoint ptr %vsg_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vsg_buffer.i.i, align 4
  %call2.i.i = call fastcc i32 @ath10k_sdio_readsb(ptr noundef %ar, i32 noundef %72, ptr noundef %74, i32 noundef %add.i37.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i43.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i43.i, label %for.cond5.preheader.i.i, label %if.then3.i.i

for.cond5.preheader.i.i:                          ; preds = %if.end.i.i
  %75 = ptrtoint ptr %n_rx_pkts.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %n_rx_pkts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp76.not.i.i = icmp eq i32 %76, 0
  br i1 %cmp76.not.i.i, label %for.cond5.preheader.i.i.if.end9.thread.i_crit_edge, label %for.cond5.preheader.i.i.for.body8.i.i_crit_edge

for.cond5.preheader.i.i.for.body8.i.i_crit_edge:  ; preds = %for.cond5.preheader.i.i
  br label %for.body8.i.i

for.cond5.preheader.i.i.if.end9.thread.i_crit_edge: ; preds = %for.cond5.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.thread.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.78, i32 noundef %call2.i.i) #10
  br label %err.i47.i

for.body8.i.i:                                    ; preds = %if.end18.i46.i.for.body8.i.i_crit_edge, %for.cond5.preheader.i.i.for.body8.i.i_crit_edge
  %pkt_offset.08.i.i = phi i32 [ %add22.i.i, %if.end18.i46.i.for.body8.i.i_crit_edge ], [ 0, %for.cond5.preheader.i.i.for.body8.i.i_crit_edge ]
  %i.17.i.i = phi i32 [ %inc24.i.i, %if.end18.i46.i.for.body8.i.i_crit_edge ], [ 0, %for.cond5.preheader.i.i.for.body8.i.i_crit_edge ]
  %77 = ptrtoint ptr %vsg_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vsg_buffer.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %78, i32 %pkt_offset.08.i.i
  %len.i44.i = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %len.i44.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %len.i44.i, align 2
  %81 = call i16 @llvm.bswap.i16(i16 %80) #10
  %conv.i45.i = zext i16 %81 to i32
  %add12.i.i = add nuw nsw i32 %conv.i45.i, 8
  %act_len.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.17.i.i, i32 2
  %82 = ptrtoint ptr %act_len.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add12.i.i, ptr %act_len.i.i, align 4
  %alloc_len14.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.17.i.i, i32 1
  %83 = ptrtoint ptr %alloc_len14.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %alloc_len14.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i.i, i32 %84)
  %cmp15.i.i = icmp ugt i32 %add12.i.i, %84
  br i1 %cmp15.i.i, label %for.body8.i.i.err.i47.i_crit_edge, label %if.end18.i46.i

for.body8.i.i.err.i47.i_crit_edge:                ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i47.i

if.end18.i46.i:                                   ; preds = %for.body8.i.i
  %arrayidx10.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.17.i.i
  %85 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx10.i.i, align 4
  %call.i.i.i = call ptr @skb_put(ptr noundef %86, i32 noundef %add12.i.i) #10
  %87 = call ptr @memcpy(ptr %call.i.i.i, ptr %add.ptr.i.i, i32 %add12.i.i)
  %88 = ptrtoint ptr %alloc_len14.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %alloc_len14.i.i, align 4
  %add22.i.i = add i32 %89, %pkt_offset.08.i.i
  %inc24.i.i = add nuw i32 %i.17.i.i, 1
  %90 = ptrtoint ptr %n_rx_pkts.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %n_rx_pkts.i.i, align 4
  %cmp7.i.i = icmp ult i32 %inc24.i.i, %91
  br i1 %cmp7.i.i, label %if.end18.i46.i.for.body8.i.i_crit_edge, label %if.end18.i46.i.if.end9.i_crit_edge

if.end18.i46.i.if.end9.i_crit_edge:               ; preds = %if.end18.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end18.i46.i.for.body8.i.i_crit_edge:           ; preds = %if.end18.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8.i.i

err.i47.i:                                        ; preds = %for.body8.i.i.err.i47.i_crit_edge, %if.then3.i.i, %if.then.i42.i
  %92 = ptrtoint ptr %n_rx_pkts.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %n_rx_pkts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp289.not.i.i = icmp eq i32 %93, 0
  br i1 %cmp289.not.i.i, label %err.i47.i.for.end35.i.i_crit_edge, label %err.i47.i.for.body30.i.i_crit_edge

err.i47.i.for.body30.i.i_crit_edge:               ; preds = %err.i47.i
  br label %for.body30.i.i

err.i47.i.for.end35.i.i_crit_edge:                ; preds = %err.i47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end35.i.i

for.body30.i.i:                                   ; preds = %for.body30.i.i.for.body30.i.i_crit_edge, %err.i47.i.for.body30.i.i_crit_edge
  %i.210.i.i = phi i32 [ %inc34.i.i, %for.body30.i.i.for.body30.i.i_crit_edge ], [ 0, %err.i47.i.for.body30.i.i_crit_edge ]
  %arrayidx32.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.210.i.i
  %94 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx32.i.i, align 4
  call void @consume_skb(ptr noundef %95) #10
  %96 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %arrayidx32.i.i, align 4
  %alloc_len.i.i48.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.210.i.i, i32 1
  %97 = ptrtoint ptr %alloc_len.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %alloc_len.i.i48.i, align 4
  %act_len.i.i49.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.210.i.i, i32 2
  %98 = ptrtoint ptr %act_len.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %act_len.i.i49.i, align 4
  %trailer_only.i.i50.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.210.i.i, i32 6
  %99 = ptrtoint ptr %trailer_only.i.i50.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %trailer_only.i.i50.i, align 2
  %inc34.i.i = add nuw i32 %i.210.i.i, 1
  %100 = ptrtoint ptr %n_rx_pkts.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %n_rx_pkts.i.i, align 4
  %cmp28.i.i = icmp ult i32 %inc34.i.i, %101
  br i1 %cmp28.i.i, label %for.body30.i.i.for.body30.i.i_crit_edge, label %for.body30.i.i.for.end35.i.i_crit_edge

for.body30.i.i.for.end35.i.i_crit_edge:           ; preds = %for.body30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end35.i.i

for.body30.i.i.for.body30.i.i_crit_edge:          ; preds = %for.body30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body30.i.i

for.end35.i.i:                                    ; preds = %for.body30.i.i.for.end35.i.i_crit_edge, %err.i47.i.for.end35.i.i_crit_edge
  %102 = ptrtoint ptr %n_rx_pkts.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %n_rx_pkts.i.i, align 4
  br label %if.end9.thread.i

if.else.i:                                        ; preds = %if.end3.i.if.else.i_crit_edge, %if.end.i125.if.else.i_crit_edge, %if.end.thread.i
  %103 = ptrtoint ptr %rx_pkts.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rx_pkts.i.i, align 4
  %105 = ptrtoint ptr %mbox_info.i52.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mbox_info.i52.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 19
  %107 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data.i.i, align 4
  %109 = ptrtoint ptr %alloc_len.i53.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %alloc_len.i53.i, align 4
  %call2.i54.i = call fastcc i32 @ath10k_sdio_readsb(ptr noundef %ar, i32 noundef %106, ptr noundef %108, i32 noundef %110) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i54.i)
  %tobool.not.i55.i = icmp eq i32 %call2.i54.i, 0
  br i1 %tobool.not.i55.i, label %if.end.i61.i, label %if.else.i.err.i65.i_crit_edge

if.else.i.err.i65.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i65.i

if.end.i61.i:                                     ; preds = %if.else.i
  %111 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data.i.i, align 4
  %len.i56.i = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %len.i56.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %len.i56.i, align 2
  %115 = call i16 @llvm.bswap.i16(i16 %114) #10
  %conv.i57.i = zext i16 %115 to i32
  %add.i58.i = add nuw nsw i32 %conv.i57.i, 8
  %116 = ptrtoint ptr %act_len.i59.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %add.i58.i, ptr %act_len.i59.i, align 4
  %117 = ptrtoint ptr %alloc_len.i53.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %alloc_len.i53.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i58.i, i32 %118)
  %cmp.i60.i = icmp ugt i32 %add.i58.i, %118
  br i1 %cmp.i60.i, label %if.end.i61.i.err.i65.i_crit_edge, label %if.end8.i.i

if.end.i61.i.err.i65.i_crit_edge:                 ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i65.i

if.end8.i.i:                                      ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i.i = call ptr @skb_put(ptr noundef %104, i32 noundef %add.i58.i) #10
  br label %if.end9thread-pre-split.i

err.i65.i:                                        ; preds = %if.end.i61.i.err.i65.i_crit_edge, %if.else.i.err.i65.i_crit_edge
  %119 = ptrtoint ptr %n_rx_pkts.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %n_rx_pkts.i.i, align 4
  %120 = ptrtoint ptr %rx_pkts.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rx_pkts.i.i, align 4
  call void @consume_skb(ptr noundef %121) #10
  %122 = ptrtoint ptr %rx_pkts.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %rx_pkts.i.i, align 4
  %123 = ptrtoint ptr %alloc_len.i53.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %alloc_len.i53.i, align 4
  %124 = ptrtoint ptr %act_len.i59.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %act_len.i59.i, align 4
  %125 = ptrtoint ptr %trailer_only.i.i64.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %trailer_only.i.i64.i, align 2
  br label %if.end9thread-pre-split.i

if.end9thread-pre-split.i:                        ; preds = %err.i65.i, %if.end8.i.i
  %126 = ptrtoint ptr %n_rx_pkts.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pr138.i = load i32, ptr %n_rx_pkts.i.i, align 4
  br label %if.end9.i

if.end9.thread.i:                                 ; preds = %for.end35.i.i, %for.cond5.preheader.i.i.if.end9.thread.i_crit_edge
  %127 = ptrtoint ptr %n_lookaheads.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %n_lookaheads.i, align 4
  br label %out.i.i

if.end9.i:                                        ; preds = %if.end9thread-pre-split.i, %if.end18.i46.i.if.end9.i_crit_edge
  %128 = phi i32 [ %.pr138.i, %if.end9thread-pre-split.i ], [ %91, %if.end18.i46.i.if.end9.i_crit_edge ]
  %129 = ptrtoint ptr %n_lookaheads.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %n_lookaheads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp81.not.i.i = icmp eq i32 %128, 0
  br i1 %cmp81.not.i.i, label %if.end9.i.out.i.i_crit_edge, label %if.end9.i.for.body.i73.i_crit_edge

if.end9.i.for.body.i73.i_crit_edge:               ; preds = %if.end9.i
  br label %for.body.i73.i

if.end9.i.out.i.i_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

for.body.i73.i:                                   ; preds = %if.end26.i.i.for.body.i73.i_crit_edge, %if.end9.i.for.body.i73.i_crit_edge
  %lookahead_idx.085.i.i = phi i32 [ %lookahead_idx.1.i.i, %if.end26.i.i.for.body.i73.i_crit_edge ], [ 0, %if.end9.i.for.body.i73.i_crit_edge ]
  %i.082.i.i = phi i32 [ %inc28.i.i, %if.end26.i.i.for.body.i73.i_crit_edge ], [ 0, %if.end9.i.for.body.i73.i_crit_edge ]
  %inc.i70.i = add i32 %lookahead_idx.085.i.i, 1
  %arrayidx.i71.i = getelementptr i32, ptr %lookaheads.i, i32 %lookahead_idx.085.i.i
  %130 = ptrtoint ptr %arrayidx.i71.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.i71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %131)
  %cmp2.i72.i = icmp ugt i8 %131, 8
  br i1 %cmp2.i72.i, label %for.body.i73.i.out.sink.split.i.i_crit_edge, label %if.end.i75.i

for.body.i73.i.out.sink.split.i.i_crit_edge:      ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i.i

if.end.i75.i:                                     ; preds = %for.body.i73.i
  %conv.i74.i = zext i8 %131 to i32
  %service_id.i.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 %conv.i74.i, i32 2
  %132 = ptrtoint ptr %service_id.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %service_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp5.i.i = icmp eq i32 %133, 0
  br i1 %cmp5.i.i, label %if.end.i75.i.out.sink.split.i.i_crit_edge, label %if.end8.i77.i

if.end.i75.i.out.sink.split.i.i_crit_edge:        ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i.i

if.end8.i77.i:                                    ; preds = %if.end.i75.i
  %arrayidx9.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.082.i.i
  %part_of_bundle.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.082.i.i, i32 4
  %134 = ptrtoint ptr %part_of_bundle.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %part_of_bundle.i.i, align 4, !range !292
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i76.i = icmp eq i8 %135, 0
  br i1 %tobool.not.i76.i, label %if.end8.i77.i.if.end13.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i77.i.if.end13.i.i_crit_edge:             ; preds = %if.end8.i77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i77.i
  %last_in_bundle.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.082.i.i, i32 5
  %136 = ptrtoint ptr %last_in_bundle.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %last_in_bundle.i.i, align 1, !range !292
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool11.not.i.i = icmp eq i8 %137, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %land.lhs.true.i.i.if.end13.i.i_crit_edge

land.lhs.true.i.i.if.end13.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then12.i.i, %land.lhs.true.i.i.if.end13.i.i_crit_edge, %if.end8.i77.i.if.end13.i.i_crit_edge
  %n_lookahead_local.0.i.i = phi ptr [ %n_lookaheads.i, %land.lhs.true.i.i.if.end13.i.i_crit_edge ], [ null, %if.then12.i.i ], [ %n_lookaheads.i, %if.end8.i77.i.if.end13.i.i_crit_edge ]
  %lookaheads_local.0.i.i = phi ptr [ %lookaheads.i, %land.lhs.true.i.i.if.end13.i.i_crit_edge ], [ null, %if.then12.i.i ], [ %lookaheads.i, %if.end8.i77.i.if.end13.i.i_crit_edge ]
  %lookahead_idx.1.i.i = phi i32 [ %inc.i70.i, %land.lhs.true.i.i.if.end13.i.i_crit_edge ], [ %lookahead_idx.085.i.i, %if.then12.i.i ], [ %inc.i70.i, %if.end8.i77.i.if.end13.i.i_crit_edge ]
  %138 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx9.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %139, i32 0, i32 19
  %140 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %data.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %flags.i.i.i, align 1
  %144 = and i8 %143, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i.i78.i = icmp eq i8 %144, 0
  br i1 %tobool.not.i.i78.i, label %if.end13.i.i.if.end17.i.i_crit_edge, label %if.then.i.i79.i

if.end13.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i.i

if.then.i.i79.i:                                  ; preds = %if.end13.i.i
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %139, i32 0, i32 6
  %145 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %len.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %141, i32 %146
  %147 = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %141, i32 0, i32 3
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %147, align 4
  %conv5.i.i.i = zext i8 %149 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv5.i.i.i
  %add.ptr6.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %idx.neg.i.i.i
  %150 = ptrtoint ptr %141 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %141, align 4
  %conv.i.i.i.i = zext i8 %151 to i32
  %call9.i.i.i = call i32 @ath10k_htc_process_trailer(ptr noundef %htc1.i.i.i, ptr noundef %add.ptr6.i.i.i, i32 noundef %conv5.i.i.i, i32 noundef %conv.i.i.i.i, ptr noundef %lookaheads_local.0.i.i, ptr noundef %n_lookahead_local.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i79.i.out.i.i_crit_edge

if.then.i.i79.i.out.i.i_crit_edge:                ; preds = %if.then.i.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i79.i
  %152 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx9.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %153, i32 0, i32 19
  %154 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %data.i.i.i.i, align 4
  %len1.i.i.i.i = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %len1.i.i.i.i, align 2
  %158 = call i16 @llvm.bswap.i16(i16 %157) #10
  %159 = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %155, i32 0, i32 3
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %159, align 4
  %162 = zext i8 %161 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %158, i16 %162)
  %cmp.i.i.i.i = icmp eq i16 %158, %162
  br i1 %cmp.i.i.i.i, label %if.then13.i.i.i, label %if.end.i.i.i.if.end14.i.i.i_crit_edge

if.end.i.i.i.if.end14.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %trailer_only.i.i80.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.082.i.i, i32 6
  %163 = ptrtoint ptr %trailer_only.i.i80.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %trailer_only.i.i80.i, align 2
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.then13.i.i.i, %if.end.i.i.i.if.end14.i.i.i_crit_edge
  %164 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %len.i.i.i, align 4
  %166 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %147, align 4
  %conv16.i.i.i = zext i8 %167 to i32
  %sub.i.i.i = sub i32 %165, %conv16.i.i.i
  call void @skb_trim(ptr noundef %139, i32 noundef %sub.i.i.i) #10
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.end14.i.i.i, %if.end13.i.i.if.end17.i.i_crit_edge
  %call18.i.i.i = call ptr @skb_pull(ptr noundef %139, i32 noundef 8) #10
  %trailer_only.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.082.i.i, i32 6
  %168 = ptrtoint ptr %trailer_only.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %trailer_only.i.i, align 2, !range !292
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool18.not.i.i = icmp eq i8 %169, 0
  %170 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx9.i.i, align 4
  br i1 %tobool18.not.i.i, label %if.then19.i.i, label %if.else.i.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %eid22.i.i = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 3, i32 12
  %172 = ptrtoint ptr %eid22.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %131, ptr %eid22.i.i, align 4
  %173 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx9.i.i, align 4
  call void @skb_queue_tail(ptr noundef %rx_head.i.i, ptr noundef %174) #10
  %175 = ptrtoint ptr %workqueue_aux.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %workqueue_aux.i.i, align 4
  %call.i.i81.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %176, ptr noundef %async_work_rx.i.i) #10
  br label %if.end26.i.i

if.else.i.i:                                      ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef %171, i32 noundef 0) #10
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.else.i.i, %if.then19.i.i
  %177 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr null, ptr %arrayidx9.i.i, align 4
  %alloc_len.i82.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.082.i.i, i32 1
  %178 = ptrtoint ptr %alloc_len.i82.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %alloc_len.i82.i, align 4
  %inc28.i.i = add nuw i32 %i.082.i.i, 1
  %179 = ptrtoint ptr %n_rx_pkts.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %n_rx_pkts.i.i, align 4
  %cmp.i83.i = icmp ult i32 %inc28.i.i, %180
  br i1 %cmp.i83.i, label %if.end26.i.i.for.body.i73.i_crit_edge, label %if.end26.i.i.out.i.i_crit_edge

if.end26.i.i.out.i.i_crit_edge:                   ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end26.i.i.for.body.i73.i_crit_edge:            ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i73.i

out.sink.split.i.i:                               ; preds = %if.end.i75.i.out.sink.split.i.i_crit_edge, %for.body.i73.i.out.sink.split.i.i_crit_edge
  %.str.83.sink.i.i = phi ptr [ @.str.82, %for.body.i73.i.out.sink.split.i.i_crit_edge ], [ @.str.83, %if.end.i75.i.out.sink.split.i.i_crit_edge ]
  %conv.i74.i.le = zext i8 %131 to i32
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull %.str.83.sink.i.i, i32 noundef %conv.i74.i.le) #10
  br label %out.i.i

out.i.i:                                          ; preds = %out.sink.split.i.i, %if.end26.i.i.out.i.i_crit_edge, %if.then.i.i79.i.out.i.i_crit_edge, %if.end9.i.out.i.i_crit_edge, %if.end9.thread.i
  %i.078.i.i = phi i32 [ 0, %if.end9.i.out.i.i_crit_edge ], [ %i.082.i.i, %out.sink.split.i.i ], [ 0, %if.end9.thread.i ], [ %inc28.i.i, %if.end26.i.i.out.i.i_crit_edge ], [ %i.082.i.i, %if.then.i.i79.i.out.i.i_crit_edge ]
  %ret.0.i84.i = phi i32 [ 0, %if.end9.i.out.i.i_crit_edge ], [ -12, %out.sink.split.i.i ], [ 0, %if.end9.thread.i ], [ 0, %if.end26.i.i.out.i.i_crit_edge ], [ %call9.i.i.i, %if.then.i.i79.i.out.i.i_crit_edge ]
  %181 = ptrtoint ptr %n_rx_pkts.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %n_rx_pkts.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.078.i.i, i32 %182)
  %cmp3191.i.i = icmp ult i32 %i.078.i.i, %182
  br i1 %cmp3191.i.i, label %out.i.i.for.body33.i.i_crit_edge, label %out.i.i.ath10k_sdio_mbox_rx_process_packets.exit.i_crit_edge

out.i.i.ath10k_sdio_mbox_rx_process_packets.exit.i_crit_edge: ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_mbox_rx_process_packets.exit.i

out.i.i.for.body33.i.i_crit_edge:                 ; preds = %out.i.i
  br label %for.body33.i.i

for.body33.i.i:                                   ; preds = %for.body33.i.i.for.body33.i.i_crit_edge, %out.i.i.for.body33.i.i_crit_edge
  %i.192.i.i = phi i32 [ %inc37.i.i, %for.body33.i.i.for.body33.i.i_crit_edge ], [ %i.078.i.i, %out.i.i.for.body33.i.i_crit_edge ]
  %arrayidx35.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.192.i.i
  %183 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx35.i.i, align 4
  call void @consume_skb(ptr noundef %184) #10
  %185 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr null, ptr %arrayidx35.i.i, align 4
  %alloc_len.i.i85.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.192.i.i, i32 1
  %186 = ptrtoint ptr %alloc_len.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %alloc_len.i.i85.i, align 4
  %act_len.i.i86.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.192.i.i, i32 2
  %187 = ptrtoint ptr %act_len.i.i86.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %act_len.i.i86.i, align 4
  %trailer_only.i69.i.i = getelementptr %struct.ath10k_sdio, ptr %drv_priv.i.i, i32 0, i32 9, i32 %i.192.i.i, i32 6
  %188 = ptrtoint ptr %trailer_only.i69.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %trailer_only.i69.i.i, align 2
  %inc37.i.i = add nuw i32 %i.192.i.i, 1
  %189 = ptrtoint ptr %n_rx_pkts.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %n_rx_pkts.i.i, align 4
  %cmp31.i.i = icmp ult i32 %inc37.i.i, %190
  br i1 %cmp31.i.i, label %for.body33.i.i.for.body33.i.i_crit_edge, label %for.body33.i.i.ath10k_sdio_mbox_rx_process_packets.exit.i_crit_edge

for.body33.i.i.ath10k_sdio_mbox_rx_process_packets.exit.i_crit_edge: ; preds = %for.body33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_mbox_rx_process_packets.exit.i

for.body33.i.i.for.body33.i.i_crit_edge:          ; preds = %for.body33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body33.i.i

ath10k_sdio_mbox_rx_process_packets.exit.i:       ; preds = %for.body33.i.i.ath10k_sdio_mbox_rx_process_packets.exit.i_crit_edge, %out.i.i.ath10k_sdio_mbox_rx_process_packets.exit.i_crit_edge
  %191 = ptrtoint ptr %n_lookaheads.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %n_lookaheads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool12.not.i = icmp ne i32 %192, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i84.i)
  %tobool13.not.i = icmp eq i32 %ret.0.i84.i, 0
  %or.cond.i = select i1 %tobool12.not.i, i1 %tobool13.not.i, i1 false
  br i1 %or.cond.i, label %if.end15.i, label %ath10k_sdio_mbox_rx_process_packets.exit.i.do.end.i_crit_edge

ath10k_sdio_mbox_rx_process_packets.exit.i.do.end.i_crit_edge: ; preds = %ath10k_sdio_mbox_rx_process_packets.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end15.i:                                       ; preds = %ath10k_sdio_mbox_rx_process_packets.exit.i
  %193 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 0, ptr %done, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %194 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp16.i = icmp slt i32 %sub.i, 0
  br i1 %cmp16.i, label %do.bodythread-pre-split.i, label %ath10k_sdio_mbox_rxmsg_pending_handler.exit.thread

ath10k_sdio_mbox_rxmsg_pending_handler.exit.thread: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_lookaheads.i) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %lookaheads.i) #10
  br label %do.body16

do.end.i:                                         ; preds = %ath10k_sdio_mbox_rx_process_packets.exit.i.do.end.i_crit_edge, %if.end52.i.i.do.end.i_crit_edge, %for.body47.i.i.do.end.i_crit_edge
  %ret.0.i126 = phi i32 [ %ret.0.i.i, %for.body47.i.i.do.end.i_crit_edge ], [ %ret.0.i.i, %if.end52.i.i.do.end.i_crit_edge ], [ %ret.0.i84.i, %ath10k_sdio_mbox_rx_process_packets.exit.i.do.end.i_crit_edge ]
  %195 = zext i32 %ret.0.i126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %ret.0.i126, label %if.then19.i [
    i32 0, label %do.end.i.ath10k_sdio_mbox_rxmsg_pending_handler.exit_crit_edge
    i32 -125, label %do.end.i.ath10k_sdio_mbox_rxmsg_pending_handler.exit_crit_edge320
  ]

do.end.i.ath10k_sdio_mbox_rxmsg_pending_handler.exit_crit_edge320: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_mbox_rxmsg_pending_handler.exit

do.end.i.ath10k_sdio_mbox_rxmsg_pending_handler.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_mbox_rxmsg_pending_handler.exit

if.then19.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.69, i32 noundef %ret.0.i126) #10
  br label %ath10k_sdio_mbox_rxmsg_pending_handler.exit

ath10k_sdio_mbox_rxmsg_pending_handler.exit:      ; preds = %if.then19.i, %do.end.i.ath10k_sdio_mbox_rxmsg_pending_handler.exit_crit_edge, %do.end.i.ath10k_sdio_mbox_rxmsg_pending_handler.exit_crit_edge320
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_lookaheads.i) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %lookaheads.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i126)
  %tobool12.not = icmp eq i32 %ret.0.i126, 0
  br i1 %tobool12.not, label %ath10k_sdio_mbox_rxmsg_pending_handler.exit.do.body16_crit_edge, label %ath10k_sdio_mbox_rxmsg_pending_handler.exit.do.body98_crit_edge

ath10k_sdio_mbox_rxmsg_pending_handler.exit.do.body98_crit_edge: ; preds = %ath10k_sdio_mbox_rxmsg_pending_handler.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body98

ath10k_sdio_mbox_rxmsg_pending_handler.exit.do.body16_crit_edge: ; preds = %ath10k_sdio_mbox_rxmsg_pending_handler.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

do.body16:                                        ; preds = %ath10k_sdio_mbox_rxmsg_pending_handler.exit.do.body16_crit_edge, %ath10k_sdio_mbox_rxmsg_pending_handler.exit.thread, %if.end4.do.body16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %196 = load i32, ptr @ath10k_debug_mask, align 4
  %and17 = and i32 %196, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %do.body16.if.then21_crit_edge

do.body16.if.then21_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

lor.lhs.false19:                                  ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_mbox_proc_pending_irqs, %if.then21)) #10
          to label %do.end39 [label %if.then21], !srcloc !290

if.then21:                                        ; preds = %lor.lhs.false19, %do.body16.if.then21_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %host_int_status.0.ph to i32
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.65, i32 noundef %conv) #10
  br label %do.end39

do.end39:                                         ; preds = %if.then21, %lor.lhs.false19
  %197 = and i8 %host_int_status.0.ph, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool42.not = icmp eq i8 %197, 0
  br i1 %tobool42.not, label %do.end39.do.end63_crit_edge, label %if.then43

do.end39.do.end63_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end63

if.then43:                                        ; preds = %do.end39
  call void @mutex_lock_nested(ptr noundef %irq_data1.i, i32 noundef 0) #10
  %198 = ptrtoint ptr %irq_proc_reg2.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %irq_proc_reg2.i, align 4
  %cpu_int_status2.i = getelementptr inbounds %struct.ath10k_sdio_irq_proc_regs, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %cpu_int_status2.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %cpu_int_status2.i, align 1
  %202 = ptrtoint ptr %irq_en_reg3.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %irq_en_reg3.i, align 4
  %cpu_int_status_en.i = getelementptr inbounds %struct.ath10k_sdio_irq_enable_regs, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %cpu_int_status_en.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %cpu_int_status_en.i, align 1
  %and35.i = and i8 %205, %201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and35.i)
  %tobool.not.i131 = icmp eq i8 %and35.i, 0
  br i1 %tobool.not.i131, label %ath10k_sdio_mbox_proc_cpu_intr.exit.thread, label %if.end.i133

ath10k_sdio_mbox_proc_cpu_intr.exit.thread:       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.84) #10
  call void @mutex_unlock(ptr noundef %irq_data1.i) #10
  br label %do.body98

if.end.i133:                                      ; preds = %if.then43
  %conv5.i = zext i8 %and35.i to i32
  %and9.i = xor i8 %and35.i, %201
  %206 = ptrtoint ptr %cpu_int_status2.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %and9.i, ptr %cpu_int_status2.i, align 1
  %call12.i = call fastcc i32 @ath10k_sdio_writesb32(ptr noundef %ar, i32 noundef 2049, i32 noundef %conv5.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i132 = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i132, label %if.end.i133.out.i_crit_edge, label %if.then14.i

if.end.i133.out.i_crit_edge:                      ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then14.i:                                      ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.85, i32 noundef %call12.i) #10
  br label %out.i

out.i:                                            ; preds = %if.then14.i, %if.end.i133.out.i_crit_edge
  call void @mutex_unlock(ptr noundef %irq_data1.i) #10
  %207 = and i8 %and35.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool19.not.i = icmp eq i8 %207, 0
  br i1 %tobool19.not.i, label %out.i.ath10k_sdio_mbox_proc_cpu_intr.exit_crit_edge, label %if.then20.i

out.i.ath10k_sdio_mbox_proc_cpu_intr.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_mbox_proc_cpu_intr.exit

if.then20.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ath10k_sdio_fw_crashed_dump(ptr noundef %ar) #10
  br label %ath10k_sdio_mbox_proc_cpu_intr.exit

ath10k_sdio_mbox_proc_cpu_intr.exit:              ; preds = %if.then20.i, %out.i.ath10k_sdio_mbox_proc_cpu_intr.exit_crit_edge
  br i1 %tobool13.not.i132, label %ath10k_sdio_mbox_proc_cpu_intr.exit.do.end63_crit_edge, label %ath10k_sdio_mbox_proc_cpu_intr.exit.do.body98_crit_edge

ath10k_sdio_mbox_proc_cpu_intr.exit.do.body98_crit_edge: ; preds = %ath10k_sdio_mbox_proc_cpu_intr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body98

ath10k_sdio_mbox_proc_cpu_intr.exit.do.end63_crit_edge: ; preds = %ath10k_sdio_mbox_proc_cpu_intr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end63

do.end63:                                         ; preds = %ath10k_sdio_mbox_proc_cpu_intr.exit.do.end63_crit_edge, %do.end39.do.end63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %host_int_status.0.ph)
  %tobool68.not = icmp sgt i8 %host_int_status.0.ph, -1
  br i1 %tobool68.not, label %do.end63.do.end89_crit_edge, label %if.then69

do.end63.do.end89_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

if.then69:                                        ; preds = %do.end63
  %call70 = call fastcc i32 @ath10k_sdio_mbox_proc_err_intr(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then69.do.end89_crit_edge, label %if.then69.do.body98_crit_edge

if.then69.do.body98_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body98

if.then69.do.end89_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

do.end89:                                         ; preds = %if.then69.do.end89_crit_edge, %do.end63.do.end89_crit_edge
  %208 = and i8 %host_int_status.0.ph, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool94.not = icmp eq i8 %208, 0
  br i1 %tobool94.not, label %do.end89.do.body98_crit_edge, label %if.then95

do.end89.do.body98_crit_edge:                     ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body98

if.then95:                                        ; preds = %do.end89
  call void @mutex_lock_nested(ptr noundef %irq_data1.i, i32 noundef 0) #10
  %209 = ptrtoint ptr %irq_proc_reg2.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %irq_proc_reg2.i, align 4
  %counter_int_status2.i = getelementptr inbounds %struct.ath10k_sdio_irq_proc_regs, ptr %210, i32 0, i32 3
  %211 = ptrtoint ptr %counter_int_status2.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %counter_int_status2.i, align 1
  %213 = ptrtoint ptr %irq_en_reg3.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %irq_en_reg3.i, align 4
  %cntr_int_status_en.i = getelementptr inbounds %struct.ath10k_sdio_irq_enable_regs, ptr %214, i32 0, i32 3
  %215 = ptrtoint ptr %cntr_int_status_en.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %cntr_int_status_en.i, align 1
  %and1.i = and i8 %212, 1
  %217 = and i8 %and1.i, %216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool.not.i137 = icmp eq i8 %217, 0
  br i1 %tobool.not.i137, label %if.then95.ath10k_sdio_mbox_proc_counter_intr.exit_crit_edge, label %if.then.i

if.then95.ath10k_sdio_mbox_proc_counter_intr.exit_crit_edge: ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_mbox_proc_counter_intr.exit

if.then.i:                                        ; preds = %if.then95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #10
  %218 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 -1, ptr %val.i.i, align 4, !annotation !291
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.95) #10
  %call.i.i = call fastcc i32 @ath10k_sdio_read32(ptr noundef %ar, i32 noundef 2112, ptr noundef nonnull %val.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i138 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i138, label %if.then.i.ath10k_sdio_mbox_proc_dbg_intr.exit.i_crit_edge, label %if.then.i.i139

if.then.i.ath10k_sdio_mbox_proc_dbg_intr.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_mbox_proc_dbg_intr.exit.i

if.then.i.i139:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.96, i32 noundef %call.i.i) #10
  br label %ath10k_sdio_mbox_proc_dbg_intr.exit.i

ath10k_sdio_mbox_proc_dbg_intr.exit.i:            ; preds = %if.then.i.i139, %if.then.i.ath10k_sdio_mbox_proc_dbg_intr.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  br label %ath10k_sdio_mbox_proc_counter_intr.exit

ath10k_sdio_mbox_proc_counter_intr.exit:          ; preds = %ath10k_sdio_mbox_proc_dbg_intr.exit.i, %if.then95.ath10k_sdio_mbox_proc_counter_intr.exit_crit_edge
  call void @mutex_unlock(ptr noundef %irq_data1.i) #10
  br label %do.body98

do.body98:                                        ; preds = %ath10k_sdio_mbox_proc_counter_intr.exit, %do.end89.do.body98_crit_edge, %if.then69.do.body98_crit_edge, %ath10k_sdio_mbox_proc_cpu_intr.exit.do.body98_crit_edge, %ath10k_sdio_mbox_proc_cpu_intr.exit.thread, %ath10k_sdio_mbox_rxmsg_pending_handler.exit.do.body98_crit_edge, %if.then3, %if.then
  %ret.0 = phi i32 [ %call16.i, %if.then ], [ %ret.0.i126, %ath10k_sdio_mbox_rxmsg_pending_handler.exit.do.body98_crit_edge ], [ %call12.i, %ath10k_sdio_mbox_proc_cpu_intr.exit.do.body98_crit_edge ], [ %call70, %if.then69.do.body98_crit_edge ], [ 0, %if.then3 ], [ 0, %ath10k_sdio_mbox_proc_counter_intr.exit ], [ 0, %do.end89.do.body98_crit_edge ], [ -5, %ath10k_sdio_mbox_proc_cpu_intr.exit.thread ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %219 = load i32, ptr @ath10k_debug_mask, align 4
  %and99 = and i32 %219, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %lor.lhs.false101, label %do.body98.if.then104_crit_edge

do.body98.if.then104_crit_edge:                   ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then104

lor.lhs.false101:                                 ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_mbox_proc_pending_irqs, %if.then104)) #10
          to label %do.end109 [label %if.then104], !srcloc !290

if.then104:                                       ; preds = %lor.lhs.false101, %do.body98.if.then104_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  %220 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %done, align 1, !range !292
  %222 = zext i8 %221 to i32
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.66, i32 noundef %222, i32 noundef %ret.0) #10
  br label %do.end109

do.end109:                                        ; preds = %if.then104, %lor.lhs.false101
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_mac_tx_push_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_sdio_mbox_proc_err_intr(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_mbox_proc_err_intr, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !290

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.88) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %irq_proc_reg = getelementptr inbounds %struct.ath10k, ptr %ar, i32 2, i32 85, i32 1599
  %1 = ptrtoint ptr %irq_proc_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %irq_proc_reg, align 4
  %error_int_status3 = getelementptr inbounds %struct.ath10k_sdio_irq_proc_regs, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %error_int_status3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %error_int_status3, align 2
  %5 = and i8 %4, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.then7, label %do.body10

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.89, i32 noundef 0) #10
  br label %cleanup

do.body10:                                        ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %6 = load i32, ptr @ath10k_debug_mask, align 4
  %and11 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %do.body10.if.then16_crit_edge

do.body10.if.then16_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

lor.lhs.false13:                                  ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_mbox_proc_err_intr, %if.then16)) #10
          to label %do.end35 [label %if.then16], !srcloc !290

if.then16:                                        ; preds = %lor.lhs.false13, %do.body10.if.then16_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  %conv17 = zext i8 %5 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.90, i32 noundef %conv17) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then16, %lor.lhs.false13
  %conv36 = zext i8 %5 to i32
  %7 = and i32 %conv36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool38.not = icmp eq i32 %7, 0
  br i1 %tobool38.not, label %do.end35.do.end65_crit_edge, label %do.body40

do.end35.do.end65_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

do.body40:                                        ; preds = %do.end35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %8 = load i32, ptr @ath10k_debug_mask, align 4
  %and41 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %do.body40.if.then46_crit_edge

do.body40.if.then46_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

lor.lhs.false43:                                  ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_mbox_proc_err_intr, %if.then46)) #10
          to label %do.end65 [label %if.then46], !srcloc !290

if.then46:                                        ; preds = %lor.lhs.false43, %do.body40.if.then46_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.91) #10
  br label %do.end65

do.end65:                                         ; preds = %if.then46, %lor.lhs.false43, %do.end35.do.end65_crit_edge
  %9 = and i32 %conv36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool70.not = icmp eq i32 %9, 0
  br i1 %tobool70.not, label %do.end65.do.end87_crit_edge, label %if.then71

do.end65.do.end87_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end87

if.then71:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.92) #10
  br label %do.end87

do.end87:                                         ; preds = %if.then71, %do.end65.do.end87_crit_edge
  %and90 = and i32 %conv36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool92.not = icmp eq i32 %and90, 0
  br i1 %tobool92.not, label %do.end87.if.end94_crit_edge, label %if.then93

do.end87.if.end94_crit_edge:                      ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then93:                                        ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.93) #10
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %do.end87.if.end94_crit_edge
  %neg = xor i8 %5, -1
  %10 = ptrtoint ptr %irq_proc_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_proc_reg, align 4
  %error_int_status97 = getelementptr inbounds %struct.ath10k_sdio_irq_proc_regs, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %error_int_status97 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %error_int_status97, align 2
  %and99 = and i8 %13, %neg
  store i8 %and99, ptr %error_int_status97, align 2
  %call102 = tail call fastcc i32 @ath10k_sdio_writesb32(ptr noundef %ar, i32 noundef 2050, i32 noundef %conv36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end94.cleanup_crit_edge, label %if.then104

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then104:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.94, i32 noundef %call102) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then104, %if.end94.cleanup_crit_edge, %if.then7
  %retval.0 = phi i32 [ %call102, %if.then104 ], [ -5, %if.then7 ], [ 0, %if.end94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_sdio_readsb(ptr noundef %ar, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  tail call void @sdio_claim_host(ptr noundef %1) #10
  %block_size = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 24
  %2 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_size, align 4
  %neg = sub i32 0, %3
  %and = and i32 %neg, %len
  %call2 = tail call i32 @sdio_readsb(ptr noundef %1, ptr noundef %buf, i32 noundef %addr, i32 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.79, i32 noundef %addr, i32 noundef %call2) #10
  br label %out

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and3 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %do.body.if.then6_crit_edge

do.body.if.then6_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_readsb, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !290

if.then6:                                         ; preds = %lor.lhs.false, %do.body.if.then6_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.80, i32 noundef %addr, ptr noundef %buf, i32 noundef %and) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %lor.lhs.false
  tail call void @ath10k_dbg_dump(ptr noundef %ar, i32 noundef 131072, ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef %buf, i32 noundef %and) #10
  br label %out

out:                                              ; preds = %do.end, %if.then
  tail call void @sdio_release_host(ptr noundef %1) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_htc_process_trailer(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_sdio_writesb32(ptr noundef %ar, i32 noundef %addr, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %val)
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call7.i.i, align 8
  tail call void @sdio_claim_host(ptr noundef %1) #10
  %call3 = tail call i32 @sdio_writesb(ptr noundef %1, i32 noundef %addr, ptr noundef nonnull %call7.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.86, i32 noundef %val, i32 noundef %addr, i32 noundef %call3) #10
  br label %out

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %5 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %do.body.if.then9_crit_edge

do.body.if.then9_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_writesb32, %if.then9)) #10
          to label %out [label %if.then9], !srcloc !290

if.then9:                                         ; preds = %lor.lhs.false, %do.body.if.then9_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 65536, ptr noundef nonnull @.str.87, i32 noundef %addr, i32 noundef %val) #10
  br label %out

out:                                              ; preds = %if.then9, %lor.lhs.false, %if.then5
  tail call void @sdio_release_host(ptr noundef %1) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_writesb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_f0_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htc_notify_tx_completion(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_napi_sync_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_sdio_config(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %io_cmd.i154 = alloca %struct.mmc_command, align 4
  %io_cmd.i145 = alloca %struct.mmc_command, align 4
  %io_cmd.i138 = alloca %struct.mmc_command, align 4
  %io_cmd.i129 = alloca %struct.mmc_command, align 4
  %io_cmd.i122 = alloca %struct.mmc_command, align 4
  %io_cmd.i113 = alloca %struct.mmc_command, align 4
  %io_cmd.i109 = alloca %struct.mmc_command, align 4
  %io_cmd.i = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_sdio_config, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !290

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.119) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  tail call void @sdio_claim_host(ptr noundef %1) #10
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i) #10
  %5 = getelementptr inbounds i8, ptr %io_cmd.i, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 40)
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i, i32 0, i32 1
  %7 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 67119872, ptr %arg.i, align 4
  %8 = ptrtoint ptr %io_cmd.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 52, ptr %io_cmd.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 21, ptr %flags.i, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 8
  %call.i = call i32 @mmc_wait_for_cmd(ptr noundef %11, ptr noundef nonnull %io_cmd.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end.ath10k_sdio_func0_cmd52_rd_byte.exit_crit_edge

do.end.ath10k_sdio_func0_cmd52_rd_byte.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_func0_cmd52_rd_byte.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  %phi.bo = and i32 %13, 207
  %phi.bo167 = or i32 %phi.bo, -2080363728
  br label %ath10k_sdio_func0_cmd52_rd_byte.exit

ath10k_sdio_func0_cmd52_rd_byte.exit:             ; preds = %if.then.i, %do.end.ath10k_sdio_func0_cmd52_rd_byte.exit_crit_edge
  %byte.0 = phi i32 [ %phi.bo167, %if.then.i ], [ -2080363728, %do.end.ath10k_sdio_func0_cmd52_rd_byte.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i) #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i109) #10
  %16 = getelementptr inbounds i8, ptr %io_cmd.i109, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %arg.i110 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i109, i32 0, i32 1
  %18 = ptrtoint ptr %arg.i110 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %byte.0, ptr %arg.i110, align 4
  %19 = ptrtoint ptr %io_cmd.i109 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 52, ptr %io_cmd.i109, align 4
  %flags.i111 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i109, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i111 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 21, ptr %flags.i111, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %15, align 8
  %call.i112 = call i32 @mmc_wait_for_cmd(ptr noundef %22, ptr noundef nonnull %io_cmd.i109, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i109) #10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i113) #10
  %25 = getelementptr inbounds i8, ptr %io_cmd.i113, i32 8
  %26 = call ptr @memset(ptr %25, i32 0, i32 40)
  %arg.i114 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i113, i32 0, i32 1
  %27 = ptrtoint ptr %arg.i114 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 67233024, ptr %arg.i114, align 4
  %28 = ptrtoint ptr %io_cmd.i113 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 52, ptr %io_cmd.i113, align 4
  %flags.i115 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i113, i32 0, i32 3
  %29 = ptrtoint ptr %flags.i115 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 21, ptr %flags.i115, align 4
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %24, align 8
  %call.i116 = call i32 @mmc_wait_for_cmd(ptr noundef %31, ptr noundef nonnull %io_cmd.i113, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool.not.i117 = icmp eq i32 %call.i116, 0
  br i1 %tobool.not.i117, label %if.then.i120, label %ath10k_sdio_func0_cmd52_rd_byte.exit.ath10k_sdio_func0_cmd52_rd_byte.exit121_crit_edge

ath10k_sdio_func0_cmd52_rd_byte.exit.ath10k_sdio_func0_cmd52_rd_byte.exit121_crit_edge: ; preds = %ath10k_sdio_func0_cmd52_rd_byte.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_func0_cmd52_rd_byte.exit121

if.then.i120:                                     ; preds = %ath10k_sdio_func0_cmd52_rd_byte.exit
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %25, align 4
  %phi.bo168 = and i32 %33, 241
  %phi.bo170 = or i32 %phi.bo168, -2080250610
  br label %ath10k_sdio_func0_cmd52_rd_byte.exit121

ath10k_sdio_func0_cmd52_rd_byte.exit121:          ; preds = %if.then.i120, %ath10k_sdio_func0_cmd52_rd_byte.exit.ath10k_sdio_func0_cmd52_rd_byte.exit121_crit_edge
  %byte.1 = phi i32 [ %phi.bo170, %if.then.i120 ], [ -2080250610, %ath10k_sdio_func0_cmd52_rd_byte.exit.ath10k_sdio_func0_cmd52_rd_byte.exit121_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i113) #10
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i122) #10
  %36 = getelementptr inbounds i8, ptr %io_cmd.i122, i32 8
  %37 = call ptr @memset(ptr %36, i32 0, i32 40)
  %arg.i123 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i122, i32 0, i32 1
  %38 = ptrtoint ptr %arg.i123 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %byte.1, ptr %arg.i123, align 4
  %39 = ptrtoint ptr %io_cmd.i122 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 52, ptr %io_cmd.i122, align 4
  %flags.i127 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i122, i32 0, i32 3
  %40 = ptrtoint ptr %flags.i127 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 21, ptr %flags.i127, align 4
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %35, align 8
  %call.i128 = call i32 @mmc_wait_for_cmd(ptr noundef %42, ptr noundef nonnull %io_cmd.i122, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i122) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool32.not = icmp eq i32 %call.i128, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %ath10k_sdio_func0_cmd52_rd_byte.exit121
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.120, i32 noundef %call.i128) #10
  br label %out

if.end34:                                         ; preds = %ath10k_sdio_func0_cmd52_rd_byte.exit121
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i129) #10
  %45 = getelementptr inbounds i8, ptr %io_cmd.i129, i32 8
  %46 = call ptr @memset(ptr %45, i32 0, i32 40)
  %arg.i130 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i129, i32 0, i32 1
  %47 = ptrtoint ptr %arg.i130 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 67120384, ptr %arg.i130, align 4
  %48 = ptrtoint ptr %io_cmd.i129 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 52, ptr %io_cmd.i129, align 4
  %flags.i131 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i129, i32 0, i32 3
  %49 = ptrtoint ptr %flags.i131 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 21, ptr %flags.i131, align 4
  %50 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %44, align 8
  %call.i132 = call i32 @mmc_wait_for_cmd(ptr noundef %51, ptr noundef nonnull %io_cmd.i129, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool.not.i133 = icmp eq i32 %call.i132, 0
  br i1 %tobool.not.i133, label %if.then.i136, label %if.end34.ath10k_sdio_func0_cmd52_rd_byte.exit137_crit_edge

if.end34.ath10k_sdio_func0_cmd52_rd_byte.exit137_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_func0_cmd52_rd_byte.exit137

if.then.i136:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %45, align 4
  %phi.bo171 = and i32 %53, 253
  %phi.bo173 = or i32 %phi.bo171, -2080363262
  br label %ath10k_sdio_func0_cmd52_rd_byte.exit137

ath10k_sdio_func0_cmd52_rd_byte.exit137:          ; preds = %if.then.i136, %if.end34.ath10k_sdio_func0_cmd52_rd_byte.exit137_crit_edge
  %byte.2 = phi i32 [ %phi.bo173, %if.then.i136 ], [ -2080363262, %if.end34.ath10k_sdio_func0_cmd52_rd_byte.exit137_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i129) #10
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i138) #10
  %56 = getelementptr inbounds i8, ptr %io_cmd.i138, i32 8
  %57 = call ptr @memset(ptr %56, i32 0, i32 40)
  %arg.i139 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i138, i32 0, i32 1
  %58 = ptrtoint ptr %arg.i139 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %byte.2, ptr %arg.i139, align 4
  %59 = ptrtoint ptr %io_cmd.i138 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 52, ptr %io_cmd.i138, align 4
  %flags.i143 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i138, i32 0, i32 3
  %60 = ptrtoint ptr %flags.i143 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 21, ptr %flags.i143, align 4
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %55, align 8
  %call.i144 = call i32 @mmc_wait_for_cmd(ptr noundef %62, ptr noundef nonnull %io_cmd.i138, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i138) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool42.not = icmp eq i32 %call.i144, 0
  br i1 %tobool42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %ath10k_sdio_func0_cmd52_rd_byte.exit137
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.121, i32 noundef %call.i144) #10
  br label %out

if.end44:                                         ; preds = %ath10k_sdio_func0_cmd52_rd_byte.exit137
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i145) #10
  %65 = getelementptr inbounds i8, ptr %io_cmd.i145, i32 8
  %66 = call ptr @memset(ptr %65, i32 0, i32 40)
  %arg.i146 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i145, i32 0, i32 1
  %67 = ptrtoint ptr %arg.i146 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 67232000, ptr %arg.i146, align 4
  %68 = ptrtoint ptr %io_cmd.i145 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 52, ptr %io_cmd.i145, align 4
  %flags.i147 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i145, i32 0, i32 3
  %69 = ptrtoint ptr %flags.i147 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 21, ptr %flags.i147, align 4
  %70 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %64, align 8
  %call.i148 = call i32 @mmc_wait_for_cmd(ptr noundef %71, ptr noundef nonnull %io_cmd.i145, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool.not.i149 = icmp eq i32 %call.i148, 0
  br i1 %tobool.not.i149, label %if.then.i152, label %if.end44.ath10k_sdio_func0_cmd52_rd_byte.exit153_crit_edge

if.end44.ath10k_sdio_func0_cmd52_rd_byte.exit153_crit_edge: ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath10k_sdio_func0_cmd52_rd_byte.exit153

if.then.i152:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %65, align 4
  %phi.bo174 = and i32 %73, 63
  %phi.bo177 = or i32 %phi.bo174, -2080251520
  br label %ath10k_sdio_func0_cmd52_rd_byte.exit153

ath10k_sdio_func0_cmd52_rd_byte.exit153:          ; preds = %if.then.i152, %if.end44.ath10k_sdio_func0_cmd52_rd_byte.exit153_crit_edge
  %byte.3 = phi i32 [ %phi.bo177, %if.then.i152 ], [ -2080251520, %if.end44.ath10k_sdio_func0_cmd52_rd_byte.exit153_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i145) #10
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i154) #10
  %76 = getelementptr inbounds i8, ptr %io_cmd.i154, i32 8
  %77 = call ptr @memset(ptr %76, i32 0, i32 40)
  %arg.i155 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i154, i32 0, i32 1
  %78 = ptrtoint ptr %arg.i155 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %byte.3, ptr %arg.i155, align 4
  %79 = ptrtoint ptr %io_cmd.i154 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 52, ptr %io_cmd.i154, align 4
  %flags.i159 = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i154, i32 0, i32 3
  %80 = ptrtoint ptr %flags.i159 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 21, ptr %flags.i159, align 4
  %81 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %75, align 8
  %call.i160 = call i32 @mmc_wait_for_cmd(ptr noundef %82, ptr noundef nonnull %io_cmd.i154, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i154) #10
  %enable_timeout = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 9
  %83 = ptrtoint ptr %enable_timeout to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 100, ptr %enable_timeout, align 8
  %block_size = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 24
  %84 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %block_size, align 4
  %call78 = call i32 @sdio_set_block_size(ptr noundef %1, i32 noundef %85) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %ath10k_sdio_func0_cmd52_rd_byte.exit153.out_crit_edge, label %if.then80

ath10k_sdio_func0_cmd52_rd_byte.exit153.out_crit_edge: ; preds = %ath10k_sdio_func0_cmd52_rd_byte.exit153
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then80:                                        ; preds = %ath10k_sdio_func0_cmd52_rd_byte.exit153
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %block_size, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.122, i32 noundef %87, i32 noundef %call78) #10
  br label %out

out:                                              ; preds = %if.then80, %ath10k_sdio_func0_cmd52_rd_byte.exit153.out_crit_edge, %if.then43, %if.then33
  %ret.0 = phi i32 [ %call.i128, %if.then33 ], [ %call.i144, %if.then43 ], [ %call78, %if.then80 ], [ 0, %ath10k_sdio_func0_cmd52_rd_byte.exit153.out_crit_edge ]
  call void @sdio_release_host(ptr noundef %1) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_wait_for_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_hw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_htt_rx_hl_indication(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sdio_pm_suspend(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %device, i32 -8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ar1 = getelementptr inbounds %struct.ath10k_sdio, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar1, align 4
  %dev2 = getelementptr inbounds %struct.ath10k, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %device_may_wakeup.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %8, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.end

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %device_may_wakeup.exit
  %call4 = tail call fastcc i32 @ath10k_sdio_set_mbox_sleep(ptr noundef %3, i1 noundef zeroext true)
  %call5 = tail call i32 @sdio_set_host_pm_flags(ptr noundef %add.ptr, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @sdio_get_host_pm_caps(ptr noundef %add.ptr) #10
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %3, ptr noundef nonnull @.str.131, i32 noundef 1, i32 noundef %call7, i32 noundef %call5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %device_may_wakeup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then6 ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath10k_sdio_pm_resume(ptr nocapture noundef readnone %device) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_host_pm_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_get_host_pm_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !81, !82, !83, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !107, !109, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !221, !223, !225, !227, !229, !231, !232, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !270, !272, !274, !276, !278, !279, !280}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286, !287, !288}
!llvm.ident = !{!289}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2495, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2497, i32 33}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2499, i32 17}
!6 = !{ptr @__initcall__kmod_ath10k_sdio__541_2691_ath10k_sdio_init6, !7, !"__initcall__kmod_ath10k_sdio__541_2691_ath10k_sdio_init6", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2691, i32 1}
!8 = !{ptr @__exitcall_ath10k_sdio_exit, !9, !"__exitcall_ath10k_sdio_exit", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2692, i32 1}
!10 = !{ptr @__UNIQUE_ID_author542, !11, !"__UNIQUE_ID_author542", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2694, i32 1}
!12 = !{ptr @__UNIQUE_ID_description543, !13, !"__UNIQUE_ID_description543", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2695, i32 1}
!14 = !{ptr @__UNIQUE_ID_file544, !15, !"__UNIQUE_ID_file544", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2696, i32 1}
!16 = !{ptr @__UNIQUE_ID_license545, !15, !"__UNIQUE_ID_license545", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2240, i32 2}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2210, i32 19}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1741, i32 19}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1748, i32 19}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 227, i32 19}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 232, i32 2}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 307, i32 19}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 312, i32 2}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 314, i32 50}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1563, i32 19}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 335, i32 19}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 340, i32 2}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 342, i32 50}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2256, i32 19}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2268, i32 19}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2272, i32 17}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2274, i32 18}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2225, i32 20}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2445, i32 20}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2407, i32 19}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2302, i32 19}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2323, i32 20}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2337, i32 21}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2347, i32 20}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2357, i32 20}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1719, i32 8}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2665, i32 10}
!71 = !{ptr @ath10k_sdio_driver, !72, !"ath10k_sdio_driver", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2664, i32 27}
!73 = !{ptr @ath10k_sdio_devices, !74, !"ath10k_sdio_devices", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2656, i32 36}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2530, i32 3}
!77 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ath10k_sdio_probe._entry, !76, !"_entry", i1 false, i1 false}
!82 = !{ptr @ath10k_sdio_probe._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2537, i32 2}
!85 = !{ptr @ath10k_sdio_probe.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2578, i32 2}
!87 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ath10k_sdio_probe.__key.37, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2579, i32 2}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ath10k_sdio_probe.__key.39, !92, !"__key", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2580, i32 2}
!93 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ath10k_sdio_probe.__key.41, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2585, i32 2}
!96 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2586, i32 23}
!99 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ath10k_sdio_probe.__key.45, !101, !"__key", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2596, i32 2}
!102 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2602, i32 18}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2622, i32 18}
!107 = !{ptr @ath10k_sdio_probe.__key.49, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2626, i32 2}
!109 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ath10k_sdio_hif_ops, !111, !"ath10k_sdio_hif_ops", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2118, i32 36}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1500, i32 8}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1792, i32 8}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1800, i32 19}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1212, i32 9}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1276, i32 8}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1144, i32 9}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1156, i32 19}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 288, i32 2}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1177, i32 20}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1186, i32 19}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1887, i32 19}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1896, i32 19}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1544, i32 19}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1023, i32 3}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1035, i32 2}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1071, i32 2}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 964, i32 19}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 987, i32 20}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 791, i32 19}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 548, i32 19}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 559, i32 20}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 565, i32 20}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 574, i32 20}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 597, i32 21}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 621, i32 20}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 512, i32 8}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 686, i32 19}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 694, i32 19}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 362, i32 19}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 367, i32 2}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 369, i32 50}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 439, i32 20}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 448, i32 20}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 897, i32 19}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 915, i32 19}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 258, i32 19}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 263, i32 2}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 847, i32 2}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 851, i32 19}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 856, i32 2}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 861, i32 3}
!194 = !{ptr @.str.92, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 865, i32 19}
!196 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 869, i32 19}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 878, i32 19}
!200 = !{ptr @.str.95, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 803, i32 18}
!202 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 810, i32 19}
!204 = !{ptr @.str.97, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1401, i32 19}
!206 = !{ptr @.str.98, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1416, i32 19}
!208 = !{ptr @.str.99, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1426, i32 21}
!210 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1430, i32 4}
!212 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1381, i32 19}
!214 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1950, i32 19}
!216 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1956, i32 19}
!218 = !{ptr @init_completion.__key, !219, !"__key", i1 false, i1 false}
!219 = !{!"../include/linux/completion.h", i32 87, i32 2}
!220 = !{ptr @.str.104, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1817, i32 19}
!223 = !{ptr @.str.106, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1822, i32 3}
!225 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1826, i32 3}
!227 = !{ptr @.str.108, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1846, i32 8}
!229 = !{ptr @.str.109, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1852, i32 2}
!231 = !{ptr @.str.110, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.111, !230, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.112, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2086, i32 3}
!235 = !{ptr @.str.113, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2093, i32 3}
!237 = !{ptr @.str.114, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2098, i32 19}
!239 = !{ptr @.str.115, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2109, i32 2}
!241 = !{ptr @.str.116, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1580, i32 2}
!243 = !{ptr @.str.117, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1584, i32 18}
!245 = !{ptr @.str.118, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1592, i32 19}
!247 = !{ptr @.str.119, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 139, i32 2}
!249 = !{ptr @.str.120, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 170, i32 19}
!251 = !{ptr @.str.121, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 185, i32 19}
!253 = !{ptr @.str.122, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 207, i32 19}
!255 = !{ptr @.str.123, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1621, i32 2}
!257 = !{ptr @.str.124, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1631, i32 19}
!259 = !{ptr @.str.125, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1638, i32 19}
!261 = !{ptr @.str.126, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2012, i32 3}
!263 = !{ptr @.str.127, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2190, i32 2}
!265 = !{ptr @.str.128, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 1332, i32 19}
!267 = !{ptr @skb_queue_head_init.__key, !268, !"__key", i1 false, i1 false}
!268 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!269 = !{ptr @.str.129, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.130, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2643, i32 2}
!272 = !{ptr @ath10k_sdio_pm_ops, !273, !"ath10k_sdio_pm_ops", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2173, i32 8}
!274 = !{ptr @.str.131, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2160, i32 19}
!276 = !{ptr @.str.132, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/ath/ath10k/sdio.c", i32 2681, i32 3}
!278 = !{ptr @.str.133, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @ath10k_sdio_init._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @ath10k_sdio_init._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{i32 1, !"wchar_size", i32 2}
!282 = !{i32 1, !"min_enum_size", i32 4}
!283 = !{i32 8, !"branch-target-enforcement", i32 0}
!284 = !{i32 8, !"sign-return-address", i32 0}
!285 = !{i32 8, !"sign-return-address-all", i32 0}
!286 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!287 = !{i32 7, !"uwtable", i32 1}
!288 = !{i32 7, !"frame-pointer", i32 2}
!289 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!290 = !{i64 2149019805, i64 2149019810, i64 2149019823, i64 2149019867, i64 2149019901, i64 2149019922}
!291 = !{!"auto-init"}
!292 = !{i8 0, i8 2}
