; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/rfi.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/rfi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_rfi_lut_entry = type { i16, [15 x i8], [15 x i8] }
%struct.iwl_rfi_config_cmd = type { [24 x %struct.iwl_rfi_lut_entry], i8, [3 x i8] }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.136, %struct.anon.137, %struct.anon.137, %struct.list_head, %union.anon.138, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.151, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.153, %struct.list_head, %struct.anon.155, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_notif_wait_data = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%union.anon.136 = type { %struct.mvm_statistics_rx_v3 }
%struct.mvm_statistics_rx_v3 = type { %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_non_phy_v3, %struct.mvm_statistics_rx_ht_phy_v1 }
%struct.mvm_statistics_rx_phy_v2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_non_phy_v3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_ht_phy_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.137 = type { i64, i64, i64, i64 }
%union.anon.138 = type { [32 x %struct.iwl_mvm_dqa_txq_info] }
%struct.iwl_mvm_dqa_txq_info = type { i8, i8, i8, i8, i16, [9 x i32], i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iwl_nvm_section = type { i16, ptr }
%struct.iwl_fw_runtime = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [33 x %struct.iwl_fw_paging], i16, i16, i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.anon.141, %struct.anon.146, i8 }
%struct.iwl_fw_paging = type { i32, ptr, i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, [2 x %struct.anon.140], i32, i32, i32, [6 x i32] }
%struct.anon.140 = type { [15 x i32], i32 }
%struct.anon.141 = type { [5 x %struct.iwl_fwrt_wk_data], i32, i8, [27 x i32], ptr, [2 x i32], i32, %struct.iwl_txf_iter_data, %struct.anon.145 }
%struct.iwl_fwrt_wk_data = type { i8, %struct.delayed_work, %struct.iwl_fwrt_dump_data }
%struct.iwl_fwrt_dump_data = type { %union.anon.142 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.145 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.146 = type { %struct.delayed_work, i32, i64 }
%struct.mac_address = type { [6 x i8] }
%struct.iwl_rx_phy_info = type <{ i8, i8, i8, i8, i32, i64, i32, i16, i16, [8 x i32], i32, i32, i8, i8, i16 }>
%struct.iwl_mvm_int_sta = type { i32, i32, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.iwl_mvm_frame_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.iwl_mvm_phy_ctxt = type { i16, i16, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iwl_bt_coex_profile_notif = type { [4 x i32], i32, i32, i32, i32, i32, i8, i8, i16 }
%struct.iwl_bt_coex_ci_cmd = type <{ i64, i32, i64, i32 }>
%struct.iwl_mvm_tt_mgmt = type { %struct.delayed_work, i8, i32, i32, %struct.iwl_tt_params, i8 }
%struct.iwl_tt_params = type { i32, i32, i32, i32, i32, i32, i32, [6 x %struct.iwl_tt_tx_backoff], i8 }
%struct.iwl_tt_tx_backoff = type { i32, i32 }
%struct.iwl_mvm_thermal_device = type { [8 x i16], [8 x i8], ptr }
%struct.iwl_mvm_cooling_device = type { i32, ptr }
%struct.iwl_mvm_tcm = type { %struct.delayed_work, %struct.spinlock, i32, i32, i32, i8, [4 x %struct.iwl_mvm_tcm_mac], %struct.anon.150 }
%struct.iwl_mvm_tcm_mac = type { %struct.anon.147, %struct.anon.148, %struct.anon.149, i8 }
%struct.anon.147 = type { [4 x i32], i32 }
%struct.anon.148 = type { [4 x i32], i32, i32 }
%struct.anon.149 = type { i64, %struct.ewma_rate, i8 }
%struct.ewma_rate = type { i32 }
%struct.anon.150 = type { i32, [4 x i32], [4 x i32], [6 x i32], i32, [4 x i8], [4 x i8] }
%struct.iwl_time_quota_cmd = type { [4 x %struct.iwl_time_quota_data] }
%struct.iwl_time_quota_data = type { i32, i32, i32, i32 }
%struct.anon.151 = type { %struct.delayed_work, i32, i8, %struct.anon.152 }
%struct.anon.152 = type { i8, i8, i8, %struct.cfg80211_chan_def, ptr, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_ftm_responder_stats = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.anon.153 = type { ptr, ptr, %struct.list_head, [5 x i32], %struct.anon.154, %struct.list_head }
%struct.anon.154 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.155 = type { i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/rfi.c\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to send RFI config cmd %d\0A\00", [62 x i8] zeroinitializer }, align 32
@iwl_rfi_get_freq_table.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_rfi_table = internal constant { <{ %struct.iwl_rfi_lut_entry, %struct.iwl_rfi_lut_entry, %struct.iwl_rfi_lut_entry, %struct.iwl_rfi_lut_entry, { i16, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }>, [15 x i8] }, { i16, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> }, %struct.iwl_rfi_lut_entry, { i16, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }>, [15 x i8] }, %struct.iwl_rfi_lut_entry, { i16, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> }, { i16, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> }, [13 x %struct.iwl_rfi_lut_entry] }>, [192 x i8] } { <{ %struct.iwl_rfi_lut_entry, %struct.iwl_rfi_lut_entry, %struct.iwl_rfi_lut_entry, %struct.iwl_rfi_lut_entry, { i16, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }>, [15 x i8] }, { i16, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> }, %struct.iwl_rfi_lut_entry, { i16, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }>, [15 x i8] }, %struct.iwl_rfi_lut_entry, { i16, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> }, { i16, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> }, [13 x %struct.iwl_rfi_lut_entry] }> <{ %struct.iwl_rfi_lut_entry { i16 -24576, [15 x i8] c"2:<>@468\00\00\00\00\00\00\00", [15 x i8] zeroinitializer }, %struct.iwl_rfi_lut_entry { i16 -20480, [15 x i8] c"\95\97\99\9D\9F\A1\A5\A3\A7\A9\AB\AD\AF\00\00", [15 x i8] zeroinitializer }, %struct.iwl_rfi_lut_entry { i16 -16384, [15 x i8] c"OQSUWY[]\00\00\00\00\00\00\00", [15 x i8] c"\02\02\02\02\02\02\02\02\00\00\00\00\00\00\00" }, %struct.iwl_rfi_lut_entry { i16 -8448, [15 x i8] c"rtvxzjn|~\00\00\00\00\00\00", [15 x i8] zeroinitializer }, { i16, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }>, [15 x i8] } { i16 -4096, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> <{ i8 114, i8 -105, i8 -101, i8 -99, i8 -97, i8 -95, i8 -91, [8 x i8] zeroinitializer }>, [15 x i8] zeroinitializer }, { i16, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> } { i16 1, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> <{ i8 79, i8 83, i8 85, i8 87, i8 89, i8 91, i8 93, [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> <{ i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, [8 x i8] zeroinitializer }> }, %struct.iwl_rfi_lut_entry { i16 2049, [15 x i8] c"ow{}\81\83\85\87\8F\00\00\00\00\00\00", [15 x i8] c"\02\02\02\02\02\02\02\02\02\00\00\00\00\00\00" }, { i16, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }>, [15 x i8] } { i16 14337, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> <{ i8 36, i8 38, i8 40, i8 42, i8 44, i8 46, i8 50, [8 x i8] zeroinitializer }>, [15 x i8] zeroinitializer }, %struct.iwl_rfi_lut_entry { i16 20481, [15 x i8] c"jnprtvxz\00\00\00\00\00\00\00", [15 x i8] zeroinitializer }, { i16, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> } { i16 26625, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> <{ i8 3, i8 5, i8 7, i8 9, i8 11, i8 13, i8 15, [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> <{ i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, [8 x i8] zeroinitializer }> }, { i16, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> } { i16 -32767, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> <{ i8 79, i8 83, i8 85, i8 87, i8 89, i8 91, i8 93, [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [8 x i8] }> <{ i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, [8 x i8] zeroinitializer }> }, [13 x %struct.iwl_rfi_lut_entry] zeroinitializer }>, [192 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 87, i32 2 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 101, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"iwl_rfi_table\00", align 1
@___asan_gen_.10 = private constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/rfi.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 14, i32 39 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @iwl_rfi_table], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_rfi_table to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_rfi_send_config_cmd(ptr noundef %mvm, ptr noundef readonly %rfi_table) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_rfi_config_cmd, align 1
  %hcmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 772, ptr nonnull %cmd) #4
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 772)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd) #4
  %1 = getelementptr inbounds i8, ptr %hcmd, i32 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !17
  %3 = ptrtoint ptr %hcmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cmd, ptr %hcmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %hcmd, i32 1
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 5
  %4 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 20)
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 523, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 772, ptr %len, align 4
  %arrayinit.start3 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayinit.start3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %arrayinit.start3, align 2
  %arrayinit.end4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 7
  %8 = ptrtoint ptr %arrayinit.end4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %arrayinit.end4, align 4
  %arrayinit.start11 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %arrayinit.start11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayinit.start11, align 1
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %11, i32 0, i32 5, i32 8, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i, align 4
  %14 = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %do.body.if.end35_crit_edge, label %land.rhs

do.body.if.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

land.rhs:                                         ; preds = %do.body
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end35_crit_edge, !prof !18

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 87, i32 noundef 9, ptr noundef null) #4
  br label %if.end35

if.end35:                                         ; preds = %do.end, %land.rhs.if.end35_crit_edge, %do.body.if.end35_crit_edge
  %tobool44.not = icmp eq ptr %rfi_table, null
  br i1 %tobool44.not, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %16 = call ptr @memcpy(ptr %cmd, ptr @iwl_rfi_table, i32 768)
  br label %if.end48

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %17 = call ptr @memcpy(ptr %cmd, ptr %rfi_table, i32 768)
  %oem = getelementptr inbounds %struct.iwl_rfi_config_cmd, ptr %cmd, i32 0, i32 1
  %18 = ptrtoint ptr %oem to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %oem, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then45
  %call49 = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %hcmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %do.end55

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %20, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %call49) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.end48.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call49, %do.end55 ], [ 0, %if.end48.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd) #4
  call void @llvm.lifetime.end.p0(i64 772, ptr nonnull %cmd) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_rfi_get_freq_table(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #4
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 36)
  %1 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %1, align 4
  %3 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd, i32 0, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 524, ptr %3, align 4
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %6, i32 0, i32 5, i32 8, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i, align 4
  %9 = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %call2 = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd) #4
  call void @mutex_unlock(ptr noundef %mutex) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resp_pkt, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %12, align 1
  %15 = and i32 %14, -12648448
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2013265920, i32 %15)
  %cmp.not = icmp eq i32 %15, -2013265920
  br i1 %cmp.not, label %if.end48, label %land.rhs

land.rhs:                                         ; preds = %if.end6
  %.b68 = load i1, ptr @iwl_rfi_get_freq_table.__already_done, align 1
  br i1 %.b68, label %land.rhs.cleanup_crit_edge, label %if.then15, !prof !19

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @iwl_rfi_get_freq_table.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 125, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end48:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 132) #7
  %tobool50.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %if.end53

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resp_pkt, align 4
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %18, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %call7.i.i, ptr %data, i32 132)
  %_rx_page_addr.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 2
  %20 = ptrtoint ptr %_rx_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %_rx_page_addr.i, align 4
  %_rx_page_order.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 3
  %22 = ptrtoint ptr %_rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %_rx_page_order.i, align 4
  call void @free_pages(i32 noundef %21, i32 noundef %23) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end48.cleanup_crit_edge, %if.then15, %land.rhs.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %if.then4 ], [ %call7.i.i, %if.end53 ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %land.rhs.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then15 ], [ inttoptr (i32 -12 to ptr), %if.end48.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #4
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rfi.c", i32 87, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rfi.c", i32 101, i32 3}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rfi.c", i32 125, i32 6}
!6 = !{ptr @iwl_rfi_table, !7, !"iwl_rfi_table", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rfi.c", i32 14, i32 39}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!"branch_weights", i32 2000, i32 1}
