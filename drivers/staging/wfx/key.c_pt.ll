; ModuleID = '/llk/IR_all_yes/drivers/staging/wfx/key.c_pt.bc'
source_filename = "../drivers/staging/wfx/key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hif_req_add_key = type { i8, i8, i8, i8, %union.anon.132 }
%union.anon.132 = type { %struct.hif_tkip_pairwise_key }
%struct.hif_tkip_pairwise_key = type { [6 x i8], [2 x i8], [16 x i8], [8 x i8], [8 x i8] }
%struct.ieee80211_key_seq = type { %union.anon.133 }
%union.anon.133 = type { %struct.anon.134, [12 x i8] }
%struct.anon.134 = type { i32, i16 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.129, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.129 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.130] }
%struct.anon.130 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.wfx_dev = type { %struct.wfx_platform_data, ptr, ptr, [2 x ptr], [2 x %struct.mac_address], ptr, ptr, i8, %struct.completion, %struct.hif_ind_startup, %struct.wfx_hif, %struct.delayed_work, i8, i8, %struct.mutex, %struct.wfx_hif_cmd, %struct.sk_buff_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i32, %struct.hif_rx_stats, %struct.mutex, %struct.hif_tx_power_loop_info, %struct.mutex, i32 }
%struct.wfx_platform_data = type { ptr, ptr, ptr, i8 }
%struct.mac_address = type { [6 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hif_ind_startup = type { i32, i16, [14 x i8], [8 x i8], i16, i16, i8, i8, [2 x [6 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i32, [128 x i8] }
%struct.wfx_hif = type { %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wfx_hif_cmd = type { %struct.mutex, %struct.completion, %struct.completion, ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.hif_rx_stats = type <{ i32, i32, i32, i32, [22 x i32], [22 x i16], [22 x i16], [22 x i16], [22 x i16], i32, i32, i8, i8 }>
%struct.hif_tx_power_loop_info = type { i16, i16, i16, i16, i16, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.wfx_vif = type { ptr, ptr, ptr, i32, i32, i8, i8, %struct.delayed_work, [4 x %struct.wfx_queue], %struct.tx_policy_cache, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, %struct.work_struct, %struct.completion, i32, i8, ptr, %struct.completion }
%struct.wfx_queue = type { %struct.sk_buff_head, %struct.sk_buff_head, %struct.atomic_t, i32 }
%struct.tx_policy_cache = type { [15 x %struct.tx_policy], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy = type { %struct.list_head, i32, [12 x i8], i8 }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/staging/wfx/key.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"inconsistent data\00", [46 x i8] zeroinitializer }, align 32
@wfx_add_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsupported key type %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wfx_add_key\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wfx_add_key._entry_ptr = internal global ptr @wfx_add_key._entry, section ".printk_index", align 4
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"inconsistent key allocation\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"corrupted hw_key_idx\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1027078, i64 1339905]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 167, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 204, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 29, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [29 x i8] c"../drivers/staging/wfx/key.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 221, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @wfx_add_key._entry, ptr @wfx_add_key._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_add_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_set_key(ptr nocapture noundef readnone %hw, i32 noundef %cmd, ptr nocapture noundef readonly %vif, ptr noundef readonly %sta, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %k.i = alloca %struct.hif_req_add_key, align 1
  %seq.i = alloca %struct.ieee80211_key_seq, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %conf_mutex = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %k.i) #5
  %2 = call ptr @memset(ptr %k.i, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %seq.i) #5
  %3 = call ptr @memset(ptr %seq.i, i32 255, i32 20)
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv, align 4
  %key_map.i.i = getelementptr inbounds %struct.wfx_dev, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %key_map.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_map.i.i, align 4
  %neg.i.i = xor i32 %7, -1
  %8 = tail call i32 @llvm.cttz.i32(i32 %neg.i.i, i1 true) #5, !range !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %iszero.i.i = icmp eq i32 %7, -1
  %sub.i.i = select i1 %iszero.i.i, i32 -1, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %sub.i.i)
  %cmp1.i.i = icmp sgt i32 %sub.i.i, 23
  %or.cond.i.i = select i1 %iszero.i.i, i1 true, i1 %cmp1.i.i
  br i1 %or.cond.i.i, label %if.then.wfx_alloc_key.exit.i_crit_edge, label %if.end.i.i

if.then.wfx_alloc_key.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %wfx_alloc_key.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i.i = shl nuw nsw i32 1, %sub.i.i
  %or.i.i = or i32 %shl.i.i, %7
  %9 = ptrtoint ptr %key_map.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i.i, ptr %key_map.i.i, align 4
  br label %wfx_alloc_key.exit.i

wfx_alloc_key.exit.i:                             ; preds = %if.end.i.i, %if.then.wfx_alloc_key.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.end.i.i ], [ -1, %if.then.wfx_alloc_key.exit.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags.i, align 8
  %12 = and i16 %11, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  %tobool7.not.i = icmp ne ptr %sta, null
  %13 = or i1 %tobool7.not.i, %tobool.not.i
  br i1 %13, label %wfx_alloc_key.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !24

wfx_alloc_key.exit.i.if.end.i_crit_edge:          ; preds = %wfx_alloc_key.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %wfx_alloc_key.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %wfx_alloc_key.exit.i.if.end.i_crit_edge
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef 0, ptr noundef nonnull %seq.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %if.end.i.wfx_add_key.exit_crit_edge, label %if.end30.i

if.end.i.wfx_add_key.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wfx_add_key.exit

if.end30.i:                                       ; preds = %if.end.i
  %id.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %conv31.i = trunc i32 %15 to i8
  %int_id.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 2
  %16 = ptrtoint ptr %int_id.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %int_id.i, align 1
  %bf.shl.i = shl i8 %conv31.i, 6
  %bf.clear.i = and i8 %bf.load.i, 63
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %int_id.i, align 1
  %conv32.i = trunc i32 %retval.0.i.i to i8
  %entry_index.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 1
  %17 = ptrtoint ptr %entry_index.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv32.i, ptr %entry_index.i, align 1
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %18 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cipher.i, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %do.end113.i [
    i32 1027073, label %if.end30.i.if.then38.i_crit_edge
    i32 1027077, label %if.end30.i.if.then38.i_crit_edge27
    i32 1027074, label %if.then51.i
    i32 1027076, label %if.then69.i
    i32 1339905, label %if.then86.i
    i32 1027078, label %if.then103.i
  ]

if.end30.i.if.then38.i_crit_edge27:               ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.end30.i.if.then38.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.end30.i.if.then38.i_crit_edge, %if.end30.i.if.then38.i_crit_edge27
  %key43.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.then38.i
  %addr.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %keylen.i.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %21 = ptrtoint ptr %keylen.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %keylen.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %22)
  %cmp.i.i = icmp ugt i8 %22, 16
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then40.i.fill_wep_pair.exit.i_crit_edge, !prof !25

if.then40.i.fill_wep_pair.exit.i_crit_edge:       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_wep_pair.exit.i

do.end.i.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %fill_wep_pair.exit.i

fill_wep_pair.exit.i:                             ; preds = %do.end.i.i, %if.then40.i.fill_wep_pair.exit.i_crit_edge
  %23 = ptrtoint ptr %keylen.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %keylen.i.i, align 2
  %key_length.i.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %key_length.i.i, align 1
  %key_data.i.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 2
  %key21.i.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %conv24.i.i = zext i8 %24 to i32
  %26 = call ptr @memcpy(ptr %key_data.i.i, ptr %key21.i.i, i32 %conv24.i.i)
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr.i, align 4
  %29 = ptrtoint ptr %key43.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %key43.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 0, i32 4
  %32 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %add.ptr1.i.i.i, align 2
  %33 = ptrtoint ptr %k.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %k.i, align 1
  br label %if.end119.i

if.else.i:                                        ; preds = %if.then38.i
  %keylen.i174.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %34 = ptrtoint ptr %keylen.i174.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %keylen.i174.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %35)
  %cmp.i175.i = icmp ugt i8 %35, 16
  br i1 %cmp.i175.i, label %do.end.i176.i, label %if.else.i.fill_wep_group.exit.i_crit_edge, !prof !25

if.else.i.fill_wep_group.exit.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_wep_group.exit.i

do.end.i176.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %fill_wep_group.exit.i

fill_wep_group.exit.i:                            ; preds = %do.end.i176.i, %if.else.i.fill_wep_group.exit.i_crit_edge
  %keyidx.i.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %36 = ptrtoint ptr %keyidx.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %keyidx.i.i, align 1
  %38 = ptrtoint ptr %key43.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %key43.i, align 1
  %39 = ptrtoint ptr %keylen.i174.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %keylen.i174.i, align 2
  %key_length.i177.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %key_length.i177.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %key_length.i177.i, align 1
  %key_data.i178.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 0, i32 4
  %key21.i179.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %conv24.i180.i = zext i8 %40 to i32
  %42 = call ptr @memcpy(ptr %key_data.i178.i, ptr %key21.i179.i, i32 %conv24.i180.i)
  %43 = ptrtoint ptr %k.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %k.i, align 1
  br label %if.end119.i

if.then51.i:                                      ; preds = %if.end30.i
  %key60.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4
  br i1 %tobool.not.i, label %if.else59.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.then51.i
  %addr55.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %keylen.i182.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %44 = ptrtoint ptr %keylen.i182.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %keylen.i182.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %45)
  %cmp.not.i.i = icmp eq i8 %45, 32
  br i1 %cmp.not.i.i, label %if.then53.i.fill_tkip_pair.exit.i_crit_edge, label %do.end.i183.i, !prof !24

if.then53.i.fill_tkip_pair.exit.i_crit_edge:      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_tkip_pair.exit.i

do.end.i183.i:                                    ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %fill_tkip_pair.exit.i

fill_tkip_pair.exit.i:                            ; preds = %do.end.i183.i, %if.then53.i.fill_tkip_pair.exit.i_crit_edge
  %key1.i.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %tkip_key_data.i.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 2
  %46 = call ptr @memcpy(ptr %tkip_key_data.i.i, ptr %key1.i.i, i32 16)
  %add.ptr.i.i = getelementptr i8, ptr %key1.i.i, i32 16
  %tx_mic_key.i.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %add.ptr.i.i, align 1
  %49 = ptrtoint ptr %tx_mic_key.i.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %tx_mic_key.i.i, align 1
  %add.ptr23.i.i = getelementptr %struct.ieee80211_key_conf, ptr %key, i32 1, i32 8
  %rx_mic_key.i.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 3
  %50 = ptrtoint ptr %add.ptr23.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %add.ptr23.i.i, align 1
  %52 = ptrtoint ptr %rx_mic_key.i.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %51, ptr %rx_mic_key.i.i, align 1
  %53 = ptrtoint ptr %addr55.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %addr55.i, align 4
  %55 = ptrtoint ptr %key60.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %key60.i, align 4
  %add.ptr.i.i184.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 1, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i184.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i.i184.i, align 2
  %add.ptr1.i.i185.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 0, i32 4
  %58 = ptrtoint ptr %add.ptr1.i.i185.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %add.ptr1.i.i185.i, align 2
  %59 = ptrtoint ptr %k.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 3, ptr %k.i, align 1
  br label %if.end119.i

if.else59.i:                                      ; preds = %if.then51.i
  %vif.i = getelementptr inbounds %struct.wfx_vif, ptr %drv_priv, i32 0, i32 1
  %60 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vif.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 8
  %keylen.i187.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %64 = ptrtoint ptr %keylen.i187.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %keylen.i187.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %65)
  %cmp.not.i188.i = icmp eq i8 %65, 32
  br i1 %cmp.not.i188.i, label %if.else59.i.fill_tkip_group.exit.i_crit_edge, label %do.end.i189.i, !prof !24

if.else59.i.fill_tkip_group.exit.i_crit_edge:     ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_tkip_group.exit.i

do.end.i189.i:                                    ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %fill_tkip_group.exit.i

fill_tkip_group.exit.i:                           ; preds = %do.end.i189.i, %if.else59.i.fill_tkip_group.exit.i_crit_edge
  %key1.i190.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %keyidx.i191.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %66 = ptrtoint ptr %keyidx.i191.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %keyidx.i191.i, align 1
  %key_id.i.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 3
  %68 = ptrtoint ptr %key_id.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %key_id.i.i, align 1
  %rx_sequence_counter.i.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 3, i32 4
  %iv16.i.i = getelementptr inbounds %struct.anon.134, ptr %seq.i, i32 0, i32 1
  %69 = ptrtoint ptr %iv16.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %iv16.i.i, align 4
  %71 = ptrtoint ptr %rx_sequence_counter.i.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 %70, ptr %rx_sequence_counter.i.i, align 1
  %add.ptr.i192.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 3, i32 6
  %72 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %seq.i, align 4
  %74 = ptrtoint ptr %add.ptr.i192.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %73, ptr %add.ptr.i192.i, align 1
  %75 = call ptr @memcpy(ptr %key60.i, ptr %key1.i190.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp26.i.i = icmp eq i32 %63, 3
  %add.ptr25.i.i = getelementptr i8, ptr %key1.i190.i, i32 16
  %add.ptr33.i.i = getelementptr %struct.ieee80211_key_conf, ptr %key, i32 1, i32 8
  %.sink.in.i.i = select i1 %cmp26.i.i, ptr %add.ptr25.i.i, ptr %add.ptr33.i.i
  %76 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 8)
  %.sink.i.i = load i64, ptr %.sink.in.i.i, align 1
  %77 = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 2, i32 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 %.sink.i.i, ptr %77, align 1
  %79 = ptrtoint ptr %k.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 2, ptr %k.i, align 1
  br label %if.end119.i

if.then69.i:                                      ; preds = %if.end30.i
  %key78.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4
  br i1 %tobool.not.i, label %if.else77.i, label %if.then71.i

if.then71.i:                                      ; preds = %if.then69.i
  %addr73.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %keylen.i194.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %80 = ptrtoint ptr %keylen.i194.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %keylen.i194.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %81)
  %cmp.not.i195.i = icmp eq i8 %81, 16
  br i1 %cmp.not.i195.i, label %if.then71.i.fill_ccmp_pair.exit.i_crit_edge, label %do.end.i196.i, !prof !24

if.then71.i.fill_ccmp_pair.exit.i_crit_edge:      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_ccmp_pair.exit.i

do.end.i196.i:                                    ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %fill_ccmp_pair.exit.i

fill_ccmp_pair.exit.i:                            ; preds = %do.end.i196.i, %if.then71.i.fill_ccmp_pair.exit.i_crit_edge
  %82 = ptrtoint ptr %addr73.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addr73.i, align 4
  %84 = ptrtoint ptr %key78.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %key78.i, align 4
  %add.ptr.i.i197.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 1, i32 4
  %85 = ptrtoint ptr %add.ptr.i.i197.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %add.ptr.i.i197.i, align 2
  %add.ptr1.i.i198.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 0, i32 4
  %87 = ptrtoint ptr %add.ptr1.i.i198.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %add.ptr1.i.i198.i, align 2
  %aes_key_data.i.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 2
  %key21.i199.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %88 = ptrtoint ptr %keylen.i194.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %keylen.i194.i, align 2
  %conv24.i200.i = zext i8 %89 to i32
  %90 = call ptr @memcpy(ptr %aes_key_data.i.i, ptr %key21.i199.i, i32 %conv24.i200.i)
  %91 = ptrtoint ptr %k.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 5, ptr %k.i, align 1
  br label %if.end119.i

if.else77.i:                                      ; preds = %if.then69.i
  %keylen.i202.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %92 = ptrtoint ptr %keylen.i202.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %keylen.i202.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %93)
  %cmp.not.i203.i = icmp eq i8 %93, 16
  br i1 %cmp.not.i203.i, label %if.else77.i.if.end.i207.i_crit_edge, label %do.end.i204.i, !prof !24

if.else77.i.if.end.i207.i_crit_edge:              ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i207.i

do.end.i204.i:                                    ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end.i207.i

if.end.i207.i:                                    ; preds = %do.end.i204.i, %if.else77.i.if.end.i207.i_crit_edge
  %key20.i.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %94 = ptrtoint ptr %keylen.i202.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %keylen.i202.i, align 2
  %conv23.i.i = zext i8 %95 to i32
  %96 = call ptr @memcpy(ptr %key78.i, ptr %key20.i.i, i32 %conv23.i.i)
  %rx_sequence_counter.i205.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 2, i32 12
  %97 = call ptr @memcpy(ptr %rx_sequence_counter.i205.i, ptr %seq.i, i32 6)
  %add.ptr1.i.i206.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 3, i32 1
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.end.i207.i
  %hi.03.i.i.i = phi ptr [ %incdec.ptr3.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %add.ptr1.i.i206.i, %if.end.i207.i ]
  %lo.02.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %rx_sequence_counter.i205.i, %if.end.i207.i ]
  %98 = ptrtoint ptr %lo.02.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %lo.02.i.i.i, align 1
  %100 = ptrtoint ptr %hi.03.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %hi.03.i.i.i, align 1
  %incdec.ptr.i.i.i = getelementptr i8, ptr %lo.02.i.i.i, i32 1
  store i8 %101, ptr %lo.02.i.i.i, align 1
  %incdec.ptr3.i.i.i = getelementptr i8, ptr %hi.03.i.i.i, i32 -1
  store i8 %99, ptr %hi.03.i.i.i, align 1
  %cmp.i.i.i = icmp ult ptr %incdec.ptr.i.i.i, %incdec.ptr3.i.i.i
  br i1 %cmp.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %fill_ccmp_group.exit.i

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i

fill_ccmp_group.exit.i:                           ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %keyidx.i208.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %102 = ptrtoint ptr %keyidx.i208.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %keyidx.i208.i, align 1
  %key_id.i209.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 2, i32 8
  %104 = ptrtoint ptr %key_id.i209.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %key_id.i209.i, align 1
  %105 = ptrtoint ptr %k.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 4, ptr %k.i, align 1
  br label %if.end119.i

if.then86.i:                                      ; preds = %if.end30.i
  %key95.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4
  br i1 %tobool.not.i, label %if.else94.i, label %if.then88.i

if.then88.i:                                      ; preds = %if.then86.i
  %addr90.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %keylen.i210.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %106 = ptrtoint ptr %keylen.i210.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %keylen.i210.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %107)
  %cmp.not.i211.i = icmp eq i8 %107, 32
  br i1 %cmp.not.i211.i, label %if.then88.i.fill_sms4_pair.exit.i_crit_edge, label %do.end.i212.i, !prof !24

if.then88.i.fill_sms4_pair.exit.i_crit_edge:      ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_sms4_pair.exit.i

do.end.i212.i:                                    ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %fill_sms4_pair.exit.i

fill_sms4_pair.exit.i:                            ; preds = %do.end.i212.i, %if.then88.i.fill_sms4_pair.exit.i_crit_edge
  %key1.i213.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %108 = ptrtoint ptr %addr90.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %addr90.i, align 4
  %110 = ptrtoint ptr %key95.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %key95.i, align 4
  %add.ptr.i.i214.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 1, i32 4
  %111 = ptrtoint ptr %add.ptr.i.i214.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %add.ptr.i.i214.i, align 2
  %add.ptr1.i.i215.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 0, i32 4
  %113 = ptrtoint ptr %add.ptr1.i.i215.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %add.ptr1.i.i215.i, align 2
  %wapi_key_data.i.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 2
  %114 = call ptr @memcpy(ptr %wapi_key_data.i.i, ptr %key1.i213.i, i32 16)
  %add.ptr.i216.i = getelementptr i8, ptr %key1.i213.i, i32 16
  %mic_key_data.i.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 3
  %115 = call ptr @memcpy(ptr %mic_key_data.i.i, ptr %add.ptr.i216.i, i32 16)
  %keyidx.i217.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %116 = ptrtoint ptr %keyidx.i217.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %keyidx.i217.i, align 1
  %key_id.i218.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 1
  %118 = ptrtoint ptr %key_id.i218.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %key_id.i218.i, align 1
  %119 = ptrtoint ptr %k.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 7, ptr %k.i, align 1
  br label %if.end119.i

if.else94.i:                                      ; preds = %if.then86.i
  %keylen.i220.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %120 = ptrtoint ptr %keylen.i220.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %keylen.i220.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %121)
  %cmp.not.i221.i = icmp eq i8 %121, 32
  br i1 %cmp.not.i221.i, label %if.else94.i.fill_sms4_group.exit.i_crit_edge, label %do.end.i222.i, !prof !24

if.else94.i.fill_sms4_group.exit.i_crit_edge:     ; preds = %if.else94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_sms4_group.exit.i

do.end.i222.i:                                    ; preds = %if.else94.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %fill_sms4_group.exit.i

fill_sms4_group.exit.i:                           ; preds = %do.end.i222.i, %if.else94.i.fill_sms4_group.exit.i_crit_edge
  %key1.i223.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %122 = call ptr @memcpy(ptr %key95.i, ptr %key1.i223.i, i32 16)
  %add.ptr.i224.i = getelementptr i8, ptr %key1.i223.i, i32 16
  %mic_key_data.i225.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 2, i32 8
  %123 = call ptr @memcpy(ptr %mic_key_data.i225.i, ptr %add.ptr.i224.i, i32 16)
  %keyidx.i226.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %124 = ptrtoint ptr %keyidx.i226.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %keyidx.i226.i, align 1
  %key_id.i227.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 4
  %126 = ptrtoint ptr %key_id.i227.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %key_id.i227.i, align 1
  %127 = ptrtoint ptr %k.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 6, ptr %k.i, align 1
  br label %if.end119.i

if.then103.i:                                     ; preds = %if.end30.i
  %key104.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4
  %keylen.i229.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %128 = ptrtoint ptr %keylen.i229.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %keylen.i229.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %129)
  %cmp.not.i230.i = icmp eq i8 %129, 16
  br i1 %cmp.not.i230.i, label %if.then103.i.if.end.i236.i_crit_edge, label %do.end.i231.i, !prof !24

if.then103.i.if.end.i236.i_crit_edge:             ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i236.i

do.end.i231.i:                                    ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end.i236.i

if.end.i236.i:                                    ; preds = %do.end.i231.i, %if.then103.i.if.end.i236.i_crit_edge
  %key20.i232.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %130 = ptrtoint ptr %keylen.i229.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %keylen.i229.i, align 2
  %conv23.i233.i = zext i8 %131 to i32
  %132 = call ptr @memcpy(ptr %key104.i, ptr %key20.i232.i, i32 %conv23.i233.i)
  %ipn.i.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 2, i32 12
  %133 = call ptr @memcpy(ptr %ipn.i.i, ptr %seq.i, i32 6)
  %add.ptr1.i.i234.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 3, i32 1
  br label %while.body.i.i242.i

while.body.i.i242.i:                              ; preds = %while.body.i.i242.i.while.body.i.i242.i_crit_edge, %if.end.i236.i
  %hi.03.i.i237.i = phi ptr [ %incdec.ptr3.i.i240.i, %while.body.i.i242.i.while.body.i.i242.i_crit_edge ], [ %add.ptr1.i.i234.i, %if.end.i236.i ]
  %lo.02.i.i238.i = phi ptr [ %incdec.ptr.i.i239.i, %while.body.i.i242.i.while.body.i.i242.i_crit_edge ], [ %ipn.i.i, %if.end.i236.i ]
  %134 = ptrtoint ptr %lo.02.i.i238.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %lo.02.i.i238.i, align 1
  %136 = ptrtoint ptr %hi.03.i.i237.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %hi.03.i.i237.i, align 1
  %incdec.ptr.i.i239.i = getelementptr i8, ptr %lo.02.i.i238.i, i32 1
  store i8 %137, ptr %lo.02.i.i238.i, align 1
  %incdec.ptr3.i.i240.i = getelementptr i8, ptr %hi.03.i.i237.i, i32 -1
  store i8 %135, ptr %hi.03.i.i237.i, align 1
  %cmp.i.i241.i = icmp ult ptr %incdec.ptr.i.i239.i, %incdec.ptr3.i.i240.i
  br i1 %cmp.i.i241.i, label %while.body.i.i242.i.while.body.i.i242.i_crit_edge, label %fill_aes_cmac_group.exit.i

while.body.i.i242.i.while.body.i.i242.i_crit_edge: ; preds = %while.body.i.i242.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i242.i

fill_aes_cmac_group.exit.i:                       ; preds = %while.body.i.i242.i
  call void @__sanitizer_cov_trace_pc() #7
  %keyidx.i243.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %138 = ptrtoint ptr %keyidx.i243.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %keyidx.i243.i, align 1
  %key_id.i244.i = getelementptr inbounds %struct.hif_req_add_key, ptr %k.i, i32 0, i32 4, i32 0, i32 2, i32 8
  %140 = ptrtoint ptr %key_id.i244.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %key_id.i244.i, align 1
  %141 = ptrtoint ptr %k.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 8, ptr %k.i, align 1
  %142 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %flags.i, align 8
  %144 = or i16 %143, 1024
  store i16 %144, ptr %flags.i, align 8
  br label %if.end119.i

do.end113.i:                                      ; preds = %if.end30.i
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %5, i32 0, i32 1
  %145 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %146, ptr noundef nonnull @.str.2, i32 noundef %19) #8
  %147 = ptrtoint ptr %key_map.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %key_map.i.i, align 4
  %shl.i = shl nuw nsw i32 1, %retval.0.i.i
  %and.i = and i32 %148, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i24 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i24, label %do.end.i25, label %do.end113.i.wfx_free_key.exit_crit_edge, !prof !25

do.end113.i.wfx_free_key.exit_crit_edge:          ; preds = %do.end113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wfx_free_key.exit

do.end.i25:                                       ; preds = %do.end113.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %wfx_free_key.exit

wfx_free_key.exit:                                ; preds = %do.end.i25, %do.end113.i.wfx_free_key.exit_crit_edge
  %neg.i = xor i32 %shl.i, -1
  %149 = ptrtoint ptr %key_map.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %key_map.i.i, align 4
  %and23.i = and i32 %150, %neg.i
  store i32 %and23.i, ptr %key_map.i.i, align 4
  br label %wfx_add_key.exit

if.end119.i:                                      ; preds = %fill_aes_cmac_group.exit.i, %fill_sms4_group.exit.i, %fill_sms4_pair.exit.i, %fill_ccmp_group.exit.i, %fill_ccmp_pair.exit.i, %fill_tkip_group.exit.i, %fill_tkip_pair.exit.i, %fill_wep_group.exit.i, %fill_wep_pair.exit.i
  %call120.i = call i32 @hif_add_key(ptr noundef %5, ptr noundef nonnull %k.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %tobool121.not.i = icmp eq i32 %call120.i, 0
  br i1 %tobool121.not.i, label %if.end123.i, label %if.then122.i

if.then122.i:                                     ; preds = %if.end119.i
  %151 = ptrtoint ptr %key_map.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %key_map.i.i, align 4
  %shl.i246.i = shl nuw i32 1, %retval.0.i.i
  %and.i.i = and i32 %152, %shl.i246.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i247.i, label %if.then122.i.wfx_free_key.exit.i_crit_edge, !prof !25

if.then122.i.wfx_free_key.exit.i_crit_edge:       ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wfx_free_key.exit.i

do.end.i247.i:                                    ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %wfx_free_key.exit.i

wfx_free_key.exit.i:                              ; preds = %do.end.i247.i, %if.then122.i.wfx_free_key.exit.i_crit_edge
  %neg.i248.i = xor i32 %shl.i246.i, -1
  %153 = ptrtoint ptr %key_map.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %key_map.i.i, align 4
  %and23.i.i = and i32 %154, %neg.i248.i
  store i32 %and23.i.i, ptr %key_map.i.i, align 4
  br label %wfx_add_key.exit

if.end123.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #7
  %155 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %flags.i, align 8
  %157 = or i16 %156, 160
  store i16 %157, ptr %flags.i, align 8
  %hw_key_idx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %158 = ptrtoint ptr %hw_key_idx.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv32.i, ptr %hw_key_idx.i, align 2
  br label %wfx_add_key.exit

wfx_add_key.exit:                                 ; preds = %if.end123.i, %wfx_free_key.exit.i, %wfx_free_key.exit, %if.end.i.wfx_add_key.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %wfx_free_key.exit.i ], [ 0, %if.end123.i ], [ -95, %wfx_free_key.exit ], [ -22, %if.end.i.wfx_add_key.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %seq.i) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %k.i) #5
  br label %if.end

if.end:                                           ; preds = %wfx_add_key.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %wfx_add_key.exit ], [ -95, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp1 = icmp eq i32 %cmd, 1
  br i1 %cmp1, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %hw_key_idx.i12 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %159 = ptrtoint ptr %hw_key_idx.i12 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %hw_key_idx.i12, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %160)
  %cmp.i13 = icmp ugt i8 %160, 23
  br i1 %cmp.i13, label %do.end.i14, label %if.then2.if.end.i19_crit_edge, !prof !25

if.then2.if.end.i19_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i19

do.end.i14:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 221, i32 noundef 9, ptr noundef nonnull @.str.7) #5
  br label %if.end.i19

if.end.i19:                                       ; preds = %do.end.i14, %if.then2.if.end.i19_crit_edge
  %161 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %drv_priv, align 4
  %163 = ptrtoint ptr %hw_key_idx.i12 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %hw_key_idx.i12, align 2
  %conv21.i = zext i8 %164 to i32
  %key_map.i.i15 = getelementptr inbounds %struct.wfx_dev, ptr %162, i32 0, i32 20
  %165 = ptrtoint ptr %key_map.i.i15 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %key_map.i.i15, align 4
  %shl.i.i16 = shl nuw i32 1, %conv21.i
  %and.i.i17 = and i32 %shl.i.i16, %166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17)
  %tobool.not.i.i18 = icmp eq i32 %and.i.i17, 0
  br i1 %tobool.not.i.i18, label %do.end.i.i20, label %if.end.i19.wfx_remove_key.exit_crit_edge, !prof !25

if.end.i19.wfx_remove_key.exit_crit_edge:         ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %wfx_remove_key.exit

do.end.i.i20:                                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %wfx_remove_key.exit

wfx_remove_key.exit:                              ; preds = %do.end.i.i20, %if.end.i19.wfx_remove_key.exit_crit_edge
  %neg.i.i21 = xor i32 %shl.i.i16, -1
  %167 = ptrtoint ptr %key_map.i.i15 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %key_map.i.i15, align 4
  %and23.i.i22 = and i32 %168, %neg.i.i21
  store i32 %and23.i.i22, ptr %key_map.i.i15, align 4
  %169 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %drv_priv, align 4
  %171 = ptrtoint ptr %hw_key_idx.i12 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %hw_key_idx.i12, align 2
  %conv24.i = zext i8 %172 to i32
  %call.i = call i32 @hif_remove_key(ptr noundef %170, i32 noundef %conv24.i) #5
  br label %if.end4

if.end4:                                          ; preds = %wfx_remove_key.exit, %if.end.if.end4_crit_edge
  %ret.1 = phi i32 [ %call.i, %wfx_remove_key.exit ], [ %ret.0, %if.end.if.end4_crit_edge ]
  %173 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %drv_priv, align 4
  %conf_mutex6 = getelementptr inbounds %struct.wfx_dev, ptr %174, i32 0, i32 14
  call void @mutex_unlock(ptr noundef %conf_mutex6) #5
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_key_rx_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_add_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_remove_key(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/wfx/key.c", i32 167, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/staging/wfx/key.c", i32 204, i32 3}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @wfx_add_key._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @wfx_add_key._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/wfx/key.c", i32 29, i32 2}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/wfx/key.c", i32 221, i32 2}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i32 0, i32 33}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{!"branch_weights", i32 1, i32 2000}
