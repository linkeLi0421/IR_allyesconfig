; ModuleID = '/llk/IR_all_yes/drivers/staging/wfx/scan.c_pt.bc'
source_filename = "../drivers/staging/wfx/scan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.wfx_dev = type { %struct.wfx_platform_data, ptr, ptr, [2 x ptr], [2 x %struct.mac_address], ptr, ptr, i8, %struct.completion, %struct.hif_ind_startup, %struct.wfx_hif, %struct.delayed_work, i8, i8, %struct.mutex, %struct.wfx_hif_cmd, %struct.sk_buff_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i32, %struct.hif_rx_stats, %struct.mutex, %struct.hif_tx_power_loop_info, %struct.mutex, i32 }
%struct.wfx_platform_data = type { ptr, ptr, ptr, i8 }
%struct.mac_address = type { [6 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hif_ind_startup = type { i32, i16, [14 x i8], [8 x i8], i16, i16, i8, i8, [2 x [6 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i32, [128 x i8] }
%struct.wfx_hif = type { %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wfx_hif_cmd = type { %struct.mutex, %struct.completion, %struct.completion, ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hif_rx_stats = type <{ i32, i32, i32, i32, [22 x i32], [22 x i16], [22 x i16], [22 x i16], [22 x i16], i32, i32, i8, i8 }>
%struct.hif_tx_power_loop_info = type { i16, i16, i16, i16, i16, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_scan_request = type { %struct.ieee80211_scan_ies, %struct.cfg80211_scan_request }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.125, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.125 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.126] }
%struct.anon.126 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.wfx_vif = type { ptr, ptr, ptr, i32, i32, i8, i8, %struct.delayed_work, [4 x %struct.wfx_queue], %struct.tx_policy_cache, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, %struct.work_struct, %struct.completion, i32, i8, ptr, %struct.completion }
%struct.wfx_queue = type { %struct.sk_buff_head, %struct.sk_buff_head, %struct.atomic_t, i32 }
%struct.tx_policy_cache = type { [15 x %struct.tx_policy], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy = type { %struct.list_head, i32, [12 x i8], i8 }

@wfx_hw_scan_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: abort in-progress REQ_JOIN\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wfx_hw_scan_work\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/staging/wfx/scan.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wfx_hw_scan_work._entry_ptr = internal global ptr @wfx_hw_scan_work._entry, section ".printk_index", align 4
@wfx_hw_scan_work._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 117, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"scan has not been able to start\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@wfx_hw_scan_work._entry_ptr.8 = internal global ptr @wfx_hw_scan_work._entry.5, section ".printk_index", align 4
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"band not supported\00", [45 x i8] zeroinitializer }, align 32
@send_scan_req.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wfx\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"send_scan_req\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"scan timeout (%d channels done)\0A\00", [63 x i8] zeroinitializer }, align 32
@send_scan_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 72, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scan didn't stop\0A\00", [46 x i8] zeroinitializer }, align 32
@send_scan_req._entry_ptr = internal global ptr @send_scan_req._entry, section ".printk_index", align 4
@send_scan_req._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.2, i32 75, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scan abort\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@send_scan_req._entry_ptr.17 = internal global ptr @send_scan_req._entry.14, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 101, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 117, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 50, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 68, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 72, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [30 x i8] c"../drivers/staging/wfx/scan.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 75, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @send_scan_req._entry, ptr @send_scan_req._entry.14, ptr @send_scan_req._entry_ptr, ptr @send_scan_req._entry_ptr.17, ptr @wfx_hw_scan_work._entry, ptr @wfx_hw_scan_work._entry.5, ptr @wfx_hw_scan_work._entry_ptr, ptr @wfx_hw_scan_work._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_hw_scan_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_hw_scan_work._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_scan_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_scan_req._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_hw_scan_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1268
  %scan_req = getelementptr i8, ptr %work, i32 108
  %0 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_req, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %conf_mutex = getelementptr inbounds %struct.wfx_dev, ptr %3, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #5
  %scan_lock = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %scan_lock, i32 noundef 0) #5
  %join_in_progress = getelementptr i8, ptr %work, i32 -1247
  %4 = ptrtoint ptr %join_in_progress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %join_in_progress, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  tail call void @wfx_reset(ptr noundef %add.ptr) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %req = getelementptr inbounds %struct.ieee80211_scan_request, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %hw.i = getelementptr inbounds %struct.wfx_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i, align 4
  %vif.i = getelementptr i8, ptr %work, i32 -1264
  %14 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vif.i, align 4
  %addr.i = getelementptr inbounds %struct.ieee80211_vif, ptr %15, i32 0, i32 2
  %ie_len.i = getelementptr inbounds %struct.ieee80211_scan_request, ptr %1, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %ie_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ie_len.i, align 4
  %call.i = tail call ptr @ieee80211_probereq_get(ptr noundef %13, ptr noundef %addr.i, ptr noundef null, i32 noundef 0, i32 noundef %17) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.update_probe_tmpl.exit_crit_edge, label %if.end.i

if.end.update_probe_tmpl.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %update_probe_tmpl.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ie.i = getelementptr inbounds %struct.ieee80211_scan_request, ptr %1, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %ie.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ie.i, align 8
  %20 = ptrtoint ptr %ie_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ie_len.i, align 4
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %21) #5
  %22 = call ptr @memcpy(ptr %call.i.i, ptr %19, i32 %21)
  %call3.i = tail call i32 @hif_set_template_frame(ptr noundef %add.ptr, ptr noundef nonnull %call.i, i8 noundef zeroext 0, i32 noundef 0) #5
  tail call void @consume_skb(ptr noundef nonnull %call.i) #5
  br label %update_probe_tmpl.exit

update_probe_tmpl.exit:                           ; preds = %if.end.i, %if.end.update_probe_tmpl.exit_crit_edge
  %n_channels = getelementptr inbounds %struct.ieee80211_scan_request, ptr %1, i32 0, i32 1, i32 2
  br label %do.body2

do.body2:                                         ; preds = %land.rhs.do.body2_crit_edge, %update_probe_tmpl.exit
  %chan_cur.0 = phi i32 [ 0, %update_probe_tmpl.exit ], [ %spec.select, %land.rhs.do.body2_crit_edge ]
  %err.0 = phi i32 [ 0, %update_probe_tmpl.exit ], [ %err.2, %land.rhs.do.body2_crit_edge ]
  %call4 = tail call fastcc i32 @send_scan_req(ptr noundef %add.ptr, ptr noundef %req, i32 noundef %chan_cur.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp sgt i32 %call4, 0
  %23 = tail call i32 @llvm.smax.i32(i32 %call4, i32 0)
  %spec.select = add i32 %23, %chan_cur.0
  %spec.select48 = select i1 %cmp, i32 0, i32 %err.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool7.not = icmp eq i32 %call4, 0
  %inc = zext i1 %tobool7.not to i32
  %err.2 = add i32 %spec.select48, %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %err.2)
  %cmp10 = icmp sgt i32 %err.2, 2
  br i1 %cmp10, label %do.cond18.thread, label %do.cond18

do.cond18.thread:                                 ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %dev16 = getelementptr inbounds %struct.wfx_dev, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.6) #8
  br label %do.end22

do.cond18:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp19 = icmp sgt i32 %call4, -1
  br i1 %cmp19, label %land.rhs, label %do.cond18.do.end22.loopexit_crit_edge

do.cond18.do.end22.loopexit_crit_edge:            ; preds = %do.cond18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22.loopexit

land.rhs:                                         ; preds = %do.cond18
  %28 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_channels, align 8
  %cmp21 = icmp ult i32 %spec.select, %29
  br i1 %cmp21, label %land.rhs.do.body2_crit_edge, label %land.rhs.do.end22.loopexit_crit_edge

land.rhs.do.end22.loopexit_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22.loopexit

land.rhs.do.body2_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.end22.loopexit:                                ; preds = %land.rhs.do.end22.loopexit_crit_edge, %do.cond18.do.end22.loopexit_crit_edge
  %phi.bo = lshr i32 %call4, 31
  %phi.cast = trunc i32 %phi.bo to i8
  br label %do.end22

do.end22:                                         ; preds = %do.end22.loopexit, %do.cond18.thread
  %ret.051 = phi i8 [ 1, %do.cond18.thread ], [ %phi.cast, %do.end22.loopexit ]
  tail call void @mutex_unlock(ptr noundef %scan_lock) #5
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %conf_mutex25 = getelementptr inbounds %struct.wfx_dev, ptr %31, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %conf_mutex25) #5
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 4
  %hw = getelementptr inbounds %struct.wfx_dev, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #5
  %36 = getelementptr inbounds i8, ptr %info.i, i32 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 -1, ptr %36, align 8
  %aborted1.i = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info.i, i32 0, i32 2
  %38 = call ptr @memset(ptr %info.i, i32 0, i32 14)
  %39 = ptrtoint ptr %aborted1.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %ret.051, ptr %aborted1.i, align 2
  call void @ieee80211_scan_completed(ptr noundef %35, ptr noundef nonnull %info.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_scan_req(ptr noundef %wvif, ptr noundef %req, i32 noundef %start_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %start_idx)
  %cmp138 = icmp ugt i32 %1, %start_idx
  br i1 %cmp138, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 22, i32 %start_idx
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0139 = phi i32 [ %start_idx, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 22, i32 %i.0139
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not = icmp eq i32 %7, 0
  br i1 %cmp3.not, label %for.body.if.end_crit_edge, label %do.end, !prof !39

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 50, i32 noundef 9, ptr noundef nonnull @.str.9) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %max_power = getelementptr inbounds %struct.ieee80211_channel, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_power, align 4
  %max_power22 = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %max_power22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_power22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp23.not = icmp eq i32 %9, %11
  br i1 %cmp23.not, label %if.end25, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end25:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %flags26 = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags26, align 4
  %xor = xor i32 %15, %13
  %and = and i32 %xor, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %for.inc, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %if.end25
  %inc = add nuw i32 %i.0139, 1
  %16 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_channels, align 8
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end25.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %start_idx, %entry.for.end_crit_edge ], [ %i.0139, %if.end25.for.end_crit_edge ], [ %i.0139, %if.end.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %18 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wvif, align 4
  tail call void @wfx_tx_lock_flush(ptr noundef %19) #5
  %scan_abort = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 17
  %20 = ptrtoint ptr %scan_abort to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %scan_abort, align 4
  %scan_complete = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 15
  %21 = ptrtoint ptr %scan_complete to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %scan_complete, align 4
  %sub = sub i32 %i.0.lcssa, %start_idx
  %call = tail call i32 @hif_scan(ptr noundef %wvif, ptr noundef %req, i32 noundef %start_idx, i32 noundef %sub) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool30.not = icmp eq i32 %call, 0
  br i1 %tobool30.not, label %if.end33, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %for.end
  %call35 = tail call i32 @wait_for_completion_timeout(ptr noundef %scan_complete, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end33.if.else_crit_edge

if.end33.if.else_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then37:                                        ; preds = %if.end33
  %call38 = tail call i32 @hif_stop_scan(ptr noundef %wvif) #5
  %call40 = tail call i32 @wait_for_completion_timeout(ptr noundef %scan_complete, i32 noundef 100) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_scan_req.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_scan_req, %if.then51)) #5
          to label %if.end56 [label %if.then51], !srcloc !40

if.then51:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wvif, align 4
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %scan_nb_chan_done = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 16
  %26 = ptrtoint ptr %scan_nb_chan_done to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_nb_chan_done, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_scan_req.__UNIQUE_ID_ddebug351, ptr noundef %25, ptr noundef nonnull @.str.12, i32 noundef %27) #5
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.then37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool57.not = icmp eq i32 %call40, 0
  br i1 %tobool57.not, label %do.end61, label %if.end56.if.else_crit_edge

if.end56.if.else_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

do.end61:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wvif, align 4
  %dev63 = getelementptr inbounds %struct.wfx_dev, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.13) #8
  br label %if.end81

if.else:                                          ; preds = %if.end56.if.else_crit_edge, %if.end33.if.else_crit_edge
  %32 = ptrtoint ptr %scan_abort to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %scan_abort, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool65.not = icmp eq i8 %33, 0
  br i1 %tobool65.not, label %if.else72, label %do.end69

do.end69:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wvif, align 4
  %dev71 = getelementptr inbounds %struct.wfx_dev, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev71, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %37, ptr noundef nonnull @.str.15) #8
  br label %if.end81

if.else72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %scan_nb_chan_done73 = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 16
  %38 = ptrtoint ptr %scan_nb_chan_done73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scan_nb_chan_done73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %sub)
  %cmp75 = icmp sgt i32 %39, %sub
  %. = select i1 %cmp75, i32 -5, i32 %39
  br label %if.end81

if.end81:                                         ; preds = %if.else72, %do.end69, %do.end61
  %ret.1 = phi i32 [ -103, %do.end69 ], [ -110, %do.end61 ], [ %., %if.else72 ]
  %arrayidx83 = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 22, i32 %start_idx
  %40 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx83, align 4
  %max_power84 = getelementptr inbounds %struct.ieee80211_channel, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %max_power84 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_power84, align 4
  %vif = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 1
  %44 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vif, align 4
  %txpower = getelementptr inbounds %struct.ieee80211_vif, ptr %45, i32 0, i32 1, i32 42
  %46 = ptrtoint ptr %txpower to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %txpower, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %47)
  %cmp85.not = icmp eq i32 %43, %47
  br i1 %cmp85.not, label %if.end81.cleanup_crit_edge, label %if.then86

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  %call90 = tail call i32 @hif_set_output_power(ptr noundef %wvif, i32 noundef %47) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %if.end81.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %for.end.cleanup_crit_edge ], [ %ret.1, %if.then86 ], [ %ret.1, %if.end81.cleanup_crit_edge ]
  %48 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wvif, align 4
  tail call void @wfx_tx_unlock(ptr noundef %49) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_hw_scan(ptr nocapture noundef readnone %hw, ptr noundef %vif, ptr noundef %hw_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %n_channels = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %1)
  %cmp = icmp ugt i32 %1, 14
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !41

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 131, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %scan_req = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hw_req, ptr %scan_req, align 4
  %scan_work = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 1, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %scan_work) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_cancel_hw_scan(ptr nocapture noundef readnone %hw, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %scan_abort = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %scan_abort to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %scan_abort, align 4
  %call = tail call i32 @hif_stop_scan(ptr noundef %drv_priv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_stop_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_scan_complete(ptr noundef %wvif, i32 noundef %nb_chan_done) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_nb_chan_done = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 16
  %0 = ptrtoint ptr %scan_nb_chan_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %nb_chan_done, ptr %scan_nb_chan_done, align 4
  %scan_complete = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 15
  tail call void @complete(ptr noundef %scan_complete) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_probereq_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_template_frame(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx_lock_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_scan(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_output_power(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/wfx/scan.c", i32 101, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wfx_hw_scan_work._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @wfx_hw_scan_work._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/wfx/scan.c", i32 117, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @wfx_hw_scan_work._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @wfx_hw_scan_work._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/wfx/scan.c", i32 50, i32 3}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/wfx/scan.c", i32 68, i32 3}
!17 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @send_scan_req.__UNIQUE_ID_ddebug351, !16, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/wfx/scan.c", i32 72, i32 3}
!22 = !{ptr @send_scan_req._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @send_scan_req._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/wfx/scan.c", i32 75, i32 3}
!26 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @send_scan_req._entry.14, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @send_scan_req._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2148424774, i64 2148424779, i64 2148424792, i64 2148424836, i64 2148424870, i64 2148424891}
!41 = !{!"branch_weights", i32 1, i32 2000}
