; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl1251/tx.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl1251/tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.acx_data_path_params_resp = type { %struct.acx_header, i16, i16, i8, i8, [2 x i8], i32, i32, i32, i32, i32 }
%struct.acx_header = type { %struct.wl1251_cmd_header, i16, i16 }
%struct.wl1251_cmd_header = type { i16, i16, [0 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.tx_double_buffer_desc = type { i16, i16, i32, i8, i8, %struct.tx_control, i16, i8, i8 }
%struct.tx_control = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.wl1251 = type { ptr, i8, ptr, ptr, i32, i32, i8, ptr, %struct.spinlock, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.boot_attr, ptr, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, i32, i8, i8, ptr, ptr, i32, %struct.sk_buff_head, i8, %struct.work_struct, [16 x ptr], i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, [2 x i32], i8, i32, i32, i32, i32, i32, i8, %struct.delayed_work, i32, i8, i8, i16, i8, i32, i32, %struct.wl1251_stats, %struct.wl1251_debugfs, i32, i32, [8 x i8], ptr, ptr, i32, [21 x i8], i8 }
%struct.boot_attr = type { i32, i8, i8, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.wl1251_stats = type { ptr, i32, i32, i32 }
%struct.wl1251_debugfs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tx_result = type { i8, i8, i16, i32, i32, i8, i8, i16, i16, i8, i8 }

@enable_tx_for_packet_injection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014wl1251: WARNING join failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"enable_tx_for_packet_injection\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/ti/wl1251/tx.c\00", [60 x i8] zeroinitializer }, align 32
@enable_tx_for_packet_injection._entry_ptr = internal global ptr @enable_tx_for_packet_injection._entry, section ".printk_index", align 4
@enable_tx_for_packet_injection._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014wl1251: WARNING join timeout\0A\00", [32 x i8] zeroinitializer }, align 32
@enable_tx_for_packet_injection._entry_ptr.5 = internal global ptr @enable_tx_for_packet_injection._entry.3, section ".printk_index", align 4
@ieee80211_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@wl1251_tx_packet_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013wl1251: ERROR SKB for packet %d is NULL\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wl1251_tx_packet_cb\00", [44 x i8] zeroinitializer }, align 32
@wl1251_tx_packet_cb._entry_ptr = internal global ptr @wl1251_tx_packet_cb._entry, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 275, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 281, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 2737, i32 6 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [39 x i8] c"../drivers/net/wireless/ti/wl1251/tx.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 405, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @enable_tx_for_packet_injection._entry, ptr @enable_tx_for_packet_injection._entry.3, ptr @enable_tx_for_packet_injection._entry_ptr, ptr @enable_tx_for_packet_injection._entry_ptr.5, ptr @wl1251_tx_packet_cb._entry, ptr @wl1251_tx_packet_cb._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_tx_for_packet_injection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_tx_for_packet_injection._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_tx_packet_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_tx_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -332
  %mutex = getelementptr i8, ptr %work, i32 -252
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %state = getelementptr i8, ptr %work, i32 -256
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end20_crit_edge, label %while.cond.preheader, !prof !27

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

while.cond.preheader:                             ; preds = %entry
  %tx_queue = getelementptr i8, ptr %work, i32 -60
  %call71 = tail call ptr @skb_dequeue(ptr noundef %tx_queue) #6
  %tobool2.not72 = icmp eq ptr %call71, null
  br i1 %tobool2.not72, label %while.cond.preheader.if.end20_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end20_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %monitor_present.i = getelementptr i8, ptr %work, i32 -76
  %default_key.i = getelementptr i8, ptr %work, i32 192
  %vif.i = getelementptr i8, ptr %work, i32 708
  %joined.i = getelementptr i8, ptr %work, i32 -75
  %channel.i.i = getelementptr i8, ptr %work, i32 -80
  %beacon_int.i.i = getelementptr i8, ptr %work, i32 322
  %dtim_period.i.i = getelementptr i8, ptr %work, i32 324
  %data_path.i.i = getelementptr i8, ptr %work, i32 -68
  %data_in_count1.i.i.i = getelementptr i8, ptr %work, i32 -64
  %arrayidx.i.i.i = getelementptr i8, ptr %work, i32 44
  %arrayidx.1.i.i.i = getelementptr i8, ptr %work, i32 48
  %arrayidx.2.i.i.i = getelementptr i8, ptr %work, i32 52
  %arrayidx.3.i.i.i = getelementptr i8, ptr %work, i32 56
  %arrayidx.4.i.i.i = getelementptr i8, ptr %work, i32 60
  %arrayidx.5.i.i.i = getelementptr i8, ptr %work, i32 64
  %arrayidx.6.i.i.i = getelementptr i8, ptr %work, i32 68
  %arrayidx.7.i.i.i = getelementptr i8, ptr %work, i32 72
  %arrayidx.8.i.i.i = getelementptr i8, ptr %work, i32 76
  %arrayidx.9.i.i.i = getelementptr i8, ptr %work, i32 80
  %arrayidx.10.i.i.i = getelementptr i8, ptr %work, i32 84
  %arrayidx.11.i.i.i = getelementptr i8, ptr %work, i32 88
  %arrayidx.12.i.i.i = getelementptr i8, ptr %work, i32 92
  %arrayidx.13.i.i.i = getelementptr i8, ptr %work, i32 96
  %arrayidx.14.i.i.i = getelementptr i8, ptr %work, i32 100
  %arrayidx.15.i.i.i = getelementptr i8, ptr %work, i32 104
  br label %while.body

while.body:                                       ; preds = %if.else.while.body_crit_edge, %while.body.lr.ph
  %call74 = phi ptr [ %call71, %while.body.lr.ph ], [ %call, %if.else.while.body_crit_edge ]
  %woken_up.0.off073 = phi i1 [ false, %while.body.lr.ph ], [ true, %if.else.while.body_crit_edge ]
  br i1 %woken_up.0.off073, label %while.body.if.end9_crit_edge, label %if.then4

while.body.if.end9_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then4:                                         ; preds = %while.body
  %call5 = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then4.if.end20_crit_edge, label %if.then4.if.end9_crit_edge

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then4.if.end20_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %while.body.if.end9_crit_edge
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call74, i32 0, i32 3
  %hw_key.i = getelementptr inbounds %struct.sk_buff, ptr %call74, i32 0, i32 3, i32 28
  %2 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_key.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end9.if.end20.i_crit_edge, label %if.then.i

if.end9.if.end20.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then.i:                                        ; preds = %if.end9
  %4 = ptrtoint ptr %monitor_present.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %monitor_present.i, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i.if.then15_crit_edge, !prof !29

if.then.i.if.then15_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.end.i:                                         ; preds = %if.then.i
  %hw_key_idx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %hw_key_idx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_key_idx.i, align 2
  %8 = ptrtoint ptr %default_key.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %default_key.i, align 4
  %conv.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %9, %conv.i
  br i1 %cmp.not.i, label %if.end.i.if.end20.i_crit_edge, label %if.then13.i, !prof !29

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then13.i:                                      ; preds = %if.end.i
  %call14.i = tail call i32 @wl1251_acx_default_key(ptr noundef %add.ptr, i8 noundef zeroext %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %wl1251_tx_frame.exit, label %if.then13.i.if.end20.i_crit_edge

if.then13.i.if.end20.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then13.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge, %if.end9.if.end20.i_crit_edge
  %10 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vif.i, align 4
  %cmp21.i = icmp eq ptr %11, null
  br i1 %cmp21.i, label %land.lhs.true.i, label %if.end20.i.if.end25.i_crit_edge

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

land.lhs.true.i:                                  ; preds = %if.end20.i
  %12 = ptrtoint ptr %joined.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %joined.i, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool23.not.i = icmp eq i8 %13, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %land.lhs.true.i.if.end25.i_crit_edge

land.lhs.true.i.if.end25.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then24.i:                                      ; preds = %land.lhs.true.i
  %14 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel.i.i, align 4
  %conv.i.i = trunc i32 %15 to i8
  %16 = ptrtoint ptr %beacon_int.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %beacon_int.i.i, align 2
  %18 = ptrtoint ptr %dtim_period.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dtim_period.i.i, align 4
  %call.i.i = tail call i32 @wl1251_cmd_join(ptr noundef %add.ptr, i8 noundef zeroext 2, i8 noundef zeroext %conv.i.i, i16 noundef zeroext %17, i8 noundef zeroext %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %if.end25.i

if.end.i.i:                                       ; preds = %if.then24.i
  %call3.i.i = tail call i32 @wl1251_event_wait(ptr noundef %add.ptr, i32 noundef 8192, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %do.end9.i.i, label %if.end12.i.i

do.end9.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %if.end25.i

if.end12.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %joined.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %joined.i, align 1
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end12.i.i, %do.end9.i.i, %do.end.i.i, %land.lhs.true.i.if.end25.i_crit_edge, %if.end20.i.if.end25.i_crit_edge
  %21 = ptrtoint ptr %data_path.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data_path.i.i, align 4
  %tx_control_addr.i.i = getelementptr inbounds %struct.acx_data_path_params_resp, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %tx_control_addr.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %tx_control_addr.i.i, align 1
  %call.i66.i = tail call i32 @wl1251_mem_read32(ptr noundef %add.ptr, i32 noundef %24) #6
  %and.i.i = and i32 %call.i66.i, 15
  %25 = ptrtoint ptr %data_in_count1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_in_count1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %and.i.i)
  %cmp.i.i.i = icmp ult i32 %26, %and.i.i
  %add.i.i.i = add i32 %26, 16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %add.i.i.i, i32 %26
  %sub.i.i.i = sub i32 %spec.select.i.i.i, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp2.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp2.i.i.i, label %if.end25.i.if.end46.sink.split.i.i.i_crit_edge, label %if.end16.i.i.i, !prof !27

if.end25.i.if.end46.sink.split.i.i.i_crit_edge:   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.sink.split.i.i.i

if.end16.i.i.i:                                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.i)
  %cmp24.i.i.i = icmp ugt i32 %sub.i.i.i, 2
  br i1 %cmp24.i.i.i, label %if.end16.i.i.i.if.end46.sink.split.i.i.i_crit_edge, label %if.end16.i.i.i.wl1251_tx_path_status.exit.i_crit_edge, !prof !27

if.end16.i.i.i.wl1251_tx_path_status.exit.i_crit_edge: ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1251_tx_path_status.exit.i

if.end16.i.i.i.if.end46.sink.split.i.i.i_crit_edge: ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.sink.split.i.i.i

if.end46.sink.split.i.i.i:                        ; preds = %if.end16.i.i.i.if.end46.sink.split.i.i.i_crit_edge, %if.end25.i.if.end46.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 31, %if.end25.i.if.end46.sink.split.i.i.i_crit_edge ], [ 32, %if.end16.i.i.i.if.end46.sink.split.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink.i.i.i, i32 noundef 9, ptr noundef null) #6
  br label %wl1251_tx_path_status.exit.i

wl1251_tx_path_status.exit.i:                     ; preds = %if.end46.sink.split.i.i.i, %if.end16.i.i.i.wl1251_tx_path_status.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp54.i.i.i = icmp sgt i32 %sub.i.i.i, 1
  br i1 %cmp54.i.i.i, label %wl1251_tx_path_status.exit.i.if.then12_crit_edge, label %if.end.i67.i

wl1251_tx_path_status.exit.i.if.then12_crit_edge: ; preds = %wl1251_tx_path_status.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.end.i67.i:                                     ; preds = %wl1251_tx_path_status.exit.i
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp1.i.i.i = icmp eq ptr %28, null
  br i1 %cmp1.i.i.i, label %if.end.i67.i.if.end2.i.i_crit_edge, label %for.inc.i.i.i

if.end.i67.i.if.end2.i.i_crit_edge:               ; preds = %if.end.i67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i67.i
  %29 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.1.i.i.i, align 4
  %cmp1.1.i.i.i = icmp eq ptr %30, null
  br i1 %cmp1.1.i.i.i, label %for.inc.i.i.i.if.end2.i.i_crit_edge, label %for.inc.1.i.i.i

for.inc.i.i.i.if.end2.i.i_crit_edge:              ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  %31 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.2.i.i.i, align 4
  %cmp1.2.i.i.i = icmp eq ptr %32, null
  br i1 %cmp1.2.i.i.i, label %for.inc.1.i.i.i.if.end2.i.i_crit_edge, label %for.inc.2.i.i.i

for.inc.1.i.i.i.if.end2.i.i_crit_edge:            ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %33 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.3.i.i.i, align 4
  %cmp1.3.i.i.i = icmp eq ptr %34, null
  br i1 %cmp1.3.i.i.i, label %for.inc.2.i.i.i.if.end2.i.i_crit_edge, label %for.inc.3.i.i.i

for.inc.2.i.i.i.if.end2.i.i_crit_edge:            ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

for.inc.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  %35 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.4.i.i.i, align 4
  %cmp1.4.i.i.i = icmp eq ptr %36, null
  br i1 %cmp1.4.i.i.i, label %for.inc.3.i.i.i.if.end2.i.i_crit_edge, label %for.inc.4.i.i.i

for.inc.3.i.i.i.if.end2.i.i_crit_edge:            ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

for.inc.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  %37 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.5.i.i.i, align 4
  %cmp1.5.i.i.i = icmp eq ptr %38, null
  br i1 %cmp1.5.i.i.i, label %for.inc.4.i.i.i.if.end2.i.i_crit_edge, label %for.inc.5.i.i.i

for.inc.4.i.i.i.if.end2.i.i_crit_edge:            ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

for.inc.5.i.i.i:                                  ; preds = %for.inc.4.i.i.i
  %39 = ptrtoint ptr %arrayidx.6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.6.i.i.i, align 4
  %cmp1.6.i.i.i = icmp eq ptr %40, null
  br i1 %cmp1.6.i.i.i, label %for.inc.5.i.i.i.if.end2.i.i_crit_edge, label %for.inc.6.i.i.i

for.inc.5.i.i.i.if.end2.i.i_crit_edge:            ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

for.inc.6.i.i.i:                                  ; preds = %for.inc.5.i.i.i
  %41 = ptrtoint ptr %arrayidx.7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.7.i.i.i, align 4
  %cmp1.7.i.i.i = icmp eq ptr %42, null
  br i1 %cmp1.7.i.i.i, label %for.inc.6.i.i.i.if.end2.i.i_crit_edge, label %for.inc.7.i.i.i

for.inc.6.i.i.i.if.end2.i.i_crit_edge:            ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

for.inc.7.i.i.i:                                  ; preds = %for.inc.6.i.i.i
  %43 = ptrtoint ptr %arrayidx.8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.8.i.i.i, align 4
  %cmp1.8.i.i.i = icmp eq ptr %44, null
  br i1 %cmp1.8.i.i.i, label %for.inc.7.i.i.i.if.end2.i.i_crit_edge, label %for.inc.8.i.i.i

for.inc.7.i.i.i.if.end2.i.i_crit_edge:            ; preds = %for.inc.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

for.inc.8.i.i.i:                                  ; preds = %for.inc.7.i.i.i
  %45 = ptrtoint ptr %arrayidx.9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.9.i.i.i, align 4
  %cmp1.9.i.i.i = icmp eq ptr %46, null
  br i1 %cmp1.9.i.i.i, label %for.inc.8.i.i.i.if.end2.i.i_crit_edge, label %for.inc.9.i.i.i

for.inc.8.i.i.i.if.end2.i.i_crit_edge:            ; preds = %for.inc.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

for.inc.9.i.i.i:                                  ; preds = %for.inc.8.i.i.i
  %47 = ptrtoint ptr %arrayidx.10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.10.i.i.i, align 4
  %cmp1.10.i.i.i = icmp eq ptr %48, null
  br i1 %cmp1.10.i.i.i, label %for.inc.9.i.i.i.if.end2.i.i_crit_edge, label %for.inc.10.i.i.i

for.inc.9.i.i.i.if.end2.i.i_crit_edge:            ; preds = %for.inc.9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

for.inc.10.i.i.i:                                 ; preds = %for.inc.9.i.i.i
  %49 = ptrtoint ptr %arrayidx.11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.11.i.i.i, align 4
  %cmp1.11.i.i.i = icmp eq ptr %50, null
  br i1 %cmp1.11.i.i.i, label %for.inc.10.i.i.i.if.end2.i.i_crit_edge, label %for.inc.11.i.i.i

for.inc.10.i.i.i.if.end2.i.i_crit_edge:           ; preds = %for.inc.10.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

for.inc.11.i.i.i:                                 ; preds = %for.inc.10.i.i.i
  %51 = ptrtoint ptr %arrayidx.12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.12.i.i.i, align 4
  %cmp1.12.i.i.i = icmp eq ptr %52, null
  br i1 %cmp1.12.i.i.i, label %for.inc.11.i.i.i.if.end2.i.i_crit_edge, label %for.inc.12.i.i.i

for.inc.11.i.i.i.if.end2.i.i_crit_edge:           ; preds = %for.inc.11.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

for.inc.12.i.i.i:                                 ; preds = %for.inc.11.i.i.i
  %53 = ptrtoint ptr %arrayidx.13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.13.i.i.i, align 4
  %cmp1.13.i.i.i = icmp eq ptr %54, null
  br i1 %cmp1.13.i.i.i, label %for.inc.12.i.i.i.if.end2.i.i_crit_edge, label %for.inc.13.i.i.i

for.inc.12.i.i.i.if.end2.i.i_crit_edge:           ; preds = %for.inc.12.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

for.inc.13.i.i.i:                                 ; preds = %for.inc.12.i.i.i
  %55 = ptrtoint ptr %arrayidx.14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.14.i.i.i, align 4
  %cmp1.14.i.i.i = icmp eq ptr %56, null
  br i1 %cmp1.14.i.i.i, label %for.inc.13.i.i.i.if.end2.i.i_crit_edge, label %for.inc.14.i.i.i

for.inc.13.i.i.i.if.end2.i.i_crit_edge:           ; preds = %for.inc.13.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

for.inc.14.i.i.i:                                 ; preds = %for.inc.13.i.i.i
  %57 = ptrtoint ptr %arrayidx.15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.15.i.i.i, align 4
  %cmp1.15.i.i.i = icmp eq ptr %58, null
  br i1 %cmp1.15.i.i.i, label %for.inc.14.i.i.i.if.end2.i.i_crit_edge, label %for.inc.14.i.i.i.if.then12_crit_edge

for.inc.14.i.i.i.if.then12_crit_edge:             ; preds = %for.inc.14.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.inc.14.i.i.i.if.end2.i.i_crit_edge:           ; preds = %for.inc.14.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %for.inc.14.i.i.i.if.end2.i.i_crit_edge, %for.inc.13.i.i.i.if.end2.i.i_crit_edge, %for.inc.12.i.i.i.if.end2.i.i_crit_edge, %for.inc.11.i.i.i.if.end2.i.i_crit_edge, %for.inc.10.i.i.i.if.end2.i.i_crit_edge, %for.inc.9.i.i.i.if.end2.i.i_crit_edge, %for.inc.8.i.i.i.if.end2.i.i_crit_edge, %for.inc.7.i.i.i.if.end2.i.i_crit_edge, %for.inc.6.i.i.i.if.end2.i.i_crit_edge, %for.inc.5.i.i.i.if.end2.i.i_crit_edge, %for.inc.4.i.i.i.if.end2.i.i_crit_edge, %for.inc.3.i.i.i.if.end2.i.i_crit_edge, %for.inc.2.i.i.i.if.end2.i.i_crit_edge, %for.inc.1.i.i.i.if.end2.i.i_crit_edge, %for.inc.i.i.i.if.end2.i.i_crit_edge, %if.end.i67.i.if.end2.i.i_crit_edge
  %i.010.lcssa.i.i.i = phi i8 [ 0, %if.end.i67.i.if.end2.i.i_crit_edge ], [ 1, %for.inc.i.i.i.if.end2.i.i_crit_edge ], [ 2, %for.inc.1.i.i.i.if.end2.i.i_crit_edge ], [ 3, %for.inc.2.i.i.i.if.end2.i.i_crit_edge ], [ 4, %for.inc.3.i.i.i.if.end2.i.i_crit_edge ], [ 5, %for.inc.4.i.i.i.if.end2.i.i_crit_edge ], [ 6, %for.inc.5.i.i.i.if.end2.i.i_crit_edge ], [ 7, %for.inc.6.i.i.i.if.end2.i.i_crit_edge ], [ 8, %for.inc.7.i.i.i.if.end2.i.i_crit_edge ], [ 9, %for.inc.8.i.i.i.if.end2.i.i_crit_edge ], [ 10, %for.inc.9.i.i.i.if.end2.i.i_crit_edge ], [ 11, %for.inc.10.i.i.i.if.end2.i.i_crit_edge ], [ 12, %for.inc.11.i.i.i.if.end2.i.i_crit_edge ], [ 13, %for.inc.12.i.i.i.if.end2.i.i_crit_edge ], [ 14, %for.inc.13.i.i.i.if.end2.i.i_crit_edge ], [ 15, %for.inc.14.i.i.i.if.end2.i.i_crit_edge ]
  %arrayidx.lcssa.i.i.i = phi ptr [ %arrayidx.i.i.i, %if.end.i67.i.if.end2.i.i_crit_edge ], [ %arrayidx.1.i.i.i, %for.inc.i.i.i.if.end2.i.i_crit_edge ], [ %arrayidx.2.i.i.i, %for.inc.1.i.i.i.if.end2.i.i_crit_edge ], [ %arrayidx.3.i.i.i, %for.inc.2.i.i.i.if.end2.i.i_crit_edge ], [ %arrayidx.4.i.i.i, %for.inc.3.i.i.i.if.end2.i.i_crit_edge ], [ %arrayidx.5.i.i.i, %for.inc.4.i.i.i.if.end2.i.i_crit_edge ], [ %arrayidx.6.i.i.i, %for.inc.5.i.i.i.if.end2.i.i_crit_edge ], [ %arrayidx.7.i.i.i, %for.inc.6.i.i.i.if.end2.i.i_crit_edge ], [ %arrayidx.8.i.i.i, %for.inc.7.i.i.i.if.end2.i.i_crit_edge ], [ %arrayidx.9.i.i.i, %for.inc.8.i.i.i.if.end2.i.i_crit_edge ], [ %arrayidx.10.i.i.i, %for.inc.9.i.i.i.if.end2.i.i_crit_edge ], [ %arrayidx.11.i.i.i, %for.inc.10.i.i.i.if.end2.i.i_crit_edge ], [ %arrayidx.12.i.i.i, %for.inc.11.i.i.i.if.end2.i.i_crit_edge ], [ %arrayidx.13.i.i.i, %for.inc.12.i.i.i.if.end2.i.i_crit_edge ], [ %arrayidx.14.i.i.i, %for.inc.13.i.i.i.if.end2.i.i_crit_edge ], [ %arrayidx.15.i.i.i, %for.inc.14.i.i.i.if.end2.i.i_crit_edge ]
  %59 = ptrtoint ptr %arrayidx.lcssa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call74, ptr %arrayidx.lcssa.i.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call74, i32 0, i32 19
  %60 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %61, align 2
  %call3.i68.i = tail call ptr @skb_push(ptr noundef nonnull %call74, i32 noundef 16) #6
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call74, i32 0, i32 6
  %64 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.i.i, align 4
  %66 = trunc i32 %65 to i16
  %conv.i69.i = add i16 %66, -16
  %67 = tail call i16 @llvm.bswap.i16(i16 %conv.i69.i) #6
  %68 = ptrtoint ptr %call3.i68.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 %67, ptr %call3.i68.i, align 1
  %69 = getelementptr inbounds %struct.sk_buff, ptr %call74, i32 0, i32 3, i32 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp.i.i70.i = icmp slt i8 %71, 0
  br i1 %cmp.i.i70.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end2.i.i
  %.b49.i.i.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i.i.i, label %land.rhs.i.i.i.ieee80211_get_tx_rate.exit.i.i_crit_edge, label %if.then.i30.i.i, !prof !29

land.rhs.i.i.i.ieee80211_get_tx_rate.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee80211_get_tx_rate.exit.i.i

if.then.i30.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2737, i32 noundef 9, ptr noundef null) #6
  br label %ieee80211_get_tx_rate.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr, align 4
  %wiphy.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wiphy.i.i.i, align 8
  %band.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call74, i32 0, i32 3, i32 4
  %76 = ptrtoint ptr %band.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %bf.load.i.i.i = load i32, ptr %band.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 29
  %arrayidx40.i.i.i = getelementptr %struct.wiphy, ptr %75, i32 0, i32 53, i32 %bf.lshr.i.i.i
  %77 = ptrtoint ptr %arrayidx40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx40.i.i.i, align 4
  %bitrates.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %bitrates.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bitrates.i.i.i, align 4
  %idxprom51.i.i.i = zext i8 %71 to i32
  %arrayidx44.i.i.i = getelementptr %struct.ieee80211_rate, ptr %80, i32 %idxprom51.i.i.i
  br label %ieee80211_get_tx_rate.exit.i.i

ieee80211_get_tx_rate.exit.i.i:                   ; preds = %if.end39.i.i.i, %if.then.i30.i.i, %land.rhs.i.i.i.ieee80211_get_tx_rate.exit.i.i_crit_edge
  %retval.0.i31.i.i = phi ptr [ %arrayidx44.i.i.i, %if.end39.i.i.i ], [ null, %if.then.i30.i.i ], [ null, %land.rhs.i.i.i.ieee80211_get_tx_rate.exit.i.i_crit_edge ]
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i31.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %hw_value.i.i, align 2
  %83 = tail call i16 @llvm.bswap.i16(i16 %82) #6
  %rate5.i.i = getelementptr inbounds %struct.tx_double_buffer_desc, ptr %call3.i68.i, i32 0, i32 1
  %84 = ptrtoint ptr %rate5.i.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 %83, ptr %rate5.i.i, align 1
  %expiry_time.i.i = getelementptr inbounds %struct.tx_double_buffer_desc, ptr %call3.i68.i, i32 0, i32 2
  %85 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 256, ptr %expiry_time.i.i, align 1
  %id7.i.i = getelementptr inbounds %struct.tx_double_buffer_desc, ptr %call3.i68.i, i32 0, i32 4
  %86 = ptrtoint ptr %id7.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %i.010.lcssa.i.i.i, ptr %id7.i.i, align 1
  %queue_mapping.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call74, i32 0, i32 10
  %87 = ptrtoint ptr %queue_mapping.i.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %queue_mapping.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %88)
  %89 = icmp ult i16 %88, 4
  %switch.cast = zext i16 %88 to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 16777731, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %retval.0.i32.i.i = select i1 %89, i8 %switch.masked, i8 0
  %xmit_queue.i.i = getelementptr inbounds %struct.tx_double_buffer_desc, ptr %call3.i68.i, i32 0, i32 3
  %90 = ptrtoint ptr %xmit_queue.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %retval.0.i32.i.i, ptr %xmit_queue.i.i, align 1
  %control1.i.i.i = getelementptr inbounds %struct.tx_double_buffer_desc, ptr %call3.i68.i, i32 0, i32 5
  %91 = ptrtoint ptr %control1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 0, ptr %control1.i.i.i, align 1
  %92 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cb.i.i, align 8
  %94 = and i32 %93, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %95 = icmp eq i32 %94, 0
  %spec.store.select.i.i.i = select i1 %95, i16 0, i16 12288
  %conv.i.i.i = zext i16 %63 to i32
  %and22.i.i.i = and i32 %conv.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %and22.i.i.i, 0
  %96 = and i32 %conv.i.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %97 = icmp eq i32 %96, 0
  %or.cond.i.i.i = or i1 %tobool23.not.i.i.i, %97
  %spec.select.v.i.i.i = select i1 %or.cond.i.i.i, i16 256, i16 768
  %spec.select.i.i71.i = or i16 %spec.store.select.i.i.i, %spec.select.v.i.i.i
  %98 = ptrtoint ptr %control1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 2)
  store i16 %spec.select.i.i71.i, ptr %control1.i.i.i, align 1
  %frag_threshold1.i.i.i = getelementptr inbounds %struct.tx_double_buffer_desc, ptr %call3.i68.i, i32 0, i32 6
  %99 = ptrtoint ptr %frag_threshold1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 12297, ptr %frag_threshold1.i.i.i, align 1
  %100 = ptrtoint ptr %call3.i68.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %call3.i68.i, align 1
  %102 = tail call i16 @llvm.bswap.i16(i16 %101) #6
  %add.i.i72.i = add i16 %102, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 2352, i16 %add.i.i72.i)
  %cmp.i33.i.i = icmp ugt i16 %add.i.i72.i, 2352
  br i1 %cmp.i33.i.i, label %if.then.i34.i.i, label %ieee80211_get_tx_rate.exit.i.i.wl1251_tx_frag_block_num.exit.i.i_crit_edge

ieee80211_get_tx_rate.exit.i.i.wl1251_tx_frag_block_num.exit.i.i_crit_edge: ; preds = %ieee80211_get_tx_rate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1251_tx_frag_block_num.exit.i.i

if.then.i34.i.i:                                  ; preds = %ieee80211_get_tx_rate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %103 = udiv i16 %add.i.i72.i, 2352
  %mul.i.i.i = mul nuw nsw i16 %103, 10
  %104 = mul i16 %103, -2352
  %conv21.i.i.i = add i16 %104, %add.i.i72.i
  %narrow62.i.i.i = add nuw nsw i16 %103, 1
  %inc.i.i.i = zext i16 %narrow62.i.i.i to i32
  %phi.bo.i.i.i = or i16 %mul.i.i.i, 1
  br label %wl1251_tx_frag_block_num.exit.i.i

wl1251_tx_frag_block_num.exit.i.i:                ; preds = %if.then.i34.i.i, %ieee80211_get_tx_rate.exit.i.i.wl1251_tx_frag_block_num.exit.i.i_crit_edge
  %mem_blocks.0.i.i.i = phi i16 [ %phi.bo.i.i.i, %if.then.i34.i.i ], [ 1, %ieee80211_get_tx_rate.exit.i.i.wl1251_tx_frag_block_num.exit.i.i_crit_edge ]
  %num_mpdus.0.i.i.i = phi i32 [ %inc.i.i.i, %if.then.i34.i.i ], [ 1, %ieee80211_get_tx_rate.exit.i.i.wl1251_tx_frag_block_num.exit.i.i_crit_edge ]
  %mem_blocks_per_frag.0.i.i.i = phi i32 [ 10, %if.then.i34.i.i ], [ 0, %ieee80211_get_tx_rate.exit.i.i.wl1251_tx_frag_block_num.exit.i.i_crit_edge ]
  %payload_len.0.i.i.i = phi i16 [ %conv21.i.i.i, %if.then.i34.i.i ], [ %add.i.i72.i, %ieee80211_get_tx_rate.exit.i.i.wl1251_tx_frag_block_num.exit.i.i_crit_edge ]
  %105 = udiv i16 %payload_len.0.i.i.i, 252
  %add26.i.i.i = add nsw i16 %105, %mem_blocks.0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_mpdus.0.i.i.i)
  %cmp29.i.i.i = icmp ugt i32 %num_mpdus.0.i.i.i, 1
  %extract.t61.i.i.i = trunc i16 %add26.i.i.i to i8
  %106 = tail call i32 @llvm.umin.i32(i32 %num_mpdus.0.i.i.i, i32 %mem_blocks_per_frag.0.i.i.i) #6
  %conv38.i.i.i = zext i16 %add26.i.i.i to i32
  %add39.i.i.i = add nuw nsw i32 %106, %conv38.i.i.i
  %extract.t.i.i.i = trunc i32 %add39.i.i.i to i8
  %spec.select = select i1 %cmp29.i.i.i, i8 %extract.t.i.i.i, i8 %extract.t61.i.i.i
  %num_mem_blocks.i.i.i = getelementptr inbounds %struct.tx_double_buffer_desc, ptr %call3.i68.i, i32 0, i32 7
  %107 = ptrtoint ptr %num_mem_blocks.i.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %spec.select, ptr %num_mem_blocks.i.i.i, align 1
  %108 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data.i.i, align 4
  %110 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw_key.i, align 4
  %tobool1.not.i.i = icmp eq ptr %111, null
  br i1 %tobool1.not.i.i, label %wl1251_tx_frag_block_num.exit.i.i.if.end11.i.i_crit_edge, label %land.lhs.true.i.i

wl1251_tx_frag_block_num.exit.i.i.if.end11.i.i_crit_edge: ; preds = %wl1251_tx_frag_block_num.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i.i

land.lhs.true.i.i:                                ; preds = %wl1251_tx_frag_block_num.exit.i.i
  %cipher.i.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %cipher.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cipher.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %113)
  %cmp.i76.i = icmp eq i32 %113, 1027074
  br i1 %cmp.i76.i, label %if.then3.i.i, label %land.lhs.true.i.i.if.end11.i.i_crit_edge

land.lhs.true.i.i.if.end11.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %109, i32 16
  %114 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %add.ptr.i.i, align 2
  %116 = ptrtoint ptr %109 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 2)
  %117 = load i16, ptr %109, align 1
  %118 = tail call i16 @llvm.bswap.i16(i16 %117) #6
  %add.i.i = add i16 %118, 4
  %119 = tail call i16 @llvm.bswap.i16(i16 %add.i.i) #6
  %120 = ptrtoint ptr %109 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 2)
  store i16 %119, ptr %109, align 1
  %call.i77.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %115) #10
  %call8.i.i = tail call ptr @skb_push(ptr noundef nonnull %call74, i32 noundef 4) #6
  %add.ptr9.i.i = getelementptr i8, ptr %call8.i.i, i32 4
  %add10.i.i = add i32 %call.i77.i, 16
  %121 = call ptr @memmove(ptr %call8.i.i, ptr %add.ptr9.i.i, i32 %add10.i.i)
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then3.i.i, %land.lhs.true.i.i.if.end11.i.i_crit_edge, %wl1251_tx_frag_block_num.exit.i.i.if.end11.i.i_crit_edge
  %122 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data.i.i, align 4
  %124 = ptrtoint ptr %123 to i32
  %and.i78.i = and i32 %124, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78.i)
  %tobool13.not.i.i = icmp eq i32 %and.i78.i, 0
  br i1 %tobool13.not.i.i, label %if.end11.i.i.if.end54.i.i_crit_edge, label %if.then16.i.i, !prof !29

if.end11.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i.i

if.then16.i.i:                                    ; preds = %if.end11.i.i
  %sub.i.i = sub i32 0, %124
  %and18.i.i = and i32 %sub.i.i, 3
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %call74, i32 0, i32 12
  %125 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i39 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i39, label %if.then16.i.i.lor.lhs.false.i.i_crit_edge, label %skb_cloned.exit

if.then16.i.i.lor.lhs.false.i.i_crit_edge:        ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i.i

skb_cloned.exit:                                  ; preds = %if.then16.i.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call74, i32 0, i32 17
  %126 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %127, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #6
  %128 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %129, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.lor.lhs.false.i.i_crit_edge, label %skb_cloned.exit.if.then24.i.i_crit_edge

skb_cloned.exit.if.then24.i.i_crit_edge:          ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i.i

skb_cloned.exit.lor.lhs.false.i.i_crit_edge:      ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %skb_cloned.exit.lor.lhs.false.i.i_crit_edge, %if.then16.i.i.lor.lhs.false.i.i_crit_edge
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call74, i32 0, i32 7
  %130 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.i.not.i.i.i = icmp eq i32 %131, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %lor.lhs.false.i.i.skb_tailroom.exit.i.i_crit_edge

lor.lhs.false.i.i.skb_tailroom.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_tailroom.exit.i.i

cond.false.i.i.i:                                 ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call74, i32 0, i32 17
  %132 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call74, i32 0, i32 16
  %134 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %133 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %135 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %skb_tailroom.exit.i.i

skb_tailroom.exit.i.i:                            ; preds = %cond.false.i.i.i, %lor.lhs.false.i.i.skb_tailroom.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %lor.lhs.false.i.i.skb_tailroom.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %and18.i.i)
  %cmp22.i.i = icmp slt i32 %cond.i.i.i, %and18.i.i
  br i1 %cmp22.i.i, label %skb_tailroom.exit.i.i.if.then24.i.i_crit_edge, label %skb_tailroom.exit.i.i.if.end43.i.i_crit_edge

skb_tailroom.exit.i.i.if.end43.i.i_crit_edge:     ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i.i

skb_tailroom.exit.i.i.if.then24.i.i_crit_edge:    ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i.i

if.then24.i.i:                                    ; preds = %skb_tailroom.exit.i.i.if.then24.i.i_crit_edge, %skb_cloned.exit.if.then24.i.i_crit_edge
  %call25.i.i = tail call ptr @skb_copy_expand(ptr noundef nonnull %call74, i32 noundef 0, i32 noundef 3, i32 noundef 3264) #6
  %cmp26.i.i = icmp eq ptr %call25.i.i, null
  br i1 %cmp26.i.i, label %if.then24.i.i.if.then15_crit_edge, label %cleanup.i.i, !prof !27

if.then24.i.i.if.then15_crit_edge:                ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

cleanup.i.i:                                      ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %data36.i.i = getelementptr inbounds %struct.sk_buff, ptr %call25.i.i, i32 0, i32 19
  %136 = ptrtoint ptr %data36.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data36.i.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call74, i32 noundef 1) #6
  %id.i.i = getelementptr inbounds %struct.tx_double_buffer_desc, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %id.i.i, align 1
  %idxprom.i.i = zext i8 %139 to i32
  %arrayidx.i.i = getelementptr %struct.wl1251, ptr %add.ptr, i32 0, i32 35, i32 %idxprom.i.i
  %140 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call25.i.i, ptr %arrayidx.i.i, align 4
  %141 = ptrtoint ptr %data36.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data36.i.i, align 4
  %143 = ptrtoint ptr %142 to i32
  %sub38.i.i = sub i32 0, %143
  %and39.i.i = and i32 %sub38.i.i, 3
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %cleanup.i.i, %skb_tailroom.exit.i.i.if.end43.i.i_crit_edge
  %skb.addr.1.i.i = phi ptr [ %call25.i.i, %cleanup.i.i ], [ %call74, %skb_tailroom.exit.i.i.if.end43.i.i_crit_edge ]
  %offset.1.i.i = phi i32 [ %and39.i.i, %cleanup.i.i ], [ %and18.i.i, %skb_tailroom.exit.i.i.if.end43.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.1.i.i)
  %tobool44.not.i.i = icmp eq i32 %offset.1.i.i, 0
  br i1 %tobool44.not.i.i, label %if.end43.i.i.if.end54.i.i_crit_edge, label %if.then45.i.i

if.end43.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i.i

if.then45.i.i:                                    ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %data46.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i.i, i32 0, i32 19
  %144 = ptrtoint ptr %data46.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %data46.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %145, i32 %offset.1.i.i
  store ptr %add.ptr.i.i.i, ptr %data46.i.i, align 4
  %tail.i107.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i.i, i32 0, i32 16
  %146 = ptrtoint ptr %tail.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %tail.i107.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %147, i32 %offset.1.i.i
  store ptr %add.ptr1.i.i.i, ptr %tail.i107.i.i, align 8
  %len48.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i.i, i32 0, i32 6
  %148 = ptrtoint ptr %len48.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %len48.i.i, align 4
  %150 = call ptr @memmove(ptr %add.ptr.i.i.i, ptr %145, i32 %149)
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then45.i.i, %if.end43.i.i.if.end54.i.i_crit_edge, %if.end11.i.i.if.end54.i.i_crit_edge
  %skb.addr.3.i.i = phi ptr [ %call74, %if.end11.i.i.if.end54.i.i_crit_edge ], [ %skb.addr.1.i.i, %if.then45.i.i ], [ %skb.addr.1.i.i, %if.end43.i.i.if.end54.i.i_crit_edge ]
  %len55.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i.i, i32 0, i32 6
  %151 = ptrtoint ptr %len55.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %len55.i.i, align 4
  %sub57.i.i = add i32 %152, 3
  %and58.i.i = and i32 %sub57.i.i, -4
  %153 = ptrtoint ptr %data_in_count1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %data_in_count1.i.i.i, align 4
  %and59.i.i = and i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i.i)
  %tobool60.not.i.i = icmp eq i32 %and59.i.i, 0
  %155 = ptrtoint ptr %data_path.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %data_path.i.i, align 4
  %tx_packet_ring_addr66.i.i = getelementptr inbounds %struct.acx_data_path_params_resp, ptr %156, i32 0, i32 7
  %157 = ptrtoint ptr %tx_packet_ring_addr66.i.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %tx_packet_ring_addr66.i.i, align 1
  br i1 %tobool60.not.i.i, label %if.end54.i.i.if.else_crit_edge, label %if.then61.i.i

if.end54.i.i.if.else_crit_edge:                   ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then61.i.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_packet_ring_chunk_size.i.i = getelementptr inbounds %struct.acx_data_path_params_resp, ptr %156, i32 0, i32 2
  %159 = ptrtoint ptr %tx_packet_ring_chunk_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 2)
  %160 = load i16, ptr %tx_packet_ring_chunk_size.i.i, align 1
  %conv63.i.i = zext i16 %160 to i32
  %add64.i.i = add i32 %158, %conv63.i.i
  br label %if.else

wl1251_tx_frame.exit:                             ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call14.i)
  %cmp11 = icmp eq i32 %call14.i, -16
  br i1 %cmp11, label %wl1251_tx_frame.exit.if.then12_crit_edge, label %wl1251_tx_frame.exit.if.then15_crit_edge

wl1251_tx_frame.exit.if.then15_crit_edge:         ; preds = %wl1251_tx_frame.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

wl1251_tx_frame.exit.if.then12_crit_edge:         ; preds = %wl1251_tx_frame.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.then12:                                        ; preds = %wl1251_tx_frame.exit.if.then12_crit_edge, %for.inc.14.i.i.i.if.then12_crit_edge, %wl1251_tx_path_status.exit.i.if.then12_crit_edge
  tail call void @skb_queue_head(ptr noundef %tx_queue, ptr noundef nonnull %call74) #6
  br label %if.then19

if.else:                                          ; preds = %if.then61.i.i, %if.end54.i.i.if.else_crit_edge
  %addr.0.i.i = phi i32 [ %add64.i.i, %if.then61.i.i ], [ %158, %if.end54.i.i.if.else_crit_edge ]
  %data68.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i.i, i32 0, i32 19
  %161 = ptrtoint ptr %data68.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %data68.i.i, align 4
  tail call void @wl1251_mem_write(ptr noundef %add.ptr, i32 noundef %addr.0.i.i, ptr noundef %162, i32 noundef %and58.i.i) #6
  %163 = ptrtoint ptr %data_in_count1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %data_in_count1.i.i.i, align 4
  %and.i80.i = and i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80.i)
  %tobool.not.i81.i = icmp eq i32 %and.i80.i, 0
  %..i82.i = select i1 %tobool.not.i81.i, i32 4, i32 262144
  %not.tobool.not.i.i = xor i1 %tobool.not.i81.i, true
  %.7.i.i = zext i1 %not.tobool.not.i.i to i32
  tail call void @wl1251_reg_write32(ptr noundef %add.ptr, i32 noundef %.7.i.i, i32 noundef %..i82.i) #6
  %165 = ptrtoint ptr %data_in_count1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %data_in_count1.i.i.i, align 4
  %add.i83.i = add i32 %166, 1
  %and2.i.i = and i32 %add.i83.i, 15
  store i32 %and2.i.i, ptr %data_in_count1.i.i.i, align 4
  %call = tail call ptr @skb_dequeue(ptr noundef %tx_queue) #6
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.else.if.then19_crit_edge, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.else.if.then19_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then15:                                        ; preds = %wl1251_tx_frame.exit.if.then15_crit_edge, %if.then24.i.i.if.then15_crit_edge, %if.then.i.if.then15_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call74) #6
  br label %if.then19

if.then19:                                        ; preds = %if.then15, %if.else.if.then19_crit_edge, %if.then12
  tail call void @wl1251_ps_elp_sleep(ptr noundef %add.ptr) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then4.if.end20_crit_edge, %while.cond.preheader.if.end20_crit_edge, %entry.if.end20_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_ps_elp_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_ps_elp_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_tx_complete(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  %result = alloca [16 x %struct.tx_result], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %result) #6
  %0 = call ptr @memset(ptr %result, i32 255, i32 320)
  %state = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 9
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !29

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_path = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 30
  %3 = ptrtoint ptr %data_path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data_path, align 4
  %tx_complete_addr = getelementptr inbounds %struct.acx_data_path_params_resp, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %tx_complete_addr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %tx_complete_addr, align 1
  call void @wl1251_mem_read(ptr noundef %wl, i32 noundef %6, ptr noundef nonnull %result, i32 noundef 320) #6
  %next_tx_complete = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 36
  %7 = ptrtoint ptr %next_tx_complete to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %next_tx_complete, align 4
  %retry_count.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 60, i32 2
  br label %for.body

for.body:                                         ; preds = %wl1251_tx_packet_cb.exit.for.body_crit_edge, %if.end
  %i.0139 = phi i32 [ 0, %if.end ], [ %inc12, %wl1251_tx_packet_cb.exit.for.body_crit_edge ]
  %result_index.0135 = phi i32 [ %8, %if.end ], [ %and, %wl1251_tx_packet_cb.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.tx_result], ptr %result, i32 0, i32 %result_index.0135
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp3 = icmp eq i8 %10, 1
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true:                                    ; preds = %for.body
  %done_2 = getelementptr [16 x %struct.tx_result], ptr %result, i32 0, i32 %result_index.0135, i32 10
  %11 = ptrtoint ptr %done_2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %done_2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp6 = icmp eq i8 %12, 1
  br i1 %cmp6, label %if.then8, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then8:                                         ; preds = %land.lhs.true
  %id.i = getelementptr [16 x %struct.tx_result], ptr %result, i32 0, i32 %result_index.0135, i32 1
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %id.i, align 1
  %idxprom.i = zext i8 %14 to i32
  %arrayidx.i = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 35, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %16, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %idxprom.i) #9
  br label %wl1251_tx_packet_cb.exit

if.end.i:                                         ; preds = %if.then8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cb.i.i, align 8
  %19 = and i32 %18, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %land.lhs.true6.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

land.lhs.true6.i:                                 ; preds = %if.end.i
  %status.i = getelementptr [16 x %struct.tx_result], ptr %result, i32 0, i32 %result_index.0135, i32 9
  %21 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp8.i = icmp eq i8 %22, 0
  br i1 %cmp8.i, label %if.then10.i, label %land.lhs.true6.i.if.end12.i_crit_edge

land.lhs.true6.i.if.end12.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then10.i:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %18, 512
  %23 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i, ptr %cb.i.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %land.lhs.true6.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %ack_failures.i = getelementptr [16 x %struct.tx_result], ptr %result, i32 0, i32 %result_index.0135, i32 6
  %24 = ptrtoint ptr %ack_failures.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ack_failures.i, align 1
  %count.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 9
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  %27 = add i8 %25, 1
  %bf.value.i = zext i8 %27 to i16
  %bf.shl.i = shl i16 %bf.value.i, 11
  %bf.clear.i = and i16 %bf.load.i, 2047
  %bf.set.i = or i16 %bf.shl.i, %bf.clear.i
  store i16 %bf.set.i, ptr %count.i, align 1
  %28 = load i8, ptr %ack_failures.i, align 1
  %conv17.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %retry_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %retry_count.i, align 4
  %add18.i = add i32 %30, %conv17.i
  store i32 %add18.i, ptr %retry_count.i, align 4
  %call19.i = call ptr @skb_pull(ptr noundef nonnull %16, i32 noundef 16) #6
  %hw_key.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 28
  %31 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_key.i, align 4
  %tobool20.not.i = icmp eq ptr %32, null
  br i1 %tobool20.not.i, label %if.end12.i.do.end31.i_crit_edge, label %land.lhs.true21.i

if.end12.i.do.end31.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31.i

land.lhs.true21.i:                                ; preds = %if.end12.i
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cipher.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %34)
  %cmp23.i = icmp eq i32 %34, 1027074
  br i1 %cmp23.i, label %if.then25.i, label %land.lhs.true21.i.do.end31.i_crit_edge

land.lhs.true21.i.do.end31.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31.i

if.then25.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i = call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef nonnull %16) #6
  %add.ptr.i = getelementptr i8, ptr %call19.i, i32 4
  %35 = call ptr @memmove(ptr %add.ptr.i, ptr %call19.i, i32 %call26.i)
  %call27.i = call ptr @skb_pull(ptr noundef nonnull %16, i32 noundef 4) #6
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then25.i, %land.lhs.true21.i.do.end31.i_crit_edge, %if.end12.i.do.end31.i_crit_edge
  %36 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wl, align 4
  call void @ieee80211_tx_status(ptr noundef %37, ptr noundef nonnull %16) #6
  %38 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %id.i, align 1
  %idxprom34.i = zext i8 %39 to i32
  %arrayidx35.i = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 35, i32 %idxprom34.i
  %40 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx35.i, align 4
  br label %wl1251_tx_packet_cb.exit

wl1251_tx_packet_cb.exit:                         ; preds = %do.end31.i, %do.end.i
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx, align 1
  %42 = ptrtoint ptr %done_2 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %done_2, align 1
  %add = add i32 %result_index.0135, 1
  %and = and i32 %add, 15
  %inc12 = add nuw nsw i32 %i.0139, 1
  %exitcond.not = icmp eq i32 %inc12, 16
  br i1 %exitcond.not, label %wl1251_tx_packet_cb.exit.for.end_crit_edge, label %wl1251_tx_packet_cb.exit.for.body_crit_edge

wl1251_tx_packet_cb.exit.for.body_crit_edge:      ; preds = %wl1251_tx_packet_cb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

wl1251_tx_packet_cb.exit.for.end_crit_edge:       ; preds = %wl1251_tx_packet_cb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %wl1251_tx_packet_cb.exit.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %for.body.for.end_crit_edge
  %result_index.0.lcssa = phi i32 [ %result_index.0135, %for.body.for.end_crit_edge ], [ %result_index.0135, %land.lhs.true.for.end_crit_edge ], [ %and, %wl1251_tx_packet_cb.exit.for.end_crit_edge ]
  %num_complete.0.lcssa = phi i32 [ %i.0139, %for.body.for.end_crit_edge ], [ %i.0139, %land.lhs.true.for.end_crit_edge ], [ 16, %wl1251_tx_packet_cb.exit.for.end_crit_edge ]
  %qlen.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 32, i32 1
  %43 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_complete.0.lcssa)
  %cmp13 = icmp ne i32 %num_complete.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp16 = icmp sgt i32 %44, 0
  %or.cond = select i1 %cmp13, i1 %cmp16, i1 false
  br i1 %or.cond, label %do.end, label %for.end.if.end19_crit_edge

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wl, align 4
  %tx_work = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 34
  call void @ieee80211_queue_work(ptr noundef %46, ptr noundef %tx_work) #6
  br label %if.end19

if.end19:                                         ; preds = %do.end, %for.end.if.end19_crit_edge
  %tx_queue_stopped = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 33
  %47 = ptrtoint ptr %tx_queue_stopped to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tx_queue_stopped, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool20.not = icmp ne i8 %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %44)
  %cmp23 = icmp slt i32 %44, 11
  %or.cond134 = select i1 %tobool20.not, i1 %cmp23, i1 false
  br i1 %or.cond134, label %do.body30, label %if.end19.if.end42_crit_edge

if.end19.if.end42_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.body30:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %wl_lock = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 8
  %call34 = call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock) #6
  %49 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wl, align 4
  call void @ieee80211_wake_queues(ptr noundef %50) #6
  %51 = ptrtoint ptr %tx_queue_stopped to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %tx_queue_stopped, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock, i32 noundef %call34) #6
  br label %if.end42

if.end42:                                         ; preds = %do.body30, %if.end19.if.end42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_complete.0.lcssa)
  %tobool43.not = icmp eq i32 %num_complete.0.lcssa, 0
  br i1 %tobool43.not, label %if.end42.if.end83_crit_edge, label %if.then44

if.end42.if.end83_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then44:                                        ; preds = %if.end42
  %52 = ptrtoint ptr %next_tx_complete to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %next_tx_complete, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %result_index.0.lcssa, i32 %53)
  %cmp46 = icmp ugt i32 %result_index.0.lcssa, %53
  br i1 %cmp46, label %if.then48, label %if.else56

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %data_path to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data_path, align 4
  %tx_complete_addr50 = getelementptr inbounds %struct.acx_data_path_params_resp, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %tx_complete_addr50 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %tx_complete_addr50, align 1
  %mul = mul i32 %53, 20
  %add52 = add i32 %57, %mul
  %arrayidx54 = getelementptr [16 x %struct.tx_result], ptr %result, i32 0, i32 %53
  %mul55 = mul i32 %num_complete.0.lcssa, 20
  call void @wl1251_mem_write(ptr noundef %wl, i32 noundef %add52, ptr noundef %arrayidx54, i32 noundef %mul55) #6
  br label %if.end83

if.else56:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_cmp4(i32 %result_index.0.lcssa, i32 %53)
  %cmp58 = icmp ult i32 %result_index.0.lcssa, %53
  %58 = ptrtoint ptr %data_path to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data_path, align 4
  %tx_complete_addr62 = getelementptr inbounds %struct.acx_data_path_params_resp, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %tx_complete_addr62 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %tx_complete_addr62, align 1
  br i1 %cmp58, label %if.then60, label %if.else77

if.then60:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #8
  %mul64 = mul i32 %53, 20
  %add65 = add i32 %61, %mul64
  %arrayidx67 = getelementptr [16 x %struct.tx_result], ptr %result, i32 0, i32 %53
  %sub = sub i32 16, %53
  %mul69 = mul i32 %sub, 20
  call void @wl1251_mem_write(ptr noundef %wl, i32 noundef %add65, ptr noundef %arrayidx67, i32 noundef %mul69) #6
  %62 = ptrtoint ptr %data_path to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data_path, align 4
  %tx_complete_addr71 = getelementptr inbounds %struct.acx_data_path_params_resp, ptr %63, i32 0, i32 10
  %64 = ptrtoint ptr %tx_complete_addr71 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %tx_complete_addr71, align 1
  %sub73 = add nsw i32 %num_complete.0.lcssa, -16
  %66 = ptrtoint ptr %next_tx_complete to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %next_tx_complete, align 4
  %add75 = add i32 %sub73, %67
  %mul76 = mul i32 %add75, 20
  call void @wl1251_mem_write(ptr noundef %wl, i32 noundef %65, ptr noundef nonnull %result, i32 noundef %mul76) #6
  br label %if.end83

if.else77:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #8
  call void @wl1251_mem_write(ptr noundef %wl, i32 noundef %61, ptr noundef nonnull %result, i32 noundef 320) #6
  br label %if.end83

if.end83:                                         ; preds = %if.else77, %if.then60, %if.then48, %if.end42.if.end83_crit_edge
  %68 = ptrtoint ptr %next_tx_complete to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %result_index.0.lcssa, ptr %next_tx_complete, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %result) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_mem_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_mem_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_tx_flush(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_queue = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 32
  %call31 = tail call ptr @skb_dequeue(ptr noundef %tx_queue) #6
  %tobool.not32 = icmp eq ptr %call31, null
  br i1 %tobool.not32, label %entry.for.body.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %call33 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call31, %entry.while.body_crit_edge ]
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call33, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  tail call void @ieee80211_tx_status(ptr noundef %3, ptr noundef nonnull %call33) #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end, %while.body.while.cond.backedge_crit_edge
  %call = tail call ptr @skb_dequeue(ptr noundef %tx_queue) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.cond.backedge.for.body.preheader_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.backedge.for.body.preheader_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %while.cond.backedge.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.034 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 35, i32 %i.034
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp3.not = icmp eq ptr %5, null
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then4:                                         ; preds = %for.body
  %cb.i30 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cb.i30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cb.i30, align 8
  %and9 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then4.for.inc_crit_edge, label %if.end12

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end12:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wl, align 4
  tail call void @ieee80211_tx_status(ptr noundef %9, ptr noundef nonnull %5) #6
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %if.then4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_default_key(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_join(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_event_wait(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_mem_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_reg_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl1251/tx.c", i32 275, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @enable_tx_for_packet_injection._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @enable_tx_for_packet_injection._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl1251/tx.c", i32 281, i32 3}
!8 = !{ptr @enable_tx_for_packet_injection._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @enable_tx_for_packet_injection._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/net/mac80211.h", i32 2737, i32 6}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ti/wl1251/tx.c", i32 405, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @wl1251_tx_packet_cb._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @wl1251_tx_packet_cb._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i8 0, i8 2}
!29 = !{!"branch_weights", i32 2000, i32 1}
