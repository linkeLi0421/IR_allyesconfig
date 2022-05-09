; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/bmi.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/bmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath10k_bmi_start\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_bmi_start\09\09\09\09"
module asm "\09.long\09__crc_ath10k_bmi_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_bmi_start:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_bmi_start\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_bmi_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath10k_bmi_read_memory\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_bmi_read_memory\09\09\09\09"
module asm "\09.long\09__crc_ath10k_bmi_read_memory\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_bmi_read_memory:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_bmi_read_memory\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_bmi_read_memory:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.140, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.186, i32, i32, i32, %struct.anon.187, %struct.anon.188, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.193, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.197, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
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
%struct.anon.193 = type { ptr, i32, %struct.ath10k_spec_scan }
%struct.ath10k_spec_scan = type { i8, i8 }
%struct.anon.194 = type { ptr }
%struct.anon.195 = type { %struct.ath10k_fw_components, i8 }
%struct.anon.196 = type { i32, i32, i32, i32 }
%struct.ath10k_thermal = type { ptr, %struct.completion, i32, i32, i32 }
%struct.ath10k_wow = type { i32, %struct.completion, %struct.wiphy_wowlan_support }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ath10k_per_peer_tx_stats = type { i32, i32, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
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
%struct.bmi_cmd = type { i32, %union.anon.198 }
%union.anon.198 = type { %struct.anon.207, [252 x i8] }
%struct.anon.207 = type { i32, i32, i32, i32 }
%struct.ath10k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.bmi_resp = type { %struct.anon.219, [256 x i8] }
%struct.anon.219 = type { i32, i32, i32 }
%struct.bmi_target_info = type { i32, i32 }
%struct.anon.215 = type { %struct.anon.216, [0 x i8] }
%struct.anon.216 = type {}

@ath10k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bmi start\0A\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_ath10k_bmi_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_bmi_start = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_bmi_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_bmi_start to i32), ptr @__kstrtab_ath10k_bmi_start, ptr @__kstrtabns_ath10k_bmi_start }, section "___ksymtab+ath10k_bmi_start", align 4
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bmi done\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bmi skipped\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to write to the device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bmi get target info\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"BMI Get Target Info Command disallowed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to get target info from device\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid get_target_info response length (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bmi get target info SDIO\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to read from device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unexpected target info len: %u. Expected: %zu\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bmi read address 0x%x length %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"command disallowed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to read from the device (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@__kstrtab_ath10k_bmi_read_memory = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_bmi_read_memory = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_bmi_read_memory = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_bmi_read_memory to i32), ptr @__kstrtab_ath10k_bmi_read_memory, ptr @__kstrtabns_ath10k_bmi_read_memory }, section "___ksymtab+ath10k_bmi_read_memory", align 4
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bmi write soc register 0x%08x val 0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bmi write soc register command in progress\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to write soc register to device: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bmi read soc register 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bmi read soc register command in progress\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to read soc register from device: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bmi read soc register value 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bmi write address 0x%x length %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to write to the device (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bmi execute address 0x%x param 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to read from the device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid execute response length (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bmi execute result 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bmi lz data buffer 0x%pK length %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ath10k_bmi_lz_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath10k/bmi.c\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to write to the device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bmi lz stream start address 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to Start LZ Stream to the device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"bmi fast download address 0x%x buffer 0x%pK length %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bmi set start command disallowed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to set start to the device:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_log_dbg = external dso_local global %struct.tracepoint, align 4
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"large bmi lz data buffer 0x%pK length %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ath10k_bmi_lz_data_large.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 15, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 27, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 30, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 39, i32 19 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 55, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 58, i32 19 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 66, i32 19 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 71, i32 19 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 94, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 110, i32 19 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 132, i32 19 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 162, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 166, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 180, i32 20 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 201, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 206, i32 19 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 216, i32 19 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 232, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 236, i32 19 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 245, i32 19 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 252, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 266, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 288, i32 20 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 312, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 326, i32 19 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 331, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 338, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 397, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 408, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 417, i32 20 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 434, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 447, i32 19 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 462, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 504, i32 19 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 513, i32 19 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath10k/bmi.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 351, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__ksymtab_ath10k_bmi_read_memory, ptr @__ksymtab_ath10k_bmi_start, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_bmi_start(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_start, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %bmi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 40
  %1 = ptrtoint ptr %bmi to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bmi, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_bmi_done(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.bmi_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 268)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_done, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.1) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %bmi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 40
  %3 = ptrtoint ptr %bmi to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bmi, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end12, label %do.body3

do.body3:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %5 = load i32, ptr @ath10k_debug_mask, align 4
  %and4 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %do.body3.if.then8_crit_edge

do.body3.if.then8_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

lor.lhs.false6:                                   ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_done, %if.then8)) #5
          to label %cleanup [label %if.then8], !srcloc !88

if.then8:                                         ; preds = %lor.lhs.false6, %do.body3.if.then8_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %6 = ptrtoint ptr %bmi to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bmi, align 8
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16777216, ptr %cmd, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %exchange_bmi_msg.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %exchange_bmi_msg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %exchange_bmi_msg.i, align 4
  %call.i = call i32 %11(ptr noundef %ar, ptr noundef nonnull %cmd, i32 noundef 4, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end12.cleanup_crit_edge, label %if.then17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.3, i32 noundef %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end12.cleanup_crit_edge, %if.then8, %lor.lhs.false6
  %retval.0 = phi i32 [ %call.i, %if.then17 ], [ 0, %if.then8 ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %lor.lhs.false6 ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_bmi_get_target_info(ptr noundef %ar, ptr nocapture noundef writeonly %target_info) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.bmi_cmd, align 4
  %resp = alloca %union.bmi_resp, align 1
  %resplen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 268)
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %resp) #5
  %2 = call ptr @memset(ptr %resp, i32 255, i32 268)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resplen) #5
  %3 = ptrtoint ptr %resplen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12, ptr %resplen, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_get_target_info, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.4) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %bmi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 40
  %5 = ptrtoint ptr %bmi to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bmi, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.5) #5
  br label %cleanup

if.end3:                                          ; preds = %do.end
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 134217728, ptr %cmd, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %exchange_bmi_msg.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %exchange_bmi_msg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %exchange_bmi_msg.i, align 4
  %call.i = call i32 %11(ptr noundef %ar, ptr noundef nonnull %cmd, i32 noundef 4, ptr noundef nonnull %resp, ptr noundef nonnull %resplen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.6) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %12 = ptrtoint ptr %resplen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resplen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %13)
  %cmp = icmp ult i32 %13, 12
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.7, i32 noundef %13) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %version = getelementptr inbounds %struct.anon.219, ptr %resp, i32 0, i32 1
  %14 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %version, align 1
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %target_info to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %target_info, align 4
  %type = getelementptr inbounds %struct.anon.219, ptr %resp, i32 0, i32 2
  %18 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %type, align 1
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %type11 = getelementptr inbounds %struct.bmi_target_info, ptr %target_info, i32 0, i32 1
  %21 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %type11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then6, %if.then2
  %retval.0 = phi i32 [ -16, %if.then2 ], [ %call.i, %if.then6 ], [ -5, %if.then8 ], [ 0, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resplen) #5
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %resp) #5
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_bmi_get_target_info_sdio(ptr noundef %ar, ptr nocapture noundef writeonly %target_info) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.bmi_cmd, align 4
  %resp = alloca %union.bmi_resp, align 1
  %resplen = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 268)
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %resp) #5
  %2 = call ptr @memset(ptr %resp, i32 255, i32 268)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resplen) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp, align 4, !annotation !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_get_target_info_sdio, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.8) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %bmi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 40
  %5 = ptrtoint ptr %bmi to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bmi, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.5) #5
  br label %cleanup

if.end3:                                          ; preds = %do.end
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 134217728, ptr %cmd, align 4
  %8 = ptrtoint ptr %resplen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %resplen, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %exchange_bmi_msg.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %exchange_bmi_msg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %exchange_bmi_msg.i, align 4
  %call.i = call i32 %12(ptr noundef %ar, ptr noundef nonnull %cmd, i32 noundef 4, ptr noundef nonnull %tmp, ptr noundef nonnull %resplen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.9) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp = icmp eq i32 %14, -1
  br i1 %cmp, label %if.then8, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then8:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %resplen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %resplen, align 4
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %exchange_bmi_msg.i47 = getelementptr inbounds %struct.ath10k_hif_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %exchange_bmi_msg.i47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %exchange_bmi_msg.i47, align 4
  %call.i48 = call i32 %19(ptr noundef %ar, ptr noundef null, i32 noundef 0, ptr noundef nonnull %tmp, ptr noundef nonnull %resplen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool10.not = icmp eq i32 %call.i48, 0
  br i1 %tobool10.not, label %if.end13thread-pre-split, label %if.then11

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.9) #5
  br label %cleanup

if.end13thread-pre-split:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %tmp, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13thread-pre-split, %if.end7.if.end13_crit_edge
  %21 = phi i32 [ %.pr, %if.end13thread-pre-split ], [ %14, %if.end7.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %21)
  %cmp14.not = icmp eq i32 %21, 201326592
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.10, i32 noundef %22, i32 noundef 12) #5
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %23 = ptrtoint ptr %resplen to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %resplen, align 4
  %version = getelementptr inbounds %struct.anon.219, ptr %resp, i32 0, i32 1
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %exchange_bmi_msg.i50 = getelementptr inbounds %struct.ath10k_hif_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %exchange_bmi_msg.i50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %exchange_bmi_msg.i50, align 4
  %call.i51 = call i32 %27(ptr noundef %ar, ptr noundef null, i32 noundef 0, ptr noundef %version, ptr noundef nonnull %resplen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool18.not = icmp eq i32 %call.i51, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.9) #5
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %version, align 1
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %target_info to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %target_info, align 4
  %type = getelementptr inbounds %struct.anon.219, ptr %resp, i32 0, i32 2
  %32 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %type, align 1
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %type23 = getelementptr inbounds %struct.bmi_target_info, ptr %target_info, i32 0, i32 1
  %35 = ptrtoint ptr %type23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %type23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then15, %if.then11, %if.then6, %if.then2
  %retval.0 = phi i32 [ -16, %if.then2 ], [ %call.i, %if.then6 ], [ %call.i48, %if.then11 ], [ -22, %if.then15 ], [ %call.i51, %if.then19 ], [ 0, %if.end20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resplen) #5
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %resp) #5
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_bmi_read_memory(ptr noundef %ar, i32 noundef %address, ptr nocapture noundef writeonly %buffer, i32 noundef %length) #0 align 64 {
entry:
  %cmd = alloca %struct.bmi_cmd, align 4
  %resp = alloca %union.bmi_resp, align 1
  %rxlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 260)
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %resp) #5
  %2 = call ptr @memset(ptr %resp, i32 255, i32 268)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rxlen) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %3 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_read_memory, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.11, i32 noundef %address, i32 noundef %length) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %bmi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 40
  %4 = ptrtoint ptr %bmi to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bmi, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %while.cond.preheader, label %if.then2

while.cond.preheader:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool4.not28 = icmp eq i32 %length, 0
  br i1 %tobool4.not28, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %6 = getelementptr inbounds %struct.bmi_cmd, ptr %cmd, i32 0, i32 1
  %len = getelementptr inbounds %struct.bmi_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  %payload = getelementptr inbounds %struct.anon.215, ptr %resp, i32 0, i32 1
  br label %while.body

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.12) #5
  br label %cleanup

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %while.body.lr.ph
  %length.addr.031 = phi i32 [ %length, %while.body.lr.ph ], [ %sub, %if.end8.while.body_crit_edge ]
  %buffer.addr.030 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr, %if.end8.while.body_crit_edge ]
  %address.addr.029 = phi i32 [ %address, %while.body.lr.ph ], [ %add, %if.end8.while.body_crit_edge ]
  %7 = call i32 @llvm.umin.i32(i32 %length.addr.031, i32 256)
  %8 = ptrtoint ptr %rxlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rxlen, align 4
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 33554432, ptr %cmd, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %address.addr.029)
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %6, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %7)
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %len, align 4
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %exchange_bmi_msg.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %exchange_bmi_msg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %exchange_bmi_msg.i, align 4
  %call.i = call i32 %17(ptr noundef %ar, ptr noundef nonnull %cmd, i32 noundef 12, ptr noundef nonnull %resp, ptr noundef nonnull %rxlen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.13, i32 noundef %call.i) #5
  br label %cleanup

if.end8:                                          ; preds = %while.body
  %18 = ptrtoint ptr %rxlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rxlen, align 4
  %20 = call ptr @memcpy(ptr %buffer.addr.030, ptr %payload, i32 %19)
  %add = add i32 %19, %address.addr.029
  %add.ptr = getelementptr i8, ptr %buffer.addr.030, i32 %19
  %sub = sub i32 %length.addr.031, %19
  %tobool4.not = icmp eq i32 %sub, 0
  br i1 %tobool4.not, label %if.end8.cleanup_crit_edge, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %if.then7, %if.then2, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then2 ], [ %call.i, %if.then7 ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxlen) #5
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %resp) #5
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_bmi_write_soc_reg(ptr noundef %ar, i32 noundef %address, i32 noundef %reg_val) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.bmi_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 260)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_write_soc_reg, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.14, i32 noundef %address, i32 noundef %reg_val) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %bmi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 40
  %3 = ptrtoint ptr %bmi to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bmi, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.15) #5
  br label %cleanup

if.end3:                                          ; preds = %do.end
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 117440512, ptr %cmd, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %address)
  %7 = getelementptr inbounds %struct.bmi_cmd, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %7, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %reg_val)
  %value = getelementptr inbounds %struct.bmi_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %exchange_bmi_msg.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %exchange_bmi_msg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %exchange_bmi_msg.i, align 4
  %call.i = call i32 %14(ptr noundef %ar, ptr noundef nonnull %cmd, i32 noundef 12, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.then6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.16, i32 noundef %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end3.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ -16, %if.then2 ], [ %call.i, %if.then6 ], [ 0, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_bmi_read_soc_reg(ptr noundef %ar, i32 noundef %address, ptr nocapture noundef %reg_val) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.bmi_cmd, align 4
  %resp = alloca %union.bmi_resp, align 4
  %resplen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 264)
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %resp) #5
  %2 = call ptr @memset(ptr %resp, i32 255, i32 268)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resplen) #5
  %3 = ptrtoint ptr %resplen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %resplen, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_read_soc_reg, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.17, i32 noundef %address) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %bmi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 40
  %5 = ptrtoint ptr %bmi to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bmi, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.18) #5
  br label %cleanup

if.end3:                                          ; preds = %do.end
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 100663296, ptr %cmd, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %address)
  %9 = getelementptr inbounds %struct.bmi_cmd, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %9, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %exchange_bmi_msg.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %exchange_bmi_msg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %exchange_bmi_msg.i, align 4
  %call.i = call i32 %14(ptr noundef %ar, ptr noundef nonnull %cmd, i32 noundef 8, ptr noundef nonnull %resp, ptr noundef nonnull %resplen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.19, i32 noundef %call.i) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %15 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resp, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %reg_val, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %19 = load i32, ptr @ath10k_debug_mask, align 4
  %and9 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %if.end7.if.then13_crit_edge

if.end7.if.then13_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

lor.lhs.false11:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_read_soc_reg, %if.then13)) #5
          to label %cleanup [label %if.then13], !srcloc !88

if.then13:                                        ; preds = %lor.lhs.false11, %if.end7.if.then13_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_val, align 4
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.20, i32 noundef %21) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %lor.lhs.false11, %if.then6, %if.then2
  %retval.0 = phi i32 [ -16, %if.then2 ], [ %call.i, %if.then6 ], [ 0, %if.then13 ], [ 0, %lor.lhs.false11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resplen) #5
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %resp) #5
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_bmi_write_memory(ptr noundef %ar, i32 noundef %address, ptr nocapture noundef readonly %buffer, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.bmi_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 260)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_write_memory, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.21, i32 noundef %address, i32 noundef %length) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %bmi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 40
  %3 = ptrtoint ptr %bmi to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bmi, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %while.cond.preheader, label %if.then2

while.cond.preheader:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool4.not52 = icmp eq i32 %length, 0
  br i1 %tobool4.not52, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %5 = getelementptr inbounds %struct.bmi_cmd, ptr %cmd, i32 0, i32 1
  %payload = getelementptr inbounds %struct.bmi_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 2
  %len = getelementptr inbounds %struct.bmi_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  br label %while.body

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.12) #5
  br label %cleanup

while.body:                                       ; preds = %if.end11.while.body_crit_edge, %while.body.lr.ph
  %address.addr.055 = phi i32 [ %address, %while.body.lr.ph ], [ %add18, %if.end11.while.body_crit_edge ]
  %buffer.addr.054 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr, %if.end11.while.body_crit_edge ]
  %length.addr.053 = phi i32 [ %length, %while.body.lr.ph ], [ %sub19, %if.end11.while.body_crit_edge ]
  %6 = call i32 @llvm.umin.i32(i32 %length.addr.053, i32 244)
  %7 = call ptr @memcpy(ptr %payload, ptr %buffer.addr.054, i32 %6)
  %add = add nuw nsw i32 %6, 3
  %div50 = and i32 %add, 508
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 50331648, ptr %cmd, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %address.addr.055)
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %5, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %div50)
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %len, align 4
  %add7 = add nuw nsw i32 %div50, 12
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %exchange_bmi_msg.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %exchange_bmi_msg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %exchange_bmi_msg.i, align 4
  %call.i = call i32 %16(ptr noundef %ar, ptr noundef nonnull %cmd, i32 noundef %add7, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.22, i32 noundef %call.i) #5
  br label %cleanup

if.end11:                                         ; preds = %while.body
  %17 = call i32 @llvm.umin.i32(i32 %div50, i32 %length.addr.053)
  %add18 = add i32 %17, %address.addr.055
  %add.ptr = getelementptr i8, ptr %buffer.addr.054, i32 %17
  %sub19 = sub i32 %length.addr.053, %17
  %tobool4.not = icmp eq i32 %sub19, 0
  br i1 %tobool4.not, label %if.end11.cleanup_crit_edge, label %if.end11.while.body_crit_edge

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %if.then10, %if.then2, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then2 ], [ %call.i, %if.then10 ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_bmi_execute(ptr noundef %ar, i32 noundef %address, i32 noundef %param, ptr nocapture noundef %result) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.bmi_cmd, align 4
  %resp = alloca %union.bmi_resp, align 4
  %resplen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 260)
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %resp) #5
  %2 = call ptr @memset(ptr %resp, i32 255, i32 268)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resplen) #5
  %3 = ptrtoint ptr %resplen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %resplen, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_execute, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.23, i32 noundef %address, i32 noundef %param) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %bmi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 40
  %5 = ptrtoint ptr %bmi to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bmi, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.12) #5
  br label %cleanup

if.end3:                                          ; preds = %do.end
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 67108864, ptr %cmd, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %address)
  %9 = getelementptr inbounds %struct.bmi_cmd, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %9, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %param)
  %param4 = getelementptr inbounds %struct.bmi_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %param4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %param4, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %exchange_bmi_msg.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %exchange_bmi_msg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %exchange_bmi_msg.i, align 4
  %call.i = call i32 %16(ptr noundef %ar, ptr noundef nonnull %cmd, i32 noundef 12, ptr noundef nonnull %resp, ptr noundef nonnull %resplen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.24) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %17 = ptrtoint ptr %resplen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resplen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp = icmp ult i32 %18, 4
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.25, i32 noundef %18) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %19 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resp, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %result, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %23 = load i32, ptr @ath10k_debug_mask, align 4
  %and13 = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %if.end10.if.then17_crit_edge

if.end10.if.then17_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false15:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_execute, %if.then17)) #5
          to label %cleanup [label %if.then17], !srcloc !88

if.then17:                                        ; preds = %lor.lhs.false15, %if.end10.if.then17_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %result, align 4
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.26, i32 noundef %25) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %lor.lhs.false15, %if.then9, %if.then7, %if.then2
  %retval.0 = phi i32 [ -16, %if.then2 ], [ %call.i, %if.then7 ], [ -5, %if.then9 ], [ 0, %if.then17 ], [ 0, %lor.lhs.false15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resplen) #5
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %resp) #5
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_bmi_lz_data(ptr noundef %ar, ptr noundef %buffer, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.bmi_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %cmd) #5
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 272)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %1 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_lz_data, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.27, ptr noundef %buffer, i32 noundef %length) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %bmi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 40
  %2 = ptrtoint ptr %bmi to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bmi, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %while.cond.preheader, label %if.then2

while.cond.preheader:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool4.not78 = icmp eq i32 %length, 0
  br i1 %tobool4.not78, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %4 = getelementptr inbounds %struct.bmi_cmd, ptr %cmd, i32 0, i32 1
  %payload = getelementptr inbounds %struct.bmi_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  br label %while.body

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.12) #5
  br label %cleanup

while.body:                                       ; preds = %if.end51.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.080 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr, %if.end51.while.body_crit_edge ]
  %length.addr.079 = phi i32 [ %length, %while.body.lr.ph ], [ %sub52, %if.end51.while.body_crit_edge ]
  %5 = call i32 @llvm.umin.i32(i32 %length.addr.079, i32 248)
  %and5 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %while.body.if.end40_crit_edge, label %land.rhs

while.body.if.end40_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

land.rhs:                                         ; preds = %while.body
  %.b76 = load i1, ptr @ath10k_bmi_lz_data.__already_done, align 1
  br i1 %.b76, label %land.rhs.if.end40_crit_edge, label %if.then14, !prof !91

land.rhs.if.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ath10k_bmi_lz_data.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 408, i32 noundef 9, ptr noundef null) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then14, %land.rhs.if.end40_crit_edge, %while.body.if.end40_crit_edge
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 234881024, ptr %cmd, align 4
  %7 = shl nuw i32 %5, 24
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %4, align 4
  %9 = call ptr @memcpy(ptr %payload, ptr %buffer.addr.080, i32 %5)
  %add = add nuw nsw i32 %5, 8
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %exchange_bmi_msg.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %exchange_bmi_msg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exchange_bmi_msg.i, align 4
  %call.i = call i32 %13(ptr noundef %ar, ptr noundef nonnull %cmd, i32 noundef %add, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool49.not = icmp eq i32 %call.i, 0
  br i1 %tobool49.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.29) #5
  br label %cleanup

if.end51:                                         ; preds = %if.end40
  %add.ptr = getelementptr i8, ptr %buffer.addr.080, i32 %5
  %sub52 = sub i32 %length.addr.079, %5
  %tobool4.not = icmp eq i32 %sub52, 0
  br i1 %tobool4.not, label %if.end51.cleanup_crit_edge, label %if.end51.while.body_crit_edge

if.end51.while.body_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end51.cleanup_crit_edge, %if.then50, %if.then2, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then2 ], [ %call.i, %if.then50 ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_bmi_lz_stream_start(ptr noundef %ar, i32 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.bmi_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 264)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_lz_stream_start, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.30, i32 noundef %address) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %bmi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 40
  %3 = ptrtoint ptr %bmi to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bmi, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.12) #5
  br label %cleanup

if.end3:                                          ; preds = %do.end
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 218103808, ptr %cmd, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %address)
  %7 = getelementptr inbounds %struct.bmi_cmd, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %7, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %exchange_bmi_msg.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %exchange_bmi_msg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %exchange_bmi_msg.i, align 4
  %call.i = call i32 %12(ptr noundef %ar, ptr noundef nonnull %cmd, i32 noundef 8, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.then6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.31) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end3.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ -16, %if.then2 ], [ %call.i, %if.then6 ], [ 0, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_bmi_fast_download(ptr noundef %ar, i32 noundef %address, ptr noundef %buffer, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i52 = alloca %struct.bmi_cmd, align 4
  %cmd.i = alloca %struct.bmi_cmd, align 4
  %trailer = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trailer) #5
  %0 = ptrtoint ptr %trailer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %trailer, align 4
  %rem = and i32 %length, 3
  %sub = and i32 %length, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %1 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_fast_download, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.32, i32 noundef %address, ptr noundef %buffer, i32 noundef %length) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %cmd.i) #5
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 264)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %do.end.if.then.i_crit_edge

do.end.if.then.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_fast_download, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !88

if.then.i:                                        ; preds = %lor.lhs.false.i, %do.end.if.then.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.30, i32 noundef %address) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i
  %bmi.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 40
  %5 = ptrtoint ptr %bmi.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bmi.i, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.12) #5
  br label %ath10k_bmi_lz_stream_start.exit.thread

if.end3.i:                                        ; preds = %do.end.i
  %7 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 218103808, ptr %cmd.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %address) #5
  %9 = getelementptr inbounds %struct.bmi_cmd, ptr %cmd.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %9, align 4
  %ops.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i, align 4
  %exchange_bmi_msg.i.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %exchange_bmi_msg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %exchange_bmi_msg.i.i, align 4
  %call.i.i = call i32 %14(ptr noundef %ar, ptr noundef nonnull %cmd.i, i32 noundef 8, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %if.end5, label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.31) #5
  br label %ath10k_bmi_lz_stream_start.exit.thread

ath10k_bmi_lz_stream_start.exit.thread:           ; preds = %if.then6.i, %if.then2.i
  %retval.0.i.ph = phi i32 [ %call.i.i, %if.then6.i ], [ -16, %if.then2.i ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %cmd.i) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end3.i
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %cmd.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end5.if.end7_crit_edge, label %if.then6

if.end5.if.end7_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %buffer, i32 %sub
  %15 = call ptr @memcpy(ptr %trailer, ptr %add.ptr, i32 %rem)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end5.if.end7_crit_edge
  %bmi_large_size_download = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 45, i32 36
  %16 = ptrtoint ptr %bmi_large_size_download to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bmi_large_size_download, align 2, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = call fastcc i32 @ath10k_bmi_lz_data_large(ptr noundef %ar, ptr noundef %buffer, i32 noundef %sub)
  br label %if.end12

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = call i32 @ath10k_bmi_lz_data(ptr noundef %ar, ptr noundef %buffer, i32 noundef %sub)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %ret.0 = phi i32 [ %call10, %if.then9 ], [ %call11, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool13.not = icmp eq i32 %ret.0, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  br i1 %cmp.not, label %if.end15.if.end23_crit_edge, label %if.end20

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.end20:                                         ; preds = %if.end15
  %call19 = call i32 @ath10k_bmi_lz_data(ptr noundef %ar, ptr noundef nonnull %trailer, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp21.not = icmp eq i32 %call19, 0
  br i1 %cmp21.not, label %if.end20.if.end23_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.end23:                                         ; preds = %if.end20.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %cmd.i52) #5
  %18 = getelementptr inbounds i8, ptr %cmd.i52, i32 8
  %19 = call ptr @memset(ptr %18, i32 255, i32 264)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %20 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i53 = and i32 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool.not.i54 = icmp eq i32 %and.i53, 0
  br i1 %tobool.not.i54, label %lor.lhs.false.i55, label %if.end23.if.then.i56_crit_edge

if.end23.if.then.i56_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i56

lor.lhs.false.i55:                                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_fast_download, %if.then.i56)) #5
          to label %do.end.i59 [label %if.then.i56], !srcloc !88

if.then.i56:                                      ; preds = %lor.lhs.false.i55, %if.end23.if.then.i56_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.30, i32 noundef 0) #5
  br label %do.end.i59

do.end.i59:                                       ; preds = %if.then.i56, %lor.lhs.false.i55
  %21 = ptrtoint ptr %bmi.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bmi.i, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool1.not.i58 = icmp eq i8 %22, 0
  br i1 %tobool1.not.i58, label %if.end3.i65, label %do.end.i59.ath10k_bmi_lz_stream_start.exit68.sink.split_crit_edge

do.end.i59.ath10k_bmi_lz_stream_start.exit68.sink.split_crit_edge: ; preds = %do.end.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath10k_bmi_lz_stream_start.exit68.sink.split

if.end3.i65:                                      ; preds = %do.end.i59
  %23 = ptrtoint ptr %cmd.i52 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 218103808, ptr %cmd.i52, align 4
  %24 = getelementptr inbounds %struct.bmi_cmd, ptr %cmd.i52, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %24, align 4
  %26 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i, align 4
  %exchange_bmi_msg.i.i62 = getelementptr inbounds %struct.ath10k_hif_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %exchange_bmi_msg.i.i62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %exchange_bmi_msg.i.i62, align 4
  %call.i.i63 = call i32 %29(ptr noundef %ar, ptr noundef nonnull %cmd.i52, i32 noundef 8, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63)
  %tobool5.not.i64 = icmp eq i32 %call.i.i63, 0
  br i1 %tobool5.not.i64, label %if.end3.i65.ath10k_bmi_lz_stream_start.exit68_crit_edge, label %if.end3.i65.ath10k_bmi_lz_stream_start.exit68.sink.split_crit_edge

if.end3.i65.ath10k_bmi_lz_stream_start.exit68.sink.split_crit_edge: ; preds = %if.end3.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath10k_bmi_lz_stream_start.exit68.sink.split

if.end3.i65.ath10k_bmi_lz_stream_start.exit68_crit_edge: ; preds = %if.end3.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath10k_bmi_lz_stream_start.exit68

ath10k_bmi_lz_stream_start.exit68.sink.split:     ; preds = %if.end3.i65.ath10k_bmi_lz_stream_start.exit68.sink.split_crit_edge, %do.end.i59.ath10k_bmi_lz_stream_start.exit68.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str.12, %do.end.i59.ath10k_bmi_lz_stream_start.exit68.sink.split_crit_edge ], [ @.str.31, %if.end3.i65.ath10k_bmi_lz_stream_start.exit68.sink.split_crit_edge ]
  %retval.0.i67.ph = phi i32 [ -16, %do.end.i59.ath10k_bmi_lz_stream_start.exit68.sink.split_crit_edge ], [ %call.i.i63, %if.end3.i65.ath10k_bmi_lz_stream_start.exit68.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull %.str.12.sink) #5
  br label %ath10k_bmi_lz_stream_start.exit68

ath10k_bmi_lz_stream_start.exit68:                ; preds = %ath10k_bmi_lz_stream_start.exit68.sink.split, %if.end3.i65.ath10k_bmi_lz_stream_start.exit68_crit_edge
  %retval.0.i67 = phi i32 [ 0, %if.end3.i65.ath10k_bmi_lz_stream_start.exit68_crit_edge ], [ %retval.0.i67.ph, %ath10k_bmi_lz_stream_start.exit68.sink.split ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %cmd.i52) #5
  br label %cleanup

cleanup:                                          ; preds = %ath10k_bmi_lz_stream_start.exit68, %if.end20.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %ath10k_bmi_lz_stream_start.exit.thread
  %retval.0 = phi i32 [ %retval.0.i67, %ath10k_bmi_lz_stream_start.exit68 ], [ %ret.0, %if.end12.cleanup_crit_edge ], [ %call19, %if.end20.cleanup_crit_edge ], [ %retval.0.i.ph, %ath10k_bmi_lz_stream_start.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trailer) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_bmi_lz_data_large(ptr noundef %ar, ptr noundef %buffer, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_bmi_lz_data_large, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1024, ptr noundef nonnull @.str.35, ptr noundef %buffer, i32 noundef %length) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %bmi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 40
  %1 = ptrtoint ptr %bmi to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bmi, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.12) #5
  br label %cleanup

if.end3:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 2064) #8
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %while.cond.preheader

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool8.not89 = icmp eq i32 %length, 0
  br i1 %tobool8.not89, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %4 = getelementptr inbounds %struct.bmi_cmd, ptr %call7.i.i, i32 0, i32 1
  %payload = getelementptr inbounds %struct.bmi_cmd, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end55.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.091 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr, %if.end55.while.body_crit_edge ]
  %length.addr.090 = phi i32 [ %length, %while.body.lr.ph ], [ %sub56, %if.end55.while.body_crit_edge ]
  %5 = tail call i32 @llvm.umin.i32(i32 %length.addr.090, i32 2040)
  %and9 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %while.body.if.end44_crit_edge, label %land.rhs

while.body.if.end44_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

land.rhs:                                         ; preds = %while.body
  %.b87 = load i1, ptr @ath10k_bmi_lz_data_large.__already_done, align 1
  br i1 %.b87, label %land.rhs.if.end44_crit_edge, label %if.then18, !prof !91

land.rhs.if.end44_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then18:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ath10k_bmi_lz_data_large.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 367, i32 noundef 9, ptr noundef null) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then18, %land.rhs.if.end44_crit_edge, %while.body.if.end44_crit_edge
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 234881024, ptr %call7.i.i, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %5)
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %4, align 4
  %9 = call ptr @memcpy(ptr %payload, ptr %buffer.addr.091, i32 %5)
  %add = add nuw nsw i32 %5, 8
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %exchange_bmi_msg.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %exchange_bmi_msg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exchange_bmi_msg.i, align 4
  %call.i = tail call i32 %13(ptr noundef %ar, ptr noundef nonnull %call7.i.i, i32 noundef %add, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool53.not = icmp eq i32 %call.i, 0
  br i1 %tobool53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.29) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end55:                                         ; preds = %if.end44
  %add.ptr = getelementptr i8, ptr %buffer.addr.091, i32 %5
  %sub56 = sub i32 %length.addr.090, %5
  %tobool8.not = icmp eq i32 %sub56, 0
  br i1 %tobool8.not, label %if.end55.while.end_crit_edge, label %if.end55.while.body_crit_edge

if.end55.while.body_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end55.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then54, %if.end3.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ -16, %if.then2 ], [ %call.i, %if.then54 ], [ 0, %while.end ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_bmi_set_start(ptr noundef %ar, i32 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.bmi_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 264)
  %bmi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 40
  %2 = ptrtoint ptr %bmi to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bmi, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.33) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 83886080, ptr %cmd, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %address)
  %6 = getelementptr inbounds %struct.bmi_cmd, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %6, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %exchange_bmi_msg.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %exchange_bmi_msg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %exchange_bmi_msg.i, align 4
  %call.i = call i32 %11(ptr noundef %ar, ptr noundef nonnull %cmd, i32 noundef 8, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.34, i32 noundef %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ %call.i, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 15, i32 2}
!2 = !{ptr @__ksymtab_ath10k_bmi_start, !3, !"__ksymtab_ath10k_bmi_start", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 19, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 27, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 30, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 39, i32 19}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 55, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 58, i32 19}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 66, i32 19}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 71, i32 19}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 94, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 110, i32 19}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 132, i32 19}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 162, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 166, i32 19}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 180, i32 20}
!30 = !{ptr @__ksymtab_ath10k_bmi_read_memory, !31, !"__ksymtab_ath10k_bmi_read_memory", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 193, i32 1}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 201, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 206, i32 19}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 216, i32 19}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 232, i32 2}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 236, i32 19}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 245, i32 19}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 252, i32 2}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 266, i32 2}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 288, i32 20}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 312, i32 2}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 326, i32 19}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 331, i32 19}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 338, i32 2}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 397, i32 2}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 408, i32 3}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 417, i32 20}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 434, i32 2}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 447, i32 19}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 462, i32 2}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 504, i32 19}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 513, i32 19}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 351, i32 2}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ath10k/bmi.c", i32 367, i32 3}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 2148365914, i64 2148365919, i64 2148365932, i64 2148365976, i64 2148366010, i64 2148366031}
!89 = !{i8 0, i8 2}
!90 = !{!"auto-init"}
!91 = !{!"branch_weights", i32 2000, i32 1}
