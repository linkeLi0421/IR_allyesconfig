; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/efuse.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/efuse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw_read8_physical_efuse\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_read8_physical_efuse\09\09\09\09"
module asm "\09.long\09__crc_rtw_read8_physical_efuse\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_read8_physical_efuse:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_read8_physical_efuse\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_read8_physical_efuse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rtw_dev = type { ptr, ptr, %struct.rtw_hci, %struct.rtw_hw_scan_info, ptr, %struct.rtw_hal, %struct.rtw_fifo_conf, %struct.rtw_fw_state, %struct.rtw_efuse, %struct.rtw_sec_desc, %struct.rtw_traffic_stats, %struct.rtw_regd, %struct.rtw_bf_info, %struct.rtw_dm_info, %struct.rtw_coex, %struct.mutex, %struct.spinlock, %struct.delayed_work, i32, %struct.list_head, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, %struct.work_struct, %struct.work_struct, %struct.rtw_tx_report, %struct.anon.134, %struct.rtw_lps_conf, i8, i8, %struct.completion, ptr, i8, i32, [1 x i32], [1 x i32], i8, %struct.rtw_path_div, %struct.rtw_fw_state, %struct.rtw_wow_param, i8, %struct.completion, [0 x i8] }
%struct.rtw_hci = type { ptr, i32, i32, i32, i8 }
%struct.rtw_hw_scan_info = type { ptr, i8, i8, i8, i8 }
%struct.rtw_hal = type { i32, i32, i8, i8, i8, %struct.rtw_phy_cond, i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i32, i32, i8, %struct.mutex, [4 x [84 x i8]], [4 x [84 x i8]], [4 x [6 x i8]], [4 x [6 x i8]], [11 x [3 x [6 x [14 x i8]]]], [11 x [3 x [6 x [49 x i8]]]], [4 x [84 x i8]], i32, %struct.rtw_sar }
%struct.rtw_phy_cond = type { i32 }
%struct.rtw_sar = type { i32, [4 x [6 x %union.rtw_sar_cfg]] }
%union.rtw_sar_cfg = type { [4 x i8] }
%struct.rtw_fifo_conf = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.rtw_efuse = type { i32, i32, i32, i32, [6 x i8], i8, [2 x i8], i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.132, [4 x %struct.rtw_txpwr_idx] }
%struct.anon.132 = type { i8, i8, i8, i8, i8 }
%struct.rtw_txpwr_idx = type { %struct.rtw_2g_txpwr_idx, %struct.rtw_5g_txpwr_idx }
%struct.rtw_2g_txpwr_idx = type { [6 x i8], [5 x i8], %struct.rtw_2g_1s_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff }
%struct.rtw_2g_1s_pwr_idx_diff = type { i8 }
%struct.rtw_2g_ns_pwr_idx_diff = type { i16 }
%struct.rtw_5g_txpwr_idx = type { [14 x i8], %struct.rtw_5g_ht_1s_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ofdm_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff }
%struct.rtw_5g_ht_1s_pwr_idx_diff = type { i8 }
%struct.rtw_5g_ht_ns_pwr_idx_diff = type { i8 }
%struct.rtw_5g_ofdm_ns_pwr_idx_diff = type { i16 }
%struct.rtw_5g_vht_ns_pwr_idx_diff = type { i8 }
%struct.rtw_sec_desc = type { i8, i32, [32 x %struct.rtw_cam_entry], [1 x i32] }
%struct.rtw_cam_entry = type { i8, i8, [6 x i8], i8, ptr }
%struct.rtw_traffic_stats = type { i64, i64, i64, i64, i32, i32, %struct.ewma_tp, %struct.ewma_tp }
%struct.ewma_tp = type { i32 }
%struct.rtw_regd = type { i32, ptr, i32 }
%struct.rtw_bf_info = type { i8, i8, [1 x i32], i8 }
%struct.rtw_dm_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [4 x i16], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [4 x i8], i8, i8, [4 x i8], [4 x i8], i8, i8, i8, [4 x %struct.ewma_thermal], i8, i8, [4 x i32], [4 x [2 x [15 x i16]]], [4 x [2 x [2 x i8]]], %struct.rtw_dpk_info, %struct.rtw_cfo_track, [2 x [4 x i8]], i32, i8, [4 x i8], [4 x i8], [4 x i16], [4 x i8], i8, %struct.rtw_pkt_count, %struct.rtw_pkt_count, [4 x %struct.ewma_evm], [12 x %struct.ewma_snr], i32, %struct.rtw_iqk_info, %struct.rtw_gapk_info, i8, i8, i32, i8 }
%struct.ewma_thermal = type { i32 }
%struct.rtw_dpk_info = type { i8, i8, [1 x i32], [2 x i8], [2 x %struct.ewma_thermal], i32, i32, [4 x i8], [4 x i8], [4 x [20 x i32]], [4 x i16], [4 x i8], [4 x i8], i8, i8, i8 }
%struct.rtw_cfo_track = type { i8, i8, [4 x i32], [4 x i32], i32, i32 }
%struct.rtw_pkt_count = type { i16, [84 x i16] }
%struct.ewma_evm = type { i32 }
%struct.ewma_snr = type { i32 }
%struct.rtw_iqk_info = type { i8, %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32, i32 }
%struct.rtw_gapk_info = type { [5 x [11 x [4 x i32]]], [4 x [11 x i32]], i8, [11 x [4 x i8]], [11 x [4 x i8]], i8, i8 }
%struct.rtw_coex = type { %struct.mutex, %struct.sk_buff_head, %struct.wait_queue_head, i8, i8, i8, i8, i8, i8, %struct.rtw_coex_stat, %struct.rtw_coex_dm, %struct.rtw_coex_rfe, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rtw_coex_stat = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, [6 x [10 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, [10 x i8], [10 x i8], i8, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i16, i16, [13 x i32], [8 x i32], [6 x i32], i32, i32 }
%struct.rtw_coex_dm = type { i8, i8, i8, i8, [4 x i8], [4 x i8], [3 x i8], i8, i8, [5 x i8], i8, i8, i8, i8, i32, i32, i32, [5 x i8] }
%struct.rtw_coex_rfe = type { i8, i8, i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rtw_tx_report = type { %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, %struct.timer_list }
%struct.anon.134 = type { i8, %struct.spinlock, i32 }
%struct.rtw_lps_conf = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.rtw_path_div = type { i32, i32, i32, i16, i16 }
%struct.rtw_fw_state = type { ptr, ptr, %struct.completion, %struct.rtw_fwcd_desc, i16, i8, i8, i16, i32 }
%struct.rtw_fwcd_desc = type { i32, ptr, ptr }
%struct.rtw_wow_param = type { ptr, [1 x i32], i8, i8, [12 x %struct.rtw_wow_pattern], i8, %struct.rtw_pno_request }
%struct.rtw_wow_pattern = type { i16, i8, i8, [16 x i8] }
%struct.rtw_pno_request = type { i8, i32, ptr, i8, ptr, %struct.cfg80211_sched_scan_plan }
%struct.cfg80211_sched_scan_plan = type { i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rtw_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/realtek/rtw88/efuse.c\00", [53 x i8] zeroinitializer }, align 32
@__kstrtab_rtw_read8_physical_efuse = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_read8_physical_efuse = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_read8_physical_efuse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_read8_physical_efuse to i32), ptr @__kstrtab_rtw_read8_physical_efuse, ptr @__kstrtabns_rtw_read8_physical_efuse }, section "___ksymtab+rtw_read8_physical_efuse", align 4
@rtw_parse_efuse_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to dump efuse physical map\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw_parse_efuse_map\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw_parse_efuse_map._entry_ptr = internal global ptr @rtw_parse_efuse_map._entry, section ".printk_index", align 4
@rtw_parse_efuse_map._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 172, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to dump efuse logical map\0A\00", [62 x i8] zeroinitializer }, align 32
@rtw_parse_efuse_map._entry_ptr.7 = internal global ptr @rtw_parse_efuse_map._entry.5, section ".printk_index", align 4
@rtw_parse_efuse_map._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str, i32 178, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to read efuse map\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw_parse_efuse_map._entry_ptr.10 = internal global ptr @rtw_parse_efuse_map._entry.8, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 133, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 165, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 172, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [46 x i8] c"../drivers/net/wireless/realtek/rtw88/efuse.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 178, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_rtw_read8_physical_efuse, ptr @rtw_parse_efuse_map._entry, ptr @rtw_parse_efuse_map._entry.5, ptr @rtw_parse_efuse_map._entry.8, ptr @rtw_parse_efuse_map._entry_ptr, ptr @rtw_parse_efuse_map._entry_ptr.10, ptr @rtw_parse_efuse_map._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_parse_efuse_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_parse_efuse_map._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_parse_efuse_map._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_read8_physical_efuse(ptr noundef %rtwdev, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 48) #4
  %and21.i = and i32 %call.i.i, -261889
  %shl.i = shl nuw nsw i32 %conv, 8
  %and22.i = and i32 %shl.i, 261888
  %or.i = or i32 %and21.i, %and22.i
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 48, i32 noundef %or.i) #4
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i42 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %read32.i.i42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i42, align 4
  %call.i.i43 = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 48) #4
  %and.i = and i32 %call.i.i43, 2147483647
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i44 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %write32.i.i44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i44, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 48, i32 noundef %and.i) #4
  %call = tail call i64 @ktime_get() #4
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 134) #4
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %read32.i52 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %read32.i52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i52, align 4
  %call.i53 = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 48) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i53)
  %tobool.not54 = icmp sgt i32 %call.i53, -1
  br i1 %tobool.not54, label %entry.land.lhs.true_crit_edge, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then21.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #4
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %23(ptr noundef %rtwdev, i32 noundef 48) #4
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.then21.land.lhs.true_crit_edge, label %if.then21.if.end27_crit_edge

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then21.land.lhs.true_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %24 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i, align 8
  %read32.i46 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %read32.i46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i46, align 4
  %call.i47 = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 48) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool24.not.inv = icmp slt i32 %call.i47, 0
  br i1 %tobool24.not.inv, label %for.end.if.end27_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.end27:                                         ; preds = %for.end.if.end27_crit_edge, %if.then21.if.end27_crit_edge, %entry.if.end27_crit_edge
  %28 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8.i, align 4
  %call.i49 = tail call zeroext i8 %31(ptr noundef %rtwdev, i32 noundef 48) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %for.end.cleanup_crit_edge
  %storemerge = phi i8 [ %call.i49, %if.end27 ], [ -1, %for.end.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -110, %for.end.cleanup_crit_edge ]
  %32 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %storemerge, ptr %data, align 1
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_parse_efuse_map(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %physical_size = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 1
  %logical_size = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %logical_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logical_size, align 4
  %4 = ptrtoint ptr %physical_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %physical_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #7
  %call9.i69 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call9.i, null
  %tobool4.not = icmp eq ptr %call9.i69, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %entry.out_free_crit_edge, label %if.end

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip1, align 4
  %8 = ptrtoint ptr %physical_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %physical_size, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %efuse_grant.i.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %efuse_grant.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %efuse_grant.i.i, align 4
  %tobool.not.i.i73 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i73, label %if.end.rtw_chip_efuse_grant_on.exit.i_crit_edge, label %if.then.i.i

if.end.rtw_chip_efuse_grant_on.exit.i_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtw_chip_efuse_grant_on.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %13(ptr noundef %rtwdev, i1 noundef zeroext true) #4
  br label %rtw_chip_efuse_grant_on.exit.i

rtw_chip_efuse_grant_on.exit.i:                   ; preds = %if.then.i.i, %if.end.rtw_chip_efuse_grant_on.exit.i_crit_edge
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %14 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %17(ptr noundef %rtwdev, i32 noundef 52) #4
  %and21.i.i.i = and i32 %call.i.i.i.i, -769
  %18 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef 52, i32 noundef %and21.i.i.i) #4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %7, align 4
  %cfg_ldo25.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %cfg_ldo25.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg_ldo25.i, align 4
  tail call void %25(ptr noundef %rtwdev, i1 noundef zeroext false) #4
  %26 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %29(ptr noundef %rtwdev, i32 noundef 48) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp36.not.i = icmp eq i32 %9, 0
  br i1 %cmp36.not.i, label %rtw_chip_efuse_grant_on.exit.i.for.end.i_crit_edge, label %rtw_chip_efuse_grant_on.exit.i.for.body.i_crit_edge

rtw_chip_efuse_grant_on.exit.i.for.body.i_crit_edge: ; preds = %rtw_chip_efuse_grant_on.exit.i
  br label %for.body.i

rtw_chip_efuse_grant_on.exit.i.for.end.i_crit_edge: ; preds = %rtw_chip_efuse_grant_on.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %rtw_chip_efuse_grant_on.exit.i.for.body.i_crit_edge
  %addr.038.i = phi i32 [ %inc.i, %do.end.i.for.body.i_crit_edge ], [ 0, %rtw_chip_efuse_grant_on.exit.i.for.body.i_crit_edge ]
  %efuse_ctl.037.i = phi i32 [ %call.i30.i, %do.end.i.for.body.i_crit_edge ], [ %call.i.i, %rtw_chip_efuse_grant_on.exit.i.for.body.i_crit_edge ]
  %and.i = and i32 %efuse_ctl.037.i, 2147221504
  %and2.i = shl i32 %addr.038.i, 8
  %shl.i = and i32 %and2.i, 261888
  %or.i = or i32 %shl.i, %and.i
  %30 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i.i, align 4
  tail call void %33(ptr noundef %rtwdev, i32 noundef 48, i32 noundef %or.i) #4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %for.body.i
  %cnt.0.i = phi i32 [ 1000000, %for.body.i ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #4
  %35 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i29.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %read32.i29.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read32.i29.i, align 4
  %call.i30.i = tail call i32 %38(ptr noundef %rtwdev, i32 noundef 48) #4
  %dec.i = add nsw i32 %cnt.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp5.i = icmp eq i32 %dec.i, 0
  br i1 %cmp5.i, label %do.body.i.out_free.sink.split_crit_edge, label %do.cond.i

do.body.i.out_free.sink.split_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free.sink.split

do.cond.i:                                        ; preds = %do.body.i
  %tobool.not.i = icmp sgt i32 %call.i30.i, -1
  br i1 %tobool.not.i, label %do.cond.i.do.body.i_crit_edge, label %do.end.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  %conv.i = trunc i32 %call.i30.i to i8
  %add.ptr.i = getelementptr i8, ptr %call9.i, i32 %addr.038.i
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i, ptr %add.ptr.i, align 1
  %inc.i = add nuw i32 %addr.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %do.end.i.for.end.i_crit_edge, %rtw_chip_efuse_grant_on.exit.i.for.end.i_crit_edge
  %40 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip1, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %efuse_grant.i32.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %efuse_grant.i32.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %efuse_grant.i32.i, align 4
  %tobool.not.i33.i = icmp eq ptr %45, null
  br i1 %tobool.not.i33.i, label %for.end.i.if.end8_crit_edge, label %if.then.i34.i

for.end.i.if.end8_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then.i34.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %45(ptr noundef %rtwdev, i1 noundef zeroext false) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then.i34.i, %for.end.i.if.end8_crit_edge
  %46 = call ptr @memset(ptr %call9.i69, i32 255, i32 %3)
  %47 = ptrtoint ptr %physical_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %physical_size, align 4
  %protect_size3.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 3
  %49 = ptrtoint ptr %protect_size3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %protect_size3.i, align 4
  %51 = ptrtoint ptr %logical_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %logical_size, align 4
  %sub.i = sub i32 %48, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp112.not.i = icmp eq i32 %48, %50
  br i1 %cmp112.not.i, label %if.end8.if.end16_crit_edge, label %if.end8.for.body.i75_crit_edge

if.end8.for.body.i75_crit_edge:                   ; preds = %if.end8
  br label %for.body.i75

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

for.body.i75:                                     ; preds = %for.inc.3.i.for.body.i75_crit_edge, %if.end8.for.body.i75_crit_edge
  %phy_idx.0113.i = phi i32 [ %phy_idx.3.3.i, %for.inc.3.i.for.body.i75_crit_edge ], [ 0, %if.end8.for.body.i75_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call9.i, i32 %phy_idx.0113.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i, align 1
  %add.i = add nuw i32 %phy_idx.0113.i, 1
  %arrayidx6.i74 = getelementptr i8, ptr %call9.i, i32 %add.i
  %55 = ptrtoint ptr %arrayidx6.i74 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx6.i74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %54)
  %cmp7.i = icmp eq i8 %54, -1
  br i1 %cmp7.i, label %for.body.i75.if.end16_crit_edge, label %lor.lhs.false.i

for.body.i75.if.end16_crit_edge:                  ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

lor.lhs.false.i:                                  ; preds = %for.body.i75
  %57 = and i8 %54, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %57)
  %cmp10.i = icmp eq i8 %57, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %cmp13.i = icmp eq i8 %56, -1
  %or.cond.i = select i1 %cmp10.i, i1 %cmp13.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end16_crit_edge, label %if.end.i77

lor.lhs.false.i.if.end16_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.end.i77:                                       ; preds = %lor.lhs.false.i
  %and21.i = lshr i8 %56, 1
  %58 = and i8 %and21.i, 120
  %59 = lshr i8 %54, 5
  %or.i76 = or i8 %58, %59
  %add29.i = add i32 %phy_idx.0113.i, 2
  %60 = lshr i8 %54, 4
  %phy_idx.1.i = select i1 %cmp10.i, i32 %add29.i, i32 %add.i
  %blk_idx.0.i = select i1 %cmp10.i, i8 %or.i76, i8 %60
  %word_en.0.in.i = select i1 %cmp10.i, i8 %56, i8 %54
  %word_en.0.i = and i8 %word_en.0.in.i, 15
  %conv43.i = zext i8 %word_en.0.i to i32
  %conv49.i = zext i8 %blk_idx.0.i to i32
  %shl50.i = shl nuw nsw i32 %conv49.i, 3
  %and44.i = and i32 %conv43.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %cmp45.not.i = icmp eq i32 %and44.i, 0
  br i1 %cmp45.not.i, label %if.end48.i, label %if.end.i77.for.inc.i_crit_edge

if.end.i77.for.inc.i_crit_edge:                   ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end48.i:                                       ; preds = %if.end.i77
  %add53.i = add i32 %phy_idx.1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add53.i, i32 %sub.i)
  %cmp55.i = icmp ugt i32 %add53.i, %sub.i
  br i1 %cmp55.i, label %if.end48.i.out_free.sink.split_crit_edge, label %lor.lhs.false57.i

if.end48.i.out_free.sink.split_crit_edge:         ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free.sink.split

lor.lhs.false57.i:                                ; preds = %if.end48.i
  %add58.i = or i32 %shl50.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add58.i, i32 %52)
  %cmp59.i = icmp ugt i32 %add58.i, %52
  br i1 %cmp59.i, label %lor.lhs.false57.i.out_free.sink.split_crit_edge, label %if.end62.i

lor.lhs.false57.i.out_free.sink.split_crit_edge:  ; preds = %lor.lhs.false57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free.sink.split

if.end62.i:                                       ; preds = %lor.lhs.false57.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx63.i = getelementptr i8, ptr %call9.i, i32 %phy_idx.1.i
  %61 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx63.i, align 1
  %arrayidx64.i = getelementptr i8, ptr %call9.i69, i32 %shl50.i
  %63 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx64.i, align 8
  %arrayidx66.i = getelementptr i8, ptr %call9.i, i32 %add53.i
  %64 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx66.i, align 1
  %arrayidx68.i = getelementptr i8, ptr %call9.i69, i32 %add58.i
  %66 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx68.i, align 1
  %add69.i = add i32 %phy_idx.1.i, 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end62.i, %if.end.i77.for.inc.i_crit_edge
  %phy_idx.3.i = phi i32 [ %phy_idx.1.i, %if.end.i77.for.inc.i_crit_edge ], [ %add69.i, %if.end62.i ]
  %and44.1.i = and i32 %conv43.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.1.i)
  %cmp45.not.1.i = icmp eq i32 %and44.1.i, 0
  br i1 %cmp45.not.1.i, label %if.end48.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.i

if.end48.1.i:                                     ; preds = %for.inc.i
  %add52.1.i = or i32 %shl50.i, 2
  %add53.1.i = add i32 %phy_idx.3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add53.1.i, i32 %sub.i)
  %cmp55.1.i = icmp ugt i32 %add53.1.i, %sub.i
  br i1 %cmp55.1.i, label %if.end48.1.i.out_free.sink.split_crit_edge, label %lor.lhs.false57.1.i

if.end48.1.i.out_free.sink.split_crit_edge:       ; preds = %if.end48.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free.sink.split

lor.lhs.false57.1.i:                              ; preds = %if.end48.1.i
  %add58.1.i = or i32 %shl50.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add58.1.i, i32 %52)
  %cmp59.1.i = icmp ugt i32 %add58.1.i, %52
  br i1 %cmp59.1.i, label %lor.lhs.false57.1.i.out_free.sink.split_crit_edge, label %if.end62.1.i

lor.lhs.false57.1.i.out_free.sink.split_crit_edge: ; preds = %lor.lhs.false57.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free.sink.split

if.end62.1.i:                                     ; preds = %lor.lhs.false57.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx63.1.i = getelementptr i8, ptr %call9.i, i32 %phy_idx.3.i
  %67 = ptrtoint ptr %arrayidx63.1.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx63.1.i, align 1
  %arrayidx64.1.i = getelementptr i8, ptr %call9.i69, i32 %add52.1.i
  %69 = ptrtoint ptr %arrayidx64.1.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx64.1.i, align 2
  %arrayidx66.1.i = getelementptr i8, ptr %call9.i, i32 %add53.1.i
  %70 = ptrtoint ptr %arrayidx66.1.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx66.1.i, align 1
  %arrayidx68.1.i = getelementptr i8, ptr %call9.i69, i32 %add58.1.i
  %72 = ptrtoint ptr %arrayidx68.1.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx68.1.i, align 1
  %add69.1.i = add i32 %phy_idx.3.i, 2
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end62.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %phy_idx.3.1.i = phi i32 [ %phy_idx.3.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %add69.1.i, %if.end62.1.i ]
  %and44.2.i = and i32 %conv43.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.2.i)
  %cmp45.not.2.i = icmp eq i32 %and44.2.i, 0
  br i1 %cmp45.not.2.i, label %if.end48.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.i

if.end48.2.i:                                     ; preds = %for.inc.1.i
  %add52.2.i = or i32 %shl50.i, 4
  %add53.2.i = add i32 %phy_idx.3.1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add53.2.i, i32 %sub.i)
  %cmp55.2.i = icmp ugt i32 %add53.2.i, %sub.i
  br i1 %cmp55.2.i, label %if.end48.2.i.out_free.sink.split_crit_edge, label %lor.lhs.false57.2.i

if.end48.2.i.out_free.sink.split_crit_edge:       ; preds = %if.end48.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free.sink.split

lor.lhs.false57.2.i:                              ; preds = %if.end48.2.i
  %add58.2.i = or i32 %shl50.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add58.2.i, i32 %52)
  %cmp59.2.i = icmp ugt i32 %add58.2.i, %52
  br i1 %cmp59.2.i, label %lor.lhs.false57.2.i.out_free.sink.split_crit_edge, label %if.end62.2.i

lor.lhs.false57.2.i.out_free.sink.split_crit_edge: ; preds = %lor.lhs.false57.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free.sink.split

if.end62.2.i:                                     ; preds = %lor.lhs.false57.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx63.2.i = getelementptr i8, ptr %call9.i, i32 %phy_idx.3.1.i
  %73 = ptrtoint ptr %arrayidx63.2.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx63.2.i, align 1
  %arrayidx64.2.i = getelementptr i8, ptr %call9.i69, i32 %add52.2.i
  %75 = ptrtoint ptr %arrayidx64.2.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx64.2.i, align 4
  %arrayidx66.2.i = getelementptr i8, ptr %call9.i, i32 %add53.2.i
  %76 = ptrtoint ptr %arrayidx66.2.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx66.2.i, align 1
  %arrayidx68.2.i = getelementptr i8, ptr %call9.i69, i32 %add58.2.i
  %78 = ptrtoint ptr %arrayidx68.2.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx68.2.i, align 1
  %add69.2.i = add i32 %phy_idx.3.1.i, 2
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end62.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %phy_idx.3.2.i = phi i32 [ %phy_idx.3.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %add69.2.i, %if.end62.2.i ]
  %and44.3.i = and i32 %conv43.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.3.i)
  %cmp45.not.3.i = icmp eq i32 %and44.3.i, 0
  br i1 %cmp45.not.3.i, label %if.end48.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3.i

if.end48.3.i:                                     ; preds = %for.inc.2.i
  %add52.3.i = or i32 %shl50.i, 6
  %add53.3.i = add i32 %phy_idx.3.2.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add53.3.i, i32 %sub.i)
  %cmp55.3.i = icmp ugt i32 %add53.3.i, %sub.i
  br i1 %cmp55.3.i, label %if.end48.3.i.out_free.sink.split_crit_edge, label %lor.lhs.false57.3.i

if.end48.3.i.out_free.sink.split_crit_edge:       ; preds = %if.end48.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free.sink.split

lor.lhs.false57.3.i:                              ; preds = %if.end48.3.i
  %add58.3.i = or i32 %shl50.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add58.3.i, i32 %52)
  %cmp59.3.i = icmp ugt i32 %add58.3.i, %52
  br i1 %cmp59.3.i, label %lor.lhs.false57.3.i.out_free.sink.split_crit_edge, label %if.end62.3.i

lor.lhs.false57.3.i.out_free.sink.split_crit_edge: ; preds = %lor.lhs.false57.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free.sink.split

if.end62.3.i:                                     ; preds = %lor.lhs.false57.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx63.3.i = getelementptr i8, ptr %call9.i, i32 %phy_idx.3.2.i
  %79 = ptrtoint ptr %arrayidx63.3.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx63.3.i, align 1
  %arrayidx64.3.i = getelementptr i8, ptr %call9.i69, i32 %add52.3.i
  %81 = ptrtoint ptr %arrayidx64.3.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx64.3.i, align 2
  %arrayidx66.3.i = getelementptr i8, ptr %call9.i, i32 %add53.3.i
  %82 = ptrtoint ptr %arrayidx66.3.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx66.3.i, align 1
  %arrayidx68.3.i = getelementptr i8, ptr %call9.i69, i32 %add58.3.i
  %84 = ptrtoint ptr %arrayidx68.3.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx68.3.i, align 1
  %add69.3.i = add i32 %phy_idx.3.2.i, 2
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.end62.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %phy_idx.3.3.i = phi i32 [ %phy_idx.3.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ %add69.3.i, %if.end62.3.i ]
  %cmp.i78 = icmp ult i32 %phy_idx.3.3.i, %sub.i
  br i1 %cmp.i78, label %for.inc.3.i.for.body.i75_crit_edge, label %for.inc.3.i.if.end16_crit_edge

for.inc.3.i.if.end16_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

for.inc.3.i.for.body.i75_crit_edge:               ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i75

if.end16:                                         ; preds = %for.inc.3.i.if.end16_crit_edge, %lor.lhs.false.i.if.end16_crit_edge, %for.body.i75.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %read_efuse = getelementptr inbounds %struct.rtw_chip_ops, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %read_efuse to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read_efuse, align 4
  %call17 = tail call i32 %88(ptr noundef %rtwdev, ptr noundef nonnull %call9.i69) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.out_free_crit_edge, label %if.end16.out_free.sink.split_crit_edge

if.end16.out_free.sink.split_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free.sink.split

if.end16.out_free_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free

out_free.sink.split:                              ; preds = %if.end16.out_free.sink.split_crit_edge, %lor.lhs.false57.3.i.out_free.sink.split_crit_edge, %if.end48.3.i.out_free.sink.split_crit_edge, %lor.lhs.false57.2.i.out_free.sink.split_crit_edge, %if.end48.2.i.out_free.sink.split_crit_edge, %lor.lhs.false57.1.i.out_free.sink.split_crit_edge, %if.end48.1.i.out_free.sink.split_crit_edge, %lor.lhs.false57.i.out_free.sink.split_crit_edge, %if.end48.i.out_free.sink.split_crit_edge, %do.body.i.out_free.sink.split_crit_edge
  %.str.9.sink = phi ptr [ @.str.9, %if.end16.out_free.sink.split_crit_edge ], [ @.str.6, %if.end48.i.out_free.sink.split_crit_edge ], [ @.str.6, %lor.lhs.false57.i.out_free.sink.split_crit_edge ], [ @.str.6, %if.end48.1.i.out_free.sink.split_crit_edge ], [ @.str.6, %lor.lhs.false57.1.i.out_free.sink.split_crit_edge ], [ @.str.6, %if.end48.2.i.out_free.sink.split_crit_edge ], [ @.str.6, %lor.lhs.false57.2.i.out_free.sink.split_crit_edge ], [ @.str.6, %if.end48.3.i.out_free.sink.split_crit_edge ], [ @.str.6, %lor.lhs.false57.3.i.out_free.sink.split_crit_edge ], [ @.str.1, %do.body.i.out_free.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call17, %if.end16.out_free.sink.split_crit_edge ], [ -22, %if.end48.i.out_free.sink.split_crit_edge ], [ -22, %lor.lhs.false57.i.out_free.sink.split_crit_edge ], [ -22, %if.end48.1.i.out_free.sink.split_crit_edge ], [ -22, %lor.lhs.false57.1.i.out_free.sink.split_crit_edge ], [ -22, %if.end48.2.i.out_free.sink.split_crit_edge ], [ -22, %lor.lhs.false57.2.i.out_free.sink.split_crit_edge ], [ -22, %if.end48.3.i.out_free.sink.split_crit_edge ], [ -22, %lor.lhs.false57.3.i.out_free.sink.split_crit_edge ], [ -16, %do.body.i.out_free.sink.split_crit_edge ]
  %dev23 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %89 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull %.str.9.sink) #8
  br label %out_free

out_free:                                         ; preds = %out_free.sink.split, %if.end16.out_free_crit_edge, %entry.out_free_crit_edge
  %ret.0 = phi i32 [ 0, %if.end16.out_free_crit_edge ], [ -12, %entry.out_free_crit_edge ], [ %ret.0.ph, %out_free.sink.split ]
  tail call void @kfree(ptr noundef %call9.i69) #4
  tail call void @kfree(ptr noundef %call9.i) #4
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/efuse.c", i32 133, i32 8}
!2 = !{ptr @__ksymtab_rtw_read8_physical_efuse, !3, !"__ksymtab_rtw_read8_physical_efuse", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw88/efuse.c", i32 144, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtw88/efuse.c", i32 165, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rtw_parse_efuse_map._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @rtw_parse_efuse_map._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtw88/efuse.c", i32 172, i32 3}
!13 = !{ptr @rtw_parse_efuse_map._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @rtw_parse_efuse_map._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtw88/efuse.c", i32 178, i32 3}
!17 = !{ptr @rtw_parse_efuse_map._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @rtw_parse_efuse_map._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtw88/hci.h", i32 236, i32 2}
!21 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
