; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/dfs_pattern_detector.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/dfs_pattern_detector.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dfs_pattern_detector_init\22, \22a\22\09"
module asm "\09.weak\09__crc_dfs_pattern_detector_init\09\09\09\09"
module asm "\09.long\09__crc_dfs_pattern_detector_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dfs_pattern_detector_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dfs_pattern_detector_init\22\09\09\09\09\09"
module asm "__kstrtabns_dfs_pattern_detector_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dfs_pattern_detector = type { ptr, ptr, ptr, ptr, i32, i8, i64, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.radar_types = type { i32, i32, ptr }
%struct.radar_detector_specs = type { i8, i8, i8, i16, i16, i8, i8, i8, i8, i8 }
%struct.ath_dfs_pool_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.channel_detector = type { %struct.list_head, i16, ptr }
%struct.pulse_event = type { i64, i16, i8, i8, i8 }
%struct.pri_detector = type { ptr, ptr, ptr, ptr, i64, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.pri_sequence = type { %struct.list_head, i32, i32, i32, i32, i64, i64, i64 }

@default_dpd = internal constant { %struct.dfs_pattern_detector, [48 x i8] } { %struct.dfs_pattern_detector { ptr @dpd_exit, ptr @dpd_set_domain, ptr @dpd_add_pulse, ptr @dpd_get_stats, i32 0, i8 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not set DFS domain to %d\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_dfs_pattern_detector_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dfs_pattern_detector_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dfs_pattern_detector_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dfs_pattern_detector_init to i32), ptr @__kstrtab_dfs_pattern_detector_init, ptr @__kstrtabns_dfs_pattern_detector_init }, section "___ksymtab+dfs_pattern_detector_init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@etsi_radar_types_v15 = internal constant { %struct.radar_types, [20 x i8] } { %struct.radar_types { i32 2, i32 7, ptr @etsi_radar_ref_types_v15 }, [20 x i8] zeroinitializer }, align 32
@fcc_radar_types = internal constant { %struct.radar_types, [20 x i8] } { %struct.radar_types { i32 1, i32 9, ptr @fcc_radar_ref_types }, [20 x i8] zeroinitializer }, align 32
@jp_radar_types = internal constant { %struct.radar_types, [20 x i8] } { %struct.radar_types { i32 3, i32 9, ptr @jp_radar_ref_types }, [20 x i8] zeroinitializer }, align 32
@etsi_radar_ref_types_v15 = internal constant { [7 x %struct.radar_detector_specs], [62 x i8] } { [7 x %struct.radar_detector_specs] [%struct.radar_detector_specs { i8 0, i8 0, i8 1, i16 1413, i16 1445, i8 1, i8 18, i8 9, i8 16, i8 0 }, %struct.radar_detector_specs { i8 1, i8 0, i8 5, i16 984, i16 5016, i8 1, i8 10, i8 5, i8 16, i8 0 }, %struct.radar_detector_specs { i8 2, i8 0, i8 16, i16 609, i16 5016, i8 1, i8 15, i8 8, i8 16, i8 0 }, %struct.radar_detector_specs { i8 3, i8 0, i8 16, i16 234, i16 451, i8 1, i8 25, i8 13, i8 16, i8 0 }, %struct.radar_detector_specs { i8 4, i8 19, i8 32, i16 234, i16 516, i8 1, i8 20, i8 10, i8 16, i8 0 }, %struct.radar_detector_specs { i8 5, i8 0, i8 2, i16 2484, i16 10015, i8 3, i8 30, i8 5, i8 16, i8 0 }, %struct.radar_detector_specs { i8 6, i8 0, i8 2, i16 817, i16 7516, i8 3, i8 45, i8 8, i8 16, i8 0 }], [62 x i8] zeroinitializer }, align 32
@fcc_radar_ref_types = internal constant { [9 x %struct.radar_detector_specs], [34 x i8] } { [9 x %struct.radar_detector_specs] [%struct.radar_detector_specs { i8 0, i8 0, i8 1, i16 1412, i16 1444, i8 1, i8 18, i8 9, i8 16, i8 0 }, %struct.radar_detector_specs { i8 101, i8 0, i8 1, i16 502, i16 954, i8 1, i8 57, i8 29, i8 16, i8 0 }, %struct.radar_detector_specs { i8 102, i8 0, i8 1, i16 922, i16 2016, i8 1, i8 27, i8 14, i8 16, i8 0 }, %struct.radar_detector_specs { i8 103, i8 0, i8 1, i16 1984, i16 3082, i8 1, i8 18, i8 9, i8 16, i8 0 }, %struct.radar_detector_specs { i8 2, i8 0, i8 5, i16 134, i16 246, i8 1, i8 23, i8 12, i8 16, i8 0 }, %struct.radar_detector_specs { i8 3, i8 6, i8 11, i16 184, i16 516, i8 1, i8 16, i8 8, i8 16, i8 0 }, %struct.radar_detector_specs { i8 4, i8 10, i8 21, i16 184, i16 516, i8 1, i8 12, i8 6, i8 16, i8 0 }, %struct.radar_detector_specs { i8 5, i8 48, i8 105, i16 984, i16 2016, i8 1, i8 1, i8 1, i8 16, i8 1 }, %struct.radar_detector_specs { i8 6, i8 0, i8 1, i16 317, i16 349, i8 1, i8 9, i8 5, i8 16, i8 0 }], [34 x i8] zeroinitializer }, align 32
@jp_radar_ref_types = internal constant { [9 x %struct.radar_detector_specs], [34 x i8] } { [9 x %struct.radar_detector_specs] [%struct.radar_detector_specs { i8 0, i8 0, i8 1, i16 1412, i16 1444, i8 1, i8 18, i8 5, i8 16, i8 0 }, %struct.radar_detector_specs { i8 1, i8 2, i8 3, i16 3830, i16 3862, i8 1, i8 18, i8 5, i8 16, i8 0 }, %struct.radar_detector_specs { i8 2, i8 0, i8 1, i16 1372, i16 1404, i8 1, i8 18, i8 9, i8 16, i8 0 }, %struct.radar_detector_specs { i8 3, i8 0, i8 4, i16 3984, i16 4016, i8 1, i8 18, i8 9, i8 16, i8 0 }, %struct.radar_detector_specs { i8 4, i8 0, i8 5, i16 134, i16 246, i8 1, i8 23, i8 12, i8 16, i8 0 }, %struct.radar_detector_specs { i8 5, i8 6, i8 11, i16 184, i16 516, i8 1, i8 16, i8 8, i8 16, i8 0 }, %struct.radar_detector_specs { i8 6, i8 10, i8 21, i16 184, i16 516, i8 1, i8 12, i8 6, i8 16, i8 0 }, %struct.radar_detector_specs { i8 7, i8 48, i8 105, i16 984, i16 2016, i8 1, i8 3, i8 2, i8 16, i8 1 }, %struct.radar_detector_specs { i8 5, i8 0, i8 1, i16 317, i16 349, i8 1, i8 9, i8 5, i8 16, i8 0 }], [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"DFS: radar found on freq=%d: id=%d, pri=%d, count=%d, count_false=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to allocate channel_detector for freq=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@global_dfs_pool_stats = external dso_local local_unnamed_addr global %struct.ath_dfs_pool_stats, align 4
@switch.table.dpd_set_domain = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @fcc_radar_types, ptr @etsi_radar_types_v15, ptr @jp_radar_types], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"default_dpd\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 345, i32 42 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 373, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"etsi_radar_types_v15\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 65, i32 33 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"fcc_radar_types\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 97, i32 33 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"jp_radar_types\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 122, i32 33 }
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"etsi_radar_ref_types_v15\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 55, i32 42 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"fcc_radar_ref_types\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 85, i32 42 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"jp_radar_ref_types\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 110, i32 42 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 302, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [51 x i8] c"../drivers/net/wireless/ath/dfs_pattern_detector.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 225, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [28 x i8] c"switch.table.dpd_set_domain\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_dfs_pattern_detector_init, ptr @default_dpd, ptr @.str, ptr @.str.1, ptr @etsi_radar_types_v15, ptr @fcc_radar_types, ptr @jp_radar_types, ptr @etsi_radar_ref_types_v15, ptr @fcc_radar_ref_types, ptr @jp_radar_ref_types, ptr @.str.2, ptr @.str.3, ptr @switch.table.dpd_set_domain], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_dpd to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etsi_radar_types_v15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcc_radar_types to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jp_radar_types to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etsi_radar_ref_types_v15 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcc_radar_ref_types to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jp_radar_ref_types to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dpd_set_domain to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dfs_pattern_detector_init(ptr noundef %common, i32 noundef %region) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 48) #8
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memcpy(ptr %call7.i, ptr @default_dpd, i32 40)
  %channel_detectors = getelementptr inbounds %struct.dfs_pattern_detector, ptr %call7.i, i32 0, i32 9
  %2 = ptrtoint ptr %channel_detectors to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %channel_detectors, ptr %channel_detectors, align 8
  %prev.i = getelementptr inbounds %struct.dfs_pattern_detector, ptr %call7.i, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %channel_detectors, ptr %prev.i, align 4
  %common1 = getelementptr inbounds %struct.dfs_pattern_detector, ptr %call7.i, i32 0, i32 7
  %4 = ptrtoint ptr %common1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %common, ptr %common1, align 8
  %call2 = tail call zeroext i1 @dpd_set_domain(ptr noundef nonnull %call7.i, i32 noundef %region) #5
  br i1 %call2, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %debug_mask = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 3
  %5 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_mask, align 4
  %and = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then5

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common, ptr noundef nonnull @.str.1, i32 noundef %region) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body.do.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ %call7.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpd_exit(ptr noundef %dpd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_detectors = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 9
  %0 = ptrtoint ptr %channel_detectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel_detectors, align 8
  %cmp.not18 = icmp eq ptr %1, %channel_detectors
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %num_radar_types.i = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %channel_detector_exit.exit.for.body_crit_edge, %for.body.lr.ph
  %cd.019 = phi ptr [ %1, %for.body.lr.ph ], [ %cd0.0, %channel_detector_exit.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %cd.019 to i32
  call void @__asan_load4_noabort(i32 %2)
  %cd0.0 = load ptr, ptr %cd.019, align 4
  %cmp.i = icmp eq ptr %cd.019, null
  br i1 %cmp.i, label %for.body.channel_detector_exit.exit_crit_edge, label %if.end.i

for.body.channel_detector_exit.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %channel_detector_exit.exit

if.end.i:                                         ; preds = %for.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %cd.019) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %cd.019, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %cd.019 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cd.019, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %cd.019 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %cd.019, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cd.019, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %detectors.i = getelementptr inbounds %struct.channel_detector, ptr %cd.019, i32 0, i32 2
  %11 = ptrtoint ptr %detectors.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %detectors.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %list_del.exit.i.if.end9.i_crit_edge, label %for.cond.preheader.i

list_del.exit.i.if.end9.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

for.cond.preheader.i:                             ; preds = %list_del.exit.i
  %13 = ptrtoint ptr %num_radar_types.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_radar_types.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp221.not.i = icmp eq i8 %14, 0
  br i1 %cmp221.not.i, label %for.cond.preheader.i.if.end9.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end9.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %if.end8.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %detectors.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %detectors.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %i.022.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %cmp5.not.i = icmp eq ptr %18, null
  br i1 %cmp5.not.i, label %for.body.i.if.end8.i_crit_edge, label %if.then7.i

for.body.i.if.end8.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void %20(ptr noundef nonnull %18) #5
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %for.body.i.if.end8.i_crit_edge
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %21 = ptrtoint ptr %num_radar_types.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_radar_types.i, align 4
  %conv.i = zext i8 %22 to i32
  %cmp2.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp2.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.if.end9.i_crit_edge

if.end8.i.if.end9.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end9.i:                                        ; preds = %if.end8.i.if.end9.i_crit_edge, %for.cond.preheader.i.if.end9.i_crit_edge, %list_del.exit.i.if.end9.i_crit_edge
  %23 = ptrtoint ptr %detectors.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %detectors.i, align 4
  tail call void @kfree(ptr noundef %24) #5
  tail call void @kfree(ptr noundef nonnull %cd.019) #5
  br label %channel_detector_exit.exit

channel_detector_exit.exit:                       ; preds = %if.end9.i, %for.body.channel_detector_exit.exit_crit_edge
  %cmp.not = icmp eq ptr %cd0.0, %channel_detectors
  br i1 %cmp.not, label %channel_detector_exit.exit.for.end_crit_edge, label %channel_detector_exit.exit.for.body_crit_edge

channel_detector_exit.exit.for.body_crit_edge:    ; preds = %channel_detector_exit.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

channel_detector_exit.exit.for.end_crit_edge:     ; preds = %channel_detector_exit.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %channel_detector_exit.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %dpd) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dpd_set_domain(ptr noundef %dpd, i32 noundef %region) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %region1 = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 4
  %0 = ptrtoint ptr %region1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %region1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %region)
  %cmp = icmp eq i32 %1, %region
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %region1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %region1, align 8
  %switch.tableidx = add i32 %region, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 3
  br i1 %3, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.dpd_set_domain, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %channel_detectors = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 9
  %5 = ptrtoint ptr %channel_detectors to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channel_detectors, align 8
  %cmp12.not39 = icmp eq ptr %6, %channel_detectors
  br i1 %cmp12.not39, label %switch.lookup.for.end_crit_edge, label %for.body.lr.ph

switch.lookup.for.end_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %switch.lookup
  %num_radar_types.i = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %channel_detector_exit.exit.for.body_crit_edge, %for.body.lr.ph
  %cd.040 = phi ptr [ %6, %for.body.lr.ph ], [ %cd0.0, %channel_detector_exit.exit.for.body_crit_edge ]
  %7 = ptrtoint ptr %cd.040 to i32
  call void @__asan_load4_noabort(i32 %7)
  %cd0.0 = load ptr, ptr %cd.040, align 4
  %cmp.i = icmp eq ptr %cd.040, null
  br i1 %cmp.i, label %for.body.channel_detector_exit.exit_crit_edge, label %if.end.i

for.body.channel_detector_exit.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %channel_detector_exit.exit

if.end.i:                                         ; preds = %for.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %cd.040) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %cd.040, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %cd.040 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cd.040, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %14 = ptrtoint ptr %cd.040 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %cd.040, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cd.040, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %detectors.i = getelementptr inbounds %struct.channel_detector, ptr %cd.040, i32 0, i32 2
  %16 = ptrtoint ptr %detectors.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %detectors.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %list_del.exit.i.if.end9.i_crit_edge, label %for.cond.preheader.i

list_del.exit.i.if.end9.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

for.cond.preheader.i:                             ; preds = %list_del.exit.i
  %18 = ptrtoint ptr %num_radar_types.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_radar_types.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp221.not.i = icmp eq i8 %19, 0
  br i1 %cmp221.not.i, label %for.cond.preheader.i.if.end9.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end9.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %if.end8.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %detectors.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %detectors.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %i.022.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %cmp5.not.i = icmp eq ptr %23, null
  br i1 %cmp5.not.i, label %for.body.i.if.end8.i_crit_edge, label %if.then7.i

for.body.i.if.end8.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  tail call void %25(ptr noundef nonnull %23) #5
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %for.body.i.if.end8.i_crit_edge
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %26 = ptrtoint ptr %num_radar_types.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_radar_types.i, align 4
  %conv.i = zext i8 %27 to i32
  %cmp2.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp2.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.if.end9.i_crit_edge

if.end8.i.if.end9.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end9.i:                                        ; preds = %if.end8.i.if.end9.i_crit_edge, %for.cond.preheader.i.if.end9.i_crit_edge, %list_del.exit.i.if.end9.i_crit_edge
  %28 = ptrtoint ptr %detectors.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %detectors.i, align 4
  tail call void @kfree(ptr noundef %29) #5
  tail call void @kfree(ptr noundef nonnull %cd.040) #5
  br label %channel_detector_exit.exit

channel_detector_exit.exit:                       ; preds = %if.end9.i, %for.body.channel_detector_exit.exit_crit_edge
  %cmp12.not = icmp eq ptr %cd0.0, %channel_detectors
  br i1 %cmp12.not, label %channel_detector_exit.exit.for.end_crit_edge, label %channel_detector_exit.exit.for.body_crit_edge

channel_detector_exit.exit.for.body_crit_edge:    ; preds = %channel_detector_exit.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

channel_detector_exit.exit.for.end_crit_edge:     ; preds = %channel_detector_exit.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %channel_detector_exit.exit.for.end_crit_edge, %switch.lookup.for.end_crit_edge
  %radar_types = getelementptr inbounds %struct.radar_types, ptr %switch.load, i32 0, i32 2
  %30 = ptrtoint ptr %radar_types to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %radar_types, align 4
  %radar_spec = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 8
  %32 = ptrtoint ptr %radar_spec to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %radar_spec, align 4
  %num_radar_types = getelementptr inbounds %struct.radar_types, ptr %switch.load, i32 0, i32 1
  %33 = ptrtoint ptr %num_radar_types to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_radar_types, align 4
  %conv = trunc i32 %34 to i8
  %num_radar_types18 = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 5
  %35 = ptrtoint ptr %num_radar_types18 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv, ptr %num_radar_types18, align 4
  %36 = ptrtoint ptr %region1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %region, ptr %region1, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %for.end ], [ true, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dpd_add_pulse(ptr noundef %dpd, ptr noundef %event, ptr noundef writeonly %rs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %region = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 4
  %0 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %region, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup30_crit_edge, label %if.end

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup30

if.end:                                           ; preds = %entry
  %freq = getelementptr inbounds %struct.pulse_event, ptr %event, i32 0, i32 1
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %freq, align 8
  %channel_detectors.i = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %cd.0.in.i = phi ptr [ %channel_detectors.i, %if.end ], [ %cd.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %cd.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %cd.0.i = load ptr, ptr %cd.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cd.0.i, %channel_detectors.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %freq2.i = getelementptr inbounds %struct.channel_detector, ptr %cd.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %freq2.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %freq2.i, align 4
  %cmp4.i = icmp eq i16 %6, %3
  br i1 %cmp4.i, label %for.body.i.channel_detector_get.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.body.i.channel_detector_get.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %channel_detector_get.exit

for.end.i:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2592, i32 noundef 16) #8
  %cmp.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i.i, label %for.end.i.do.body.i.i_crit_edge, label %if.end.i.i

for.end.i.do.body.i.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

if.end.i.i:                                       ; preds = %for.end.i
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %prev.i.i.i, align 4
  %freq1.i.i = getelementptr inbounds %struct.channel_detector, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %freq1.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %3, ptr %freq1.i.i, align 8
  %num_radar_types.i.i = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 5
  %11 = ptrtoint ptr %num_radar_types.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_radar_types.i.i, align 4
  %conv.i.i = zext i8 %12 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 2
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i, i32 noundef 2848) #9
  %detectors.i.i = getelementptr inbounds %struct.channel_detector, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %detectors.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i.i.i, ptr %detectors.i.i, align 4
  %cmp4.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %cmp4.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %14 = ptrtoint ptr %num_radar_types.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_radar_types.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp1053.not.i.i = icmp eq i8 %15, 0
  br i1 %cmp1053.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %radar_spec.i.i = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.054.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %16 = ptrtoint ptr %radar_spec.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %radar_spec.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.radar_detector_specs, ptr %17, i32 %i.054.i.i
  %call12.i.i = tail call ptr @pri_detector_init(ptr noundef %arrayidx.i.i) #5
  %cmp13.i.i = icmp eq ptr %call12.i.i, null
  br i1 %cmp13.i.i, label %for.body.i.i.do.body.i.i_crit_edge, label %for.inc.i.i

for.body.i.i.do.body.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %18 = ptrtoint ptr %detectors.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %detectors.i.i, align 4
  %arrayidx18.i.i = getelementptr ptr, ptr %19, i32 %i.054.i.i
  %20 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call12.i.i, ptr %arrayidx18.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.054.i.i, 1
  %21 = ptrtoint ptr %num_radar_types.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_radar_types.i.i, align 4
  %conv9.i.i = zext i8 %22 to i32
  %cmp10.i.i = icmp ult i32 %inc.i.i, %conv9.i.i
  br i1 %cmp10.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %23 = ptrtoint ptr %channel_detectors.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channel_detectors.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %channel_detectors.i, ptr noundef %24) #5
  br i1 %call.i.i.i.i, label %if.end.i.i48.i.i, label %for.end.i.i.channel_detector_get.exit_crit_edge

for.end.i.i.channel_detector_get.exit_crit_edge:  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %channel_detector_get.exit

if.end.i.i48.i.i:                                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %call7.i.i.i, align 8
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %channel_detectors.i, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %channel_detectors.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call7.i.i.i, ptr %channel_detectors.i, align 4
  br label %channel_detector_get.exit

do.body.i.i:                                      ; preds = %for.body.i.i.do.body.i.i_crit_edge, %if.end.i.i.do.body.i.i_crit_edge, %for.end.i.do.body.i.i_crit_edge
  %common.i.i = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 7
  %29 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %common.i.i, align 8
  %debug_mask.i.i = getelementptr inbounds %struct.ath_common, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %debug_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug_mask.i.i, align 4
  %and.i.i = and i32 %32, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.end.i.i_crit_edge, label %if.then21.i.i

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

if.then21.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv23.i.i = zext i16 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %30, ptr noundef nonnull @.str.3, i32 noundef %conv23.i.i) #5
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then21.i.i, %do.body.i.i.do.end.i.i_crit_edge
  br i1 %cmp.i.i, label %do.end.i.i.cleanup30_crit_edge, label %if.end.i.i.i

do.end.i.i.cleanup30_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup30

if.end.i.i.i:                                     ; preds = %do.end.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i49.i.i, label %if.end.i.i.i.list_del.exit.i.i.i_crit_edge

if.end.i.i.i.list_del.exit.i.i.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i.i.i

if.end.i.i.i49.i.i:                               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i.i, align 8
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i49.i.i, %if.end.i.i.i.list_del.exit.i.i.i_crit_edge
  %39 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %detectors.i.i.i = getelementptr inbounds %struct.channel_detector, ptr %call7.i.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %detectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %detectors.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.i, label %list_del.exit.i.i.i.if.end9.i.i.i_crit_edge, label %for.cond.preheader.i.i.i

list_del.exit.i.i.i.if.end9.i.i.i_crit_edge:      ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %list_del.exit.i.i.i
  %num_radar_types.i.i.i = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 5
  %43 = ptrtoint ptr %num_radar_types.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_radar_types.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp221.not.i.i.i = icmp eq i8 %44, 0
  br i1 %cmp221.not.i.i.i, label %for.cond.preheader.i.i.i.if.end9.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.if.end9.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i.i.i

for.body.i.i.i:                                   ; preds = %if.end8.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %i.022.i.i.i = phi i32 [ %inc.i.i.i, %if.end8.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %45 = ptrtoint ptr %detectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %detectors.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %46, i32 %i.022.i.i.i
  %47 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp5.not.i.i.i = icmp eq ptr %48, null
  br i1 %cmp5.not.i.i.i, label %for.body.i.i.i.if.end8.i.i.i_crit_edge, label %if.then7.i.i.i

for.body.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i.i

if.then7.i.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  tail call void %50(ptr noundef nonnull %48) #5
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then7.i.i.i, %for.body.i.i.i.if.end8.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.022.i.i.i, 1
  %51 = ptrtoint ptr %num_radar_types.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_radar_types.i.i.i, align 4
  %conv.i.i.i = zext i8 %52 to i32
  %cmp2.i.i.i = icmp ult i32 %inc.i.i.i, %conv.i.i.i
  br i1 %cmp2.i.i.i, label %if.end8.i.i.i.for.body.i.i.i_crit_edge, label %if.end8.i.i.i.if.end9.i.i.i_crit_edge

if.end8.i.i.i.if.end9.i.i.i_crit_edge:            ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i.i.i

if.end8.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

if.end9.i.i.i:                                    ; preds = %if.end8.i.i.i.if.end9.i.i.i_crit_edge, %for.cond.preheader.i.i.i.if.end9.i.i.i_crit_edge, %list_del.exit.i.i.i.if.end9.i.i.i_crit_edge
  %53 = ptrtoint ptr %detectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %detectors.i.i.i, align 4
  tail call void @kfree(ptr noundef %54) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %cleanup30

channel_detector_get.exit:                        ; preds = %if.end.i.i48.i.i, %for.end.i.i.channel_detector_get.exit_crit_edge, %for.body.i.channel_detector_get.exit_crit_edge
  %retval.0.i = phi ptr [ %call7.i.i.i, %for.end.i.i.channel_detector_get.exit_crit_edge ], [ %call7.i.i.i, %if.end.i.i48.i.i ], [ %cd.0.i, %for.body.i.channel_detector_get.exit_crit_edge ]
  %cmp1 = icmp eq ptr %retval.0.i, null
  br i1 %cmp1, label %channel_detector_get.exit.cleanup30_crit_edge, label %if.end3

channel_detector_get.exit.cleanup30_crit_edge:    ; preds = %channel_detector_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup30

if.end3:                                          ; preds = %channel_detector_get.exit
  %55 = ptrtoint ptr %event to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %event, align 8
  %last_pulse_ts = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 6
  %57 = ptrtoint ptr %last_pulse_ts to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %last_pulse_ts, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %58)
  %cmp4 = icmp ult i64 %56, %58
  br i1 %cmp4, label %if.then5, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  %59 = ptrtoint ptr %channel_detectors.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %cd.011.i = load ptr, ptr %channel_detectors.i, align 4
  %cmp.not12.i = icmp eq ptr %cd.011.i, %channel_detectors.i
  br i1 %cmp.not12.i, label %if.then5.if.end6_crit_edge, label %for.body.lr.ph.i

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

for.body.lr.ph.i:                                 ; preds = %if.then5
  %num_radar_types.i.i57 = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 5
  br label %for.body.i59

for.body.i59:                                     ; preds = %channel_detector_reset.exit.i.for.body.i59_crit_edge, %for.body.lr.ph.i
  %cd.013.i = phi ptr [ %cd.011.i, %for.body.lr.ph.i ], [ %cd.0.i67, %channel_detector_reset.exit.i.for.body.i59_crit_edge ]
  %cmp.i.i58 = icmp eq ptr %cd.013.i, null
  br i1 %cmp.i.i58, label %for.body.i59.channel_detector_reset.exit.i_crit_edge, label %for.cond.preheader.i.i60

for.body.i59.channel_detector_reset.exit.i_crit_edge: ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %channel_detector_reset.exit.i

for.cond.preheader.i.i60:                         ; preds = %for.body.i59
  %60 = ptrtoint ptr %num_radar_types.i.i57 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %num_radar_types.i.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp112.not.i.i = icmp eq i8 %61, 0
  br i1 %cmp112.not.i.i, label %for.cond.preheader.i.i60.channel_detector_reset.exit.i_crit_edge, label %for.body.lr.ph.i.i62

for.cond.preheader.i.i60.channel_detector_reset.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %channel_detector_reset.exit.i

for.body.lr.ph.i.i62:                             ; preds = %for.cond.preheader.i.i60
  %detectors.i.i61 = getelementptr inbounds %struct.channel_detector, ptr %cd.013.i, i32 0, i32 2
  br label %for.body.i.i66

for.body.i.i66:                                   ; preds = %for.body.i.i66.for.body.i.i66_crit_edge, %for.body.lr.ph.i.i62
  %i.013.i.i = phi i32 [ 0, %for.body.lr.ph.i.i62 ], [ %inc.i.i64, %for.body.i.i66.for.body.i.i66_crit_edge ]
  %62 = ptrtoint ptr %detectors.i.i61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %detectors.i.i61, align 4
  %arrayidx.i.i63 = getelementptr ptr, ptr %63, i32 %i.013.i.i
  %64 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i63, align 4
  %reset.i.i = getelementptr inbounds %struct.pri_detector, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reset.i.i, align 8
  %68 = ptrtoint ptr %last_pulse_ts to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %last_pulse_ts, align 8
  tail call void %67(ptr noundef %65, i64 noundef %69) #5
  %inc.i.i64 = add nuw nsw i32 %i.013.i.i, 1
  %70 = ptrtoint ptr %num_radar_types.i.i57 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %num_radar_types.i.i57, align 4
  %conv.i.i65 = zext i8 %71 to i32
  %cmp1.i.i = icmp ult i32 %inc.i.i64, %conv.i.i65
  br i1 %cmp1.i.i, label %for.body.i.i66.for.body.i.i66_crit_edge, label %for.body.i.i66.channel_detector_reset.exit.i_crit_edge

for.body.i.i66.channel_detector_reset.exit.i_crit_edge: ; preds = %for.body.i.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %channel_detector_reset.exit.i

for.body.i.i66.for.body.i.i66_crit_edge:          ; preds = %for.body.i.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i66

channel_detector_reset.exit.i:                    ; preds = %for.body.i.i66.channel_detector_reset.exit.i_crit_edge, %for.cond.preheader.i.i60.channel_detector_reset.exit.i_crit_edge, %for.body.i59.channel_detector_reset.exit.i_crit_edge
  %72 = ptrtoint ptr %cd.013.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %cd.0.i67 = load ptr, ptr %cd.013.i, align 4
  %cmp.not.i68 = icmp eq ptr %cd.0.i67, %channel_detectors.i
  br i1 %cmp.not.i68, label %channel_detector_reset.exit.i.if.end6_crit_edge, label %channel_detector_reset.exit.i.for.body.i59_crit_edge

channel_detector_reset.exit.i.for.body.i59_crit_edge: ; preds = %channel_detector_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i59

channel_detector_reset.exit.i.if.end6_crit_edge:  ; preds = %channel_detector_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %channel_detector_reset.exit.i.if.end6_crit_edge, %if.then5.if.end6_crit_edge, %if.end3.if.end6_crit_edge
  %73 = ptrtoint ptr %event to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %event, align 8
  %75 = ptrtoint ptr %last_pulse_ts to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %last_pulse_ts, align 8
  %num_radar_types = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 5
  %76 = ptrtoint ptr %num_radar_types to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %num_radar_types, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp974.not = icmp eq i8 %77, 0
  br i1 %cmp974.not, label %if.end6.cleanup30_crit_edge, label %for.body.lr.ph

if.end6.cleanup30_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup30

for.body.lr.ph:                                   ; preds = %if.end6
  %detectors = getelementptr inbounds %struct.channel_detector, ptr %retval.0.i, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.075, 1
  %78 = ptrtoint ptr %num_radar_types to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %num_radar_types, align 4
  %conv = zext i8 %79 to i32
  %cmp9 = icmp ult i32 %inc, %conv
  br i1 %cmp9, label %for.cond.for.body_crit_edge, label %for.cond.cleanup30_crit_edge

for.cond.cleanup30_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup30

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %80 = ptrtoint ptr %detectors to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %detectors, align 4
  %arrayidx = getelementptr ptr, ptr %81, i32 %i.075
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx, align 4
  %add_pulse = getelementptr inbounds %struct.pri_detector, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %add_pulse to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add_pulse, align 4
  %call11 = tail call ptr %85(ptr noundef %83, ptr noundef %event) #5
  %cmp12.not = icmp eq ptr %call11, null
  br i1 %cmp12.not, label %for.cond, label %if.then14

if.then14:                                        ; preds = %for.body
  %cmp15.not = icmp eq ptr %rs, null
  br i1 %cmp15.not, label %if.then14.do.body_crit_edge, label %if.then17

if.then14.do.body_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %rs18 = getelementptr inbounds %struct.pri_detector, ptr %83, i32 0, i32 3
  %86 = ptrtoint ptr %rs18 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rs18, align 4
  %88 = call ptr @memcpy(ptr %rs, ptr %87, i32 14)
  br label %do.body

do.body:                                          ; preds = %if.then17, %if.then14.do.body_crit_edge
  %common = getelementptr inbounds %struct.dfs_pattern_detector, ptr %dpd, i32 0, i32 7
  %89 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %common, align 8
  %debug_mask = getelementptr inbounds %struct.ath_common, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %debug_mask, align 4
  %and = and i32 %92, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then20

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %freq, align 8
  %conv23 = zext i16 %94 to i32
  %rs24 = getelementptr inbounds %struct.pri_detector, ptr %83, i32 0, i32 3
  %95 = ptrtoint ptr %rs24 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rs24, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 2
  %conv25 = zext i8 %98 to i32
  %pri = getelementptr inbounds %struct.pri_sequence, ptr %call11, i32 0, i32 1
  %99 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pri, align 8
  %count = getelementptr inbounds %struct.pri_sequence, ptr %call11, i32 0, i32 3
  %101 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %count, align 8
  %count_falses = getelementptr inbounds %struct.pri_sequence, ptr %call11, i32 0, i32 4
  %103 = ptrtoint ptr %count_falses to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %count_falses, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %90, ptr noundef nonnull @.str.2, i32 noundef %conv23, i32 noundef %conv25, i32 noundef %100, i32 noundef %102, i32 noundef %104) #5
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body.do.end_crit_edge
  %reset = getelementptr inbounds %struct.pri_detector, ptr %83, i32 0, i32 2
  %105 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %reset, align 8
  %107 = ptrtoint ptr %last_pulse_ts to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %last_pulse_ts, align 8
  tail call void %106(ptr noundef %83, i64 noundef %108) #5
  br label %cleanup30

cleanup30:                                        ; preds = %do.end, %for.cond.cleanup30_crit_edge, %if.end6.cleanup30_crit_edge, %channel_detector_get.exit.cleanup30_crit_edge, %if.end9.i.i.i, %do.end.i.i.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.2 = phi i1 [ true, %entry.cleanup30_crit_edge ], [ false, %channel_detector_get.exit.cleanup30_crit_edge ], [ true, %do.end ], [ false, %do.end.i.i.cleanup30_crit_edge ], [ false, %if.end9.i.i.i ], [ false, %if.end6.cleanup30_crit_edge ], [ false, %for.cond.cleanup30_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dpd_get_stats(ptr noalias nocapture writeonly sret(%struct.ath_dfs_pool_stats) align 4 %agg.result, ptr nocapture noundef readnone %dpd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %agg.result, ptr @global_dfs_pool_stats, i32 28)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pri_detector_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/dfs_pattern_detector.c", i32 373, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_dfs_pattern_detector_init, !4, !"__ksymtab_dfs_pattern_detector_init", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/dfs_pattern_detector.c", i32 377, i32 1}
!5 = !{ptr @default_dpd, !6, !"default_dpd", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/dfs_pattern_detector.c", i32 345, i32 42}
!7 = distinct !{null, !8, !"dfs_domains", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/dfs_pattern_detector.c", i32 128, i32 34}
!9 = !{ptr @etsi_radar_types_v15, !10, !"etsi_radar_types_v15", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/dfs_pattern_detector.c", i32 65, i32 33}
!11 = !{ptr @etsi_radar_ref_types_v15, !12, !"etsi_radar_ref_types_v15", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/dfs_pattern_detector.c", i32 55, i32 42}
!13 = !{ptr @fcc_radar_types, !14, !"fcc_radar_types", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/dfs_pattern_detector.c", i32 97, i32 33}
!15 = !{ptr @fcc_radar_ref_types, !16, !"fcc_radar_ref_types", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/dfs_pattern_detector.c", i32 85, i32 42}
!17 = !{ptr @jp_radar_types, !18, !"jp_radar_types", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/dfs_pattern_detector.c", i32 122, i32 33}
!19 = !{ptr @jp_radar_ref_types, !20, !"jp_radar_ref_types", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/dfs_pattern_detector.c", i32 110, i32 42}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/dfs_pattern_detector.c", i32 302, i32 4}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/dfs_pattern_detector.c", i32 225, i32 2}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
