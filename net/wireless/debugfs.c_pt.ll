; ModuleID = '/llk/IR_all_yes/net/wireless/debugfs.c_pt.bc'
source_filename = "../net/wireless/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg80211_registered_device = type { ptr, %struct.list_head, %struct.rfkill_ops, %struct.work_struct, [2 x i8], ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.rb_root, i32, i32, ptr, ptr, ptr, %struct.list_head, i64, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, %struct.delayed_work, %struct.work_struct, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.work_struct, %struct.spinlock, [24 x i8], %struct.wiphy }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.129 = type { i64, i64, i8 }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rts_threshold\00", [18 x i8] zeroinitializer }, align 32
@rts_threshold_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rts_threshold_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fragmentation_threshold\00", [40 x i8] zeroinitializer }, align 32
@fragmentation_threshold_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @fragmentation_threshold_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"short_retry_limit\00", [46 x i8] zeroinitializer }, align 32
@short_retry_limit_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @short_retry_limit_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"long_retry_limit\00", [47 x i8] zeroinitializer }, align 32
@long_retry_limit_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @long_retry_limit_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ht40allow_map\00", [18 x i8] zeroinitializer }, align 32
@ht40allow_map_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ht40allow_map_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/wireless/debugfs.c\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d Disabled\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d HT40 %c%c\0A\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 105, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"rts_threshold_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 106, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [28 x i8] c"fragmentation_threshold_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 33, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 107, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"short_retry_limit_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 35, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 108, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"long_retry_limit_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 37, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 109, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"ht40allow_map_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 92, i32 37 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 31, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 43, i32 6 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 49, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [26 x i8] c"../net/wireless/debugfs.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 54, i32 5 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @rts_threshold_ops, ptr @.str.1, ptr @fragmentation_threshold_ops, ptr @.str.2, ptr @short_retry_limit_ops, ptr @.str.3, ptr @long_retry_limit_ops, ptr @.str.4, ptr @ht40allow_map_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts_threshold_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fragmentation_threshold_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @short_retry_limit_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @long_retry_limit_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht40allow_map_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_debugfs_rdev_add(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48
  %debugfsdir = getelementptr inbounds %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48, i32 58
  %0 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfsdir, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %1, ptr noundef %wiphy, ptr noundef nonnull @rts_threshold_ops) #4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %1, ptr noundef %wiphy, ptr noundef nonnull @fragmentation_threshold_ops) #4
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %1, ptr noundef %wiphy, ptr noundef nonnull @short_retry_limit_ops) #4
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %1, ptr noundef %wiphy, ptr noundef nonnull @long_retry_limit_ops) #4
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %1, ptr noundef %wiphy, ptr noundef nonnull @ht40allow_map_ops) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts_threshold_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #4
  %rts_threshold = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 36
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %3 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rts_threshold, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.5, i32 noundef %4) #4
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #4
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fragmentation_threshold_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #4
  %frag_threshold = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 35
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %3 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frag_threshold, align 16
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.5, i32 noundef %4) #4
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @short_retry_limit_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #4
  %retry_short = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 33
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %3 = ptrtoint ptr %retry_short to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %retry_short, align 4
  %conv = zext i8 %4 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.5, i32 noundef %conv) #4
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @long_retry_limit_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #4
  %retry_long = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 34
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %3 = ptrtoint ptr %retry_long to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %retry_long, align 1
  %conv = zext i8 %4 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.5, i32 noundef %conv) #4
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #4
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ht40allow_map_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc9.for.body_crit_edge, %entry.for.body_crit_edge
  %band.038 = phi i32 [ %inc10, %for.inc9.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %offset.037 = phi i32 [ %offset.2, %for.inc9.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wiphy, ptr %1, i32 0, i32 53, i32 %band.038
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %for.body.for.inc9_crit_edge, label %for.cond4.preheader

for.body.for.inc9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc9

for.cond4.preheader:                              ; preds = %for.body
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp532.not = icmp eq i32 %6, 0
  br i1 %cmp532.not, label %for.cond4.preheader.for.inc9_crit_edge, label %for.cond4.preheader.for.body6_crit_edge

for.cond4.preheader.for.body6_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body6

for.cond4.preheader.for.inc9_crit_edge:           ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc9

for.body6:                                        ; preds = %ht_print_chan.exit.for.body6_crit_edge, %for.cond4.preheader.for.body6_crit_edge
  %i.035 = phi i32 [ %inc, %ht_print_chan.exit.for.body6_crit_edge ], [ 0, %for.cond4.preheader.for.body6_crit_edge ]
  %offset.133 = phi i32 [ %add, %ht_print_chan.exit.for.body6_crit_edge ], [ %offset.037, %for.cond4.preheader.for.body6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %offset.133)
  %cmp.i = icmp sgt i32 %offset.133, 4096
  br i1 %cmp.i, label %do.end.i, label %if.end21.i, !prof !36

do.end.i:                                         ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 43, i32 noundef 9, ptr noundef null) #4
  br label %ht_print_chan.exit

if.end21.i:                                       ; preds = %for.body6
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %flags.i = getelementptr %struct.ieee80211_channel, ptr %8, i32 %i.035, i32 4
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 0
  %add.ptr25.i = getelementptr i8, ptr %call7.i.i, i32 %offset.133
  %sub26.i = sub i32 4096, %offset.133
  %center_freq27.i = getelementptr %struct.ieee80211_channel, ptr %8, i32 %i.035, i32 1
  %11 = ptrtoint ptr %center_freq27.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %center_freq27.i, align 4
  br i1 %tobool22.not.i, label %if.end24.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25.i, i32 noundef %sub26.i, ptr noundef nonnull @.str.7, i32 noundef %12) #4
  br label %ht_print_chan.exit

if.end24.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  %and29.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  %cond.i = select i1 %tobool30.not.i, i32 45, i32 32
  %and32.i = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  %cond34.i = select i1 %tobool33.not.i, i32 43, i32 32
  %call35.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25.i, i32 noundef %sub26.i, ptr noundef nonnull @.str.8, i32 noundef %12, i32 noundef %cond.i, i32 noundef %cond34.i) #4
  br label %ht_print_chan.exit

ht_print_chan.exit:                               ; preds = %if.end24.i, %if.then23.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %call.i, %if.then23.i ], [ %call35.i, %if.end24.i ]
  %add = add i32 %retval.0.i, %offset.133
  %inc = add nuw i32 %i.035, 1
  %13 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_channels, align 4
  %cmp5 = icmp ult i32 %inc, %14
  br i1 %cmp5, label %ht_print_chan.exit.for.body6_crit_edge, label %ht_print_chan.exit.for.inc9_crit_edge

ht_print_chan.exit.for.inc9_crit_edge:            ; preds = %ht_print_chan.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc9

ht_print_chan.exit.for.body6_crit_edge:           ; preds = %ht_print_chan.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6

for.inc9:                                         ; preds = %ht_print_chan.exit.for.inc9_crit_edge, %for.cond4.preheader.for.inc9_crit_edge, %for.body.for.inc9_crit_edge
  %offset.2 = phi i32 [ %offset.037, %for.body.for.inc9_crit_edge ], [ %offset.037, %for.cond4.preheader.for.inc9_crit_edge ], [ %add, %ht_print_chan.exit.for.inc9_crit_edge ]
  %inc10 = add nuw nsw i32 %band.038, 1
  %exitcond.not = icmp eq i32 %inc10, 6
  br i1 %exitcond.not, label %for.end11, label %for.inc9.for.body_crit_edge

for.inc9.for.body_crit_edge:                      ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end11:                                        ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %offset.2) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %for.end11 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/wireless/debugfs.c", i32 105, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/wireless/debugfs.c", i32 106, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/wireless/debugfs.c", i32 107, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/wireless/debugfs.c", i32 108, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/wireless/debugfs.c", i32 109, i32 2}
!10 = !{ptr @rts_threshold_ops, !11, !"rts_threshold_ops", i1 false, i1 false}
!11 = !{!"../net/wireless/debugfs.c", i32 31, i32 1}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @fragmentation_threshold_ops, !14, !"fragmentation_threshold_ops", i1 false, i1 false}
!14 = !{!"../net/wireless/debugfs.c", i32 33, i32 1}
!15 = !{ptr @short_retry_limit_ops, !16, !"short_retry_limit_ops", i1 false, i1 false}
!16 = !{!"../net/wireless/debugfs.c", i32 35, i32 1}
!17 = !{ptr @long_retry_limit_ops, !18, !"long_retry_limit_ops", i1 false, i1 false}
!18 = !{!"../net/wireless/debugfs.c", i32 37, i32 1}
!19 = !{ptr @ht40allow_map_ops, !20, !"ht40allow_map_ops", i1 false, i1 false}
!20 = !{!"../net/wireless/debugfs.c", i32 92, i32 37}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/wireless/debugfs.c", i32 43, i32 6}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/wireless/debugfs.c", i32 49, i32 6}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/wireless/debugfs.c", i32 54, i32 5}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 1, i32 2000}
