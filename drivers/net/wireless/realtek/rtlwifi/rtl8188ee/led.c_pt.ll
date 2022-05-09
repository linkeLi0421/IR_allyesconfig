; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/led.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/led.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtl_led = type { ptr, i32, i8 }
%struct.rtl_priv = type { ptr, %struct.completion, %struct.list_head, ptr, ptr, %struct.rtl_dualmac_easy_concurrent_ctl, %struct.rtl_dmsp_ctl, %struct.rtl_locks, %struct.rtl_works, %struct.rtl_mac, %struct.rtl_hal, %struct.rtl_regulatory, %struct.rtl_rfkill, %struct.rtl_io, %struct.rtl_phy, %struct.rtl_dm, %struct.rtl_security, %struct.rtl_efuse, %struct.rtl_led_ctl, %struct.rtl_tx_report, %struct.rtl_scan_list, %struct.rtl_ps_ctl, %struct.rate_adaptive, %struct.dynamic_primary_cca, %struct.wireless_stats, %struct.rt_link_detect, %struct.false_alarm_statistics, ptr, %struct.list_head, %struct.sk_buff_head, %struct.rtl_debug, i32, ptr, ptr, i32, %struct.dig_t, %struct.ps_t, i32, i32, i32, i32, i8, i8, ptr, i32, i8, i8, [5 x i8], %struct.proxim, %struct.bt_coexist_info, i8, %struct.wiphy_wowlan_support, [0 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtl_dualmac_easy_concurrent_ctl = type { i32, i8, i8, i8, i8 }
%struct.rtl_dmsp_ctl = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32 }
%struct.rtl_locks = type { %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.rtl_works = type { ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.tasklet_struct, %struct.tasklet_struct, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rtl_mac = type { [6 x i8], i8, i8, i32, i32, [6 x %struct.ieee80211_supported_band], ptr, ptr, i32, [9 x %struct.rtl_tid_data], i32, i32, i32, i8, i8, i8, i32, i16, i16, i16, i8, i8, i8, [9 x %struct.sk_buff_head], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], i32, [16 x i8], i32, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i64, i8, i8, i16, i8, i32, i8, i8, i8, i8, [5 x %struct.ieee80211_tx_queue_params], [4 x %struct.rtl_qos_parameters], i64, i64, i32, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.rtl_tid_data = type { %struct.rtl_ht_agg }
%struct.rtl_ht_agg = type { i16, i16, i16, i64, i32, i8, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtl_qos_parameters = type { i16, i16, i8, i8, i16 }
%struct.rtl_hal = type { ptr, i8, i8, i8, i8, i8, i8, i8, %struct.bt_coexist_8723, i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i16, i16, i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, %struct.p2p_ps_offload_t, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i64, i32, ptr, i8, i8, i8 }
%struct.bt_coexist_8723 = type { i32, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, %struct.btdm_8723 }
%struct.btdm_8723 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i8, i32, i32, i32, i8, i32, i32, i32, i32, i8, i8 }
%struct.p2p_ps_offload_t = type { i8 }
%struct.rtl_regulatory = type { [2 x i8], i16, i16, i32, i16, i16, i16, ptr }
%struct.rtl_rfkill = type { i8 }
%struct.rtl_io = type { ptr, %struct.mutex, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_phy = type { [4 x %struct.bb_reg_def], %struct.init_gain, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i32, [16 x i32], [4 x i32], [10 x i32], i8, [4 x i8], i8, i8, [46 x %struct.iqk_matrix_regs], i8, i8, i8, i8, [13 x [16 x i32]], [13 x [16 x i32]], [2 x [4 x [4 x [84 x i32]]]], [4 x [4 x [6 x i8]]], [4 x [4 x [5 x i8]]], [4 x i8], i8, i8, i8, i8, [4 x [4 x [6 x [14 x [4 x i8]]]]], [4 x [4 x [6 x [49 x [4 x i8]]]]], [2 x i32], i8, [2 x i32], i32, i8, i32, i8, [10 x %struct.phy_parameters], i16, i8, i32 }
%struct.bb_reg_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.init_gain = type { i8, i8, i8, i8, i8 }
%struct.iqk_matrix_regs = type { i8, [1 x [8 x i32]] }
%struct.phy_parameters = type { i16, ptr }
%struct.rtl_dm = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, [6 x i8], i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, %struct.dm_phy_dbg_info, i8, i8, i8, [2 x i32], i32, i32, i8, i32, i32, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.fast_ant_training, i8, i8, i32, i32, i32, i32, i8, ptr, i8, i64, i64 }
%struct.dm_phy_dbg_info = type { [4 x i8], i64, i64, i64, i16, i16, [4 x i32] }
%struct.fast_ant_training = type { [6 x i8], i8, i8, i8, [7 x i32], [7 x i32], [7 x i32], i8, i32, [33 x i8], [33 x i8], [33 x i8], [33 x i32], [33 x i32], [33 x i32], [33 x i32], i8, i8 }
%struct.rtl_security = type { i8, i8, i8, i32, i32, i32, [32 x [6 x i8]], [5 x [61 x i8]], [5 x i8], ptr }
%struct.rtl_efuse = type { ptr, i8, i8, i16, [2 x [512 x i8]], i16, i8, i8, i8, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i8, [2 x i8], [3 x [2 x i8]], [12 x i8], [12 x i8], [4 x [3 x i8]], [4 x [12 x i8]], [4 x [12 x i8]], [2 x i8], i8, i8, [2 x [3 x i8]], [2 x [59 x i8]], [2 x [59 x i8]], [4 x [14 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [7 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], i8, i16, [3 x i8], i8, i8, [2 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_led_ctl = type { i8, %struct.rtl_led, %struct.rtl_led }
%struct.rtl_tx_report = type { %struct.atomic_t, i16, i32, i16, %struct.sk_buff_head }
%struct.rtl_scan_list = type { i32, %struct.list_head }
%struct.rtl_ps_ctl = type { i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rtl_p2p_ps_info, i8, i8, i8, i8, i8, i32 }
%struct.rtl_p2p_ps_info = type { i32, i32, i8, i8, i8, i8, [2 x i8], [2 x i32], [2 x i32], [2 x i32] }
%struct.rate_adaptive = type { i8, i8, i16, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.dynamic_primary_cca = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.wireless_stats = type { i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, [4 x i32], i32, i32, i32, i32, i32, i32, [4 x i8], [4 x i8], [2 x i8], [4 x i16], [4 x i16], %struct.rt_smooth_data, %struct.rt_smooth_data }
%struct.rt_smooth_data = type { [100 x i32], i32, i32, i32 }
%struct.rt_link_detect = type { i32, i32, [4 x i32], [4 x i32], i32, i32, i8, i8, i8, i8, i8, [9 x [4 x i32]], [9 x i32], [9 x i8] }
%struct.false_alarm_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.rtl_debug = type { ptr, [20 x i8] }
%struct.dig_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ps_t = type { i8, i8, i8, i8, i8, i32 }
%struct.proxim = type { i8, ptr, ptr, ptr }
%struct.bt_coexist_info = type { ptr, %struct.rtl_btc_info, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_btc_info = type { i8, i8, i8, i8, i8, i8, i32 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LedAddr:%X ledpin=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"switch case %#x not processed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ledaction %d,\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 22, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 38, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/led.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 126, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_sw_led_on(ptr nocapture noundef readonly %hw, ptr nocapture noundef %pled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ledpin = getelementptr inbounds %struct.rtl_led, ptr %pled, i32 0, i32 1
  %2 = ptrtoint ptr %ledpin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ledpin, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 256, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 78, i32 noundef %3) #3
  %4 = ptrtoint ptr %ledpin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ledpin, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %7 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %8(ptr noundef %1, i32 noundef 78) #3
  %9 = and i8 %call.i, -112
  %10 = or i8 %9, 96
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %11 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write8_async.i, align 4
  tail call void %12(ptr noundef %1, i32 noundef 78, i8 noundef zeroext %10) #3
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %write_readback.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read8_sync.i, align 4
  %call.i20 = tail call zeroext i8 %18(ptr noundef %1, i32 noundef 78) #3
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %read8_sync.i21 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %19 = ptrtoint ptr %read8_sync.i21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i21, align 4
  %call.i22 = tail call zeroext i8 %20(ptr noundef %1, i32 noundef 77) #3
  %21 = and i8 %call.i22, 16
  %write8_async.i23 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %22 = ptrtoint ptr %write8_async.i23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8_async.i23, align 4
  tail call void %23(ptr noundef %1, i32 noundef 77, i8 noundef zeroext %21) #3
  %cfg.i24 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %24 = ptrtoint ptr %cfg.i24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i24, align 8
  %write_readback.i25 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_readback.i25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %write_readback.i25, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i26 = icmp eq i8 %27, 0
  br i1 %tobool.not.i26, label %sw.bb4.sw.epilog_crit_edge, label %if.then.i29

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then.i29:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %read8_sync.i21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read8_sync.i21, align 4
  %call.i28 = tail call zeroext i8 %29(ptr noundef %1, i32 noundef 77) #3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %5) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.i29, %sw.bb4.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ledon = getelementptr inbounds %struct.rtl_led, ptr %pled, i32 0, i32 2
  %30 = ptrtoint ptr %ledon to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %ledon, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_sw_led_off(ptr nocapture noundef readonly %hw, ptr nocapture noundef %pled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ledpin = getelementptr inbounds %struct.rtl_led, ptr %pled, i32 0, i32 1
  %2 = ptrtoint ptr %ledpin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ledpin, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 256, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 78, i32 noundef %3) #3
  %4 = ptrtoint ptr %ledpin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ledpin, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %5, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %7 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %8(ptr noundef %1, i32 noundef 78) #3
  %9 = and i8 %call.i, -112
  %ledctl = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %ledctl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ledctl, align 8, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %12 = or i8 %9, 104
  %write8_async.i54 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %13 = ptrtoint ptr %write8_async.i54 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write8_async.i54, align 4
  tail call void %14(ptr noundef %1, i32 noundef 78, i8 noundef zeroext %12) #3
  %cfg.i55 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %15 = ptrtoint ptr %cfg.i55 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i55, align 8
  %write_readback.i56 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_readback.i56 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_readback.i56, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i57 = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  br i1 %tobool.not.i57, label %if.then.rtl_write_byte.exit_crit_edge, label %if.then.i

if.then.rtl_write_byte.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i, align 4
  %call.i43 = tail call zeroext i8 %20(ptr noundef %1, i32 noundef 78) #3
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.then.rtl_write_byte.exit_crit_edge
  %21 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i, align 4
  %call.i45 = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 67) #3
  %23 = and i8 %call.i45, -2
  %24 = ptrtoint ptr %write8_async.i54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write8_async.i54, align 4
  tail call void %25(ptr noundef %1, i32 noundef 67, i8 noundef zeroext %23) #3
  %26 = ptrtoint ptr %cfg.i55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i55, align 8
  %write_readback.i48 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_readback.i48 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %write_readback.i48, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i49 = icmp eq i8 %29, 0
  br i1 %tobool.not.i49, label %rtl_write_byte.exit.sw.epilog_crit_edge, label %if.then.i52

rtl_write_byte.exit.sw.epilog_crit_edge:          ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then.i52:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i, align 4
  %call.i51 = tail call zeroext i8 %31(ptr noundef %1, i32 noundef 67) #3
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  br i1 %tobool.not.i57, label %if.else.sw.epilog_crit_edge, label %if.then.i60

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then.i60:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read8_sync.i, align 4
  %call.i59 = tail call zeroext i8 %33(ptr noundef %1, i32 noundef 78) #3
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %read8_sync.i62 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %34 = ptrtoint ptr %read8_sync.i62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read8_sync.i62, align 4
  %call.i63 = tail call zeroext i8 %35(ptr noundef %1, i32 noundef 77) #3
  %36 = and i8 %call.i63, 16
  %37 = or i8 %36, 8
  %write8_async.i64 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %38 = ptrtoint ptr %write8_async.i64 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write8_async.i64, align 4
  tail call void %39(ptr noundef %1, i32 noundef 77, i8 noundef zeroext %37) #3
  %cfg.i65 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %40 = ptrtoint ptr %cfg.i65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i65, align 8
  %write_readback.i66 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write_readback.i66 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %write_readback.i66, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i67 = icmp eq i8 %43, 0
  br i1 %tobool.not.i67, label %sw.bb16.sw.epilog_crit_edge, label %if.then.i70

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then.i70:                                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %read8_sync.i62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read8_sync.i62, align 4
  %call.i69 = tail call zeroext i8 %45(ptr noundef %1, i32 noundef 77) #3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %5) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.i70, %sw.bb16.sw.epilog_crit_edge, %if.then.i60, %if.else.sw.epilog_crit_edge, %if.then.i52, %rtl_write_byte.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ledon = getelementptr inbounds %struct.rtl_led, ptr %pled, i32 0, i32 2
  %46 = ptrtoint ptr %ledon to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %ledon, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl88ee_init_sw_leds(ptr noundef %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sw_led0 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %sw_led0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hw, ptr %sw_led0, align 4
  %ledpin2.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 18, i32 1, i32 1
  %3 = ptrtoint ptr %ledpin2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %ledpin2.i, align 4
  %ledon.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 18, i32 1, i32 2
  %4 = ptrtoint ptr %ledon.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ledon.i, align 4
  %sw_led1 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 18, i32 2
  %5 = ptrtoint ptr %sw_led1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hw, ptr %sw_led1, align 4
  %ledpin2.i5 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 18, i32 2, i32 1
  %6 = ptrtoint ptr %ledpin2.i5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %ledpin2.i5, align 4
  %ledon.i6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 18, i32 2, i32 2
  %7 = ptrtoint ptr %ledon.i6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ledon.i6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_led_control(ptr nocapture noundef readonly %hw, i32 noundef %ledaction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rfoff_reason = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 18
  %2 = ptrtoint ptr %rfoff_reason to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rfoff_reason, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %3)
  %cmp = icmp ugt i32 %3, 536870912
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = zext i32 %ledaction to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %ledaction, label %land.lhs.true.if.end_crit_edge [
    i32 4, label %land.lhs.true.cleanup_crit_edge
    i32 5, label %land.lhs.true.cleanup_crit_edge25
    i32 6, label %land.lhs.true.cleanup_crit_edge26
    i32 2, label %land.lhs.true.cleanup_crit_edge27
    i32 3, label %land.lhs.true.cleanup_crit_edge28
    i32 8, label %land.lhs.true.cleanup_crit_edge29
    i32 1, label %land.lhs.true.cleanup_crit_edge30
  ]

land.lhs.true.cleanup_crit_edge30:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.cleanup_crit_edge29:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.cleanup_crit_edge28:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.cleanup_crit_edge27:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.cleanup_crit_edge26:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.cleanup_crit_edge25:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 256, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %ledaction) #3
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %sw_led0.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 18, i32 1
  %7 = zext i32 %ledaction to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %ledaction, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb.i_crit_edge
    i32 2, label %if.end.sw.bb.i_crit_edge31
    i32 3, label %if.end.sw.bb.i_crit_edge32
    i32 7, label %sw.bb1.i
  ]

if.end.sw.bb.i_crit_edge32:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge31:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge31, %if.end.sw.bb.i_crit_edge32
  tail call void @rtl88ee_sw_led_on(ptr noundef %hw, ptr noundef %sw_led0.i) #3
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @rtl88ee_sw_led_off(ptr noundef %hw, ptr noundef %sw_led0.i) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1.i, %sw.bb.i, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge25, %land.lhs.true.cleanup_crit_edge26, %land.lhs.true.cleanup_crit_edge27, %land.lhs.true.cleanup_crit_edge28, %land.lhs.true.cleanup_crit_edge29, %land.lhs.true.cleanup_crit_edge30
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/led.c", i32 22, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/led.c", i32 38, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/led.c", i32 126, i32 2}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
