; ModuleID = '/llk/IR_all_yes/net/mac80211/spectmgmt.c_pt.bc'
source_filename = "../net/mac80211/spectmgmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }
%struct.ieee80211_ext_chansw_ie = type { i8, i8, i8, i8 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.153, %struct.anon.187, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.126, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.126 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.127 }
%union.anon.127 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.153 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.anon.187 = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_channel_sw_ie = type { i8, i8, i8 }
%struct.ieee80211_csa_ie = type { %struct.cfg80211_chan_def, i8, i8, i8, i16, i16, i32 }
%struct.ieee80211_mesh_chansw_params_ie = type { i8, i8, i16, i16 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_wide_bw_chansw_ie = type { i8, i8, i8 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.154 }
%union.anon.154 = type { %struct.anon.160, [16 x i8] }
%struct.anon.160 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.167 = type { i8, %union.anon.168 }
%union.anon.168 = type <{ %struct.anon.173, [17 x i8] }>
%struct.anon.173 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.anon.172 = type { i8, i8, i8, i8, %struct.ieee80211_msrment_ie }
%struct.ieee80211_msrment_ie = type { i8, i8, i8, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: cannot understand ECSA IE operating class, %d, ignoring\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: BSS %pM switches to unsupported channel (%d MHz), disconnecting\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: BSS %pM: CSA has inconsistent channel data, disconnecting\0A\00", [33 x i8] zeroinitializer }, align 32
@ieee80211_tx_skb_tid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 56, i32 4 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 88, i32 3 }
@___asan_gen_.15 = private constant [28 x i8] c"../net/mac80211/spectmgmt.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 175, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 2199, i32 17 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 695, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 723, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_parse_ch_switch_ie(ptr noundef %sdata, ptr nocapture noundef readonly %elems, i32 noundef %current_band, i32 noundef %vht_cap_info, i32 noundef %sta_flags, ptr noundef %bssid, ptr noundef %csa_ie) local_unnamed_addr #0 align 64 {
entry:
  %new_band = alloca i32, align 4
  %new_vht_chandef = alloca %struct.cfg80211_chan_def, align 4
  %vht_oper = alloca %struct.ieee80211_vht_operation, align 1
  %ht_oper = alloca %struct.ieee80211_ht_operation, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_band) #6
  %0 = ptrtoint ptr %new_band to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %current_band, ptr %new_band, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %new_vht_chandef) #6
  %1 = call ptr @memset(ptr %new_vht_chandef, i32 0, i32 28)
  %2 = call ptr @memset(ptr %csa_ie, i32 0, i32 40)
  %sec_chan_offs1 = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 44
  %3 = ptrtoint ptr %sec_chan_offs1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sec_chan_offs1, align 4
  %wide_bw_chansw_ie2 = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 37
  %5 = ptrtoint ptr %wide_bw_chansw_ie2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wide_bw_chansw_ie2, align 4
  %and = and i32 %sta_flags, 1040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, ptr %4, ptr null
  %7 = and i32 %sta_flags, 3088
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  %wide_bw_chansw_ie.1 = select i1 %8, ptr %6, ptr null
  %ext_chansw_ie = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 36
  %9 = ptrtoint ptr %ext_chansw_ie to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ext_chansw_ie, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %entry
  %new_operating_class = getelementptr inbounds %struct.ieee80211_ext_chansw_ie, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %new_operating_class to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %new_operating_class, align 1
  %call = call zeroext i1 @ieee80211_operating_class_to_band(i8 noundef zeroext %12, ptr noundef nonnull %new_band) #6
  br i1 %call, label %if.then8.if.end13_crit_edge, label %if.then10

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %13 = ptrtoint ptr %ext_chansw_ie to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ext_chansw_ie, align 4
  %new_operating_class12 = getelementptr inbounds %struct.ieee80211_ext_chansw_ie, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %new_operating_class12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %new_operating_class12, align 1
  %conv = zext i8 %16 to i32
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %conv) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then8.if.end13_crit_edge
  %17 = ptrtoint ptr %ext_chansw_ie to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ext_chansw_ie, align 4
  %new_ch_num = getelementptr inbounds %struct.ieee80211_ext_chansw_ie, ptr %18, i32 0, i32 2
  %count = getelementptr inbounds %struct.ieee80211_ext_chansw_ie, ptr %18, i32 0, i32 3
  br label %if.end31

if.else:                                          ; preds = %entry
  %ch_switch_ie = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 35
  %19 = ptrtoint ptr %ch_switch_ie to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ch_switch_ie, align 4
  %tobool19.not = icmp eq ptr %20, null
  br i1 %tobool19.not, label %if.else.cleanup_crit_edge, label %if.then20

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %new_ch_num22 = getelementptr inbounds %struct.ieee80211_channel_sw_ie, ptr %20, i32 0, i32 1
  %count24 = getelementptr inbounds %struct.ieee80211_channel_sw_ie, ptr %20, i32 0, i32 2
  br label %if.end31

if.end31:                                         ; preds = %if.then20, %if.end13
  %count24.sink = phi ptr [ %count24, %if.then20 ], [ %count, %if.end13 ]
  %ch_switch_ie.sink = phi ptr [ %ch_switch_ie, %if.then20 ], [ %ext_chansw_ie, %if.end13 ]
  %new_chan_no.0.in = phi ptr [ %new_ch_num22, %if.then20 ], [ %new_ch_num, %if.end13 ]
  %21 = ptrtoint ptr %new_chan_no.0.in to i32
  call void @__asan_load1_noabort(i32 %21)
  %new_chan_no.0 = load i8, ptr %new_chan_no.0.in, align 1
  %22 = ptrtoint ptr %count24.sink to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %count24.sink, align 1
  %count25 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %csa_ie, i32 0, i32 2
  %24 = ptrtoint ptr %count25 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %count25, align 1
  %25 = ptrtoint ptr %ch_switch_ie.sink to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ch_switch_ie.sink, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %mode28 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %csa_ie, i32 0, i32 1
  %29 = ptrtoint ptr %mode28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %mode28, align 4
  %mesh_chansw_params_ie = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 45
  %30 = ptrtoint ptr %mesh_chansw_params_ie to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mesh_chansw_params_ie, align 4
  %tobool32.not = icmp eq ptr %31, null
  br i1 %tobool32.not, label %if.end31.if.end46_crit_edge, label %if.then33

if.end31.if.end46_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then33:                                        ; preds = %if.end31
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %ttl = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %csa_ie, i32 0, i32 3
  %34 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %ttl, align 2
  %35 = ptrtoint ptr %mesh_chansw_params_ie to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mesh_chansw_params_ie, align 4
  %mesh_flags = getelementptr inbounds %struct.ieee80211_mesh_chansw_params_ie, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %mesh_flags to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mesh_flags, align 1
  %mode36 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %csa_ie, i32 0, i32 1
  %39 = ptrtoint ptr %mode36 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %mode36, align 4
  %40 = load ptr, ptr %mesh_chansw_params_ie, align 4
  %mesh_pre_value = getelementptr inbounds %struct.ieee80211_mesh_chansw_params_ie, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %mesh_pre_value to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %mesh_pre_value, align 1
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %pre_value = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %csa_ie, i32 0, i32 4
  %44 = ptrtoint ptr %pre_value to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %pre_value, align 4
  %45 = ptrtoint ptr %mesh_chansw_params_ie to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mesh_chansw_params_ie, align 4
  %mesh_flags39 = getelementptr inbounds %struct.ieee80211_mesh_chansw_params_ie, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %mesh_flags39 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %mesh_flags39, align 1
  %49 = and i8 %48, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool42.not = icmp eq i8 %49, 0
  br i1 %tobool42.not, label %if.then33.if.end46_crit_edge, label %if.then43

if.then33.if.end46_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then43:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %mesh_reason = getelementptr inbounds %struct.ieee80211_mesh_chansw_params_ie, ptr %46, i32 0, i32 2
  %50 = ptrtoint ptr %mesh_reason to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %mesh_reason, align 1
  %52 = call i16 @llvm.bswap.i16(i16 %51)
  %reason_code = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %csa_ie, i32 0, i32 5
  %53 = ptrtoint ptr %reason_code to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %reason_code, align 2
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.then33.if.end46_crit_edge, %if.end31.if.end46_crit_edge
  %conv47 = zext i8 %new_chan_no.0 to i32
  %54 = ptrtoint ptr %new_band to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %new_band, align 4
  %call.i = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv47, i32 noundef %55) #6
  %div.i = udiv i32 %call.i, 1000
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %56 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %local, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wiphy, align 8
  %mul.i = mul nuw i32 %div.i, 1000
  %call.i209 = call ptr @ieee80211_get_channel_khz(ptr noundef %59, i32 noundef %mul.i) #6
  %tobool50.not = icmp eq ptr %call.i209, null
  br i1 %tobool50.not, label %if.end46.if.then53_crit_edge, label %lor.lhs.false

if.end46.if.then53_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53

lor.lhs.false:                                    ; preds = %if.end46
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i209, i32 0, i32 4
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags, align 4
  %and51 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end56, label %lor.lhs.false.if.then53_crit_edge

lor.lhs.false.if.then53_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53

if.then53:                                        ; preds = %lor.lhs.false.if.then53_crit_edge, %if.end46.if.then53_crit_edge
  %name54 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.1, ptr noundef %name54, ptr noundef %bssid, i32 noundef %div.i) #6
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false
  %tobool57.not = icmp eq ptr %spec.select, null
  br i1 %tobool57.not, label %if.else61, label %if.end66

if.else61:                                        ; preds = %if.end56
  %and62 = and i32 %sta_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.else61.sw.bb_crit_edge, label %sw.bb71

if.else61.sw.bb_crit_edge:                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end66:                                         ; preds = %if.end56
  %62 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %spec.select, align 1
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i8 %63, label %if.end66.sw.bb_crit_edge [
    i8 3, label %sw.bb69
    i8 1, label %sw.bb67
  ]

if.end66.sw.bb_crit_edge:                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end66.sw.bb_crit_edge, %if.else61.sw.bb_crit_edge
  call void @cfg80211_chandef_create(ptr noundef %csa_ie, ptr noundef nonnull %call.i209, i32 noundef 1) #6
  br label %sw.epilog82

sw.bb67:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  call void @cfg80211_chandef_create(ptr noundef %csa_ie, ptr noundef nonnull %call.i209, i32 noundef 3) #6
  br label %sw.epilog82

sw.bb69:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  call void @cfg80211_chandef_create(ptr noundef %csa_ie, ptr noundef nonnull %call.i209, i32 noundef 2) #6
  br label %sw.epilog82

sw.bb71:                                          ; preds = %if.else61
  call void @cfg80211_chandef_create(ptr noundef %csa_ie, ptr noundef nonnull %call.i209, i32 noundef 0) #6
  %width = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %65 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %width, align 4
  %67 = and i32 %66, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %67)
  %switch = icmp eq i32 %67, 6
  br i1 %switch, label %sw.bb74, label %sw.bb71.sw.epilog82_crit_edge

sw.bb71.sw.epilog82_crit_edge:                    ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog82

sw.bb74:                                          ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #8
  %width80 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %csa_ie, i32 0, i32 1
  %68 = ptrtoint ptr %width80 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %66, ptr %width80, align 4
  br label %sw.epilog82

sw.epilog82:                                      ; preds = %sw.bb74, %sw.bb71.sw.epilog82_crit_edge, %sw.bb69, %sw.bb67, %sw.bb
  %tobool83.not = icmp eq ptr %wide_bw_chansw_ie.1, null
  br i1 %tobool83.not, label %sw.epilog82.if.end109_crit_edge, label %if.then84

sw.epilog82.if.end109_crit_edge:                  ; preds = %sw.epilog82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then84:                                        ; preds = %sw.epilog82
  %new_center_freq_seg1 = getelementptr inbounds %struct.ieee80211_wide_bw_chansw_ie, ptr %wide_bw_chansw_ie.1, i32 0, i32 2
  %69 = ptrtoint ptr %new_center_freq_seg1 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %new_center_freq_seg1, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %vht_oper) #6
  %71 = getelementptr inbounds %struct.ieee80211_vht_operation, ptr %vht_oper, i32 0, i32 1
  %72 = getelementptr inbounds %struct.ieee80211_vht_operation, ptr %vht_oper, i32 0, i32 2
  %73 = getelementptr inbounds %struct.ieee80211_vht_operation, ptr %vht_oper, i32 0, i32 3
  %74 = ptrtoint ptr %wide_bw_chansw_ie.1 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %wide_bw_chansw_ie.1, align 1
  %76 = ptrtoint ptr %vht_oper to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %vht_oper, align 1
  %new_center_freq_seg0 = getelementptr inbounds %struct.ieee80211_wide_bw_chansw_ie, ptr %wide_bw_chansw_ie.1, i32 0, i32 1
  %77 = ptrtoint ptr %new_center_freq_seg0 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %new_center_freq_seg0, align 1
  %79 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %71, align 1
  %80 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %70, ptr %72, align 1
  %81 = ptrtoint ptr %73 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 0, ptr %73, align 1
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %ht_oper) #6
  %82 = getelementptr inbounds %struct.ieee80211_ht_operation, ptr %ht_oper, i32 0, i32 2
  %83 = call ptr @memset(ptr %ht_oper, i32 0, i32 22)
  %conv85 = zext i8 %70 to i16
  %shl = shl nuw nsw i16 %conv85, 5
  %84 = call i16 @llvm.bswap.i16(i16 %shl)
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 %84, ptr %82, align 1
  %86 = call ptr @memcpy(ptr %new_vht_chandef, ptr %csa_ie, i32 28)
  %87 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %local, align 4
  %call90 = call zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef %88, i32 noundef %vht_cap_info, ptr noundef nonnull %vht_oper, ptr noundef nonnull %ht_oper, ptr noundef nonnull %new_vht_chandef) #6
  br i1 %call90, label %if.then84.if.end92_crit_edge, label %if.then91

if.then84.if.end92_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then91:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %new_vht_chandef to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %new_vht_chandef, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.then84.if.end92_crit_edge
  %and93 = and i32 %sta_flags, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end92.if.end99_crit_edge, label %land.lhs.true

if.end92.if.end99_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

land.lhs.true:                                    ; preds = %if.end92
  %width95 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %new_vht_chandef, i32 0, i32 1
  %90 = ptrtoint ptr %width95 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %width95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %91)
  %cmp = icmp eq i32 %91, 4
  br i1 %cmp, label %if.then97, label %land.lhs.true.if.end99_crit_edge

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then97:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call98 = call i32 @ieee80211_chandef_downgrade(ptr noundef nonnull %new_vht_chandef) #6
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %land.lhs.true.if.end99_crit_edge, %if.end92.if.end99_crit_edge
  %and100 = and i32 %sta_flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.if.end108_crit_edge, label %land.lhs.true102

if.end99.if.end108_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

land.lhs.true102:                                 ; preds = %if.end99
  %width103 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %new_vht_chandef, i32 0, i32 1
  %92 = ptrtoint ptr %width103 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %width103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %93)
  %cmp104 = icmp eq i32 %93, 5
  br i1 %cmp104, label %if.then106, label %land.lhs.true102.if.end108_crit_edge

land.lhs.true102.if.end108_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.then106:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #8
  %call107 = call i32 @ieee80211_chandef_downgrade(ptr noundef nonnull %new_vht_chandef) #6
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %land.lhs.true102.if.end108_crit_edge, %if.end99.if.end108_crit_edge
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %ht_oper) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %vht_oper) #6
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %sw.epilog82.if.end109_crit_edge
  %94 = ptrtoint ptr %new_vht_chandef to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %new_vht_chandef, align 4
  %tobool111.not = icmp eq ptr %95, null
  br i1 %tobool111.not, label %if.end109.if.end121_crit_edge, label %if.then112

if.end109.if.end121_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121

if.then112:                                       ; preds = %if.end109
  %call114 = call ptr @cfg80211_chandef_compatible(ptr noundef nonnull %new_vht_chandef, ptr noundef %csa_ie) #6
  %tobool115.not = icmp eq ptr %call114, null
  br i1 %tobool115.not, label %if.then116, label %if.end119

if.then116:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  %name117 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.2, ptr noundef %name117, ptr noundef %bssid) #6
  br label %cleanup

if.end119:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  %96 = call ptr @memcpy(ptr %csa_ie, ptr %new_vht_chandef, i32 28)
  br label %if.end121

if.end121:                                        ; preds = %if.end119, %if.end109.if.end121_crit_edge
  %max_channel_switch_time = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 38
  %97 = ptrtoint ptr %max_channel_switch_time to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %max_channel_switch_time, align 4
  %tobool122.not = icmp eq ptr %98, null
  br i1 %tobool122.not, label %if.end121.cleanup_crit_edge, label %if.then123

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then123:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 1
  %conv125 = zext i8 %100 to i32
  %arrayidx128 = getelementptr i8, ptr %98, i32 1
  %101 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx128, align 1
  %conv129 = zext i8 %102 to i32
  %shl130 = shl nuw nsw i32 %conv129, 8
  %or = or i32 %shl130, %conv125
  %arrayidx132 = getelementptr i8, ptr %98, i32 2
  %103 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %104 to i32
  %shl134 = shl nuw nsw i32 %conv133, 16
  %or135 = or i32 %or, %shl134
  %max_switch_time = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %csa_ie, i32 0, i32 6
  %105 = ptrtoint ptr %max_switch_time to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or135, ptr %max_switch_time, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %if.end121.cleanup_crit_edge, %if.then116, %if.then53, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then53 ], [ -22, %if.then116 ], [ 1, %if.else.cleanup_crit_edge ], [ 0, %if.then123 ], [ 0, %if.end121.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %new_vht_chandef) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_band) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_operating_class_to_band(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_chandef_downgrade(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_chandef_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_process_measurement_req(ptr noundef %sdata, ptr nocapture noundef readonly %mgmt, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dialog_token = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 1
  %0 = ptrtoint ptr %dialog_token to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dialog_token, align 1
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %2 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local1.i, align 4
  %extra_tx_headroom.i = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %extra_tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extra_tx_headroom.i, align 4
  %add2.i = add i32 %5, 53
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add2.i, i32 noundef 2592) #6
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.ieee80211_send_refuse_measurement_request.exit_crit_edge, label %if.end.i

entry.ieee80211_send_refuse_measurement_request.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee80211_send_refuse_measurement_request.exit

if.end.i:                                         ; preds = %entry
  %bssid = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 4
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 3
  %msr_elem = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %extra_tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extra_tx_headroom.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %7
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %11, i32 %7
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 24) #6
  %12 = call ptr @memset(ptr %call.i.i, i32 0, i32 24)
  %da6.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %da6.i, ptr %sa, i32 6)
  %sa.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 3
  %addr.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %14 = call ptr @memcpy(ptr %sa.i, ptr %addr.i, i32 6)
  %bssid9.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 4
  %15 = call ptr @memcpy(ptr %bssid9.i, ptr %bssid, i32 6)
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -12288, ptr %call.i.i, align 2
  %call11.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 8) #6
  %u.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %u.i, align 2
  %u13.i = getelementptr inbounds %struct.anon.167, ptr %u.i, i32 0, i32 1
  %18 = ptrtoint ptr %u13.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %u13.i, align 1
  %dialog_token16.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 6, i32 0, i32 1
  %19 = ptrtoint ptr %dialog_token16.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %1, ptr %dialog_token16.i, align 1
  %element_id.i = getelementptr inbounds %struct.anon.167, ptr %u.i, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %element_id.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 39, ptr %element_id.i, align 1
  %length.i = getelementptr inbounds %struct.anon.172, ptr %u13.i, i32 0, i32 3
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %length.i, align 1
  %msr_elem.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 6, i32 0, i32 2, i32 1
  %22 = call ptr @memset(ptr %msr_elem.i, i32 0, i32 3)
  %23 = ptrtoint ptr %msr_elem to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %msr_elem, align 1
  %25 = ptrtoint ptr %msr_elem.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %msr_elem.i, align 1
  %mode.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 6, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %mode.i, align 1
  %type.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %type.i, align 1
  %type34.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 6, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %type34.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %type34.i, align 1
  %30 = tail call i32 @llvm.read_register.i32(metadata !17) #6
  %and.i.i.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !27
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i.i.i, label %if.end.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.rcu_read_lock.exit.i.i.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #6
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.end.i.rcu_read_lock.exit.i.i.i_crit_edge
  %chanctx_conf1.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %34 = ptrtoint ptr %chanctx_conf1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %chanctx_conf1.i.i.i, align 4
  %call.i.i57.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i57.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end8.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i.i.i

land.lhs.true.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call3.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b1.i.i.i = load i1, ptr @ieee80211_tx_skb_tid.__warned, align 1
  br i1 %.b1.i.i.i, label %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge:     ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ieee80211_tx_skb_tid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2199, ptr noundef nonnull @.str.4) #6
  br label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %if.then.i.i.i, %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end8.i.i.i_crit_edge
  %tobool10.not.i.i.i = icmp eq ptr %35, null
  br i1 %tobool10.not.i.i.i, label %do.end23.i.i.i, label %if.end39.i.i.i, !prof !28

do.end23.i.i.i:                                   ; preds = %do.end8.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2200, i32 noundef 9, ptr noundef null) #6
  %call.i1.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i1.i.i, label %do.end23.i.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i3.i.i

do.end23.i.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %do.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i3.i.i:                             ; preds = %do.end23.i.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i2.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i2.i.i, label %land.lhs.true.i3.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i3.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i3.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i4.i.i

land.lhs.true2.i.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i.i

if.then.i4.i.i:                                   ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #6
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i4.i.i, %land.lhs.true2.i.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i3.i.i.rcu_read_unlock.exit.i.i_crit_edge, %do.end23.i.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !29
  %36 = tail call i32 @llvm.read_register.i32(metadata !17) #6
  %and.i.i.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #6
  br label %ieee80211_send_refuse_measurement_request.exit

if.end39.i.i.i:                                   ; preds = %do.end8.i.i.i
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %sdata, ptr noundef nonnull %call.i.i.i, i32 noundef 7, i32 noundef %43) #6
  %call.i2.i.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i2.i.i.i, label %if.end39.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true.i5.i.i.i

if.end39.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true.i5.i.i.i:                           ; preds = %if.end39.i.i.i
  %call1.i3.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i.i.i)
  %tobool.not.i4.i.i.i = icmp eq i32 %call1.i3.i.i.i, 0
  br i1 %tobool.not.i4.i.i.i, label %land.lhs.true.i5.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true2.i7.i.i.i

land.lhs.true.i5.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true2.i7.i.i.i:                          ; preds = %land.lhs.true.i5.i.i.i
  %.b4.i6.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i.i.i, label %land.lhs.true2.i7.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %if.then.i8.i.i.i

land.lhs.true2.i7.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i.i.i

if.then.i8.i.i.i:                                 ; preds = %land.lhs.true2.i7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #6
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %if.then.i8.i.i.i, %land.lhs.true2.i7.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %land.lhs.true.i5.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %if.end39.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !29
  %44 = tail call i32 @llvm.read_register.i32(metadata !17) #6
  %and.i.i.i.i.i9.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i9.i.i.i to ptr
  %preempt_count.i.i.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i10.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i10.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %ieee80211_send_refuse_measurement_request.exit

ieee80211_send_refuse_measurement_request.exit:   ; preds = %rcu_read_unlock.exit.i.i.i, %rcu_read_unlock.exit.i.i, %entry.ieee80211_send_refuse_measurement_request.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13, !14, !16}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/spectmgmt.c", i32 56, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/mac80211/spectmgmt.c", i32 88, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/mac80211/spectmgmt.c", i32 175, i32 4}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/mac80211/ieee80211_i.h", i32 2199, i32 17}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{!"sp"}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2149780940}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 2149781206}
