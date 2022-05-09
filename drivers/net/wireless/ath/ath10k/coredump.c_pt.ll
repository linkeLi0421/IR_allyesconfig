; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/coredump.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/coredump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath10k_coredump_get_mem_layout\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_coredump_get_mem_layout\09\09\09\09"
module asm "\09.long\09__crc_ath10k_coredump_get_mem_layout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_coredump_get_mem_layout:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_coredump_get_mem_layout\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_coredump_get_mem_layout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath10k_coredump_new\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_coredump_new\09\09\09\09"
module asm "\09.long\09__crc_ath10k_coredump_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_coredump_new:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_coredump_new\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_coredump_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ath10k_hw_mem_layout = type { i32, i32, i32, %struct.anon }
%struct.anon = type { ptr, i32 }
%struct.ath10k_mem_region = type { i32, i32, i32, ptr, %struct.anon.0 }
%struct.anon.0 = type { ptr, i32 }
%struct.ath10k_mem_section = type { i32, i32 }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.142, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.188, i32, i32, i32, %struct.anon.189, %struct.anon.190, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.195, i32, %struct.anon.196, %struct.anon.197, %struct.anon.198, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.199, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.142 = type { i32, ptr }
%struct.ath10k_bmi = type { i8 }
%struct.ath10k_wmi = type { i32, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.idr, i32, i32, [16 x %struct.ath10k_mem_chunk] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ath10k_mem_chunk = type { ptr, i32, i32, i32 }
%struct.ath10k_htc = type { ptr, [9 x %struct.ath10k_htc_ep], %struct.spinlock, %struct.ath10k_htc_ops, [256 x i8], i32, %struct.completion, i32, i32, i8, i32 }
%struct.ath10k_htc_ep = type { ptr, i32, i32, %struct.ath10k_htc_ep_ops, i32, i32, i8, i8, i8, i32, i32, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.ath10k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.ath10k_htc_ops = type { ptr }
%struct.ath10k_htt = type { ptr, i32, %struct.sk_buff_head, i8, i8, %struct.completion, i8, i8, ptr, i32, %struct.anon.143, i32, %struct.spinlock, i32, i32, i32, %struct.idr, %struct.wait_queue_head, %struct.anon.147, i8, %struct.atomic_t, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ieee80211_rx_status, %struct.anon.149, %struct.anon.152, %struct.anon.162, i8, ptr, ptr, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, [4 x i8] }
%struct.anon.143 = type { ptr, i8, [16 x %struct.hlist_head], %union.anon.144, i32, i32, i32, i32, i32, %struct.anon.145, %struct.anon.146, %struct.timer_list, %struct.spinlock }
%struct.hlist_head = type { ptr }
%union.anon.144 = type { ptr }
%struct.anon.145 = type { ptr, i32 }
%struct.anon.146 = type { i32 }
%struct.anon.147 = type { %union.anon.148, [0 x %struct.htt_tx_done] }
%union.anon.148 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.htt_tx_done = type { i16, i16, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.anon.149 = type { i32, %union.anon.150, i32 }
%union.anon.150 = type { ptr }
%struct.anon.152 = type { i32, %union.anon.153, i32 }
%union.anon.153 = type { ptr }
%struct.anon.162 = type { i8, ptr, i32, i16, i16, i16, i32, i32 }
%struct.ath10k_hw_params = type { i32, i16, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, %struct.ath10k_hw_params_fw, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath10k_hw_params_fw = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.ath10k_fw_components = type { ptr, ptr, i32, ptr, ptr, i32, %struct.ath10k_fw_file }
%struct.ath10k_fw_file = type { ptr, [32 x i8], [1 x i32], i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.anon.188 = type { i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, [32 x i8] }
%struct.anon.189 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.anon.190 = type { [6 x %struct.ieee80211_supported_band] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sk_buff_head = type { %union.anon.63, i32, %struct.spinlock }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, ptr }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath10k_debug = type { ptr, %struct.ath10k_fw_stats, %struct.completion, i8, i32, i32, %struct.delayed_work, %struct.ath10k_dfs_stats, %struct.ath_dfs_pool_stats, ptr, ptr, %struct.completion, i64, i32, i32, i32, ptr, i32, i8 }
%struct.ath10k_fw_stats = type { i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ath10k_dfs_stats = type { i32, i32, i32, i32, i32 }
%struct.ath_dfs_pool_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.195 = type { ptr, i32, %struct.ath10k_spec_scan }
%struct.ath10k_spec_scan = type { i8, i8 }
%struct.anon.196 = type { ptr }
%struct.anon.197 = type { %struct.ath10k_fw_components, i8 }
%struct.anon.198 = type { i32, i32, i32, i32 }
%struct.ath10k_thermal = type { ptr, %struct.completion, i32, i32, i32 }
%struct.ath10k_wow = type { i32, %struct.completion, %struct.wiphy_wowlan_support }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ath10k_per_peer_tx_stats = type { i32, i32, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.107, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.107 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
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
%struct.anon.199 = type { i16, i32, i32, i32, i32, i32 }
%struct.ath10k_radar_found_info = type { i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath10k_bus_params = type { i32, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ath10k_fw_crash_data = type { %struct.guid_t, %struct.timespec64, [60 x i32], [12 x %struct.ath10k_ce_crash_data], ptr, i32 }
%struct.guid_t = type { [16 x i8] }
%struct.timespec64 = type { i64, i32 }
%struct.ath10k_ce_crash_data = type { i32, i32, i32, i32, i32 }
%struct.ath10k_hw_values = type { i32, i8, i8, i8, i16, i8, i32, i32, i8 }
%struct.ath10k_dump_file_data = type <{ [16 x i8], i32, i32, %struct.guid_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8], i64, i64, i32, [64 x i8], [128 x i8], [0 x i8] }>
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.129 = type { i64, i64, i8 }
%struct.ath10k_tlv_dump_data = type { i32, i32, [0 x i8] }
%struct.ath10k_ce_crash_hdr = type { i32, [3 x i32], [0 x %struct.ath10k_ce_crash_data] }

@ath10k_coredump_mask = external dso_local global i32, align 4
@__kstrtab_ath10k_coredump_get_mem_layout = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_coredump_get_mem_layout = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_coredump_get_mem_layout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_coredump_get_mem_layout to i32), ptr @__kstrtab_ath10k_coredump_get_mem_layout, ptr @__kstrtabns_ath10k_coredump_get_mem_layout }, section "___ksymtab+ath10k_coredump_get_mem_layout", align 4
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/ath/ath10k/coredump.c\00", [53 x i8] zeroinitializer }, align 32
@hw_mem_layouts = internal constant { [14 x %struct.ath10k_hw_mem_layout], [72 x i8] } { [14 x %struct.ath10k_hw_mem_layout] [%struct.ath10k_hw_mem_layout { i32 83886080, i32 1, i32 0, %struct.anon { ptr @qca6174_hw10_mem_regions, i32 3 } }, %struct.ath10k_hw_mem_layout { i32 83886081, i32 1, i32 0, %struct.anon { ptr @qca6174_hw10_mem_regions, i32 3 } }, %struct.ath10k_hw_mem_layout { i32 83886083, i32 1, i32 0, %struct.anon { ptr @qca6174_hw10_mem_regions, i32 3 } }, %struct.ath10k_hw_mem_layout { i32 83951616, i32 1, i32 0, %struct.anon { ptr @qca6174_hw21_mem_regions, i32 3 } }, %struct.ath10k_hw_mem_layout { i32 84017152, i32 1, i32 0, %struct.anon { ptr @qca6174_hw30_mem_regions, i32 5 } }, %struct.ath10k_hw_mem_layout { i32 84082688, i32 1, i32 0, %struct.anon { ptr @qca6174_hw30_mem_regions, i32 5 } }, %struct.ath10k_hw_mem_layout { i32 84082688, i32 1, i32 2, %struct.anon { ptr @qca6174_hw30_sdio_mem_regions, i32 5 } }, %struct.ath10k_hw_mem_layout { i32 84017153, i32 5, i32 0, %struct.anon { ptr @qca6174_hw30_mem_regions, i32 5 } }, %struct.ath10k_hw_mem_layout { i32 1090519404, i32 0, i32 0, %struct.anon { ptr @qca988x_hw20_mem_regions, i32 3 } }, %struct.ath10k_hw_mem_layout { i32 16777216, i32 4, i32 0, %struct.anon { ptr @qca9984_hw10_mem_regions, i32 8 } }, %struct.ath10k_hw_mem_layout { i32 16777216, i32 3, i32 0, %struct.anon { ptr @qca9984_hw10_mem_regions, i32 8 } }, %struct.ath10k_hw_mem_layout { i32 16777216, i32 2, i32 0, %struct.anon { ptr @qca99x0_hw20_mem_regions, i32 8 } }, %struct.ath10k_hw_mem_layout { i32 16777216, i32 6, i32 1, %struct.anon { ptr @qca4019_hw10_mem_regions, i32 8 } }, %struct.ath10k_hw_mem_layout { i32 8, i32 8, i32 4, %struct.anon { ptr @wcn399x_hw10_mem_regions, i32 1 } }], [72 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__kstrtab_ath10k_coredump_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_coredump_new = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_coredump_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_coredump_new to i32), ptr @__kstrtab_ath10k_coredump_new, ptr @__kstrtabns_ath10k_coredump_new }, section "___ksymtab+ath10k_coredump_new", align 4
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"no crash dump data found for devcoredump\00", [55 x i8] zeroinitializer }, align 32
@qca6174_hw10_mem_regions = internal constant { [3 x %struct.ath10k_mem_region], [56 x i8] } { [3 x %struct.ath10k_mem_region] [%struct.ath10k_mem_region { i32 2, i32 4194304, i32 458752, ptr @.str.2, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 1, i32 0, i32 2048, ptr @.str.3, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 1, i32 159744, i32 233472, ptr @.str.4, %struct.anon.0 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@qca6174_hw21_mem_regions = internal constant { [3 x %struct.ath10k_mem_region], [56 x i8] } { [3 x %struct.ath10k_mem_region] [%struct.ath10k_mem_region { i32 2, i32 4194304, i32 458752, ptr @.str.2, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 3, i32 655360, i32 98304, ptr @.str.5, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 1, i32 2048, i32 522272, ptr @.str.6, %struct.anon.0 { ptr @qca6174_hw21_register_sections, i32 253 } }], [56 x i8] zeroinitializer }, align 32
@qca6174_hw30_mem_regions = internal constant { [5 x %struct.ath10k_mem_region], [40 x i8] } { [5 x %struct.ath10k_mem_region] [%struct.ath10k_mem_region { i32 2, i32 4194304, i32 688128, ptr @.str.2, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 3, i32 655360, i32 98304, ptr @.str.5, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 1, i32 2048, i32 522272, ptr @.str.6, %struct.anon.0 { ptr @qca6174_hw30_register_sections, i32 253 } }, %struct.ath10k_mem_region { i32 4, i32 9961472, i32 524288, ptr @.str.7, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 5, i32 10485760, i32 262144, ptr @.str.8, %struct.anon.0 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@qca6174_hw30_sdio_mem_regions = internal constant { [5 x %struct.ath10k_mem_region], [40 x i8] } { [5 x %struct.ath10k_mem_region] [%struct.ath10k_mem_region { i32 2, i32 4194304, i32 688128, ptr @.str.2, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 3, i32 655360, i32 98304, ptr @.str.5, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 4, i32 9961472, i32 524288, ptr @.str.7, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 5, i32 10485760, i32 262144, ptr @.str.8, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 1, i32 2048, i32 522272, ptr @.str.6, %struct.anon.0 { ptr @qca6174_hw30_sdio_register_sections, i32 245 } }], [40 x i8] zeroinitializer }, align 32
@qca988x_hw20_mem_regions = internal constant { [3 x %struct.ath10k_mem_region], [56 x i8] } { [3 x %struct.ath10k_mem_region] [%struct.ath10k_mem_region { i32 2, i32 4194304, i32 327680, ptr @.str.2, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 1, i32 16384, i32 8192, ptr @.str.3, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 1, i32 32768, i32 360448, ptr @.str.4, %struct.anon.0 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@qca9984_hw10_mem_regions = internal constant { [8 x %struct.ath10k_mem_region], [32 x i8] } { [8 x %struct.ath10k_mem_region] [%struct.ath10k_mem_region { i32 2, i32 4194304, i32 524288, ptr @.str.2, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 1, i32 9961472, i32 327680, ptr @.str.9, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 6, i32 786432, i32 262144, ptr @.str.10, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 7, i32 196608, i32 28672, ptr @.str.11, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 7, i32 258048, i32 12288, ptr @.str.12, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 7, i32 274432, i32 12288, ptr @.str.13, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 7, i32 303104, i32 20480, ptr @.str.14, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 7, i32 524288, i32 24576, ptr @.str.15, %struct.anon.0 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@qca99x0_hw20_mem_regions = internal constant { [8 x %struct.ath10k_mem_region], [32 x i8] } { [8 x %struct.ath10k_mem_region] [%struct.ath10k_mem_region { i32 2, i32 4194304, i32 393216, ptr @.str.2, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 1, i32 9961472, i32 327680, ptr @.str.9, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 6, i32 786432, i32 262144, ptr @.str.10, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 7, i32 196608, i32 28672, ptr @.str.11, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 7, i32 258048, i32 12288, ptr @.str.12, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 7, i32 274432, i32 12288, ptr @.str.13, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 7, i32 303104, i32 20480, ptr @.str.14, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 7, i32 524288, i32 24576, ptr @.str.15, %struct.anon.0 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@qca4019_hw10_mem_regions = internal constant { [8 x %struct.ath10k_mem_region], [32 x i8] } { [8 x %struct.ath10k_mem_region] [%struct.ath10k_mem_region { i32 2, i32 4194304, i32 425984, ptr @.str.2, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 1, i32 786432, i32 262144, ptr @.str.10, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 1, i32 9961472, i32 327680, ptr @.str.9, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 7, i32 196608, i32 28672, ptr @.str.11, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 7, i32 258048, i32 12288, ptr @.str.12, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 7, i32 274432, i32 12288, ptr @.str.13, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 7, i32 303104, i32 20480, ptr @.str.14, %struct.anon.0 zeroinitializer }, %struct.ath10k_mem_region { i32 1, i32 524288, i32 16383, ptr @.str.6, %struct.anon.0 { ptr @ipq4019_soc_reg_range, i32 9 } }], [32 x i8] zeroinitializer }, align 32
@wcn399x_hw10_mem_regions = internal constant { [1 x %struct.ath10k_mem_region], [40 x i8] } { [1 x %struct.ath10k_mem_region] [%struct.ath10k_mem_region { i32 8, i32 0, i32 1048576, ptr @.str.2, %struct.anon.0 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DRAM\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REG_PART1\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REG_PART2\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AXI\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REG_TOTAL\00", [22 x i8] zeroinitializer }, align 32
@qca6174_hw21_register_sections = internal constant { [253 x %struct.ath10k_mem_section], [504 x i8] } { [253 x %struct.ath10k_mem_section] [%struct.ath10k_mem_section { i32 2048, i32 2064 }, %struct.ath10k_mem_section { i32 2080, i32 2092 }, %struct.ath10k_mem_section { i32 2096, i32 2292 }, %struct.ath10k_mem_section { i32 2316, i32 2332 }, %struct.ath10k_mem_section { i32 2580, i32 2584 }, %struct.ath10k_mem_section { i32 2692, i32 2708 }, %struct.ath10k_mem_section { i32 2728, i32 2772 }, %struct.ath10k_mem_section { i32 2780, i32 2880 }, %struct.ath10k_mem_section { i32 4096, i32 4260 }, %struct.ath10k_mem_section { i32 4284, i32 4380 }, %struct.ath10k_mem_section { i32 4404, i32 4408 }, %struct.ath10k_mem_section { i32 4420, i32 4428 }, %struct.ath10k_mem_section { i32 4432, i32 4444 }, %struct.ath10k_mem_section { i32 4448, i32 4472 }, %struct.ath10k_mem_section { i32 4672, i32 4704 }, %struct.ath10k_mem_section { i32 8192, i32 8316 }, %struct.ath10k_mem_section { i32 12288, i32 12308 }, %struct.ath10k_mem_section { i32 16384, i32 16404 }, %struct.ath10k_mem_section { i32 20480, i32 20772 }, %struct.ath10k_mem_section { i32 24576, i32 24640 }, %struct.ath10k_mem_section { i32 24704, i32 24780 }, %struct.ath10k_mem_section { i32 24832, i32 24860 }, %struct.ath10k_mem_section { i32 24896, i32 25048 }, %struct.ath10k_mem_section { i32 25088, i32 25144 }, %struct.ath10k_mem_section { i32 25152, i32 25228 }, %struct.ath10k_mem_section { i32 25280, i32 25324 }, %struct.ath10k_mem_section { i32 25472, i32 25576 }, %struct.ath10k_mem_section { i32 25600, i32 25664 }, %struct.ath10k_mem_section { i32 25728, i32 25804 }, %struct.ath10k_mem_section { i32 25856, i32 25884 }, %struct.ath10k_mem_section { i32 25920, i32 25984 }, %struct.ath10k_mem_section { i32 26112, i32 26168 }, %struct.ath10k_mem_section { i32 26176, i32 26252 }, %struct.ath10k_mem_section { i32 26304, i32 26348 }, %struct.ath10k_mem_section { i32 26496, i32 26600 }, %struct.ath10k_mem_section { i32 28800, i32 28812 }, %struct.ath10k_mem_section { i32 28864, i32 28872 }, %struct.ath10k_mem_section { i32 29696, i32 29724 }, %struct.ath10k_mem_section { i32 29760, i32 29780 }, %struct.ath10k_mem_section { i32 30720, i32 30744 }, %struct.ath10k_mem_section { i32 32768, i32 32772 }, %struct.ath10k_mem_section { i32 32784, i32 32868 }, %struct.ath10k_mem_section { i32 32896, i32 32900 }, %struct.ath10k_mem_section { i32 32928, i32 32932 }, %struct.ath10k_mem_section { i32 32960, i32 32964 }, %struct.ath10k_mem_section { i32 32992, i32 33012 }, %struct.ath10k_mem_section { i32 33024, i32 33028 }, %struct.ath10k_mem_section { i32 33040, i32 33068 }, %struct.ath10k_mem_section { i32 36864, i32 36868 }, %struct.ath10k_mem_section { i32 38912, i32 38956 }, %struct.ath10k_mem_section { i32 38960, i32 38968 }, %struct.ath10k_mem_section { i32 38976, i32 39020 }, %struct.ath10k_mem_section { i32 39024, i32 39064 }, %struct.ath10k_mem_section { i32 39424, i32 39936 }, %struct.ath10k_mem_section { i32 54656, i32 54684 }, %struct.ath10k_mem_section { i32 61440, i32 61664 }, %struct.ath10k_mem_section { i32 61760, i32 61840 }, %struct.ath10k_mem_section { i32 62032, i32 62044 }, %struct.ath10k_mem_section { i32 62048, i32 62056 }, %struct.ath10k_mem_section { i32 62060, i32 62120 }, %struct.ath10k_mem_section { i32 65544, i32 65548 }, %struct.ath10k_mem_section { i32 65556, i32 65560 }, %struct.ath10k_mem_section { i32 65564, i32 65568 }, %struct.ath10k_mem_section { i32 65572, i32 65576 }, %struct.ath10k_mem_section { i32 65584, i32 65588 }, %struct.ath10k_mem_section { i32 65600, i32 65620 }, %struct.ath10k_mem_section { i32 65624, i32 65660 }, %struct.ath10k_mem_section { i32 65664, i32 65732 }, %struct.ath10k_mem_section { i32 65736, i32 65812 }, %struct.ath10k_mem_section { i32 65836, i32 65840 }, %struct.ath10k_mem_section { i32 65848, i32 65860 }, %struct.ath10k_mem_section { i32 66048, i32 66080 }, %struct.ath10k_mem_section { i32 66096, i32 66128 }, %struct.ath10k_mem_section { i32 66144, i32 66176 }, %struct.ath10k_mem_section { i32 66192, i32 66224 }, %struct.ath10k_mem_section { i32 66240, i32 66268 }, %struct.ath10k_mem_section { i32 66272, i32 66292 }, %struct.ath10k_mem_section { i32 66300, i32 66428 }, %struct.ath10k_mem_section { i32 66432, i32 66448 }, %struct.ath10k_mem_section { i32 67584, i32 67624 }, %struct.ath10k_mem_section { i32 67648, i32 67652 }, %struct.ath10k_mem_section { i32 67712, i32 67716 }, %struct.ath10k_mem_section { i32 67776, i32 67816 }, %struct.ath10k_mem_section { i32 67840, i32 67880 }, %struct.ath10k_mem_section { i32 67904, i32 67908 }, %struct.ath10k_mem_section { i32 67968, i32 67972 }, %struct.ath10k_mem_section { i32 68032, i32 68072 }, %struct.ath10k_mem_section { i32 68096, i32 68136 }, %struct.ath10k_mem_section { i32 68160, i32 68176 }, %struct.ath10k_mem_section { i32 69632, i32 69672 }, %struct.ath10k_mem_section { i32 69680, i32 69684 }, %struct.ath10k_mem_section { i32 69688, i32 69736 }, %struct.ath10k_mem_section { i32 69744, i32 69748 }, %struct.ath10k_mem_section { i32 69752, i32 69800 }, %struct.ath10k_mem_section { i32 69808, i32 69812 }, %struct.ath10k_mem_section { i32 69816, i32 69864 }, %struct.ath10k_mem_section { i32 69872, i32 69876 }, %struct.ath10k_mem_section { i32 69880, i32 69928 }, %struct.ath10k_mem_section { i32 69944, i32 69956 }, %struct.ath10k_mem_section { i32 70008, i32 70016 }, %struct.ath10k_mem_section { i32 70072, i32 70080 }, %struct.ath10k_mem_section { i32 70136, i32 70144 }, %struct.ath10k_mem_section { i32 70200, i32 70204 }, %struct.ath10k_mem_section { i32 70256, i32 70260 }, %struct.ath10k_mem_section { i32 70264, i32 70268 }, %struct.ath10k_mem_section { i32 70320, i32 70324 }, %struct.ath10k_mem_section { i32 70328, i32 70332 }, %struct.ath10k_mem_section { i32 70384, i32 70388 }, %struct.ath10k_mem_section { i32 70392, i32 70396 }, %struct.ath10k_mem_section { i32 70456, i32 70460 }, %struct.ath10k_mem_section { i32 70520, i32 70524 }, %struct.ath10k_mem_section { i32 70584, i32 70588 }, %struct.ath10k_mem_section { i32 70648, i32 70652 }, %struct.ath10k_mem_section { i32 70712, i32 70720 }, %struct.ath10k_mem_section { i32 70776, i32 70784 }, %struct.ath10k_mem_section { i32 70840, i32 70844 }, %struct.ath10k_mem_section { i32 70904, i32 70908 }, %struct.ath10k_mem_section { i32 70968, i32 70972 }, %struct.ath10k_mem_section { i32 71032, i32 71036 }, %struct.ath10k_mem_section { i32 71096, i32 71100 }, %struct.ath10k_mem_section { i32 71160, i32 71164 }, %struct.ath10k_mem_section { i32 71224, i32 71228 }, %struct.ath10k_mem_section { i32 71288, i32 71292 }, %struct.ath10k_mem_section { i32 71352, i32 71356 }, %struct.ath10k_mem_section { i32 71416, i32 71420 }, %struct.ath10k_mem_section { i32 71480, i32 71484 }, %struct.ath10k_mem_section { i32 71544, i32 71548 }, %struct.ath10k_mem_section { i32 71608, i32 71612 }, %struct.ath10k_mem_section { i32 71672, i32 71676 }, %struct.ath10k_mem_section { i32 94208, i32 94236 }, %struct.ath10k_mem_section { i32 94240, i32 94380 }, %struct.ath10k_mem_section { i32 98304, i32 98384 }, %struct.ath10k_mem_section { i32 98388, i32 98420 }, %struct.ath10k_mem_section { i32 98432, i32 98516 }, %struct.ath10k_mem_section { i32 98524, i32 98564 }, %struct.ath10k_mem_section { i32 98568, i32 98620 }, %struct.ath10k_mem_section { i32 98628, i32 98632 }, %struct.ath10k_mem_section { i32 98664, i32 98676 }, %struct.ath10k_mem_section { i32 98680, i32 98688 }, %struct.ath10k_mem_section { i32 98760, i32 98784 }, %struct.ath10k_mem_section { i32 98788, i32 98792 }, %struct.ath10k_mem_section { i32 98796, i32 98828 }, %struct.ath10k_mem_section { i32 98908, i32 98944 }, %struct.ath10k_mem_section { i32 98948, i32 98960 }, %struct.ath10k_mem_section { i32 98964, i32 98976 }, %struct.ath10k_mem_section { i32 99072, i32 99076 }, %struct.ath10k_mem_section { i32 99092, i32 99104 }, %struct.ath10k_mem_section { i32 99112, i32 99152 }, %struct.ath10k_mem_section { i32 99164, i32 99180 }, %struct.ath10k_mem_section { i32 99184, i32 99216 }, %struct.ath10k_mem_section { i32 99224, i32 99244 }, %struct.ath10k_mem_section { i32 99260, i32 99288 }, %struct.ath10k_mem_section { i32 99292, i32 99316 }, %struct.ath10k_mem_section { i32 99328, i32 100084 }, %struct.ath10k_mem_section { i32 100088, i32 100124 }, %struct.ath10k_mem_section { i32 100128, i32 100240 }, %struct.ath10k_mem_section { i32 104448, i32 104496 }, %struct.ath10k_mem_section { i32 104500, i32 104512 }, %struct.ath10k_mem_section { i32 104576, i32 104604 }, %struct.ath10k_mem_section { i32 104612, i32 104624 }, %struct.ath10k_mem_section { i32 104636, i32 104704 }, %struct.ath10k_mem_section { i32 105472, i32 105608 }, %struct.ath10k_mem_section { i32 105728, i32 105760 }, %struct.ath10k_mem_section { i32 105984, i32 106108 }, %struct.ath10k_mem_section { i32 106112, i32 106132 }, %struct.ath10k_mem_section { i32 106136, i32 106156 }, %struct.ath10k_mem_section { i32 106160, i32 106172 }, %struct.ath10k_mem_section { i32 106352, i32 106356 }, %struct.ath10k_mem_section { i32 106368, i32 106380 }, %struct.ath10k_mem_section { i32 106400, i32 106420 }, %struct.ath10k_mem_section { i32 106432, i32 106456 }, %struct.ath10k_mem_section { i32 106496, i32 107008 }, %struct.ath10k_mem_section { i32 107012, i32 107024 }, %struct.ath10k_mem_section { i32 107048, i32 107052 }, %struct.ath10k_mem_section { i32 107056, i32 107080 }, %struct.ath10k_mem_section { i32 107088, i32 107120 }, %struct.ath10k_mem_section { i32 107136, i32 107152 }, %struct.ath10k_mem_section { i32 107168, i32 107172 }, %struct.ath10k_mem_section { i32 107200, i32 107244 }, %struct.ath10k_mem_section { i32 107264, i32 107452 }, %struct.ath10k_mem_section { i32 107504, i32 107508 }, %struct.ath10k_mem_section { i32 107512, i32 107572 }, %struct.ath10k_mem_section { i32 107576, i32 107588 }, %struct.ath10k_mem_section { i32 107592, i32 107624 }, %struct.ath10k_mem_section { i32 107904, i32 107916 }, %struct.ath10k_mem_section { i32 108100, i32 108116 }, %struct.ath10k_mem_section { i32 108144, i32 108184 }, %struct.ath10k_mem_section { i32 108204, i32 108208 }, %struct.ath10k_mem_section { i32 108240, i32 108244 }, %struct.ath10k_mem_section { i32 108268, i32 108300 }, %struct.ath10k_mem_section { i32 108304, i32 108344 }, %struct.ath10k_mem_section { i32 108480, i32 108496 }, %struct.ath10k_mem_section { i32 108500, i32 108504 }, %struct.ath10k_mem_section { i32 108508, i32 108516 }, %struct.ath10k_mem_section { i32 108528, i32 108536 }, %struct.ath10k_mem_section { i32 108680, i32 108700 }, %struct.ath10k_mem_section { i32 108712, i32 108716 }, %struct.ath10k_mem_section { i32 108736, i32 108764 }, %struct.ath10k_mem_section { i32 108784, i32 108796 }, %struct.ath10k_mem_section { i32 110084, i32 110088 }, %struct.ath10k_mem_section { i32 110104, i32 110116 }, %struct.ath10k_mem_section { i32 110464, i32 110476 }, %struct.ath10k_mem_section { i32 110496, i32 110516 }, %struct.ath10k_mem_section { i32 110592, i32 111104 }, %struct.ath10k_mem_section { i32 111236, i32 111240 }, %struct.ath10k_mem_section { i32 111312, i32 111320 }, %struct.ath10k_mem_section { i32 111324, i32 111340 }, %struct.ath10k_mem_section { i32 111360, i32 111424 }, %struct.ath10k_mem_section { i32 111476, i32 111480 }, %struct.ath10k_mem_section { i32 111488, i32 111492 }, %struct.ath10k_mem_section { i32 111496, i32 111500 }, %struct.ath10k_mem_section { i32 111620, i32 111624 }, %struct.ath10k_mem_section { i32 111648, i32 111656 }, %struct.ath10k_mem_section { i32 111680, i32 111684 }, %struct.ath10k_mem_section { i32 111688, i32 111692 }, %struct.ath10k_mem_section { i32 111696, i32 111704 }, %struct.ath10k_mem_section { i32 111708, i32 111720 }, %struct.ath10k_mem_section { i32 112004, i32 112012 }, %struct.ath10k_mem_section { i32 112268, i32 112272 }, %struct.ath10k_mem_section { i32 112300, i32 112304 }, %struct.ath10k_mem_section { i32 112624, i32 112632 }, %struct.ath10k_mem_section { i32 116736, i32 117760 }, %struct.ath10k_mem_section { i32 118272, i32 118276 }, %struct.ath10k_mem_section { i32 118656, i32 118660 }, %struct.ath10k_mem_section { i32 119296, i32 120832 }, %struct.ath10k_mem_section { i32 122880, i32 131092 }, %struct.ath10k_mem_section { i32 131328, i32 131364 }, %struct.ath10k_mem_section { i32 136192, i32 137128 }, %struct.ath10k_mem_section { i32 137216, i32 138152 }, %struct.ath10k_mem_section { i32 138240, i32 139176 }, %struct.ath10k_mem_section { i32 139264, i32 140200 }, %struct.ath10k_mem_section { i32 140288, i32 141224 }, %struct.ath10k_mem_section { i32 141312, i32 142248 }, %struct.ath10k_mem_section { i32 142336, i32 143272 }, %struct.ath10k_mem_section { i32 143360, i32 144296 }, %struct.ath10k_mem_section { i32 147456, i32 147508 }, %struct.ath10k_mem_section { i32 155648, i32 155748 }, %struct.ath10k_mem_section { i32 159744, i32 159780 }, %struct.ath10k_mem_section { i32 212992, i32 213004 }, %struct.ath10k_mem_section { i32 214016, i32 214108 }, %struct.ath10k_mem_section { i32 215040, i32 215132 }, %struct.ath10k_mem_section { i32 216064, i32 216156 }, %struct.ath10k_mem_section { i32 217088, i32 217180 }, %struct.ath10k_mem_section { i32 218112, i32 218204 }, %struct.ath10k_mem_section { i32 219136, i32 219228 }, %struct.ath10k_mem_section { i32 220160, i32 220252 }, %struct.ath10k_mem_section { i32 221184, i32 221276 }, %struct.ath10k_mem_section { i32 229376, i32 229476 }, %struct.ath10k_mem_section { i32 229488, i32 229600 }, %struct.ath10k_mem_section { i32 237568, i32 237668 }, %struct.ath10k_mem_section { i32 262144, i32 262308 }, %struct.ath10k_mem_section { i32 524288, i32 524300 }, %struct.ath10k_mem_section { i32 524304, i32 524320 }], [504 x i8] zeroinitializer }, align 32
@qca6174_hw30_register_sections = internal constant { [253 x %struct.ath10k_mem_section], [504 x i8] } { [253 x %struct.ath10k_mem_section] [%struct.ath10k_mem_section { i32 2048, i32 2064 }, %struct.ath10k_mem_section { i32 2080, i32 2092 }, %struct.ath10k_mem_section { i32 2096, i32 2292 }, %struct.ath10k_mem_section { i32 2316, i32 2332 }, %struct.ath10k_mem_section { i32 2580, i32 2584 }, %struct.ath10k_mem_section { i32 2692, i32 2708 }, %struct.ath10k_mem_section { i32 2728, i32 2772 }, %struct.ath10k_mem_section { i32 2780, i32 2880 }, %struct.ath10k_mem_section { i32 4096, i32 4260 }, %struct.ath10k_mem_section { i32 4284, i32 4380 }, %struct.ath10k_mem_section { i32 4404, i32 4408 }, %struct.ath10k_mem_section { i32 4420, i32 4428 }, %struct.ath10k_mem_section { i32 4432, i32 4444 }, %struct.ath10k_mem_section { i32 4448, i32 4472 }, %struct.ath10k_mem_section { i32 4672, i32 4704 }, %struct.ath10k_mem_section { i32 8192, i32 8316 }, %struct.ath10k_mem_section { i32 12288, i32 12308 }, %struct.ath10k_mem_section { i32 16384, i32 16404 }, %struct.ath10k_mem_section { i32 20480, i32 20772 }, %struct.ath10k_mem_section { i32 24576, i32 24640 }, %struct.ath10k_mem_section { i32 24704, i32 24780 }, %struct.ath10k_mem_section { i32 24832, i32 24860 }, %struct.ath10k_mem_section { i32 24896, i32 25048 }, %struct.ath10k_mem_section { i32 25088, i32 25144 }, %struct.ath10k_mem_section { i32 25152, i32 25228 }, %struct.ath10k_mem_section { i32 25280, i32 25324 }, %struct.ath10k_mem_section { i32 25472, i32 25576 }, %struct.ath10k_mem_section { i32 25600, i32 25664 }, %struct.ath10k_mem_section { i32 25728, i32 25804 }, %struct.ath10k_mem_section { i32 25856, i32 25884 }, %struct.ath10k_mem_section { i32 25920, i32 25984 }, %struct.ath10k_mem_section { i32 26112, i32 26168 }, %struct.ath10k_mem_section { i32 26176, i32 26252 }, %struct.ath10k_mem_section { i32 26304, i32 26348 }, %struct.ath10k_mem_section { i32 26496, i32 26600 }, %struct.ath10k_mem_section { i32 28800, i32 28812 }, %struct.ath10k_mem_section { i32 28864, i32 28872 }, %struct.ath10k_mem_section { i32 29696, i32 29724 }, %struct.ath10k_mem_section { i32 29760, i32 29780 }, %struct.ath10k_mem_section { i32 30720, i32 30744 }, %struct.ath10k_mem_section { i32 32768, i32 32772 }, %struct.ath10k_mem_section { i32 32784, i32 32868 }, %struct.ath10k_mem_section { i32 32896, i32 32900 }, %struct.ath10k_mem_section { i32 32928, i32 32932 }, %struct.ath10k_mem_section { i32 32960, i32 32964 }, %struct.ath10k_mem_section { i32 32992, i32 33012 }, %struct.ath10k_mem_section { i32 33024, i32 33028 }, %struct.ath10k_mem_section { i32 33040, i32 33068 }, %struct.ath10k_mem_section { i32 36864, i32 36868 }, %struct.ath10k_mem_section { i32 38912, i32 38956 }, %struct.ath10k_mem_section { i32 38960, i32 38968 }, %struct.ath10k_mem_section { i32 38976, i32 39020 }, %struct.ath10k_mem_section { i32 39024, i32 39064 }, %struct.ath10k_mem_section { i32 39424, i32 39936 }, %struct.ath10k_mem_section { i32 54656, i32 54684 }, %struct.ath10k_mem_section { i32 61440, i32 61664 }, %struct.ath10k_mem_section { i32 61760, i32 61840 }, %struct.ath10k_mem_section { i32 62032, i32 62044 }, %struct.ath10k_mem_section { i32 62048, i32 62056 }, %struct.ath10k_mem_section { i32 62060, i32 62120 }, %struct.ath10k_mem_section { i32 65544, i32 65548 }, %struct.ath10k_mem_section { i32 65556, i32 65560 }, %struct.ath10k_mem_section { i32 65564, i32 65568 }, %struct.ath10k_mem_section { i32 65572, i32 65576 }, %struct.ath10k_mem_section { i32 65584, i32 65588 }, %struct.ath10k_mem_section { i32 65600, i32 65620 }, %struct.ath10k_mem_section { i32 65624, i32 65660 }, %struct.ath10k_mem_section { i32 65664, i32 65732 }, %struct.ath10k_mem_section { i32 65736, i32 65812 }, %struct.ath10k_mem_section { i32 65836, i32 65840 }, %struct.ath10k_mem_section { i32 65848, i32 65860 }, %struct.ath10k_mem_section { i32 66048, i32 66080 }, %struct.ath10k_mem_section { i32 66096, i32 66128 }, %struct.ath10k_mem_section { i32 66144, i32 66176 }, %struct.ath10k_mem_section { i32 66192, i32 66224 }, %struct.ath10k_mem_section { i32 66240, i32 66268 }, %struct.ath10k_mem_section { i32 66272, i32 66292 }, %struct.ath10k_mem_section { i32 66300, i32 66428 }, %struct.ath10k_mem_section { i32 66432, i32 66448 }, %struct.ath10k_mem_section { i32 67584, i32 67624 }, %struct.ath10k_mem_section { i32 67648, i32 67652 }, %struct.ath10k_mem_section { i32 67712, i32 67716 }, %struct.ath10k_mem_section { i32 67776, i32 67816 }, %struct.ath10k_mem_section { i32 67840, i32 67880 }, %struct.ath10k_mem_section { i32 67904, i32 67908 }, %struct.ath10k_mem_section { i32 67968, i32 67972 }, %struct.ath10k_mem_section { i32 68032, i32 68072 }, %struct.ath10k_mem_section { i32 68096, i32 68136 }, %struct.ath10k_mem_section { i32 68160, i32 68176 }, %struct.ath10k_mem_section { i32 69632, i32 69672 }, %struct.ath10k_mem_section { i32 69680, i32 69684 }, %struct.ath10k_mem_section { i32 69688, i32 69736 }, %struct.ath10k_mem_section { i32 69744, i32 69748 }, %struct.ath10k_mem_section { i32 69752, i32 69800 }, %struct.ath10k_mem_section { i32 69808, i32 69812 }, %struct.ath10k_mem_section { i32 69816, i32 69864 }, %struct.ath10k_mem_section { i32 69872, i32 69876 }, %struct.ath10k_mem_section { i32 69880, i32 69928 }, %struct.ath10k_mem_section { i32 69944, i32 69956 }, %struct.ath10k_mem_section { i32 70008, i32 70016 }, %struct.ath10k_mem_section { i32 70072, i32 70080 }, %struct.ath10k_mem_section { i32 70136, i32 70144 }, %struct.ath10k_mem_section { i32 70200, i32 70204 }, %struct.ath10k_mem_section { i32 70256, i32 70260 }, %struct.ath10k_mem_section { i32 70264, i32 70268 }, %struct.ath10k_mem_section { i32 70320, i32 70324 }, %struct.ath10k_mem_section { i32 70328, i32 70332 }, %struct.ath10k_mem_section { i32 70384, i32 70388 }, %struct.ath10k_mem_section { i32 70392, i32 70396 }, %struct.ath10k_mem_section { i32 70456, i32 70460 }, %struct.ath10k_mem_section { i32 70520, i32 70524 }, %struct.ath10k_mem_section { i32 70584, i32 70588 }, %struct.ath10k_mem_section { i32 70648, i32 70652 }, %struct.ath10k_mem_section { i32 70712, i32 70720 }, %struct.ath10k_mem_section { i32 70776, i32 70784 }, %struct.ath10k_mem_section { i32 70840, i32 70844 }, %struct.ath10k_mem_section { i32 70904, i32 70908 }, %struct.ath10k_mem_section { i32 70968, i32 70972 }, %struct.ath10k_mem_section { i32 71032, i32 71036 }, %struct.ath10k_mem_section { i32 71096, i32 71100 }, %struct.ath10k_mem_section { i32 71160, i32 71164 }, %struct.ath10k_mem_section { i32 71224, i32 71228 }, %struct.ath10k_mem_section { i32 71288, i32 71292 }, %struct.ath10k_mem_section { i32 71352, i32 71356 }, %struct.ath10k_mem_section { i32 71416, i32 71420 }, %struct.ath10k_mem_section { i32 71480, i32 71484 }, %struct.ath10k_mem_section { i32 71544, i32 71548 }, %struct.ath10k_mem_section { i32 71608, i32 71612 }, %struct.ath10k_mem_section { i32 71672, i32 71676 }, %struct.ath10k_mem_section { i32 94208, i32 94236 }, %struct.ath10k_mem_section { i32 94240, i32 94380 }, %struct.ath10k_mem_section { i32 98304, i32 98384 }, %struct.ath10k_mem_section { i32 98388, i32 98420 }, %struct.ath10k_mem_section { i32 98432, i32 98516 }, %struct.ath10k_mem_section { i32 98524, i32 98564 }, %struct.ath10k_mem_section { i32 98568, i32 98620 }, %struct.ath10k_mem_section { i32 98628, i32 98632 }, %struct.ath10k_mem_section { i32 98664, i32 98676 }, %struct.ath10k_mem_section { i32 98680, i32 98688 }, %struct.ath10k_mem_section { i32 98760, i32 98784 }, %struct.ath10k_mem_section { i32 98788, i32 98792 }, %struct.ath10k_mem_section { i32 98796, i32 98828 }, %struct.ath10k_mem_section { i32 98908, i32 98944 }, %struct.ath10k_mem_section { i32 98948, i32 98960 }, %struct.ath10k_mem_section { i32 98964, i32 98976 }, %struct.ath10k_mem_section { i32 99072, i32 99076 }, %struct.ath10k_mem_section { i32 99092, i32 99104 }, %struct.ath10k_mem_section { i32 99112, i32 99152 }, %struct.ath10k_mem_section { i32 99164, i32 99180 }, %struct.ath10k_mem_section { i32 99184, i32 99216 }, %struct.ath10k_mem_section { i32 99224, i32 99244 }, %struct.ath10k_mem_section { i32 99260, i32 99288 }, %struct.ath10k_mem_section { i32 99292, i32 99316 }, %struct.ath10k_mem_section { i32 99328, i32 100084 }, %struct.ath10k_mem_section { i32 100088, i32 100124 }, %struct.ath10k_mem_section { i32 100128, i32 100240 }, %struct.ath10k_mem_section { i32 104448, i32 104496 }, %struct.ath10k_mem_section { i32 104500, i32 104512 }, %struct.ath10k_mem_section { i32 104576, i32 104604 }, %struct.ath10k_mem_section { i32 104612, i32 104624 }, %struct.ath10k_mem_section { i32 104636, i32 104704 }, %struct.ath10k_mem_section { i32 105472, i32 105608 }, %struct.ath10k_mem_section { i32 105728, i32 105760 }, %struct.ath10k_mem_section { i32 105984, i32 106108 }, %struct.ath10k_mem_section { i32 106112, i32 106132 }, %struct.ath10k_mem_section { i32 106136, i32 106156 }, %struct.ath10k_mem_section { i32 106160, i32 106172 }, %struct.ath10k_mem_section { i32 106352, i32 106356 }, %struct.ath10k_mem_section { i32 106368, i32 106380 }, %struct.ath10k_mem_section { i32 106400, i32 106420 }, %struct.ath10k_mem_section { i32 106432, i32 106456 }, %struct.ath10k_mem_section { i32 106496, i32 107008 }, %struct.ath10k_mem_section { i32 107012, i32 107024 }, %struct.ath10k_mem_section { i32 107048, i32 107052 }, %struct.ath10k_mem_section { i32 107056, i32 107080 }, %struct.ath10k_mem_section { i32 107088, i32 107120 }, %struct.ath10k_mem_section { i32 107136, i32 107152 }, %struct.ath10k_mem_section { i32 107168, i32 107172 }, %struct.ath10k_mem_section { i32 107200, i32 107244 }, %struct.ath10k_mem_section { i32 107264, i32 107452 }, %struct.ath10k_mem_section { i32 107504, i32 107508 }, %struct.ath10k_mem_section { i32 107512, i32 107572 }, %struct.ath10k_mem_section { i32 107576, i32 107588 }, %struct.ath10k_mem_section { i32 107592, i32 107624 }, %struct.ath10k_mem_section { i32 107904, i32 107916 }, %struct.ath10k_mem_section { i32 108100, i32 108116 }, %struct.ath10k_mem_section { i32 108144, i32 108184 }, %struct.ath10k_mem_section { i32 108204, i32 108208 }, %struct.ath10k_mem_section { i32 108240, i32 108244 }, %struct.ath10k_mem_section { i32 108268, i32 108300 }, %struct.ath10k_mem_section { i32 108304, i32 108344 }, %struct.ath10k_mem_section { i32 108480, i32 108496 }, %struct.ath10k_mem_section { i32 108500, i32 108504 }, %struct.ath10k_mem_section { i32 108508, i32 108516 }, %struct.ath10k_mem_section { i32 108528, i32 108536 }, %struct.ath10k_mem_section { i32 108680, i32 108700 }, %struct.ath10k_mem_section { i32 108712, i32 108716 }, %struct.ath10k_mem_section { i32 108736, i32 108764 }, %struct.ath10k_mem_section { i32 108784, i32 108796 }, %struct.ath10k_mem_section { i32 110084, i32 110088 }, %struct.ath10k_mem_section { i32 110104, i32 110116 }, %struct.ath10k_mem_section { i32 110464, i32 110476 }, %struct.ath10k_mem_section { i32 110496, i32 110516 }, %struct.ath10k_mem_section { i32 110592, i32 111104 }, %struct.ath10k_mem_section { i32 111236, i32 111240 }, %struct.ath10k_mem_section { i32 111312, i32 111320 }, %struct.ath10k_mem_section { i32 111324, i32 111340 }, %struct.ath10k_mem_section { i32 111360, i32 111424 }, %struct.ath10k_mem_section { i32 111476, i32 111480 }, %struct.ath10k_mem_section { i32 111488, i32 111492 }, %struct.ath10k_mem_section { i32 111496, i32 111500 }, %struct.ath10k_mem_section { i32 111620, i32 111624 }, %struct.ath10k_mem_section { i32 111648, i32 111656 }, %struct.ath10k_mem_section { i32 111680, i32 111684 }, %struct.ath10k_mem_section { i32 111688, i32 111692 }, %struct.ath10k_mem_section { i32 111696, i32 111704 }, %struct.ath10k_mem_section { i32 111708, i32 111720 }, %struct.ath10k_mem_section { i32 112004, i32 112012 }, %struct.ath10k_mem_section { i32 112268, i32 112272 }, %struct.ath10k_mem_section { i32 112300, i32 112304 }, %struct.ath10k_mem_section { i32 112624, i32 112632 }, %struct.ath10k_mem_section { i32 116736, i32 117760 }, %struct.ath10k_mem_section { i32 118272, i32 118276 }, %struct.ath10k_mem_section { i32 118656, i32 118660 }, %struct.ath10k_mem_section { i32 119296, i32 120832 }, %struct.ath10k_mem_section { i32 122880, i32 131092 }, %struct.ath10k_mem_section { i32 131328, i32 131364 }, %struct.ath10k_mem_section { i32 136192, i32 137128 }, %struct.ath10k_mem_section { i32 137216, i32 138152 }, %struct.ath10k_mem_section { i32 138240, i32 139176 }, %struct.ath10k_mem_section { i32 139264, i32 140200 }, %struct.ath10k_mem_section { i32 140288, i32 141224 }, %struct.ath10k_mem_section { i32 141312, i32 142248 }, %struct.ath10k_mem_section { i32 142336, i32 143272 }, %struct.ath10k_mem_section { i32 143360, i32 144296 }, %struct.ath10k_mem_section { i32 147456, i32 147508 }, %struct.ath10k_mem_section { i32 155648, i32 155748 }, %struct.ath10k_mem_section { i32 159744, i32 159780 }, %struct.ath10k_mem_section { i32 212992, i32 213004 }, %struct.ath10k_mem_section { i32 214016, i32 214108 }, %struct.ath10k_mem_section { i32 215040, i32 215132 }, %struct.ath10k_mem_section { i32 216064, i32 216156 }, %struct.ath10k_mem_section { i32 217088, i32 217180 }, %struct.ath10k_mem_section { i32 218112, i32 218204 }, %struct.ath10k_mem_section { i32 219136, i32 219228 }, %struct.ath10k_mem_section { i32 220160, i32 220252 }, %struct.ath10k_mem_section { i32 221184, i32 221276 }, %struct.ath10k_mem_section { i32 229376, i32 229476 }, %struct.ath10k_mem_section { i32 229488, i32 229600 }, %struct.ath10k_mem_section { i32 237568, i32 237684 }, %struct.ath10k_mem_section { i32 262144, i32 262308 }, %struct.ath10k_mem_section { i32 524288, i32 524300 }, %struct.ath10k_mem_section { i32 524304, i32 524320 }], [504 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IRAM1\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IRAM2\00", [26 x i8] zeroinitializer }, align 32
@qca6174_hw30_sdio_register_sections = internal constant { [245 x %struct.ath10k_mem_section], [504 x i8] } { [245 x %struct.ath10k_mem_section] [%struct.ath10k_mem_section { i32 2048, i32 2064 }, %struct.ath10k_mem_section { i32 2080, i32 2092 }, %struct.ath10k_mem_section { i32 2096, i32 2292 }, %struct.ath10k_mem_section { i32 2316, i32 2332 }, %struct.ath10k_mem_section { i32 2580, i32 2584 }, %struct.ath10k_mem_section { i32 2692, i32 2708 }, %struct.ath10k_mem_section { i32 2728, i32 2772 }, %struct.ath10k_mem_section { i32 2780, i32 2880 }, %struct.ath10k_mem_section { i32 4096, i32 4260 }, %struct.ath10k_mem_section { i32 4284, i32 4380 }, %struct.ath10k_mem_section { i32 4404, i32 4408 }, %struct.ath10k_mem_section { i32 4420, i32 4428 }, %struct.ath10k_mem_section { i32 4432, i32 4444 }, %struct.ath10k_mem_section { i32 4448, i32 4472 }, %struct.ath10k_mem_section { i32 4672, i32 4704 }, %struct.ath10k_mem_section { i32 8192, i32 8316 }, %struct.ath10k_mem_section { i32 12288, i32 12308 }, %struct.ath10k_mem_section { i32 16384, i32 16404 }, %struct.ath10k_mem_section { i32 20480, i32 20772 }, %struct.ath10k_mem_section { i32 24576, i32 24640 }, %struct.ath10k_mem_section { i32 24704, i32 24780 }, %struct.ath10k_mem_section { i32 24832, i32 24860 }, %struct.ath10k_mem_section { i32 24896, i32 25048 }, %struct.ath10k_mem_section { i32 25088, i32 25144 }, %struct.ath10k_mem_section { i32 25152, i32 25228 }, %struct.ath10k_mem_section { i32 25280, i32 25324 }, %struct.ath10k_mem_section { i32 25472, i32 25576 }, %struct.ath10k_mem_section { i32 25600, i32 25664 }, %struct.ath10k_mem_section { i32 25728, i32 25804 }, %struct.ath10k_mem_section { i32 25856, i32 25884 }, %struct.ath10k_mem_section { i32 25920, i32 25984 }, %struct.ath10k_mem_section { i32 26112, i32 26168 }, %struct.ath10k_mem_section { i32 26176, i32 26252 }, %struct.ath10k_mem_section { i32 26304, i32 26348 }, %struct.ath10k_mem_section { i32 26496, i32 26600 }, %struct.ath10k_mem_section { i32 28800, i32 28812 }, %struct.ath10k_mem_section { i32 28864, i32 28872 }, %struct.ath10k_mem_section { i32 29696, i32 29724 }, %struct.ath10k_mem_section { i32 29760, i32 29780 }, %struct.ath10k_mem_section { i32 30720, i32 30744 }, %struct.ath10k_mem_section { i32 32784, i32 32864 }, %struct.ath10k_mem_section { i32 32896, i32 32900 }, %struct.ath10k_mem_section { i32 32928, i32 32932 }, %struct.ath10k_mem_section { i32 32960, i32 32964 }, %struct.ath10k_mem_section { i32 32992, i32 33004 }, %struct.ath10k_mem_section { i32 33040, i32 33064 }, %struct.ath10k_mem_section { i32 36864, i32 36868 }, %struct.ath10k_mem_section { i32 61440, i32 61664 }, %struct.ath10k_mem_section { i32 61760, i32 61840 }, %struct.ath10k_mem_section { i32 62032, i32 62044 }, %struct.ath10k_mem_section { i32 62048, i32 62056 }, %struct.ath10k_mem_section { i32 62060, i32 62120 }, %struct.ath10k_mem_section { i32 65544, i32 65548 }, %struct.ath10k_mem_section { i32 65556, i32 65560 }, %struct.ath10k_mem_section { i32 65564, i32 65568 }, %struct.ath10k_mem_section { i32 65572, i32 65576 }, %struct.ath10k_mem_section { i32 65584, i32 65588 }, %struct.ath10k_mem_section { i32 65600, i32 65620 }, %struct.ath10k_mem_section { i32 65624, i32 65660 }, %struct.ath10k_mem_section { i32 65664, i32 65732 }, %struct.ath10k_mem_section { i32 65736, i32 65812 }, %struct.ath10k_mem_section { i32 65836, i32 65840 }, %struct.ath10k_mem_section { i32 65848, i32 65860 }, %struct.ath10k_mem_section { i32 66048, i32 66080 }, %struct.ath10k_mem_section { i32 66096, i32 66128 }, %struct.ath10k_mem_section { i32 66144, i32 66176 }, %struct.ath10k_mem_section { i32 66192, i32 66224 }, %struct.ath10k_mem_section { i32 66240, i32 66268 }, %struct.ath10k_mem_section { i32 66272, i32 66292 }, %struct.ath10k_mem_section { i32 66300, i32 66428 }, %struct.ath10k_mem_section { i32 66432, i32 66448 }, %struct.ath10k_mem_section { i32 67584, i32 67624 }, %struct.ath10k_mem_section { i32 67648, i32 67652 }, %struct.ath10k_mem_section { i32 67712, i32 67716 }, %struct.ath10k_mem_section { i32 67776, i32 67816 }, %struct.ath10k_mem_section { i32 67840, i32 67880 }, %struct.ath10k_mem_section { i32 67904, i32 67908 }, %struct.ath10k_mem_section { i32 67968, i32 67972 }, %struct.ath10k_mem_section { i32 68032, i32 68072 }, %struct.ath10k_mem_section { i32 68096, i32 68136 }, %struct.ath10k_mem_section { i32 68160, i32 68176 }, %struct.ath10k_mem_section { i32 69632, i32 69672 }, %struct.ath10k_mem_section { i32 69680, i32 69684 }, %struct.ath10k_mem_section { i32 69688, i32 69736 }, %struct.ath10k_mem_section { i32 69744, i32 69748 }, %struct.ath10k_mem_section { i32 69752, i32 69800 }, %struct.ath10k_mem_section { i32 69808, i32 69812 }, %struct.ath10k_mem_section { i32 69816, i32 69864 }, %struct.ath10k_mem_section { i32 69872, i32 69876 }, %struct.ath10k_mem_section { i32 69880, i32 69928 }, %struct.ath10k_mem_section { i32 69944, i32 69956 }, %struct.ath10k_mem_section { i32 70008, i32 70016 }, %struct.ath10k_mem_section { i32 70072, i32 70080 }, %struct.ath10k_mem_section { i32 70136, i32 70144 }, %struct.ath10k_mem_section { i32 70200, i32 70204 }, %struct.ath10k_mem_section { i32 70256, i32 70260 }, %struct.ath10k_mem_section { i32 70264, i32 70268 }, %struct.ath10k_mem_section { i32 70320, i32 70324 }, %struct.ath10k_mem_section { i32 70328, i32 70332 }, %struct.ath10k_mem_section { i32 70384, i32 70388 }, %struct.ath10k_mem_section { i32 70392, i32 70396 }, %struct.ath10k_mem_section { i32 70456, i32 70460 }, %struct.ath10k_mem_section { i32 70520, i32 70524 }, %struct.ath10k_mem_section { i32 70584, i32 70588 }, %struct.ath10k_mem_section { i32 70648, i32 70652 }, %struct.ath10k_mem_section { i32 70712, i32 70720 }, %struct.ath10k_mem_section { i32 70776, i32 70784 }, %struct.ath10k_mem_section { i32 70840, i32 70844 }, %struct.ath10k_mem_section { i32 70904, i32 70908 }, %struct.ath10k_mem_section { i32 70968, i32 70972 }, %struct.ath10k_mem_section { i32 71032, i32 71036 }, %struct.ath10k_mem_section { i32 71096, i32 71100 }, %struct.ath10k_mem_section { i32 71160, i32 71164 }, %struct.ath10k_mem_section { i32 71224, i32 71228 }, %struct.ath10k_mem_section { i32 71288, i32 71292 }, %struct.ath10k_mem_section { i32 71352, i32 71356 }, %struct.ath10k_mem_section { i32 71416, i32 71420 }, %struct.ath10k_mem_section { i32 71480, i32 71484 }, %struct.ath10k_mem_section { i32 71544, i32 71548 }, %struct.ath10k_mem_section { i32 71608, i32 71612 }, %struct.ath10k_mem_section { i32 71672, i32 71676 }, %struct.ath10k_mem_section { i32 94208, i32 94236 }, %struct.ath10k_mem_section { i32 94240, i32 94380 }, %struct.ath10k_mem_section { i32 98304, i32 98384 }, %struct.ath10k_mem_section { i32 98388, i32 98420 }, %struct.ath10k_mem_section { i32 98432, i32 98516 }, %struct.ath10k_mem_section { i32 98524, i32 98564 }, %struct.ath10k_mem_section { i32 98568, i32 98620 }, %struct.ath10k_mem_section { i32 98628, i32 98632 }, %struct.ath10k_mem_section { i32 98664, i32 98676 }, %struct.ath10k_mem_section { i32 98680, i32 98688 }, %struct.ath10k_mem_section { i32 98760, i32 98784 }, %struct.ath10k_mem_section { i32 98788, i32 98792 }, %struct.ath10k_mem_section { i32 98796, i32 98828 }, %struct.ath10k_mem_section { i32 98908, i32 98944 }, %struct.ath10k_mem_section { i32 98948, i32 98960 }, %struct.ath10k_mem_section { i32 98964, i32 98976 }, %struct.ath10k_mem_section { i32 99072, i32 99076 }, %struct.ath10k_mem_section { i32 99092, i32 99104 }, %struct.ath10k_mem_section { i32 99112, i32 99152 }, %struct.ath10k_mem_section { i32 99164, i32 99180 }, %struct.ath10k_mem_section { i32 99184, i32 99216 }, %struct.ath10k_mem_section { i32 99224, i32 99244 }, %struct.ath10k_mem_section { i32 99260, i32 99288 }, %struct.ath10k_mem_section { i32 99292, i32 99316 }, %struct.ath10k_mem_section { i32 99328, i32 100084 }, %struct.ath10k_mem_section { i32 100088, i32 100124 }, %struct.ath10k_mem_section { i32 100128, i32 100240 }, %struct.ath10k_mem_section { i32 104448, i32 104496 }, %struct.ath10k_mem_section { i32 104500, i32 104512 }, %struct.ath10k_mem_section { i32 104576, i32 104604 }, %struct.ath10k_mem_section { i32 104612, i32 104624 }, %struct.ath10k_mem_section { i32 104636, i32 104704 }, %struct.ath10k_mem_section { i32 105472, i32 105608 }, %struct.ath10k_mem_section { i32 105728, i32 105760 }, %struct.ath10k_mem_section { i32 105984, i32 106108 }, %struct.ath10k_mem_section { i32 106112, i32 106132 }, %struct.ath10k_mem_section { i32 106136, i32 106156 }, %struct.ath10k_mem_section { i32 106160, i32 106172 }, %struct.ath10k_mem_section { i32 106352, i32 106356 }, %struct.ath10k_mem_section { i32 106368, i32 106380 }, %struct.ath10k_mem_section { i32 106400, i32 106420 }, %struct.ath10k_mem_section { i32 106432, i32 106456 }, %struct.ath10k_mem_section { i32 106496, i32 107008 }, %struct.ath10k_mem_section { i32 107012, i32 107024 }, %struct.ath10k_mem_section { i32 107048, i32 107052 }, %struct.ath10k_mem_section { i32 107056, i32 107080 }, %struct.ath10k_mem_section { i32 107088, i32 107120 }, %struct.ath10k_mem_section { i32 107136, i32 107152 }, %struct.ath10k_mem_section { i32 107168, i32 107172 }, %struct.ath10k_mem_section { i32 107200, i32 107244 }, %struct.ath10k_mem_section { i32 107264, i32 107452 }, %struct.ath10k_mem_section { i32 107504, i32 107508 }, %struct.ath10k_mem_section { i32 107512, i32 107572 }, %struct.ath10k_mem_section { i32 107576, i32 107588 }, %struct.ath10k_mem_section { i32 107592, i32 107624 }, %struct.ath10k_mem_section { i32 107904, i32 107916 }, %struct.ath10k_mem_section { i32 108100, i32 108116 }, %struct.ath10k_mem_section { i32 108144, i32 108184 }, %struct.ath10k_mem_section { i32 108204, i32 108208 }, %struct.ath10k_mem_section { i32 108240, i32 108244 }, %struct.ath10k_mem_section { i32 108268, i32 108300 }, %struct.ath10k_mem_section { i32 108304, i32 108344 }, %struct.ath10k_mem_section { i32 108480, i32 108496 }, %struct.ath10k_mem_section { i32 108500, i32 108504 }, %struct.ath10k_mem_section { i32 108508, i32 108516 }, %struct.ath10k_mem_section { i32 108528, i32 108536 }, %struct.ath10k_mem_section { i32 108680, i32 108700 }, %struct.ath10k_mem_section { i32 108712, i32 108716 }, %struct.ath10k_mem_section { i32 108736, i32 108764 }, %struct.ath10k_mem_section { i32 108784, i32 108796 }, %struct.ath10k_mem_section { i32 110084, i32 110088 }, %struct.ath10k_mem_section { i32 110104, i32 110116 }, %struct.ath10k_mem_section { i32 110464, i32 110476 }, %struct.ath10k_mem_section { i32 110496, i32 110516 }, %struct.ath10k_mem_section { i32 110592, i32 111104 }, %struct.ath10k_mem_section { i32 111236, i32 111240 }, %struct.ath10k_mem_section { i32 111312, i32 111320 }, %struct.ath10k_mem_section { i32 111324, i32 111340 }, %struct.ath10k_mem_section { i32 111360, i32 111424 }, %struct.ath10k_mem_section { i32 111476, i32 111480 }, %struct.ath10k_mem_section { i32 111488, i32 111492 }, %struct.ath10k_mem_section { i32 111496, i32 111500 }, %struct.ath10k_mem_section { i32 111620, i32 111624 }, %struct.ath10k_mem_section { i32 111648, i32 111656 }, %struct.ath10k_mem_section { i32 111680, i32 111684 }, %struct.ath10k_mem_section { i32 111688, i32 111692 }, %struct.ath10k_mem_section { i32 111696, i32 111704 }, %struct.ath10k_mem_section { i32 111708, i32 111720 }, %struct.ath10k_mem_section { i32 112004, i32 112012 }, %struct.ath10k_mem_section { i32 112268, i32 112272 }, %struct.ath10k_mem_section { i32 112300, i32 112304 }, %struct.ath10k_mem_section { i32 112624, i32 112632 }, %struct.ath10k_mem_section { i32 116736, i32 117760 }, %struct.ath10k_mem_section { i32 118272, i32 118276 }, %struct.ath10k_mem_section { i32 118656, i32 118660 }, %struct.ath10k_mem_section { i32 119296, i32 120832 }, %struct.ath10k_mem_section { i32 122880, i32 131092 }, %struct.ath10k_mem_section { i32 131328, i32 131364 }, %struct.ath10k_mem_section { i32 136192, i32 137128 }, %struct.ath10k_mem_section { i32 137216, i32 138152 }, %struct.ath10k_mem_section { i32 138240, i32 139176 }, %struct.ath10k_mem_section { i32 139264, i32 140200 }, %struct.ath10k_mem_section { i32 140288, i32 141224 }, %struct.ath10k_mem_section { i32 141312, i32 142248 }, %struct.ath10k_mem_section { i32 142336, i32 143272 }, %struct.ath10k_mem_section { i32 143360, i32 144296 }, %struct.ath10k_mem_section { i32 147456, i32 147508 }, %struct.ath10k_mem_section { i32 155648, i32 155748 }, %struct.ath10k_mem_section { i32 159744, i32 159780 }, %struct.ath10k_mem_section { i32 212992, i32 213004 }, %struct.ath10k_mem_section { i32 214016, i32 214108 }, %struct.ath10k_mem_section { i32 215040, i32 215132 }, %struct.ath10k_mem_section { i32 216064, i32 216156 }, %struct.ath10k_mem_section { i32 217088, i32 217180 }, %struct.ath10k_mem_section { i32 218112, i32 218204 }, %struct.ath10k_mem_section { i32 219136, i32 219228 }, %struct.ath10k_mem_section { i32 220160, i32 220252 }, %struct.ath10k_mem_section { i32 221184, i32 221276 }, %struct.ath10k_mem_section { i32 229376, i32 229476 }, %struct.ath10k_mem_section { i32 229488, i32 229600 }, %struct.ath10k_mem_section { i32 237568, i32 237684 }, %struct.ath10k_mem_section { i32 262144, i32 262308 }, %struct.ath10k_mem_section { i32 524288, i32 524300 }, %struct.ath10k_mem_section { i32 524304, i32 524320 }], [504 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IRAM\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SRAM\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"APB REG 1\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"APB REG 2\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WIFI REG\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CE REG\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SOC REG\00", [24 x i8] zeroinitializer }, align 32
@ipq4019_soc_reg_range = internal constant { [9 x %struct.ath10k_mem_section], [56 x i8] } { [9 x %struct.ath10k_mem_section] [%struct.ath10k_mem_section { i32 524288, i32 524292 }, %struct.ath10k_mem_section { i32 524320, i32 524324 }, %struct.ath10k_mem_section { i32 524328, i32 524368 }, %struct.ath10k_mem_section { i32 524500, i32 524524 }, %struct.ath10k_mem_section { i32 524556, i32 524568 }, %struct.ath10k_mem_section { i32 524932, i32 524944 }, %struct.ath10k_mem_section { i32 524968, i32 524984 }, %struct.ath10k_mem_section { i32 525020, i32 525068 }, %struct.ath10k_mem_section { i32 532480, i32 540671 }], [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ATH10K-FW-DUMP\00", [17 x i8] zeroinitializer }, align 32
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1461, i32 6 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"hw_mem_layouts\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1291, i32 42 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1606, i32 19 }
@___asan_gen_.26 = private unnamed_addr constant [25 x i8] c"qca6174_hw10_mem_regions\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 800, i32 39 }
@___asan_gen_.29 = private unnamed_addr constant [25 x i8] c"qca6174_hw21_mem_regions\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 843, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant [25 x i8] c"qca6174_hw30_mem_regions\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 929, i32 39 }
@___asan_gen_.35 = private unnamed_addr constant [30 x i8] c"qca6174_hw30_sdio_mem_regions\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 876, i32 39 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"qca988x_hw20_mem_regions\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 984, i32 39 }
@___asan_gen_.41 = private unnamed_addr constant [25 x i8] c"qca9984_hw10_mem_regions\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1100, i32 39 }
@___asan_gen_.44 = private unnamed_addr constant [25 x i8] c"qca99x0_hw20_mem_regions\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1017, i32 39 }
@___asan_gen_.47 = private unnamed_addr constant [25 x i8] c"qca4019_hw10_mem_regions\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1195, i32 39 }
@___asan_gen_.50 = private unnamed_addr constant [25 x i8] c"wcn399x_hw10_mem_regions\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1278, i32 39 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 805, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 820, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 835, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 858, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 868, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [31 x i8] c"qca6174_hw21_register_sections\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 17, i32 40 }
@___asan_gen_.71 = private unnamed_addr constant [31 x i8] c"qca6174_hw30_register_sections\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 544, i32 40 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 966, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 976, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [36 x i8] c"qca6174_hw30_sdio_register_sections\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 273, i32 40 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1115, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1125, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1135, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1145, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1155, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1165, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1175, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"ipq4019_soc_reg_range\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1183, i32 40 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [46 x i8] c"../drivers/net/wireless/ath/ath10k/coredump.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1525, i32 31 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__ksymtab_ath10k_coredump_get_mem_layout, ptr @__ksymtab_ath10k_coredump_new, ptr @.str, ptr @hw_mem_layouts, ptr @.str.1, ptr @qca6174_hw10_mem_regions, ptr @qca6174_hw21_mem_regions, ptr @qca6174_hw30_mem_regions, ptr @qca6174_hw30_sdio_mem_regions, ptr @qca988x_hw20_mem_regions, ptr @qca9984_hw10_mem_regions, ptr @qca99x0_hw20_mem_regions, ptr @qca4019_hw10_mem_regions, ptr @wcn399x_hw10_mem_regions, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @qca6174_hw21_register_sections, ptr @qca6174_hw30_register_sections, ptr @.str.7, ptr @.str.8, ptr @qca6174_hw30_sdio_register_sections, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ipq4019_soc_reg_range, ptr @.str.16], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_mem_layouts to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca6174_hw10_mem_regions to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca6174_hw21_mem_regions to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca6174_hw30_mem_regions to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca6174_hw30_sdio_mem_regions to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca988x_hw20_mem_regions to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca9984_hw10_mem_regions to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca99x0_hw20_mem_regions to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca4019_hw10_mem_regions to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn399x_hw10_mem_regions to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca6174_hw21_register_sections to i32), i32 2024, i32 2528, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca6174_hw30_register_sections to i32), i32 2024, i32 2528, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca6174_hw30_sdio_register_sections to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq4019_soc_reg_range to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath10k_coredump_get_mem_layout(ptr nocapture noundef readonly %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_coredump_mask to i32))
  %0 = load volatile i32, ptr @ath10k_coredump_mask, align 4
  %1 = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %target_version.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 9
  %2 = ptrtoint ptr %target_version.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target_version.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %do.end.i, label %for.cond.preheader.i, !prof !75

for.cond.preheader.i:                             ; preds = %if.end
  %hw_rev.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 6
  %hif.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34
  br label %for.body.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1461, i32 noundef 9, ptr noundef null) #4
  br label %return

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.044.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [14 x %struct.ath10k_hw_mem_layout], ptr @hw_mem_layouts, i32 0, i32 %i.044.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp24.i = icmp eq i32 %3, %5
  br i1 %cmp24.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %6 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_rev.i, align 4
  %hw_rev26.i = getelementptr [14 x %struct.ath10k_hw_mem_layout], ptr @hw_mem_layouts, i32 0, i32 %i.044.i, i32 1
  %8 = ptrtoint ptr %hw_rev26.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_rev26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp27.i = icmp eq i32 %7, %9
  br i1 %cmp27.i, label %land.lhs.true28.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true28.i:                                ; preds = %land.lhs.true.i
  %bus.i = getelementptr [14 x %struct.ath10k_hw_mem_layout], ptr @hw_mem_layouts, i32 0, i32 %i.044.i, i32 2
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus.i, align 4
  %12 = ptrtoint ptr %hif.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hif.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp31.i = icmp eq i32 %11, %13
  br i1 %cmp31.i, label %land.lhs.true28.i.return_crit_edge, label %land.lhs.true28.i.for.inc.i_crit_edge

land.lhs.true28.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true28.i.return_crit_edge:               ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.inc.i:                                        ; preds = %land.lhs.true28.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %for.inc.i.return_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.return_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

return:                                           ; preds = %for.inc.i.return_crit_edge, %land.lhs.true28.i.return_crit_edge, %do.end.i, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ null, %do.end.i ], [ %arrayidx.i, %land.lhs.true28.i.return_crit_edge ], [ null, %for.inc.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @_ath10k_coredump_get_mem_layout(ptr nocapture noundef readonly %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %target_version = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 9
  %0 = ptrtoint ptr %target_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target_version, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %for.cond.preheader, !prof !75

for.cond.preheader:                               ; preds = %entry
  %hw_rev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 6
  %hif = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1461, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.044 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [14 x %struct.ath10k_hw_mem_layout], ptr @hw_mem_layouts, i32 0, i32 %i.044
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp24 = icmp eq i32 %1, %3
  br i1 %cmp24, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %4 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_rev, align 4
  %hw_rev26 = getelementptr [14 x %struct.ath10k_hw_mem_layout], ptr @hw_mem_layouts, i32 0, i32 %i.044, i32 1
  %6 = ptrtoint ptr %hw_rev26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_rev26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp27 = icmp eq i32 %5, %7
  br i1 %cmp27, label %land.lhs.true28, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true28:                                  ; preds = %land.lhs.true
  %bus = getelementptr [14 x %struct.ath10k_hw_mem_layout], ptr @hw_mem_layouts, i32 0, i32 %i.044, i32 2
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus, align 4
  %10 = ptrtoint ptr %hif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp31 = icmp eq i32 %9, %11
  br i1 %cmp31, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true28.for.inc_crit_edge

land.lhs.true28.for.inc_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true28.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %for.inc.cleanup_crit_edge ], [ %arrayidx, %land.lhs.true28.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath10k_coredump_new(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %coredump = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 118
  %0 = ptrtoint ptr %coredump to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coredump, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 81, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !75

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1478, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_coredump_mask to i32))
  %3 = load i32, ptr @ath10k_coredump_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp24 = icmp eq i32 %3, 0
  br i1 %cmp24, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @guid_gen(ptr noundef %1) #4
  %timestamp = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %1, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %timestamp) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end26 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @guid_gen(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_coredump_submit(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_coredump_mask to i32))
  %0 = load i32, ptr @ath10k_coredump_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %coredump.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 118
  %1 = ptrtoint ptr %coredump.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %coredump.i, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_coredump_mask to i32))
  %3 = load volatile i32, ptr @ath10k_coredump_mask, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 336, i32 584
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_coredump_mask to i32))
  %4 = load volatile i32, ptr @ath10k_coredump_mask, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  br i1 %tobool2.not.i, label %if.end.if.end6.i_crit_edge, label %if.then3.i

if.end.if.end6.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %hw_values.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %6 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ce_count.i, align 4
  %conv.i = zext i8 %9 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 20
  %add4.i = add nuw nsw i32 %spec.select.i, 24
  %add5.i = add nuw nsw i32 %add4.i, %mul.i
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.if.end6.i_crit_edge
  %len.1.i = phi i32 [ %add5.i, %if.then3.i ], [ %spec.select.i, %if.end.if.end6.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_coredump_mask to i32))
  %10 = load volatile i32, ptr @ath10k_coredump_mask, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not.i = icmp eq i32 %11, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end12.i_crit_edge, label %if.then9.i

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %ramdump_buf_len.i = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %2, i32 0, i32 5
  %12 = ptrtoint ptr %ramdump_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ramdump_buf_len.i, align 4
  %add10.i = add nuw nsw i32 %len.1.i, 8
  %add11.i = add i32 %add10.i, %13
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end12.i_crit_edge
  %len.2.i = phi i32 [ %add11.i, %if.then9.i ], [ %len.1.i, %if.end6.i.if.end12.i_crit_edge ]
  %call14.i = tail call noalias ptr @vzalloc(i32 noundef %len.2.i) #7
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.then1, label %if.end17.i

if.end17.i:                                       ; preds = %if.end12.i
  %dump_mutex.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 81
  tail call void @mutex_lock_nested(ptr noundef %dump_mutex.i, i32 noundef 0) #4
  %call18.i = tail call i32 @strscpy(ptr noundef nonnull %call14.i, ptr noundef nonnull @.str.16, i32 noundef 16) #4
  %14 = tail call i32 @llvm.bswap.i32(i32 %len.2.i) #4
  %len19.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 1
  %15 = ptrtoint ptr %len19.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %len19.i, align 1
  %version.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 2
  %16 = ptrtoint ptr %version.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 16777216, ptr %version.i, align 1
  %guid.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 3
  %17 = call ptr @memcpy(ptr %guid.i, ptr %2, i32 16)
  %bus_param.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 136
  %18 = ptrtoint ptr %bus_param.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bus_param.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #4
  %chip_id21.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 4
  %21 = ptrtoint ptr %chip_id21.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %chip_id21.i, align 1
  %bus_type.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 5
  %22 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 0, ptr %bus_type.i, align 1
  %target_version.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 9
  %23 = ptrtoint ptr %target_version.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %target_version.i, align 16
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #4
  %target_version22.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 6
  %26 = ptrtoint ptr %target_version22.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %target_version22.i, align 1
  %fw_version_major.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 10
  %27 = ptrtoint ptr %fw_version_major.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fw_version_major.i, align 4
  %conv23.i = zext i8 %28 to i32
  %29 = shl nuw i32 %conv23.i, 24
  %fw_version_major24.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 7
  %30 = ptrtoint ptr %fw_version_major24.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %fw_version_major24.i, align 1
  %fw_version_minor.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 11
  %31 = ptrtoint ptr %fw_version_minor.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fw_version_minor.i, align 8
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  %fw_version_minor25.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 8
  %34 = ptrtoint ptr %fw_version_minor25.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %fw_version_minor25.i, align 1
  %fw_version_release.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 12
  %35 = ptrtoint ptr %fw_version_release.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %fw_version_release.i, align 4
  %conv26.i = zext i16 %36 to i32
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv26.i) #4
  %fw_version_release27.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 9
  %38 = ptrtoint ptr %fw_version_release27.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %fw_version_release27.i, align 1
  %fw_version_build.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 13
  %39 = ptrtoint ptr %fw_version_build.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %fw_version_build.i, align 2
  %conv28.i = zext i16 %40 to i32
  %41 = tail call i32 @llvm.bswap.i32(i32 %conv28.i) #4
  %fw_version_build29.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 10
  %42 = ptrtoint ptr %fw_version_build29.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %fw_version_build29.i, align 1
  %phy_capability.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 15
  %43 = ptrtoint ptr %phy_capability.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %phy_capability.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #4
  %phy_capability30.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 11
  %46 = ptrtoint ptr %phy_capability30.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %phy_capability30.i, align 1
  %hw_min_tx_power.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 16
  %47 = ptrtoint ptr %hw_min_tx_power.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hw_min_tx_power.i, align 8
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #4
  %hw_min_tx_power31.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 12
  %50 = ptrtoint ptr %hw_min_tx_power31.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %hw_min_tx_power31.i, align 1
  %hw_max_tx_power.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 17
  %51 = ptrtoint ptr %hw_max_tx_power.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hw_max_tx_power.i, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #4
  %hw_max_tx_power32.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 13
  %54 = ptrtoint ptr %hw_max_tx_power32.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %hw_max_tx_power32.i, align 1
  %ht_cap_info.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 19
  %55 = ptrtoint ptr %ht_cap_info.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ht_cap_info.i, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #4
  %ht_cap_info33.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 14
  %58 = ptrtoint ptr %ht_cap_info33.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %57, ptr %ht_cap_info33.i, align 1
  %vht_cap_info.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 20
  %59 = ptrtoint ptr %vht_cap_info.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vht_cap_info.i, align 8
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #4
  %vht_cap_info34.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 15
  %62 = ptrtoint ptr %vht_cap_info34.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %vht_cap_info34.i, align 1
  %num_rf_chains.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 22
  %63 = ptrtoint ptr %num_rf_chains.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_rf_chains.i, align 64
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #4
  %num_rf_chains35.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 16
  %66 = ptrtoint ptr %num_rf_chains35.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %num_rf_chains35.i, align 1
  %fw_ver.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 17
  %hw.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 1
  %67 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wiphy.i, align 8
  %fw_version.i = getelementptr inbounds %struct.wiphy, ptr %70, i32 0, i32 38
  %call38.i = tail call i32 @strscpy(ptr noundef %fw_ver.i, ptr noundef %fw_version.i, i32 noundef 32) #4
  %kernel_ver_code.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 20
  %71 = ptrtoint ptr %kernel_ver_code.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 0, ptr %kernel_ver_code.i, align 1
  %kernel_ver.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 21
  %call42.i = tail call i32 @strscpy(ptr noundef %kernel_ver.i, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), i32 noundef 64) #4
  %timestamp.i = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %2, i32 0, i32 1
  %72 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %timestamp.i, align 8
  %74 = tail call i64 @llvm.bswap.i64(i64 %73) #4
  %tv_sec43.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 18
  %75 = ptrtoint ptr %tv_sec43.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 8)
  store i64 %74, ptr %tv_sec43.i, align 1
  %tv_nsec.i = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %2, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tv_nsec.i, align 8
  %conv45.i = sext i32 %77 to i64
  %78 = tail call i64 @llvm.bswap.i64(i64 %conv45.i) #4
  %tv_nsec46.i = getelementptr inbounds %struct.ath10k_dump_file_data, ptr %call14.i, i32 0, i32 19
  %79 = ptrtoint ptr %tv_nsec46.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 8)
  store i64 %78, ptr %tv_nsec46.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_coredump_mask to i32))
  %80 = load volatile i32, ptr @ath10k_coredump_mask, align 4
  %and1.i189.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i189.i)
  %tobool48.not.i = icmp eq i32 %and1.i189.i, 0
  br i1 %tobool48.not.i, label %if.end17.i.if.end52.i_crit_edge, label %if.then49.i

if.end17.i.if.end52.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52.i

if.then49.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %call14.i, i32 336
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 0, ptr %add.ptr.i, align 1
  %tlv_len.i = getelementptr i8, ptr %call14.i, i32 340
  %82 = ptrtoint ptr %tlv_len.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 -268435456, ptr %tlv_len.i, align 1
  %tlv_data.i = getelementptr i8, ptr %call14.i, i32 344
  %registers.i = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %2, i32 0, i32 2
  %83 = call ptr @memcpy(ptr %tlv_data.i, ptr %registers.i, i32 240)
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then49.i, %if.end17.i.if.end52.i_crit_edge
  %sofar.0.i = phi i32 [ 584, %if.then49.i ], [ 336, %if.end17.i.if.end52.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_coredump_mask to i32))
  %84 = load volatile i32, ptr @ath10k_coredump_mask, align 4
  %85 = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool54.not.i = icmp eq i32 %85, 0
  br i1 %tobool54.not.i, label %if.end52.i.if.end82.i_crit_edge, label %if.then55.i

if.end52.i.if.end82.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82.i

if.then55.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr56.i = getelementptr i8, ptr %call14.i, i32 %sofar.0.i
  %86 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 16777216, ptr %add.ptr56.i, align 1
  %hw_values58.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %87 = ptrtoint ptr %hw_values58.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw_values58.i, align 4
  %ce_count59.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %ce_count59.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ce_count59.i, align 4
  %conv60.i = zext i8 %90 to i32
  %91 = mul nuw nsw i32 %conv60.i, 20
  %spec.select.i194.i = add nuw nsw i32 %91, 16
  %92 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i194.i) #4
  %tlv_len62.i = getelementptr inbounds %struct.ath10k_tlv_dump_data, ptr %add.ptr56.i, i32 0, i32 1
  %93 = ptrtoint ptr %tlv_len62.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %92, ptr %tlv_len62.i, align 1
  %tlv_data63.i = getelementptr inbounds %struct.ath10k_tlv_dump_data, ptr %add.ptr56.i, i32 0, i32 2
  %94 = ptrtoint ptr %ce_count59.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ce_count59.i, align 4
  %conv67.i = zext i8 %95 to i32
  %96 = shl nuw i32 %conv67.i, 24
  %97 = ptrtoint ptr %tlv_data63.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %tlv_data63.i, align 4
  %reserved.i = getelementptr inbounds %struct.ath10k_ce_crash_hdr, ptr %tlv_data63.i, i32 0, i32 1
  %98 = call ptr @memset(ptr %reserved.i, i32 0, i32 12)
  %entries.i = getelementptr inbounds %struct.ath10k_ce_crash_hdr, ptr %tlv_data63.i, i32 0, i32 2
  %ce_crash_data.i = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %2, i32 0, i32 3
  %99 = load i8, ptr %ce_count59.i, align 4
  %conv74.i = zext i8 %99 to i32
  %mul75.i = mul nuw nsw i32 %conv74.i, 20
  %100 = call ptr @memcpy(ptr %entries.i, ptr %ce_crash_data.i, i32 %mul75.i)
  %101 = load i8, ptr %ce_count59.i, align 4
  %conv78.i = zext i8 %101 to i32
  %mul79.i = mul nuw nsw i32 %conv78.i, 20
  %add80.i = add nuw nsw i32 %sofar.0.i, 24
  %add81.i = add nuw nsw i32 %add80.i, %mul79.i
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then55.i, %if.end52.i.if.end82.i_crit_edge
  %sofar.1.i = phi i32 [ %add81.i, %if.then55.i ], [ %sofar.0.i, %if.end52.i.if.end82.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_coredump_mask to i32))
  %102 = load volatile i32, ptr @ath10k_coredump_mask, align 4
  %103 = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool84.not.i = icmp eq i32 %103, 0
  br i1 %tobool84.not.i, label %if.end82.i.if.end2_crit_edge, label %if.then85.i

if.end82.i.if.end2_crit_edge:                     ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.then85.i:                                      ; preds = %if.end82.i
  %add.ptr86.i = getelementptr i8, ptr %call14.i, i32 %sofar.1.i
  %104 = ptrtoint ptr %add.ptr86.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 33554432, ptr %add.ptr86.i, align 1
  %ramdump_buf_len88.i = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %2, i32 0, i32 5
  %105 = ptrtoint ptr %ramdump_buf_len88.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ramdump_buf_len88.i, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #4
  %tlv_len89.i = getelementptr inbounds %struct.ath10k_tlv_dump_data, ptr %add.ptr86.i, i32 0, i32 1
  %108 = ptrtoint ptr %tlv_len89.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 %107, ptr %tlv_len89.i, align 1
  %109 = ptrtoint ptr %ramdump_buf_len88.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ramdump_buf_len88.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool91.not.i = icmp eq i32 %110, 0
  br i1 %tobool91.not.i, label %if.then85.i.if.end2_crit_edge, label %if.then92.i

if.then85.i.if.end2_crit_edge:                    ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.then92.i:                                      ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #6
  %tlv_data93.i = getelementptr inbounds %struct.ath10k_tlv_dump_data, ptr %add.ptr86.i, i32 0, i32 2
  %ramdump_buf.i = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %2, i32 0, i32 4
  %111 = ptrtoint ptr %ramdump_buf.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ramdump_buf.i, align 8
  %113 = call ptr @memcpy(ptr %tlv_data93.i, ptr %112, i32 %110)
  br label %if.end2

if.then1:                                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end2:                                          ; preds = %if.then92.i, %if.then85.i.if.end2_crit_edge, %if.end82.i.if.end2_crit_edge
  tail call void @mutex_unlock(ptr noundef %dump_mutex.i) #4
  %dev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %114 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev, align 4
  %116 = ptrtoint ptr %len19.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %len19.i, align 1
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  tail call void @dev_coredumpv(ptr noundef %115, ptr noundef nonnull %call14.i, i32 noundef %118, i32 noundef 3264) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -61, %if.then1 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_coredump_create(ptr nocapture noundef writeonly %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_coredump_mask to i32))
  %0 = load i32, ptr @ath10k_coredump_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call noalias ptr @vzalloc(i32 noundef 520) #7
  %coredump = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 118
  %1 = ptrtoint ptr %coredump to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %coredump, align 32
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_coredump_register(ptr nocapture noundef readonly %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %coredump = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 118
  %0 = ptrtoint ptr %coredump to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coredump, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_coredump_mask to i32))
  %2 = load volatile i32, ptr @ath10k_coredump_mask, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_coredump_mask to i32))
  %4 = load volatile i32, ptr @ath10k_coredump_mask, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.then.ath10k_coredump_get_ramdump_size.exit.thread_crit_edge, label %if.end.i.i

if.then.ath10k_coredump_get_ramdump_size.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath10k_coredump_get_ramdump_size.exit.thread

if.end.i.i:                                       ; preds = %if.then
  %target_version.i.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 9
  %6 = ptrtoint ptr %target_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target_version.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %for.cond.preheader.i.i.i, !prof !75

for.cond.preheader.i.i.i:                         ; preds = %if.end.i.i
  %hw_rev.i.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 6
  %hif.i.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34
  br label %for.body.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1461, i32 noundef 9, ptr noundef null) #4
  br label %ath10k_coredump_get_ramdump_size.exit.thread

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i
  %i.044.i.i.i = phi i32 [ 0, %for.cond.preheader.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [14 x %struct.ath10k_hw_mem_layout], ptr @hw_mem_layouts, i32 0, i32 %i.044.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp24.i.i.i = icmp eq i32 %7, %9
  br i1 %cmp24.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %10 = ptrtoint ptr %hw_rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_rev.i.i.i, align 4
  %hw_rev26.i.i.i = getelementptr [14 x %struct.ath10k_hw_mem_layout], ptr @hw_mem_layouts, i32 0, i32 %i.044.i.i.i, i32 1
  %12 = ptrtoint ptr %hw_rev26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_rev26.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp27.i.i.i = icmp eq i32 %11, %13
  br i1 %cmp27.i.i.i, label %land.lhs.true28.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i

land.lhs.true28.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %bus.i.i.i = getelementptr [14 x %struct.ath10k_hw_mem_layout], ptr @hw_mem_layouts, i32 0, i32 %i.044.i.i.i, i32 2
  %14 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bus.i.i.i, align 4
  %16 = ptrtoint ptr %hif.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hif.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp31.i.i.i = icmp eq i32 %15, %17
  br i1 %cmp31.i.i.i, label %ath10k_coredump_get_mem_layout.exit.i, label %land.lhs.true28.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true28.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %land.lhs.true28.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true28.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.044.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 14
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.ath10k_coredump_get_ramdump_size.exit.thread_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

for.inc.i.i.i.ath10k_coredump_get_ramdump_size.exit.thread_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath10k_coredump_get_ramdump_size.exit.thread

ath10k_coredump_get_mem_layout.exit.i:            ; preds = %land.lhs.true28.i.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i, label %ath10k_coredump_get_mem_layout.exit.i.ath10k_coredump_get_ramdump_size.exit.thread_crit_edge, label %for.body.preheader.i

ath10k_coredump_get_mem_layout.exit.i.ath10k_coredump_get_ramdump_size.exit.thread_crit_edge: ; preds = %ath10k_coredump_get_mem_layout.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath10k_coredump_get_ramdump_size.exit.thread

for.body.preheader.i:                             ; preds = %ath10k_coredump_get_mem_layout.exit.i
  %size2.i = getelementptr [14 x %struct.ath10k_hw_mem_layout], ptr @hw_mem_layouts, i32 0, i32 %i.044.i.i.i, i32 3, i32 1
  %18 = ptrtoint ptr %size2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size2.i, align 4
  %region_table.i = getelementptr [14 x %struct.ath10k_hw_mem_layout], ptr @hw_mem_layouts, i32 0, i32 %i.044.i.i.i, i32 3
  %20 = ptrtoint ptr %region_table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %region_table.i, align 4
  %smax.i = tail call i32 @llvm.smax.i32(i32 %19, i32 1) #4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %size.024.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %mem_region.023.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %21, %for.body.preheader.i ]
  %len.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %mem_region.023.i, i32 0, i32 2
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  %add.i = add i32 %23, %size.024.i
  %incdec.ptr.i = getelementptr %struct.ath10k_mem_region, ptr %mem_region.023.i, i32 1
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %smax.i
  br i1 %exitcond.not.i, label %ath10k_coredump_get_ramdump_size.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

ath10k_coredump_get_ramdump_size.exit.thread:     ; preds = %ath10k_coredump_get_mem_layout.exit.i.ath10k_coredump_get_ramdump_size.exit.thread_crit_edge, %for.inc.i.i.i.ath10k_coredump_get_ramdump_size.exit.thread_crit_edge, %do.end.i.i.i, %if.then.ath10k_coredump_get_ramdump_size.exit.thread_crit_edge
  %ramdump_buf_len18 = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %ramdump_buf_len18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ramdump_buf_len18, align 4
  br label %cleanup

ath10k_coredump_get_ramdump_size.exit:            ; preds = %for.body.i
  %mul.i = mul i32 %19, 12
  %phi.bo.i = add i32 %mul.i, 15
  %add6.i = add i32 %phi.bo.i, %add.i
  %and.i = and i32 %add6.i, -16
  %ramdump_buf_len = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %ramdump_buf_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i, ptr %ramdump_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not = icmp eq i32 %and.i, 0
  br i1 %tobool3.not, label %ath10k_coredump_get_ramdump_size.exit.cleanup_crit_edge, label %if.end

ath10k_coredump_get_ramdump_size.exit.cleanup_crit_edge: ; preds = %ath10k_coredump_get_ramdump_size.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %ath10k_coredump_get_ramdump_size.exit
  %call6 = tail call noalias ptr @vzalloc(i32 noundef %and.i) #7
  %ramdump_buf = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %ramdump_buf to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call6, ptr %ramdump_buf, align 8
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %ath10k_coredump_get_ramdump_size.exit.cleanup_crit_edge, %ath10k_coredump_get_ramdump_size.exit.thread
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 0, %ath10k_coredump_get_ramdump_size.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %ath10k_coredump_get_ramdump_size.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_coredump_unregister(ptr nocapture noundef readonly %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %coredump = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 118
  %0 = ptrtoint ptr %coredump to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coredump, align 32
  %ramdump_buf = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ramdump_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ramdump_buf, align 8
  tail call void @vfree(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_coredump_destroy(ptr nocapture noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %coredump = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 118
  %0 = ptrtoint ptr %coredump to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coredump, align 32
  %ramdump_buf = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ramdump_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ramdump_buf, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vfree(ptr noundef nonnull %3) #4
  %4 = ptrtoint ptr %coredump to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %coredump, align 32
  %ramdump_buf6 = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ramdump_buf6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ramdump_buf6, align 8
  %7 = load ptr, ptr %coredump, align 32
  %ramdump_buf_len = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ramdump_buf_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ramdump_buf_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %coredump to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %coredump, align 32
  tail call void @vfree(ptr noundef %10) #4
  %11 = ptrtoint ptr %coredump to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %coredump, align 32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__ksymtab_ath10k_coredump_get_mem_layout, !1, !"__ksymtab_ath10k_coredump_get_mem_layout", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1455, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1461, i32 6}
!4 = !{ptr @__ksymtab_ath10k_coredump_new, !5, !"__ksymtab_ath10k_coredump_new", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1489, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1606, i32 19}
!8 = !{ptr @hw_mem_layouts, !9, !"hw_mem_layouts", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1291, i32 42}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 805, i32 11}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 820, i32 11}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 835, i32 11}
!16 = !{ptr @qca6174_hw10_mem_regions, !17, !"qca6174_hw10_mem_regions", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 800, i32 39}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 858, i32 11}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 868, i32 11}
!22 = !{ptr @qca6174_hw21_mem_regions, !23, !"qca6174_hw21_mem_regions", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 843, i32 39}
!24 = !{ptr @qca6174_hw21_register_sections, !25, !"qca6174_hw21_register_sections", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 17, i32 40}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 966, i32 11}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 976, i32 11}
!30 = !{ptr @qca6174_hw30_mem_regions, !31, !"qca6174_hw30_mem_regions", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 929, i32 39}
!32 = !{ptr @qca6174_hw30_register_sections, !33, !"qca6174_hw30_register_sections", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 544, i32 40}
!34 = !{ptr @qca6174_hw30_sdio_mem_regions, !35, !"qca6174_hw30_sdio_mem_regions", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 876, i32 39}
!36 = !{ptr @qca6174_hw30_sdio_register_sections, !37, !"qca6174_hw30_sdio_register_sections", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 273, i32 40}
!38 = !{ptr @qca988x_hw20_mem_regions, !39, !"qca988x_hw20_mem_regions", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 984, i32 39}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1115, i32 11}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1125, i32 11}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1135, i32 11}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1145, i32 11}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1155, i32 11}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1165, i32 11}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1175, i32 11}
!54 = !{ptr @qca9984_hw10_mem_regions, !55, !"qca9984_hw10_mem_regions", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1100, i32 39}
!56 = !{ptr @qca99x0_hw20_mem_regions, !57, !"qca99x0_hw20_mem_regions", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1017, i32 39}
!58 = !{ptr @qca4019_hw10_mem_regions, !59, !"qca4019_hw10_mem_regions", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1195, i32 39}
!60 = !{ptr @ipq4019_soc_reg_range, !61, !"ipq4019_soc_reg_range", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1183, i32 40}
!62 = !{ptr @wcn399x_hw10_mem_regions, !63, !"wcn399x_hw10_mem_regions", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1278, i32 39}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath10k/coredump.c", i32 1525, i32 31}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"branch_weights", i32 1, i32 2000}
