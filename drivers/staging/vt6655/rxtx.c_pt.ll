; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6655/rxtx.c_pt.bc'
source_filename = "../drivers/staging/vt6655/rxtx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vnt_tx_desc = type { %struct.vnt_tdes0, %struct.vnt_tdes1, i32, i32, ptr, [4 x i8], ptr, [4 x i8] }
%struct.vnt_tdes0 = type { i8, i8, %union.anon.129 }
%union.anon.129 = type { i16 }
%struct.vnt_tdes1 = type { i16, i8, i8 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.vnt_td_info = type { ptr, ptr, ptr, i32, i16, i8 }
%struct.vnt_private = type { ptr, ptr, ptr, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.spinlock, [2 x i32], [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, [2 x ptr], %struct.vnt_options, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i32, i8, i32, i32, i8, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i32, i8, i16, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i32], i8, i8, i32, i8, i8, i8, i8, i8, [15 x i8], [57 x i8], [15 x i8], [57 x i8], [57 x i8], [57 x i8], i8, i8, i8, i8, [256 x i8], i16, i16, %struct.work_struct, %struct.ieee80211_low_level_stats }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vnt_options = type { i32, i32, [2 x i32], i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.125, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.125 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.vnt_tx_fifo_head = type { [16 x i8], i16, i16, i16, i16 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.vnt_cts_fb = type { %struct.vnt_phy_field, i16, i16, i16, i16, %struct.ieee80211_cts, i16 }
%struct.vnt_phy_field = type { i8, i8, i16 }
%struct.ieee80211_cts = type { i16, i16, [6 x i8] }
%struct.vnt_cts = type { %struct.vnt_phy_field, i16, i16, %struct.ieee80211_cts, i16 }
%struct.vnt_tx_datahead_g = type { %struct.vnt_phy_field, %struct.vnt_phy_field, i16, i16, i16, i16 }
%struct.vnt_tx_datahead_g_fb = type { %struct.vnt_phy_field, %struct.vnt_phy_field, i16, i16, i16, i16, i16, i16 }
%struct.vnt_tx_datahead_a_fb = type { %struct.vnt_phy_field, i16, i16, i16, i16 }
%struct.vnt_tx_datahead_ab = type { %struct.vnt_phy_field, i16, i16 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.vnt_mic_hdr = type { i8, i8, [6 x i8], [6 x i8], i16, i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8], i16 }
%struct.vnt_tx_short_buf_head = type { i16, i16, %struct.vnt_phy_field, i16, i16 }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.126, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.126 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.127] }
%struct.anon.127 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.vnt_rts_g = type { %struct.vnt_phy_field, %struct.vnt_phy_field, i16, i16, i16, i16, %struct.ieee80211_rts }
%struct.ieee80211_rts = type { i16, i16, [6 x i8], [6 x i8] }
%struct.vnt_rts_g_fb = type { %struct.vnt_phy_field, %struct.vnt_phy_field, i16, i16, i16, i16, i16, i16, i16, i16, %struct.ieee80211_rts }
%struct.vnt_rts_ab = type { %struct.vnt_phy_field, i16, i16, %struct.ieee80211_rts }
%struct.vnt_rts_a_fb = type { %struct.vnt_phy_field, i16, i16, i16, i16, %struct.ieee80211_rts }

@ieee80211_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@wFB_Opt0 = internal constant { [2 x [5 x i16]], [44 x i8] } { [2 x [5 x i16]] [[5 x i16] [i16 6, i16 7, i16 8, i16 9, i16 10], [5 x i16] [i16 6, i16 6, i16 7, i16 8, i16 9]], [44 x i8] zeroinitializer }, align 32
@wFB_Opt1 = internal constant { [2 x [5 x i16]], [44 x i8] } { [2 x [5 x i16]] [[5 x i16] [i16 6, i16 7, i16 8, i16 8, i16 9], [5 x i16] [i16 4, i16 4, i16 6, i16 6, i16 7]], [44 x i8] zeroinitializer }, align 32
@wTimeStampOff = internal constant { [2 x [12 x i16]], [48 x i8] } { [2 x [12 x i16]] [[12 x i16] [i16 384, i16 288, i16 226, i16 209, i16 54, i16 43, i16 37, i16 31, i16 28, i16 25, i16 24, i16 23], [12 x i16] [i16 384, i16 192, i16 130, i16 113, i16 54, i16 43, i16 37, i16 31, i16 28, i16 25, i16 24, i16 23]], [48 x i8] zeroinitializer }, align 32
@switch.table.vnt_generate_fifo_header = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 1, i16 2, i16 1, i16 3, i16 1], [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 2, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 2737, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"wFB_Opt0\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 62, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"wFB_Opt1\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 67, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"wTimeStampOff\00", align 1
@___asan_gen_.24 = private constant [33 x i8] c"../drivers/staging/vt6655/rxtx.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 57, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [38 x i8] c"switch.table.vnt_generate_fifo_header\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @wFB_Opt0, ptr @wFB_Opt1, ptr @wTimeStampOff, ptr @switch.table.vnt_generate_fifo_header], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wFB_Opt0 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wFB_Opt1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wTimeStampOff to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vnt_generate_fifo_header to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_generate_fifo_header(ptr noundef %priv, i32 noundef %dma_idx, ptr nocapture noundef readonly %head_td, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %td_info1 = getelementptr inbounds %struct.vnt_tx_desc, ptr %head_td, i32 0, i32 6
  %0 = ptrtoint ptr %td_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %td_info1, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %buf = getelementptr inbounds %struct.vnt_td_info, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %conv = trunc i32 %6 to i16
  %7 = call ptr @memset(ptr %4, i32 0, i32 24)
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %hw = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i = icmp slt i8 %11, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b49.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge, label %if.then.i, !prof !18

land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ieee80211_get_tx_rate.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2737, i32 noundef 9, ptr noundef null) #3
  br label %ieee80211_get_tx_rate.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy.i, align 8
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %arrayidx40.i = getelementptr %struct.wiphy, ptr %15, i32 0, i32 53, i32 %bf.lshr.i
  %17 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx40.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bitrates.i, align 4
  %idxprom51.i = zext i8 %11 to i32
  %arrayidx44.i = getelementptr %struct.ieee80211_rate, ptr %20, i32 %idxprom51.i
  br label %ieee80211_get_tx_rate.exit

ieee80211_get_tx_rate.exit:                       ; preds = %if.end39.i, %if.then.i, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx44.i, %if.end39.i ], [ null, %if.then.i ], [ null, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge ]
  %hw_value = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i, i32 0, i32 2
  %21 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hw_value, align 2
  %wCurrentRate = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 74
  %23 = ptrtoint ptr %wCurrentRate to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %wCurrentRate, align 2
  %conv4 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %22)
  %cmp.not = icmp eq i16 %24, %22
  br i1 %cmp.not, label %ieee80211_get_tx_rate.exit.if.end_crit_edge, label %land.lhs.true

ieee80211_get_tx_rate.exit.if.end_crit_edge:      ; preds = %ieee80211_get_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %ieee80211_get_tx_rate.exit
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %and = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %wCurrentRate to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %22, ptr %wCurrentRate, align 2
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %26, i32 0, i32 7
  %30 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chandef, align 4
  %hw_value12 = getelementptr inbounds %struct.ieee80211_channel, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %hw_value12 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %hw_value12, align 2
  %call13 = tail call zeroext i1 @RFbSetPower(ptr noundef %priv, i32 noundef %conv4, i16 noundef zeroext %33) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %ieee80211_get_tx_rate.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %22)
  %cmp15 = icmp ugt i16 %22, 3
  br i1 %cmp15, label %if.then17, label %if.then40

if.then17:                                        ; preds = %if.end
  %band = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %34 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load = load i32, ptr %band, align 4
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask)
  %cmp18 = icmp eq i32 %bf.lshr.mask, 536870912
  br i1 %cmp18, label %if.then35, label %if.else42

if.then35:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #5
  %fifo_ctl = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %4, i32 0, i32 1
  %35 = ptrtoint ptr %fifo_ctl to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 0, ptr %fifo_ctl, align 1
  br label %if.end57

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %fifo_ctl41 = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %4, i32 0, i32 1
  %36 = ptrtoint ptr %fifo_ctl41 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 1, ptr %fifo_ctl41, align 1
  br label %if.end57

if.else42:                                        ; preds = %if.then17
  %flags21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %37 = ptrtoint ptr %flags21 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %bf.load22 = load i16, ptr %flags21, align 1
  %38 = and i16 %bf.load22, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool25.not = icmp eq i16 %38, 0
  %fifo_ctl53 = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %4, i32 0, i32 1
  br i1 %tobool25.not, label %if.then52, label %if.then46

if.then46:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %fifo_ctl53 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 2, ptr %fifo_ctl53, align 1
  br label %if.end57

if.then52:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %fifo_ctl53 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 3, ptr %fifo_ctl53, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %if.then46, %if.then40, %if.then35
  %pkt_type.0277 = phi i8 [ 1, %if.then40 ], [ 3, %if.then52 ], [ 2, %if.then46 ], [ 0, %if.then35 ]
  %fifo_ctl58 = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %4, i32 0, i32 1
  %41 = ptrtoint ptr %fifo_ctl58 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %fifo_ctl58, align 1
  %43 = or i16 %42, 8192
  store i16 %43, ptr %fifo_ctl58, align 1
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %9, align 2
  %46 = and i16 %45, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %46)
  %cmp.i262 = icmp eq i16 %46, 2048
  br i1 %cmp.i262, label %if.end57.if.end73_crit_edge, label %if.then62

if.end57.if.end73_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  %47 = or i16 %42, 28672
  %48 = ptrtoint ptr %fifo_ctl58 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %fifo_ctl58, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.then62, %if.end57.if.end73_crit_edge
  %.sink = phi i16 [ 32000, %if.then62 ], [ 16415, %if.end57.if.end73_crit_edge ]
  %49 = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %4, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %.sink, ptr %49, align 1
  %51 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cb.i, align 8
  %and75 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.then77, label %if.end73.if.end82_crit_edge

if.end73.if.end82_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end82

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  %53 = ptrtoint ptr %fifo_ctl58 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %fifo_ctl58, align 1
  %55 = or i16 %54, 512
  store i16 %55, ptr %fifo_ctl58, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.end73.if.end82_crit_edge
  %56 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %9, align 2
  %58 = and i16 %57, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp.i263.not = icmp eq i16 %58, 0
  br i1 %cmp.i263.not, label %if.end82.if.end90_crit_edge, label %if.then85

if.end82.if.end90_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end90

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #5
  %59 = ptrtoint ptr %fifo_ctl58 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %fifo_ctl58, align 1
  %61 = or i16 %60, 2048
  store i16 %61, ptr %fifo_ctl58, align 1
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end82.if.end90_crit_edge
  %flags91 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %62 = ptrtoint ptr %flags91 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %bf.load92 = load i16, ptr %flags91, align 1
  %63 = trunc i16 %bf.load92 to i8
  %64 = lshr i8 %63, 2
  %65 = and i8 %64, 1
  %66 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 72
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %65, ptr %66, align 1
  %bf.load102 = load i16, ptr %flags91, align 1
  %68 = and i16 %bf.load102, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool106.not = icmp eq i16 %68, 0
  br i1 %tobool106.not, label %if.end90.if.end112_crit_edge, label %if.then107

if.end90.if.end112_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end112

if.then107:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #5
  %69 = ptrtoint ptr %fifo_ctl58 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %fifo_ctl58, align 1
  %71 = or i16 %70, -32768
  store i16 %71, ptr %fifo_ctl58, align 1
  br label %if.end112

if.end112:                                        ; preds = %if.then107, %if.end90.if.end112_crit_edge
  %72 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %9, align 2
  %74 = and i16 %73, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %74)
  %cmp.i264 = icmp eq i16 %74, 3
  br i1 %cmp.i264, label %if.then115, label %if.end112.if.end120_crit_edge

if.end112.if.end120_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end120

if.then115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #5
  %75 = ptrtoint ptr %fifo_ctl58 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %fifo_ctl58, align 1
  %77 = or i16 %76, 256
  store i16 %77, ptr %fifo_ctl58, align 1
  %bLongHeader = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 81
  %78 = ptrtoint ptr %bLongHeader to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %bLongHeader, align 1
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.end112.if.end120_crit_edge
  %79 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cb.i, align 8
  %and122 = and i32 %80, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  %call126 = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #3
  %call126.tr = trunc i32 %call126 to i16
  %81 = shl i16 %call126.tr, 2
  %82 = and i16 %81, 252
  %frag_ctl = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %4, i32 0, i32 3
  %83 = ptrtoint ptr %frag_ctl to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %82, ptr %frag_ctl, align 1
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %84 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw_key, align 4
  %tobool128.not = icmp eq ptr %85, null
  br i1 %tobool128.not, label %if.end120.if.end146_crit_edge, label %if.then129

if.end120.if.end146_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end146

if.then129:                                       ; preds = %if.end120
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cipher, align 8
  %switch.tableidx = add i32 %87, -1027073
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %88 = icmp ult i32 %switch.tableidx, 5
  br i1 %88, label %switch.hole_check, label %if.then129.if.end146_crit_edge

if.then129.if.end146_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end146

switch.hole_check:                                ; preds = %if.then129
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %89 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %switch.lobit.not = icmp eq i8 %89, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end146_crit_edge, label %switch.lookup

switch.hole_check.if.end146_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end146

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.vnt_generate_fifo_header, i32 0, i32 %switch.tableidx
  %90 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %90)
  %switch.load = load i16, ptr %switch.gep, align 2
  %91 = or i16 %82, %switch.load
  %92 = ptrtoint ptr %frag_ctl to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 %91, ptr %frag_ctl, align 1
  br label %if.end146

if.end146:                                        ; preds = %switch.lookup, %switch.hole_check.if.end146_crit_edge, %if.then129.if.end146_crit_edge, %if.end120.if.end146_crit_edge
  %93 = tail call i16 @llvm.bswap.i16(i16 %22)
  %current_rate147 = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %4, i32 0, i32 4
  %94 = ptrtoint ptr %current_rate147 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 %93, ptr %current_rate147, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %22)
  %cmp149 = icmp ugt i16 %22, 6
  br i1 %cmp149, label %land.lhs.true151, label %if.end146.if.end176_crit_edge

if.end146.if.end176_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end176

land.lhs.true151:                                 ; preds = %if.end146
  %95 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %9, align 2
  %97 = and i16 %96, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %97)
  %cmp.i265 = icmp eq i16 %97, 2048
  br i1 %cmp.i265, label %if.then155, label %land.lhs.true151.if.end176_crit_edge

land.lhs.true151.if.end176_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end176

if.then155:                                       ; preds = %land.lhs.true151
  %byAutoFBCtrl = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 105
  %98 = ptrtoint ptr %byAutoFBCtrl to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %byAutoFBCtrl, align 1
  %100 = zext i8 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values)
  switch i8 %99, label %if.then155.if.end176_crit_edge [
    i8 1, label %if.then155.if.end176.sink.split_crit_edge
    i8 2, label %if.then169
  ]

if.then155.if.end176.sink.split_crit_edge:        ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end176.sink.split

if.then155.if.end176_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end176

if.then169:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end176.sink.split

if.end176.sink.split:                             ; preds = %if.then169, %if.then155.if.end176.sink.split_crit_edge
  %.sink293 = phi i16 [ 16, %if.then169 ], [ 8, %if.then155.if.end176.sink.split_crit_edge ]
  %101 = ptrtoint ptr %fifo_ctl58 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %fifo_ctl58, align 1
  %103 = or i16 %102, %.sink293
  store i16 %103, ptr %fifo_ctl58, align 1
  br label %if.end176

if.end176:                                        ; preds = %if.end176.sink.split, %if.then155.if.end176_crit_edge, %land.lhs.true151.if.end176_crit_edge, %if.end146.if.end176_crit_edge
  %104 = ptrtoint ptr %td_info1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %td_info1, align 8
  %skb2.i = getelementptr inbounds %struct.vnt_td_info, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %skb2.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %skb2.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %107, i32 0, i32 19
  %108 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data.i, align 4
  %buf.i = getelementptr inbounds %struct.vnt_td_info, ptr %105, i32 0, i32 2
  %110 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %buf.i, align 4
  %fifo_ctl3.i = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %fifo_ctl3.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %113 = load i16, ptr %fifo_ctl3.i, align 1
  %114 = tail call i16 @llvm.bswap.i16(i16 %113) #3
  %conv.i = zext i16 %114 to i32
  %and5.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %107, i32 0, i32 6
  %115 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len.i, align 4
  %add.i = add i32 %116, 4
  %hw_key.i = getelementptr inbounds %struct.sk_buff, ptr %107, i32 0, i32 3, i32 28
  %117 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hw_key.i, align 4
  %tobool8.not.i = icmp eq ptr %118, null
  br i1 %tobool8.not.i, label %if.end176.if.end18.i_crit_edge, label %if.then.i267

if.end176.if.end18.i_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18.i

if.then.i267:                                     ; preds = %if.end176
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cipher.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027076, i32 %120)
  %cond.i = icmp eq i32 %120, 1027076
  %spec.select.i = select i1 %cond.i, i32 48, i32 0
  %icv_len.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %118, i32 0, i32 2
  %121 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %icv_len.i, align 4
  %conv11.i = zext i8 %122 to i32
  %add12.i = add i32 %add.i, %conv11.i
  %local_id.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 36
  %123 = ptrtoint ptr %local_id.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %local_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %124)
  %cmp.i266 = icmp ugt i8 %124, 1
  br i1 %cmp.i266, label %if.then15.i, label %if.then.i267.if.end18.i_crit_edge

if.then.i267.if.end18.i_crit_edge:                ; preds = %if.then.i267
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.then.i267
  call void @__sanitizer_cov_trace_pc() #5
  %call16.i = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %107) #3
  %sub.i = sub i32 0, %call16.i
  %rem17.i = and i32 %sub.i, 3
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.then.i267.if.end18.i_crit_edge, %if.end176.if.end18.i_crit_edge
  %cbFrameSize.0.i = phi i32 [ %add12.i, %if.then15.i ], [ %add12.i, %if.then.i267.if.end18.i_crit_edge ], [ %add.i, %if.end176.if.end18.i_crit_edge ]
  %cbMICHDR.1.i = phi i32 [ %spec.select.i, %if.then15.i ], [ %spec.select.i, %if.then.i267.if.end18.i_crit_edge ], [ 0, %if.end176.if.end18.i_crit_edge ]
  %uPadding.0.i = phi i32 [ %rem17.i, %if.then15.i ], [ 0, %if.then.i267.if.end18.i_crit_edge ], [ 0, %if.end176.if.end18.i_crit_edge ]
  %and20.i = and i32 %conv.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end28.i, label %if.end28.thread.i

if.end28.i:                                       ; preds = %if.end18.i
  %and24.i = and i32 %conv.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %125 = lshr exact i32 %and24.i, 11
  %126 = trunc i32 %125 to i8
  %127 = and i8 %pkt_type.0277, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %switch.i.not = icmp eq i8 %127, 0
  br i1 %switch.i.not, label %if.else125.i, label %if.then35.i

if.end28.thread.i:                                ; preds = %if.end18.i
  %128 = and i8 %pkt_type.0277, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %switch7.i.not = icmp eq i8 %128, 0
  br i1 %switch7.i.not, label %if.end28.thread.i.if.else166.i_crit_edge, label %if.end28.thread.i.if.else81.i_crit_edge

if.end28.thread.i.if.else81.i_crit_edge:          ; preds = %if.end28.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else81.i

if.end28.thread.i.if.else166.i_crit_edge:         ; preds = %if.end28.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else166.i

if.then35.i:                                      ; preds = %if.end28.i
  br i1 %tobool25.not.i, label %if.then39.i, label %if.then35.i.if.else81.i_crit_edge

if.then35.i.if.else81.i_crit_edge:                ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else81.i

if.then39.i:                                      ; preds = %if.then35.i
  br i1 %tobool6.not.i, label %if.else60.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr45.i = getelementptr i8, ptr %4, i32 36
  %add.ptr49.i = getelementptr i8, ptr %add.ptr45.i, i32 %cbMICHDR.1.i
  %add.ptr54.i = getelementptr i8, ptr %add.ptr49.i, i32 32
  %add59.i = add nuw nsw i32 %cbMICHDR.1.i, 84
  br label %if.end204.i

if.else60.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr65.i = getelementptr i8, ptr %4, i32 32
  %add.ptr69.i = getelementptr i8, ptr %add.ptr65.i, i32 %cbMICHDR.1.i
  %add.ptr74.i = getelementptr i8, ptr %add.ptr69.i, i32 20
  %add79.i = or i32 %cbMICHDR.1.i, 68
  br label %if.end204.i

if.else81.i:                                      ; preds = %if.then35.i.if.else81.i_crit_edge, %if.end28.thread.i.if.else81.i_crit_edge
  %byFBOption.01215.i = phi i8 [ 2, %if.then35.i.if.else81.i_crit_edge ], [ 1, %if.end28.thread.i.if.else81.i_crit_edge ]
  br i1 %tobool6.not.i, label %if.else103.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr88.i = getelementptr i8, ptr %4, i32 36
  %add.ptr92.i = getelementptr i8, ptr %add.ptr88.i, i32 %cbMICHDR.1.i
  %add.ptr97.i = getelementptr i8, ptr %add.ptr92.i, i32 40
  %add102.i = add nuw nsw i32 %cbMICHDR.1.i, 96
  br label %if.end204.i

if.else103.i:                                     ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr108.i = getelementptr i8, ptr %4, i32 32
  %add.ptr112.i = getelementptr i8, ptr %add.ptr108.i, i32 %cbMICHDR.1.i
  %add.ptr117.i = getelementptr i8, ptr %add.ptr112.i, i32 24
  %add122.i = or i32 %cbMICHDR.1.i, 76
  br label %if.end204.i

if.else125.i:                                     ; preds = %if.end28.i
  br i1 %tobool25.not.i, label %if.then129.i, label %if.else125.i.if.else166.i_crit_edge

if.else125.i.if.else166.i_crit_edge:              ; preds = %if.else125.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else166.i

if.then129.i:                                     ; preds = %if.else125.i
  %add.ptr156.i = getelementptr i8, ptr %4, i32 28
  %add.ptr160.i = getelementptr i8, ptr %add.ptr156.i, i32 %cbMICHDR.1.i
  br i1 %tobool6.not.i, label %if.else151.i, label %if.then131.i

if.then131.i:                                     ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr145.i = getelementptr i8, ptr %add.ptr160.i, i32 24
  %add150.i = add nuw nsw i32 %cbMICHDR.1.i, 60
  br label %if.end204.i

if.else151.i:                                     ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #5
  %add164.i = add nuw nsw i32 %cbMICHDR.1.i, 36
  br label %if.end204.i

if.else166.i:                                     ; preds = %if.else125.i.if.else166.i_crit_edge, %if.end28.thread.i.if.else166.i_crit_edge
  %byFBOption.01118.i = phi i8 [ 2, %if.else125.i.if.else166.i_crit_edge ], [ 1, %if.end28.thread.i.if.else166.i_crit_edge ]
  %add.ptr193.i = getelementptr i8, ptr %4, i32 28
  %add.ptr197.i = getelementptr i8, ptr %add.ptr193.i, i32 %cbMICHDR.1.i
  br i1 %tobool6.not.i, label %if.else188.i, label %if.then168.i

if.then168.i:                                     ; preds = %if.else166.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr182.i = getelementptr i8, ptr %add.ptr197.i, i32 28
  %add187.i = or i32 %cbMICHDR.1.i, 68
  br label %if.end204.i

if.else188.i:                                     ; preds = %if.else166.i
  call void @__sanitizer_cov_trace_pc() #5
  %add201.i = add nuw nsw i32 %cbMICHDR.1.i, 40
  br label %if.end204.i

if.end204.i:                                      ; preds = %if.else188.i, %if.then168.i, %if.else151.i, %if.then131.i, %if.else103.i, %if.then83.i, %if.else60.i, %if.then41.i
  %byFBOption.010.i = phi i8 [ 0, %if.then41.i ], [ 0, %if.else60.i ], [ %byFBOption.01215.i, %if.then83.i ], [ %byFBOption.01215.i, %if.else103.i ], [ %126, %if.then131.i ], [ %126, %if.else151.i ], [ %byFBOption.01118.i, %if.then168.i ], [ %byFBOption.01118.i, %if.else188.i ]
  %cbHeaderLength.0.i = phi i32 [ %add59.i, %if.then41.i ], [ %add79.i, %if.else60.i ], [ %add102.i, %if.then83.i ], [ %add122.i, %if.else103.i ], [ %add150.i, %if.then131.i ], [ %add164.i, %if.else151.i ], [ %add187.i, %if.then168.i ], [ %add201.i, %if.else188.i ]
  %pMICHDR.0.i = phi ptr [ %add.ptr45.i, %if.then41.i ], [ %add.ptr65.i, %if.else60.i ], [ %add.ptr88.i, %if.then83.i ], [ %add.ptr108.i, %if.else103.i ], [ %add.ptr156.i, %if.then131.i ], [ %add.ptr156.i, %if.else151.i ], [ %add.ptr193.i, %if.then168.i ], [ %add.ptr193.i, %if.else188.i ]
  %pvRTS.0.i = phi ptr [ %add.ptr49.i, %if.then41.i ], [ null, %if.else60.i ], [ %add.ptr92.i, %if.then83.i ], [ null, %if.else103.i ], [ %add.ptr160.i, %if.then131.i ], [ null, %if.else151.i ], [ %add.ptr197.i, %if.then168.i ], [ null, %if.else188.i ]
  %pvCTS.0.i = phi ptr [ null, %if.then41.i ], [ %add.ptr69.i, %if.else60.i ], [ null, %if.then83.i ], [ %add.ptr112.i, %if.else103.i ], [ null, %if.then131.i ], [ null, %if.else151.i ], [ null, %if.then168.i ], [ null, %if.else188.i ]
  %pvTxDataHd.0.i = phi ptr [ %add.ptr54.i, %if.then41.i ], [ %add.ptr74.i, %if.else60.i ], [ %add.ptr97.i, %if.then83.i ], [ %add.ptr117.i, %if.else103.i ], [ %add.ptr145.i, %if.then131.i ], [ %add.ptr160.i, %if.else151.i ], [ %add.ptr182.i, %if.then168.i ], [ %add.ptr197.i, %if.else188.i ]
  %pvRrvTime.0.i = getelementptr i8, ptr %4, i32 24
  %and.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %129 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %pMICHDR.0.i, ptr %105, align 4
  %sub208.i = add nsw i32 %cbHeaderLength.0.i, -24
  %130 = call ptr @memset(ptr %pvRrvTime.0.i, i32 0, i32 %sub208.i)
  %131 = ptrtoint ptr %wCurrentRate to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %wCurrentRate, align 2
  %133 = ptrtoint ptr %fifo_ctl3.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 2)
  %134 = load i16, ptr %fifo_ctl3.i, align 1
  %135 = tail call i16 @llvm.bswap.i16(i16 %134) #3
  %136 = tail call i16 @llvm.bswap.i16(i16 %132) #3
  %current_rate.i.i = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %111, i32 0, i32 4
  %137 = ptrtoint ptr %current_rate.i.i to i32
  call void @__asan_storeN_noabort(i32 %137, i32 2)
  store i16 %136, ptr %current_rate.i.i, align 1
  %conv.i.i = zext i16 %135 to i32
  %and.i.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %and3.i.i = and i32 %conv.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %and7.i.i = lshr i16 %135, 11
  %138 = trunc i16 %and7.i.i to i8
  %139 = and i8 %138, 2
  %byFBOption.0.i.i = select i1 %tobool4.not.i.i, i8 %139, i8 1
  %tobool12.not.i.i = icmp eq ptr %pvRrvTime.0.i, null
  br i1 %tobool12.not.i.i, label %if.end204.i.s_vGenerateTxParameter.exit.i_crit_edge, label %if.end14.i.i

if.end204.i.s_vGenerateTxParameter.exit.i_crit_edge: ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_vGenerateTxParameter.exit.i

if.end14.i.i:                                     ; preds = %if.end204.i
  %trunc = trunc i8 %pkt_type.0277 to i2
  %140 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.1)
  switch i2 %trunc, label %if.end14.i.i.unreachabledefault [
    i2 -2, label %if.end14.i.i.if.then20.i.i_crit_edge
    i2 -1, label %if.end14.i.i.if.then20.i.i_crit_edge294
    i2 0, label %if.then50.i.i
    i2 1, label %if.then72.i.i
  ]

if.end14.i.i.if.then20.i.i_crit_edge294:          ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then20.i.i

if.end14.i.i.if.then20.i.i_crit_edge:             ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then20.i.i

if.then20.i.i:                                    ; preds = %if.end14.i.i.if.then20.i.i_crit_edge, %if.end14.i.i.if.then20.i.i_crit_edge294
  %tobool21.not.i.i = icmp eq ptr %pvRTS.0.i, null
  %141 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %66, align 1
  %call.i.i237.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %142, i8 noundef zeroext %pkt_type.0277, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %132) #3
  br i1 %tobool21.not.i.i, label %if.else32.i.i, label %if.then22.i.i

if.then22.i.i:                                    ; preds = %if.then20.i.i
  %143 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %66, align 1
  %byTopOFDMBasicRate30.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 68
  %145 = ptrtoint ptr %byTopOFDMBasicRate30.i.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %byTopOFDMBasicRate30.i.i.i, align 1
  %conv31.i.i.i = zext i8 %146 to i16
  %call32.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %144, i8 noundef zeroext %pkt_type.0277, i32 noundef 20, i16 noundef zeroext %conv31.i.i.i) #3
  %147 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %66, align 1
  %149 = ptrtoint ptr %byTopOFDMBasicRate30.i.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %byTopOFDMBasicRate30.i.i.i, align 1
  %conv35.i.i.i = zext i8 %150 to i16
  %call36.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %148, i8 noundef zeroext %pkt_type.0277, i32 noundef 14, i16 noundef zeroext %conv35.i.i.i) #3
  %uSIFS59.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 53
  %151 = ptrtoint ptr %uSIFS59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %uSIFS59.i.i.i, align 4
  %mul60.i.i.i = mul i32 %152, 3
  %add56.i.i.i = add i32 %call32.i.i.i, %call.i.i237.i.i
  %reass.add359.i.i = shl i32 %call36.i.i.i, 1
  %add58.i.i.i = add i32 %add56.i.i.i, %reass.add359.i.i
  %add61.i.i.i = add i32 %add58.i.i.i, %mul60.i.i.i
  %conv62.i.i.i = trunc i32 %add61.i.i.i to i16
  %153 = tail call i16 @llvm.bswap.i16(i16 %conv62.i.i.i) #3
  %rts_rrv_time_aa.i.i = getelementptr i8, ptr %4, i32 26
  %154 = ptrtoint ptr %rts_rrv_time_aa.i.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 %153, ptr %rts_rrv_time_aa.i.i, align 1
  %155 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %66, align 1
  %call.i205.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %156, i8 noundef zeroext %pkt_type.0277, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %132) #3
  %157 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %66, align 1
  %byTopCCKBasicRate14.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 69
  %159 = ptrtoint ptr %byTopCCKBasicRate14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %byTopCCKBasicRate14.i.i.i, align 4
  %conv15.i.i.i = zext i8 %160 to i16
  %call16.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %158, i8 noundef zeroext %pkt_type.0277, i32 noundef 20, i16 noundef zeroext %conv15.i.i.i) #3
  %161 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %66, align 1
  %163 = ptrtoint ptr %byTopCCKBasicRate14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %byTopCCKBasicRate14.i.i.i, align 4
  %conv19.i.i.i = zext i8 %164 to i16
  %call20.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %162, i8 noundef zeroext %pkt_type.0277, i32 noundef 14, i16 noundef zeroext %conv19.i.i.i) #3
  %165 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %66, align 1
  %167 = ptrtoint ptr %byTopOFDMBasicRate30.i.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %byTopOFDMBasicRate30.i.i.i, align 1
  %conv22.i.i.i = zext i8 %168 to i16
  %call23.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %166, i8 noundef zeroext %pkt_type.0277, i32 noundef 14, i16 noundef zeroext %conv22.i.i.i) #3
  %169 = ptrtoint ptr %uSIFS59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %uSIFS59.i.i.i, align 4
  %mul60.i207.i.i = mul i32 %170, 3
  %add56.i208.i.i = add i32 %call16.i.i.i, %call.i205.i.i
  %add57.i209.i.i = add i32 %add56.i208.i.i, %call20.i.i.i
  %add58.i210.i.i = add i32 %add57.i209.i.i, %call23.i.i.i
  %add61.i211.i.i = add i32 %add58.i210.i.i, %mul60.i207.i.i
  %conv62.i212.i.i = trunc i32 %add61.i211.i.i to i16
  %171 = tail call i16 @llvm.bswap.i16(i16 %conv62.i212.i.i) #3
  %172 = ptrtoint ptr %pvRrvTime.0.i to i32
  call void @__asan_storeN_noabort(i32 %172, i32 2)
  store i16 %171, ptr %pvRrvTime.0.i, align 1
  %173 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %66, align 1
  %call.i214.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %174, i8 noundef zeroext %pkt_type.0277, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %132) #3
  %175 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %66, align 1
  %177 = ptrtoint ptr %byTopCCKBasicRate14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %byTopCCKBasicRate14.i.i.i, align 4
  %conv3.i.i.i = zext i8 %178 to i16
  %call4.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %176, i8 noundef zeroext %pkt_type.0277, i32 noundef 20, i16 noundef zeroext %conv3.i.i.i) #3
  %179 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %66, align 1
  %181 = ptrtoint ptr %byTopCCKBasicRate14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %byTopCCKBasicRate14.i.i.i, align 4
  %conv7.i.i.i = zext i8 %182 to i16
  %call8.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %180, i8 noundef zeroext %pkt_type.0277, i32 noundef 14, i16 noundef zeroext %conv7.i.i.i) #3
  %183 = ptrtoint ptr %uSIFS59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %uSIFS59.i.i.i, align 4
  %mul60.i216.i.i = mul i32 %184, 3
  %add56.i217.i.i = add i32 %call4.i.i.i, %call.i214.i.i
  %reass.add360.i.i = shl i32 %call8.i.i.i, 1
  %add58.i219.i.i = add i32 %add56.i217.i.i, %reass.add360.i.i
  %add61.i220.i.i = add i32 %add58.i219.i.i, %mul60.i216.i.i
  %conv62.i221.i.i = trunc i32 %add61.i220.i.i to i16
  %185 = tail call i16 @llvm.bswap.i16(i16 %conv62.i221.i.i) #3
  %rts_rrv_time_bb.i.i = getelementptr i8, ptr %4, i32 28
  %186 = ptrtoint ptr %rts_rrv_time_bb.i.i to i32
  call void @__asan_storeN_noabort(i32 %186, i32 2)
  store i16 %185, ptr %rts_rrv_time_bb.i.i, align 1
  %187 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %66, align 1
  %call.i.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %188, i8 noundef zeroext %pkt_type.0277, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %132) #3
  br i1 %tobool.i, label %if.end.i.i.i.i, label %if.then22.i.i.vnt_rxtx_rsvtime_le16.exit.i.i_crit_edge

if.then22.i.i.vnt_rxtx_rsvtime_le16.exit.i.i_crit_edge: ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_rxtx_rsvtime_le16.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %189 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %66, align 1
  %191 = ptrtoint ptr %byTopOFDMBasicRate30.i.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %cond.in.i.i.i.i = load i8, ptr %byTopOFDMBasicRate30.i.i.i, align 1
  %conv5.i.i.i.i = zext i8 %cond.in.i.i.i.i to i16
  %call6.i.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %190, i8 noundef zeroext %pkt_type.0277, i32 noundef 14, i16 noundef zeroext %conv5.i.i.i.i) #3
  %192 = ptrtoint ptr %uSIFS59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %uSIFS59.i.i.i, align 4
  %add.i.i.i.i = add i32 %call6.i.i.i.i, %call.i.i.i.i
  %add7.i.i.i.i = add i32 %add.i.i.i.i, %193
  br label %vnt_rxtx_rsvtime_le16.exit.i.i

vnt_rxtx_rsvtime_le16.exit.i.i:                   ; preds = %if.end.i.i.i.i, %if.then22.i.i.vnt_rxtx_rsvtime_le16.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %add7.i.i.i.i, %if.end.i.i.i.i ], [ %call.i.i.i.i, %if.then22.i.i.vnt_rxtx_rsvtime_le16.exit.i.i_crit_edge ]
  %conv.i.i.i = trunc i32 %retval.0.i.i.i.i to i16
  %194 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i) #3
  %rrv_time_a.i.i = getelementptr i8, ptr %4, i32 34
  %195 = ptrtoint ptr %rrv_time_a.i.i to i32
  call void @__asan_storeN_noabort(i32 %195, i32 2)
  store i16 %194, ptr %rrv_time_a.i.i, align 1
  %196 = ptrtoint ptr %byTopCCKBasicRate14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %byTopCCKBasicRate14.i.i.i, align 4
  %conv27.i.i = zext i8 %197 to i16
  %198 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %66, align 1
  %call.i.i223.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %199, i8 noundef zeroext 1, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %conv27.i.i) #3
  br i1 %tobool.i, label %if.end.i.i232.i.i, label %vnt_rxtx_rsvtime_le16.exit.i.i.vnt_rxtx_rsvtime_le16.exit235.i.i_crit_edge

vnt_rxtx_rsvtime_le16.exit.i.i.vnt_rxtx_rsvtime_le16.exit235.i.i_crit_edge: ; preds = %vnt_rxtx_rsvtime_le16.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_rxtx_rsvtime_le16.exit235.i.i

if.end.i.i232.i.i:                                ; preds = %vnt_rxtx_rsvtime_le16.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %200 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %66, align 1
  %202 = ptrtoint ptr %byTopCCKBasicRate14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %cond.in.i.i226.i.i = load i8, ptr %byTopCCKBasicRate14.i.i.i, align 1
  %conv5.i.i227.i.i = zext i8 %cond.in.i.i226.i.i to i16
  %call6.i.i228.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %201, i8 noundef zeroext 1, i32 noundef 14, i16 noundef zeroext %conv5.i.i227.i.i) #3
  %203 = ptrtoint ptr %uSIFS59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %uSIFS59.i.i.i, align 4
  %add.i.i230.i.i = add i32 %call6.i.i228.i.i, %call.i.i223.i.i
  %add7.i.i231.i.i = add i32 %add.i.i230.i.i, %204
  br label %vnt_rxtx_rsvtime_le16.exit235.i.i

vnt_rxtx_rsvtime_le16.exit235.i.i:                ; preds = %if.end.i.i232.i.i, %vnt_rxtx_rsvtime_le16.exit.i.i.vnt_rxtx_rsvtime_le16.exit235.i.i_crit_edge
  %retval.0.i.i233.i.i = phi i32 [ %add7.i.i231.i.i, %if.end.i.i232.i.i ], [ %call.i.i223.i.i, %vnt_rxtx_rsvtime_le16.exit.i.i.vnt_rxtx_rsvtime_le16.exit235.i.i_crit_edge ]
  %conv.i234.i.i = trunc i32 %retval.0.i.i233.i.i to i16
  %205 = tail call i16 @llvm.bswap.i16(i16 %conv.i234.i.i) #3
  %rrv_time_b.i.i = getelementptr i8, ptr %4, i32 32
  %206 = ptrtoint ptr %rrv_time_b.i.i to i32
  call void @__asan_storeN_noabort(i32 %206, i32 2)
  store i16 %205, ptr %rrv_time_b.i.i, align 1
  tail call fastcc void @s_vFillRTSHead(ptr noundef %priv, i8 noundef zeroext %pkt_type.0277, ptr noundef nonnull %pvRTS.0.i, i32 noundef %cbFrameSize.0.i, i1 noundef zeroext %tobool.i, i1 noundef zeroext %tobool.not.i.i, ptr noundef %109, i16 noundef zeroext %132, i8 noundef zeroext %byFBOption.0.i.i) #3
  br label %s_vGenerateTxParameter.exit.i

if.else32.i.i:                                    ; preds = %if.then20.i.i
  br i1 %tobool.i, label %if.end.i.i248.i.i, label %if.else32.i.i.vnt_rxtx_rsvtime_le16.exit251.i.i_crit_edge

if.else32.i.i.vnt_rxtx_rsvtime_le16.exit251.i.i_crit_edge: ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_rxtx_rsvtime_le16.exit251.i.i

if.end.i.i248.i.i:                                ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %207 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %66, align 1
  %byTopOFDMBasicRate.i.i240.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 68
  %209 = ptrtoint ptr %byTopOFDMBasicRate.i.i240.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %cond.in.i.i242.i.i = load i8, ptr %byTopOFDMBasicRate.i.i240.i.i, align 1
  %conv5.i.i243.i.i = zext i8 %cond.in.i.i242.i.i to i16
  %call6.i.i244.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %208, i8 noundef zeroext %pkt_type.0277, i32 noundef 14, i16 noundef zeroext %conv5.i.i243.i.i) #3
  %uSIFS.i.i245.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 53
  %210 = ptrtoint ptr %uSIFS.i.i245.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %uSIFS.i.i245.i.i, align 4
  %add.i.i246.i.i = add i32 %call6.i.i244.i.i, %call.i.i237.i.i
  %add7.i.i247.i.i = add i32 %add.i.i246.i.i, %211
  br label %vnt_rxtx_rsvtime_le16.exit251.i.i

vnt_rxtx_rsvtime_le16.exit251.i.i:                ; preds = %if.end.i.i248.i.i, %if.else32.i.i.vnt_rxtx_rsvtime_le16.exit251.i.i_crit_edge
  %retval.0.i.i249.i.i = phi i32 [ %add7.i.i247.i.i, %if.end.i.i248.i.i ], [ %call.i.i237.i.i, %if.else32.i.i.vnt_rxtx_rsvtime_le16.exit251.i.i_crit_edge ]
  %conv.i250.i.i = trunc i32 %retval.0.i.i249.i.i to i16
  %212 = tail call i16 @llvm.bswap.i16(i16 %conv.i250.i.i) #3
  %rrv_time_a36.i.i = getelementptr i8, ptr %4, i32 30
  %213 = ptrtoint ptr %rrv_time_a36.i.i to i32
  call void @__asan_storeN_noabort(i32 %213, i32 2)
  store i16 %212, ptr %rrv_time_a36.i.i, align 1
  %byTopCCKBasicRate37.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 69
  %214 = ptrtoint ptr %byTopCCKBasicRate37.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %byTopCCKBasicRate37.i.i, align 4
  %conv38.i.i = zext i8 %215 to i16
  %216 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %66, align 1
  %call.i.i253.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %217, i8 noundef zeroext 1, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %conv38.i.i) #3
  br i1 %tobool.i, label %if.end.i.i262.i.i, label %vnt_rxtx_rsvtime_le16.exit251.i.i.vnt_rxtx_rsvtime_le16.exit265.i.i_crit_edge

vnt_rxtx_rsvtime_le16.exit251.i.i.vnt_rxtx_rsvtime_le16.exit265.i.i_crit_edge: ; preds = %vnt_rxtx_rsvtime_le16.exit251.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_rxtx_rsvtime_le16.exit265.i.i

if.end.i.i262.i.i:                                ; preds = %vnt_rxtx_rsvtime_le16.exit251.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %218 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %66, align 1
  %220 = ptrtoint ptr %byTopCCKBasicRate37.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %cond.in.i.i256.i.i = load i8, ptr %byTopCCKBasicRate37.i.i, align 1
  %conv5.i.i257.i.i = zext i8 %cond.in.i.i256.i.i to i16
  %call6.i.i258.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %219, i8 noundef zeroext 1, i32 noundef 14, i16 noundef zeroext %conv5.i.i257.i.i) #3
  %uSIFS.i.i259.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 53
  %221 = ptrtoint ptr %uSIFS.i.i259.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %uSIFS.i.i259.i.i, align 4
  %add.i.i260.i.i = add i32 %call6.i.i258.i.i, %call.i.i253.i.i
  %add7.i.i261.i.i = add i32 %add.i.i260.i.i, %222
  br label %vnt_rxtx_rsvtime_le16.exit265.i.i

vnt_rxtx_rsvtime_le16.exit265.i.i:                ; preds = %if.end.i.i262.i.i, %vnt_rxtx_rsvtime_le16.exit251.i.i.vnt_rxtx_rsvtime_le16.exit265.i.i_crit_edge
  %retval.0.i.i263.i.i = phi i32 [ %add7.i.i261.i.i, %if.end.i.i262.i.i ], [ %call.i.i253.i.i, %vnt_rxtx_rsvtime_le16.exit251.i.i.vnt_rxtx_rsvtime_le16.exit265.i.i_crit_edge ]
  %conv.i264.i.i = trunc i32 %retval.0.i.i263.i.i to i16
  %223 = tail call i16 @llvm.bswap.i16(i16 %conv.i264.i.i) #3
  %rrv_time_b41.i.i = getelementptr i8, ptr %4, i32 28
  %224 = ptrtoint ptr %rrv_time_b41.i.i to i32
  call void @__asan_storeN_noabort(i32 %224, i32 2)
  store i16 %223, ptr %rrv_time_b41.i.i, align 1
  %225 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %66, align 1
  %call.i267.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %226, i8 noundef zeroext %pkt_type.0277, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %132) #3
  %227 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %66, align 1
  %229 = ptrtoint ptr %byTopCCKBasicRate37.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %byTopCCKBasicRate37.i.i, align 4
  %conv44.i.i.i = zext i8 %230 to i16
  %call45.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %228, i8 noundef zeroext %pkt_type.0277, i32 noundef 14, i16 noundef zeroext %conv44.i.i.i) #3
  %231 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %66, align 1
  %byTopOFDMBasicRate47.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 68
  %233 = ptrtoint ptr %byTopOFDMBasicRate47.i.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %byTopOFDMBasicRate47.i.i.i, align 1
  %conv48.i.i.i = zext i8 %234 to i16
  %call49.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %232, i8 noundef zeroext %pkt_type.0277, i32 noundef 14, i16 noundef zeroext %conv48.i.i.i) #3
  %uSIFS.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 53
  %235 = ptrtoint ptr %uSIFS.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %uSIFS.i.i.i, align 4
  %mul.i.i.i = shl i32 %236, 1
  %add.i.i.i = add i32 %call45.i.i.i, %call.i267.i.i
  %add50.i.i.i = add i32 %add.i.i.i, %call49.i.i.i
  %add51.i.i.i = add i32 %add50.i.i.i, %mul.i.i.i
  %conv62.i268.i.i = trunc i32 %add51.i.i.i to i16
  %237 = tail call i16 @llvm.bswap.i16(i16 %conv62.i268.i.i) #3
  %238 = ptrtoint ptr %pvRrvTime.0.i to i32
  call void @__asan_storeN_noabort(i32 %238, i32 2)
  store i16 %237, ptr %pvRrvTime.0.i, align 1
  %tobool.not.i.i.i = icmp eq ptr %pvCTS.0.i, null
  br i1 %tobool.not.i.i.i, label %vnt_rxtx_rsvtime_le16.exit265.i.i.s_vGenerateTxParameter.exit.i_crit_edge, label %if.end.i.i.i

vnt_rxtx_rsvtime_le16.exit265.i.i.s_vGenerateTxParameter.exit.i_crit_edge: ; preds = %vnt_rxtx_rsvtime_le16.exit265.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_vGenerateTxParameter.exit.i

if.end.i.i.i:                                     ; preds = %vnt_rxtx_rsvtime_le16.exit265.i.i
  %239 = xor i32 %and.i.i, 14
  %240 = and i8 %pkt_type.0277, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %switch.i.i.i.not = icmp eq i8 %240, 0
  br i1 %switch.i.i.i.not, label %if.end.i.i.i.s_vGenerateTxParameter.exit.i_crit_edge, label %if.then9.i.i.i

if.end.i.i.i.s_vGenerateTxParameter.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_vGenerateTxParameter.exit.i

if.then9.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %byFBOption.0.i.i)
  %cmp11.not.i.i.i = icmp eq i8 %byFBOption.0.i.i, 0
  br i1 %cmp11.not.i.i.i, label %if.then9.i.i.i.if.else.i.i.i_crit_edge, label %switch.early.test.i.i.i

if.then9.i.i.i.if.else.i.i.i_crit_edge:           ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i.i.i

switch.early.test.i.i.i:                          ; preds = %if.then9.i.i.i
  %241 = zext i32 %dma_idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %241, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %dma_idx, label %if.then18.i.i.i [
    i32 4, label %switch.early.test.i.i.i.if.else.i.i.i_crit_edge
    i32 2, label %switch.early.test.i.i.i.if.else.i.i.i_crit_edge295
  ]

switch.early.test.i.i.i.if.else.i.i.i_crit_edge295: ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i.i.i

switch.early.test.i.i.i.if.else.i.i.i_crit_edge:  ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i.i.i

if.then18.i.i.i:                                  ; preds = %switch.early.test.i.i.i
  %242 = ptrtoint ptr %byTopCCKBasicRate37.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %byTopCCKBasicRate37.i.i, align 4
  %conv19.i270.i.i = zext i8 %243 to i16
  tail call void @vnt_get_phy_field(ptr noundef %priv, i32 noundef %239, i16 noundef zeroext %conv19.i270.i.i, i8 noundef zeroext 1, ptr noundef nonnull %pvCTS.0.i) #3
  %244 = ptrtoint ptr %uSIFS.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %uSIFS.i.i.i, align 4
  %246 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %66, align 1
  %call.i507.i.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %247, i8 noundef zeroext %pkt_type.0277, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %132) #3
  br i1 %tobool.i, label %if.end.i518.i.i.i.i, label %if.then18.i.i.i.s_uGetRTSCTSDuration.exit.i.i.i_crit_edge

if.then18.i.i.i.s_uGetRTSCTSDuration.exit.i.i.i_crit_edge: ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit.i.i.i

if.end.i518.i.i.i.i:                              ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %248 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %66, align 1
  %250 = ptrtoint ptr %byTopOFDMBasicRate47.i.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %cond.in.i512.i.i.i.i = load i8, ptr %byTopOFDMBasicRate47.i.i.i, align 1
  %conv5.i513.i.i.i.i = zext i8 %cond.in.i512.i.i.i.i to i16
  %call6.i514.i.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %249, i8 noundef zeroext %pkt_type.0277, i32 noundef 14, i16 noundef zeroext %conv5.i513.i.i.i.i) #3
  %251 = ptrtoint ptr %uSIFS.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %uSIFS.i.i.i, align 4
  %add.i516.i.i.i.i = add i32 %call6.i514.i.i.i.i, %call.i507.i.i.i.i
  %add7.i517.i.i.i.i = add i32 %add.i516.i.i.i.i, %252
  br label %s_uGetRTSCTSDuration.exit.i.i.i

s_uGetRTSCTSDuration.exit.i.i.i:                  ; preds = %if.end.i518.i.i.i.i, %if.then18.i.i.i.s_uGetRTSCTSDuration.exit.i.i.i_crit_edge
  %retval.0.i519.i.i.i.i = phi i32 [ %add7.i517.i.i.i.i, %if.end.i518.i.i.i.i ], [ %call.i507.i.i.i.i, %if.then18.i.i.i.s_uGetRTSCTSDuration.exit.i.i.i_crit_edge ]
  %add29.i.i.i.i = add i32 %retval.0.i519.i.i.i.i, %245
  %conv307.i.i.i.i = trunc i32 %add29.i.i.i.i to i16
  %253 = tail call i16 @llvm.bswap.i16(i16 %conv307.i.i.i.i) #3
  %duration_ba.i.i.i = getelementptr inbounds %struct.vnt_cts_fb, ptr %pvCTS.0.i, i32 0, i32 1
  %254 = ptrtoint ptr %duration_ba.i.i.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %253, ptr %duration_ba.i.i.i, align 2
  %call22.i.i.i = tail call fastcc zeroext i16 @s_uGetRTSCTSDuration(ptr noundef %priv, i8 noundef zeroext 8, i32 noundef %cbFrameSize.0.i, i8 noundef zeroext %pkt_type.0277, i16 noundef zeroext %132, i1 noundef zeroext %tobool.i, i8 noundef zeroext %byFBOption.0.i.i) #3
  %cts_duration_ba_f0.i.i.i = getelementptr inbounds %struct.vnt_cts_fb, ptr %pvCTS.0.i, i32 0, i32 3
  %255 = ptrtoint ptr %cts_duration_ba_f0.i.i.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %call22.i.i.i, ptr %cts_duration_ba_f0.i.i.i, align 2
  %trunc.i.i = trunc i8 %byFBOption.0.i.i to i2
  %256 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %256, ptr @__sancov_gen_cov_switch_values.3)
  switch i2 %trunc.i.i, label %s_uGetRTSCTSDuration.exit.i.i.i.s_uGetRTSCTSDuration.exit97.i.i.i_crit_edge [
    i2 1, label %land.lhs.true269.i.i.i.i
    i2 -2, label %land.lhs.true289.i.i.i.i
  ]

s_uGetRTSCTSDuration.exit.i.i.i.s_uGetRTSCTSDuration.exit97.i.i.i_crit_edge: ; preds = %s_uGetRTSCTSDuration.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit97.i.i.i

land.lhs.true269.i.i.i.i:                         ; preds = %s_uGetRTSCTSDuration.exit.i.i.i
  %257 = add i16 %132, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %257)
  %258 = icmp ult i16 %257, 5
  br i1 %258, label %land.lhs.true269.i.i.i.i.s_uGetRTSCTSDuration.exit97.sink.split.i.i.i_crit_edge, label %land.lhs.true269.i.i.i.i.s_uGetRTSCTSDuration.exit97.i.i.i_crit_edge

land.lhs.true269.i.i.i.i.s_uGetRTSCTSDuration.exit97.i.i.i_crit_edge: ; preds = %land.lhs.true269.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit97.i.i.i

land.lhs.true269.i.i.i.i.s_uGetRTSCTSDuration.exit97.sink.split.i.i.i_crit_edge: ; preds = %land.lhs.true269.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit97.sink.split.i.i.i

land.lhs.true289.i.i.i.i:                         ; preds = %s_uGetRTSCTSDuration.exit.i.i.i
  %259 = add i16 %132, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %259)
  %260 = icmp ult i16 %259, 5
  br i1 %260, label %land.lhs.true289.i.i.i.i.s_uGetRTSCTSDuration.exit97.sink.split.i.i.i_crit_edge, label %land.lhs.true289.i.i.i.i.s_uGetRTSCTSDuration.exit97.i.i.i_crit_edge

land.lhs.true289.i.i.i.i.s_uGetRTSCTSDuration.exit97.i.i.i_crit_edge: ; preds = %land.lhs.true289.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit97.i.i.i

land.lhs.true289.i.i.i.i.s_uGetRTSCTSDuration.exit97.sink.split.i.i.i_crit_edge: ; preds = %land.lhs.true289.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit97.sink.split.i.i.i

s_uGetRTSCTSDuration.exit97.sink.split.i.i.i:     ; preds = %land.lhs.true289.i.i.i.i.s_uGetRTSCTSDuration.exit97.sink.split.i.i.i_crit_edge, %land.lhs.true269.i.i.i.i.s_uGetRTSCTSDuration.exit97.sink.split.i.i.i_crit_edge
  %wFB_Opt0.sink.i.i.i = phi ptr [ @wFB_Opt0, %land.lhs.true269.i.i.i.i.s_uGetRTSCTSDuration.exit97.sink.split.i.i.i_crit_edge ], [ @wFB_Opt1, %land.lhs.true289.i.i.i.i.s_uGetRTSCTSDuration.exit97.sink.split.i.i.i_crit_edge ]
  %conv270.i.i.i.i = zext i16 %132 to i32
  %261 = ptrtoint ptr %uSIFS.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %uSIFS.i.i.i, align 4
  %sub280.i.i.i.i = add nsw i32 %conv270.i.i.i.i, -7
  %arrayidx281.i.i.i.i = getelementptr [2 x [5 x i16]], ptr %wFB_Opt0.sink.i.i.i, i32 0, i32 1, i32 %sub280.i.i.i.i
  %263 = ptrtoint ptr %arrayidx281.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %arrayidx281.i.i.i.i, align 2
  %call283.i.i.i.i = tail call fastcc i32 @s_uGetTxRsvTime(ptr noundef %priv, i8 noundef zeroext %pkt_type.0277, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %264, i1 noundef zeroext %tobool.i) #3
  %add284.i.i.i.i = add i32 %call283.i.i.i.i, %262
  %phi.cast.i.i.i = trunc i32 %add284.i.i.i.i to i16
  br label %s_uGetRTSCTSDuration.exit97.i.i.i

s_uGetRTSCTSDuration.exit97.i.i.i:                ; preds = %s_uGetRTSCTSDuration.exit97.sink.split.i.i.i, %land.lhs.true289.i.i.i.i.s_uGetRTSCTSDuration.exit97.i.i.i_crit_edge, %land.lhs.true269.i.i.i.i.s_uGetRTSCTSDuration.exit97.i.i.i_crit_edge, %s_uGetRTSCTSDuration.exit.i.i.i.s_uGetRTSCTSDuration.exit97.i.i.i_crit_edge
  %uDurTime.0.i.i.i.i = phi i16 [ 0, %land.lhs.true289.i.i.i.i.s_uGetRTSCTSDuration.exit97.i.i.i_crit_edge ], [ 0, %s_uGetRTSCTSDuration.exit.i.i.i.s_uGetRTSCTSDuration.exit97.i.i.i_crit_edge ], [ 0, %land.lhs.true269.i.i.i.i.s_uGetRTSCTSDuration.exit97.i.i.i_crit_edge ], [ %phi.cast.i.i.i, %s_uGetRTSCTSDuration.exit97.sink.split.i.i.i ]
  %265 = tail call i16 @llvm.bswap.i16(i16 %uDurTime.0.i.i.i.i) #3
  %cts_duration_ba_f1.i.i.i = getelementptr inbounds %struct.vnt_cts_fb, ptr %pvCTS.0.i, i32 0, i32 4
  %266 = ptrtoint ptr %cts_duration_ba_f1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %265, ptr %cts_duration_ba_f1.i.i.i, align 2
  %267 = ptrtoint ptr %duration_ba.i.i.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %duration_ba.i.i.i, align 2
  %data.i.i.i = getelementptr inbounds %struct.vnt_cts_fb, ptr %pvCTS.0.i, i32 0, i32 5
  %duration.i.i.i = getelementptr inbounds %struct.vnt_cts_fb, ptr %pvCTS.0.i, i32 0, i32 5, i32 1
  %269 = ptrtoint ptr %duration.i.i.i to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 %268, ptr %duration.i.i.i, align 2
  %270 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 -15360, ptr %data.i.i.i, align 2
  %reserved2.i.i.i = getelementptr inbounds %struct.vnt_cts_fb, ptr %pvCTS.0.i, i32 0, i32 6
  %271 = ptrtoint ptr %reserved2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 0, ptr %reserved2.i.i.i, align 2
  %ra.i.i.i = getelementptr inbounds %struct.vnt_cts_fb, ptr %pvCTS.0.i, i32 0, i32 5, i32 2
  %abyCurrentNetAddr.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 42
  %272 = ptrtoint ptr %abyCurrentNetAddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %abyCurrentNetAddr.i.i.i, align 4
  %274 = ptrtoint ptr %ra.i.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %ra.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 42, i32 4
  %275 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr %struct.vnt_cts_fb, ptr %pvCTS.0.i, i32 0, i32 5, i32 2, i32 4
  %277 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 %276, ptr %add.ptr1.i.i.i.i, align 2
  br label %s_vGenerateTxParameter.exit.i

if.else.i.i.i:                                    ; preds = %switch.early.test.i.i.i.if.else.i.i.i_crit_edge, %switch.early.test.i.i.i.if.else.i.i.i_crit_edge295, %if.then9.i.i.i.if.else.i.i.i_crit_edge
  %278 = ptrtoint ptr %byTopCCKBasicRate37.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %byTopCCKBasicRate37.i.i, align 4
  %conv31.i271.i.i = zext i8 %279 to i16
  tail call void @vnt_get_phy_field(ptr noundef %priv, i32 noundef %239, i16 noundef zeroext %conv31.i271.i.i, i8 noundef zeroext 1, ptr noundef nonnull %pvCTS.0.i) #3
  %280 = ptrtoint ptr %uSIFS.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %uSIFS.i.i.i, align 4
  %282 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %66, align 1
  %call.i507.i100.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %283, i8 noundef zeroext %pkt_type.0277, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %132) #3
  br i1 %tobool.i, label %if.end.i518.i110.i.i.i, label %if.else.i.i.i.s_uGetRTSCTSDuration.exit115.i.i.i_crit_edge

if.else.i.i.i.s_uGetRTSCTSDuration.exit115.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit115.i.i.i

if.end.i518.i110.i.i.i:                           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %284 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %66, align 1
  %286 = ptrtoint ptr %byTopOFDMBasicRate47.i.i.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %cond.in.i512.i105.i.i.i = load i8, ptr %byTopOFDMBasicRate47.i.i.i, align 1
  %conv5.i513.i106.i.i.i = zext i8 %cond.in.i512.i105.i.i.i to i16
  %call6.i514.i107.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %285, i8 noundef zeroext %pkt_type.0277, i32 noundef 14, i16 noundef zeroext %conv5.i513.i106.i.i.i) #3
  %287 = ptrtoint ptr %uSIFS.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %uSIFS.i.i.i, align 4
  %add.i516.i108.i.i.i = add i32 %call6.i514.i107.i.i.i, %call.i507.i100.i.i.i
  %add7.i517.i109.i.i.i = add i32 %add.i516.i108.i.i.i, %288
  br label %s_uGetRTSCTSDuration.exit115.i.i.i

s_uGetRTSCTSDuration.exit115.i.i.i:               ; preds = %if.end.i518.i110.i.i.i, %if.else.i.i.i.s_uGetRTSCTSDuration.exit115.i.i.i_crit_edge
  %retval.0.i519.i111.i.i.i = phi i32 [ %add7.i517.i109.i.i.i, %if.end.i518.i110.i.i.i ], [ %call.i507.i100.i.i.i, %if.else.i.i.i.s_uGetRTSCTSDuration.exit115.i.i.i_crit_edge ]
  %add29.i112.i.i.i = add i32 %retval.0.i519.i111.i.i.i, %281
  %conv307.i114.i.i.i = trunc i32 %add29.i112.i.i.i to i16
  %289 = tail call i16 @llvm.bswap.i16(i16 %conv307.i114.i.i.i) #3
  %duration_ba35.i.i.i = getelementptr inbounds %struct.vnt_cts, ptr %pvCTS.0.i, i32 0, i32 1
  %290 = ptrtoint ptr %duration_ba35.i.i.i to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 %289, ptr %duration_ba35.i.i.i, align 2
  %data37.i.i.i = getelementptr inbounds %struct.vnt_cts, ptr %pvCTS.0.i, i32 0, i32 3
  %duration38.i.i.i = getelementptr inbounds %struct.vnt_cts, ptr %pvCTS.0.i, i32 0, i32 3, i32 1
  %291 = ptrtoint ptr %duration38.i.i.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 %289, ptr %duration38.i.i.i, align 2
  %292 = ptrtoint ptr %data37.i.i.i to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 -15360, ptr %data37.i.i.i, align 2
  %reserved241.i.i.i = getelementptr inbounds %struct.vnt_cts, ptr %pvCTS.0.i, i32 0, i32 4
  %293 = ptrtoint ptr %reserved241.i.i.i to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 0, ptr %reserved241.i.i.i, align 2
  %ra43.i.i.i = getelementptr inbounds %struct.vnt_cts, ptr %pvCTS.0.i, i32 0, i32 3, i32 2
  %abyCurrentNetAddr45.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 42
  %294 = ptrtoint ptr %abyCurrentNetAddr45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %abyCurrentNetAddr45.i.i.i, align 4
  %296 = ptrtoint ptr %ra43.i.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %295, ptr %ra43.i.i.i, align 4
  %add.ptr.i116.i.i.i = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 42, i32 4
  %297 = ptrtoint ptr %add.ptr.i116.i.i.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %add.ptr.i116.i.i.i, align 2
  %add.ptr1.i117.i.i.i = getelementptr %struct.vnt_cts, ptr %pvCTS.0.i, i32 0, i32 3, i32 2, i32 4
  %299 = ptrtoint ptr %add.ptr1.i117.i.i.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 %298, ptr %add.ptr1.i117.i.i.i, align 2
  br label %s_vGenerateTxParameter.exit.i

if.then50.i.i:                                    ; preds = %if.end14.i.i
  %tobool51.not.i.i = icmp eq ptr %pvRTS.0.i, null
  %300 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %66, align 1
  %call.i.i303.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %301, i8 noundef zeroext 0, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %132) #3
  br i1 %tobool51.not.i.i, label %if.then61.i.i, label %if.then52.i.i

if.then52.i.i:                                    ; preds = %if.then50.i.i
  %302 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %66, align 1
  %byTopOFDMBasicRate30.i274.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 68
  %304 = ptrtoint ptr %byTopOFDMBasicRate30.i274.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %byTopOFDMBasicRate30.i274.i.i, align 1
  %conv31.i275.i.i = zext i8 %305 to i16
  %call32.i276.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %303, i8 noundef zeroext 0, i32 noundef 20, i16 noundef zeroext %conv31.i275.i.i) #3
  %306 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %66, align 1
  %308 = ptrtoint ptr %byTopOFDMBasicRate30.i274.i.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %byTopOFDMBasicRate30.i274.i.i, align 1
  %conv35.i277.i.i = zext i8 %309 to i16
  %call36.i278.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %307, i8 noundef zeroext 0, i32 noundef 14, i16 noundef zeroext %conv35.i277.i.i) #3
  %uSIFS59.i279.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 53
  %310 = ptrtoint ptr %uSIFS59.i279.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %uSIFS59.i279.i.i, align 4
  %mul60.i280.i.i = mul i32 %311, 3
  %add56.i281.i.i = add i32 %call32.i276.i.i, %call.i.i303.i.i
  %reass.add358.i.i = shl i32 %call36.i278.i.i, 1
  %add58.i283.i.i = add i32 %add56.i281.i.i, %reass.add358.i.i
  %add61.i284.i.i = add i32 %add58.i283.i.i, %mul60.i280.i.i
  %conv62.i285.i.i = trunc i32 %add61.i284.i.i to i16
  %312 = tail call i16 @llvm.bswap.i16(i16 %conv62.i285.i.i) #3
  %313 = ptrtoint ptr %pvRrvTime.0.i to i32
  call void @__asan_storeN_noabort(i32 %313, i32 2)
  store i16 %312, ptr %pvRrvTime.0.i, align 1
  %314 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %66, align 1
  %call.i.i287.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %315, i8 noundef zeroext 0, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %132) #3
  br i1 %tobool.i, label %if.end.i.i298.i.i, label %if.then52.i.i.vnt_rxtx_rsvtime_le16.exit301.i.i_crit_edge

if.then52.i.i.vnt_rxtx_rsvtime_le16.exit301.i.i_crit_edge: ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_rxtx_rsvtime_le16.exit301.i.i

if.end.i.i298.i.i:                                ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %316 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %66, align 1
  %318 = ptrtoint ptr %byTopOFDMBasicRate30.i274.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %cond.in.i.i292.i.i = load i8, ptr %byTopOFDMBasicRate30.i274.i.i, align 1
  %conv5.i.i293.i.i = zext i8 %cond.in.i.i292.i.i to i16
  %call6.i.i294.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %317, i8 noundef zeroext 0, i32 noundef 14, i16 noundef zeroext %conv5.i.i293.i.i) #3
  %319 = ptrtoint ptr %uSIFS59.i279.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %uSIFS59.i279.i.i, align 4
  %add.i.i296.i.i = add i32 %call6.i.i294.i.i, %call.i.i287.i.i
  %add7.i.i297.i.i = add i32 %add.i.i296.i.i, %320
  br label %vnt_rxtx_rsvtime_le16.exit301.i.i

vnt_rxtx_rsvtime_le16.exit301.i.i:                ; preds = %if.end.i.i298.i.i, %if.then52.i.i.vnt_rxtx_rsvtime_le16.exit301.i.i_crit_edge
  %retval.0.i.i299.i.i = phi i32 [ %add7.i.i297.i.i, %if.end.i.i298.i.i ], [ %call.i.i287.i.i, %if.then52.i.i.vnt_rxtx_rsvtime_le16.exit301.i.i_crit_edge ]
  %conv.i300.i.i = trunc i32 %retval.0.i.i299.i.i to i16
  %321 = tail call i16 @llvm.bswap.i16(i16 %conv.i300.i.i) #3
  %rrv_time.i.i = getelementptr i8, ptr %4, i32 26
  %322 = ptrtoint ptr %rrv_time.i.i to i32
  call void @__asan_storeN_noabort(i32 %322, i32 2)
  store i16 %321, ptr %rrv_time.i.i, align 1
  tail call fastcc void @s_vFillRTSHead(ptr noundef %priv, i8 noundef zeroext 0, ptr noundef nonnull %pvRTS.0.i, i32 noundef %cbFrameSize.0.i, i1 noundef zeroext %tobool.i, i1 noundef zeroext %tobool.not.i.i, ptr noundef %109, i16 noundef zeroext %132, i8 noundef zeroext %byFBOption.0.i.i) #3
  br label %s_vGenerateTxParameter.exit.i

if.then61.i.i:                                    ; preds = %if.then50.i.i
  br i1 %tobool.i, label %if.end.i.i312.i.i, label %if.then61.i.i.vnt_rxtx_rsvtime_le16.exit315.i.i_crit_edge

if.then61.i.i.vnt_rxtx_rsvtime_le16.exit315.i.i_crit_edge: ; preds = %if.then61.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_rxtx_rsvtime_le16.exit315.i.i

if.end.i.i312.i.i:                                ; preds = %if.then61.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %323 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %66, align 1
  %byTopOFDMBasicRate.i.i305.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 68
  %325 = ptrtoint ptr %byTopOFDMBasicRate.i.i305.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %cond.in.i.i306.i.i = load i8, ptr %byTopOFDMBasicRate.i.i305.i.i, align 1
  %conv5.i.i307.i.i = zext i8 %cond.in.i.i306.i.i to i16
  %call6.i.i308.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %324, i8 noundef zeroext 0, i32 noundef 14, i16 noundef zeroext %conv5.i.i307.i.i) #3
  %uSIFS.i.i309.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 53
  %326 = ptrtoint ptr %uSIFS.i.i309.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %uSIFS.i.i309.i.i, align 4
  %add.i.i310.i.i = add i32 %call6.i.i308.i.i, %call.i.i303.i.i
  %add7.i.i311.i.i = add i32 %add.i.i310.i.i, %327
  br label %vnt_rxtx_rsvtime_le16.exit315.i.i

vnt_rxtx_rsvtime_le16.exit315.i.i:                ; preds = %if.end.i.i312.i.i, %if.then61.i.i.vnt_rxtx_rsvtime_le16.exit315.i.i_crit_edge
  %retval.0.i.i313.i.i = phi i32 [ %add7.i.i311.i.i, %if.end.i.i312.i.i ], [ %call.i.i303.i.i, %if.then61.i.i.vnt_rxtx_rsvtime_le16.exit315.i.i_crit_edge ]
  %conv.i314.i.i = trunc i32 %retval.0.i.i313.i.i to i16
  %328 = tail call i16 @llvm.bswap.i16(i16 %conv.i314.i.i) #3
  %rrv_time65.i.i = getelementptr i8, ptr %4, i32 26
  %329 = ptrtoint ptr %rrv_time65.i.i to i32
  call void @__asan_storeN_noabort(i32 %329, i32 2)
  store i16 %328, ptr %rrv_time65.i.i, align 1
  br label %s_vGenerateTxParameter.exit.i

if.then72.i.i:                                    ; preds = %if.end14.i.i
  %tobool73.not.i.i = icmp eq ptr %pvRTS.0.i, null
  %330 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %66, align 1
  %call.i.i345.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %331, i8 noundef zeroext 1, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %132) #3
  br i1 %tobool73.not.i.i, label %if.else83.i.i, label %if.then74.i.i

if.then74.i.i:                                    ; preds = %if.then72.i.i
  %332 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %66, align 1
  %byTopCCKBasicRate.i318.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 69
  %334 = ptrtoint ptr %byTopCCKBasicRate.i318.i.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %byTopCCKBasicRate.i318.i.i, align 4
  %conv3.i319.i.i = zext i8 %335 to i16
  %call4.i320.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %333, i8 noundef zeroext 1, i32 noundef 20, i16 noundef zeroext %conv3.i319.i.i) #3
  %336 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %66, align 1
  %338 = ptrtoint ptr %byTopCCKBasicRate.i318.i.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %byTopCCKBasicRate.i318.i.i, align 4
  %conv7.i321.i.i = zext i8 %339 to i16
  %call8.i322.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %337, i8 noundef zeroext 1, i32 noundef 14, i16 noundef zeroext %conv7.i321.i.i) #3
  %uSIFS59.i323.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 53
  %340 = ptrtoint ptr %uSIFS59.i323.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %uSIFS59.i323.i.i, align 4
  %mul60.i324.i.i = mul i32 %341, 3
  %add56.i325.i.i = add i32 %call4.i320.i.i, %call.i.i345.i.i
  %reass.add.i.i = shl i32 %call8.i322.i.i, 1
  %add58.i327.i.i = add i32 %add56.i325.i.i, %reass.add.i.i
  %add61.i328.i.i = add i32 %add58.i327.i.i, %mul60.i324.i.i
  %conv62.i329.i.i = trunc i32 %add61.i328.i.i to i16
  %342 = tail call i16 @llvm.bswap.i16(i16 %conv62.i329.i.i) #3
  %343 = ptrtoint ptr %pvRrvTime.0.i to i32
  call void @__asan_storeN_noabort(i32 %343, i32 2)
  store i16 %342, ptr %pvRrvTime.0.i, align 1
  %344 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %66, align 1
  %call.i.i331.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %345, i8 noundef zeroext 1, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %132) #3
  br i1 %tobool.i, label %if.end.i.i340.i.i, label %if.then74.i.i.vnt_rxtx_rsvtime_le16.exit343.i.i_crit_edge

if.then74.i.i.vnt_rxtx_rsvtime_le16.exit343.i.i_crit_edge: ; preds = %if.then74.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_rxtx_rsvtime_le16.exit343.i.i

if.end.i.i340.i.i:                                ; preds = %if.then74.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %346 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %66, align 1
  %348 = ptrtoint ptr %byTopCCKBasicRate.i318.i.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %cond.in.i.i334.i.i = load i8, ptr %byTopCCKBasicRate.i318.i.i, align 1
  %conv5.i.i335.i.i = zext i8 %cond.in.i.i334.i.i to i16
  %call6.i.i336.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %347, i8 noundef zeroext 1, i32 noundef 14, i16 noundef zeroext %conv5.i.i335.i.i) #3
  %349 = ptrtoint ptr %uSIFS59.i323.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %uSIFS59.i323.i.i, align 4
  %add.i.i338.i.i = add i32 %call6.i.i336.i.i, %call.i.i331.i.i
  %add7.i.i339.i.i = add i32 %add.i.i338.i.i, %350
  br label %vnt_rxtx_rsvtime_le16.exit343.i.i

vnt_rxtx_rsvtime_le16.exit343.i.i:                ; preds = %if.end.i.i340.i.i, %if.then74.i.i.vnt_rxtx_rsvtime_le16.exit343.i.i_crit_edge
  %retval.0.i.i341.i.i = phi i32 [ %add7.i.i339.i.i, %if.end.i.i340.i.i ], [ %call.i.i331.i.i, %if.then74.i.i.vnt_rxtx_rsvtime_le16.exit343.i.i_crit_edge ]
  %conv.i342.i.i = trunc i32 %retval.0.i.i341.i.i to i16
  %351 = tail call i16 @llvm.bswap.i16(i16 %conv.i342.i.i) #3
  %rrv_time80.i.i = getelementptr i8, ptr %4, i32 26
  %352 = ptrtoint ptr %rrv_time80.i.i to i32
  call void @__asan_storeN_noabort(i32 %352, i32 2)
  store i16 %351, ptr %rrv_time80.i.i, align 1
  tail call fastcc void @s_vFillRTSHead(ptr noundef %priv, i8 noundef zeroext 1, ptr noundef nonnull %pvRTS.0.i, i32 noundef %cbFrameSize.0.i, i1 noundef zeroext %tobool.i, i1 noundef zeroext %tobool.not.i.i, ptr noundef %109, i16 noundef zeroext %132, i8 noundef zeroext %byFBOption.0.i.i) #3
  br label %s_vGenerateTxParameter.exit.i

if.else83.i.i:                                    ; preds = %if.then72.i.i
  br i1 %tobool.i, label %if.end.i.i354.i.i, label %if.else83.i.i.vnt_rxtx_rsvtime_le16.exit357.i.i_crit_edge

if.else83.i.i.vnt_rxtx_rsvtime_le16.exit357.i.i_crit_edge: ; preds = %if.else83.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_rxtx_rsvtime_le16.exit357.i.i

if.end.i.i354.i.i:                                ; preds = %if.else83.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %353 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %66, align 1
  %byTopCCKBasicRate.i.i346.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 69
  %355 = ptrtoint ptr %byTopCCKBasicRate.i.i346.i.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %cond.in.i.i348.i.i = load i8, ptr %byTopCCKBasicRate.i.i346.i.i, align 1
  %conv5.i.i349.i.i = zext i8 %cond.in.i.i348.i.i to i16
  %call6.i.i350.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %354, i8 noundef zeroext 1, i32 noundef 14, i16 noundef zeroext %conv5.i.i349.i.i) #3
  %uSIFS.i.i351.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 53
  %356 = ptrtoint ptr %uSIFS.i.i351.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %uSIFS.i.i351.i.i, align 4
  %add.i.i352.i.i = add i32 %call6.i.i350.i.i, %call.i.i345.i.i
  %add7.i.i353.i.i = add i32 %add.i.i352.i.i, %357
  br label %vnt_rxtx_rsvtime_le16.exit357.i.i

vnt_rxtx_rsvtime_le16.exit357.i.i:                ; preds = %if.end.i.i354.i.i, %if.else83.i.i.vnt_rxtx_rsvtime_le16.exit357.i.i_crit_edge
  %retval.0.i.i355.i.i = phi i32 [ %add7.i.i353.i.i, %if.end.i.i354.i.i ], [ %call.i.i345.i.i, %if.else83.i.i.vnt_rxtx_rsvtime_le16.exit357.i.i_crit_edge ]
  %conv.i356.i.i = trunc i32 %retval.0.i.i355.i.i to i16
  %358 = tail call i16 @llvm.bswap.i16(i16 %conv.i356.i.i) #3
  %rrv_time87.i.i = getelementptr i8, ptr %4, i32 26
  %359 = ptrtoint ptr %rrv_time87.i.i to i32
  call void @__asan_storeN_noabort(i32 %359, i32 2)
  store i16 %358, ptr %rrv_time87.i.i, align 1
  br label %s_vGenerateTxParameter.exit.i

if.end14.i.i.unreachabledefault:                  ; preds = %if.end14.i.i
  unreachable

s_vGenerateTxParameter.exit.i:                    ; preds = %vnt_rxtx_rsvtime_le16.exit357.i.i, %vnt_rxtx_rsvtime_le16.exit343.i.i, %vnt_rxtx_rsvtime_le16.exit315.i.i, %vnt_rxtx_rsvtime_le16.exit301.i.i, %s_uGetRTSCTSDuration.exit115.i.i.i, %s_uGetRTSCTSDuration.exit97.i.i.i, %if.end.i.i.i.s_vGenerateTxParameter.exit.i_crit_edge, %vnt_rxtx_rsvtime_le16.exit265.i.i.s_vGenerateTxParameter.exit.i_crit_edge, %vnt_rxtx_rsvtime_le16.exit235.i.i, %if.end204.i.s_vGenerateTxParameter.exit.i_crit_edge
  %360 = ptrtoint ptr %wCurrentRate to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %wCurrentRate, align 2
  %tobool.not.i3.i = icmp eq ptr %pvTxDataHd.0.i, null
  br i1 %tobool.not.i3.i, label %s_vGenerateTxParameter.exit.i.s_cbFillTxBufHead.exit_crit_edge, label %if.end.i.i

s_vGenerateTxParameter.exit.i.s_cbFillTxBufHead.exit_crit_edge: ; preds = %s_vGenerateTxParameter.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_cbFillTxBufHead.exit

if.end.i.i:                                       ; preds = %s_vGenerateTxParameter.exit.i
  %trunc286 = trunc i8 %pkt_type.0277 to i2
  %362 = zext i2 %trunc286 to i64
  call void @__sanitizer_cov_trace_switch(i64 %362, ptr @__sancov_gen_cov_switch_values.4)
  switch i2 %trunc286, label %if.end107.i.i [
    i2 -2, label %if.end.i.i.if.then6.i.i_crit_edge
    i2 -1, label %if.end.i.i.if.then6.i.i_crit_edge296
    i2 0, label %if.then66.i.i
  ]

if.end.i.i.if.then6.i.i_crit_edge296:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6.i.i

if.end.i.i.if.then6.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i.if.then6.i.i_crit_edge, %if.end.i.i.if.then6.i.i_crit_edge296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %byFBOption.010.i)
  %cmp9.i.i = icmp eq i8 %byFBOption.010.i, 0
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end34.i.i

if.then11.i.i:                                    ; preds = %if.then6.i.i
  %a.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g, ptr %pvTxDataHd.0.i, i32 0, i32 1
  tail call void @vnt_get_phy_field(ptr noundef %priv, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %361, i8 noundef zeroext %pkt_type.0277, ptr noundef %a.i.i) #3
  %byTopCCKBasicRate.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 69
  %363 = ptrtoint ptr %byTopCCKBasicRate.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %byTopCCKBasicRate.i.i, align 4
  %conv13.i.i = zext i8 %364 to i16
  tail call void @vnt_get_phy_field(ptr noundef %priv, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %conv13.i.i, i8 noundef zeroext 1, ptr noundef nonnull %pvTxDataHd.0.i) #3
  br i1 %tobool123.not, label %if.else.i.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %current_aid.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 5
  %365 = ptrtoint ptr %current_aid.i.i to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %current_aid.i.i, align 4
  %367 = or i16 %366, -16384
  %368 = tail call i16 @llvm.bswap.i16(i16 %367) #3
  %duration_a.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g, ptr %pvTxDataHd.0.i, i32 0, i32 3
  %369 = ptrtoint ptr %duration_a.i.i to i32
  call void @__asan_storeN_noabort(i32 %369, i32 2)
  store i16 %368, ptr %duration_a.i.i, align 1
  br label %if.end28.i.i

if.else.i.i:                                      ; preds = %if.then11.i.i
  br i1 %tobool.i, label %if.end19.i.i.i, label %s_uGetDataDuration.exit.i.i

s_uGetDataDuration.exit.i.i:                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %duration_a21.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g, ptr %pvTxDataHd.0.i, i32 0, i32 3
  %370 = ptrtoint ptr %duration_a21.i.i to i32
  call void @__asan_storeN_noabort(i32 %370, i32 2)
  store i16 0, ptr %duration_a21.i.i, align 1
  br label %s_uGetDataDuration.exit9.i.i

if.end19.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %byTopOFDMBasicRate.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 68
  %371 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %371)
  %.sink.i.i.i = load i8, ptr %66, align 1
  %372 = ptrtoint ptr %byTopOFDMBasicRate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %.sink7.i.i.i = load i8, ptr %byTopOFDMBasicRate.i.i.i, align 1
  %conv49.i.i.i = zext i8 %.sink7.i.i.i to i16
  %call50.i.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %.sink.i.i.i, i8 noundef zeroext %pkt_type.0277, i32 noundef 14, i16 noundef zeroext %conv49.i.i.i) #3
  %uSIFS87.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 53
  %373 = ptrtoint ptr %uSIFS87.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %uSIFS87.i.i.i, align 4
  %add88.i.i.i = add i32 %374, %call50.i.i.i
  %conv20132.i.i = trunc i32 %add88.i.i.i to i16
  %375 = tail call i16 @llvm.bswap.i16(i16 %conv20132.i.i) #3
  %duration_a21133.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g, ptr %pvTxDataHd.0.i, i32 0, i32 3
  %376 = ptrtoint ptr %duration_a21133.i.i to i32
  call void @__asan_storeN_noabort(i32 %376, i32 2)
  store i16 %375, ptr %duration_a21133.i.i, align 1
  %377 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %377)
  %.sink.i2.i.i = load i8, ptr %66, align 1
  %378 = ptrtoint ptr %byTopCCKBasicRate.i.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %.sink7.i3.i.i = load i8, ptr %byTopCCKBasicRate.i.i, align 1
  %conv49.i4.i.i = zext i8 %.sink7.i3.i.i to i16
  %call50.i5.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %.sink.i2.i.i, i8 noundef zeroext 1, i32 noundef 14, i16 noundef zeroext %conv49.i4.i.i) #3
  %379 = ptrtoint ptr %uSIFS87.i.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %uSIFS87.i.i.i, align 4
  %add88.i7.i.i = add i32 %380, %call50.i5.i.i
  %phi.cast166.i.i = trunc i32 %add88.i7.i.i to i16
  br label %s_uGetDataDuration.exit9.i.i

s_uGetDataDuration.exit9.i.i:                     ; preds = %if.end19.i.i.i, %s_uGetDataDuration.exit.i.i
  %retval.0.i8.i.i = phi i16 [ 0, %s_uGetDataDuration.exit.i.i ], [ %phi.cast166.i.i, %if.end19.i.i.i ]
  %381 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i8.i.i) #3
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %s_uGetDataDuration.exit9.i.i, %if.then15.i.i
  %.sink.i.i = phi i16 [ %381, %s_uGetDataDuration.exit9.i.i ], [ %368, %if.then15.i.i ]
  %duration_b27.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g, ptr %pvTxDataHd.0.i, i32 0, i32 2
  %382 = ptrtoint ptr %duration_b27.i.i to i32
  call void @__asan_storeN_noabort(i32 %382, i32 2)
  store i16 %.sink.i.i, ptr %duration_b27.i.i, align 1
  %383 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %66, align 1
  %385 = and i8 %384, 1
  %rem.i.i.i = zext i8 %385 to i32
  %386 = urem i16 %361, 12
  %rem2.i.i.i = zext i16 %386 to i32
  %arrayidx3.i.i.i = getelementptr [2 x [12 x i16]], ptr @wTimeStampOff, i32 0, i32 %rem.i.i.i, i32 %rem2.i.i.i
  %387 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %arrayidx3.i.i.i, align 2
  %389 = tail call i16 @llvm.bswap.i16(i16 %388) #3
  %time_stamp_off_a.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g, ptr %pvTxDataHd.0.i, i32 0, i32 5
  %390 = ptrtoint ptr %time_stamp_off_a.i.i to i32
  call void @__asan_storeN_noabort(i32 %390, i32 2)
  store i16 %389, ptr %time_stamp_off_a.i.i, align 1
  %391 = ptrtoint ptr %byTopCCKBasicRate.i.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %byTopCCKBasicRate.i.i, align 4
  %393 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %66, align 1
  %395 = and i8 %394, 1
  %rem.i11.i.i = zext i8 %395 to i32
  %396 = urem i8 %392, 12
  %rem2.i12.i.i = zext i8 %396 to i32
  %arrayidx3.i13.i.i = getelementptr [2 x [12 x i16]], ptr @wTimeStampOff, i32 0, i32 %rem.i11.i.i, i32 %rem2.i12.i.i
  %397 = ptrtoint ptr %arrayidx3.i13.i.i to i32
  call void @__asan_load2_noabort(i32 %397)
  %398 = load i16, ptr %arrayidx3.i13.i.i, align 2
  %399 = tail call i16 @llvm.bswap.i16(i16 %398) #3
  %time_stamp_off_b.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g, ptr %pvTxDataHd.0.i, i32 0, i32 4
  %400 = ptrtoint ptr %time_stamp_off_b.i.i to i32
  call void @__asan_storeN_noabort(i32 %400, i32 2)
  store i16 %399, ptr %time_stamp_off_b.i.i, align 1
  %duration_a33.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g, ptr %pvTxDataHd.0.i, i32 0, i32 3
  br label %cleanup127.sink.split.i.i

if.end34.i.i:                                     ; preds = %if.then6.i.i
  %a35.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, ptr %pvTxDataHd.0.i, i32 0, i32 1
  tail call void @vnt_get_phy_field(ptr noundef %priv, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %361, i8 noundef zeroext %pkt_type.0277, ptr noundef %a35.i.i) #3
  %byTopCCKBasicRate36.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 69
  %401 = ptrtoint ptr %byTopCCKBasicRate36.i.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %byTopCCKBasicRate36.i.i, align 4
  %conv37.i.i = zext i8 %402 to i16
  tail call void @vnt_get_phy_field(ptr noundef %priv, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %conv37.i.i, i8 noundef zeroext 1, ptr noundef nonnull %pvTxDataHd.0.i) #3
  br i1 %tobool.i, label %if.end86.i46.i.i, label %s_uGetDataDuration.exit44.i.i

s_uGetDataDuration.exit44.i.i:                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %duration_a42.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, ptr %pvTxDataHd.0.i, i32 0, i32 3
  %403 = ptrtoint ptr %duration_a42.i.i to i32
  call void @__asan_storeN_noabort(i32 %403, i32 2)
  store i16 0, ptr %duration_a42.i.i, align 1
  %duration_b48.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, ptr %pvTxDataHd.0.i, i32 0, i32 2
  %404 = ptrtoint ptr %duration_b48.i.i to i32
  call void @__asan_storeN_noabort(i32 %404, i32 2)
  store i16 0, ptr %duration_b48.i.i, align 1
  %duration_a_f0.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, ptr %pvTxDataHd.0.i, i32 0, i32 4
  %405 = ptrtoint ptr %duration_a_f0.i.i to i32
  call void @__asan_storeN_noabort(i32 %405, i32 2)
  store i16 0, ptr %duration_a_f0.i.i, align 1
  br label %s_uGetDataDuration.exit55.i.i

if.end86.i46.i.i:                                 ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %byTopOFDMBasicRate.i14.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 68
  %406 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %406)
  %.sink.i17.i.i = load i8, ptr %66, align 1
  %407 = ptrtoint ptr %byTopOFDMBasicRate.i14.i.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %.sink7.i18.i.i = load i8, ptr %byTopOFDMBasicRate.i14.i.i, align 1
  %conv49.i19.i.i = zext i8 %.sink7.i18.i.i to i16
  %call50.i20.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %.sink.i17.i.i, i8 noundef zeroext %pkt_type.0277, i32 noundef 14, i16 noundef zeroext %conv49.i19.i.i) #3
  %uSIFS87.i21.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 53
  %408 = ptrtoint ptr %uSIFS87.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %uSIFS87.i21.i.i, align 4
  %add88.i22.i.i = add i32 %409, %call50.i20.i.i
  %conv41135.i.i = trunc i32 %add88.i22.i.i to i16
  %410 = tail call i16 @llvm.bswap.i16(i16 %conv41135.i.i) #3
  %duration_a42136.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, ptr %pvTxDataHd.0.i, i32 0, i32 3
  %411 = ptrtoint ptr %duration_a42136.i.i to i32
  call void @__asan_storeN_noabort(i32 %411, i32 2)
  store i16 %410, ptr %duration_a42136.i.i, align 1
  %412 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %412)
  %.sink.i28.i.i = load i8, ptr %66, align 1
  %413 = ptrtoint ptr %byTopCCKBasicRate36.i.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %.sink7.i29.i.i = load i8, ptr %byTopCCKBasicRate36.i.i, align 1
  %conv49.i30.i.i = zext i8 %.sink7.i29.i.i to i16
  %call50.i31.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %.sink.i28.i.i, i8 noundef zeroext 1, i32 noundef 14, i16 noundef zeroext %conv49.i30.i.i) #3
  %414 = ptrtoint ptr %uSIFS87.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %uSIFS87.i21.i.i, align 4
  %add88.i33.i.i = add i32 %415, %call50.i31.i.i
  %conv47141.i.i = trunc i32 %add88.i33.i.i to i16
  %416 = tail call i16 @llvm.bswap.i16(i16 %conv47141.i.i) #3
  %duration_b48142.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, ptr %pvTxDataHd.0.i, i32 0, i32 2
  %417 = ptrtoint ptr %duration_b48142.i.i to i32
  call void @__asan_storeN_noabort(i32 %417, i32 2)
  store i16 %416, ptr %duration_b48142.i.i, align 1
  %418 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %418)
  %.sink.i37.i.i = load i8, ptr %66, align 1
  %419 = ptrtoint ptr %byTopOFDMBasicRate.i14.i.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %.sink7.i38.i.i = load i8, ptr %byTopOFDMBasicRate.i14.i.i, align 1
  %conv49.i39.i.i = zext i8 %.sink7.i38.i.i to i16
  %call50.i40.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %.sink.i37.i.i, i8 noundef zeroext %pkt_type.0277, i32 noundef 14, i16 noundef zeroext %conv49.i39.i.i) #3
  %420 = ptrtoint ptr %uSIFS87.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %uSIFS87.i21.i.i, align 4
  %add88.i42.i.i = add i32 %421, %call50.i40.i.i
  %conv51147.i.i = trunc i32 %add88.i42.i.i to i16
  %422 = tail call i16 @llvm.bswap.i16(i16 %conv51147.i.i) #3
  %duration_a_f0148.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, ptr %pvTxDataHd.0.i, i32 0, i32 4
  %423 = ptrtoint ptr %duration_a_f0148.i.i to i32
  call void @__asan_storeN_noabort(i32 %423, i32 2)
  store i16 %422, ptr %duration_a_f0148.i.i, align 1
  %424 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %424)
  %.sink.i48.i.i = load i8, ptr %66, align 1
  %425 = ptrtoint ptr %byTopOFDMBasicRate.i14.i.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %.sink7.i49.i.i = load i8, ptr %byTopOFDMBasicRate.i14.i.i, align 1
  %conv49.i50.i.i = zext i8 %.sink7.i49.i.i to i16
  %call50.i51.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %.sink.i48.i.i, i8 noundef zeroext %pkt_type.0277, i32 noundef 14, i16 noundef zeroext %conv49.i50.i.i) #3
  %426 = ptrtoint ptr %uSIFS87.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %uSIFS87.i21.i.i, align 4
  %add88.i53.i.i = add i32 %427, %call50.i51.i.i
  %phi.cast165.i.i = trunc i32 %add88.i53.i.i to i16
  br label %s_uGetDataDuration.exit55.i.i

s_uGetDataDuration.exit55.i.i:                    ; preds = %if.end86.i46.i.i, %s_uGetDataDuration.exit44.i.i
  %duration_a42137143149.i.i = phi ptr [ %duration_a42.i.i, %s_uGetDataDuration.exit44.i.i ], [ %duration_a42136.i.i, %if.end86.i46.i.i ]
  %retval.0.i54.i.i = phi i16 [ 0, %s_uGetDataDuration.exit44.i.i ], [ %phi.cast165.i.i, %if.end86.i46.i.i ]
  %428 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i54.i.i) #3
  %duration_a_f1.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, ptr %pvTxDataHd.0.i, i32 0, i32 5
  %429 = ptrtoint ptr %duration_a_f1.i.i to i32
  call void @__asan_storeN_noabort(i32 %429, i32 2)
  store i16 %428, ptr %duration_a_f1.i.i, align 1
  %430 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %66, align 1
  %432 = and i8 %431, 1
  %rem.i57.i.i = zext i8 %432 to i32
  %433 = urem i16 %361, 12
  %rem2.i58.i.i = zext i16 %433 to i32
  %arrayidx3.i59.i.i = getelementptr [2 x [12 x i16]], ptr @wTimeStampOff, i32 0, i32 %rem.i57.i.i, i32 %rem2.i58.i.i
  %434 = ptrtoint ptr %arrayidx3.i59.i.i to i32
  call void @__asan_load2_noabort(i32 %434)
  %435 = load i16, ptr %arrayidx3.i59.i.i, align 2
  %436 = tail call i16 @llvm.bswap.i16(i16 %435) #3
  %time_stamp_off_a56.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, ptr %pvTxDataHd.0.i, i32 0, i32 7
  %437 = ptrtoint ptr %time_stamp_off_a56.i.i to i32
  call void @__asan_storeN_noabort(i32 %437, i32 2)
  store i16 %436, ptr %time_stamp_off_a56.i.i, align 1
  %438 = ptrtoint ptr %byTopCCKBasicRate36.i.i to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %byTopCCKBasicRate36.i.i, align 4
  %440 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %66, align 1
  %442 = and i8 %441, 1
  %rem.i61.i.i = zext i8 %442 to i32
  %443 = urem i8 %439, 12
  %rem2.i62.i.i = zext i8 %443 to i32
  %arrayidx3.i63.i.i = getelementptr [2 x [12 x i16]], ptr @wTimeStampOff, i32 0, i32 %rem.i61.i.i, i32 %rem2.i62.i.i
  %444 = ptrtoint ptr %arrayidx3.i63.i.i to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %arrayidx3.i63.i.i, align 2
  %446 = tail call i16 @llvm.bswap.i16(i16 %445) #3
  %time_stamp_off_b60.i.i = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, ptr %pvTxDataHd.0.i, i32 0, i32 6
  %447 = ptrtoint ptr %time_stamp_off_b60.i.i to i32
  call void @__asan_storeN_noabort(i32 %447, i32 2)
  store i16 %446, ptr %time_stamp_off_b60.i.i, align 1
  br label %cleanup127.sink.split.i.i

if.then66.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %byFBOption.010.i)
  %cmp69.not.i.i = icmp eq i8 %byFBOption.010.i, 0
  tail call void @vnt_get_phy_field(ptr noundef %priv, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %361, i8 noundef zeroext 0, ptr noundef nonnull %pvTxDataHd.0.i) #3
  br i1 %cmp69.not.i.i, label %if.end86.i.i, label %if.then71.i.i

if.then71.i.i:                                    ; preds = %if.then66.i.i
  br i1 %tobool.i, label %if.end86.i87.i.i, label %s_uGetDataDuration.exit85.i.i

s_uGetDataDuration.exit85.i.i:                    ; preds = %if.then71.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %duration.i.i = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, ptr %pvTxDataHd.0.i, i32 0, i32 1
  %448 = ptrtoint ptr %duration.i.i to i32
  call void @__asan_storeN_noabort(i32 %448, i32 2)
  store i16 0, ptr %duration.i.i, align 1
  %duration_f0.i.i = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, ptr %pvTxDataHd.0.i, i32 0, i32 3
  %449 = ptrtoint ptr %duration_f0.i.i to i32
  call void @__asan_storeN_noabort(i32 %449, i32 2)
  store i16 0, ptr %duration_f0.i.i, align 1
  br label %s_uGetDataDuration.exit96.i.i

if.end86.i87.i.i:                                 ; preds = %if.then71.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %byTopOFDMBasicRate.i64.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 68
  %450 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %450)
  %.sink.i67.i.i = load i8, ptr %66, align 1
  %451 = ptrtoint ptr %byTopOFDMBasicRate.i64.i.i to i32
  call void @__asan_load1_noabort(i32 %451)
  %.sink7.i68.i.i = load i8, ptr %byTopOFDMBasicRate.i64.i.i, align 1
  %conv49.i69.i.i = zext i8 %.sink7.i68.i.i to i16
  %call50.i70.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %.sink.i67.i.i, i8 noundef zeroext 0, i32 noundef 14, i16 noundef zeroext %conv49.i69.i.i) #3
  %uSIFS87.i71.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 53
  %452 = ptrtoint ptr %uSIFS87.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %uSIFS87.i71.i.i, align 4
  %add88.i72.i.i = add i32 %453, %call50.i70.i.i
  %conv76152.i.i = trunc i32 %add88.i72.i.i to i16
  %454 = tail call i16 @llvm.bswap.i16(i16 %conv76152.i.i) #3
  %duration153.i.i = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, ptr %pvTxDataHd.0.i, i32 0, i32 1
  %455 = ptrtoint ptr %duration153.i.i to i32
  call void @__asan_storeN_noabort(i32 %455, i32 2)
  store i16 %454, ptr %duration153.i.i, align 1
  %456 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %456)
  %.sink.i78.i.i = load i8, ptr %66, align 1
  %457 = ptrtoint ptr %byTopOFDMBasicRate.i64.i.i to i32
  call void @__asan_load1_noabort(i32 %457)
  %.sink7.i79.i.i = load i8, ptr %byTopOFDMBasicRate.i64.i.i, align 1
  %conv49.i80.i.i = zext i8 %.sink7.i79.i.i to i16
  %call50.i81.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %.sink.i78.i.i, i8 noundef zeroext 0, i32 noundef 14, i16 noundef zeroext %conv49.i80.i.i) #3
  %458 = ptrtoint ptr %uSIFS87.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %uSIFS87.i71.i.i, align 4
  %add88.i83.i.i = add i32 %459, %call50.i81.i.i
  %conv79158.i.i = trunc i32 %add88.i83.i.i to i16
  %460 = tail call i16 @llvm.bswap.i16(i16 %conv79158.i.i) #3
  %duration_f0159.i.i = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, ptr %pvTxDataHd.0.i, i32 0, i32 3
  %461 = ptrtoint ptr %duration_f0159.i.i to i32
  call void @__asan_storeN_noabort(i32 %461, i32 2)
  store i16 %460, ptr %duration_f0159.i.i, align 1
  %462 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %462)
  %.sink.i89.i.i = load i8, ptr %66, align 1
  %463 = ptrtoint ptr %byTopOFDMBasicRate.i64.i.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %.sink7.i90.i.i = load i8, ptr %byTopOFDMBasicRate.i64.i.i, align 1
  %conv49.i91.i.i = zext i8 %.sink7.i90.i.i to i16
  %call50.i92.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %.sink.i89.i.i, i8 noundef zeroext 0, i32 noundef 14, i16 noundef zeroext %conv49.i91.i.i) #3
  %464 = ptrtoint ptr %uSIFS87.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %uSIFS87.i71.i.i, align 4
  %add88.i94.i.i = add i32 %465, %call50.i92.i.i
  %phi.cast.i.i = trunc i32 %add88.i94.i.i to i16
  br label %s_uGetDataDuration.exit96.i.i

s_uGetDataDuration.exit96.i.i:                    ; preds = %if.end86.i87.i.i, %s_uGetDataDuration.exit85.i.i
  %duration154160.i.i = phi ptr [ %duration.i.i, %s_uGetDataDuration.exit85.i.i ], [ %duration153.i.i, %if.end86.i87.i.i ]
  %retval.0.i95.i.i = phi i16 [ 0, %s_uGetDataDuration.exit85.i.i ], [ %phi.cast.i.i, %if.end86.i87.i.i ]
  %466 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i95.i.i) #3
  %duration_f1.i.i = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, ptr %pvTxDataHd.0.i, i32 0, i32 4
  %467 = ptrtoint ptr %duration_f1.i.i to i32
  call void @__asan_storeN_noabort(i32 %467, i32 2)
  store i16 %466, ptr %duration_f1.i.i, align 1
  %468 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %66, align 1
  %470 = and i8 %469, 1
  %rem.i98.i.i = zext i8 %470 to i32
  %471 = urem i16 %361, 12
  %rem2.i99.i.i = zext i16 %471 to i32
  %arrayidx3.i100.i.i = getelementptr [2 x [12 x i16]], ptr @wTimeStampOff, i32 0, i32 %rem.i98.i.i, i32 %rem2.i99.i.i
  %472 = ptrtoint ptr %arrayidx3.i100.i.i to i32
  call void @__asan_load2_noabort(i32 %472)
  %473 = load i16, ptr %arrayidx3.i100.i.i, align 2
  %474 = tail call i16 @llvm.bswap.i16(i16 %473) #3
  %time_stamp_off.i.i = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, ptr %pvTxDataHd.0.i, i32 0, i32 2
  %475 = ptrtoint ptr %time_stamp_off.i.i to i32
  call void @__asan_storeN_noabort(i32 %475, i32 2)
  store i16 %474, ptr %time_stamp_off.i.i, align 1
  br label %cleanup127.sink.split.i.i

if.end86.i.i:                                     ; preds = %if.then66.i.i
  br i1 %tobool123.not, label %if.else96.i.i, label %if.then88.i.i

if.then88.i.i:                                    ; preds = %if.end86.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %current_aid90.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 5
  %476 = ptrtoint ptr %current_aid90.i.i to i32
  call void @__asan_load2_noabort(i32 %476)
  %477 = load i16, ptr %current_aid90.i.i, align 4
  %478 = or i16 %477, -16384
  br label %if.end101.i.i

if.else96.i.i:                                    ; preds = %if.end86.i.i
  br i1 %tobool.i, label %if.end40.i102.i.i, label %if.else96.i.i.if.end101.i.i_crit_edge

if.else96.i.i.if.end101.i.i_crit_edge:            ; preds = %if.else96.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end101.i.i

if.end40.i102.i.i:                                ; preds = %if.else96.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %byTopOFDMBasicRate.i101.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 68
  %479 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %479)
  %.sink.i104.i.i = load i8, ptr %66, align 1
  %480 = ptrtoint ptr %byTopOFDMBasicRate.i101.i.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %.sink7.i105.i.i = load i8, ptr %byTopOFDMBasicRate.i101.i.i, align 1
  %conv49.i106.i.i = zext i8 %.sink7.i105.i.i to i16
  %call50.i107.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %.sink.i104.i.i, i8 noundef zeroext 0, i32 noundef 14, i16 noundef zeroext %conv49.i106.i.i) #3
  %uSIFS87.i108.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 53
  %481 = ptrtoint ptr %uSIFS87.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %uSIFS87.i108.i.i, align 4
  %add88.i109.i.i = add i32 %482, %call50.i107.i.i
  %phi.cast164.i.i = trunc i32 %add88.i109.i.i to i16
  br label %if.end101.i.i

if.end101.i.i:                                    ; preds = %if.end40.i102.i.i, %if.else96.i.i.if.end101.i.i_crit_edge, %if.then88.i.i
  %retval.0.i110.sink.i.i = phi i16 [ %478, %if.then88.i.i ], [ 0, %if.else96.i.i.if.end101.i.i_crit_edge ], [ %phi.cast164.i.i, %if.end40.i102.i.i ]
  %483 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i110.sink.i.i) #3
  %duration100.i.i = getelementptr inbounds %struct.vnt_tx_datahead_ab, ptr %pvTxDataHd.0.i, i32 0, i32 1
  %484 = ptrtoint ptr %duration100.i.i to i32
  call void @__asan_storeN_noabort(i32 %484, i32 2)
  store i16 %483, ptr %duration100.i.i, align 1
  %485 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %66, align 1
  %487 = and i8 %486, 1
  %rem.i113.i.i = zext i8 %487 to i32
  %488 = urem i16 %361, 12
  %rem2.i114.i.i = zext i16 %488 to i32
  %arrayidx3.i115.i.i = getelementptr [2 x [12 x i16]], ptr @wTimeStampOff, i32 0, i32 %rem.i113.i.i, i32 %rem2.i114.i.i
  %489 = ptrtoint ptr %arrayidx3.i115.i.i to i32
  call void @__asan_load2_noabort(i32 %489)
  %490 = load i16, ptr %arrayidx3.i115.i.i, align 2
  %491 = tail call i16 @llvm.bswap.i16(i16 %490) #3
  %time_stamp_off103.i.i = getelementptr inbounds %struct.vnt_tx_datahead_ab, ptr %pvTxDataHd.0.i, i32 0, i32 2
  %492 = ptrtoint ptr %time_stamp_off103.i.i to i32
  call void @__asan_storeN_noabort(i32 %492, i32 2)
  store i16 %491, ptr %time_stamp_off103.i.i, align 1
  br label %cleanup127.sink.split.i.i

if.end107.i.i:                                    ; preds = %if.end.i.i
  tail call void @vnt_get_phy_field(ptr noundef %priv, i32 noundef %cbFrameSize.0.i, i16 noundef zeroext %361, i8 noundef zeroext %pkt_type.0277, ptr noundef nonnull %pvTxDataHd.0.i) #3
  br i1 %tobool123.not, label %if.else118.i.i, label %if.then110.i.i

if.then110.i.i:                                   ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %current_aid112.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 5
  %493 = ptrtoint ptr %current_aid112.i.i to i32
  call void @__asan_load2_noabort(i32 %493)
  %494 = load i16, ptr %current_aid112.i.i, align 4
  %495 = or i16 %494, -16384
  br label %if.end123.i.i

if.else118.i.i:                                   ; preds = %if.end107.i.i
  br i1 %tobool.i, label %if.end19.i117.i.i, label %if.else118.i.i.if.end123.i.i_crit_edge

if.else118.i.i.if.end123.i.i_crit_edge:           ; preds = %if.else118.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end123.i.i

if.end19.i117.i.i:                                ; preds = %if.else118.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %byTopCCKBasicRate.i116.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 69
  %496 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %496)
  %.sink.i119.i.i = load i8, ptr %66, align 1
  %497 = ptrtoint ptr %byTopCCKBasicRate.i116.i.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %.sink7.i120.i.i = load i8, ptr %byTopCCKBasicRate.i116.i.i, align 1
  %conv49.i121.i.i = zext i8 %.sink7.i120.i.i to i16
  %call50.i122.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %.sink.i119.i.i, i8 noundef zeroext %pkt_type.0277, i32 noundef 14, i16 noundef zeroext %conv49.i121.i.i) #3
  %uSIFS87.i123.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 53
  %498 = ptrtoint ptr %uSIFS87.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %uSIFS87.i123.i.i, align 4
  %add88.i124.i.i = add i32 %499, %call50.i122.i.i
  %phi.cast167.i.i = trunc i32 %add88.i124.i.i to i16
  br label %if.end123.i.i

if.end123.i.i:                                    ; preds = %if.end19.i117.i.i, %if.else118.i.i.if.end123.i.i_crit_edge, %if.then110.i.i
  %retval.0.i125.sink.i.i = phi i16 [ %495, %if.then110.i.i ], [ 0, %if.else118.i.i.if.end123.i.i_crit_edge ], [ %phi.cast167.i.i, %if.end19.i117.i.i ]
  %500 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i125.sink.i.i) #3
  %duration122.i.i = getelementptr inbounds %struct.vnt_tx_datahead_ab, ptr %pvTxDataHd.0.i, i32 0, i32 1
  %501 = ptrtoint ptr %duration122.i.i to i32
  call void @__asan_storeN_noabort(i32 %501, i32 2)
  store i16 %500, ptr %duration122.i.i, align 1
  %502 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %66, align 1
  %504 = and i8 %503, 1
  %rem.i128.i.i = zext i8 %504 to i32
  %505 = urem i16 %361, 12
  %rem2.i129.i.i = zext i16 %505 to i32
  %arrayidx3.i130.i.i = getelementptr [2 x [12 x i16]], ptr @wTimeStampOff, i32 0, i32 %rem.i128.i.i, i32 %rem2.i129.i.i
  %506 = ptrtoint ptr %arrayidx3.i130.i.i to i32
  call void @__asan_load2_noabort(i32 %506)
  %507 = load i16, ptr %arrayidx3.i130.i.i, align 2
  %508 = tail call i16 @llvm.bswap.i16(i16 %507) #3
  %time_stamp_off125.i.i = getelementptr inbounds %struct.vnt_tx_datahead_ab, ptr %pvTxDataHd.0.i, i32 0, i32 2
  %509 = ptrtoint ptr %time_stamp_off125.i.i to i32
  call void @__asan_storeN_noabort(i32 %509, i32 2)
  store i16 %508, ptr %time_stamp_off125.i.i, align 1
  br label %cleanup127.sink.split.i.i

cleanup127.sink.split.i.i:                        ; preds = %if.end123.i.i, %if.end101.i.i, %s_uGetDataDuration.exit96.i.i, %s_uGetDataDuration.exit55.i.i, %if.end28.i.i
  %duration126.sink.i.i = phi ptr [ %duration122.i.i, %if.end123.i.i ], [ %duration_a33.i.i, %if.end28.i.i ], [ %duration_a42137143149.i.i, %s_uGetDataDuration.exit55.i.i ], [ %duration154160.i.i, %s_uGetDataDuration.exit96.i.i ], [ %duration100.i.i, %if.end101.i.i ]
  %510 = ptrtoint ptr %duration126.sink.i.i to i32
  call void @__asan_loadN_noabort(i32 %510, i32 2)
  %511 = load i16, ptr %duration126.sink.i.i, align 1
  br label %s_cbFillTxBufHead.exit

s_cbFillTxBufHead.exit:                           ; preds = %cleanup127.sink.split.i.i, %s_vGenerateTxParameter.exit.i.s_cbFillTxBufHead.exit_crit_edge
  %retval.2.i.i = phi i16 [ 0, %s_vGenerateTxParameter.exit.i.s_cbFillTxBufHead.exit_crit_edge ], [ %511, %cleanup127.sink.split.i.i ]
  %duration_id.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %109, i32 0, i32 1
  %512 = ptrtoint ptr %duration_id.i to i32
  call void @__asan_store2_noabort(i32 %512)
  store i16 %retval.2.i.i, ptr %duration_id.i, align 2
  %add214.i = add nuw nsw i32 %cbHeaderLength.0.i, %uPadding.0.i
  %513 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %len.i, align 4
  %add216.i = add i32 %514, %add214.i
  %515 = ptrtoint ptr %td_info1 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %td_info1, align 8
  %buf218.i = getelementptr inbounds %struct.vnt_td_info, ptr %516, i32 0, i32 2
  %517 = ptrtoint ptr %buf218.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %buf218.i, align 4
  %add.ptr220.i = getelementptr i8, ptr %518, i32 %add214.i
  %519 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %data.i, align 4
  %521 = call ptr @memcpy(ptr %add.ptr220.i, ptr %520, i32 %514)
  %conv223.i = trunc i32 %add216.i to i16
  %522 = load ptr, ptr %td_info1, align 8
  %req_count.i = getelementptr inbounds %struct.vnt_td_info, ptr %522, i32 0, i32 4
  %523 = ptrtoint ptr %req_count.i to i32
  call void @__asan_store2_noabort(i32 %523)
  store i16 %conv223.i, ptr %req_count.i, align 4
  %524 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %hw_key, align 4
  %tobool185.not = icmp eq ptr %525, null
  br i1 %tobool185.not, label %s_cbFillTxBufHead.exit.if.end194_crit_edge, label %if.then186

s_cbFillTxBufHead.exit.if.end194_crit_edge:       ; preds = %s_cbFillTxBufHead.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end194

if.then186:                                       ; preds = %s_cbFillTxBufHead.exit
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %525, i32 0, i32 7
  %526 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %keylen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %527)
  %cmp189.not = icmp eq i8 %527, 0
  br i1 %cmp189.not, label %if.then186.if.end194_crit_edge, label %if.then191

if.then186.if.end194_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end194

if.then191:                                       ; preds = %if.then186
  %528 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #3
  %add.ptr.i = getelementptr i8, ptr %9, i32 %call.i
  %call1.i = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #3
  %530 = trunc i32 %call1.i to i16
  %icv_len.i268 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %525, i32 0, i32 2
  %531 = ptrtoint ptr %icv_len.i268 to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %icv_len.i268, align 4
  %conv3.i = zext i8 %532 to i16
  %533 = add i16 %530, %conv3.i
  %sub5.i = sub i16 %conv, %533
  %cipher.i269 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %525, i32 0, i32 1
  %534 = ptrtoint ptr %cipher.i269 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %cipher.i269, align 8
  %536 = zext i32 %535 to i64
  call void @__sanitizer_cov_trace_switch(i64 %536, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %535, label %if.then191.if.end194_crit_edge [
    i32 1027073, label %if.then191.sw.bb.i_crit_edge
    i32 1027077, label %if.then191.sw.bb.i_crit_edge297
    i32 1027074, label %sw.bb16.i
    i32 1027076, label %sw.bb17.i
  ]

if.then191.sw.bb.i_crit_edge297:                  ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.then191.sw.bb.i_crit_edge:                     ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.then191.if.end194_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end194

sw.bb.i:                                          ; preds = %if.then191.sw.bb.i_crit_edge, %if.then191.sw.bb.i_crit_edge297
  %537 = call ptr @memcpy(ptr %4, ptr %add.ptr.i, i32 3)
  %add.ptr7.i = getelementptr i8, ptr %4, i32 3
  %key.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %525, i32 0, i32 8
  %538 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %keylen, align 2
  %conv8.i = zext i8 %539 to i32
  %540 = call ptr @memcpy(ptr %add.ptr7.i, ptr %key.i, i32 %conv8.i)
  %541 = load i8, ptr %keylen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %541)
  %cmp.i270 = icmp eq i8 %541, 5
  br i1 %cmp.i270, label %if.then.i271, label %sw.bb.i.if.end194_crit_edge

sw.bb.i.if.end194_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end194

if.then.i271:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr12.i = getelementptr i8, ptr %4, i32 8
  %542 = call ptr @memcpy(ptr %add.ptr12.i, ptr %add.ptr.i, i32 3)
  %add.ptr13.i = getelementptr i8, ptr %4, i32 11
  %543 = call ptr @memcpy(ptr %add.ptr13.i, ptr %key.i, i32 5)
  br label %if.end194

sw.bb16.i:                                        ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ieee80211_get_tkip_p2k(ptr noundef nonnull %525, ptr noundef %skb, ptr noundef %4) #3
  br label %if.end194

sw.bb17.i:                                        ; preds = %if.then191
  %tobool.not.i = icmp eq ptr %529, null
  br i1 %tobool.not.i, label %sw.bb17.i.if.end194_crit_edge, label %if.end19.i

sw.bb17.i.if.end194_crit_edge:                    ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end194

if.end19.i:                                       ; preds = %sw.bb17.i
  %544 = ptrtoint ptr %529 to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 89, ptr %529, align 1
  %payload_len20.i = getelementptr inbounds %struct.vnt_mic_hdr, ptr %529, i32 0, i32 4
  %545 = ptrtoint ptr %payload_len20.i to i32
  call void @__asan_storeN_noabort(i32 %545, i32 2)
  store i16 %sub5.i, ptr %payload_len20.i, align 1
  %mic_addr2.i = getelementptr inbounds %struct.vnt_mic_hdr, ptr %529, i32 0, i32 2
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %9, i32 0, i32 3
  %546 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %addr2.i, align 4
  %548 = ptrtoint ptr %mic_addr2.i to i32
  call void @__asan_store4_noabort(i32 %548)
  store i32 %547, ptr %mic_addr2.i, align 4
  %add.ptr.i.i = getelementptr %struct.ieee80211_hdr, ptr %9, i32 0, i32 3, i32 4
  %549 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %549)
  %550 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.vnt_mic_hdr, ptr %529, i32 0, i32 2, i32 4
  %551 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %551)
  store i16 %550, ptr %add.ptr1.i.i, align 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %525, i32 noundef 8) #3
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef nonnull %525) #3
  %conv24.i = trunc i64 %call.i.i to i8
  %ccmp_pn.i = getelementptr inbounds %struct.vnt_mic_hdr, ptr %529, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.vnt_mic_hdr, ptr %529, i32 0, i32 3, i32 5
  %552 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %552)
  store i8 %conv24.i, ptr %arrayidx.i, align 1
  %shr.i = lshr i64 %call.i.i, 8
  %conv25.i = trunc i64 %shr.i to i8
  %arrayidx27.i = getelementptr %struct.vnt_mic_hdr, ptr %529, i32 0, i32 3, i32 4
  %553 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %553)
  store i8 %conv25.i, ptr %arrayidx27.i, align 1
  %shr28.i = lshr i64 %call.i.i, 16
  %conv29.i = trunc i64 %shr28.i to i8
  %arrayidx31.i = getelementptr %struct.vnt_mic_hdr, ptr %529, i32 0, i32 3, i32 3
  %554 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 %conv29.i, ptr %arrayidx31.i, align 1
  %shr32.i = lshr i64 %call.i.i, 24
  %conv33.i = trunc i64 %shr32.i to i8
  %arrayidx35.i = getelementptr %struct.vnt_mic_hdr, ptr %529, i32 0, i32 3, i32 2
  %555 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %555)
  store i8 %conv33.i, ptr %arrayidx35.i, align 1
  %shr36.i = lshr i64 %call.i.i, 32
  %conv37.i = trunc i64 %shr36.i to i8
  %arrayidx39.i = getelementptr %struct.vnt_mic_hdr, ptr %529, i32 0, i32 3, i32 1
  %556 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 %conv37.i, ptr %arrayidx39.i, align 1
  %shr40.i = lshr i64 %call.i.i, 40
  %conv41.i = trunc i64 %shr40.i to i8
  %557 = ptrtoint ptr %ccmp_pn.i to i32
  call void @__asan_store1_noabort(i32 %557)
  store i8 %conv41.i, ptr %ccmp_pn.i, align 1
  %558 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %558)
  %559 = load i16, ptr %9, align 2
  %560 = and i16 %559, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %560)
  %cmp.i.i = icmp eq i16 %560, 3
  %spec.select.i272 = select i1 %cmp.i.i, i16 28, i16 22
  %561 = getelementptr inbounds %struct.vnt_mic_hdr, ptr %529, i32 0, i32 5
  %562 = ptrtoint ptr %561 to i32
  call void @__asan_storeN_noabort(i32 %562, i32 2)
  store i16 %spec.select.i272, ptr %561, align 1
  %addr1.i = getelementptr inbounds %struct.vnt_mic_hdr, ptr %529, i32 0, i32 7
  %addr149.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %9, i32 0, i32 2
  %563 = ptrtoint ptr %addr149.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %addr149.i, align 4
  %565 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 %564, ptr %addr1.i, align 4
  %add.ptr.i125.i = getelementptr %struct.ieee80211_hdr, ptr %9, i32 0, i32 2, i32 4
  %566 = ptrtoint ptr %add.ptr.i125.i to i32
  call void @__asan_load2_noabort(i32 %566)
  %567 = load i16, ptr %add.ptr.i125.i, align 2
  %add.ptr1.i126.i = getelementptr %struct.vnt_mic_hdr, ptr %529, i32 0, i32 7, i32 4
  %568 = ptrtoint ptr %add.ptr1.i126.i to i32
  call void @__asan_store2_noabort(i32 %568)
  store i16 %567, ptr %add.ptr1.i126.i, align 2
  %addr251.i = getelementptr inbounds %struct.vnt_mic_hdr, ptr %529, i32 0, i32 8
  %569 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %addr2.i, align 4
  %571 = ptrtoint ptr %addr251.i to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 %570, ptr %addr251.i, align 4
  %572 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %572)
  %573 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i128.i = getelementptr %struct.vnt_mic_hdr, ptr %529, i32 0, i32 8, i32 4
  %574 = ptrtoint ptr %add.ptr1.i128.i to i32
  call void @__asan_store2_noabort(i32 %574)
  store i16 %573, ptr %add.ptr1.i128.i, align 2
  %addr3.i = getelementptr inbounds %struct.vnt_mic_hdr, ptr %529, i32 0, i32 9
  %addr356.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %9, i32 0, i32 4
  %575 = ptrtoint ptr %addr356.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %addr356.i, align 4
  %577 = ptrtoint ptr %addr3.i to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 %576, ptr %addr3.i, align 4
  %add.ptr.i129.i = getelementptr %struct.ieee80211_hdr, ptr %9, i32 0, i32 4, i32 4
  %578 = ptrtoint ptr %add.ptr.i129.i to i32
  call void @__asan_load2_noabort(i32 %578)
  %579 = load i16, ptr %add.ptr.i129.i, align 2
  %add.ptr1.i130.i = getelementptr %struct.vnt_mic_hdr, ptr %529, i32 0, i32 9, i32 4
  %580 = ptrtoint ptr %add.ptr1.i130.i to i32
  call void @__asan_store2_noabort(i32 %580)
  store i16 %579, ptr %add.ptr1.i130.i, align 2
  %581 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %581)
  %582 = load i16, ptr %9, align 2
  %583 = and i16 %582, -28729
  %frame_control61.i = getelementptr inbounds %struct.vnt_mic_hdr, ptr %529, i32 0, i32 6
  %584 = ptrtoint ptr %frame_control61.i to i32
  call void @__asan_storeN_noabort(i32 %584, i32 2)
  store i16 %583, ptr %frame_control61.i, align 1
  %seq_ctrl.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %9, i32 0, i32 5
  %585 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %585)
  %586 = load i16, ptr %seq_ctrl.i, align 2
  %587 = and i16 %586, 3840
  %seq_ctrl65.i = getelementptr inbounds %struct.vnt_mic_hdr, ptr %529, i32 0, i32 10
  %588 = ptrtoint ptr %seq_ctrl65.i to i32
  call void @__asan_storeN_noabort(i32 %588, i32 2)
  store i16 %587, ptr %seq_ctrl65.i, align 1
  %589 = load i16, ptr %9, align 2
  %590 = and i16 %589, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %590)
  %cmp.i131.i = icmp eq i16 %590, 3
  br i1 %cmp.i131.i, label %if.then68.i, label %if.end19.i.if.end72.i_crit_edge

if.end19.i.if.end72.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72.i

if.then68.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #5
  %addr4.i = getelementptr inbounds %struct.vnt_mic_hdr, ptr %529, i32 0, i32 11
  %addr470.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %9, i32 0, i32 6
  %591 = ptrtoint ptr %addr470.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load i32, ptr %addr470.i, align 4
  %593 = ptrtoint ptr %addr4.i to i32
  call void @__asan_store4_noabort(i32 %593)
  store i32 %592, ptr %addr4.i, align 4
  %add.ptr.i132.i = getelementptr %struct.ieee80211_hdr, ptr %9, i32 0, i32 6, i32 4
  %594 = ptrtoint ptr %add.ptr.i132.i to i32
  call void @__asan_load2_noabort(i32 %594)
  %595 = load i16, ptr %add.ptr.i132.i, align 2
  %add.ptr1.i133.i = getelementptr %struct.vnt_mic_hdr, ptr %529, i32 0, i32 11, i32 4
  %596 = ptrtoint ptr %add.ptr1.i133.i to i32
  call void @__asan_store2_noabort(i32 %596)
  store i16 %595, ptr %add.ptr1.i133.i, align 2
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then68.i, %if.end19.i.if.end72.i_crit_edge
  %key73.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %525, i32 0, i32 8
  %597 = call ptr @memcpy(ptr %4, ptr %key73.i, i32 16)
  br label %if.end194

if.end194:                                        ; preds = %if.end72.i, %sw.bb17.i.if.end194_crit_edge, %sw.bb16.i, %if.then.i271, %sw.bb.i.if.end194_crit_edge, %if.then191.if.end194_crit_edge, %if.then186.if.end194_crit_edge, %s_cbFillTxBufHead.exit.if.end194_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @RFbSetPower(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_beacon_make(ptr noundef %priv, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %call.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %1, ptr noundef %vif, ptr noundef null, ptr noundef null) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_beacon_bufs.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %tx_beacon_bufs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_beacon_bufs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %add.i = add i32 %5, 4
  %6 = call ptr @memset(ptr %3, i32 0, i32 12)
  %byBBType.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 64
  %7 = ptrtoint ptr %byBBType.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %byBBType.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i = icmp eq i8 %8, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %ab.i = getelementptr inbounds %struct.vnt_tx_short_buf_head, ptr %3, i32 0, i32 2
  tail call void @vnt_get_phy_field(ptr noundef %priv, i32 noundef %add.i, i16 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef %ab.i) #3
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %3, align 1
  %11 = or i16 %10, 1
  store i16 %11, ptr %3, align 1
  %ab8.i = getelementptr inbounds %struct.vnt_tx_short_buf_head, ptr %3, i32 0, i32 2
  tail call void @vnt_get_phy_field(ptr noundef %priv, i32 noundef %add.i, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef %ab8.i) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ 4, %if.then.i ]
  %duration11.i = getelementptr inbounds %struct.vnt_tx_short_buf_head, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %duration11.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 0, ptr %duration11.i, align 1
  %preamble_type.i1.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 72
  %13 = ptrtoint ptr %preamble_type.i1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %preamble_type.i1.i, align 1
  %15 = and i8 %14, 1
  %rem.i2.i = zext i8 %15 to i32
  %arrayidx3.i3.i = getelementptr [2 x [12 x i16]], ptr @wTimeStampOff, i32 0, i32 %rem.i2.i, i32 %.sink.i
  %16 = ptrtoint ptr %arrayidx3.i3.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx3.i3.i, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #3
  %19 = getelementptr inbounds %struct.vnt_tx_short_buf_head, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %18, ptr %19, align 1
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %3, align 1
  %23 = or i16 %22, 8192
  store i16 %23, ptr %3, align 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  %28 = call ptr @memcpy(ptr %add.ptr.i, ptr %25, i32 %27)
  %u.i = getelementptr i8, ptr %3, i32 36
  %29 = ptrtoint ptr %u.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 0, ptr %u.i, align 2
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cb.i.i, align 8
  %and.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.vnt_beacon_xmit.exit_crit_edge, label %if.then20.i

if.end.i.vnt_beacon_xmit.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_beacon_xmit.exit

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %duration_id.i = getelementptr i8, ptr %3, i32 14
  %32 = ptrtoint ptr %duration_id.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %duration_id.i, align 2
  %wSeqCounter.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 96
  %33 = ptrtoint ptr %wSeqCounter.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %wSeqCounter.i, align 2
  %shl.i = shl i16 %34, 4
  %35 = tail call i16 @llvm.bswap.i16(i16 %shl.i) #3
  %seq_ctrl.i = getelementptr i8, ptr %3, i32 34
  %36 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %seq_ctrl.i, align 2
  br label %vnt_beacon_xmit.exit

vnt_beacon_xmit.exit:                             ; preds = %if.then20.i, %if.end.i.vnt_beacon_xmit.exit_crit_edge
  %wSeqCounter24.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 96
  %37 = ptrtoint ptr %wSeqCounter24.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %wSeqCounter24.i, align 2
  %inc.i = add i16 %38, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %inc.i)
  %cmp27.i = icmp ugt i16 %inc.i, 4095
  %spec.select.i = select i1 %cmp27.i, i16 0, i16 %inc.i
  %39 = ptrtoint ptr %wSeqCounter24.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %spec.select.i, ptr %wSeqCounter24.i, align 2
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  %42 = trunc i32 %41 to i16
  %conv34.i = add i16 %42, 12
  %wBCNBufLen.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 97
  %43 = ptrtoint ptr %wBCNBufLen.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv34.i, ptr %wBCNBufLen.i, align 4
  %tx_beacon_dma.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 15
  %44 = ptrtoint ptr %tx_beacon_dma.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_beacon_dma.i, align 4
  %port_offset.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %46 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port_offset.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %47, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %48 = tail call i32 @llvm.bswap.i32(i32 %45) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %48) #3, !srcloc !20
  %49 = ptrtoint ptr %wBCNBufLen.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %wBCNBufLen.i, align 4
  %51 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port_offset.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %52, i32 142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %53 = tail call i16 @llvm.bswap.i16(i16 %50) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr39.i, i16 %53) #3, !srcloc !22
  %54 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %port_offset.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %55, i32 87
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr41.i) #3, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  %57 = or i8 %56, 1
  %58 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %port_offset.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %59, i32 87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr47.i, i8 %57) #3, !srcloc !26
  %60 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %port_offset.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %61, i32 140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr49.i, i8 1) #3, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %vnt_beacon_xmit.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vnt_beacon_xmit.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_beacon_enable(ptr noundef %priv, ptr noundef %vif, ptr nocapture noundef readonly %conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 2) #3, !srcloc !26
  %2 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_offset, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 1) #3, !srcloc !26
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 19
  %4 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %beacon_int, align 2
  tail call void @CARDvSetFirstNextTBTT(ptr noundef %priv, i16 noundef zeroext %5) #3
  %6 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %beacon_int, align 2
  %call = tail call zeroext i1 @CARDbSetBeaconPeriod(ptr noundef %priv, i16 noundef zeroext %7) #3
  %call4 = tail call i32 @vnt_beacon_make(ptr noundef %priv, ptr noundef %vif)
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @CARDvSetFirstNextTBTT(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @CARDbSetBeaconPeriod(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s_vFillRTSHead(ptr noundef %pDevice, i8 noundef zeroext %byPktType, ptr noundef %pvRTS, i32 noundef %cbFrameLength, i1 noundef zeroext %bNeedAck, i1 noundef zeroext %bDisCRC, ptr nocapture noundef readonly %hdr, i16 noundef zeroext %wCurrentRate, i8 noundef zeroext %byFBOption) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pvRTS, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec.select = select i1 %bDisCRC, i32 16, i32 20
  %0 = zext i8 %byPktType to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %byPktType, label %if.end.cleanup_crit_edge [
    i8 2, label %if.end.if.then9_crit_edge
    i8 3, label %if.end.if.then9_crit_edge473
    i8 0, label %if.then76
    i8 1, label %if.then134
  ]

if.end.if.then9_crit_edge473:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %if.end.if.then9_crit_edge473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %byFBOption)
  %cmp11 = icmp eq i8 %byFBOption, 0
  %byTopCCKBasicRate = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 69
  %1 = ptrtoint ptr %byTopCCKBasicRate to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %byTopCCKBasicRate, align 4
  %conv14 = zext i8 %2 to i16
  tail call void @vnt_get_phy_field(ptr noundef %pDevice, i32 noundef %spec.select, i16 noundef zeroext %conv14, i8 noundef zeroext 1, ptr noundef nonnull %pvRTS) #3
  %byTopOFDMBasicRate = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 68
  %3 = ptrtoint ptr %byTopOFDMBasicRate to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %byTopOFDMBasicRate, align 1
  %conv15 = zext i8 %4 to i16
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then9
  %a = getelementptr inbounds %struct.vnt_rts_g, ptr %pvRTS, i32 0, i32 1
  tail call void @vnt_get_phy_field(ptr noundef %pDevice, i32 noundef %spec.select, i16 noundef zeroext %conv15, i8 noundef zeroext %byPktType, ptr noundef %a) #3
  %5 = ptrtoint ptr %byTopCCKBasicRate to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %byTopCCKBasicRate, align 4
  %conv17 = zext i8 %6 to i16
  %preamble_type.i = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 72
  %7 = ptrtoint ptr %preamble_type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %preamble_type.i, align 1
  %call.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %8, i8 noundef zeroext 1, i32 noundef 14, i16 noundef zeroext %conv17) #3
  %uSIFS.i = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %9 = ptrtoint ptr %uSIFS.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uSIFS.i, align 4
  %mul.i = shl i32 %10, 1
  %add.i = add i32 %mul.i, %call.i
  %11 = ptrtoint ptr %preamble_type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %preamble_type.i, align 1
  %call.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %12, i8 noundef zeroext 1, i32 noundef %cbFrameLength, i16 noundef zeroext %conv17) #3
  br i1 %bNeedAck, label %if.end.i.i, label %if.then13.s_uGetRTSCTSDuration.exit_crit_edge

if.then13.s_uGetRTSCTSDuration.exit_crit_edge:    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %preamble_type.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %preamble_type.i, align 1
  %15 = ptrtoint ptr %byTopCCKBasicRate to i32
  call void @__asan_load1_noabort(i32 %15)
  %cond.in.i.i = load i8, ptr %byTopCCKBasicRate, align 1
  %conv5.i.i = zext i8 %cond.in.i.i to i16
  %call6.i.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %14, i8 noundef zeroext 1, i32 noundef 14, i16 noundef zeroext %conv5.i.i) #3
  %16 = ptrtoint ptr %uSIFS.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uSIFS.i, align 4
  %add.i.i = add i32 %call6.i.i, %call.i.i
  %add7.i.i = add i32 %add.i.i, %17
  br label %s_uGetRTSCTSDuration.exit

s_uGetRTSCTSDuration.exit:                        ; preds = %if.end.i.i, %if.then13.s_uGetRTSCTSDuration.exit_crit_edge
  %retval.0.i.i = phi i32 [ %add7.i.i, %if.end.i.i ], [ %call.i.i, %if.then13.s_uGetRTSCTSDuration.exit_crit_edge ]
  %add3.i = add i32 %add.i, %retval.0.i.i
  %conv307.i = trunc i32 %add3.i to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv307.i) #3
  %duration_bb = getelementptr inbounds %struct.vnt_rts_g, ptr %pvRTS, i32 0, i32 4
  %19 = ptrtoint ptr %duration_bb to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %duration_bb, align 2
  %20 = ptrtoint ptr %preamble_type.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %preamble_type.i, align 1
  %22 = ptrtoint ptr %byTopOFDMBasicRate to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %byTopOFDMBasicRate, align 1
  %conv17.i = zext i8 %23 to i16
  %call18.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %21, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv17.i) #3
  %24 = ptrtoint ptr %uSIFS.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %uSIFS.i, align 4
  %mul20.i = shl i32 %25, 1
  %add21.i = add i32 %mul20.i, %call18.i
  %26 = ptrtoint ptr %preamble_type.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %preamble_type.i, align 1
  %call.i492.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %27, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %wCurrentRate) #3
  br i1 %bNeedAck, label %if.end.i503.i, label %s_uGetRTSCTSDuration.exit.s_uGetRTSCTSDuration.exit330_crit_edge

s_uGetRTSCTSDuration.exit.s_uGetRTSCTSDuration.exit330_crit_edge: ; preds = %s_uGetRTSCTSDuration.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit330

if.end.i503.i:                                    ; preds = %s_uGetRTSCTSDuration.exit
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %preamble_type.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %preamble_type.i, align 1
  %30 = ptrtoint ptr %byTopOFDMBasicRate to i32
  call void @__asan_load1_noabort(i32 %30)
  %cond.in.i497.i = load i8, ptr %byTopOFDMBasicRate, align 1
  %conv5.i498.i = zext i8 %cond.in.i497.i to i16
  %call6.i499.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %29, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv5.i498.i) #3
  %31 = ptrtoint ptr %uSIFS.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uSIFS.i, align 4
  %add.i501.i = add i32 %call6.i499.i, %call.i492.i
  %add7.i502.i = add i32 %add.i501.i, %32
  br label %s_uGetRTSCTSDuration.exit330

s_uGetRTSCTSDuration.exit330:                     ; preds = %if.end.i503.i, %s_uGetRTSCTSDuration.exit.s_uGetRTSCTSDuration.exit330_crit_edge
  %retval.0.i504.i = phi i32 [ %add7.i502.i, %if.end.i503.i ], [ %call.i492.i, %s_uGetRTSCTSDuration.exit.s_uGetRTSCTSDuration.exit330_crit_edge ]
  %add24.i = add i32 %add21.i, %retval.0.i504.i
  %conv307.i329 = trunc i32 %add24.i to i16
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv307.i329) #3
  %duration_aa = getelementptr inbounds %struct.vnt_rts_g, ptr %pvRTS, i32 0, i32 3
  %34 = ptrtoint ptr %duration_aa to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %duration_aa, align 2
  %35 = ptrtoint ptr %preamble_type.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %preamble_type.i, align 1
  %37 = ptrtoint ptr %byTopCCKBasicRate to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %byTopCCKBasicRate, align 4
  %conv7.i = zext i8 %38 to i16
  %call8.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %36, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv7.i) #3
  %39 = ptrtoint ptr %uSIFS.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %uSIFS.i, align 4
  %mul10.i = shl i32 %40, 1
  %add11.i = add i32 %mul10.i, %call8.i
  %41 = ptrtoint ptr %preamble_type.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %preamble_type.i, align 1
  %call.i477.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %42, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %wCurrentRate) #3
  br i1 %bNeedAck, label %if.end.i488.i, label %s_uGetRTSCTSDuration.exit330.s_uGetRTSCTSDuration.exit332_crit_edge

s_uGetRTSCTSDuration.exit330.s_uGetRTSCTSDuration.exit332_crit_edge: ; preds = %s_uGetRTSCTSDuration.exit330
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit332

if.end.i488.i:                                    ; preds = %s_uGetRTSCTSDuration.exit330
  call void @__sanitizer_cov_trace_pc() #5
  %43 = ptrtoint ptr %preamble_type.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %preamble_type.i, align 1
  %45 = ptrtoint ptr %byTopOFDMBasicRate to i32
  call void @__asan_load1_noabort(i32 %45)
  %cond.in.i482.i = load i8, ptr %byTopOFDMBasicRate, align 1
  %conv5.i483.i = zext i8 %cond.in.i482.i to i16
  %call6.i484.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %44, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv5.i483.i) #3
  %46 = ptrtoint ptr %uSIFS.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %uSIFS.i, align 4
  %add.i486.i = add i32 %call6.i484.i, %call.i477.i
  %add7.i487.i = add i32 %add.i486.i, %47
  br label %s_uGetRTSCTSDuration.exit332

s_uGetRTSCTSDuration.exit332:                     ; preds = %if.end.i488.i, %s_uGetRTSCTSDuration.exit330.s_uGetRTSCTSDuration.exit332_crit_edge
  %retval.0.i489.i = phi i32 [ %add7.i487.i, %if.end.i488.i ], [ %call.i477.i, %s_uGetRTSCTSDuration.exit330.s_uGetRTSCTSDuration.exit332_crit_edge ]
  %add14.i = add i32 %add11.i, %retval.0.i489.i
  %conv307.i331 = trunc i32 %add14.i to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv307.i331) #3
  %duration_ba = getelementptr inbounds %struct.vnt_rts_g, ptr %pvRTS, i32 0, i32 2
  %49 = ptrtoint ptr %duration_ba to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %duration_ba, align 2
  %50 = ptrtoint ptr %duration_aa to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %duration_aa, align 2
  %data = getelementptr inbounds %struct.vnt_rts_g, ptr %pvRTS, i32 0, i32 6
  %duration = getelementptr inbounds %struct.vnt_rts_g, ptr %pvRTS, i32 0, i32 6, i32 1
  %52 = ptrtoint ptr %duration to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %duration, align 2
  %53 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -19456, ptr %data, align 2
  %ra = getelementptr inbounds %struct.vnt_rts_g, ptr %pvRTS, i32 0, i32 6, i32 2
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %54 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr1, align 4
  %56 = ptrtoint ptr %ra to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %ra, align 4
  %add.ptr.i = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2, i32 4
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.vnt_rts_g, ptr %pvRTS, i32 0, i32 6, i32 2, i32 4
  %59 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %add.ptr1.i, align 2
  %ta = getelementptr inbounds %struct.vnt_rts_g, ptr %pvRTS, i32 0, i32 6, i32 3
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %60 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %addr2, align 4
  %62 = ptrtoint ptr %ta to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %ta, align 4
  %add.ptr.i333 = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3, i32 4
  %63 = ptrtoint ptr %add.ptr.i333 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %add.ptr.i333, align 2
  %add.ptr1.i334 = getelementptr %struct.vnt_rts_g, ptr %pvRTS, i32 0, i32 6, i32 3, i32 4
  %65 = ptrtoint ptr %add.ptr1.i334 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %add.ptr1.i334, align 2
  br label %cleanup

if.else:                                          ; preds = %if.then9
  %a36 = getelementptr inbounds %struct.vnt_rts_g_fb, ptr %pvRTS, i32 0, i32 1
  tail call void @vnt_get_phy_field(ptr noundef %pDevice, i32 noundef %spec.select, i16 noundef zeroext %conv15, i8 noundef zeroext %byPktType, ptr noundef %a36) #3
  %66 = ptrtoint ptr %byTopCCKBasicRate to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %byTopCCKBasicRate, align 4
  %conv38 = zext i8 %67 to i16
  %preamble_type.i335 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 72
  %68 = ptrtoint ptr %preamble_type.i335 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %preamble_type.i335, align 1
  %call.i338 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %69, i8 noundef zeroext 1, i32 noundef 14, i16 noundef zeroext %conv38) #3
  %uSIFS.i339 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %70 = ptrtoint ptr %uSIFS.i339 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %uSIFS.i339, align 4
  %mul.i340 = shl i32 %71, 1
  %add.i341 = add i32 %mul.i340, %call.i338
  %72 = ptrtoint ptr %preamble_type.i335 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %preamble_type.i335, align 1
  %call.i.i342 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %73, i8 noundef zeroext 1, i32 noundef %cbFrameLength, i16 noundef zeroext %conv38) #3
  br i1 %bNeedAck, label %if.end.i.i349, label %if.else.s_uGetRTSCTSDuration.exit353_crit_edge

if.else.s_uGetRTSCTSDuration.exit353_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit353

if.end.i.i349:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %74 = ptrtoint ptr %preamble_type.i335 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %preamble_type.i335, align 1
  %76 = ptrtoint ptr %byTopCCKBasicRate to i32
  call void @__asan_load1_noabort(i32 %76)
  %cond.in.i.i344 = load i8, ptr %byTopCCKBasicRate, align 1
  %conv5.i.i345 = zext i8 %cond.in.i.i344 to i16
  %call6.i.i346 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %75, i8 noundef zeroext 1, i32 noundef 14, i16 noundef zeroext %conv5.i.i345) #3
  %77 = ptrtoint ptr %uSIFS.i339 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %uSIFS.i339, align 4
  %add.i.i347 = add i32 %call6.i.i346, %call.i.i342
  %add7.i.i348 = add i32 %add.i.i347, %78
  br label %s_uGetRTSCTSDuration.exit353

s_uGetRTSCTSDuration.exit353:                     ; preds = %if.end.i.i349, %if.else.s_uGetRTSCTSDuration.exit353_crit_edge
  %retval.0.i.i350 = phi i32 [ %add7.i.i348, %if.end.i.i349 ], [ %call.i.i342, %if.else.s_uGetRTSCTSDuration.exit353_crit_edge ]
  %add3.i351 = add i32 %add.i341, %retval.0.i.i350
  %conv307.i352 = trunc i32 %add3.i351 to i16
  %79 = tail call i16 @llvm.bswap.i16(i16 %conv307.i352) #3
  %duration_bb41 = getelementptr inbounds %struct.vnt_rts_g_fb, ptr %pvRTS, i32 0, i32 4
  %80 = ptrtoint ptr %duration_bb41 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %duration_bb41, align 2
  %81 = ptrtoint ptr %preamble_type.i335 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %preamble_type.i335, align 1
  %83 = ptrtoint ptr %byTopOFDMBasicRate to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %byTopOFDMBasicRate, align 1
  %conv17.i356 = zext i8 %84 to i16
  %call18.i357 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %82, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv17.i356) #3
  %85 = ptrtoint ptr %uSIFS.i339 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %uSIFS.i339, align 4
  %mul20.i359 = shl i32 %86, 1
  %add21.i360 = add i32 %mul20.i359, %call18.i357
  %87 = ptrtoint ptr %preamble_type.i335 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %preamble_type.i335, align 1
  %call.i492.i361 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %88, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %wCurrentRate) #3
  br i1 %bNeedAck, label %if.end.i503.i370, label %s_uGetRTSCTSDuration.exit353.s_uGetRTSCTSDuration.exit374_crit_edge

s_uGetRTSCTSDuration.exit353.s_uGetRTSCTSDuration.exit374_crit_edge: ; preds = %s_uGetRTSCTSDuration.exit353
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit374

if.end.i503.i370:                                 ; preds = %s_uGetRTSCTSDuration.exit353
  call void @__sanitizer_cov_trace_pc() #5
  %89 = ptrtoint ptr %preamble_type.i335 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %preamble_type.i335, align 1
  %91 = ptrtoint ptr %byTopOFDMBasicRate to i32
  call void @__asan_load1_noabort(i32 %91)
  %cond.in.i497.i365 = load i8, ptr %byTopOFDMBasicRate, align 1
  %conv5.i498.i366 = zext i8 %cond.in.i497.i365 to i16
  %call6.i499.i367 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %90, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv5.i498.i366) #3
  %92 = ptrtoint ptr %uSIFS.i339 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %uSIFS.i339, align 4
  %add.i501.i368 = add i32 %call6.i499.i367, %call.i492.i361
  %add7.i502.i369 = add i32 %add.i501.i368, %93
  br label %s_uGetRTSCTSDuration.exit374

s_uGetRTSCTSDuration.exit374:                     ; preds = %if.end.i503.i370, %s_uGetRTSCTSDuration.exit353.s_uGetRTSCTSDuration.exit374_crit_edge
  %retval.0.i504.i371 = phi i32 [ %add7.i502.i369, %if.end.i503.i370 ], [ %call.i492.i361, %s_uGetRTSCTSDuration.exit353.s_uGetRTSCTSDuration.exit374_crit_edge ]
  %add24.i372 = add i32 %add21.i360, %retval.0.i504.i371
  %conv307.i373 = trunc i32 %add24.i372 to i16
  %94 = tail call i16 @llvm.bswap.i16(i16 %conv307.i373) #3
  %duration_aa44 = getelementptr inbounds %struct.vnt_rts_g_fb, ptr %pvRTS, i32 0, i32 3
  %95 = ptrtoint ptr %duration_aa44 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %duration_aa44, align 2
  %96 = ptrtoint ptr %preamble_type.i335 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %preamble_type.i335, align 1
  %98 = ptrtoint ptr %byTopCCKBasicRate to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %byTopCCKBasicRate, align 4
  %conv7.i377 = zext i8 %99 to i16
  %call8.i378 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %97, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv7.i377) #3
  %100 = ptrtoint ptr %uSIFS.i339 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %uSIFS.i339, align 4
  %mul10.i380 = shl i32 %101, 1
  %add11.i381 = add i32 %mul10.i380, %call8.i378
  %102 = ptrtoint ptr %preamble_type.i335 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %preamble_type.i335, align 1
  %call.i477.i382 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %103, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %wCurrentRate) #3
  br i1 %bNeedAck, label %if.end.i488.i391, label %s_uGetRTSCTSDuration.exit374.s_uGetRTSCTSDuration.exit395_crit_edge

s_uGetRTSCTSDuration.exit374.s_uGetRTSCTSDuration.exit395_crit_edge: ; preds = %s_uGetRTSCTSDuration.exit374
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit395

if.end.i488.i391:                                 ; preds = %s_uGetRTSCTSDuration.exit374
  call void @__sanitizer_cov_trace_pc() #5
  %104 = ptrtoint ptr %preamble_type.i335 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %preamble_type.i335, align 1
  %106 = ptrtoint ptr %byTopOFDMBasicRate to i32
  call void @__asan_load1_noabort(i32 %106)
  %cond.in.i482.i386 = load i8, ptr %byTopOFDMBasicRate, align 1
  %conv5.i483.i387 = zext i8 %cond.in.i482.i386 to i16
  %call6.i484.i388 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %105, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv5.i483.i387) #3
  %107 = ptrtoint ptr %uSIFS.i339 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %uSIFS.i339, align 4
  %add.i486.i389 = add i32 %call6.i484.i388, %call.i477.i382
  %add7.i487.i390 = add i32 %add.i486.i389, %108
  br label %s_uGetRTSCTSDuration.exit395

s_uGetRTSCTSDuration.exit395:                     ; preds = %if.end.i488.i391, %s_uGetRTSCTSDuration.exit374.s_uGetRTSCTSDuration.exit395_crit_edge
  %retval.0.i489.i392 = phi i32 [ %add7.i487.i390, %if.end.i488.i391 ], [ %call.i477.i382, %s_uGetRTSCTSDuration.exit374.s_uGetRTSCTSDuration.exit395_crit_edge ]
  %add14.i393 = add i32 %add11.i381, %retval.0.i489.i392
  %conv307.i394 = trunc i32 %add14.i393 to i16
  %109 = tail call i16 @llvm.bswap.i16(i16 %conv307.i394) #3
  %duration_ba47 = getelementptr inbounds %struct.vnt_rts_g_fb, ptr %pvRTS, i32 0, i32 2
  %110 = ptrtoint ptr %duration_ba47 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %duration_ba47, align 2
  %call49 = tail call fastcc zeroext i16 @s_uGetRTSCTSDuration(ptr noundef %pDevice, i8 noundef zeroext 4, i32 noundef %cbFrameLength, i8 noundef zeroext %byPktType, i16 noundef zeroext %wCurrentRate, i1 noundef zeroext %bNeedAck, i8 noundef zeroext %byFBOption)
  %rts_duration_ba_f0 = getelementptr inbounds %struct.vnt_rts_g_fb, ptr %pvRTS, i32 0, i32 6
  %111 = ptrtoint ptr %rts_duration_ba_f0 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %call49, ptr %rts_duration_ba_f0, align 2
  %call51 = tail call fastcc zeroext i16 @s_uGetRTSCTSDuration(ptr noundef %pDevice, i8 noundef zeroext 5, i32 noundef %cbFrameLength, i8 noundef zeroext %byPktType, i16 noundef zeroext %wCurrentRate, i1 noundef zeroext %bNeedAck, i8 noundef zeroext %byFBOption)
  %rts_duration_aa_f0 = getelementptr inbounds %struct.vnt_rts_g_fb, ptr %pvRTS, i32 0, i32 7
  %112 = ptrtoint ptr %rts_duration_aa_f0 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %call51, ptr %rts_duration_aa_f0, align 2
  %call53 = tail call fastcc zeroext i16 @s_uGetRTSCTSDuration(ptr noundef %pDevice, i8 noundef zeroext 6, i32 noundef %cbFrameLength, i8 noundef zeroext %byPktType, i16 noundef zeroext %wCurrentRate, i1 noundef zeroext %bNeedAck, i8 noundef zeroext %byFBOption)
  %rts_duration_ba_f1 = getelementptr inbounds %struct.vnt_rts_g_fb, ptr %pvRTS, i32 0, i32 8
  %113 = ptrtoint ptr %rts_duration_ba_f1 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %call53, ptr %rts_duration_ba_f1, align 2
  %call55 = tail call fastcc zeroext i16 @s_uGetRTSCTSDuration(ptr noundef %pDevice, i8 noundef zeroext 7, i32 noundef %cbFrameLength, i8 noundef zeroext %byPktType, i16 noundef zeroext %wCurrentRate, i1 noundef zeroext %bNeedAck, i8 noundef zeroext %byFBOption)
  %rts_duration_aa_f1 = getelementptr inbounds %struct.vnt_rts_g_fb, ptr %pvRTS, i32 0, i32 9
  %114 = ptrtoint ptr %rts_duration_aa_f1 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %call55, ptr %rts_duration_aa_f1, align 2
  %115 = ptrtoint ptr %duration_aa44 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %duration_aa44, align 2
  %data57 = getelementptr inbounds %struct.vnt_rts_g_fb, ptr %pvRTS, i32 0, i32 10
  %duration58 = getelementptr inbounds %struct.vnt_rts_g_fb, ptr %pvRTS, i32 0, i32 10, i32 1
  %117 = ptrtoint ptr %duration58 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %duration58, align 2
  %118 = ptrtoint ptr %data57 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 -19456, ptr %data57, align 2
  %ra62 = getelementptr inbounds %struct.vnt_rts_g_fb, ptr %pvRTS, i32 0, i32 10, i32 2
  %addr164 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %119 = ptrtoint ptr %addr164 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %addr164, align 4
  %121 = ptrtoint ptr %ra62 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %ra62, align 4
  %add.ptr.i396 = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2, i32 4
  %122 = ptrtoint ptr %add.ptr.i396 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %add.ptr.i396, align 2
  %add.ptr1.i397 = getelementptr %struct.vnt_rts_g_fb, ptr %pvRTS, i32 0, i32 10, i32 2, i32 4
  %124 = ptrtoint ptr %add.ptr1.i397 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %add.ptr1.i397, align 2
  %ta67 = getelementptr inbounds %struct.vnt_rts_g_fb, ptr %pvRTS, i32 0, i32 10, i32 3
  %addr269 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %125 = ptrtoint ptr %addr269 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %addr269, align 4
  %127 = ptrtoint ptr %ta67 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %ta67, align 4
  %add.ptr.i398 = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3, i32 4
  %128 = ptrtoint ptr %add.ptr.i398 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %add.ptr.i398, align 2
  %add.ptr1.i399 = getelementptr %struct.vnt_rts_g_fb, ptr %pvRTS, i32 0, i32 10, i32 3, i32 4
  %130 = ptrtoint ptr %add.ptr1.i399 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %add.ptr1.i399, align 2
  br label %cleanup

if.then76:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %byFBOption)
  %cmp78 = icmp eq i8 %byFBOption, 0
  %byTopOFDMBasicRate82 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 68
  %131 = ptrtoint ptr %byTopOFDMBasicRate82 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %byTopOFDMBasicRate82, align 1
  %conv83 = zext i8 %132 to i16
  tail call void @vnt_get_phy_field(ptr noundef %pDevice, i32 noundef %spec.select, i16 noundef zeroext %conv83, i8 noundef zeroext 0, ptr noundef nonnull %pvRTS) #3
  %preamble_type16.i400 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 72
  %133 = ptrtoint ptr %preamble_type16.i400 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %preamble_type16.i400, align 1
  %135 = ptrtoint ptr %byTopOFDMBasicRate82 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %byTopOFDMBasicRate82, align 1
  %conv17.i402 = zext i8 %136 to i16
  %call18.i403 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %134, i8 noundef zeroext 0, i32 noundef 14, i16 noundef zeroext %conv17.i402) #3
  %uSIFS19.i404 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %137 = ptrtoint ptr %uSIFS19.i404 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %uSIFS19.i404, align 4
  %mul20.i405 = shl i32 %138, 1
  %add21.i406 = add i32 %mul20.i405, %call18.i403
  %139 = ptrtoint ptr %preamble_type16.i400 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %preamble_type16.i400, align 1
  %call.i492.i407 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %140, i8 noundef zeroext 0, i32 noundef %cbFrameLength, i16 noundef zeroext %wCurrentRate) #3
  br i1 %cmp78, label %if.then80, label %if.else102

if.then80:                                        ; preds = %if.then76
  br i1 %bNeedAck, label %if.end.i503.i416, label %if.then80.s_uGetRTSCTSDuration.exit420_crit_edge

if.then80.s_uGetRTSCTSDuration.exit420_crit_edge: ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit420

if.end.i503.i416:                                 ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #5
  %141 = ptrtoint ptr %preamble_type16.i400 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %preamble_type16.i400, align 1
  %143 = ptrtoint ptr %byTopOFDMBasicRate82 to i32
  call void @__asan_load1_noabort(i32 %143)
  %cond.in.i497.i411 = load i8, ptr %byTopOFDMBasicRate82, align 1
  %conv5.i498.i412 = zext i8 %cond.in.i497.i411 to i16
  %call6.i499.i413 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %142, i8 noundef zeroext 0, i32 noundef 14, i16 noundef zeroext %conv5.i498.i412) #3
  %144 = ptrtoint ptr %uSIFS19.i404 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %uSIFS19.i404, align 4
  %add.i501.i414 = add i32 %call6.i499.i413, %call.i492.i407
  %add7.i502.i415 = add i32 %add.i501.i414, %145
  br label %s_uGetRTSCTSDuration.exit420

s_uGetRTSCTSDuration.exit420:                     ; preds = %if.end.i503.i416, %if.then80.s_uGetRTSCTSDuration.exit420_crit_edge
  %retval.0.i504.i417 = phi i32 [ %add7.i502.i415, %if.end.i503.i416 ], [ %call.i492.i407, %if.then80.s_uGetRTSCTSDuration.exit420_crit_edge ]
  %add24.i418 = add i32 %add21.i406, %retval.0.i504.i417
  %conv307.i419 = trunc i32 %add24.i418 to i16
  %146 = tail call i16 @llvm.bswap.i16(i16 %conv307.i419) #3
  %duration86 = getelementptr inbounds %struct.vnt_rts_ab, ptr %pvRTS, i32 0, i32 1
  %147 = ptrtoint ptr %duration86 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %duration86, align 2
  %data88 = getelementptr inbounds %struct.vnt_rts_ab, ptr %pvRTS, i32 0, i32 3
  %duration89 = getelementptr inbounds %struct.vnt_rts_ab, ptr %pvRTS, i32 0, i32 3, i32 1
  %148 = ptrtoint ptr %duration89 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %146, ptr %duration89, align 2
  %149 = ptrtoint ptr %data88 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 -19456, ptr %data88, align 2
  %ra93 = getelementptr inbounds %struct.vnt_rts_ab, ptr %pvRTS, i32 0, i32 3, i32 2
  %addr195 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %150 = ptrtoint ptr %addr195 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %addr195, align 4
  %152 = ptrtoint ptr %ra93 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %ra93, align 4
  %add.ptr.i421 = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2, i32 4
  %153 = ptrtoint ptr %add.ptr.i421 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %add.ptr.i421, align 2
  %add.ptr1.i422 = getelementptr %struct.vnt_rts_ab, ptr %pvRTS, i32 0, i32 3, i32 2, i32 4
  %155 = ptrtoint ptr %add.ptr1.i422 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %add.ptr1.i422, align 2
  %ta98 = getelementptr inbounds %struct.vnt_rts_ab, ptr %pvRTS, i32 0, i32 3, i32 3
  %addr2100 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %156 = ptrtoint ptr %addr2100 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %addr2100, align 4
  %158 = ptrtoint ptr %ta98 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %ta98, align 4
  %add.ptr.i423 = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3, i32 4
  %159 = ptrtoint ptr %add.ptr.i423 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %add.ptr.i423, align 2
  %add.ptr1.i424 = getelementptr %struct.vnt_rts_ab, ptr %pvRTS, i32 0, i32 3, i32 3, i32 4
  %161 = ptrtoint ptr %add.ptr1.i424 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %add.ptr1.i424, align 2
  br label %cleanup

if.else102:                                       ; preds = %if.then76
  br i1 %bNeedAck, label %if.end.i503.i441, label %if.else102.s_uGetRTSCTSDuration.exit445_crit_edge

if.else102.s_uGetRTSCTSDuration.exit445_crit_edge: ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit445

if.end.i503.i441:                                 ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #5
  %162 = ptrtoint ptr %preamble_type16.i400 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %preamble_type16.i400, align 1
  %164 = ptrtoint ptr %byTopOFDMBasicRate82 to i32
  call void @__asan_load1_noabort(i32 %164)
  %cond.in.i497.i436 = load i8, ptr %byTopOFDMBasicRate82, align 1
  %conv5.i498.i437 = zext i8 %cond.in.i497.i436 to i16
  %call6.i499.i438 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %163, i8 noundef zeroext 0, i32 noundef 14, i16 noundef zeroext %conv5.i498.i437) #3
  %165 = ptrtoint ptr %uSIFS19.i404 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %uSIFS19.i404, align 4
  %add.i501.i439 = add i32 %call6.i499.i438, %call.i492.i407
  %add7.i502.i440 = add i32 %add.i501.i439, %166
  br label %s_uGetRTSCTSDuration.exit445

s_uGetRTSCTSDuration.exit445:                     ; preds = %if.end.i503.i441, %if.else102.s_uGetRTSCTSDuration.exit445_crit_edge
  %retval.0.i504.i442 = phi i32 [ %add7.i502.i440, %if.end.i503.i441 ], [ %call.i492.i407, %if.else102.s_uGetRTSCTSDuration.exit445_crit_edge ]
  %add24.i443 = add i32 %add21.i406, %retval.0.i504.i442
  %conv307.i444 = trunc i32 %add24.i443 to i16
  %167 = tail call i16 @llvm.bswap.i16(i16 %conv307.i444) #3
  %duration109 = getelementptr inbounds %struct.vnt_rts_a_fb, ptr %pvRTS, i32 0, i32 1
  %168 = ptrtoint ptr %duration109 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %duration109, align 2
  %call111 = tail call fastcc zeroext i16 @s_uGetRTSCTSDuration(ptr noundef %pDevice, i8 noundef zeroext 5, i32 noundef %cbFrameLength, i8 noundef zeroext 0, i16 noundef zeroext %wCurrentRate, i1 noundef zeroext %bNeedAck, i8 noundef zeroext %byFBOption)
  %rts_duration_f0 = getelementptr inbounds %struct.vnt_rts_a_fb, ptr %pvRTS, i32 0, i32 3
  %169 = ptrtoint ptr %rts_duration_f0 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %call111, ptr %rts_duration_f0, align 2
  %call113 = tail call fastcc zeroext i16 @s_uGetRTSCTSDuration(ptr noundef %pDevice, i8 noundef zeroext 7, i32 noundef %cbFrameLength, i8 noundef zeroext 0, i16 noundef zeroext %wCurrentRate, i1 noundef zeroext %bNeedAck, i8 noundef zeroext %byFBOption)
  %rts_duration_f1 = getelementptr inbounds %struct.vnt_rts_a_fb, ptr %pvRTS, i32 0, i32 4
  %170 = ptrtoint ptr %rts_duration_f1 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %call113, ptr %rts_duration_f1, align 2
  %171 = ptrtoint ptr %duration109 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %duration109, align 2
  %data115 = getelementptr inbounds %struct.vnt_rts_a_fb, ptr %pvRTS, i32 0, i32 5
  %duration116 = getelementptr inbounds %struct.vnt_rts_a_fb, ptr %pvRTS, i32 0, i32 5, i32 1
  %173 = ptrtoint ptr %duration116 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %172, ptr %duration116, align 2
  %174 = ptrtoint ptr %data115 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 -19456, ptr %data115, align 2
  %ra120 = getelementptr inbounds %struct.vnt_rts_a_fb, ptr %pvRTS, i32 0, i32 5, i32 2
  %addr1122 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %175 = ptrtoint ptr %addr1122 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %addr1122, align 4
  %177 = ptrtoint ptr %ra120 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %ra120, align 4
  %add.ptr.i446 = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2, i32 4
  %178 = ptrtoint ptr %add.ptr.i446 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %add.ptr.i446, align 2
  %add.ptr1.i447 = getelementptr %struct.vnt_rts_a_fb, ptr %pvRTS, i32 0, i32 5, i32 2, i32 4
  %180 = ptrtoint ptr %add.ptr1.i447 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %add.ptr1.i447, align 2
  %ta125 = getelementptr inbounds %struct.vnt_rts_a_fb, ptr %pvRTS, i32 0, i32 5, i32 3
  %addr2127 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %181 = ptrtoint ptr %addr2127 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %addr2127, align 4
  %183 = ptrtoint ptr %ta125 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %ta125, align 4
  %add.ptr.i448 = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3, i32 4
  %184 = ptrtoint ptr %add.ptr.i448 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %add.ptr.i448, align 2
  %add.ptr1.i449 = getelementptr %struct.vnt_rts_a_fb, ptr %pvRTS, i32 0, i32 5, i32 3, i32 4
  %186 = ptrtoint ptr %add.ptr1.i449 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %185, ptr %add.ptr1.i449, align 2
  br label %cleanup

if.then134:                                       ; preds = %if.end
  %byTopCCKBasicRate136 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 69
  %187 = ptrtoint ptr %byTopCCKBasicRate136 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %byTopCCKBasicRate136, align 4
  %conv137 = zext i8 %188 to i16
  tail call void @vnt_get_phy_field(ptr noundef %pDevice, i32 noundef %spec.select, i16 noundef zeroext %conv137, i8 noundef zeroext 1, ptr noundef nonnull %pvRTS) #3
  %preamble_type.i450 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 72
  %189 = ptrtoint ptr %preamble_type.i450 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %preamble_type.i450, align 1
  %191 = ptrtoint ptr %byTopCCKBasicRate136 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %byTopCCKBasicRate136, align 4
  %conv1.i452 = zext i8 %192 to i16
  %call.i453 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %190, i8 noundef zeroext 1, i32 noundef 14, i16 noundef zeroext %conv1.i452) #3
  %uSIFS.i454 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %193 = ptrtoint ptr %uSIFS.i454 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %uSIFS.i454, align 4
  %mul.i455 = shl i32 %194, 1
  %add.i456 = add i32 %mul.i455, %call.i453
  %195 = ptrtoint ptr %preamble_type.i450 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %preamble_type.i450, align 1
  %call.i.i457 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %196, i8 noundef zeroext 1, i32 noundef %cbFrameLength, i16 noundef zeroext %wCurrentRate) #3
  br i1 %bNeedAck, label %if.end.i.i464, label %if.then134.s_uGetRTSCTSDuration.exit468_crit_edge

if.then134.s_uGetRTSCTSDuration.exit468_crit_edge: ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetRTSCTSDuration.exit468

if.end.i.i464:                                    ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #5
  %197 = ptrtoint ptr %preamble_type.i450 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %preamble_type.i450, align 1
  %199 = ptrtoint ptr %byTopCCKBasicRate136 to i32
  call void @__asan_load1_noabort(i32 %199)
  %cond.in.i.i459 = load i8, ptr %byTopCCKBasicRate136, align 1
  %conv5.i.i460 = zext i8 %cond.in.i.i459 to i16
  %call6.i.i461 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %198, i8 noundef zeroext 1, i32 noundef 14, i16 noundef zeroext %conv5.i.i460) #3
  %200 = ptrtoint ptr %uSIFS.i454 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %uSIFS.i454, align 4
  %add.i.i462 = add i32 %call6.i.i461, %call.i.i457
  %add7.i.i463 = add i32 %add.i.i462, %201
  br label %s_uGetRTSCTSDuration.exit468

s_uGetRTSCTSDuration.exit468:                     ; preds = %if.end.i.i464, %if.then134.s_uGetRTSCTSDuration.exit468_crit_edge
  %retval.0.i.i465 = phi i32 [ %add7.i.i463, %if.end.i.i464 ], [ %call.i.i457, %if.then134.s_uGetRTSCTSDuration.exit468_crit_edge ]
  %add3.i466 = add i32 %add.i456, %retval.0.i.i465
  %conv307.i467 = trunc i32 %add3.i466 to i16
  %202 = tail call i16 @llvm.bswap.i16(i16 %conv307.i467) #3
  %duration141 = getelementptr inbounds %struct.vnt_rts_ab, ptr %pvRTS, i32 0, i32 1
  %203 = ptrtoint ptr %duration141 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %202, ptr %duration141, align 2
  %data143 = getelementptr inbounds %struct.vnt_rts_ab, ptr %pvRTS, i32 0, i32 3
  %duration144 = getelementptr inbounds %struct.vnt_rts_ab, ptr %pvRTS, i32 0, i32 3, i32 1
  %204 = ptrtoint ptr %duration144 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %202, ptr %duration144, align 2
  %205 = ptrtoint ptr %data143 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 -19456, ptr %data143, align 2
  %ra148 = getelementptr inbounds %struct.vnt_rts_ab, ptr %pvRTS, i32 0, i32 3, i32 2
  %addr1150 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %206 = ptrtoint ptr %addr1150 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %addr1150, align 4
  %208 = ptrtoint ptr %ra148 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %ra148, align 4
  %add.ptr.i469 = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2, i32 4
  %209 = ptrtoint ptr %add.ptr.i469 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %add.ptr.i469, align 2
  %add.ptr1.i470 = getelementptr %struct.vnt_rts_ab, ptr %pvRTS, i32 0, i32 3, i32 2, i32 4
  %211 = ptrtoint ptr %add.ptr1.i470 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %210, ptr %add.ptr1.i470, align 2
  %ta153 = getelementptr inbounds %struct.vnt_rts_ab, ptr %pvRTS, i32 0, i32 3, i32 3
  %addr2155 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %212 = ptrtoint ptr %addr2155 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %addr2155, align 4
  %214 = ptrtoint ptr %ta153 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %ta153, align 4
  %add.ptr.i471 = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3, i32 4
  %215 = ptrtoint ptr %add.ptr.i471 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %add.ptr.i471, align 2
  %add.ptr1.i472 = getelementptr %struct.vnt_rts_ab, ptr %pvRTS, i32 0, i32 3, i32 3, i32 4
  %217 = ptrtoint ptr %add.ptr1.i472 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %216, ptr %add.ptr1.i472, align 2
  br label %cleanup

cleanup:                                          ; preds = %s_uGetRTSCTSDuration.exit468, %s_uGetRTSCTSDuration.exit445, %s_uGetRTSCTSDuration.exit420, %s_uGetRTSCTSDuration.exit395, %s_uGetRTSCTSDuration.exit332, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bb_get_frame_time(i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s_uGetTxRsvTime(ptr nocapture noundef readonly %pDevice, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %wRate, i1 noundef zeroext %bNeedAck) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %preamble_type = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 72
  %0 = ptrtoint ptr %preamble_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %preamble_type, align 1
  %call = tail call i32 @bb_get_frame_time(i8 noundef zeroext %1, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %wRate) #3
  br i1 %bNeedAck, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %preamble_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %preamble_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %byPktType)
  %cmp = icmp eq i8 %byPktType, 1
  %byTopCCKBasicRate = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 69
  %byTopOFDMBasicRate = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 68
  %cond.in.in = select i1 %cmp, ptr %byTopCCKBasicRate, ptr %byTopOFDMBasicRate
  %4 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %cond.in = load i8, ptr %cond.in.in, align 1
  %conv5 = zext i8 %cond.in to i16
  %call6 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %3, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv5) #3
  %uSIFS = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %5 = ptrtoint ptr %uSIFS to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %uSIFS, align 4
  %add = add i32 %call6, %call
  %add7 = add i32 %add, %6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add7, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnt_get_phy_field(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @s_uGetRTSCTSDuration(ptr noundef readonly %pDevice, i8 noundef zeroext %byDurType, i32 noundef %cbFrameLength, i8 noundef zeroext %byPktType, i16 noundef zeroext %wRate, i1 noundef zeroext %bNeedAck, i8 noundef zeroext %byFBOption) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %byDurType to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %byDurType, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb4
    i8 2, label %sw.bb15
    i8 3, label %sw.bb25
    i8 4, label %sw.bb30
    i8 5, label %sw.bb73
    i8 6, label %sw.bb123
    i8 7, label %sw.bb173
    i8 8, label %sw.bb223
    i8 9, label %sw.bb265
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %preamble_type = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 72
  %1 = ptrtoint ptr %preamble_type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %preamble_type, align 1
  %byTopCCKBasicRate = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 69
  %3 = ptrtoint ptr %byTopCCKBasicRate to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %byTopCCKBasicRate, align 4
  %conv1 = zext i8 %4 to i16
  %call = tail call i32 @bb_get_frame_time(i8 noundef zeroext %2, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv1) #3
  %uSIFS = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %5 = ptrtoint ptr %uSIFS to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %uSIFS, align 4
  %mul = shl i32 %6, 1
  %add = add i32 %mul, %call
  %7 = ptrtoint ptr %preamble_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %preamble_type, align 1
  %call.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %8, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %wRate) #3
  br i1 %bNeedAck, label %if.end.i, label %sw.bb.s_uGetTxRsvTime.exit_crit_edge

sw.bb.s_uGetTxRsvTime.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetTxRsvTime.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %preamble_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %preamble_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %byPktType)
  %cmp.i = icmp eq i8 %byPktType, 1
  %byTopOFDMBasicRate.i = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 68
  %cond.in.in.i = select i1 %cmp.i, ptr %byTopCCKBasicRate, ptr %byTopOFDMBasicRate.i
  %11 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %cond.in.i = load i8, ptr %cond.in.in.i, align 1
  %conv5.i = zext i8 %cond.in.i to i16
  %call6.i = tail call i32 @bb_get_frame_time(i8 noundef zeroext %10, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv5.i) #3
  %12 = ptrtoint ptr %uSIFS to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uSIFS, align 4
  %add.i = add i32 %call6.i, %call.i
  %add7.i = add i32 %add.i, %13
  br label %s_uGetTxRsvTime.exit

s_uGetTxRsvTime.exit:                             ; preds = %if.end.i, %sw.bb.s_uGetTxRsvTime.exit_crit_edge
  %retval.0.i = phi i32 [ %add7.i, %if.end.i ], [ %call.i, %sw.bb.s_uGetTxRsvTime.exit_crit_edge ]
  %add3 = add i32 %add, %retval.0.i
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %preamble_type5 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 72
  %14 = ptrtoint ptr %preamble_type5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %preamble_type5, align 1
  %byTopCCKBasicRate6 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 69
  %16 = ptrtoint ptr %byTopCCKBasicRate6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %byTopCCKBasicRate6, align 4
  %conv7 = zext i8 %17 to i16
  %call8 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %15, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv7) #3
  %uSIFS9 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %18 = ptrtoint ptr %uSIFS9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uSIFS9, align 4
  %mul10 = shl i32 %19, 1
  %add11 = add i32 %mul10, %call8
  %20 = ptrtoint ptr %preamble_type5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %preamble_type5, align 1
  %call.i477 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %21, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %wRate) #3
  br i1 %bNeedAck, label %if.end.i488, label %sw.bb4.s_uGetTxRsvTime.exit490_crit_edge

sw.bb4.s_uGetTxRsvTime.exit490_crit_edge:         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetTxRsvTime.exit490

if.end.i488:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %preamble_type5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %preamble_type5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %byPktType)
  %cmp.i478 = icmp eq i8 %byPktType, 1
  %byTopOFDMBasicRate.i480 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 68
  %cond.in.in.i481 = select i1 %cmp.i478, ptr %byTopCCKBasicRate6, ptr %byTopOFDMBasicRate.i480
  %24 = ptrtoint ptr %cond.in.in.i481 to i32
  call void @__asan_load1_noabort(i32 %24)
  %cond.in.i482 = load i8, ptr %cond.in.in.i481, align 1
  %conv5.i483 = zext i8 %cond.in.i482 to i16
  %call6.i484 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %23, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv5.i483) #3
  %25 = ptrtoint ptr %uSIFS9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uSIFS9, align 4
  %add.i486 = add i32 %call6.i484, %call.i477
  %add7.i487 = add i32 %add.i486, %26
  br label %s_uGetTxRsvTime.exit490

s_uGetTxRsvTime.exit490:                          ; preds = %if.end.i488, %sw.bb4.s_uGetTxRsvTime.exit490_crit_edge
  %retval.0.i489 = phi i32 [ %add7.i487, %if.end.i488 ], [ %call.i477, %sw.bb4.s_uGetTxRsvTime.exit490_crit_edge ]
  %add14 = add i32 %add11, %retval.0.i489
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %preamble_type16 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 72
  %27 = ptrtoint ptr %preamble_type16 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %preamble_type16, align 1
  %byTopOFDMBasicRate = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 68
  %29 = ptrtoint ptr %byTopOFDMBasicRate to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %byTopOFDMBasicRate, align 1
  %conv17 = zext i8 %30 to i16
  %call18 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %28, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv17) #3
  %uSIFS19 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %31 = ptrtoint ptr %uSIFS19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uSIFS19, align 4
  %mul20 = shl i32 %32, 1
  %add21 = add i32 %mul20, %call18
  %33 = ptrtoint ptr %preamble_type16 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %preamble_type16, align 1
  %call.i492 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %34, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %wRate) #3
  br i1 %bNeedAck, label %if.end.i503, label %sw.bb15.s_uGetTxRsvTime.exit505_crit_edge

sw.bb15.s_uGetTxRsvTime.exit505_crit_edge:        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetTxRsvTime.exit505

if.end.i503:                                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %preamble_type16 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %preamble_type16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %byPktType)
  %cmp.i493 = icmp eq i8 %byPktType, 1
  %byTopCCKBasicRate.i494 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 69
  %cond.in.in.i496 = select i1 %cmp.i493, ptr %byTopCCKBasicRate.i494, ptr %byTopOFDMBasicRate
  %37 = ptrtoint ptr %cond.in.in.i496 to i32
  call void @__asan_load1_noabort(i32 %37)
  %cond.in.i497 = load i8, ptr %cond.in.in.i496, align 1
  %conv5.i498 = zext i8 %cond.in.i497 to i16
  %call6.i499 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %36, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv5.i498) #3
  %38 = ptrtoint ptr %uSIFS19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %uSIFS19, align 4
  %add.i501 = add i32 %call6.i499, %call.i492
  %add7.i502 = add i32 %add.i501, %39
  br label %s_uGetTxRsvTime.exit505

s_uGetTxRsvTime.exit505:                          ; preds = %if.end.i503, %sw.bb15.s_uGetTxRsvTime.exit505_crit_edge
  %retval.0.i504 = phi i32 [ %add7.i502, %if.end.i503 ], [ %call.i492, %sw.bb15.s_uGetTxRsvTime.exit505_crit_edge ]
  %add24 = add i32 %add21, %retval.0.i504
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %uSIFS26 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %40 = ptrtoint ptr %uSIFS26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %uSIFS26, align 4
  %preamble_type.i506 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 72
  %42 = ptrtoint ptr %preamble_type.i506 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %preamble_type.i506, align 1
  %call.i507 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %43, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %wRate) #3
  br i1 %bNeedAck, label %if.end.i518, label %sw.bb25.s_uGetTxRsvTime.exit520_crit_edge

sw.bb25.s_uGetTxRsvTime.exit520_crit_edge:        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetTxRsvTime.exit520

if.end.i518:                                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %preamble_type.i506 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %preamble_type.i506, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %byPktType)
  %cmp.i508 = icmp eq i8 %byPktType, 1
  %byTopCCKBasicRate.i509 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 69
  %byTopOFDMBasicRate.i510 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 68
  %cond.in.in.i511 = select i1 %cmp.i508, ptr %byTopCCKBasicRate.i509, ptr %byTopOFDMBasicRate.i510
  %46 = ptrtoint ptr %cond.in.in.i511 to i32
  call void @__asan_load1_noabort(i32 %46)
  %cond.in.i512 = load i8, ptr %cond.in.in.i511, align 1
  %conv5.i513 = zext i8 %cond.in.i512 to i16
  %call6.i514 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %45, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv5.i513) #3
  %47 = ptrtoint ptr %uSIFS26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %uSIFS26, align 4
  %add.i516 = add i32 %call6.i514, %call.i507
  %add7.i517 = add i32 %add.i516, %48
  br label %s_uGetTxRsvTime.exit520

s_uGetTxRsvTime.exit520:                          ; preds = %if.end.i518, %sw.bb25.s_uGetTxRsvTime.exit520_crit_edge
  %retval.0.i519 = phi i32 [ %add7.i517, %if.end.i518 ], [ %call.i507, %sw.bb25.s_uGetTxRsvTime.exit520_crit_edge ]
  %add29 = add i32 %retval.0.i519, %41
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %preamble_type31 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 72
  %49 = ptrtoint ptr %preamble_type31 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %preamble_type31, align 1
  %byTopCCKBasicRate32 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 69
  %51 = ptrtoint ptr %byTopCCKBasicRate32 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %byTopCCKBasicRate32, align 4
  %conv33 = zext i8 %52 to i16
  %call34 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %50, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv33) #3
  %53 = zext i8 %byFBOption to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %byFBOption, label %sw.bb30.sw.epilog_crit_edge [
    i8 1, label %land.lhs.true
    i8 2, label %land.lhs.true54
  ]

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb30
  %54 = add i16 %wRate, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %54)
  %55 = icmp ult i16 %54, 5
  br i1 %55, label %if.then, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %conv37 = zext i16 %wRate to i32
  %uSIFS44 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %56 = ptrtoint ptr %uSIFS44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %uSIFS44, align 4
  %mul45 = shl i32 %57, 1
  %add46 = add i32 %mul45, %call34
  %sub = add nsw i32 %conv37, -7
  %arrayidx = getelementptr [5 x i16], ptr @wFB_Opt0, i32 0, i32 %sub
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx, align 2
  %call49 = tail call fastcc i32 @s_uGetTxRsvTime(ptr noundef %pDevice, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %59, i1 noundef zeroext %bNeedAck)
  %add50 = add i32 %add46, %call49
  br label %sw.epilog

land.lhs.true54:                                  ; preds = %sw.bb30
  %60 = add i16 %wRate, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %60)
  %61 = icmp ult i16 %60, 5
  br i1 %61, label %if.then62, label %land.lhs.true54.sw.epilog_crit_edge

land.lhs.true54.sw.epilog_crit_edge:              ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then62:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #5
  %conv55 = zext i16 %wRate to i32
  %uSIFS63 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %62 = ptrtoint ptr %uSIFS63 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %uSIFS63, align 4
  %mul64 = shl i32 %63, 1
  %add65 = add i32 %mul64, %call34
  %sub67 = add nsw i32 %conv55, -7
  %arrayidx68 = getelementptr [5 x i16], ptr @wFB_Opt1, i32 0, i32 %sub67
  %64 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx68, align 2
  %call70 = tail call fastcc i32 @s_uGetTxRsvTime(ptr noundef %pDevice, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %65, i1 noundef zeroext %bNeedAck)
  %add71 = add i32 %add65, %call70
  br label %sw.epilog

sw.bb73:                                          ; preds = %entry
  %preamble_type74 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 72
  %66 = ptrtoint ptr %preamble_type74 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %preamble_type74, align 1
  %byTopOFDMBasicRate75 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 68
  %68 = ptrtoint ptr %byTopOFDMBasicRate75 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %byTopOFDMBasicRate75, align 1
  %conv76 = zext i8 %69 to i16
  %call77 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %67, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv76) #3
  %70 = zext i8 %byFBOption to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %byFBOption, label %sw.bb73.sw.epilog_crit_edge [
    i8 1, label %land.lhs.true81
    i8 2, label %land.lhs.true103
  ]

sw.bb73.sw.epilog_crit_edge:                      ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

land.lhs.true81:                                  ; preds = %sw.bb73
  %71 = add i16 %wRate, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %71)
  %72 = icmp ult i16 %71, 5
  br i1 %72, label %if.then89, label %land.lhs.true81.sw.epilog_crit_edge

land.lhs.true81.sw.epilog_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then89:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #5
  %conv82 = zext i16 %wRate to i32
  %uSIFS90 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %73 = ptrtoint ptr %uSIFS90 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %uSIFS90, align 4
  %mul91 = shl i32 %74, 1
  %add92 = add i32 %mul91, %call77
  %sub94 = add nsw i32 %conv82, -7
  %arrayidx95 = getelementptr [5 x i16], ptr @wFB_Opt0, i32 0, i32 %sub94
  %75 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx95, align 2
  %call97 = tail call fastcc i32 @s_uGetTxRsvTime(ptr noundef %pDevice, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %76, i1 noundef zeroext %bNeedAck)
  %add98 = add i32 %add92, %call97
  br label %sw.epilog

land.lhs.true103:                                 ; preds = %sw.bb73
  %77 = add i16 %wRate, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %77)
  %78 = icmp ult i16 %77, 5
  br i1 %78, label %if.then111, label %land.lhs.true103.sw.epilog_crit_edge

land.lhs.true103.sw.epilog_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then111:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #5
  %conv104 = zext i16 %wRate to i32
  %uSIFS112 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %79 = ptrtoint ptr %uSIFS112 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %uSIFS112, align 4
  %mul113 = shl i32 %80, 1
  %add114 = add i32 %mul113, %call77
  %sub116 = add nsw i32 %conv104, -7
  %arrayidx117 = getelementptr [5 x i16], ptr @wFB_Opt1, i32 0, i32 %sub116
  %81 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx117, align 2
  %call119 = tail call fastcc i32 @s_uGetTxRsvTime(ptr noundef %pDevice, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %82, i1 noundef zeroext %bNeedAck)
  %add120 = add i32 %add114, %call119
  br label %sw.epilog

sw.bb123:                                         ; preds = %entry
  %preamble_type124 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 72
  %83 = ptrtoint ptr %preamble_type124 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %preamble_type124, align 1
  %byTopCCKBasicRate125 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 69
  %85 = ptrtoint ptr %byTopCCKBasicRate125 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %byTopCCKBasicRate125, align 4
  %conv126 = zext i8 %86 to i16
  %call127 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %84, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv126) #3
  %87 = zext i8 %byFBOption to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %byFBOption, label %sw.bb123.sw.epilog_crit_edge [
    i8 1, label %land.lhs.true131
    i8 2, label %land.lhs.true153
  ]

sw.bb123.sw.epilog_crit_edge:                     ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

land.lhs.true131:                                 ; preds = %sw.bb123
  %88 = add i16 %wRate, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %88)
  %89 = icmp ult i16 %88, 5
  br i1 %89, label %if.then139, label %land.lhs.true131.sw.epilog_crit_edge

land.lhs.true131.sw.epilog_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then139:                                       ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #5
  %conv132 = zext i16 %wRate to i32
  %uSIFS140 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %90 = ptrtoint ptr %uSIFS140 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %uSIFS140, align 4
  %mul141 = shl i32 %91, 1
  %add142 = add i32 %mul141, %call127
  %sub144 = add nsw i32 %conv132, -7
  %arrayidx145 = getelementptr [2 x [5 x i16]], ptr @wFB_Opt0, i32 0, i32 1, i32 %sub144
  %92 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx145, align 2
  %call147 = tail call fastcc i32 @s_uGetTxRsvTime(ptr noundef %pDevice, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %93, i1 noundef zeroext %bNeedAck)
  %add148 = add i32 %add142, %call147
  br label %sw.epilog

land.lhs.true153:                                 ; preds = %sw.bb123
  %94 = add i16 %wRate, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %94)
  %95 = icmp ult i16 %94, 5
  br i1 %95, label %if.then161, label %land.lhs.true153.sw.epilog_crit_edge

land.lhs.true153.sw.epilog_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then161:                                       ; preds = %land.lhs.true153
  %conv154 = zext i16 %wRate to i32
  %uSIFS162 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %96 = ptrtoint ptr %uSIFS162 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %uSIFS162, align 4
  %mul163 = shl i32 %97, 1
  %add164 = add i32 %mul163, %call127
  %sub166 = add nsw i32 %conv154, -7
  %arrayidx167 = getelementptr [2 x [5 x i16]], ptr @wFB_Opt1, i32 0, i32 1, i32 %sub166
  %98 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx167, align 2
  %100 = ptrtoint ptr %preamble_type124 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %preamble_type124, align 1
  %call.i522 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %101, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %99) #3
  br i1 %bNeedAck, label %if.end.i533, label %if.then161.s_uGetTxRsvTime.exit535_crit_edge

if.then161.s_uGetTxRsvTime.exit535_crit_edge:     ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetTxRsvTime.exit535

if.end.i533:                                      ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #5
  %102 = ptrtoint ptr %preamble_type124 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %preamble_type124, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %byPktType)
  %cmp.i523 = icmp eq i8 %byPktType, 1
  %byTopOFDMBasicRate.i525 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 68
  %cond.in.in.i526 = select i1 %cmp.i523, ptr %byTopCCKBasicRate125, ptr %byTopOFDMBasicRate.i525
  %104 = ptrtoint ptr %cond.in.in.i526 to i32
  call void @__asan_load1_noabort(i32 %104)
  %cond.in.i527 = load i8, ptr %cond.in.in.i526, align 1
  %conv5.i528 = zext i8 %cond.in.i527 to i16
  %call6.i529 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %103, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv5.i528) #3
  %105 = ptrtoint ptr %uSIFS162 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %uSIFS162, align 4
  %add.i531 = add i32 %call6.i529, %call.i522
  %add7.i532 = add i32 %add.i531, %106
  br label %s_uGetTxRsvTime.exit535

s_uGetTxRsvTime.exit535:                          ; preds = %if.end.i533, %if.then161.s_uGetTxRsvTime.exit535_crit_edge
  %retval.0.i534 = phi i32 [ %add7.i532, %if.end.i533 ], [ %call.i522, %if.then161.s_uGetTxRsvTime.exit535_crit_edge ]
  %add170 = add i32 %add164, %retval.0.i534
  br label %sw.epilog

sw.bb173:                                         ; preds = %entry
  %preamble_type174 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 72
  %107 = ptrtoint ptr %preamble_type174 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %preamble_type174, align 1
  %byTopOFDMBasicRate175 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 68
  %109 = ptrtoint ptr %byTopOFDMBasicRate175 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %byTopOFDMBasicRate175, align 1
  %conv176 = zext i8 %110 to i16
  %call177 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %108, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv176) #3
  %111 = zext i8 %byFBOption to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %byFBOption, label %sw.bb173.sw.epilog_crit_edge [
    i8 1, label %land.lhs.true181
    i8 2, label %land.lhs.true203
  ]

sw.bb173.sw.epilog_crit_edge:                     ; preds = %sw.bb173
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

land.lhs.true181:                                 ; preds = %sw.bb173
  %112 = add i16 %wRate, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %112)
  %113 = icmp ult i16 %112, 5
  br i1 %113, label %if.then189, label %land.lhs.true181.sw.epilog_crit_edge

land.lhs.true181.sw.epilog_crit_edge:             ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then189:                                       ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #5
  %conv182 = zext i16 %wRate to i32
  %uSIFS190 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %114 = ptrtoint ptr %uSIFS190 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %uSIFS190, align 4
  %mul191 = shl i32 %115, 1
  %add192 = add i32 %mul191, %call177
  %sub194 = add nsw i32 %conv182, -7
  %arrayidx195 = getelementptr [2 x [5 x i16]], ptr @wFB_Opt0, i32 0, i32 1, i32 %sub194
  %116 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %arrayidx195, align 2
  %call197 = tail call fastcc i32 @s_uGetTxRsvTime(ptr noundef %pDevice, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %117, i1 noundef zeroext %bNeedAck)
  %add198 = add i32 %add192, %call197
  br label %sw.epilog

land.lhs.true203:                                 ; preds = %sw.bb173
  %118 = add i16 %wRate, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %118)
  %119 = icmp ult i16 %118, 5
  br i1 %119, label %if.then211, label %land.lhs.true203.sw.epilog_crit_edge

land.lhs.true203.sw.epilog_crit_edge:             ; preds = %land.lhs.true203
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then211:                                       ; preds = %land.lhs.true203
  call void @__sanitizer_cov_trace_pc() #5
  %conv204 = zext i16 %wRate to i32
  %uSIFS212 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %120 = ptrtoint ptr %uSIFS212 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %uSIFS212, align 4
  %mul213 = shl i32 %121, 1
  %add214 = add i32 %mul213, %call177
  %sub216 = add nsw i32 %conv204, -7
  %arrayidx217 = getelementptr [2 x [5 x i16]], ptr @wFB_Opt1, i32 0, i32 1, i32 %sub216
  %122 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %arrayidx217, align 2
  %call219 = tail call fastcc i32 @s_uGetTxRsvTime(ptr noundef %pDevice, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %123, i1 noundef zeroext %bNeedAck)
  %add220 = add i32 %add214, %call219
  br label %sw.epilog

sw.bb223:                                         ; preds = %entry
  %124 = zext i8 %byFBOption to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %byFBOption, label %sw.bb223.sw.epilog_crit_edge [
    i8 1, label %land.lhs.true227
    i8 2, label %land.lhs.true247
  ]

sw.bb223.sw.epilog_crit_edge:                     ; preds = %sw.bb223
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

land.lhs.true227:                                 ; preds = %sw.bb223
  %125 = add i16 %wRate, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %125)
  %126 = icmp ult i16 %125, 5
  br i1 %126, label %if.then235, label %land.lhs.true227.sw.epilog_crit_edge

land.lhs.true227.sw.epilog_crit_edge:             ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then235:                                       ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #5
  %conv228 = zext i16 %wRate to i32
  %uSIFS236 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %127 = ptrtoint ptr %uSIFS236 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %uSIFS236, align 4
  %sub238 = add nsw i32 %conv228, -7
  %arrayidx239 = getelementptr [5 x i16], ptr @wFB_Opt0, i32 0, i32 %sub238
  %129 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx239, align 2
  %call241 = tail call fastcc i32 @s_uGetTxRsvTime(ptr noundef %pDevice, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %130, i1 noundef zeroext %bNeedAck)
  %add242 = add i32 %call241, %128
  br label %sw.epilog

land.lhs.true247:                                 ; preds = %sw.bb223
  %131 = add i16 %wRate, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %131)
  %132 = icmp ult i16 %131, 5
  br i1 %132, label %if.then255, label %land.lhs.true247.sw.epilog_crit_edge

land.lhs.true247.sw.epilog_crit_edge:             ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then255:                                       ; preds = %land.lhs.true247
  %conv248 = zext i16 %wRate to i32
  %uSIFS256 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %133 = ptrtoint ptr %uSIFS256 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %uSIFS256, align 4
  %sub258 = add nsw i32 %conv248, -7
  %arrayidx259 = getelementptr [5 x i16], ptr @wFB_Opt1, i32 0, i32 %sub258
  %135 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx259, align 2
  %preamble_type.i536 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 72
  %137 = ptrtoint ptr %preamble_type.i536 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %preamble_type.i536, align 1
  %call.i537 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %138, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %136) #3
  br i1 %bNeedAck, label %if.end.i548, label %if.then255.s_uGetTxRsvTime.exit550_crit_edge

if.then255.s_uGetTxRsvTime.exit550_crit_edge:     ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #5
  br label %s_uGetTxRsvTime.exit550

if.end.i548:                                      ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #5
  %139 = ptrtoint ptr %preamble_type.i536 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %preamble_type.i536, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %byPktType)
  %cmp.i538 = icmp eq i8 %byPktType, 1
  %byTopCCKBasicRate.i539 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 69
  %byTopOFDMBasicRate.i540 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 68
  %cond.in.in.i541 = select i1 %cmp.i538, ptr %byTopCCKBasicRate.i539, ptr %byTopOFDMBasicRate.i540
  %141 = ptrtoint ptr %cond.in.in.i541 to i32
  call void @__asan_load1_noabort(i32 %141)
  %cond.in.i542 = load i8, ptr %cond.in.in.i541, align 1
  %conv5.i543 = zext i8 %cond.in.i542 to i16
  %call6.i544 = tail call i32 @bb_get_frame_time(i8 noundef zeroext %140, i8 noundef zeroext %byPktType, i32 noundef 14, i16 noundef zeroext %conv5.i543) #3
  %142 = ptrtoint ptr %uSIFS256 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %uSIFS256, align 4
  %add.i546 = add i32 %call6.i544, %call.i537
  %add7.i547 = add i32 %add.i546, %143
  br label %s_uGetTxRsvTime.exit550

s_uGetTxRsvTime.exit550:                          ; preds = %if.end.i548, %if.then255.s_uGetTxRsvTime.exit550_crit_edge
  %retval.0.i549 = phi i32 [ %add7.i547, %if.end.i548 ], [ %call.i537, %if.then255.s_uGetTxRsvTime.exit550_crit_edge ]
  %add262 = add i32 %retval.0.i549, %134
  br label %sw.epilog

sw.bb265:                                         ; preds = %entry
  %144 = zext i8 %byFBOption to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %byFBOption, label %sw.bb265.sw.epilog_crit_edge [
    i8 1, label %land.lhs.true269
    i8 2, label %land.lhs.true289
  ]

sw.bb265.sw.epilog_crit_edge:                     ; preds = %sw.bb265
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

land.lhs.true269:                                 ; preds = %sw.bb265
  %145 = add i16 %wRate, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %145)
  %146 = icmp ult i16 %145, 5
  br i1 %146, label %if.then277, label %land.lhs.true269.sw.epilog_crit_edge

land.lhs.true269.sw.epilog_crit_edge:             ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then277:                                       ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #5
  %conv270 = zext i16 %wRate to i32
  %uSIFS278 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %147 = ptrtoint ptr %uSIFS278 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %uSIFS278, align 4
  %sub280 = add nsw i32 %conv270, -7
  %arrayidx281 = getelementptr [2 x [5 x i16]], ptr @wFB_Opt0, i32 0, i32 1, i32 %sub280
  %149 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %arrayidx281, align 2
  %call283 = tail call fastcc i32 @s_uGetTxRsvTime(ptr noundef %pDevice, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %150, i1 noundef zeroext %bNeedAck)
  %add284 = add i32 %call283, %148
  br label %sw.epilog

land.lhs.true289:                                 ; preds = %sw.bb265
  %151 = add i16 %wRate, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %151)
  %152 = icmp ult i16 %151, 5
  br i1 %152, label %if.then297, label %land.lhs.true289.sw.epilog_crit_edge

land.lhs.true289.sw.epilog_crit_edge:             ; preds = %land.lhs.true289
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then297:                                       ; preds = %land.lhs.true289
  call void @__sanitizer_cov_trace_pc() #5
  %conv290 = zext i16 %wRate to i32
  %uSIFS298 = getelementptr inbounds %struct.vnt_private, ptr %pDevice, i32 0, i32 53
  %153 = ptrtoint ptr %uSIFS298 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %uSIFS298, align 4
  %sub300 = add nsw i32 %conv290, -7
  %arrayidx301 = getelementptr [2 x [5 x i16]], ptr @wFB_Opt1, i32 0, i32 1, i32 %sub300
  %155 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %arrayidx301, align 2
  %call303 = tail call fastcc i32 @s_uGetTxRsvTime(ptr noundef %pDevice, i8 noundef zeroext %byPktType, i32 noundef %cbFrameLength, i16 noundef zeroext %156, i1 noundef zeroext %bNeedAck)
  %add304 = add i32 %call303, %154
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then297, %land.lhs.true289.sw.epilog_crit_edge, %if.then277, %land.lhs.true269.sw.epilog_crit_edge, %sw.bb265.sw.epilog_crit_edge, %s_uGetTxRsvTime.exit550, %land.lhs.true247.sw.epilog_crit_edge, %if.then235, %land.lhs.true227.sw.epilog_crit_edge, %sw.bb223.sw.epilog_crit_edge, %if.then211, %land.lhs.true203.sw.epilog_crit_edge, %if.then189, %land.lhs.true181.sw.epilog_crit_edge, %sw.bb173.sw.epilog_crit_edge, %s_uGetTxRsvTime.exit535, %land.lhs.true153.sw.epilog_crit_edge, %if.then139, %land.lhs.true131.sw.epilog_crit_edge, %sw.bb123.sw.epilog_crit_edge, %if.then111, %land.lhs.true103.sw.epilog_crit_edge, %if.then89, %land.lhs.true81.sw.epilog_crit_edge, %sw.bb73.sw.epilog_crit_edge, %if.then62, %land.lhs.true54.sw.epilog_crit_edge, %if.then, %land.lhs.true.sw.epilog_crit_edge, %sw.bb30.sw.epilog_crit_edge, %s_uGetTxRsvTime.exit520, %s_uGetTxRsvTime.exit505, %s_uGetTxRsvTime.exit490, %s_uGetTxRsvTime.exit, %entry.sw.epilog_crit_edge
  %uDurTime.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %add284, %if.then277 ], [ %add304, %if.then297 ], [ 0, %land.lhs.true289.sw.epilog_crit_edge ], [ %add242, %if.then235 ], [ %add262, %s_uGetTxRsvTime.exit550 ], [ 0, %land.lhs.true247.sw.epilog_crit_edge ], [ %add198, %if.then189 ], [ %add220, %if.then211 ], [ 0, %land.lhs.true203.sw.epilog_crit_edge ], [ %add148, %if.then139 ], [ %add170, %s_uGetTxRsvTime.exit535 ], [ 0, %land.lhs.true153.sw.epilog_crit_edge ], [ %add98, %if.then89 ], [ %add120, %if.then111 ], [ 0, %land.lhs.true103.sw.epilog_crit_edge ], [ %add50, %if.then ], [ %add71, %if.then62 ], [ 0, %land.lhs.true54.sw.epilog_crit_edge ], [ %add29, %s_uGetTxRsvTime.exit520 ], [ %add24, %s_uGetTxRsvTime.exit505 ], [ %add14, %s_uGetTxRsvTime.exit490 ], [ %add3, %s_uGetTxRsvTime.exit ], [ 0, %sw.bb30.sw.epilog_crit_edge ], [ 0, %sw.bb73.sw.epilog_crit_edge ], [ 0, %sw.bb123.sw.epilog_crit_edge ], [ 0, %sw.bb173.sw.epilog_crit_edge ], [ 0, %sw.bb223.sw.epilog_crit_edge ], [ 0, %sw.bb265.sw.epilog_crit_edge ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ 0, %land.lhs.true81.sw.epilog_crit_edge ], [ 0, %land.lhs.true131.sw.epilog_crit_edge ], [ 0, %land.lhs.true181.sw.epilog_crit_edge ], [ 0, %land.lhs.true227.sw.epilog_crit_edge ], [ 0, %land.lhs.true269.sw.epilog_crit_edge ]
  %conv307 = trunc i32 %uDurTime.0 to i16
  %157 = tail call i16 @llvm.bswap.i16(i16 %conv307)
  ret i16 %157
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_tkip_p2k(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/net/mac80211.h", i32 2737, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @wFB_Opt0, !4, !"wFB_Opt0", i1 false, i1 false}
!4 = !{!"../drivers/staging/vt6655/rxtx.c", i32 62, i32 29}
!5 = !{ptr @wFB_Opt1, !6, !"wFB_Opt1", i1 false, i1 false}
!6 = !{!"../drivers/staging/vt6655/rxtx.c", i32 67, i32 29}
!7 = !{ptr @wTimeStampOff, !8, !"wTimeStampOff", i1 false, i1 false}
!8 = !{!"../drivers/staging/vt6655/rxtx.c", i32 57, i32 29}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2152574470}
!20 = !{i64 5032348}
!21 = !{i64 2152573920}
!22 = !{i64 5031728}
!23 = !{i64 5032546}
!24 = !{i64 2152571891}
!25 = !{i64 2152573496}
!26 = !{i64 5032151}
