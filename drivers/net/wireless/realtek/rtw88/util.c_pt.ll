; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/util.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+check_hw_ready\22, \22a\22\09"
module asm "\09.weak\09__crc_check_hw_ready\09\09\09\09"
module asm "\09.long\09__crc_check_hw_ready\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_check_hw_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22check_hw_ready\22\09\09\09\09\09"
module asm "__kstrtabns_check_hw_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtw_restore_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_restore_reg\09\09\09\09"
module asm "\09.long\09__crc_rtw_restore_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_restore_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_restore_reg\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_restore_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.rtw_chip_info = type { ptr, i8, ptr, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i16], ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], [2 x i32], ptr, i8, ptr, ptr, ptr, ptr, [4 x ptr], ptr, ptr, i32, i8, i16, i8, i8, ptr, i8, i8, ptr, i8, i8, ptr, ptr, i8, [3 x i32], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rtw_ltecoex_addr = type { i32, i32, i32 }
%struct.rtw_backup_info = type { i8, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_check_hw_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_check_hw_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_check_hw_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @check_hw_ready to i32), ptr @__kstrtab_check_hw_ready, ptr @__kstrtabns_check_hw_ready }, section "___ksymtab+check_hw_ready", align 4
@__kstrtab_rtw_restore_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_restore_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_restore_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_restore_reg to i32), ptr @__kstrtab_rtw_restore_reg, ptr @__kstrtabns_rtw_restore_reg }, section "___ksymtab+rtw_restore_reg", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_check_hw_ready, ptr @__ksymtab_rtw_restore_reg], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @check_hw_ready(ptr noundef %rtwdev, i32 noundef %addr, i32 noundef %mask, i32 noundef %target) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.cttz.i32(i32 %mask, i1 false) #3, !range !13
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %1 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i5 = getelementptr inbounds %struct.rtw_hci_ops, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %read32.i.i5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read32.i.i5, align 4
  %call.i.i6 = tail call i32 %4(ptr noundef %rtwdev, i32 noundef %addr) #3
  %and.i7 = and i32 %call.i.i6, %mask
  %shr.i8 = lshr i32 %and.i7, %0
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i8, i32 %target)
  %cmp19 = icmp eq i32 %shr.i8, %target
  br i1 %cmp19, label %entry.cleanup_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body:                                         ; preds = %if.end
  %5 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef %rtwdev, i32 noundef %addr) #3
  %and.i = and i32 %call.i.i, %mask
  %shr.i = lshr i32 %and.i, %0
  %cmp1 = icmp eq i32 %shr.i, %target
  br i1 %cmp1, label %for.body.cleanup.loopexit_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.loopexit

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  %cnt.0310 = phi i32 [ %inc, %for.body.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #3
  %inc = add nuw nsw i32 %cnt.0310, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.end.cleanup.loopexit_crit_edge, label %for.body

if.end.cleanup.loopexit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %if.end.cleanup.loopexit_crit_edge, %for.body.cleanup.loopexit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %cnt.0310)
  %cmp.le = icmp ult i32 %cnt.0310, 999
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ true, %entry.cleanup_crit_edge ], [ %cmp.le, %cleanup.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ltecoex_read_reg(ptr noundef %rtwdev, i16 noundef zeroext %offset, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %ltecoex_addr = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %ltecoex_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ltecoex_addr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %6 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i11 = getelementptr inbounds %struct.rtw_hci_ops, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %read32.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i.i11, align 4
  %call.i.i.i12 = tail call i32 %9(ptr noundef %rtwdev, i32 noundef %5) #3
  %10 = and i32 %call.i.i.i12, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1.i.not13 = icmp eq i32 %10, 0
  br i1 %cmp1.i.not13, label %entry.if.end.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

for.body.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %14(ptr noundef %rtwdev, i32 noundef %5) #3
  %15 = and i32 %call.i.i.i, 536870912
  %cmp1.i.not = icmp eq i32 %15, 0
  br i1 %cmp1.i.not, label %for.body.i.if.end.i_crit_edge, label %for.body.i.check_hw_ready.exit_crit_edge

for.body.i.check_hw_ready.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %check_hw_ready.exit

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %cnt.03.i14 = phi i32 [ %inc.i, %for.body.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #3
  %inc.i = add nuw nsw i32 %cnt.03.i14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %if.end.i.check_hw_ready.exit_crit_edge, label %for.body.i

if.end.i.check_hw_ready.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %check_hw_ready.exit

check_hw_ready.exit:                              ; preds = %if.end.i.check_hw_ready.exit_crit_edge, %for.body.i.check_hw_ready.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %cnt.03.i14)
  %cmp.i.le = icmp ult i32 %cnt.03.i14, 999
  br i1 %cmp.i.le, label %check_hw_ready.exit.if.end_crit_edge, label %check_hw_ready.exit.cleanup_crit_edge

check_hw_ready.exit.cleanup_crit_edge:            ; preds = %check_hw_ready.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

check_hw_ready.exit.if.end_crit_edge:             ; preds = %check_hw_ready.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %check_hw_ready.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  %conv = zext i16 %offset to i32
  %or = or i32 %conv, -2146500608
  %19 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i, align 4
  tail call void %22(ptr noundef %rtwdev, i32 noundef %18, i32 noundef %or) #3
  %rdata = getelementptr inbounds %struct.rtw_ltecoex_addr, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rdata, align 4
  %25 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %28(ptr noundef %rtwdev, i32 noundef %24) #3
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call.i, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %check_hw_ready.exit.cleanup_crit_edge
  %cmp.lcssa.i17 = phi i1 [ false, %check_hw_ready.exit.cleanup_crit_edge ], [ true, %if.end ]
  ret i1 %cmp.lcssa.i17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ltecoex_reg_write(ptr noundef %rtwdev, i16 noundef zeroext %offset, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %ltecoex_addr = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %ltecoex_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ltecoex_addr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %6 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i11 = getelementptr inbounds %struct.rtw_hci_ops, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %read32.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i.i11, align 4
  %call.i.i.i12 = tail call i32 %9(ptr noundef %rtwdev, i32 noundef %5) #3
  %10 = and i32 %call.i.i.i12, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1.i.not13 = icmp eq i32 %10, 0
  br i1 %cmp1.i.not13, label %entry.if.end.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

for.body.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %14(ptr noundef %rtwdev, i32 noundef %5) #3
  %15 = and i32 %call.i.i.i, 536870912
  %cmp1.i.not = icmp eq i32 %15, 0
  br i1 %cmp1.i.not, label %for.body.i.if.end.i_crit_edge, label %for.body.i.check_hw_ready.exit_crit_edge

for.body.i.check_hw_ready.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %check_hw_ready.exit

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %cnt.03.i14 = phi i32 [ %inc.i, %for.body.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #3
  %inc.i = add nuw nsw i32 %cnt.03.i14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %if.end.i.check_hw_ready.exit_crit_edge, label %for.body.i

if.end.i.check_hw_ready.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %check_hw_ready.exit

check_hw_ready.exit:                              ; preds = %if.end.i.check_hw_ready.exit_crit_edge, %for.body.i.check_hw_ready.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %cnt.03.i14)
  %cmp.i.le = icmp ult i32 %cnt.03.i14, 999
  br i1 %cmp.i.le, label %check_hw_ready.exit.if.end_crit_edge, label %check_hw_ready.exit.cleanup_crit_edge

check_hw_ready.exit.cleanup_crit_edge:            ; preds = %check_hw_ready.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

check_hw_ready.exit.if.end_crit_edge:             ; preds = %check_hw_ready.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %check_hw_ready.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %wdata = getelementptr inbounds %struct.rtw_ltecoex_addr, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wdata, align 4
  %19 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i, align 4
  tail call void %22(ptr noundef %rtwdev, i32 noundef %18, i32 noundef %value) #3
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 4
  %conv = zext i16 %offset to i32
  %or = or i32 %conv, -1072758784
  %25 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i10 = getelementptr inbounds %struct.rtw_hci_ops, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %write32.i10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write32.i10, align 4
  tail call void %28(ptr noundef %rtwdev, i32 noundef %24, i32 noundef %or) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %check_hw_ready.exit.cleanup_crit_edge
  %cmp.lcssa.i17 = phi i1 [ false, %check_hw_ready.exit.cleanup_crit_edge ], [ true, %if.end ]
  ret i1 %cmp.lcssa.i17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_restore_reg(ptr noundef %rtwdev, ptr nocapture noundef readonly %bckp, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp20.not = icmp eq i32 %num, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hci.i19 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %bckp.addr.021 = phi ptr [ %bckp, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %bckp.addr.021 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bckp.addr.021, align 4
  %reg2 = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.addr.021, i32 0, i32 1
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg2, align 4
  %val3 = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.addr.021, i32 0, i32 2
  %4 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val3, align 4
  %6 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %for.body.for.inc_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb5
    i8 4, label %sw.bb7
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %conv4 = trunc i32 %5 to i8
  %7 = ptrtoint ptr %hci.i19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i19, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write8.i, align 4
  tail call void %10(ptr noundef %rtwdev, i32 noundef %3, i8 noundef zeroext %conv4) #3
  br label %for.inc

sw.bb5:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %conv6 = trunc i32 %5 to i16
  %11 = ptrtoint ptr %hci.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i19, align 8
  %write16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write16.i, align 4
  tail call void %14(ptr noundef %rtwdev, i32 noundef %3, i16 noundef zeroext %conv6) #3
  br label %for.inc

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %hci.i19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i19, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i, align 4
  tail call void %18(ptr noundef %rtwdev, i32 noundef %3, i32 noundef %5) #3
  br label %for.inc

for.inc:                                          ; preds = %sw.bb7, %sw.bb5, %sw.bb, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.022, 1
  %incdec.ptr = getelementptr %struct.rtw_backup_info, ptr %bckp.addr.021, i32 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtw_desc_to_mcsrate(i16 noundef zeroext %rate, ptr nocapture noundef writeonly %mcs, ptr nocapture noundef writeonly %nss) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i16 %rate to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %rate)
  %cmp = icmp ult i16 %rate, 12
  br i1 %cmp, label %entry.if.end62_crit_edge, label %if.end

entry.if.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62

if.end:                                           ; preds = %entry
  %0 = add i16 %rate, -44
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %0)
  %1 = icmp ult i16 %0, 10
  br i1 %1, label %if.end.if.end62.sink.split.sink.split_crit_edge, label %if.else

if.end.if.end62.sink.split.sink.split_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62.sink.split.sink.split

if.else:                                          ; preds = %if.end
  %2 = add i16 %rate, -54
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %2)
  %3 = icmp ult i16 %2, 10
  br i1 %3, label %if.else.if.end62.sink.split.sink.split_crit_edge, label %if.else22

if.else.if.end62.sink.split.sink.split_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62.sink.split.sink.split

if.else22:                                        ; preds = %if.else
  %4 = add i16 %rate, -64
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %4)
  %5 = icmp ult i16 %4, 10
  br i1 %5, label %if.else22.if.end62.sink.split.sink.split_crit_edge, label %if.else34

if.else22.if.end62.sink.split.sink.split_crit_edge: ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62.sink.split.sink.split

if.else34:                                        ; preds = %if.else22
  %6 = add i16 %rate, -74
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %6)
  %7 = icmp ult i16 %6, 10
  br i1 %7, label %if.else34.if.end62.sink.split.sink.split_crit_edge, label %land.lhs.true50

if.else34.if.end62.sink.split.sink.split_crit_edge: ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62.sink.split.sink.split

land.lhs.true50:                                  ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp2(i16 28, i16 %rate)
  %cmp52 = icmp ult i16 %rate, 28
  br i1 %cmp52, label %land.lhs.true50.if.end62.sink.split_crit_edge, label %land.lhs.true50.if.end62_crit_edge

land.lhs.true50.if.end62_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62

land.lhs.true50.if.end62.sink.split_crit_edge:    ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62.sink.split

if.end62.sink.split.sink.split:                   ; preds = %if.else34.if.end62.sink.split.sink.split_crit_edge, %if.else22.if.end62.sink.split.sink.split_crit_edge, %if.else.if.end62.sink.split.sink.split_crit_edge, %if.end.if.end62.sink.split.sink.split_crit_edge
  %.sink88 = phi i8 [ 1, %if.end.if.end62.sink.split.sink.split_crit_edge ], [ 2, %if.else.if.end62.sink.split.sink.split_crit_edge ], [ 3, %if.else22.if.end62.sink.split.sink.split_crit_edge ], [ 4, %if.else34.if.end62.sink.split.sink.split_crit_edge ]
  %.sink.ph = phi i8 [ -44, %if.end.if.end62.sink.split.sink.split_crit_edge ], [ -54, %if.else.if.end62.sink.split.sink.split_crit_edge ], [ -64, %if.else22.if.end62.sink.split.sink.split_crit_edge ], [ -74, %if.else34.if.end62.sink.split.sink.split_crit_edge ]
  %8 = ptrtoint ptr %nss to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink88, ptr %nss, align 1
  br label %if.end62.sink.split

if.end62.sink.split:                              ; preds = %if.end62.sink.split.sink.split, %land.lhs.true50.if.end62.sink.split_crit_edge
  %.sink = phi i8 [ -12, %land.lhs.true50.if.end62.sink.split_crit_edge ], [ %.sink.ph, %if.end62.sink.split.sink.split ]
  %conv21 = add i8 %.sink, %conv
  %9 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv21, ptr %mcs, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %land.lhs.true50.if.end62_crit_edge, %entry.if.end62_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_check_hw_ready, !1, !"__ksymtab_check_hw_ready", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/util.c", i32 22, i32 1}
!2 = !{ptr @__ksymtab_rtw_restore_reg, !3, !"__ksymtab_rtw_restore_reg", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw88/util.c", i32 80, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i32 0, i32 33}
