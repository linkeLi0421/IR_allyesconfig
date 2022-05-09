; ModuleID = '/llk/IR_all_yes/net/mac80211/fils_aead.c_pt.bc'
source_filename = "../net/mac80211/fils_aead.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { i64 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, ptr }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.113, i32, i32, i32, i16, i16, %union.anon.115, i32, %union.anon.116, %union.anon.117, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.113 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.128 }
%union.anon.128 = type { %struct.anon.134, [16 x i8] }
%struct.anon.134 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.element = type { i8, i8, [0 x i8] }
%struct.ieee80211_mgd_assoc_data = type { ptr, ptr, i32, i32, i16, [6 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_vht_cap, [32 x i8], [64 x i8], i32, i32, [0 x i8] }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.188, %struct.anon.189, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.104, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.104 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.105 }
%union.anon.105 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.188 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.anon.189 = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.163, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.163 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.164] }
%struct.anon.164 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }

@.str = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s: No (valid) FILS Session element in (Re)Association Response frame from %pM\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"%s: Not enough room for AES-SIV data after FILS Session element in (Re)Association Response frame from %pM\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: AES-SIV decryption of (Re)Association Response frame from %pM failed\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmac(aes)\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctr(aes)\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 288, i32 3 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 318, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 326, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 87, i32 27 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [28 x i8] c"../net/mac80211/fils_aead.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 116, i32 31 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fils_encrypt_assoc_req(ptr noundef %skb, ptr noundef %assoc_data) local_unnamed_addr #0 align 64 {
entry:
  %v.i = alloca [16 x i8], align 1
  %src.i = alloca [1 x %struct.scatterlist], align 4
  %dst.i = alloca [1 x %struct.scatterlist], align 4
  %ext_eid.addr.i = alloca i8, align 1
  %addr = alloca [6 x ptr], align 4
  %len = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %addr) #6
  %2 = getelementptr inbounds [6 x ptr], ptr %addr, i32 0, i32 1
  %3 = getelementptr inbounds [6 x ptr], ptr %addr, i32 0, i32 2
  %4 = getelementptr inbounds [6 x ptr], ptr %addr, i32 0, i32 3
  %5 = getelementptr inbounds [6 x ptr], ptr %addr, i32 0, i32 4
  %6 = getelementptr inbounds [6 x ptr], ptr %addr, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %len) #6
  %7 = getelementptr inbounds [6 x i32], ptr %len, i32 0, i32 1
  %8 = getelementptr inbounds [6 x i32], ptr %len, i32 0, i32 2
  %9 = getelementptr inbounds [6 x i32], ptr %len, i32 0, i32 3
  %10 = getelementptr inbounds [6 x i32], ptr %len, i32 0, i32 4
  %11 = getelementptr inbounds [6 x i32], ptr %len, i32 0, i32 5
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 2
  %14 = and i16 %13, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %14)
  %cmp.i = icmp eq i16 %14, 8192
  %variable = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 1
  %variable5 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 0, i32 2
  %ies.0 = select i1 %cmp.i, ptr %variable, ptr %variable5
  %capab.0 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6
  %len8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len8, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %16
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ies.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ext_eid.addr.i)
  %17 = ptrtoint ptr %ext_eid.addr.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %ext_eid.addr.i, align 1
  %call.i = call ptr @cfg80211_find_elem_match(i8 noundef zeroext -1, ptr noundef %ies.0, i32 noundef %sub.ptr.sub, ptr noundef nonnull %ext_eid.addr.i, i32 noundef 1, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ext_eid.addr.i)
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %datalen = getelementptr inbounds %struct.element, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %datalen to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %datalen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %19)
  %cmp.not = icmp eq i8 %19, 9
  br i1 %cmp.not, label %if.end12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %add.ptr16 = getelementptr %struct.element, ptr %call.i, i32 5, i32 1
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %sa, ptr %addr, align 4
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %len, align 4
  %da = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %da, ptr %2, align 4
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 6, ptr %7, align 4
  %fils_nonces = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %assoc_data, i32 0, i32 16
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %fils_nonces, ptr %3, align 4
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %8, align 4
  %arrayidx26 = getelementptr %struct.ieee80211_mgd_assoc_data, ptr %assoc_data, i32 0, i32 16, i32 16
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx26, ptr %4, align 4
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %9, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %capab.0, ptr %5, align 4
  %sub.ptr.lhs.cast30 = ptrtoint ptr %add.ptr16 to i32
  %sub.ptr.rhs.cast31 = ptrtoint ptr %capab.0 to i32
  %sub.ptr.sub32 = sub i32 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.ptr.sub32, ptr %10, align 4
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %32 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len8, align 4
  %add.ptr36 = getelementptr i8, ptr %31, i32 %33
  %sub.ptr.lhs.cast37 = ptrtoint ptr %add.ptr36 to i32
  %sub.ptr.sub39 = sub i32 %sub.ptr.lhs.cast37, %sub.ptr.lhs.cast30
  %call40 = call ptr @skb_put(ptr noundef %skb, i32 noundef 16) #6
  %fils_kek = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %assoc_data, i32 0, i32 17
  %fils_kek_len = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %assoc_data, i32 0, i32 18
  %34 = ptrtoint ptr %fils_kek_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fils_kek_len, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %v.i) #6
  %36 = getelementptr inbounds [16 x i8], ptr %v.i, i32 0, i32 8
  %37 = getelementptr inbounds [16 x i8], ptr %v.i, i32 0, i32 12
  %38 = call ptr @memset(ptr %v.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src.i) #6
  %39 = call ptr @memset(ptr %src.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst.i) #6
  %div1.i = lshr i32 %35, 1
  %40 = call ptr @memset(ptr %dst.i, i32 255, i32 20)
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr16, ptr %6, align 4
  %42 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.ptr.sub39, ptr %11, align 4
  %call.i73 = call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0) #6
  %cmp.i.i = icmp ugt ptr %call.i73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %call.i73 to i32
  br label %aes_siv_encrypt.exit

if.end.i:                                         ; preds = %if.end12
  %call4.i = call i32 @crypto_shash_setkey(ptr noundef %call.i73, ptr noundef %fils_kek, i32 noundef %div1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call.i73, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call.i73, ptr noundef %base.i.i.i) #6
  br label %aes_siv_encrypt.exit

if.end10.i:                                       ; preds = %if.end.i
  call fastcc void @aes_s2v(ptr noundef %call.i73, ptr noundef nonnull %addr, ptr noundef nonnull %len, ptr noundef nonnull %v.i) #6
  %base.i.i5.i = getelementptr inbounds %struct.crypto_shash, ptr %call.i73, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call.i73, ptr noundef %base.i.i5.i) #6
  %call11.i = call ptr @kmemdup(ptr noundef %add.ptr16, i32 noundef %sub.ptr.sub39, i32 noundef 3264) #6
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end10.i.aes_siv_encrypt.exit_crit_edge, label %if.end14.i

if.end10.i.aes_siv_encrypt.exit_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aes_siv_encrypt.exit

if.end14.i:                                       ; preds = %if.end10.i
  %44 = call ptr @memcpy(ptr %add.ptr16, ptr %v.i, i32 16)
  %45 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %36, align 1
  %47 = and i8 %46, 127
  store i8 %47, ptr %36, align 1
  %48 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %37, align 1
  %50 = and i8 %49, 127
  store i8 %50, ptr %37, align 1
  %call22.i = call ptr @crypto_alloc_skcipher(ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 128) #6
  %cmp.i2.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2.i, label %if.then24.i, label %if.end26.i

if.then24.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call11.i) #6
  %51 = ptrtoint ptr %call22.i to i32
  br label %aes_siv_encrypt.exit

if.end26.i:                                       ; preds = %if.end14.i
  %add.ptr.i = getelementptr i8, ptr %fils_kek, i32 %div1.i
  %call27.i = call i32 @crypto_skcipher_setkey(ptr noundef %call22.i, ptr noundef %add.ptr.i, i32 noundef %div1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end8.i.i.i, label %if.end26.i.fail.i_crit_edge

if.end26.i.fail.i_crit_edge:                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail.i

if.end8.i.i.i:                                    ; preds = %if.end26.i
  %52 = ptrtoint ptr %call22.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call22.i, align 128
  %add.i.i = add i32 %53, 128
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #9
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.fail.i_crit_edge, label %if.end34.i, !prof !19

if.end8.i.i.i.fail.i_crit_edge:                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail.i

if.end34.i:                                       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call22.i, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 3
  %54 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  call void @sg_init_one(ptr noundef nonnull %src.i, ptr noundef nonnull %call11.i, i32 noundef %sub.ptr.sub39) #6
  %add.ptr37.i = getelementptr %struct.element, ptr %call.i, i32 13, i32 1
  call void @sg_init_one(ptr noundef nonnull %dst.i, ptr noundef %add.ptr37.i, i32 noundef %sub.ptr.sub39) #6
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %src.i, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dst.i, ptr %dst2.i.i, align 4
  %57 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub.ptr.sub39, ptr %call9.i.i.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %v.i, ptr %iv4.i.i, align 4
  %call41.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %call9.i.i.i) #6
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i) #6
  br label %fail.i

fail.i:                                           ; preds = %if.end34.i, %if.end8.i.i.i.fail.i_crit_edge, %if.end26.i.fail.i_crit_edge
  %res.1.i = phi i32 [ %call27.i, %if.end26.i.fail.i_crit_edge ], [ %call41.i, %if.end34.i ], [ -12, %if.end8.i.i.i.fail.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call11.i) #6
  %base.i.i3.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call22.i, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call22.i, ptr noundef %base.i.i3.i) #6
  br label %aes_siv_encrypt.exit

aes_siv_encrypt.exit:                             ; preds = %fail.i, %if.then24.i, %if.end10.i.aes_siv_encrypt.exit_crit_edge, %if.end7.i, %if.then.i
  %retval.0.i = phi i32 [ %43, %if.then.i ], [ %51, %if.then24.i ], [ %res.1.i, %fail.i ], [ %call4.i, %if.end7.i ], [ -12, %if.end10.i.aes_siv_encrypt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %v.i) #6
  br label %cleanup

cleanup:                                          ; preds = %aes_siv_encrypt.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %aes_siv_encrypt.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %len) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %addr) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fils_decrypt_assoc_resp(ptr noundef %sdata, ptr noundef %frame, ptr nocapture noundef %frame_len, ptr noundef %assoc_data) local_unnamed_addr #0 align 64 {
entry:
  %src.i = alloca [1 x %struct.scatterlist], align 4
  %dst.i = alloca [1 x %struct.scatterlist], align 4
  %frame_iv.i = alloca [16 x i8], align 1
  %iv.i = alloca [16 x i8], align 1
  %check.i = alloca [16 x i8], align 1
  %ext_eid.addr.i = alloca i8, align 1
  %addr = alloca [6 x ptr], align 4
  %len = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %addr) #6
  %0 = getelementptr inbounds [6 x ptr], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x ptr], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x ptr], ptr %addr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x ptr], ptr %addr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x ptr], ptr %addr, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %addr, i32 20
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %len) #6
  %7 = getelementptr inbounds [6 x i32], ptr %len, i32 0, i32 1
  %8 = getelementptr inbounds [6 x i32], ptr %len, i32 0, i32 2
  %9 = getelementptr inbounds [6 x i32], ptr %len, i32 0, i32 3
  %10 = getelementptr inbounds [6 x i32], ptr %len, i32 0, i32 4
  %11 = getelementptr inbounds [6 x i32], ptr %len, i32 0, i32 5
  %12 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %13)
  %cmp = icmp ult i32 %13, 30
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %u = getelementptr inbounds %struct.ieee80211_mgmt, ptr %frame, i32 0, i32 6
  %variable = getelementptr inbounds %struct.ieee80211_mgmt, ptr %frame, i32 0, i32 6, i32 0, i32 2, i32 2
  %gepdiff = add i32 %13, -30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ext_eid.addr.i)
  %14 = ptrtoint ptr %ext_eid.addr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %ext_eid.addr.i, align 1
  %call.i = call ptr @cfg80211_find_elem_match(i8 noundef zeroext -1, ptr noundef %variable, i32 noundef %gepdiff, ptr noundef nonnull %ext_eid.addr.i, i32 noundef 1, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ext_eid.addr.i)
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %datalen = getelementptr inbounds %struct.element, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %datalen to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %datalen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %16)
  %cmp2.not = icmp eq i8 %16, 9
  br i1 %cmp2.not, label %if.end7, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %frame, i32 0, i32 3
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %sa) #6
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %add.ptr10 = getelementptr %struct.element, ptr %call.i, i32 5, i32 1
  %sa11 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %frame, i32 0, i32 3
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sa11, ptr %addr, align 4
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 6, ptr %len, align 4
  %da = getelementptr inbounds %struct.ieee80211_mgmt, ptr %frame, i32 0, i32 2
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %da, ptr %0, align 4
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 6, ptr %7, align 4
  %fils_nonces = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %assoc_data, i32 0, i32 16
  %arrayidx17 = getelementptr %struct.ieee80211_mgd_assoc_data, ptr %assoc_data, i32 0, i32 16, i32 16
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx17, ptr %1, align 4
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %8, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %fils_nonces, ptr %2, align 4
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16, ptr %9, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %u, ptr %3, align 4
  %sub.ptr.lhs.cast25 = ptrtoint ptr %add.ptr10 to i32
  %sub.ptr.rhs.cast26 = ptrtoint ptr %u to i32
  %sub.ptr.sub27 = sub i32 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.ptr.sub27, ptr %10, align 4
  %27 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frame_len, align 4
  %add.ptr29 = getelementptr i8, ptr %frame, i32 %28
  %sub.ptr.lhs.cast30 = ptrtoint ptr %add.ptr29 to i32
  %sub.ptr.sub32 = sub i32 %sub.ptr.lhs.cast30, %sub.ptr.lhs.cast25
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub32)
  %cmp33 = icmp ult i32 %sub.ptr.sub32, 16
  br i1 %cmp33, label %if.then35, label %if.end40

if.then35:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %name36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.1, ptr noundef %name36, ptr noundef %sa11) #6
  br label %cleanup

if.end40:                                         ; preds = %if.end7
  %fils_kek = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %assoc_data, i32 0, i32 17
  %fils_kek_len = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %assoc_data, i32 0, i32 18
  %29 = ptrtoint ptr %fils_kek_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fils_kek_len, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src.i) #6
  %31 = call ptr @memset(ptr %src.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst.i) #6
  %32 = call ptr @memset(ptr %dst.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %frame_iv.i) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv.i) #6
  %33 = getelementptr inbounds [16 x i8], ptr %iv.i, i32 0, i32 8
  %34 = getelementptr inbounds [16 x i8], ptr %iv.i, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %check.i) #6
  %sub.i = add i32 %sub.ptr.sub32, -16
  %div1.i = lshr i32 %30, 1
  %35 = call ptr @memset(ptr %check.i, i32 255, i32 16)
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr10, ptr %4, align 4
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub.i, ptr %11, align 4
  %38 = call ptr @memcpy(ptr %iv.i, ptr %add.ptr10, i32 16)
  %39 = call ptr @memcpy(ptr %frame_iv.i, ptr %add.ptr10, i32 16)
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %33, align 1
  %42 = and i8 %41, 127
  store i8 %42, ptr %33, align 1
  %43 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %34, align 1
  %45 = and i8 %44, 127
  store i8 %45, ptr %34, align 1
  %call.i86 = call ptr @crypto_alloc_skcipher(ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 128) #6
  %cmp.i.i = icmp ugt ptr %call.i86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end40.aes_siv_decrypt.exit_crit_edge, label %if.end.i

if.end40.aes_siv_decrypt.exit_crit_edge:          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %aes_siv_decrypt.exit

if.end.i:                                         ; preds = %if.end40
  %add.ptr.i = getelementptr i8, ptr %fils_kek, i32 %div1.i
  %call11.i = call i32 @crypto_skcipher_setkey(ptr noundef %call.i86, ptr noundef %add.ptr.i, i32 noundef %div1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end8.i.i.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call.i86, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call.i86, ptr noundef %base.i.i.i) #6
  br label %aes_siv_decrypt.exit.thread

if.end8.i.i.i:                                    ; preds = %if.end.i
  %46 = ptrtoint ptr %call.i86 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call.i86, align 128
  %add.i.i = add i32 %47, 128
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #9
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  %base.i.i2.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call.i86, i32 0, i32 2
  br i1 %tobool.not.i.i, label %if.then16.i, label %if.end17.i, !prof !19

if.then16.i:                                      ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @crypto_destroy_tfm(ptr noundef %call.i86, ptr noundef %base.i.i2.i) #6
  br label %aes_siv_decrypt.exit.thread

if.end17.i:                                       ; preds = %if.end8.i.i.i
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 3
  %48 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %base.i.i2.i, ptr %tfm1.i.i.i, align 32
  %add.ptr19.i = getelementptr %struct.element, ptr %call.i, i32 13, i32 1
  call void @sg_init_one(ptr noundef nonnull %src.i, ptr noundef %add.ptr19.i, i32 noundef %sub.i) #6
  call void @sg_init_one(ptr noundef nonnull %dst.i, ptr noundef %add.ptr10, i32 noundef %sub.i) #6
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %src.i, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dst.i, ptr %dst2.i.i, align 4
  %51 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.i, ptr %call9.i.i.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %iv.i, ptr %iv4.i.i, align 4
  %call24.i = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %call9.i.i.i) #6
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i) #6
  call void @crypto_destroy_tfm(ptr noundef %call.i86, ptr noundef %base.i.i2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end17.i.aes_siv_decrypt.exit.thread_crit_edge

if.end17.i.aes_siv_decrypt.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aes_siv_decrypt.exit.thread

if.end27.i:                                       ; preds = %if.end17.i
  %call28.i = call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0) #6
  %cmp.i4.i = icmp ugt ptr %call28.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i4.i, label %if.end27.i.aes_siv_decrypt.exit_crit_edge, label %if.end32.i

if.end27.i.aes_siv_decrypt.exit_crit_edge:        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aes_siv_decrypt.exit

if.end32.i:                                       ; preds = %if.end27.i
  %call33.i = call i32 @crypto_shash_setkey(ptr noundef %call28.i, ptr noundef %fils_kek, i32 noundef %div1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end41.i, label %if.end38.i

if.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i5.i = getelementptr inbounds %struct.crypto_shash, ptr %call28.i, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call28.i, ptr noundef %base.i.i5.i) #6
  br label %aes_siv_decrypt.exit.thread

if.end41.i:                                       ; preds = %if.end32.i
  call fastcc void @aes_s2v(ptr noundef %call28.i, ptr noundef nonnull %addr, ptr noundef nonnull %len, ptr noundef nonnull %check.i) #6
  %base.i.i59.i = getelementptr inbounds %struct.crypto_shash, ptr %call28.i, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call28.i, ptr noundef %base.i.i59.i) #6
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %check.i, ptr noundef nonnull dereferenceable(16) %frame_iv.i, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.not.i, label %aes_siv_decrypt.exit.thread90, label %if.end41.i.aes_siv_decrypt.exit.thread_crit_edge

if.end41.i.aes_siv_decrypt.exit.thread_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aes_siv_decrypt.exit.thread

aes_siv_decrypt.exit.thread90:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %check.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %frame_iv.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src.i) #6
  %53 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %frame_len, align 4
  %sub = add i32 %54, -16
  store i32 %sub, ptr %frame_len, align 4
  br label %cleanup

aes_siv_decrypt.exit.thread:                      ; preds = %if.end41.i.aes_siv_decrypt.exit.thread_crit_edge, %if.end38.i, %if.end17.i.aes_siv_decrypt.exit.thread_crit_edge, %if.then16.i, %if.then12.i
  %retval.0.i.ph = phi i32 [ -22, %if.end41.i.aes_siv_decrypt.exit.thread_crit_edge ], [ %call33.i, %if.end38.i ], [ %call24.i, %if.end17.i.aes_siv_decrypt.exit.thread_crit_edge ], [ -12, %if.then16.i ], [ %call11.i, %if.then12.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %check.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %frame_iv.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src.i) #6
  br label %if.then47

aes_siv_decrypt.exit:                             ; preds = %if.end27.i.aes_siv_decrypt.exit_crit_edge, %if.end40.aes_siv_decrypt.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i86, %if.end40.aes_siv_decrypt.exit_crit_edge ], [ %call28.i, %if.end27.i.aes_siv_decrypt.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %check.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %frame_iv.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src.i) #6
  br label %if.then47

if.then47:                                        ; preds = %aes_siv_decrypt.exit, %aes_siv_decrypt.exit.thread
  %retval.0.i89 = phi i32 [ %retval.0.i.ph, %aes_siv_decrypt.exit.thread ], [ %retval.0.i, %aes_siv_decrypt.exit ]
  %name48 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.2, ptr noundef %name48, ptr noundef %sa11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %aes_siv_decrypt.exit.thread90, %if.then35, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then4 ], [ -22, %if.then35 ], [ %retval.0.i89, %if.then47 ], [ 0, %aes_siv_decrypt.exit.thread90 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %len) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %addr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aes_s2v(ptr noundef %tfm, ptr nocapture noundef readonly %addr, ptr nocapture noundef readonly %len, ptr noundef %v) unnamed_addr #0 align 64 {
entry:
  %d = alloca [16 x i8], align 8
  %tmp = alloca [16 x i8], align 4
  %__desc_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %d) #6
  %0 = getelementptr inbounds [16 x i8], ptr %d, i32 0, i32 4
  %1 = getelementptr inbounds [16 x i8], ptr %d, i32 0, i32 8
  %2 = call ptr @memset(ptr %d, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  %3 = call ptr @memset(ptr %tmp, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #6
  %4 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  %5 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tfm, ptr %__desc_desc, align 8
  %call = call i32 @crypto_shash_digest(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %tmp, i32 noundef 16, ptr noundef nonnull %d) #6
  %incdec.ptr.i = getelementptr inbounds i32, ptr %tmp, i32 1
  %incdec.ptr.i.1 = getelementptr inbounds i32, ptr %tmp, i32 2
  %incdec.ptr2.i.1 = getelementptr inbounds [16 x i8], ptr %d, i32 0, i32 8
  %incdec.ptr.i.2 = getelementptr inbounds i32, ptr %tmp, i32 3
  %incdec.ptr2.i.2 = getelementptr inbounds [16 x i8], ptr %d, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.029 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %d, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %1, align 8
  %or.i = call i64 @llvm.fshl.i64(i64 %7, i64 %9, i64 1) #6
  %10 = ptrtoint ptr %d to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %or.i, ptr %d, align 8
  %shl2.i = shl i64 %9, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not.inv.i = icmp slt i64 %7, 0
  %11 = select i1 %tobool.not.inv.i, i64 135, i64 0
  %xor.i = xor i64 %shl2.i, %11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %xor.i, ptr %1, align 8
  %arrayidx = getelementptr ptr, ptr %addr, i32 %i.029
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr i32, ptr %len, i32 %i.029
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx5, align 4
  %call7 = call i32 @crypto_shash_digest(ptr noundef nonnull %__desc_desc, ptr noundef %14, i32 noundef %16, ptr noundef nonnull %tmp) #6
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tmp, align 4
  %19 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %d, align 8
  %xor.i1 = xor i32 %20, %18
  store i32 %xor.i1, ptr %d, align 8
  %21 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr.i, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %0, align 4
  %xor.i1.1 = xor i32 %24, %22
  store i32 %xor.i1.1, ptr %0, align 4
  %25 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %incdec.ptr.i.1, align 4
  %27 = ptrtoint ptr %incdec.ptr2.i.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %incdec.ptr2.i.1, align 8
  %xor.i1.2 = xor i32 %28, %26
  store i32 %xor.i1.2, ptr %incdec.ptr2.i.1, align 8
  %29 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr.i.2, align 4
  %31 = ptrtoint ptr %incdec.ptr2.i.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %incdec.ptr2.i.2, align 4
  %xor.i1.3 = xor i32 %32, %30
  store i32 %xor.i1.3, ptr %incdec.ptr2.i.2, align 4
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %incdec.ptr2.i.1.le = getelementptr inbounds [16 x i8], ptr %d, i32 0, i32 8
  %incdec.ptr2.i.2.le = getelementptr inbounds [16 x i8], ptr %d, i32 0, i32 12
  %33 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__desc_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.crypto_shash_init.exit_crit_edge

for.end.crypto_shash_init.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_shash_init.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %34, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 -256
  %39 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %40(ptr noundef nonnull %__desc_desc) #6
  br label %crypto_shash_init.exit

crypto_shash_init.exit:                           ; preds = %if.end.i, %for.end.crypto_shash_init.exit_crit_edge
  %arrayidx11 = getelementptr i32, ptr %len, i32 5
  %41 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %42)
  %cmp12 = icmp ugt i32 %42, 15
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx13 = getelementptr ptr, ptr %addr, i32 5
  %43 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx13, align 4
  %sub15 = add i32 %42, -16
  %call16 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %44, i32 noundef %sub15) #6
  %45 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx13, align 4
  %47 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx11, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 %48
  %add.ptr20 = getelementptr i8, ptr %add.ptr, i32 -16
  %incdec.ptr.i5 = getelementptr i32, ptr %add.ptr20, i32 1
  %49 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr20, align 4
  %51 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %d, align 8
  %xor.i7 = xor i32 %52, %50
  store i32 %xor.i7, ptr %d, align 8
  %incdec.ptr.i5.1 = getelementptr i32, ptr %incdec.ptr.i5, i32 1
  %53 = ptrtoint ptr %incdec.ptr.i5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %incdec.ptr.i5, align 4
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %0, align 4
  %xor.i7.1 = xor i32 %56, %54
  store i32 %xor.i7.1, ptr %0, align 4
  %incdec.ptr.i5.2 = getelementptr i32, ptr %incdec.ptr.i5.1, i32 1
  %57 = ptrtoint ptr %incdec.ptr.i5.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %incdec.ptr.i5.1, align 4
  %59 = ptrtoint ptr %incdec.ptr2.i.1.le to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %incdec.ptr2.i.1.le, align 8
  %xor.i7.2 = xor i32 %60, %58
  store i32 %xor.i7.2, ptr %incdec.ptr2.i.1.le, align 8
  %61 = ptrtoint ptr %incdec.ptr.i5.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %incdec.ptr.i5.2, align 4
  %63 = ptrtoint ptr %incdec.ptr2.i.2.le to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %incdec.ptr2.i.2.le, align 4
  %xor.i7.3 = xor i32 %64, %62
  store i32 %xor.i7.3, ptr %incdec.ptr2.i.2.le, align 4
  br label %if.end

if.else:                                          ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %d to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %d, align 8
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %1, align 8
  %or.i14 = call i64 @llvm.fshl.i64(i64 %66, i64 %68, i64 1) #6
  %69 = ptrtoint ptr %d to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %or.i14, ptr %d, align 8
  %shl2.i15 = shl i64 %68, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %tobool.not.inv.i16 = icmp slt i64 %66, 0
  %70 = select i1 %tobool.not.inv.i16, i64 135, i64 0
  %xor.i17 = xor i64 %shl2.i15, %70
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %xor.i17, ptr %1, align 8
  %arrayidx23 = getelementptr ptr, ptr %addr, i32 5
  %72 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx23, align 4
  call void @__crypto_xor(ptr noundef nonnull %d, ptr noundef nonnull %d, ptr noundef %73, i32 noundef %42) #6
  %74 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx11, align 4
  %arrayidx26 = getelementptr [16 x i8], ptr %d, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx26, align 1
  %78 = xor i8 %77, -128
  store i8 %78, ptr %arrayidx26, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call29 = call i32 @crypto_shash_finup(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %d, i32 noundef 16, ptr noundef %v) #6
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %d) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/fils_aead.c", i32 288, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/mac80211/fils_aead.c", i32 318, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/mac80211/fils_aead.c", i32 326, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/mac80211/fils_aead.c", i32 87, i32 27}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/mac80211/fils_aead.c", i32 116, i32 31}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 1, i32 2000}
