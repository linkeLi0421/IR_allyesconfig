; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl12xx/event.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl12xx/event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.wl1271 = type { i8, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, i32, i32, i8, i32, i8, i8, %struct.mutex, i32, %struct.wlcore_partition_set, %struct.wl1271_chip, i32, ptr, i32, ptr, i32, i8, i32, i32, [3 x %struct.mac_address], i32, i8, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [16 x i8], %struct.list_head, i8, i8, ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i64, [4 x i32], [12 x i32], %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, [1 x i32], [32 x ptr], i32, i32, ptr, i32, ptr, %struct.work_struct, ptr, i32, i32, i32, %struct.work_struct, i8, [2 x i32], [2 x i32], ptr, i32, i32, i32, [2 x i32], ptr, %struct.wl1271_scan, %struct.delayed_work, ptr, %struct.delayed_work, ptr, i32, ptr, i32, %struct.wl1271_stats, ptr, i32, [1 x i32], ptr, ptr, ptr, %struct.wlcore_conf, i8, i8, i32, i8, [2 x %struct.ieee80211_supported_band], i8, i8, [16 x %struct.wl1271_link], i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, i32, i8, i8, ptr, i8, i8, [2 x %struct.ieee80211_sta_ht_cap], i32, i8, i32, i32, [1 x i32], i32, i32, %struct.mutex, i32, i32, [5 x i32], [5 x i32], %struct.completion, ptr, i8, i32, [6 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wlcore_partition_set = type { %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition }
%struct.wlcore_partition = type { i32, i32 }
%struct.wl1271_chip = type { i32, [32 x i8], [5 x i32], [32 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wl1271_scan = type { ptr, [2 x i32], i8, i8, [33 x i8], i32 }
%struct.wl1271_stats = type { ptr, i32, i32, i32, i32 }
%struct.wlcore_conf = type <{ %struct.conf_sg_settings, %struct.conf_rx_settings, %struct.conf_tx_settings, %struct.conf_conn_settings, %struct.conf_itrim_settings, %struct.conf_pm_config_settings, %struct.conf_roam_trigger_settings, %struct.conf_scan_settings, %struct.conf_sched_scan_settings, %struct.conf_ht_setting, %struct.conf_memory_settings, %struct.conf_fm_coex, %struct.conf_rx_streaming_settings, %struct.conf_fwlog, %struct.conf_rate_policy_settings, %struct.conf_hangover_settings, %struct.conf_recovery_settings }>
%struct.conf_sg_settings = type <{ [67 x i32], i8 }>
%struct.conf_rx_settings = type <{ i32, i32, i16, i16, i16, i16, i16, i16, i16, i8 }>
%struct.conf_tx_settings = type <{ i8, %struct.conf_tx_rate_class, i8, [4 x %struct.conf_tx_ac_category], i8, i16, i8, [8 x %struct.conf_tx_tid], i16, i16, i16, i32, i32, i8, i8, i32, i8, i8 }>
%struct.conf_tx_rate_class = type <{ i32, i8, i8, i8 }>
%struct.conf_tx_ac_category = type <{ i8, i8, i16, i8, i16 }>
%struct.conf_tx_tid = type <{ i8, i8, i8, i8, i8, [2 x i32] }>
%struct.conf_conn_settings = type <{ i8, i8, i8, i8, i8, i8, [32 x %struct.conf_bcn_filt_rule], i32, i32, i32, i32, i8, i8, %struct.conf_sig_weights, i8, i8, i8, i8, i8, i16, i8, i32, i8, i8, i8 }>
%struct.conf_bcn_filt_rule = type { i8, i8, [3 x i8], i8, [2 x i8] }
%struct.conf_sig_weights = type { i8, i8, i8, i8 }
%struct.conf_itrim_settings = type <{ i8, i32 }>
%struct.conf_pm_config_settings = type <{ i32, i8 }>
%struct.conf_roam_trigger_settings = type { i16, i8, i8, i8, i8 }
%struct.conf_scan_settings = type <{ i32, i32, i32, i32, i32, i32, i16, i32 }>
%struct.conf_sched_scan_settings = type <{ i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16 }>
%struct.conf_ht_setting = type <{ i8, i8, i16, i8 }>
%struct.conf_memory_settings = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.conf_fm_coex = type { i8, i8, i8, i8, i16, i16, i32, i16, i8, i8 }
%struct.conf_rx_streaming_settings = type <{ i32, i8, i8, i8 }>
%struct.conf_fwlog = type { i8, i8, i8, i8, i8, i8 }
%struct.conf_rate_policy_settings = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [13 x i8] }
%struct.conf_hangover_settings = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.conf_recovery_settings = type { i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wl1271_link = type { [4 x %struct.sk_buff_head], i8, i8, [6 x i8], i8, i8, i8, ptr, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wl12xx_event_mailbox = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, [2 x i8], i8, i8, i8, [9 x i8] }

@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl12xx_process_mailbox_events.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl12xx\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wl12xx_process_mailbox_events\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ti/wl12xx/event.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wlcore: MBOX vector: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@wl12xx_process_mailbox_events.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wlcore: status: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@wl12xx_process_mailbox_events.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"wlcore: PERIODIC_SCAN_REPORT_EVENT (status 0x%0x)\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 43, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 46, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [42 x i8] c"../drivers/net/wireless/ti/wl12xx/event.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 54, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl12xx_wait_for_event(ptr noundef %wl, i32 noundef %event, ptr noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %local_event.0 = phi i32 [ 134217728, %sw.bb1 ], [ 32768, %entry.sw.epilog_crit_edge ]
  %call = tail call i32 @wlcore_cmd_wait_for_event_or_timeout(ptr noundef %wl, i32 noundef %local_event.0, ptr noundef %timeout) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_cmd_wait_for_event_or_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl12xx_process_mailbox_events(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 73
  %0 = ptrtoint ptr %mbox1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %1, align 1
  %events_mask = getelementptr inbounds %struct.wl12xx_event_mailbox, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %events_mask to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %events_mask, align 1
  %6 = xor i32 %5, -1
  %7 = and i32 %3, %6
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %9 = load i32, ptr @wl12xx_debug_level, align 4
  %and2 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.body5, !prof !21

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end16

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_process_mailbox_events.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_process_mailbox_events, %if.then13)) #3
          to label %do.end16 [label %if.then13], !srcloc !22

if.then13:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_process_mailbox_events.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.3, i32 noundef %8) #3
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body5, %entry.do.end16_crit_edge
  %and17 = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.end16.if.end53_crit_edge, label %do.body20

do.end16.if.end53_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

do.body20:                                        ; preds = %do.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %10 = load i32, ptr @wl12xx_debug_level, align 4
  %and21 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.do.end48_crit_edge, label %do.body30, !prof !21

do.body20.do.end48_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end48

do.body30:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_process_mailbox_events.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_process_mailbox_events, %if.then42)) #3
          to label %do.end48 [label %if.then42], !srcloc !22

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #5
  %scheduled_scan_status = getelementptr inbounds %struct.wl12xx_event_mailbox, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %scheduled_scan_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %scheduled_scan_status, align 1
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_process_mailbox_events.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.4, i32 noundef %conv) #3
  br label %do.end48

do.end48:                                         ; preds = %if.then42, %do.body30, %do.body20.do.end48_crit_edge
  %scan_wlvif = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 78
  %13 = ptrtoint ptr %scan_wlvif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scan_wlvif, align 4
  %tobool49.not = icmp eq ptr %14, null
  br i1 %tobool49.not, label %do.end48.if.end53_crit_edge, label %if.then50

do.end48.if.end53_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

if.then50:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @wl12xx_scan_completed(ptr noundef %wl, ptr noundef nonnull %14) #3
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %do.end48.if.end53_crit_edge, %do.end16.if.end53_crit_edge
  %and54 = and i32 %8, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.if.end88_crit_edge, label %do.body57

if.end53.if.end88_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end88

do.body57:                                        ; preds = %if.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %15 = load i32, ptr @wl12xx_debug_level, align 4
  %and58 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body57.do.end87_crit_edge, label %do.body67, !prof !21

do.body57.do.end87_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end87

do.body67:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_process_mailbox_events.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_process_mailbox_events, %if.then79)) #3
          to label %do.end87 [label %if.then79], !srcloc !22

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #5
  %scheduled_scan_status80 = getelementptr inbounds %struct.wl12xx_event_mailbox, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %scheduled_scan_status80 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %scheduled_scan_status80, align 1
  %conv81 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_process_mailbox_events.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.5, i32 noundef %conv81) #3
  br label %do.end87

do.end87:                                         ; preds = %if.then79, %do.body67, %do.body57.do.end87_crit_edge
  tail call void @wlcore_scan_sched_scan_results(ptr noundef %wl) #3
  br label %if.end88

if.end88:                                         ; preds = %do.end87, %if.end53.if.end88_crit_edge
  %and89 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end88.if.end93_crit_edge, label %if.then91

if.end88.if.end93_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end93

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #5
  %scheduled_scan_status92 = getelementptr inbounds %struct.wl12xx_event_mailbox, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %scheduled_scan_status92 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %scheduled_scan_status92, align 1
  tail call void @wlcore_event_sched_scan_completed(ptr noundef %wl, i8 noundef zeroext %19) #3
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end88.if.end93_crit_edge
  %and94 = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end97_crit_edge, label %if.then96

if.end93.if.end97_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end97

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #5
  %soft_gemini_sense_info = getelementptr inbounds %struct.wl12xx_event_mailbox, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %soft_gemini_sense_info to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %soft_gemini_sense_info, align 1
  tail call void @wlcore_event_soft_gemini_sense(ptr noundef %wl, i8 noundef zeroext %21) #3
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end93.if.end97_crit_edge
  %and98 = and i32 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end97.if.end101_crit_edge, label %if.then100

if.end97.if.end101_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end101

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @wlcore_event_beacon_loss(ptr noundef %wl, i32 noundef 255) #3
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end97.if.end101_crit_edge
  %and102 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end105_crit_edge, label %if.then104

if.end101.if.end105_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #5
  %rssi_snr_trigger_metric = getelementptr inbounds %struct.wl12xx_event_mailbox, ptr %1, i32 0, i32 10
  tail call void @wlcore_event_rssi_trigger(ptr noundef %wl, ptr noundef %rssi_snr_trigger_metric) #3
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end101.if.end105_crit_edge
  %and106 = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end105.if.end111_crit_edge, label %if.then108

if.end105.if.end111_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end111

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #5
  %role_id = getelementptr inbounds %struct.wl12xx_event_mailbox, ptr %1, i32 0, i32 22
  %22 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %role_id, align 1
  %conv109 = zext i8 %23 to i32
  %shl = shl nuw i32 1, %conv109
  %rx_ba_allowed = getelementptr inbounds %struct.wl12xx_event_mailbox, ptr %1, i32 0, i32 23
  %24 = ptrtoint ptr %rx_ba_allowed to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rx_ba_allowed, align 1
  %conv110 = zext i8 %25 to i32
  tail call void @wlcore_event_ba_rx_constraint(ptr noundef %wl, i32 noundef %shl, i32 noundef %conv110) #3
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.end105.if.end111_crit_edge
  %and112 = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end111.if.end116_crit_edge, label %if.then114

if.end111.if.end116_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end116

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #5
  %channel_switch_status = getelementptr inbounds %struct.wl12xx_event_mailbox, ptr %1, i32 0, i32 26
  %26 = ptrtoint ptr %channel_switch_status to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %channel_switch_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool115 = icmp ne i8 %27, 0
  tail call void @wlcore_event_channel_switch(ptr noundef %wl, i32 noundef 255, i1 noundef zeroext %tobool115) #3
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %if.end111.if.end116_crit_edge
  %and117 = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end116.if.end120_crit_edge, label %if.then119

if.end116.if.end120_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end120

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @wlcore_event_dummy_packet(ptr noundef %wl) #3
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.end116.if.end120_crit_edge
  %and121 = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end120.if.end125_crit_edge, label %if.then123

if.end120.if.end125_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end125

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #5
  %sta_tx_retry_exceeded = getelementptr inbounds %struct.wl12xx_event_mailbox, ptr %1, i32 0, i32 17
  %28 = ptrtoint ptr %sta_tx_retry_exceeded to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %sta_tx_retry_exceeded, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv124 = zext i16 %30 to i32
  tail call void @wlcore_event_max_tx_failure(ptr noundef %wl, i32 noundef %conv124) #3
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.end120.if.end125_crit_edge
  %and126 = and i32 %8, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end125.if.end130_crit_edge, label %if.then128

if.end125.if.end130_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end130

if.then128:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #5
  %sta_aging_status = getelementptr inbounds %struct.wl12xx_event_mailbox, ptr %1, i32 0, i32 16
  %31 = ptrtoint ptr %sta_aging_status to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %sta_aging_status, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv129 = zext i16 %33 to i32
  tail call void @wlcore_event_inactive_sta(ptr noundef %wl, i32 noundef %conv129) #3
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.end125.if.end130_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool132.not = icmp sgt i32 %8, -1
  br i1 %tobool132.not, label %if.end130.if.end134_crit_edge, label %if.then133

if.end130.if.end134_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end134

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @wlcore_event_roc_complete(ptr noundef %wl) #3
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.end130.if.end134_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl12xx_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_scan_sched_scan_results(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_sched_scan_completed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_soft_gemini_sense(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_beacon_loss(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_rssi_trigger(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_ba_rx_constraint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_channel_switch(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_dummy_packet(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_max_tx_failure(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_inactive_sta(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_roc_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl12xx/event.c", i32 43, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wl12xx_process_mailbox_events.__UNIQUE_ID_ddebug348, !1, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl12xx/event.c", i32 46, i32 3}
!8 = !{ptr @wl12xx_process_mailbox_events.__UNIQUE_ID_ddebug349, !7, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ti/wl12xx/event.c", i32 54, i32 3}
!11 = !{ptr @wl12xx_process_mailbox_events.__UNIQUE_ID_ddebug350, !10, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2148310779, i64 2148310784, i64 2148310797, i64 2148310841, i64 2148310875, i64 2148310896}
