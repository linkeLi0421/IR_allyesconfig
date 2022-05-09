; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wlcore/init.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wlcore/init.c"
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
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.133, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.133 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.134] }
%struct.anon.134 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_hdr_3addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.ieee80211_qos_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, i16 }
%struct.wl12xx_vif = type { ptr, %struct.list_head, i32, i8, i8, i8, i8, i8, %union.anon.129, i32, [4 x i32], [1 x i32], [33 x i8], i8, i32, i32, i32, [2 x i32], i32, i32, i32, ptr, i32, i32, i16, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.delayed_work, %struct.delayed_work, i32, i32, i8, i32, %struct.delayed_work, i32, %struct.ieee80211_sta_ht_cap, %struct.work_struct, i64, %struct.anon.132 }
%union.anon.129 = type { %struct.anon.131 }
%struct.anon.131 = type { i8, i8, [1 x i32], [14 x ptr], i8, i8, [4 x i8] }
%struct.anon.132 = type { [0 x i8] }
%struct.wlcore_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }

@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl1271_init_ap_rates.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlcore\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl1271_init_ap_rates\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ti/wlcore/init.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wlcore: AP basic rate set: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/ti/wlcore/wlcore_i.h\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.15 = private constant [41 x i8] c"../drivers/net/wireless/ti/wlcore/init.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 429, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/ti/wlcore/wlcore_i.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 495, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_init_templates_config(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_templ_id_2_4 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 120
  %0 = ptrtoint ptr %scan_templ_id_2_4 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scan_templ_id_2_4, align 4
  %conv = zext i8 %1 to i16
  %call = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext %conv, ptr noundef null, i32 noundef 512, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %scan_templ_id_5 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 121
  %2 = ptrtoint ptr %scan_templ_id_5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scan_templ_id_5, align 1
  %conv2 = zext i8 %3 to i16
  %call3 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext %conv2, ptr noundef null, i32 noundef 512, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %quirks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 8
  %and = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7.if.end21_crit_edge, label %if.then8

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then8:                                         ; preds = %if.end7
  %sched_scan_templ_id_2_4 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 122
  %6 = ptrtoint ptr %sched_scan_templ_id_2_4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sched_scan_templ_id_2_4, align 2
  %conv9 = zext i8 %7 to i16
  %call10 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext %conv9, ptr noundef null, i32 noundef 512, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then8.cleanup_crit_edge, label %if.end14

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.then8
  %sched_scan_templ_id_5 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 123
  %8 = ptrtoint ptr %sched_scan_templ_id_5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sched_scan_templ_id_5, align 1
  %conv15 = zext i8 %9 to i16
  %call16 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext %conv15, ptr noundef null, i32 noundef 512, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.cleanup_crit_edge, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end14.if.end21_crit_edge, %if.end7.if.end21_crit_edge
  %call22 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 24, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %call27 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext 6, ptr noundef null, i32 noundef 16, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %call32 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext 5, ptr noundef null, i32 noundef 26, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %call37 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext 4, ptr noundef null, i32 noundef 252, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.cleanup_crit_edge, label %if.end41

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %call42 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext 1, ptr noundef null, i32 noundef 252, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end41.cleanup_crit_edge, label %if.end46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %call47 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext 15, ptr noundef null, i32 noundef 44, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end46.cleanup_crit_edge, label %if.end51

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %call52 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext 14, ptr noundef null, i32 noundef 512, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end51.cleanup_crit_edge, label %if.end56

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %call57 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext 13, ptr noundef null, i32 noundef 512, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.cleanup_crit_edge, label %if.end61

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %call62 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext 16, ptr noundef null, i32 noundef 26, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end61.cleanup_crit_edge, label %for.body.preheader

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %if.end61
  %call69 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext 7, ptr noundef null, i32 noundef 26, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %for.body.preheader.cleanup_crit_edge, label %for.cond

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %call69.1 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext 7, ptr noundef null, i32 noundef 26, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.1)
  %cmp70.1 = icmp slt i32 %call69.1, 0
  br i1 %cmp70.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call69.2 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext 7, ptr noundef null, i32 noundef 26, i32 noundef 2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.2)
  %cmp70.2 = icmp slt i32 %call69.2, 0
  br i1 %cmp70.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  %call69.3 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext -1, i16 noundef zeroext 7, ptr noundef null, i32 noundef 26, i32 noundef 3, i32 noundef 0) #5
  %10 = call i32 @llvm.smin.i32(i32 %call69.3, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call10, %if.then8.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ %call47, %if.end46.cleanup_crit_edge ], [ %call52, %if.end51.cleanup_crit_edge ], [ %call57, %if.end56.cleanup_crit_edge ], [ %call62, %if.end61.cleanup_crit_edge ], [ %call69, %for.body.preheader.cleanup_crit_edge ], [ %call69.1, %for.cond.cleanup_crit_edge ], [ %call69.2, %for.cond.1.cleanup_crit_edge ], [ %10, %for.cond.2 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_template_set(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_init_pta(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl12xx_acx_sg_cfg(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sg_enabled = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 95
  %0 = ptrtoint ptr %sg_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sg_enabled, align 8, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  %call1 = tail call i32 @wl1271_acx_sg_enable(ptr noundef %wl, i1 noundef zeroext %tobool) #5
  %2 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_acx_sg_cfg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_sg_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_init_energy_detection(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1271_acx_cca_threshold(ptr noundef %wl) #5
  %0 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_cca_threshold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_sta_hw_init(ptr noundef %wl, ptr noundef %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl12xx_acx_config_ps(ptr noundef %wl, ptr noundef %wlvif) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @wl1271_acx_fm_coex(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @wl1271_acx_sta_rate_policies(ptr noundef %wl, ptr noundef %wlvif) #5
  %0 = tail call i32 @llvm.smin.i32(i32 %call5, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_acx_config_ps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_fm_coex(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_sta_rate_policies(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_ap_init_templates(ptr noundef %wl, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %vif, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.wl12xx_vif_to_data.exit_crit_edge, !prof !18

entry.wl12xx_vif_to_data.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl12xx_vif_to_data.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 495, i32 noundef 9, ptr noundef null) #5
  br label %wl12xx_vif_to_data.exit

wl12xx_vif_to_data.exit:                          ; preds = %do.end.i, %entry.wl12xx_vif_to_data.exit_crit_edge
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 26) #8
  %tobool.not.i28 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i28, label %wl1271_ap_init_deauth_template.exit.thread, label %wl1271_ap_init_deauth_template.exit

wl1271_ap_init_deauth_template.exit.thread:       ; preds = %wl12xx_vif_to_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef null) #5
  br label %cleanup

wl1271_ap_init_deauth_template.exit:              ; preds = %wl12xx_vif_to_data.exit
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -16384, ptr %call7.i.i.i, align 8
  %basic_rate_set.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 35
  %2 = ptrtoint ptr %basic_rate_set.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %basic_rate_set.i, align 8
  %call1.i = tail call i32 @wl1271_tx_min_rate_get(ptr noundef %wl, i32 noundef %3) #5
  %role_id.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %4 = ptrtoint ptr %role_id.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %role_id.i, align 2
  %call2.i = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext %5, i16 noundef zeroext 16, ptr noundef nonnull %call7.i.i.i, i32 noundef 26, i32 noundef 0, i32 noundef %call1.i) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %wl1271_ap_init_deauth_template.exit.cleanup_crit_edge, label %if.end

wl1271_ap_init_deauth_template.exit.cleanup_crit_edge: ; preds = %wl1271_ap_init_deauth_template.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %wl1271_ap_init_deauth_template.exit
  br i1 %tobool.not.i, label %do.end.i.i, label %if.end.wl12xx_vif_to_data.exit.i_crit_edge, !prof !18

if.end.wl12xx_vif_to_data.exit.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl12xx_vif_to_data.exit.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 495, i32 noundef 9, ptr noundef null) #5
  br label %wl12xx_vif_to_data.exit.i

wl12xx_vif_to_data.exit.i:                        ; preds = %do.end.i.i, %if.end.wl12xx_vif_to_data.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 24) #8
  %tobool.not.i30 = icmp eq ptr %call7.i.i.i29, null
  br i1 %tobool.not.i30, label %wl1271_ap_init_null_template.exit.thread, label %wl1271_ap_init_null_template.exit

wl1271_ap_init_null_template.exit.thread:         ; preds = %wl12xx_vif_to_data.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef null) #5
  br label %cleanup

wl1271_ap_init_null_template.exit:                ; preds = %wl12xx_vif_to_data.exit.i
  %7 = ptrtoint ptr %call7.i.i.i29 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 18434, ptr %call7.i.i.i29, align 8
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %call7.i.i.i29, i32 0, i32 3
  %addr.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %addr2.i, ptr %addr.i, i32 6)
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %call7.i.i.i29, i32 0, i32 4
  %9 = call ptr @memcpy(ptr %addr3.i, ptr %addr.i, i32 6)
  %10 = ptrtoint ptr %basic_rate_set.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %basic_rate_set.i, align 8
  %call6.i = tail call i32 @wl1271_tx_min_rate_get(ptr noundef %wl, i32 noundef %11) #5
  %12 = ptrtoint ptr %role_id.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %role_id.i, align 2
  %call7.i = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext %13, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i29, i32 noundef 24, i32 noundef 0, i32 noundef %call6.i) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp3 = icmp slt i32 %call7.i, 0
  br i1 %cmp3, label %wl1271_ap_init_null_template.exit.cleanup_crit_edge, label %if.end5

wl1271_ap_init_null_template.exit.cleanup_crit_edge: ; preds = %wl1271_ap_init_null_template.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %wl1271_ap_init_null_template.exit
  br i1 %tobool.not.i, label %do.end.i.i36, label %if.end5.wl12xx_vif_to_data.exit.i39_crit_edge, !prof !18

if.end5.wl12xx_vif_to_data.exit.i39_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl12xx_vif_to_data.exit.i39

do.end.i.i36:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 495, i32 noundef 9, ptr noundef null) #5
  br label %wl12xx_vif_to_data.exit.i39

wl12xx_vif_to_data.exit.i39:                      ; preds = %do.end.i.i36, %if.end5.wl12xx_vif_to_data.exit.i39_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 26) #8
  %tobool.not.i38 = icmp eq ptr %call7.i.i.i37, null
  br i1 %tobool.not.i38, label %wl1271_ap_init_qos_null_template.exit.thread, label %wl1271_ap_init_qos_null_template.exit

wl1271_ap_init_qos_null_template.exit.thread:     ; preds = %wl12xx_vif_to_data.exit.i39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef null) #5
  br label %cleanup

wl1271_ap_init_qos_null_template.exit:            ; preds = %wl12xx_vif_to_data.exit.i39
  %15 = ptrtoint ptr %call7.i.i.i37 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -14334, ptr %call7.i.i.i37, align 8
  %addr2.i40 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %call7.i.i.i37, i32 0, i32 3
  %16 = call ptr @memcpy(ptr %addr2.i40, ptr %addr.i, i32 6)
  %addr3.i42 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %call7.i.i.i37, i32 0, i32 4
  %17 = call ptr @memcpy(ptr %addr3.i42, ptr %addr.i, i32 6)
  %18 = ptrtoint ptr %basic_rate_set.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %basic_rate_set.i, align 8
  %call6.i44 = tail call i32 @wl1271_tx_min_rate_get(ptr noundef %wl, i32 noundef %19) #5
  %20 = ptrtoint ptr %role_id.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %role_id.i, align 2
  %call7.i46 = tail call i32 @wl1271_cmd_template_set(ptr noundef %wl, i8 noundef zeroext %21, i16 noundef zeroext 5, ptr noundef nonnull %call7.i.i.i37, i32 noundef 26, i32 noundef 0, i32 noundef %call6.i44) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i46)
  %cmp7 = icmp slt i32 %call7.i46, 0
  br i1 %cmp7, label %wl1271_ap_init_qos_null_template.exit.cleanup_crit_edge, label %if.end9

wl1271_ap_init_qos_null_template.exit.cleanup_crit_edge: ; preds = %wl1271_ap_init_qos_null_template.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %wl1271_ap_init_qos_null_template.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 @wl1271_acx_beacon_filter_opt(ptr noundef %wl, ptr noundef %drv_priv.i, i1 noundef zeroext false) #5
  %22 = tail call i32 @llvm.smin.i32(i32 %call10, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %wl1271_ap_init_qos_null_template.exit.cleanup_crit_edge, %wl1271_ap_init_qos_null_template.exit.thread, %wl1271_ap_init_null_template.exit.cleanup_crit_edge, %wl1271_ap_init_null_template.exit.thread, %wl1271_ap_init_deauth_template.exit.cleanup_crit_edge, %wl1271_ap_init_deauth_template.exit.thread
  %retval.0 = phi i32 [ %call2.i, %wl1271_ap_init_deauth_template.exit.cleanup_crit_edge ], [ %call7.i, %wl1271_ap_init_null_template.exit.cleanup_crit_edge ], [ %call7.i46, %wl1271_ap_init_qos_null_template.exit.cleanup_crit_edge ], [ %22, %if.end9 ], [ -12, %wl1271_ap_init_deauth_template.exit.thread ], [ -12, %wl1271_ap_init_null_template.exit.thread ], [ -12, %wl1271_ap_init_qos_null_template.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_beacon_filter_opt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_init_ap_rates(ptr noundef %wl, ptr noundef %wlvif) local_unnamed_addr #0 align 64 {
entry:
  %rc = alloca %struct.conf_tx_rate_class, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %rc) #5
  %0 = getelementptr inbounds %struct.conf_tx_rate_class, ptr %rc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.conf_tx_rate_class, ptr %rc, i32 0, i32 2
  %2 = getelementptr inbounds %struct.conf_tx_rate_class, ptr %rc, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %3 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !19

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_init_ap_rates.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_init_ap_rates, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !20

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %basic_rate_set = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 18
  %4 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %basic_rate_set, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_init_ap_rates.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.3, i32 noundef %5) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  %basic_rate_set15 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 18
  %6 = ptrtoint ptr %basic_rate_set15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %basic_rate_set15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.end14.cleanup_crit_edge, label %if.end17

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %do.end14
  %8 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rc, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 10, ptr %1, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %0, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %2, align 2
  %mgmt_rate_idx = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 8, i32 0, i32 4
  %12 = ptrtoint ptr %mgmt_rate_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mgmt_rate_idx, align 8
  %call19 = call i32 @wl1271_acx_ap_rate_policy(ptr noundef %wl, ptr noundef nonnull %rc, i8 noundef zeroext %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %14 = ptrtoint ptr %basic_rate_set15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %basic_rate_set15, align 8
  %call24 = call i32 @wl1271_tx_min_rate_get(ptr noundef %wl, i32 noundef %15) #5
  %16 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call24, ptr %rc, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 10, ptr %0, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %1, align 1
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %2, align 2
  %bcast_rate_idx = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 8, i32 0, i32 5
  %20 = ptrtoint ptr %bcast_rate_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bcast_rate_idx, align 1
  %call29 = call i32 @wl1271_acx_ap_rate_policy(ptr noundef %wl, ptr noundef nonnull %rc, i8 noundef zeroext %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end22.cleanup_crit_edge, label %if.end32

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %ofdm_only_ap = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 111
  %22 = ptrtoint ptr %ofdm_only_ap to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ofdm_only_ap, align 8, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool33.not = icmp eq i8 %23, 0
  br i1 %tobool33.not, label %if.end32.if.else_crit_edge, label %land.lhs.true

if.end32.if.else_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end32
  %24 = ptrtoint ptr %basic_rate_set15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %basic_rate_set15, align 8
  %and35 = and i32 %25, 7752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end32.if.else_crit_edge
  br label %if.end38

if.end38:                                         ; preds = %if.else, %land.lhs.true.if.end38_crit_edge
  %supported_rates.0 = phi i32 [ 2096895, %if.else ], [ 2096712, %land.lhs.true.if.end38_crit_edge ]
  %ops.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %ap_get_mimo_wide_rate_mask.i = getelementptr inbounds %struct.wlcore_ops, ptr %27, i32 0, i32 25
  %28 = ptrtoint ptr %ap_get_mimo_wide_rate_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ap_get_mimo_wide_rate_mask.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end38.wlcore_hw_ap_get_mimo_wide_rate_mask.exit_crit_edge, label %if.then.i

if.end38.wlcore_hw_ap_get_mimo_wide_rate_mask.exit_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %wlcore_hw_ap_get_mimo_wide_rate_mask.exit

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 %29(ptr noundef %wl, ptr noundef %wlvif) #5
  br label %wlcore_hw_ap_get_mimo_wide_rate_mask.exit

wlcore_hw_ap_get_mimo_wide_rate_mask.exit:        ; preds = %if.then.i, %if.end38.wlcore_hw_ap_get_mimo_wide_rate_mask.exit_crit_edge
  %retval.0.i78 = phi i32 [ %call.i, %if.then.i ], [ 0, %if.end38.wlcore_hw_ap_get_mimo_wide_rate_mask.exit_crit_edge ]
  %or40 = or i32 %retval.0.i78, %supported_rates.0
  %ac_conf_count = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 2
  %30 = ptrtoint ptr %ac_conf_count to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ac_conf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp4181.not = icmp eq i8 %31, 0
  br i1 %cmp4181.not, label %wlcore_hw_ap_get_mimo_wide_rate_mask.exit.cleanup_crit_edge, label %wlcore_hw_ap_get_mimo_wide_rate_mask.exit.for.body_crit_edge

wlcore_hw_ap_get_mimo_wide_rate_mask.exit.for.body_crit_edge: ; preds = %wlcore_hw_ap_get_mimo_wide_rate_mask.exit
  br label %for.body

wlcore_hw_ap_get_mimo_wide_rate_mask.exit.cleanup_crit_edge: ; preds = %wlcore_hw_ap_get_mimo_wide_rate_mask.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.082, 1
  %32 = ptrtoint ptr %ac_conf_count to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ac_conf_count, align 4
  %conv = zext i8 %33 to i32
  %cmp41 = icmp ult i32 %inc, %conv
  br i1 %cmp41, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %wlcore_hw_ap_get_mimo_wide_rate_mask.exit.for.body_crit_edge
  %i.082 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %wlcore_hw_ap_get_mimo_wide_rate_mask.exit.for.body_crit_edge ]
  %34 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or40, ptr %rc, align 4
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 10, ptr %0, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 10, ptr %1, align 1
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %2, align 2
  %arrayidx = getelementptr %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 8, i32 0, i32 6, i32 %i.082
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %call47 = call i32 @wl1271_acx_ap_rate_policy(ptr noundef %wl, ptr noundef nonnull %rc, i8 noundef zeroext %39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %wlcore_hw_ap_get_mimo_wide_rate_mask.exit.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end14.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ], [ %call29, %if.end22.cleanup_crit_edge ], [ 0, %wlcore_hw_ap_get_mimo_wide_rate_mask.exit.cleanup_crit_edge ], [ %call47, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %rc) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_ap_rate_policy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_tx_min_rate_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_init_vif_specific(ptr noundef %wl, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %vif, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.wl12xx_vif_to_data.exit_crit_edge, !prof !18

entry.wl12xx_vif_to_data.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl12xx_vif_to_data.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 495, i32 noundef 9, ptr noundef null) #5
  br label %wl12xx_vif_to_data.exit

wl12xx_vif_to_data.exit:                          ; preds = %do.end.i, %entry.wl12xx_vif_to_data.exit_crit_edge
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %bss_type = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %0 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  %ap_count = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 41
  %2 = ptrtoint ptr %ap_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ap_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp3 = icmp ne i8 %3, 0
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %cmp3, i1 true, i1 %cmp.not
  br i1 %brmerge, label %if.else, label %if.then

if.then:                                          ; preds = %wl12xx_vif_to_data.exit
  %call6 = tail call i32 @wl1271_acx_sleep_auth(ptr noundef %wl, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.cleanup131_crit_edge, label %if.end

if.then.cleanup131_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.end:                                           ; preds = %if.then
  %ap_event_mask = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 75
  %4 = ptrtoint ptr %ap_event_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ap_event_mask, align 4
  %event_mask = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 74
  %6 = ptrtoint ptr %event_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_mask, align 8
  %or = or i32 %7, %5
  store i32 %or, ptr %event_mask, align 8
  %call10 = tail call i32 @wl1271_event_unmask(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end.cleanup131_crit_edge, label %if.end.if.end39_crit_edge

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.end.cleanup131_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.else:                                          ; preds = %wl12xx_vif_to_data.exit
  %sta_count = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 40
  %8 = ptrtoint ptr %sta_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sta_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp16 = icmp ne i8 %9, 0
  %10 = select i1 %cmp16, i1 true, i1 %cmp3
  %or.cond = select i1 %10, i1 true, i1 %cmp
  br i1 %or.cond, label %if.else.if.end39_crit_edge, label %if.then25

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then25:                                        ; preds = %if.else
  %sta_sleep_auth = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 23
  %11 = ptrtoint ptr %sta_sleep_auth to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sta_sleep_auth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp27.not = icmp eq i8 %12, -1
  %. = select i1 %cmp27.not, i8 2, i8 %12
  %call32 = tail call i32 @wl1271_acx_sleep_auth(ptr noundef %wl, i8 noundef zeroext %.) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp34 = icmp slt i32 %call32, 0
  br i1 %cmp34, label %if.then25.cleanup131_crit_edge, label %if.then25.if.end39_crit_edge

if.then25.if.end39_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then25.cleanup131_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.end39:                                         ; preds = %if.then25.if.end39_crit_edge, %if.else.if.end39_crit_edge, %if.end.if.end39_crit_edge
  br i1 %cmp, label %if.then41, label %if.else52

if.then41:                                        ; preds = %if.end39
  %call.i = tail call i32 @wl1271_init_ap_rates(ptr noundef %wl, ptr noundef %drv_priv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then41.cleanup131_crit_edge, label %if.end.i

if.then41.cleanup131_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.end.i:                                         ; preds = %if.then41
  %ops.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %13 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i.i, align 4
  %ap_sleep.i.i = getelementptr inbounds %struct.wlcore_ops, ptr %14, i32 0, i32 43
  %15 = ptrtoint ptr %ap_sleep.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ap_sleep.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end46_crit_edge, label %wl1271_ap_hw_init.exit

if.end.i.if.end46_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

wl1271_ap_hw_init.exit:                           ; preds = %if.end.i
  %call.i.i = tail call i32 %16(ptr noundef %wl) #5
  %17 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp43 = icmp slt i32 %call.i.i, 0
  br i1 %cmp43, label %wl1271_ap_hw_init.exit.cleanup131_crit_edge, label %wl1271_ap_hw_init.exit.if.end46_crit_edge

wl1271_ap_hw_init.exit.if.end46_crit_edge:        ; preds = %wl1271_ap_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

wl1271_ap_hw_init.exit.cleanup131_crit_edge:      ; preds = %wl1271_ap_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.end46:                                         ; preds = %wl1271_ap_hw_init.exit.if.end46_crit_edge, %if.end.i.if.end46_crit_edge
  %call.i218 = tail call i32 @wl1271_acx_ap_max_tx_retry(ptr noundef %wl, ptr noundef %drv_priv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %cmp.i219 = icmp slt i32 %call.i218, 0
  br i1 %cmp.i219, label %if.end46.cleanup131_crit_edge, label %if.end.i220

if.end46.cleanup131_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.end.i220:                                      ; preds = %if.end46
  %power_level.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 21
  %18 = ptrtoint ptr %power_level.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %power_level.i, align 4
  %call1.i = tail call i32 @wl1271_acx_tx_power(ptr noundef %wl, ptr noundef %drv_priv.i, i32 noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i220.cleanup131_crit_edge, label %if.end4.i

if.end.i220.cleanup131_crit_edge:                 ; preds = %if.end.i220
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.end4.i:                                        ; preds = %if.end.i220
  %radar_debug_mode.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 135
  %20 = ptrtoint ptr %radar_debug_mode.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %radar_debug_mode.i, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i221 = icmp eq i8 %21, 0
  br i1 %tobool.not.i221, label %if.end4.i.if.end63_crit_edge, label %if.then5.i

if.end4.i.if.end63_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then5.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 @wlcore_cmd_generic_cfg(ptr noundef %wl, ptr noundef %drv_priv.i, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %if.end63

if.else52:                                        ; preds = %if.end39
  %call.i223 = tail call i32 @wl12xx_acx_config_ps(ptr noundef %wl, ptr noundef %drv_priv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %cmp.i224 = icmp slt i32 %call.i223, 0
  br i1 %cmp.i224, label %if.else52.cleanup131_crit_edge, label %if.end.i227

if.else52.cleanup131_crit_edge:                   ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.end.i227:                                      ; preds = %if.else52
  %call1.i225 = tail call i32 @wl1271_acx_fm_coex(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i225)
  %cmp2.i226 = icmp slt i32 %call1.i225, 0
  br i1 %cmp2.i226, label %if.end.i227.cleanup131_crit_edge, label %wl1271_sta_hw_init.exit

if.end.i227.cleanup131_crit_edge:                 ; preds = %if.end.i227
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

wl1271_sta_hw_init.exit:                          ; preds = %if.end.i227
  %call5.i = tail call i32 @wl1271_acx_sta_rate_policies(ptr noundef %wl, ptr noundef %drv_priv.i) #5
  %22 = tail call i32 @llvm.smin.i32(i32 %call5.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp54 = icmp slt i32 %call5.i, 0
  br i1 %cmp54, label %wl1271_sta_hw_init.exit.cleanup131_crit_edge, label %if.end57

wl1271_sta_hw_init.exit.cleanup131_crit_edge:     ; preds = %wl1271_sta_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.end57:                                         ; preds = %wl1271_sta_hw_init.exit
  %call.i230 = tail call i32 @wl1271_acx_group_address_tbl(ptr noundef %wl, ptr noundef %drv_priv.i, i1 noundef zeroext true, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %cmp.i231 = icmp slt i32 %call.i230, 0
  br i1 %cmp.i231, label %if.end57.cleanup131_crit_edge, label %if.end.i234

if.end57.cleanup131_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.end.i234:                                      ; preds = %if.end57
  %call1.i232 = tail call i32 @wl1271_acx_conn_monit_params(ptr noundef %wl, ptr noundef %drv_priv.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i232)
  %cmp2.i233 = icmp slt i32 %call1.i232, 0
  br i1 %cmp2.i233, label %if.end.i234.cleanup131_crit_edge, label %if.end4.i236

if.end.i234.cleanup131_crit_edge:                 ; preds = %if.end.i234
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.end4.i236:                                     ; preds = %if.end.i234
  %call.i.i235 = tail call i32 @wl1271_acx_beacon_filter_table(ptr noundef %wl, ptr noundef %drv_priv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i235)
  %cmp.i.i = icmp slt i32 %call.i.i235, 0
  br i1 %cmp.i.i, label %if.end4.i236.cleanup131_crit_edge, label %wl1271_init_sta_beacon_filter.exit.i

if.end4.i236.cleanup131_crit_edge:                ; preds = %if.end4.i236
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

wl1271_init_sta_beacon_filter.exit.i:             ; preds = %if.end4.i236
  %call1.i.i = tail call i32 @wl1271_acx_beacon_filter_opt(ptr noundef %wl, ptr noundef %drv_priv.i, i1 noundef zeroext false) #5
  %23 = tail call i32 @llvm.smin.i32(i32 %call1.i.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp6.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp6.i, label %wl1271_init_sta_beacon_filter.exit.i.wl12xx_init_sta_role.exit_crit_edge, label %if.end8.i

wl1271_init_sta_beacon_filter.exit.i.wl12xx_init_sta_role.exit_crit_edge: ; preds = %wl1271_init_sta_beacon_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl12xx_init_sta_role.exit

if.end8.i:                                        ; preds = %wl1271_init_sta_beacon_filter.exit.i
  %call.i34.i = tail call i32 @wl1271_acx_bcn_dtim_options(ptr noundef %wl, ptr noundef %drv_priv.i) #5
  %24 = tail call i32 @llvm.smin.i32(i32 %call.i34.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %cmp10.i = icmp slt i32 %call.i34.i, 0
  br i1 %cmp10.i, label %if.end8.i.wl12xx_init_sta_role.exit_crit_edge, label %if.end12.i

if.end8.i.wl12xx_init_sta_role.exit_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl12xx_init_sta_role.exit

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %call13.i = tail call i32 @wl1271_acx_rssi_snr_avg_weights(ptr noundef %wl, ptr noundef %drv_priv.i) #5
  %25 = tail call i32 @llvm.smin.i32(i32 %call13.i, i32 0) #5
  br label %wl12xx_init_sta_role.exit

wl12xx_init_sta_role.exit:                        ; preds = %if.end12.i, %if.end8.i.wl12xx_init_sta_role.exit_crit_edge, %wl1271_init_sta_beacon_filter.exit.i.wl12xx_init_sta_role.exit_crit_edge
  %retval.0.i237 = phi i32 [ %23, %wl1271_init_sta_beacon_filter.exit.i.wl12xx_init_sta_role.exit_crit_edge ], [ %24, %if.end8.i.wl12xx_init_sta_role.exit_crit_edge ], [ %25, %if.end12.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i237)
  %cmp59 = icmp slt i32 %retval.0.i237, 0
  br i1 %cmp59, label %wl12xx_init_sta_role.exit.cleanup131_crit_edge, label %wl12xx_init_sta_role.exit.if.end63_crit_edge

wl12xx_init_sta_role.exit.if.end63_crit_edge:     ; preds = %wl12xx_init_sta_role.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

wl12xx_init_sta_role.exit.cleanup131_crit_edge:   ; preds = %wl12xx_init_sta_role.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.end63:                                         ; preds = %wl12xx_init_sta_role.exit.if.end63_crit_edge, %if.then5.i, %if.end4.i.if.end63_crit_edge
  %call.i238 = tail call i32 @wl1271_acx_slot(ptr noundef %wl, ptr noundef %drv_priv.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %cmp.i239 = icmp slt i32 %call.i238, 0
  br i1 %cmp.i239, label %if.end63.wl12xx_init_phy_vif_config.exit_crit_edge, label %if.end.i242

if.end63.wl12xx_init_phy_vif_config.exit_crit_edge: ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl12xx_init_phy_vif_config.exit

if.end.i242:                                      ; preds = %if.end63
  %call1.i240 = tail call i32 @wl1271_acx_service_period_timeout(ptr noundef %wl, ptr noundef %drv_priv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i240)
  %cmp2.i241 = icmp slt i32 %call1.i240, 0
  br i1 %cmp2.i241, label %if.end.i242.wl12xx_init_phy_vif_config.exit_crit_edge, label %if.end4.i244

if.end.i242.wl12xx_init_phy_vif_config.exit_crit_edge: ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl12xx_init_phy_vif_config.exit

if.end4.i244:                                     ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #7
  %hw.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %26 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wiphy.i, align 8
  %rts_threshold.i = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 36
  %30 = ptrtoint ptr %rts_threshold.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rts_threshold.i, align 4
  %call5.i243 = tail call i32 @wl1271_acx_rts_threshold(ptr noundef %wl, ptr noundef %drv_priv.i, i32 noundef %31) #5
  br label %wl12xx_init_phy_vif_config.exit

wl12xx_init_phy_vif_config.exit:                  ; preds = %if.end4.i244, %if.end.i242.wl12xx_init_phy_vif_config.exit_crit_edge, %if.end63.wl12xx_init_phy_vif_config.exit_crit_edge
  %tid_conf_count = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 6
  %32 = ptrtoint ptr %tid_conf_count to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tid_conf_count, align 4
  %ac_conf_count = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 2
  %34 = ptrtoint ptr %ac_conf_count to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ac_conf_count, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp70.not = icmp eq i8 %33, %35
  br i1 %cmp70.not, label %for.cond.preheader, label %do.body75, !prof !19

for.cond.preheader:                               ; preds = %wl12xx_init_phy_vif_config.exit
  %36 = ptrtoint ptr %tid_conf_count to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tid_conf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp86271.not = icmp eq i8 %37, 0
  br i1 %cmp86271.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body75:                                        ; preds = %wl12xx_init_phy_vif_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/init.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 611, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

for.cond:                                         ; preds = %if.end94
  %inc = add nuw nsw i32 %i.0272, 1
  %38 = ptrtoint ptr %tid_conf_count to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tid_conf_count, align 4
  %conv85 = zext i8 %39 to i32
  %cmp86 = icmp ult i32 %inc, %conv85
  br i1 %cmp86, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0272 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 3, i32 %i.0272
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 1
  %cw_min = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 3, i32 %i.0272, i32 1
  %42 = ptrtoint ptr %cw_min to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cw_min, align 1
  %cw_max = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 3, i32 %i.0272, i32 2
  %44 = ptrtoint ptr %cw_max to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %cw_max, align 1
  %aifsn = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 3, i32 %i.0272, i32 3
  %46 = ptrtoint ptr %aifsn to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %aifsn, align 1
  %tx_op_limit = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 3, i32 %i.0272, i32 4
  %48 = ptrtoint ptr %tx_op_limit to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %tx_op_limit, align 1
  %call90 = tail call i32 @wl1271_acx_ac_cfg(ptr noundef %wl, ptr noundef %drv_priv.i, i8 noundef zeroext %41, i8 noundef zeroext %43, i16 noundef zeroext %45, i8 noundef zeroext %47, i16 noundef zeroext %49) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %for.body.cleanup131_crit_edge, label %if.end94

for.body.cleanup131_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.end94:                                         ; preds = %for.body
  %arrayidx97 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 7, i32 %i.0272
  %50 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx97, align 1
  %channel_type = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 7, i32 %i.0272, i32 1
  %52 = ptrtoint ptr %channel_type to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %channel_type, align 1
  %tsid = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 7, i32 %i.0272, i32 2
  %54 = ptrtoint ptr %tsid to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tsid, align 1
  %ps_scheme = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 7, i32 %i.0272, i32 3
  %56 = ptrtoint ptr %ps_scheme to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ps_scheme, align 1
  %ack_policy = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 7, i32 %i.0272, i32 4
  %58 = ptrtoint ptr %ack_policy to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ack_policy, align 1
  %apsd_conf = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 7, i32 %i.0272, i32 5
  %60 = ptrtoint ptr %apsd_conf to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %apsd_conf, align 1
  %arrayidx100 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 7, i32 %i.0272, i32 5, i32 1
  %62 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %arrayidx100, align 1
  %call101 = tail call i32 @wl1271_acx_tid_cfg(ptr noundef %wl, ptr noundef %drv_priv.i, i8 noundef zeroext %51, i8 noundef zeroext %53, i8 noundef zeroext %55, i8 noundef zeroext %57, i8 noundef zeroext %59, i32 noundef %61, i32 noundef %63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.end94.cleanup131_crit_edge, label %for.cond

if.end94.cleanup131_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call106 = tail call i32 @wl1271_acx_feature_cfg(ptr noundef %wl, ptr noundef %drv_priv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %for.end.cleanup131_crit_edge, label %if.end110

for.end.cleanup131_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.end110:                                        ; preds = %for.end
  br i1 %cmp, label %if.then112, label %if.else114

if.then112:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  %call.i245 = tail call i32 @wl1271_ap_init_templates(ptr noundef %wl, ptr noundef %vif) #5
  br label %if.end116

if.else114:                                       ; preds = %if.end110
  br i1 %tobool.not.i, label %do.end.i.i, label %if.else114.wl1271_sta_hw_init_post_mem.exit_crit_edge, !prof !18

if.else114.wl1271_sta_hw_init_post_mem.exit_crit_edge: ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1271_sta_hw_init_post_mem.exit

do.end.i.i:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 495, i32 noundef 9, ptr noundef null) #5
  br label %wl1271_sta_hw_init_post_mem.exit

wl1271_sta_hw_init_post_mem.exit:                 ; preds = %do.end.i.i, %if.else114.wl1271_sta_hw_init_post_mem.exit_crit_edge
  %call1.i247 = tail call i32 @wl1271_acx_keep_alive_mode(ptr noundef %wl, ptr noundef %drv_priv.i, i1 noundef zeroext false) #5
  %64 = tail call i32 @llvm.smin.i32(i32 %call1.i247, i32 0) #5
  br label %if.end116

if.end116:                                        ; preds = %wl1271_sta_hw_init_post_mem.exit, %if.then112
  %ret.1 = phi i32 [ %call.i245, %if.then112 ], [ %64, %wl1271_sta_hw_init_post_mem.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp117 = icmp slt i32 %ret.1, 0
  br i1 %cmp117, label %if.end116.cleanup131_crit_edge, label %if.end120

if.end116.cleanup131_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.end120:                                        ; preds = %if.end116
  %ba_allowed.i = getelementptr inbounds %struct.wl12xx_vif, ptr %drv_priv.i, i32 0, i32 32
  %65 = ptrtoint ptr %ba_allowed.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %ba_allowed.i, align 1
  %ba_rx_session_count.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 108
  %66 = ptrtoint ptr %ba_rx_session_count.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %ba_rx_session_count.i, align 4
  %67 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bss_type, align 8
  %69 = and i8 %68, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %switch.i = icmp eq i8 %69, 2
  %ba_support6.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 42
  br i1 %switch.i, label %wl1271_set_ba_policies.exit, label %wl1271_set_ba_policies.exit.thread

wl1271_set_ba_policies.exit.thread:               ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %ba_support6.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %ba_support6.i, align 8
  br label %if.end125

wl1271_set_ba_policies.exit:                      ; preds = %if.end120
  %71 = ptrtoint ptr %ba_support6.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %ba_support6.i, align 8
  %call.i248 = tail call i32 @wl12xx_acx_set_ba_initiator_policy(ptr noundef %wl, ptr noundef %drv_priv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %cmp122 = icmp slt i32 %call.i248, 0
  br i1 %cmp122, label %wl1271_set_ba_policies.exit.cleanup131_crit_edge, label %wl1271_set_ba_policies.exit.if.end125_crit_edge

wl1271_set_ba_policies.exit.if.end125_crit_edge:  ; preds = %wl1271_set_ba_policies.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

wl1271_set_ba_policies.exit.cleanup131_crit_edge: ; preds = %wl1271_set_ba_policies.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

if.end125:                                        ; preds = %wl1271_set_ba_policies.exit.if.end125_crit_edge, %wl1271_set_ba_policies.exit.thread
  %ops.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %72 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i, align 4
  %init_vif.i = getelementptr inbounds %struct.wlcore_ops, ptr %73, i32 0, i32 18
  %74 = ptrtoint ptr %init_vif.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_vif.i, align 4
  %tobool.not.i251 = icmp eq ptr %75, null
  br i1 %tobool.not.i251, label %if.end125.cleanup131_crit_edge, label %wlcore_hw_init_vif.exit

if.end125.cleanup131_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup131

wlcore_hw_init_vif.exit:                          ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  %call.i252 = tail call i32 %75(ptr noundef %wl, ptr noundef %drv_priv.i) #5
  %76 = tail call i32 @llvm.smin.i32(i32 %call.i252, i32 0)
  br label %cleanup131

cleanup131:                                       ; preds = %wlcore_hw_init_vif.exit, %if.end125.cleanup131_crit_edge, %wl1271_set_ba_policies.exit.cleanup131_crit_edge, %if.end116.cleanup131_crit_edge, %for.end.cleanup131_crit_edge, %if.end94.cleanup131_crit_edge, %for.body.cleanup131_crit_edge, %wl12xx_init_sta_role.exit.cleanup131_crit_edge, %if.end4.i236.cleanup131_crit_edge, %if.end.i234.cleanup131_crit_edge, %if.end57.cleanup131_crit_edge, %wl1271_sta_hw_init.exit.cleanup131_crit_edge, %if.end.i227.cleanup131_crit_edge, %if.else52.cleanup131_crit_edge, %if.end.i220.cleanup131_crit_edge, %if.end46.cleanup131_crit_edge, %wl1271_ap_hw_init.exit.cleanup131_crit_edge, %if.then41.cleanup131_crit_edge, %if.then25.cleanup131_crit_edge, %if.end.cleanup131_crit_edge, %if.then.cleanup131_crit_edge
  %retval.1 = phi i32 [ %call32, %if.then25.cleanup131_crit_edge ], [ %call6, %if.then.cleanup131_crit_edge ], [ %call10, %if.end.cleanup131_crit_edge ], [ %17, %wl1271_ap_hw_init.exit.cleanup131_crit_edge ], [ %22, %wl1271_sta_hw_init.exit.cleanup131_crit_edge ], [ %retval.0.i237, %wl12xx_init_sta_role.exit.cleanup131_crit_edge ], [ %call106, %for.end.cleanup131_crit_edge ], [ %ret.1, %if.end116.cleanup131_crit_edge ], [ %call.i248, %wl1271_set_ba_policies.exit.cleanup131_crit_edge ], [ %call.i, %if.then41.cleanup131_crit_edge ], [ %call1.i, %if.end.i220.cleanup131_crit_edge ], [ %call.i218, %if.end46.cleanup131_crit_edge ], [ %call1.i225, %if.end.i227.cleanup131_crit_edge ], [ %call.i223, %if.else52.cleanup131_crit_edge ], [ %call.i.i235, %if.end4.i236.cleanup131_crit_edge ], [ %call1.i232, %if.end.i234.cleanup131_crit_edge ], [ %call.i230, %if.end57.cleanup131_crit_edge ], [ 0, %if.end125.cleanup131_crit_edge ], [ %76, %wlcore_hw_init_vif.exit ], [ %call101, %if.end94.cleanup131_crit_edge ], [ %call90, %for.body.cleanup131_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_sleep_auth(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_event_unmask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_ac_cfg(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_tid_cfg(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_feature_cfg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_hw_init(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %hw_init = getelementptr inbounds %struct.wlcore_ops, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %hw_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_init, align 4
  %call = tail call i32 %3(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @wl1271_init_templates_config(ptr noundef %wl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @wl12xx_acx_mem_cfg(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %quirks.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %4 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %wl12xx_init_fwlog.exit, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

wl12xx_init_fwlog.exit:                           ; preds = %if.end8
  %call.i = tail call i32 @wl12xx_cmd_config_fwlog(ptr noundef %wl) #5
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %wl12xx_init_fwlog.exit.cleanup_crit_edge, label %wl12xx_init_fwlog.exit.if.end12_crit_edge

wl12xx_init_fwlog.exit.if.end12_crit_edge:        ; preds = %wl12xx_init_fwlog.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

wl12xx_init_fwlog.exit.cleanup_crit_edge:         ; preds = %wl12xx_init_fwlog.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %wl12xx_init_fwlog.exit.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %call13 = tail call i32 @wlcore_cmd_regdomain_config_locked(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call.i110 = tail call i32 @wl12xx_acx_sg_cfg(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp.i = icmp slt i32 %call.i110, 0
  br i1 %cmp.i, label %if.end16.cleanup_crit_edge, label %wl1271_init_pta.exit

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

wl1271_init_pta.exit:                             ; preds = %if.end16
  %sg_enabled.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 95
  %7 = ptrtoint ptr %sg_enabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sg_enabled.i, align 8, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i = icmp ne i8 %8, 0
  %call1.i = tail call i32 @wl1271_acx_sg_enable(ptr noundef %wl, i1 noundef zeroext %tobool.i) #5
  %9 = tail call i32 @llvm.smin.i32(i32 %call1.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp18 = icmp slt i32 %call1.i, 0
  br i1 %cmp18, label %wl1271_init_pta.exit.cleanup_crit_edge, label %if.end20

wl1271_init_pta.exit.cleanup_crit_edge:           ; preds = %wl1271_init_pta.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %wl1271_init_pta.exit
  %call21 = tail call i32 @wl1271_acx_init_mem_config(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call.i113 = tail call i32 @wl1271_acx_rx_msdu_life_time(ptr noundef %wl) #5
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i113, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp26 = icmp slt i32 %call.i113, 0
  br i1 %cmp26, label %if.end24.out_free_memmap_crit_edge, label %if.end28

if.end24.out_free_memmap_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_memmap

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @wl1271_acx_dco_itrim_params(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.out_free_memmap_crit_edge, label %if.end32

if.end28.out_free_memmap_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_memmap

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @wl1271_acx_tx_config_options(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.out_free_memmap_crit_edge, label %if.end36

if.end32.out_free_memmap_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_memmap

if.end36:                                         ; preds = %if.end32
  %call37 = tail call i32 @wl1271_acx_init_rx_interrupt(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.out_free_memmap_crit_edge, label %if.end40

if.end36.out_free_memmap_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_memmap

if.end40:                                         ; preds = %if.end36
  %call.i114 = tail call i32 @wl1271_acx_cca_threshold(ptr noundef %wl) #5
  %11 = tail call i32 @llvm.smin.i32(i32 %call.i114, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp42 = icmp slt i32 %call.i114, 0
  br i1 %cmp42, label %if.end40.out_free_memmap_crit_edge, label %if.end44

if.end40.out_free_memmap_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_memmap

if.end44:                                         ; preds = %if.end40
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy, align 8
  %frag_threshold = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 35
  %16 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frag_threshold, align 16
  %call45 = tail call i32 @wl1271_acx_frag_threshold(ptr noundef %wl, i32 noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.out_free_memmap_crit_edge, label %if.end48

if.end44.out_free_memmap_crit_edge:               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_memmap

if.end48:                                         ; preds = %if.end44
  %call49 = tail call i32 @wl1271_cmd_data_path(ptr noundef %wl, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end48.out_free_memmap_crit_edge, label %if.end52

if.end48.out_free_memmap_crit_edge:               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_memmap

if.end52:                                         ; preds = %if.end48
  %call53 = tail call i32 @wl1271_acx_pm_config(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end52.out_free_memmap_crit_edge, label %if.end56

if.end52.out_free_memmap_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_memmap

if.end56:                                         ; preds = %if.end52
  %call57 = tail call i32 @wl12xx_acx_set_rate_mgmt_params(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.out_free_memmap_crit_edge, label %if.end60

if.end56.out_free_memmap_crit_edge:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_memmap

if.end60:                                         ; preds = %if.end56
  %call61 = tail call i32 @wl12xx_acx_config_hangover(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end60.out_free_memmap_crit_edge, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60.out_free_memmap_crit_edge:               ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_memmap

out_free_memmap:                                  ; preds = %if.end60.out_free_memmap_crit_edge, %if.end56.out_free_memmap_crit_edge, %if.end52.out_free_memmap_crit_edge, %if.end48.out_free_memmap_crit_edge, %if.end44.out_free_memmap_crit_edge, %if.end40.out_free_memmap_crit_edge, %if.end36.out_free_memmap_crit_edge, %if.end32.out_free_memmap_crit_edge, %if.end28.out_free_memmap_crit_edge, %if.end24.out_free_memmap_crit_edge
  %ret.0 = phi i32 [ %10, %if.end24.out_free_memmap_crit_edge ], [ %call29, %if.end28.out_free_memmap_crit_edge ], [ %call33, %if.end32.out_free_memmap_crit_edge ], [ %call37, %if.end36.out_free_memmap_crit_edge ], [ %11, %if.end40.out_free_memmap_crit_edge ], [ %call45, %if.end44.out_free_memmap_crit_edge ], [ %call49, %if.end48.out_free_memmap_crit_edge ], [ %call53, %if.end52.out_free_memmap_crit_edge ], [ %call57, %if.end56.out_free_memmap_crit_edge ], [ %call61, %if.end60.out_free_memmap_crit_edge ]
  %target_mem_map = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 42
  %18 = ptrtoint ptr %target_mem_map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %target_mem_map, align 8
  tail call void @kfree(ptr noundef %19) #5
  %20 = ptrtoint ptr %target_mem_map to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %target_mem_map, align 8
  br label %cleanup

cleanup:                                          ; preds = %out_free_memmap, %if.end60.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %wl1271_init_pta.exit.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %wl12xx_init_fwlog.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free_memmap ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %6, %wl12xx_init_fwlog.exit.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %9, %wl1271_init_pta.exit.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ], [ %call.i110, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_acx_mem_cfg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_cmd_regdomain_config_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_init_mem_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_dco_itrim_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_tx_config_options(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_init_rx_interrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_frag_threshold(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_data_path(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_pm_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_acx_set_rate_mgmt_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_acx_config_hangover(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_ap_max_tx_retry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_tx_power(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_cmd_generic_cfg(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_group_address_tbl(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_conn_monit_params(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_rssi_snr_avg_weights(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_beacon_filter_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_bcn_dtim_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_service_period_timeout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_rts_threshold(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_keep_alive_mode(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_acx_set_ba_initiator_policy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_cmd_config_fwlog(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_rx_msdu_life_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wlcore/init.c", i32 429, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wl1271_init_ap_rates.__UNIQUE_ID_ddebug348, !1, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wlcore/wlcore_i.h", i32 495, i32 2}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2148706476, i64 2148706481, i64 2148706494, i64 2148706538, i64 2148706572, i64 2148706593}
!21 = !{i64 2157583875, i64 2157584377, i64 2157583912, i64 2157583968, i64 2157584002, i64 2157584026, i64 2157584067, i64 2157584088, i64 2157584116, i64 2157584150}
