; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/st/cw1200/queue.c_pt.bc'
source_filename = "../drivers/net/wireless/st/cw1200/queue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.atomic_t = type { i32 }
%struct.cw1200_queue_stats = type { %struct.spinlock, ptr, i32, i32, %struct.wait_queue_head, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.cw1200_queue = type { ptr, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.spinlock, i8, i8, %struct.timer_list, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cw1200_queue_item = type { %struct.list_head, ptr, i32, i32, i32, %struct.cw1200_txpriv, i8 }
%struct.cw1200_txpriv = type { i8, i8, i8, i8, i8 }
%struct.sk_buff = type { %union.anon.2, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
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
%struct.wsm_tx = type { %struct.wsm_hdr, i32, i8, i8, i8, i8, i32, i32, i32 }
%struct.wsm_hdr = type { i16, i16 }
%struct.cw1200_common = type <{ ptr, ptr, ptr, %struct.ieee80211_low_level_stats, [6 x i8], [2 x i8], ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr, ptr, %struct.mutex, [4 x %struct.cw1200_queue], %struct.cw1200_queue_stats, i32, i32, i32, ptr, ptr, ptr, %struct.wsm_edca_params, %struct.wsm_tx_queue_params, %struct.wsm_mib_association_mode, %struct.wsm_set_bss_params, %struct.cw1200_ht_info, %struct.wsm_set_pm, %struct.wsm_set_pm, i32, i32, i8, [3 x i8], i32, i32, %struct.wait_queue_head, i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, %struct.wsm_rx_filter, %struct.wsm_mib_multicast_filter, i8, i8, i8, %struct.work_struct, %struct.work_struct, i8, i8, [2 x i8], %struct.cw1200_pm_state, %struct.wsm_p2p_ps_modeinfo, %struct.wsm_uapsd_info, i8, i8, i8, i8, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.cw1200_scan, %struct.atomic_t, %struct.delayed_work, %struct.wsm_startup_ind, %struct.mutex, %struct.wsm_buf, %struct.wsm_cmd, %struct.wait_queue_head, %struct.wait_queue_head, i32, %struct.atomic_t, i32, i32, i32, i8, [3 x i8], %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, i32, i8, i8, [2 x i8], %struct.work_struct, i32, [11 x %struct.wsm_add_key], i32, [5 x %struct.cw1200_link_entry], %struct.work_struct, %struct.delayed_work, i32, i32, i8, [3 x i8], %struct.spinlock, i8, i8, [2 x i8], %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i32, i32, i32, %struct.work_struct, %struct.tx_policy_cache, %struct.work_struct, i32, %struct.wait_queue_head, %struct.work_struct, [6 x i8], i8, i8 }>
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.wsm_edca_params = type { [4 x %struct.wsm_edca_queue_params], [4 x i8] }
%struct.wsm_edca_queue_params = type { i16, i16, i16, i16, i32 }
%struct.wsm_tx_queue_params = type { [4 x %struct.wsm_set_tx_queue_params] }
%struct.wsm_set_tx_queue_params = type { i8, i16, i32 }
%struct.wsm_mib_association_mode = type { i8, i8, i8, i8, i32 }
%struct.wsm_set_bss_params = type { i8, i8, i16, i32 }
%struct.cw1200_ht_info = type { %struct.ieee80211_sta_ht_cap, i32, i16 }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.wsm_set_pm = type { i8, i8, i8, i8 }
%struct.wsm_rx_filter = type { i8, i8, i8, i8 }
%struct.wsm_mib_multicast_filter = type { i32, i32, [8 x [6 x i8]] }
%struct.cw1200_pm_state = type { ptr, %struct.timer_list, ptr, %struct.spinlock }
%struct.wsm_p2p_ps_modeinfo = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.wsm_uapsd_info = type { i16, i16, i16, i16 }
%struct.cw1200_scan = type { %struct.semaphore, %struct.work_struct, %struct.delayed_work, ptr, ptr, ptr, ptr, [2 x %struct.wsm_ssid], i32, i32, i32, %struct.atomic_t, %struct.delayed_work, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wsm_ssid = type { [32 x i8], i32 }
%struct.wsm_startup_ind = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [128 x i8], [4 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wsm_buf = type { ptr, ptr, ptr }
%struct.wsm_cmd = type { %struct.spinlock, i32, ptr, i32, ptr, i32, i16 }
%struct.wsm_add_key = type { i8, i8, i16, %union.anon.128 }
%union.anon.128 = type { %struct.anon.131 }
%struct.anon.131 = type { [6 x i8], i16, [16 x i8], [8 x i8], [8 x i8] }
%struct.cw1200_link_entry = type { i32, i32, i32, [6 x i8], [8 x i8], %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.tx_policy_cache = type { [8 x %struct.tx_policy_cache_entry], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy_cache_entry = type { %struct.tx_policy, %struct.list_head }
%struct.tx_policy = type { %union.anon.137, i8, i8, i8, i8 }
%union.anon.137 = type { [3 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cw1200_debug_priv = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cw1200_queue_stats_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&stats->lock\00", [19 x i8] zeroinitializer }, align 32
@cw1200_queue_stats_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&stats->wait_link_id_empty\00", [37 x i8] zeroinitializer }, align 32
@cw1200_queue_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&queue->lock\00", [19 x i8] zeroinitializer }, align 32
@cw1200_queue_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&queue->gc)\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/st/cw1200/queue.c\00", [57 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@__cw1200_queue_unlock.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.6, ptr @.str.9, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cw1200_core\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__cw1200_queue_unlock\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[TX] Queue %d is unlocked.\0A\00", [36 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cw1200_queue_lock.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.10, ptr @.str.6, ptr @.str.11, i8 0, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__cw1200_queue_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[TX] Queue %d is locked.\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 150, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 151, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 177, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 178, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 210, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 41, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [42 x i8] c"../drivers/net/wireless/st/cw1200/queue.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 30, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @cw1200_queue_stats_init.__key, ptr @.str, ptr @cw1200_queue_stats_init.__key.1, ptr @.str.2, ptr @cw1200_queue_init.__key, ptr @.str.3, ptr @cw1200_queue_init.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_queue_stats_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_queue_stats_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_queue_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_queue_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_queue_stats_init(ptr noundef %stats, i32 noundef %map_capacity, ptr noundef %skb_dtor, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %stats, i32 0, i32 108)
  %map_capacity1 = getelementptr inbounds %struct.cw1200_queue_stats, ptr %stats, i32 0, i32 3
  %1 = ptrtoint ptr %map_capacity1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %map_capacity, ptr %map_capacity1, align 4
  %skb_dtor2 = getelementptr inbounds %struct.cw1200_queue_stats, ptr %stats, i32 0, i32 5
  %2 = ptrtoint ptr %skb_dtor2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb_dtor, ptr %skb_dtor2, align 4
  %priv3 = getelementptr inbounds %struct.cw1200_queue_stats, ptr %stats, i32 0, i32 6
  %3 = ptrtoint ptr %priv3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv, ptr %priv3, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %stats, ptr noundef nonnull @.str, ptr noundef nonnull @cw1200_queue_stats_init.__key, i16 noundef signext 3) #5
  %wait_link_id_empty = getelementptr inbounds %struct.cw1200_queue_stats, ptr %stats, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %wait_link_id_empty, ptr noundef nonnull @.str.2, ptr noundef nonnull @cw1200_queue_stats_init.__key.1) #5
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %map_capacity, i32 4) #5
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %entry.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !32

entry.kcalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #8
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %entry.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %entry.kcalloc.exit_crit_edge ]
  %link_map_cache = getelementptr inbounds %struct.cw1200_queue_stats, ptr %stats, i32 0, i32 1
  %7 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %retval.0.i.i, ptr %link_map_cache, align 4
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_queue_init(ptr noundef %queue, ptr noundef %stats, i8 noundef zeroext %queue_id, i32 noundef %capacity, i32 noundef %ttl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %queue, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 148)
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %stats, ptr %queue, align 4
  %capacity2 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 1
  %3 = ptrtoint ptr %capacity2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %capacity, ptr %capacity2, align 4
  %queue_id3 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 13
  %4 = ptrtoint ptr %queue_id3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %queue_id, ptr %queue_id3, align 4
  %ttl4 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 16
  %5 = ptrtoint ptr %ttl4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %ttl, ptr %ttl4, align 4
  %queue5 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 6
  %6 = ptrtoint ptr %queue5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %queue5, ptr %queue5, align 4
  %prev.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue5, ptr %prev.i, align 4
  %pending = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 8
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %pending, ptr %pending, align 4
  %prev.i42 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pending, ptr %prev.i42, align 4
  %free_pool = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 7
  %10 = ptrtoint ptr %free_pool to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %free_pool, ptr %free_pool, align 4
  %prev.i43 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %free_pool, ptr %prev.i43, align 4
  %lock = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @cw1200_queue_init.__key, i16 noundef signext 3) #5
  %gc = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 15
  tail call void @init_timer_key(ptr noundef %gc, ptr noundef nonnull @cw1200_queue_gc, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @cw1200_queue_init.__key.4) #5
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %capacity, i32 32) #5
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !32

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pool80 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 5
  br label %cleanup.sink.split

if.end7.i.i:                                      ; preds = %entry
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #8
  %pool = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 5
  %15 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i, ptr %pool, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %map_capacity = getelementptr inbounds %struct.cw1200_queue_stats, ptr %stats, i32 0, i32 3
  %16 = ptrtoint ptr %map_capacity to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %map_capacity, align 4
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4) #5
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %kcalloc.exit76.thread, label %if.end7.i.i74, !prof !32

kcalloc.exit76.thread:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %link_map_cache88 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 10
  %20 = ptrtoint ptr %link_map_cache88 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %link_map_cache88, align 4
  br label %if.then14

if.end7.i.i74:                                    ; preds = %if.end
  %21 = extractvalue { i32, i1 } %18, 0
  %call8.i.i73 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #8
  %link_map_cache = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 10
  %22 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call8.i.i73, ptr %link_map_cache, align 4
  %tobool13.not = icmp eq ptr %call8.i.i73, null
  br i1 %tobool13.not, label %if.end7.i.i74.if.then14_crit_edge, label %for.cond.preheader

if.end7.i.i74.if.then14_crit_edge:                ; preds = %if.end7.i.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

for.cond.preheader:                               ; preds = %if.end7.i.i74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %capacity)
  %cmp90.not = icmp eq i32 %capacity, 0
  br i1 %cmp90.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %if.end7.i.i74.if.then14_crit_edge, %kcalloc.exit76.thread
  %23 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pool, align 4
  tail call void @kfree(ptr noundef %24) #5
  br label %cleanup.sink.split

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.091 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %25 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pool, align 4
  %arrayidx = getelementptr %struct.cw1200_queue_item, ptr %26, i32 %i.091
  %27 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i43, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %28, ptr noundef %free_pool) #5
  br i1 %call.i.i, label %if.end.i.i78, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i78:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx, ptr %prev.i43, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %free_pool, ptr %arrayidx, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %arrayidx, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i78, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc, %capacity
  br i1 %exitcond.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then14, %kcalloc.exit.thread
  %pool80.sink = phi ptr [ %pool80, %kcalloc.exit.thread ], [ %pool, %if.then14 ]
  %33 = ptrtoint ptr %pool80.sink to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %pool80.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %list_add_tail.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -12, %cleanup.sink.split ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cw1200_queue_gc(ptr noundef %t) #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #5
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %t, i32 -108
  %lock = getelementptr i8, ptr %t, i32 -48
  call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  call fastcc void @__cw1200_queue_gc(ptr noundef %add.ptr, ptr noundef nonnull %list)
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list, align 4
  %cmp.not21.i = icmp eq ptr %4, %list
  br i1 %cmp.not21.i, label %entry.cw1200_queue_post_gc.exit_crit_edge, label %for.body.lr.ph.i

entry.cw1200_queue_post_gc.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cw1200_queue_post_gc.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %skb_dtor.i = getelementptr inbounds %struct.cw1200_queue_stats, ptr %6, i32 0, i32 5
  %priv.i = getelementptr inbounds %struct.cw1200_queue_stats, ptr %6, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %item.022.i = phi ptr [ %4, %for.body.lr.ph.i ], [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %item.022.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.0.i = load ptr, ptr %item.022.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %item.022.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %item.022.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %item.022.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %item.022.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %14 = ptrtoint ptr %item.022.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %item.022.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %item.022.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %skb_dtor.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb_dtor.i, align 4
  %18 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i, align 4
  %skb.i = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.022.i, i32 0, i32 1
  %20 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb.i, align 4
  %txpriv.i = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.022.i, i32 0, i32 5
  call void %17(ptr noundef %19, ptr noundef %21, ptr noundef %txpriv.i) #5
  call void @kfree(ptr noundef %item.022.i) #5
  %cmp.not.i = icmp eq ptr %tmp.0.i, %list
  br i1 %cmp.not.i, label %list_del.exit.i.cw1200_queue_post_gc.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

list_del.exit.i.cw1200_queue_post_gc.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cw1200_queue_post_gc.exit

cw1200_queue_post_gc.exit:                        ; preds = %list_del.exit.i.cw1200_queue_post_gc.exit_crit_edge, %entry.cw1200_queue_post_gc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_queue_clear(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  %gc_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gc_list) #5
  %0 = getelementptr inbounds %struct.list_head, ptr %gc_list, i32 0, i32 1
  %1 = ptrtoint ptr %gc_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %gc_list, ptr %gc_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %gc_list, ptr %0, align 4
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  %lock = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %generation = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 14
  %5 = ptrtoint ptr %generation to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %generation, align 1
  %inc = add i8 %6, 1
  store i8 %inc, ptr %generation, align 1
  %queue2 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 6
  %pending = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 8
  %7 = ptrtoint ptr %queue2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue2, align 4
  %cmp.i.not.i = icmp eq ptr %8, %queue2
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %8, ptr %10, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pending, ptr %12, align 4
  store ptr %12, ptr %prev.i, align 4
  %16 = ptrtoint ptr %queue2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %queue2, ptr %queue2, align 4
  store ptr %queue2, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  %17 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pending, align 4
  %cmp.not106 = icmp eq ptr %18, %pending
  br i1 %cmp.not106, label %list_splice_tail_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_tail_init.exit.for.end_crit_edge:     ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_tail_init.exit
  %free_pool = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 7
  %prev.i2.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 7, i32 1
  br label %for.body

for.body:                                         ; preds = %list_move_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %item.0107 = phi ptr [ %18, %for.body.lr.ph ], [ %tmp.0109, %list_move_tail.exit.for.body_crit_edge ]
  %19 = ptrtoint ptr %item.0107 to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp.0109 = load ptr, ptr %item.0107, align 4
  %skb = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.0107, i32 0, i32 1
  %20 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %do.end, label %for.body.if.end_crit_edge, !prof !32

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 210, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %call.i = call ptr @kmemdup(ptr noundef %item.0107, i32 noundef 32, i32 noundef 2592) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !32

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/queue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 84, 0\0A.popsection", ""() #5, !srcloc !33
  unreachable

do.end9.i:                                        ; preds = %if.end
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %23, ptr noundef nonnull %gc_list) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end9.i.cw1200_queue_register_post_gc.exit_crit_edge

do.end9.i.cw1200_queue_register_post_gc.exit_crit_edge: ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cw1200_queue_register_post_gc.exit

if.end.i.i.i:                                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %0, align 4
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %gc_list, ptr %call.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call.i, ptr %23, align 4
  br label %cw1200_queue_register_post_gc.exit

cw1200_queue_register_post_gc.exit:               ; preds = %if.end.i.i.i, %do.end9.i.cw1200_queue_register_post_gc.exit_crit_edge
  %28 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %skb, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %item.0107) #5
  br i1 %call.i.i, label %if.end.i.i, label %cw1200_queue_register_post_gc.exit.__list_del_entry.exit.i_crit_edge

cw1200_queue_register_post_gc.exit.__list_del_entry.exit.i_crit_edge: ; preds = %cw1200_queue_register_post_gc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %cw1200_queue_register_post_gc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i96 = getelementptr inbounds %struct.list_head, ptr %item.0107, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i96 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i96, align 4
  %31 = ptrtoint ptr %item.0107 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %item.0107, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %cw1200_queue_register_post_gc.exit.__list_del_entry.exit.i_crit_edge
  %35 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i97 = call zeroext i1 @__list_add_valid(ptr noundef %item.0107, ptr noundef %36, ptr noundef %free_pool) #5
  br i1 %call.i.i.i97, label %if.end.i.i.i99, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move_tail.exit

if.end.i.i.i99:                                   ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %item.0107, ptr %prev.i2.i, align 4
  %38 = ptrtoint ptr %item.0107 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %free_pool, ptr %item.0107, align 4
  %prev3.i.i.i98 = getelementptr inbounds %struct.list_head, ptr %item.0107, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i.i98, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %item.0107, ptr %36, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i99, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %cmp.not = icmp eq ptr %tmp.0109, %pending
  br i1 %cmp.not, label %list_move_tail.exit.for.end_crit_edge, label %list_move_tail.exit.for.body_crit_edge

list_move_tail.exit.for.body_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_move_tail.exit.for.end_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_move_tail.exit.for.end_crit_edge, %list_splice_tail_init.exit.for.end_crit_edge
  %num_queued = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 2
  %41 = ptrtoint ptr %num_queued to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %num_queued, align 4
  %num_pending = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 3
  %42 = ptrtoint ptr %num_pending to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %num_pending, align 4
  call void @_raw_spin_lock_bh(ptr noundef %4) #5
  %map_capacity = getelementptr inbounds %struct.cw1200_queue_stats, ptr %4, i32 0, i32 3
  %43 = ptrtoint ptr %map_capacity to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %map_capacity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp43110.not = icmp eq i32 %44, 0
  br i1 %cmp43110.not, label %for.end.for.end55_crit_edge, label %for.body44.lr.ph

for.end.for.end55_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end55

for.body44.lr.ph:                                 ; preds = %for.end
  %link_map_cache = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 10
  %num_queued45 = getelementptr inbounds %struct.cw1200_queue_stats, ptr %4, i32 0, i32 2
  %link_map_cache48 = getelementptr inbounds %struct.cw1200_queue_stats, ptr %4, i32 0, i32 1
  br label %for.body44

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %for.body44.lr.ph
  %i.0111 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc54, %for.body44.for.body44_crit_edge ]
  %45 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %link_map_cache, align 4
  %arrayidx = getelementptr i32, ptr %46, i32 %i.0111
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  %49 = ptrtoint ptr %num_queued45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_queued45, align 4
  %sub = sub i32 %50, %48
  store i32 %sub, ptr %num_queued45, align 4
  %51 = load ptr, ptr %link_map_cache, align 4
  %arrayidx47 = getelementptr i32, ptr %51, i32 %i.0111
  %52 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx47, align 4
  %54 = ptrtoint ptr %link_map_cache48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %link_map_cache48, align 4
  %arrayidx49 = getelementptr i32, ptr %55, i32 %i.0111
  %56 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx49, align 4
  %sub50 = sub i32 %57, %53
  store i32 %sub50, ptr %arrayidx49, align 4
  %58 = load ptr, ptr %link_map_cache, align 4
  %arrayidx52 = getelementptr i32, ptr %58, i32 %i.0111
  %59 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %arrayidx52, align 4
  %inc54 = add nuw i32 %i.0111, 1
  %60 = ptrtoint ptr %map_capacity to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %map_capacity, align 4
  %cmp43 = icmp ult i32 %inc54, %61
  br i1 %cmp43, label %for.body44.for.body44_crit_edge, label %for.body44.for.end55_crit_edge

for.body44.for.end55_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end55

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body44

for.end55:                                        ; preds = %for.body44.for.end55_crit_edge, %for.end.for.end55_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %4) #5
  %overfull = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 11
  %62 = ptrtoint ptr %overfull to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %overfull, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool57.not = icmp eq i8 %63, 0
  br i1 %tobool57.not, label %for.end55.if.end60_crit_edge, label %if.then58

for.end55.if.end60_crit_edge:                     ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then58:                                        ; preds = %for.end55
  %64 = ptrtoint ptr %overfull to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %overfull, align 4
  %65 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %queue, align 4
  %tx_locked_cnt.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 9
  %67 = ptrtoint ptr %tx_locked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_locked_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i100 = icmp eq i32 %68, 0
  br i1 %tobool.not.i100, label %do.body5.i, label %do.end10.i, !prof !32

do.body5.i:                                       ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/queue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #5, !srcloc !35
  unreachable

do.end10.i:                                       ; preds = %if.then58
  %dec.i = add i32 %68, -1
  %69 = ptrtoint ptr %tx_locked_cnt.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %dec.i, ptr %tx_locked_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %do.body13.i, label %do.end10.i.if.end60_crit_edge

do.end10.i.if.end60_crit_edge:                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

do.body13.i:                                      ; preds = %do.end10.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cw1200_queue_unlock.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_queue_clear, %if.then21.i)) #5
          to label %do.end24.i [label %if.then21.i], !srcloc !36

if.then21.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %queue_id.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 13
  %70 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %queue_id.i, align 4
  %conv.i = zext i8 %71 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cw1200_queue_unlock.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #5
  br label %do.end24.i

do.end24.i:                                       ; preds = %if.then21.i, %do.body13.i
  %priv.i = getelementptr inbounds %struct.cw1200_queue_stats, ptr %66, i32 0, i32 6
  %72 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %queue_id25.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 13
  %76 = ptrtoint ptr %queue_id25.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %queue_id25.i, align 4
  %conv26.i = zext i8 %77 to i32
  call void @ieee80211_wake_queue(ptr noundef %75, i32 noundef %conv26.i) #5
  br label %if.end60

if.end60:                                         ; preds = %do.end24.i, %do.end10.i.if.end60_crit_edge, %for.end55.if.end60_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %wait_link_id_empty = getelementptr inbounds %struct.cw1200_queue_stats, ptr %4, i32 0, i32 4
  call void @__wake_up(ptr noundef %wait_link_id_empty, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  %78 = ptrtoint ptr %gc_list to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %gc_list, align 4
  %cmp.not21.i = icmp eq ptr %79, %gc_list
  br i1 %cmp.not21.i, label %if.end60.cw1200_queue_post_gc.exit_crit_edge, label %for.body.lr.ph.i

if.end60.cw1200_queue_post_gc.exit_crit_edge:     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cw1200_queue_post_gc.exit

for.body.lr.ph.i:                                 ; preds = %if.end60
  %skb_dtor.i = getelementptr inbounds %struct.cw1200_queue_stats, ptr %4, i32 0, i32 5
  %priv.i101 = getelementptr inbounds %struct.cw1200_queue_stats, ptr %4, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %item.022.i = phi ptr [ %79, %for.body.lr.ph.i ], [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ]
  %80 = ptrtoint ptr %item.022.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %tmp.0.i = load ptr, ptr %item.022.i, align 4
  %call.i.i.i102 = call zeroext i1 @__list_del_entry_valid(ptr noundef %item.022.i) #5
  br i1 %call.i.i.i102, label %if.end.i.i.i103, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i103:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %item.022.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i.i, align 4
  %83 = ptrtoint ptr %item.022.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %item.022.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev1.i.i.i.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %84, ptr %82, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i103, %for.body.i.list_del.exit.i_crit_edge
  %87 = ptrtoint ptr %item.022.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 256 to ptr), ptr %item.022.i, align 4
  %prev.i.i104 = getelementptr inbounds %struct.list_head, ptr %item.022.i, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i104 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i104, align 4
  %89 = ptrtoint ptr %skb_dtor.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %skb_dtor.i, align 4
  %91 = ptrtoint ptr %priv.i101 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv.i101, align 4
  %skb.i = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.022.i, i32 0, i32 1
  %93 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %skb.i, align 4
  %txpriv.i = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.022.i, i32 0, i32 5
  call void %90(ptr noundef %92, ptr noundef %94, ptr noundef %txpriv.i) #5
  call void @kfree(ptr noundef %item.022.i) #5
  %cmp.not.i = icmp eq ptr %tmp.0.i, %gc_list
  br i1 %cmp.not.i, label %list_del.exit.i.cw1200_queue_post_gc.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

list_del.exit.i.cw1200_queue_post_gc.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cw1200_queue_post_gc.exit

cw1200_queue_post_gc.exit:                        ; preds = %list_del.exit.i.cw1200_queue_post_gc.exit_crit_edge, %if.end60.cw1200_queue_post_gc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gc_list) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_queue_stats_deinit(ptr nocapture noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %link_map_cache = getelementptr inbounds %struct.cw1200_queue_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link_map_cache, align 4
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %link_map_cache, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_queue_deinit(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cw1200_queue_clear(ptr noundef %queue)
  %gc = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 15
  %call1 = tail call i32 @del_timer_sync(ptr noundef %gc) #5
  %free_pool = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 7
  %0 = ptrtoint ptr %free_pool to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %free_pool, ptr %free_pool, align 4
  %prev.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %free_pool, ptr %prev.i, align 4
  %pool = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 5
  %2 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool, align 4
  tail call void @kfree(ptr noundef %3) #5
  %link_map_cache = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 10
  %4 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_map_cache, align 4
  tail call void @kfree(ptr noundef %5) #5
  %6 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pool, align 4
  %7 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %link_map_cache, align 4
  %capacity = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 1
  %8 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %capacity, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_queue_get_num_queued(ptr noundef %queue, i32 noundef %link_id_map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %map_capacity1 = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %map_capacity1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_capacity1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_id_map)
  %tobool.not = icmp eq i32 %link_id_map, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %link_id_map)
  %cmp = icmp eq i32 %link_id_map, -1
  br i1 %cmp, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp323.not = icmp eq i32 %3, 0
  br i1 %cmp323.not, label %for.cond.preheader.if.end7_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end7_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %link_map_cache = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 10
  br label %for.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %num_queued = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 2
  %4 = ptrtoint ptr %num_queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_queued, align 4
  %num_pending = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 3
  %6 = ptrtoint ptr %num_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pending, align 4
  %sub = sub i32 %5, %7
  br label %if.end7

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bit.027 = phi i32 [ 1, %for.body.lr.ph ], [ %shl, %for.inc.for.body_crit_edge ]
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.024 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %and = and i32 %bit.027, %link_id_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_map_cache, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 %i.025
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %ret.024
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %add, %if.then5 ], [ %ret.024, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.025, 1
  %shl = shl i32 %bit.027, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.if.end7_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end7_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end7:                                          ; preds = %for.inc.if.end7_crit_edge, %if.then2, %for.cond.preheader.if.end7_crit_edge
  %ret.2 = phi i32 [ %sub, %if.then2 ], [ 0, %for.cond.preheader.if.end7_crit_edge ], [ %ret.1, %for.inc.if.end7_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %if.end7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_queue_put(ptr noundef %queue, ptr noundef %skb, ptr nocapture noundef readonly %txpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %2 = ptrtoint ptr %txpriv to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %txpriv, align 1
  %conv = zext i8 %3 to i32
  %map_capacity = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %map_capacity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %map_capacity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp ugt i32 %5, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %free_pool = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 7
  %6 = ptrtoint ptr %free_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %free_pool, align 4
  %cmp.i.not = icmp eq ptr %7, %free_pool
  br i1 %cmp.i.not, label %do.end, label %if.then26.critedge, !prof !32

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 288, i32 noundef 9, ptr noundef null) #5
  br label %if.end79

if.then26.critedge:                               ; preds = %if.end
  %skb30 = getelementptr inbounds %struct.cw1200_queue_item, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %skb30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb30, align 4
  %tobool31.not = icmp eq ptr %9, null
  br i1 %tobool31.not, label %do.end47, label %do.body39, !prof !37

do.body39:                                        ; preds = %if.then26.critedge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/queue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 291, 0\0A.popsection", ""() #5, !srcloc !38
  unreachable

do.end47:                                         ; preds = %if.then26.critedge
  %queue48 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #5
  br i1 %call.i.i, label %if.end.i.i, label %do.end47.__list_del_entry.exit.i_crit_edge

do.end47.__list_del_entry.exit.i_crit_edge:       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %do.end47.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %7, ptr noundef %17, ptr noundef %queue48) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %7, ptr %prev.i2.i, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %queue48, ptr %7, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %7, ptr %17, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %22 = ptrtoint ptr %skb30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %skb, ptr %skb30, align 4
  %txpriv50 = getelementptr inbounds %struct.cw1200_queue_item, ptr %7, i32 0, i32 5
  %23 = call ptr @memcpy(ptr %txpriv50, ptr %txpriv, i32 5)
  %generation = getelementptr inbounds %struct.cw1200_queue_item, ptr %7, i32 0, i32 6
  %24 = ptrtoint ptr %generation to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %generation, align 1
  %generation51 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 14
  %25 = ptrtoint ptr %generation51 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %generation51, align 1
  %queue_id = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 13
  %27 = ptrtoint ptr %queue_id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %queue_id, align 4
  %pool = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 5
  %29 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pool, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %30 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %31 = lshr exact i32 %sub.ptr.sub, 5
  %conv.i114 = and i32 %31, 255
  %conv3.i = zext i8 %28 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %or5.i = or i32 %conv.i114, %shl4.i
  %conv6.i = zext i8 %26 to i32
  %shl7.i = shl nuw i32 %conv6.i, 24
  %or8.i = or i32 %or5.i, %shl7.i
  %packet_id = getelementptr inbounds %struct.cw1200_queue_item, ptr %7, i32 0, i32 2
  %32 = ptrtoint ptr %packet_id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or8.i, ptr %packet_id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %queue_timestamp = getelementptr inbounds %struct.cw1200_queue_item, ptr %7, i32 0, i32 3
  %34 = ptrtoint ptr %queue_timestamp to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %queue_timestamp, align 4
  %num_queued = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 2
  %35 = ptrtoint ptr %num_queued to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_queued, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %num_queued, align 4
  %link_map_cache = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 10
  %37 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %link_map_cache, align 4
  %39 = ptrtoint ptr %txpriv to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %txpriv, align 1
  %idxprom = zext i8 %40 to i32
  %arrayidx = getelementptr i32, ptr %38, i32 %idxprom
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %inc56 = add i32 %42, 1
  store i32 %inc56, ptr %arrayidx, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #5
  %num_queued58 = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %num_queued58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_queued58, align 4
  %inc59 = add i32 %44, 1
  store i32 %inc59, ptr %num_queued58, align 4
  %link_map_cache60 = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %link_map_cache60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %link_map_cache60, align 4
  %47 = ptrtoint ptr %txpriv to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %txpriv, align 1
  %idxprom62 = zext i8 %48 to i32
  %arrayidx63 = getelementptr i32, ptr %46, i32 %idxprom62
  %49 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx63, align 4
  %inc64 = add i32 %50, 1
  store i32 %inc64, ptr %arrayidx63, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %1) #5
  %overfull = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 11
  %51 = ptrtoint ptr %overfull to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %overfull, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp68 = icmp eq i8 %52, 0
  br i1 %cmp68, label %land.lhs.true, label %list_move_tail.exit.if.end79_crit_edge

list_move_tail.exit.if.end79_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

land.lhs.true:                                    ; preds = %list_move_tail.exit
  %53 = ptrtoint ptr %num_queued to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_queued, align 4
  %capacity = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 1
  %55 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %capacity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %57 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_present_mask, i32 noundef %57) #5
  %sub.neg = add i32 %56, 1
  %sub72 = sub i32 %sub.neg, %call4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %sub72)
  %cmp73.not = icmp ult i32 %54, %sub72
  br i1 %cmp73.not, label %land.lhs.true.if.end79_crit_edge, label %if.then75

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

if.then75:                                        ; preds = %land.lhs.true
  %58 = ptrtoint ptr %overfull to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %overfull, align 4
  %59 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %queue, align 4
  %tx_locked_cnt.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 9
  %61 = ptrtoint ptr %tx_locked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_locked_cnt.i, align 4
  %inc.i = add i32 %62, 1
  store i32 %inc.i, ptr %tx_locked_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i116 = icmp eq i32 %62, 0
  br i1 %cmp.i116, label %do.body.i, label %if.then75.__cw1200_queue_lock.exit_crit_edge

if.then75.__cw1200_queue_lock.exit_crit_edge:     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  br label %__cw1200_queue_lock.exit

do.body.i:                                        ; preds = %if.then75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cw1200_queue_lock.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_queue_put, %if.then4.i)) #5
          to label %do.end.i [label %if.then4.i], !srcloc !36

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %queue_id to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %queue_id, align 4
  %conv.i117 = zext i8 %64 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cw1200_queue_lock.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.11, i32 noundef %conv.i117) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %priv.i = getelementptr inbounds %struct.cw1200_queue_stats, ptr %60, i32 0, i32 6
  %65 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %69 = ptrtoint ptr %queue_id to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %queue_id, align 4
  %conv6.i118 = zext i8 %70 to i32
  tail call void @ieee80211_stop_queue(ptr noundef %68, i32 noundef %conv6.i118) #5
  br label %__cw1200_queue_lock.exit

__cw1200_queue_lock.exit:                         ; preds = %do.end.i, %if.then75.__cw1200_queue_lock.exit_crit_edge
  %gc = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %call77 = tail call i32 @mod_timer(ptr noundef %gc, i32 noundef %71) #5
  br label %if.end79

if.end79:                                         ; preds = %__cw1200_queue_lock.exit, %land.lhs.true.if.end79_crit_edge, %list_move_tail.exit.if.end79_crit_edge, %do.end
  %ret.0 = phi i32 [ -2, %do.end ], [ 0, %__cw1200_queue_lock.exit ], [ 0, %land.lhs.true.if.end79_crit_edge ], [ 0, %list_move_tail.exit.if.end79_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end79 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_queue_get(ptr noundef %queue, i32 noundef %link_id_map, ptr nocapture noundef %tx, ptr nocapture noundef writeonly %tx_info, ptr nocapture noundef writeonly %txpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %lock = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %queue2 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %item.0.in = phi ptr [ %queue2, %entry ], [ %item.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %item.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %item.0 = load ptr, ptr %item.0.in, align 4
  %cmp.not = icmp eq ptr %item.0, %queue2
  br i1 %cmp.not, label %do.end, label %for.body

for.body:                                         ; preds = %for.cond
  %txpriv4 = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.0, i32 0, i32 5
  %3 = ptrtoint ptr %txpriv4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %txpriv4, align 4
  %conv = zext i8 %4 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %link_id_map
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %if.then35.critedge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  br label %if.end58

if.then35.critedge:                               ; preds = %for.body
  %skb = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.0, i32 0, i32 1
  %5 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %tx, align 4
  %10 = load ptr, ptr %skb, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %tx_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cb.i, ptr %tx_info, align 4
  %12 = ptrtoint ptr %txpriv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %txpriv4, ptr %txpriv, align 4
  %packet_id = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.0, i32 0, i32 2
  %13 = ptrtoint ptr %packet_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %packet_id, align 4
  %15 = load ptr, ptr %tx, align 4
  %packet_id38 = getelementptr inbounds %struct.wsm_tx, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %packet_id38 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %14, ptr %packet_id38, align 1
  %pending = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %item.0) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then35.critedge.__list_del_entry.exit.i_crit_edge

if.then35.critedge.__list_del_entry.exit.i_crit_edge: ; preds = %if.then35.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then35.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %item.0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %item.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %item.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then35.critedge.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %item.0, ptr noundef %24, ptr noundef %pending) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %item.0, ptr %prev.i2.i, align 4
  %26 = ptrtoint ptr %item.0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %pending, ptr %item.0, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %item.0, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %item.0, ptr %24, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %num_pending = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 3
  %29 = ptrtoint ptr %num_pending to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_pending, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %num_pending, align 4
  %link_map_cache = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 10
  %31 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link_map_cache, align 4
  %33 = ptrtoint ptr %txpriv4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %txpriv4, align 4
  %idxprom = zext i8 %34 to i32
  %arrayidx = getelementptr i32, ptr %32, i32 %idxprom
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %36, -1
  store i32 %dec, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %xmit_timestamp = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.0, i32 0, i32 4
  %38 = ptrtoint ptr %xmit_timestamp to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %xmit_timestamp, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #5
  %num_queued = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %num_queued to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_queued, align 4
  %dec43 = add i32 %40, -1
  store i32 %dec43, ptr %num_queued, align 4
  %link_map_cache44 = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %link_map_cache44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %link_map_cache44, align 4
  %43 = ptrtoint ptr %txpriv4 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %txpriv4, align 4
  %idxprom47 = zext i8 %44 to i32
  %arrayidx48 = getelementptr i32, ptr %42, i32 %idxprom47
  %45 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx48, align 4
  %dec49 = add i32 %46, -1
  store i32 %dec49, ptr %arrayidx48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec49)
  %tobool50.not = icmp eq i32 %dec49, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %1) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  br i1 %tobool50.not, label %if.then57, label %list_move_tail.exit.if.end58_crit_edge

list_move_tail.exit.if.end58_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then57:                                        ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %wait_link_id_empty = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait_link_id_empty, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %list_move_tail.exit.if.end58_crit_edge, %do.end
  %ret.084 = phi i32 [ -2, %do.end ], [ 0, %if.then57 ], [ 0, %list_move_tail.exit.if.end58_crit_edge ]
  ret i32 %ret.084
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_queue_requeue(ptr noundef %queue, i32 noundef %packet_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %shr1.i = lshr i32 %packet_id, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %shr4.i = lshr i32 %packet_id, 16
  %conv6.i = trunc i32 %shr4.i to i8
  %pool = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 5
  %2 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool, align 4
  %idxprom = and i32 %packet_id, 255
  %arrayidx = getelementptr %struct.cw1200_queue_item, ptr %3, i32 %idxprom
  %lock = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %queue_id2 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 13
  %4 = ptrtoint ptr %queue_id2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %queue_id2, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %conv6.i)
  %cmp.not = icmp eq i8 %5, %conv6.i
  br i1 %cmp.not, label %do.end11, label %do.body6, !prof !37

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/queue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 382, 0\0A.popsection", ""() #5, !srcloc !39
  unreachable

do.end11:                                         ; preds = %entry
  %shr7.i = lshr i32 %packet_id, 24
  %conv9.i = trunc i32 %shr7.i to i8
  %generation = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 14
  %6 = ptrtoint ptr %generation to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %generation, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %conv9.i)
  %cmp14.not = icmp eq i8 %7, %conv9.i
  br i1 %cmp14.not, label %if.else, label %do.end11.if.end96_crit_edge

do.end11.if.end96_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

if.else:                                          ; preds = %do.end11
  %capacity = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 1
  %8 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %capacity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %idxprom)
  %cmp18.not = icmp ugt i32 %9, %idxprom
  br i1 %cmp18.not, label %if.else45, label %do.end32

do.end32:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 386, i32 noundef 9, ptr noundef null) #5
  br label %if.end96

if.else45:                                        ; preds = %if.else
  %generation46 = getelementptr %struct.cw1200_queue_item, ptr %3, i32 %idxprom, i32 6
  %10 = ptrtoint ptr %generation46 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %generation46, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %conv3.i)
  %cmp49.not = icmp eq i8 %11, %conv3.i
  br i1 %cmp49.not, label %if.else78, label %do.end64

do.end64:                                         ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 389, i32 noundef 9, ptr noundef null) #5
  br label %if.end96

if.else78:                                        ; preds = %if.else45
  %num_pending = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 3
  %12 = ptrtoint ptr %num_pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_pending, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %num_pending, align 4
  %link_map_cache = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 10
  %14 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link_map_cache, align 4
  %txpriv = getelementptr %struct.cw1200_queue_item, ptr %3, i32 %idxprom, i32 5
  %16 = ptrtoint ptr %txpriv to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %txpriv, align 4
  %idxprom79 = zext i8 %17 to i32
  %arrayidx80 = getelementptr i32, ptr %15, i32 %idxprom79
  %18 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx80, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %arrayidx80, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #5
  %num_queued = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %num_queued to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_queued, align 4
  %inc82 = add i32 %21, 1
  store i32 %inc82, ptr %num_queued, align 4
  %link_map_cache83 = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %link_map_cache83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link_map_cache83, align 4
  %24 = ptrtoint ptr %txpriv to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %txpriv, align 4
  %idxprom86 = zext i8 %25 to i32
  %arrayidx87 = getelementptr i32, ptr %23, i32 %idxprom86
  %26 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx87, align 4
  %inc88 = add i32 %27, 1
  store i32 %inc88, ptr %arrayidx87, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %1) #5
  %inc90 = add i8 %conv3.i, 1
  %28 = ptrtoint ptr %generation46 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %inc90, ptr %generation46, align 1
  %conv1.i = zext i8 %inc90 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 8
  %or.i = or i32 %shl2.i, %idxprom
  %shl4.i = and i32 %packet_id, 16711680
  %or5.i = or i32 %or.i, %shl4.i
  %shl7.i = and i32 %packet_id, -16777216
  %or8.i = or i32 %or5.i, %shl7.i
  %packet_id92 = getelementptr %struct.cw1200_queue_item, ptr %3, i32 %idxprom, i32 2
  %29 = ptrtoint ptr %packet_id92 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or8.i, ptr %packet_id92, align 4
  %queue93 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.else78.__list_del_entry.exit.i_crit_edge

if.else78.__list_del_entry.exit.i_crit_edge:      ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.else78.__list_del_entry.exit.i_crit_edge
  %36 = ptrtoint ptr %queue93 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %queue93, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %queue93, ptr noundef %37) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end96_crit_edge

__list_del_entry.exit.i.if.end96_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx, ptr %prev1.i.i2.i, align 4
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %arrayidx, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %queue93, ptr %prev3.i.i.i, align 4
  %41 = ptrtoint ptr %queue93 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %arrayidx, ptr %queue93, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end96_crit_edge, %do.end64, %do.end32, %do.end11.if.end96_crit_edge
  %ret.0 = phi i32 [ -22, %do.end32 ], [ -2, %do.end64 ], [ -2, %do.end11.if.end96_crit_edge ], [ 0, %__list_del_entry.exit.i.if.end96_crit_edge ], [ 0, %if.end.i.i.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_queue_requeue_all(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %lock = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %pending = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 8
  %prev = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %cmp.not51 = icmp eq ptr %3, %pending
  br i1 %cmp.not51, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %num_pending = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 3
  %link_map_cache = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 10
  %num_queued = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 2
  %link_map_cache11 = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 1
  %generation19 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 14
  %queue_id = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 13
  %pool = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 5
  %queue22 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %list_move.exit.for.body_crit_edge, %for.body.lr.ph
  %item.052 = phi ptr [ %3, %for.body.lr.ph ], [ %tmp.0, %list_move.exit.for.body_crit_edge ]
  %tmp.0.in = getelementptr inbounds %struct.list_head, ptr %item.052, i32 0, i32 1
  %4 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %5 = ptrtoint ptr %num_pending to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_pending, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %num_pending, align 4
  %7 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %link_map_cache, align 4
  %txpriv = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.052, i32 0, i32 5
  %9 = ptrtoint ptr %txpriv to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %txpriv, align 4
  %idxprom = zext i8 %10 to i32
  %arrayidx = getelementptr i32, ptr %8, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %arrayidx, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #5
  %13 = ptrtoint ptr %num_queued to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_queued, align 4
  %inc10 = add i32 %14, 1
  store i32 %inc10, ptr %num_queued, align 4
  %15 = ptrtoint ptr %link_map_cache11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_map_cache11, align 4
  %17 = ptrtoint ptr %txpriv to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %txpriv, align 4
  %idxprom14 = zext i8 %18 to i32
  %arrayidx15 = getelementptr i32, ptr %16, i32 %idxprom14
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx15, align 4
  %inc16 = add i32 %20, 1
  store i32 %inc16, ptr %arrayidx15, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %1) #5
  %generation = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.052, i32 0, i32 6
  %21 = ptrtoint ptr %generation to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %generation, align 1
  %inc18 = add i8 %22, 1
  store i8 %inc18, ptr %generation, align 1
  %23 = ptrtoint ptr %generation19 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %generation19, align 1
  %25 = ptrtoint ptr %queue_id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %queue_id, align 4
  %27 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pool, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %item.052 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %29 = lshr exact i32 %sub.ptr.sub, 5
  %conv.i = and i32 %29, 255
  %conv1.i = zext i8 %inc18 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 8
  %or.i = or i32 %conv.i, %shl2.i
  %conv3.i = zext i8 %26 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %or5.i = or i32 %or.i, %shl4.i
  %conv6.i = zext i8 %24 to i32
  %shl7.i = shl nuw i32 %conv6.i, 24
  %or8.i = or i32 %or5.i, %shl7.i
  %packet_id = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.052, i32 0, i32 2
  %30 = ptrtoint ptr %packet_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or8.i, ptr %packet_id, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %item.052) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tmp.0.in, align 4
  %33 = ptrtoint ptr %item.052 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %item.052, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %37 = ptrtoint ptr %queue22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %queue22, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %item.052, ptr noundef %queue22, ptr noundef %38) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %item.052, ptr %prev1.i.i2.i, align 4
  %40 = ptrtoint ptr %item.052 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %item.052, align 4
  %41 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %queue22, ptr %tmp.0.in, align 4
  %42 = ptrtoint ptr %queue22 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %item.052, ptr %queue22, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %cmp.not = icmp eq ptr %tmp.0, %pending
  br i1 %cmp.not, label %list_move.exit.for.end_crit_edge, label %list_move.exit.for.body_crit_edge

list_move.exit.for.body_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_move.exit.for.end_crit_edge:                 ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_move.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_queue_remove(ptr noundef %queue, i32 noundef %packet_id) local_unnamed_addr #0 align 64 {
entry:
  %gc_txpriv = alloca %struct.cw1200_txpriv, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %gc_txpriv) #5
  %shr1.i = lshr i32 %packet_id, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %shr4.i = lshr i32 %packet_id, 16
  %conv6.i = trunc i32 %shr4.i to i8
  %pool = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 5
  %2 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool, align 4
  %idxprom = and i32 %packet_id, 255
  %arrayidx = getelementptr %struct.cw1200_queue_item, ptr %3, i32 %idxprom
  %lock = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %queue_id2 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 13
  %4 = ptrtoint ptr %queue_id2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %queue_id2, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %conv6.i)
  %cmp.not = icmp eq i8 %5, %conv6.i
  br i1 %cmp.not, label %do.end11, label %do.body6, !prof !37

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/queue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 453, 0\0A.popsection", ""() #5, !srcloc !40
  unreachable

do.end11:                                         ; preds = %entry
  %shr7.i = lshr i32 %packet_id, 24
  %conv9.i = trunc i32 %shr7.i to i8
  %generation = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 14
  %6 = ptrtoint ptr %generation to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %generation, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %conv9.i)
  %cmp14.not = icmp eq i8 %7, %conv9.i
  br i1 %cmp14.not, label %if.else, label %do.end11.if.end94.thread_crit_edge

do.end11.if.end94.thread_crit_edge:               ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94.thread

if.else:                                          ; preds = %do.end11
  %capacity = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 1
  %8 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %capacity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %idxprom)
  %cmp18.not = icmp ugt i32 %9, %idxprom
  br i1 %cmp18.not, label %if.else45, label %if.else.if.end94.thread.sink.split_crit_edge

if.else.if.end94.thread.sink.split_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94.thread.sink.split

if.else45:                                        ; preds = %if.else
  %generation46 = getelementptr %struct.cw1200_queue_item, ptr %3, i32 %idxprom, i32 6
  %10 = ptrtoint ptr %generation46 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %generation46, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %conv3.i)
  %cmp49.not = icmp eq i8 %11, %conv3.i
  br i1 %cmp49.not, label %if.else78, label %if.else45.if.end94.thread.sink.split_crit_edge

if.else45.if.end94.thread.sink.split_crit_edge:   ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94.thread.sink.split

if.else78:                                        ; preds = %if.else45
  %txpriv = getelementptr %struct.cw1200_queue_item, ptr %3, i32 %idxprom, i32 5
  %12 = call ptr @memcpy(ptr %gc_txpriv, ptr %txpriv, i32 5)
  %skb = getelementptr %struct.cw1200_queue_item, ptr %3, i32 %idxprom, i32 1
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb, align 4
  store ptr null, ptr %skb, align 4
  %num_pending = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 3
  %15 = ptrtoint ptr %num_pending to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_pending, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %num_pending, align 4
  %num_queued = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 2
  %17 = ptrtoint ptr %num_queued to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_queued, align 4
  %dec80 = add i32 %18, -1
  store i32 %dec80, ptr %num_queued, align 4
  %num_sent = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 4
  %19 = ptrtoint ptr %num_sent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_sent, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %num_sent, align 4
  %21 = ptrtoint ptr %generation46 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %generation46, align 1
  %inc82 = add i8 %22, 1
  store i8 %inc82, ptr %generation46, align 1
  %free_pool = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.else78.__list_del_entry.exit.i_crit_edge

if.else78.__list_del_entry.exit.i_crit_edge:      ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.else78.__list_del_entry.exit.i_crit_edge
  %29 = ptrtoint ptr %free_pool to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %free_pool, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %free_pool, ptr noundef %30) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx, ptr %prev1.i.i2.i, align 4
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %arrayidx, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %free_pool, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %free_pool to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx, ptr %free_pool, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %overfull = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 11
  %35 = ptrtoint ptr %overfull to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %overfull, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool83.not = icmp eq i8 %36, 0
  br i1 %tobool83.not, label %list_move.exit.if.end94_crit_edge, label %land.lhs.true

list_move.exit.if.end94_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

land.lhs.true:                                    ; preds = %list_move.exit
  %37 = ptrtoint ptr %num_queued to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_queued, align 4
  %39 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %capacity, align 4
  %shr = lshr i32 %40, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %shr)
  %cmp87.not = icmp ugt i32 %38, %shr
  br i1 %cmp87.not, label %land.lhs.true.if.end94_crit_edge, label %if.then89

land.lhs.true.if.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then89:                                        ; preds = %land.lhs.true
  %41 = ptrtoint ptr %overfull to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %overfull, align 4
  %42 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %queue, align 4
  %tx_locked_cnt.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 9
  %44 = ptrtoint ptr %tx_locked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_locked_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %do.body5.i, label %do.end10.i, !prof !32

do.body5.i:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/queue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #5, !srcloc !35
  unreachable

do.end10.i:                                       ; preds = %if.then89
  %dec.i = add i32 %45, -1
  %46 = ptrtoint ptr %tx_locked_cnt.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %dec.i, ptr %tx_locked_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %do.body13.i, label %do.end10.i.if.end94_crit_edge

do.end10.i.if.end94_crit_edge:                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

do.body13.i:                                      ; preds = %do.end10.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cw1200_queue_unlock.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_queue_remove, %if.then21.i)) #5
          to label %do.end24.i [label %if.then21.i], !srcloc !36

if.then21.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %queue_id2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %queue_id2, align 4
  %conv.i123 = zext i8 %48 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cw1200_queue_unlock.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.9, i32 noundef %conv.i123) #5
  br label %do.end24.i

do.end24.i:                                       ; preds = %if.then21.i, %do.body13.i
  %priv.i = getelementptr inbounds %struct.cw1200_queue_stats, ptr %43, i32 0, i32 6
  %49 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %queue_id2 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %queue_id2, align 4
  %conv26.i = zext i8 %54 to i32
  tail call void @ieee80211_wake_queue(ptr noundef %52, i32 noundef %conv26.i) #5
  br label %if.end94

if.end94.thread.sink.split:                       ; preds = %if.else45.if.end94.thread.sink.split_crit_edge, %if.else.if.end94.thread.sink.split_crit_edge
  %.sink = phi i32 [ 457, %if.else.if.end94.thread.sink.split_crit_edge ], [ 460, %if.else45.if.end94.thread.sink.split_crit_edge ]
  %ret.0.ph.ph = phi i32 [ -22, %if.else.if.end94.thread.sink.split_crit_edge ], [ -2, %if.else45.if.end94.thread.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #5
  br label %if.end94.thread

if.end94.thread:                                  ; preds = %if.end94.thread.sink.split, %do.end11.if.end94.thread_crit_edge
  %ret.0.ph = phi i32 [ -2, %do.end11.if.end94.thread_crit_edge ], [ %ret.0.ph.ph, %if.end94.thread.sink.split ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  br label %if.end98

if.end94:                                         ; preds = %do.end24.i, %do.end10.i.if.end94_crit_edge, %land.lhs.true.if.end94_crit_edge, %list_move.exit.if.end94_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %tobool96.not = icmp eq ptr %14, null
  br i1 %tobool96.not, label %if.end94.if.end98_crit_edge, label %if.then97

if.end94.if.end98_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  %skb_dtor = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 5
  %55 = ptrtoint ptr %skb_dtor to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skb_dtor, align 4
  %priv = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 6
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv, align 4
  call void %56(ptr noundef %58, ptr noundef nonnull %14, ptr noundef nonnull %gc_txpriv) #5
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end94.if.end98_crit_edge, %if.end94.thread
  %ret.0128 = phi i32 [ %ret.0.ph, %if.end94.thread ], [ 0, %if.then97 ], [ 0, %if.end94.if.end98_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %gc_txpriv) #5
  ret i32 %ret.0128
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_queue_get_skb(ptr noundef %queue, i32 noundef %packet_id, ptr nocapture noundef writeonly %skb, ptr nocapture noundef writeonly %txpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr1.i = lshr i32 %packet_id, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %shr4.i = lshr i32 %packet_id, 16
  %conv6.i = trunc i32 %shr4.i to i8
  %pool = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 5
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  %idxprom = and i32 %packet_id, 255
  %lock = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %queue_id1 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 13
  %2 = ptrtoint ptr %queue_id1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %queue_id1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %conv6.i)
  %cmp.not = icmp eq i8 %3, %conv6.i
  br i1 %cmp.not, label %do.end10, label %do.body5, !prof !37

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/queue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 502, 0\0A.popsection", ""() #5, !srcloc !41
  unreachable

do.end10:                                         ; preds = %entry
  %shr7.i = lshr i32 %packet_id, 24
  %conv9.i = trunc i32 %shr7.i to i8
  %generation = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 14
  %4 = ptrtoint ptr %generation to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %generation, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %conv9.i)
  %cmp13.not = icmp eq i8 %5, %conv9.i
  br i1 %cmp13.not, label %if.else, label %do.end10.if.end82_crit_edge

do.end10.if.end82_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.else:                                          ; preds = %do.end10
  %capacity = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 1
  %6 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %capacity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %idxprom)
  %cmp17.not = icmp ugt i32 %7, %idxprom
  br i1 %cmp17.not, label %if.else44, label %do.end31

do.end31:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 506, i32 noundef 9, ptr noundef null) #5
  br label %if.end82

if.else44:                                        ; preds = %if.else
  %generation45 = getelementptr %struct.cw1200_queue_item, ptr %1, i32 %idxprom, i32 6
  %8 = ptrtoint ptr %generation45 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %generation45, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %conv3.i)
  %cmp48.not = icmp eq i8 %9, %conv3.i
  br i1 %cmp48.not, label %if.else77, label %do.end63

do.end63:                                         ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 509, i32 noundef 9, ptr noundef null) #5
  br label %if.end82

if.else77:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #7
  %skb78 = getelementptr %struct.cw1200_queue_item, ptr %1, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %skb78 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb78, align 4
  %12 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %skb, align 4
  %txpriv79 = getelementptr %struct.cw1200_queue_item, ptr %1, i32 %idxprom, i32 5
  %13 = ptrtoint ptr %txpriv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %txpriv79, ptr %txpriv, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.else77, %do.end63, %do.end31, %do.end10.if.end82_crit_edge
  %ret.0 = phi i32 [ -22, %do.end31 ], [ -2, %do.end63 ], [ 0, %if.else77 ], [ -2, %do.end10.if.end82_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_queue_lock(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %tx_locked_cnt.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 9
  %2 = ptrtoint ptr %tx_locked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_locked_cnt.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %tx_locked_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %do.body.i, label %entry.__cw1200_queue_lock.exit_crit_edge

entry.__cw1200_queue_lock.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__cw1200_queue_lock.exit

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cw1200_queue_lock.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_queue_lock, %if.then4.i)) #5
          to label %do.end.i [label %if.then4.i], !srcloc !36

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %queue_id.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 13
  %4 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %queue_id.i, align 4
  %conv.i = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cw1200_queue_lock.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %priv.i = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %queue_id5.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 13
  %10 = ptrtoint ptr %queue_id5.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %queue_id5.i, align 4
  %conv6.i = zext i8 %11 to i32
  tail call void @ieee80211_stop_queue(ptr noundef %9, i32 noundef %conv6.i) #5
  br label %__cw1200_queue_lock.exit

__cw1200_queue_lock.exit:                         ; preds = %do.end.i, %entry.__cw1200_queue_lock.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_queue_unlock(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %tx_locked_cnt.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 9
  %2 = ptrtoint ptr %tx_locked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_locked_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.body5.i, label %do.end10.i, !prof !32

do.body5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/queue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #5, !srcloc !35
  unreachable

do.end10.i:                                       ; preds = %entry
  %dec.i = add i32 %3, -1
  %4 = ptrtoint ptr %tx_locked_cnt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec.i, ptr %tx_locked_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %do.body13.i, label %do.end10.i.__cw1200_queue_unlock.exit_crit_edge

do.end10.i.__cw1200_queue_unlock.exit_crit_edge:  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__cw1200_queue_unlock.exit

do.body13.i:                                      ; preds = %do.end10.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cw1200_queue_unlock.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_queue_unlock, %if.then21.i)) #5
          to label %do.end24.i [label %if.then21.i], !srcloc !36

if.then21.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %queue_id.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 13
  %5 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %queue_id.i, align 4
  %conv.i = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cw1200_queue_unlock.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #5
  br label %do.end24.i

do.end24.i:                                       ; preds = %if.then21.i, %do.body13.i
  %priv.i = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %queue_id25.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 13
  %11 = ptrtoint ptr %queue_id25.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %queue_id25.i, align 4
  %conv26.i = zext i8 %12 to i32
  tail call void @ieee80211_wake_queue(ptr noundef %10, i32 noundef %conv26.i) #5
  br label %__cw1200_queue_unlock.exit

__cw1200_queue_unlock.exit:                       ; preds = %do.end24.i, %do.end10.i.__cw1200_queue_unlock.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cw1200_queue_get_xmit_timestamp(ptr noundef %queue, ptr nocapture noundef %timestamp, i32 noundef %pending_frame_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %pending = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 8
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending, align 4
  %cmp.i = icmp ne ptr %1, %pending
  br i1 %cmp.i, label %for.cond.preheader, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %item.029 = load ptr, ptr %pending, align 4
  %cmp.not30 = icmp eq ptr %item.029, %pending
  br i1 %cmp.not30, label %for.cond.preheader.if.end16_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end16_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %item.031 = phi ptr [ %item.0, %for.inc.for.body_crit_edge ], [ %item.029, %for.cond.preheader.for.body_crit_edge ]
  %packet_id = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.031, i32 0, i32 2
  %3 = ptrtoint ptr %packet_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %packet_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %pending_frame_id)
  %cmp5.not = icmp eq i32 %4, %pending_frame_id
  br i1 %cmp5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then6:                                         ; preds = %for.body
  %xmit_timestamp = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.031, i32 0, i32 4
  %5 = ptrtoint ptr %xmit_timestamp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xmit_timestamp, align 4
  %7 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timestamp, align 4
  %sub = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp7 = icmp slt i32 %sub, 0
  br i1 %cmp7, label %if.then8, label %if.then6.for.inc_crit_edge

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %timestamp, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.then6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %item.031 to i32
  call void @__asan_load4_noabort(i32 %10)
  %item.0 = load ptr, ptr %item.031, align 4
  %cmp.not = icmp eq ptr %item.0, %pending
  br i1 %cmp.not, label %for.inc.if.end16_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end16_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end16:                                         ; preds = %for.inc.if.end16_crit_edge, %for.cond.preheader.if.end16_crit_edge, %entry.if.end16_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cw1200_queue_stats_is_empty(ptr noundef %stats, i32 noundef %link_id_map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef %stats) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %link_id_map)
  %cmp = icmp eq i32 %link_id_map, -1
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %link_map_cache = getelementptr inbounds %struct.cw1200_queue_stats, ptr %stats, i32 0, i32 1
  %map_capacity = getelementptr inbounds %struct.cw1200_queue_stats, ptr %stats, i32 0, i32 3
  %0 = ptrtoint ptr %map_capacity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_capacity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp219.not = icmp eq i32 %1, 0
  br i1 %cmp219.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %num_queued = getelementptr inbounds %struct.cw1200_queue_stats, ptr %stats, i32 0, i32 2
  %2 = ptrtoint ptr %num_queued to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br label %if.end7

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %cmp222 = phi i1 [ %cmp2, %for.inc.for.body_crit_edge ], [ true, %for.cond.preheader.for.body_crit_edge ]
  %i.020 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.020
  %and = and i32 %shl, %link_id_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then3:                                         ; preds = %for.body
  %4 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_map_cache, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %i.020
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.then3.for.inc_crit_edge, label %if.then3.for.end_crit_edge

if.then3.for.end_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.then3.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.020, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %cmp2 = icmp ult i32 %inc, %1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then3.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %cmp2.lcssa = phi i1 [ false, %for.cond.preheader.for.end_crit_edge ], [ %cmp222, %if.then3.for.end_crit_edge ], [ %cmp2, %for.inc.for.end_crit_edge ]
  %8 = xor i1 %cmp2.lcssa, true
  br label %if.end7

if.end7:                                          ; preds = %for.end, %if.then
  %empty.1.off0 = phi i1 [ %cmp1, %if.then ], [ %8, %for.end ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats) #5
  ret i1 %empty.1.off0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cw1200_queue_gc(ptr noundef %queue, ptr noundef %head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %queue2 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 6
  %2 = ptrtoint ptr %queue2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue2, align 4
  %cmp.not10 = icmp eq ptr %3, %queue2
  br i1 %cmp.not10, label %entry.if.end32_crit_edge, label %for.body.lr.ph

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

for.body.lr.ph:                                   ; preds = %entry
  %ttl = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 16
  %num_queued = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 2
  %link_map_cache = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 10
  %num_queued13 = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 2
  %link_map_cache15 = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 1
  %priv = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %free_pool = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 7
  %prev.i2.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 7, i32 1
  br label %for.body

for.body:                                         ; preds = %list_move_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %item.012 = phi ptr [ %3, %for.body.lr.ph ], [ %tmp.014, %list_move_tail.exit.for.body_crit_edge ]
  %wakeup_stats.0.off011 = phi i1 [ false, %for.body.lr.ph ], [ %spec.select, %list_move_tail.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %item.012 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.014 = load ptr, ptr %item.012, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %queue_timestamp = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.012, i32 0, i32 3
  %6 = ptrtoint ptr %queue_timestamp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_timestamp, align 4
  %sub = sub i32 %5, %7
  %8 = ptrtoint ptr %ttl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ttl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp11 = icmp ult i32 %sub, %9
  br i1 %cmp11, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %num_queued to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_queued, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %num_queued, align 4
  %12 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_map_cache, align 4
  %txpriv = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.012, i32 0, i32 5
  %14 = ptrtoint ptr %txpriv to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %txpriv, align 4
  %idxprom = zext i8 %15 to i32
  %arrayidx = getelementptr i32, ptr %13, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %dec12 = add i32 %17, -1
  store i32 %dec12, ptr %arrayidx, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #5
  %18 = ptrtoint ptr %num_queued13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_queued13, align 4
  %dec14 = add i32 %19, -1
  store i32 %dec14, ptr %num_queued13, align 4
  %20 = ptrtoint ptr %link_map_cache15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link_map_cache15, align 4
  %22 = ptrtoint ptr %txpriv to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %txpriv, align 4
  %idxprom18 = zext i8 %23 to i32
  %arrayidx19 = getelementptr i32, ptr %21, i32 %idxprom18
  %24 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx19, align 4
  %dec20 = add i32 %25, -1
  store i32 %dec20, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec20)
  %tobool.not = icmp eq i32 %dec20, 0
  %spec.select = select i1 %tobool.not, i1 true, i1 %wakeup_stats.0.off011
  tail call void @_raw_spin_unlock_bh(ptr noundef %1) #5
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %debug.i = getelementptr inbounds %struct.cw1200_common, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %debug.i, align 4
  %tx_ttl.i = getelementptr inbounds %struct.cw1200_debug_priv, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %tx_ttl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_ttl.i, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %tx_ttl.i, align 4
  %call.i = tail call ptr @kmemdup(ptr noundef %item.012, i32 noundef 32, i32 noundef 2592) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !32

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/queue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 84, 0\0A.popsection", ""() #5, !srcloc !33
  unreachable

do.end9.i:                                        ; preds = %if.end
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %33, ptr noundef %head) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end9.i.cw1200_queue_register_post_gc.exit_crit_edge

do.end9.i.cw1200_queue_register_post_gc.exit_crit_edge: ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cw1200_queue_register_post_gc.exit

if.end.i.i.i:                                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %head, ptr %call.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call.i, ptr %33, align 4
  br label %cw1200_queue_register_post_gc.exit

cw1200_queue_register_post_gc.exit:               ; preds = %if.end.i.i.i, %do.end9.i.cw1200_queue_register_post_gc.exit_crit_edge
  %skb = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.012, i32 0, i32 1
  %38 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %skb, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %item.012) #5
  br i1 %call.i.i, label %if.end.i.i, label %cw1200_queue_register_post_gc.exit.__list_del_entry.exit.i_crit_edge

cw1200_queue_register_post_gc.exit.__list_del_entry.exit.i_crit_edge: ; preds = %cw1200_queue_register_post_gc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %cw1200_queue_register_post_gc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i2 = getelementptr inbounds %struct.list_head, ptr %item.012, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i2, align 4
  %41 = ptrtoint ptr %item.012 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %item.012, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %cw1200_queue_register_post_gc.exit.__list_del_entry.exit.i_crit_edge
  %45 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i3 = tail call zeroext i1 @__list_add_valid(ptr noundef %item.012, ptr noundef %46, ptr noundef %free_pool) #5
  br i1 %call.i.i.i3, label %if.end.i.i.i5, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move_tail.exit

if.end.i.i.i5:                                    ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %item.012, ptr %prev.i2.i, align 4
  %48 = ptrtoint ptr %item.012 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %free_pool, ptr %item.012, align 4
  %prev3.i.i.i4 = getelementptr inbounds %struct.list_head, ptr %item.012, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i.i4, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %item.012, ptr %46, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i5, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %cmp.not = icmp eq ptr %tmp.014, %queue2
  br i1 %cmp.not, label %list_move_tail.exit.for.end_crit_edge, label %list_move_tail.exit.for.body_crit_edge

list_move_tail.exit.for.body_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_move_tail.exit.for.end_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_move_tail.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %wakeup_stats.0.off0.lcssa = phi i1 [ %spec.select, %list_move_tail.exit.for.end_crit_edge ], [ %wakeup_stats.0.off011, %for.body.for.end_crit_edge ]
  %item.0.lcssa = phi ptr [ %queue2, %list_move_tail.exit.for.end_crit_edge ], [ %item.012, %for.body.for.end_crit_edge ]
  br i1 %wakeup_stats.0.off0.lcssa, label %if.then31, label %for.end.if.end32_crit_edge

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %wait_link_id_empty = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait_link_id_empty, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %for.end.if.end32_crit_edge, %entry.if.end32_crit_edge
  %item.0.lcssa20 = phi ptr [ %item.0.lcssa, %if.then31 ], [ %item.0.lcssa, %for.end.if.end32_crit_edge ], [ %queue2, %entry.if.end32_crit_edge ]
  %overfull = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 11
  %51 = ptrtoint ptr %overfull to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %overfull, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool33.not = icmp eq i8 %52, 0
  br i1 %tobool33.not, label %if.end32.if.end50_crit_edge, label %if.then34

if.end32.if.end50_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then34:                                        ; preds = %if.end32
  %num_queued35 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 2
  %53 = ptrtoint ptr %num_queued35 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_queued35, align 4
  %capacity = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 1
  %55 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %capacity, align 4
  %shr = lshr i32 %56, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %shr)
  %cmp36.not = icmp ugt i32 %54, %shr
  br i1 %cmp36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.then34
  %57 = ptrtoint ptr %overfull to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %overfull, align 4
  %58 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %queue, align 4
  %tx_locked_cnt.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 9
  %60 = ptrtoint ptr %tx_locked_cnt.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_locked_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i6 = icmp eq i32 %61, 0
  br i1 %tobool.not.i6, label %do.body5.i, label %do.end10.i, !prof !32

do.body5.i:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/queue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #5, !srcloc !35
  unreachable

do.end10.i:                                       ; preds = %if.then37
  %dec.i = add i32 %61, -1
  %62 = ptrtoint ptr %tx_locked_cnt.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %dec.i, ptr %tx_locked_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %do.body13.i, label %do.end10.i.if.end50_crit_edge

do.end10.i.if.end50_crit_edge:                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

do.body13.i:                                      ; preds = %do.end10.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cw1200_queue_unlock.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__cw1200_queue_gc, %if.then21.i)) #5
          to label %do.end24.i [label %if.then21.i], !srcloc !36

if.then21.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %queue_id.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 13
  %63 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %queue_id.i, align 4
  %conv.i = zext i8 %64 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cw1200_queue_unlock.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #5
  br label %do.end24.i

do.end24.i:                                       ; preds = %if.then21.i, %do.body13.i
  %priv.i = getelementptr inbounds %struct.cw1200_queue_stats, ptr %59, i32 0, i32 6
  %65 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %queue_id25.i = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 13
  %69 = ptrtoint ptr %queue_id25.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %queue_id25.i, align 4
  %conv26.i = zext i8 %70 to i32
  tail call void @ieee80211_wake_queue(ptr noundef %68, i32 noundef %conv26.i) #5
  br label %if.end50

if.else:                                          ; preds = %if.then34
  %tobool42.not = icmp eq ptr %item.0.lcssa20, null
  br i1 %tobool42.not, label %if.else.if.end50_crit_edge, label %if.then43

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %queue_timestamp44 = getelementptr inbounds %struct.cw1200_queue_item, ptr %item.0.lcssa20, i32 0, i32 3
  %71 = ptrtoint ptr %queue_timestamp44 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %queue_timestamp44, align 4
  %ttl45 = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 16
  %73 = ptrtoint ptr %ttl45 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ttl45, align 4
  %add = add i32 %74, %72
  %gc = getelementptr inbounds %struct.cw1200_queue, ptr %queue, i32 0, i32 15
  %call = tail call i32 @mod_timer(ptr noundef %gc, i32 noundef %add) #5
  %priv46 = getelementptr inbounds %struct.cw1200_queue_stats, ptr %1, i32 0, i32 6
  %75 = ptrtoint ptr %priv46 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv46, align 4
  %pm_state = getelementptr inbounds %struct.cw1200_common, ptr %76, i32 0, i32 58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %sub47 = sub i32 %add, %77
  tail call void @cw1200_pm_stay_awake(ptr noundef %pm_state, i32 noundef %sub47) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then43, %if.else.if.end50_crit_edge, %do.end24.i, %do.end10.i.if.end50_crit_edge, %if.end32.if.end50_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_pm_stay_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !16, !17, !18, !19, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @cw1200_queue_stats_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/st/cw1200/queue.c", i32 150, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @cw1200_queue_stats_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/st/cw1200/queue.c", i32 151, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cw1200_queue_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/st/cw1200/queue.c", i32 177, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cw1200_queue_init.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/st/cw1200/queue.c", i32 178, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/st/cw1200/queue.c", i32 210, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/st/cw1200/queue.c", i32 41, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__cw1200_queue_unlock.__UNIQUE_ID_ddebug349, !15, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/st/cw1200/queue.c", i32 30, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__cw1200_queue_lock.__UNIQUE_ID_ddebug348, !20, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{i64 2157425051, i64 2157425553, i64 2157425088, i64 2157425144, i64 2157425178, i64 2157425202, i64 2157425243, i64 2157425264, i64 2157425292, i64 2157425326}
!34 = !{i8 0, i8 2}
!35 = !{i64 2157415907, i64 2157416409, i64 2157415944, i64 2157416000, i64 2157416034, i64 2157416058, i64 2157416099, i64 2157416120, i64 2157416148, i64 2157416182}
!36 = !{i64 2148435455, i64 2148435460, i64 2148435473, i64 2148435517, i64 2148435551, i64 2148435572}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2157446115, i64 2157446618, i64 2157446152, i64 2157446208, i64 2157446242, i64 2157446266, i64 2157446307, i64 2157446328, i64 2157446356, i64 2157446390}
!39 = !{i64 2157451842, i64 2157452345, i64 2157451879, i64 2157451935, i64 2157451969, i64 2157451993, i64 2157452034, i64 2157452055, i64 2157452083, i64 2157452117}
!40 = !{i64 2157459341, i64 2157459844, i64 2157459378, i64 2157459434, i64 2157459468, i64 2157459492, i64 2157459533, i64 2157459554, i64 2157459582, i64 2157459616}
!41 = !{i64 2157462033, i64 2157462536, i64 2157462070, i64 2157462126, i64 2157462160, i64 2157462184, i64 2157462225, i64 2157462246, i64 2157462274, i64 2157462308}
