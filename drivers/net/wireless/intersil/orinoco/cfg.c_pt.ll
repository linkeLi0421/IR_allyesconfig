; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/orinoco/cfg.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/orinoco/cfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.133, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.anon.133 = type { i64, i64, i8 }
%struct.orinoco_private = type { ptr, ptr, ptr, ptr, %struct.ieee80211_supported_band, [14 x %struct.ieee80211_channel], [3 x i32], %struct.spinlock, i32, %struct.work_struct, %struct.tasklet_struct, %struct.list_head, i32, i16, %struct.work_struct, %struct.work_struct, ptr, %struct.iw_statistics, %struct.hermes, i16, i32, i32, i32, i16, i16, i32, i32, i16, i16, [4 x %struct.key_params], i32, [33 x i8], [33 x i8], [6 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %struct.iw_spy_data, %struct.iw_public_data, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, i8, ptr, ptr, %struct.notifier_block }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.134, i32 }
%union.anon.134 = type { ptr }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.hermes = type { ptr, i32, i16, i8, ptr, ptr }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_public_data = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hermes_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }

@orinoco_wiphy_privid = internal constant { ptr, [28 x i8] } { ptr @orinoco_wiphy_privid, [28 x i8] zeroinitializer }, align 32
@force_monitor = external dso_local local_unnamed_addr global i32, align 4
@orinoco_rates = internal global { [4 x %struct.ieee80211_rate], [48 x i8] } { [4 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 0, i16 0 }], [48 x i8] zeroinitializer }, align 32
@orinoco_cfg_ops = dso_local constant { %struct.cfg80211_ops, [108 x i8] } { %struct.cfg80211_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @orinoco_change_vif, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @orinoco_set_monitor_channel, ptr @orinoco_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @orinoco_set_wiphy_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [108 x i8] zeroinitializer }, align 32
@orinoco_change_vif._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 122, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Monitor mode support is buggy in this firmware, not enabling\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"orinoco_change_vif\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/intersil/orinoco/cfg.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@orinoco_change_vif._entry_ptr = internal global ptr @orinoco_change_vif._entry, section ".printk_index", align 4
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@orinoco_set_wiphy_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\014%s: Fixed fragmentation is not supported on this firmware. Using MWO robust instead.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"orinoco_set_wiphy_params\00", [39 x i8] zeroinitializer }, align 32
@orinoco_set_wiphy_params._entry_ptr = internal global ptr @orinoco_set_wiphy_params._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"orinoco_wiphy_privid\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 21, i32 27 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"orinoco_rates\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 14, i32 30 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"orinoco_cfg_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 286, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 121, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 778, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [47 x i8] c"../drivers/net/wireless/intersil/orinoco/cfg.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 226, i32 5 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @orinoco_change_vif._entry, ptr @orinoco_change_vif._entry_ptr, ptr @orinoco_set_wiphy_params._entry, ptr @orinoco_set_wiphy_params._entry_ptr, ptr @orinoco_wiphy_privid, ptr @orinoco_rates, ptr @orinoco_cfg_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_wiphy_privid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_rates to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_cfg_ops to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_change_vif._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_set_wiphy_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orinoco_wiphy_init(ptr noundef %wiphy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !30

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #4, !srcloc !31
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %privid = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 52
  %0 = ptrtoint ptr %privid to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @orinoco_wiphy_privid, ptr %privid, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %parent.i, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_wiphy_register(ptr noundef %wiphy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !30

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #4, !srcloc !31
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %firmware_type = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 31
  %0 = ptrtoint ptr %firmware_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firmware_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %spec.select = zext i1 %cmp to i8
  %2 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 18
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %spec.select, ptr %2, align 32
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 9
  %has_ibss = getelementptr inbounds %struct.orinoco_private, ptr %priv.i, i32 0, i32 24
  %4 = ptrtoint ptr %has_ibss to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %has_ibss, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  %spec.store.select = select i1 %tobool.not, i16 4, i16 6
  %5 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %spec.store.select, ptr %interface_modes, align 4
  %6 = and i16 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool9.not = icmp eq i16 %6, 0
  br i1 %tobool9.not, label %wiphy_priv.exit.if.then11_crit_edge, label %lor.lhs.false

wiphy_priv.exit.if.then11_crit_edge:              ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

lor.lhs.false:                                    ; preds = %wiphy_priv.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @force_monitor to i32))
  %7 = load i32, ptr @force_monitor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.end16_crit_edge, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %wiphy_priv.exit.if.then11_crit_edge
  %8 = or i16 %spec.store.select, 64
  %9 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %interface_modes, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %lor.lhs.false.if.end16_crit_edge
  %bitrates = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %bitrates to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @orinoco_rates, ptr %bitrates, align 4
  %n_bitrates = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 2
  %11 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %n_bitrates, align 4
  %channel_mask = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 31, i32 0, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end16
  %channels.0128 = phi i32 [ 0, %if.end16 ], [ %channels.1, %for.inc.for.body_crit_edge ]
  %i.0126 = phi i32 [ 0, %if.end16 ], [ %.pre, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %channel_mask to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %channel_mask, align 4
  %conv20 = zext i16 %13 to i32
  %shl = shl nuw nsw i32 1, %i.0126
  %and = and i32 %shl, %conv20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  %.pre = add nuw nsw i32 %i.0126, 1
  br i1 %tobool21.not, label %for.body.for.inc_crit_edge, label %if.then22

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %.pre, i32 noundef 0) #4
  %div.i = udiv i32 %call.i, 1000
  %center_freq = getelementptr %struct.orinoco_private, ptr %priv.i, i32 0, i32 5, i32 %i.0126, i32 1
  %14 = ptrtoint ptr %center_freq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div.i, ptr %center_freq, align 4
  %inc = add i32 %channels.0128, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %for.body.for.inc_crit_edge
  %channels.1 = phi i32 [ %inc, %if.then22 ], [ %channels.0128, %for.body.for.inc_crit_edge ]
  %exitcond.not = icmp eq i32 %.pre, 14
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  %band = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 3
  %channels27 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 4
  %15 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %channels27, ptr %band, align 4
  %n_channels = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 1, i32 1
  %16 = ptrtoint ptr %n_channels to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %channels.1, ptr %n_channels, align 4
  %bands = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 53
  %17 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %band, ptr %bands, align 16
  %signal_type = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 16
  %18 = ptrtoint ptr %signal_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %signal_type, align 8
  %19 = ptrtoint ptr %has_ibss to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load33 = load i16, ptr %has_ibss, align 2
  %20 = and i16 %bf.load33, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool37.not = icmp eq i16 %20, 0
  br i1 %tobool37.not, label %for.end.if.end51_crit_edge, label %if.then38

for.end.if.end51_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then38:                                        ; preds = %for.end
  %cipher_suites = getelementptr inbounds %struct.orinoco_private, ptr %priv.i, i32 0, i32 6
  %21 = ptrtoint ptr %cipher_suites to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1027073, ptr %cipher_suites, align 4
  %22 = and i16 %bf.load33, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool45.not = icmp eq i16 %22, 0
  br i1 %tobool45.not, label %if.then38.if.end51_crit_edge, label %if.then46

if.then38.if.end51_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then46:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx48 = getelementptr %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 12, i32 9
  %23 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1027077, ptr %arrayidx48, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.then38.if.end51_crit_edge, %for.end.if.end51_crit_edge
  %i.1 = phi i32 [ 2, %if.then46 ], [ 1, %if.then38.if.end51_crit_edge ], [ 0, %for.end.if.end51_crit_edge ]
  %24 = ptrtoint ptr %has_ibss to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load52 = load i16, ptr %has_ibss, align 2
  %25 = and i16 %bf.load52, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool56.not = icmp eq i16 %25, 0
  br i1 %tobool56.not, label %if.end51.if.end61_crit_edge, label %if.then57

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.then57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx59 = getelementptr %struct.orinoco_private, ptr %priv.i, i32 0, i32 6, i32 %i.1
  %26 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1027074, ptr %arrayidx59, align 4
  %inc60 = add nuw nsw i32 %i.1, 1
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.end51.if.end61_crit_edge
  %i.2 = phi i32 [ %inc60, %if.then57 ], [ %i.1, %if.end51.if.end61_crit_edge ]
  %cipher_suites62 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i, i32 0, i32 6
  %cipher_suites64 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 28
  %27 = ptrtoint ptr %cipher_suites64 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %cipher_suites62, ptr %cipher_suites64, align 8
  %n_cipher_suites = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 27
  %28 = ptrtoint ptr %n_cipher_suites to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %i.2, ptr %n_cipher_suites, align 4
  %rts_thresh = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 2, i32 0, i32 1
  %29 = ptrtoint ptr %rts_thresh to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rts_thresh, align 4
  %conv65 = zext i16 %30 to i32
  %rts_threshold = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 36
  %31 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv65, ptr %rts_threshold, align 4
  %32 = ptrtoint ptr %has_ibss to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load66 = load i16, ptr %has_ibss, align 2
  %33 = and i16 %bf.load66, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool70.not = icmp eq i16 %33, 0
  br i1 %tobool70.not, label %if.then71, label %if.end61.if.end74_crit_edge

if.end61.if.end74_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74

if.then71:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  %frag_thresh = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 85, i32 14
  %34 = ptrtoint ptr %frag_thresh to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %frag_thresh, align 4
  %conv72 = zext i16 %35 to i32
  %add73 = add nuw nsw i32 %conv72, 1
  %frag_threshold = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 35
  %36 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add73, ptr %frag_threshold, align 16
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end61.if.end74_crit_edge
  %short_retry_limit = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 2, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %short_retry_limit to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %short_retry_limit, align 4
  %conv75 = trunc i16 %38 to i8
  %retry_short = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 33
  %39 = ptrtoint ptr %retry_short to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv75, ptr %retry_short, align 4
  %long_retry_limit = getelementptr inbounds %struct.orinoco_private, ptr %priv.i, i32 0, i32 46
  %40 = ptrtoint ptr %long_retry_limit to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %long_retry_limit, align 2
  %conv76 = trunc i16 %41 to i8
  %retry_long = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 34
  %42 = ptrtoint ptr %retry_long to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv76, ptr %retry_long, align 1
  %call77 = tail call i32 @wiphy_register(ptr noundef nonnull %wiphy) #4
  ret i32 %call77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_change_vif(ptr noundef %wiphy, ptr nocapture noundef readnone %dev, i32 noundef %type, ptr nocapture noundef readnone %params) #0 align 64 {
entry:
  %lock = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !30

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #4, !srcloc !31
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lock) #4
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lock, align 4, !annotation !32
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 28
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 12, i32 10
  call void %4(ptr noundef %lock.i, ptr noundef nonnull %lock) #4
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 12, i32 11
  %5 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i36 = icmp eq i32 %6, 0
  br i1 %tobool.not.i36, label %if.end, label %wiphy_priv.exit.cleanup_crit_edge

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %7 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.epilog
    i32 2, label %if.end.if.then20_crit_edge
    i32 6, label %sw.bb8
  ]

if.end.if.then20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %broken_monitor = getelementptr inbounds %struct.orinoco_private, ptr %priv.i, i32 0, i32 24
  %8 = ptrtoint ptr %broken_monitor to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load9 = load i16, ptr %broken_monitor, align 2
  %9 = and i16 %bf.load9, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool13.not = icmp eq i16 %9, 0
  br i1 %tobool13.not, label %sw.bb8.if.then20_crit_edge, label %land.lhs.true14

sw.bb8.if.then20_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

land.lhs.true14:                                  ; preds = %sw.bb8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @force_monitor to i32))
  %10 = load i32, ptr @force_monitor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not = icmp eq i32 %10, 0
  br i1 %tobool15.not, label %do.end, label %land.lhs.true14.if.then20_crit_edge

land.lhs.true14.if.then20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

do.end:                                           ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  %dev17 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17, ptr noundef nonnull @.str) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %has_ibss = getelementptr inbounds %struct.orinoco_private, ptr %priv.i, i32 0, i32 24
  %11 = ptrtoint ptr %has_ibss to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %has_ibss, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load)
  %12 = icmp ult i16 %bf.load, 16384
  br i1 %12, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.then20_crit_edge

sw.epilog.if.then20_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then20:                                        ; preds = %sw.epilog.if.then20_crit_edge, %land.lhs.true14.if.then20_crit_edge, %sw.bb8.if.then20_crit_edge, %if.end.if.then20_crit_edge
  %iw_mode = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4
  %13 = ptrtoint ptr %iw_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %type, ptr %iw_mode, align 4
  call void @set_port_type(ptr noundef %priv.i) #4
  %call21 = call i32 @orinoco_commit(ptr noundef %priv.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %sw.epilog.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %wiphy_priv.exit.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ %call21, %if.then20 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ]
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %17(ptr noundef %lock.i, ptr noundef nonnull %lock) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lock) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_set_monitor_channel(ptr noundef %wiphy, ptr nocapture noundef readonly %chandef) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !30

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #4, !srcloc !31
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !32
  %1 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chandef, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %wiphy_priv.exit.cleanup_crit_edge, label %if.end

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %3 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %4, label %do.end.i [
    i32 0, label %if.end.if.end3_crit_edge
    i32 1, label %if.end.cleanup_crit_edge
    i32 2, label %if.end.cleanup_crit_edge56
  ]

if.end.cleanup_crit_edge56:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 778, i32 noundef 9, ptr noundef null) #4
  br label %if.end3

if.end3:                                          ; preds = %do.end.i, %if.end.if.end3_crit_edge
  %6 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5.not = icmp eq i32 %9, 0
  br i1 %cmp5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %11, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #4
  %12 = add i32 %call.i, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %12)
  %13 = icmp ult i32 %12, -14
  br i1 %13, label %if.end7.cleanup_crit_edge, label %lor.lhs.false12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false12:                                  ; preds = %if.end7
  %channel_mask = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 31, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %channel_mask to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %channel_mask, align 4
  %conv = zext i16 %15 to i32
  %sub = add nsw i32 %call.i, -1
  %shl = shl nuw nsw i32 1, %sub
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %lor.lhs.false12.cleanup_crit_edge, label %if.end15

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false12
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 28
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 12, i32 10
  call void %19(ptr noundef %lock.i, ptr noundef nonnull %flags) #4
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 12, i32 11
  %20 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i46 = icmp eq i32 %21, 0
  br i1 %tobool.not.i46, label %if.end20, label %if.end15.cleanup.sink.split_crit_edge

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.end15
  %conv21 = trunc i32 %call.i to i16
  %channel22 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 2
  %22 = ptrtoint ptr %channel22 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv21, ptr %channel22, align 4
  %iw_mode = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4
  %23 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp23 = icmp eq i32 %24, 6
  br i1 %cmp23, label %if.then25, label %if.end20.cleanup.sink.split_crit_edge

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %hw26 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 26
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %cmd_wait = getelementptr inbounds %struct.hermes_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %cmd_wait to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd_wait, align 4
  %call28 = call i32 %28(ptr noundef %hw26, i16 noundef zeroext 2104, i16 noundef zeroext %conv21, ptr noundef null) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then25, %if.end20.cleanup.sink.split_crit_edge, %if.end15.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -16, %if.end15.cleanup.sink.split_crit_edge ], [ %call28, %if.then25 ], [ 0, %if.end20.cleanup.sink.split_crit_edge ]
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %32(ptr noundef %lock.i, ptr noundef nonnull %flags) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge56, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %wiphy_priv.exit.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge56 ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_scan(ptr noundef %wiphy, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !30

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #4, !srcloc !31
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %tobool.not = icmp eq ptr %request, null
  br i1 %tobool.not, label %wiphy_priv.exit.cleanup_crit_edge, label %if.end

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %scan_request = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 2, i32 15
  %0 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_request, align 4
  %tobool1.not = icmp eq ptr %1, null
  %cmp.not = icmp eq ptr %1, %request
  %or.cond = or i1 %tobool1.not, %cmp.not
  br i1 %or.cond, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %request, ptr %scan_request, align 4
  %3 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %request, align 8
  %call6 = tail call i32 @orinoco_hw_trigger_scan(ptr noundef %priv.i, ptr noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.then8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %scan_request, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %wiphy_priv.exit.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %call6, %if.then8 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_set_wiphy_params(ptr noundef %wiphy, i32 noundef %changed) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !30

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #4, !srcloc !31
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = and i32 %changed, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  %spec.store.select74 = select i1 %1, i32 0, i32 -22
  %and5 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %wiphy_priv.exit.if.end29_crit_edge, label %if.then7

wiphy_priv.exit.if.end29_crit_edge:               ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then7:                                         ; preds = %wiphy_priv.exit
  %has_mwo = getelementptr inbounds %struct.orinoco_private, ptr %priv.i, i32 0, i32 24
  %2 = ptrtoint ptr %has_mwo to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %has_mwo, align 2
  %3 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool8.not = icmp eq i16 %3, 0
  %frag_threshold14 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 35
  %4 = ptrtoint ptr %frag_threshold14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frag_threshold14, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp15 = icmp eq i32 %5, -1
  br i1 %tobool8.not, label %if.else13, label %if.then9

if.then9:                                         ; preds = %if.then7
  br i1 %cmp15, label %if.then9.if.end29_crit_edge, label %do.end

if.then9.if.end29_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %ndev = getelementptr inbounds %struct.orinoco_private, ptr %priv.i, i32 0, i32 16
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %7) #7
  br label %if.end29

if.else13:                                        ; preds = %if.then7
  br i1 %cmp15, label %if.else13.if.end29_crit_edge, label %if.else17

if.else13.if.end29_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.else17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #6
  %8 = add i32 %5, -2348
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2091, i32 %8)
  %9 = icmp ult i32 %8, -2091
  %and25 = and i32 %5, -2
  %spec.select = select i1 %9, i32 -1, i32 %and25
  %spec.select99 = select i1 %9, i32 -22, i32 %spec.store.select74
  br label %if.end29

if.end29:                                         ; preds = %if.else17, %if.else13.if.end29_crit_edge, %do.end, %if.then9.if.end29_crit_edge, %wiphy_priv.exit.if.end29_crit_edge
  %frag_value.0 = phi i32 [ 1, %do.end ], [ -1, %wiphy_priv.exit.if.end29_crit_edge ], [ 0, %if.then9.if.end29_crit_edge ], [ 2346, %if.else13.if.end29_crit_edge ], [ %spec.select, %if.else17 ]
  %err.0 = phi i32 [ %spec.store.select74, %do.end ], [ %spec.store.select74, %wiphy_priv.exit.if.end29_crit_edge ], [ %spec.store.select74, %if.then9.if.end29_crit_edge ], [ %spec.store.select74, %if.else13.if.end29_crit_edge ], [ %spec.select99, %if.else17 ]
  %and30 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end43_crit_edge, label %if.then32

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then32:                                        ; preds = %if.end29
  %rts_threshold = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 36
  %10 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rts_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp33 = icmp eq i32 %11, -1
  br i1 %cmp33, label %if.then32.if.end43_crit_edge, label %if.else35

if.then32.if.end43_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.else35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2347, i32 %11)
  %cmp37 = icmp ugt i32 %11, 2347
  br i1 %cmp37, label %if.else35.cleanup70_crit_edge, label %if.else35.if.end43_crit_edge

if.else35.if.end43_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.else35.cleanup70_crit_edge:                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup70

if.end43:                                         ; preds = %if.else35.if.end43_crit_edge, %if.then32.if.end43_crit_edge, %if.end29.if.end43_crit_edge
  %rts_value.0 = phi i32 [ -1, %if.end29.if.end43_crit_edge ], [ 2347, %if.then32.if.end43_crit_edge ], [ %11, %if.else35.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool44.not = icmp eq i32 %err.0, 0
  br i1 %tobool44.not, label %if.then45, label %if.end43.cleanup70_crit_edge

if.end43.cleanup70_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup70

if.then45:                                        ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %flags, align 4, !annotation !32
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 28
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 12, i32 10
  call void %16(ptr noundef %lock.i, ptr noundef nonnull %flags) #4
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 12, i32 11
  %17 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i100 = icmp eq i32 %18, 0
  br i1 %tobool.not.i100, label %if.end49, label %cleanup

if.end49:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %frag_value.0)
  %cmp50 = icmp sgt i32 %frag_value.0, -1
  br i1 %cmp50, label %if.then51, label %if.end49.if.end62_crit_edge

if.end49.if.end62_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

if.then51:                                        ; preds = %if.end49
  %has_mwo52 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i, i32 0, i32 24
  %19 = ptrtoint ptr %has_mwo52 to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load53 = load i16, ptr %has_mwo52, align 2
  %20 = and i16 %bf.load53, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool57.not = icmp eq i16 %20, 0
  %conv60 = trunc i32 %frag_value.0 to i16
  br i1 %tobool57.not, label %if.else59, label %if.then58

if.then58:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  %mwo_robust = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 85, i32 16
  %21 = ptrtoint ptr %mwo_robust to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv60, ptr %mwo_robust, align 2
  br label %if.end62

if.else59:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  %frag_thresh = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 85, i32 14
  %22 = ptrtoint ptr %frag_thresh to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv60, ptr %frag_thresh, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else59, %if.then58, %if.end49.if.end62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rts_value.0)
  %cmp63 = icmp sgt i32 %rts_value.0, -1
  br i1 %cmp63, label %if.then65, label %if.end62.cleanup.thread_crit_edge

if.end62.cleanup.thread_crit_edge:                ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  %conv66 = trunc i32 %rts_value.0 to i16
  %rts_thresh = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 2, i32 0, i32 1
  %23 = ptrtoint ptr %rts_thresh to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv66, ptr %rts_thresh, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then65, %if.end62.cleanup.thread_crit_edge
  %call68 = call i32 @orinoco_commit(ptr noundef %priv.i) #4
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i102 = getelementptr inbounds %struct.hermes_ops, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %unlock_irqrestore.i102 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %unlock_irqrestore.i102, align 4
  call void %27(ptr noundef %lock.i, ptr noundef nonnull %flags) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #4
  br label %cleanup70

cleanup:                                          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %31(ptr noundef %lock.i, ptr noundef nonnull %flags) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #4
  br label %cleanup70

cleanup70:                                        ; preds = %cleanup, %cleanup.thread, %if.end43.cleanup70_crit_edge, %if.else35.cleanup70_crit_edge
  %retval.1 = phi i32 [ -16, %cleanup ], [ %err.0, %if.end43.cleanup70_crit_edge ], [ %call68, %cleanup.thread ], [ -22, %if.else35.cleanup70_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_port_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_hw_trigger_scan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @orinoco_cfg_ops, !1, !"orinoco_cfg_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/orinoco/cfg.c", i32 286, i32 27}
!2 = !{ptr @orinoco_wiphy_privid, !3, !"orinoco_wiphy_privid", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intersil/orinoco/cfg.c", i32 21, i32 27}
!4 = !{ptr @orinoco_rates, !5, !"orinoco_rates", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intersil/orinoco/cfg.c", i32 14, i32 30}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intersil/orinoco/cfg.c", i32 121, i32 4}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @orinoco_change_vif._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @orinoco_change_vif._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/net/cfg80211.h", i32 778, i32 3}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intersil/orinoco/cfg.c", i32 226, i32 5}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @orinoco_set_wiphy_params._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @orinoco_set_wiphy_params._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2156975467, i64 2156975955, i64 2156975504, i64 2156975560, i64 2156975594, i64 2156975618, i64 2156975659, i64 2156975680, i64 2156975708, i64 2156975742}
!32 = !{!"auto-init"}
