; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/p54/led.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/p54/led.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.p54_common = type { ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, i8, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, %struct.spinlock, [8 x %struct.p54_tx_queue_stats], [8 x %struct.p54_edcf_queue_param], i16, i8, i8, i32, ptr, ptr, ptr, i32, %struct.completion, i8, %struct.anon.132, i32, ptr, i32, ptr, ptr, ptr, [6 x ptr], [6 x i8], [6 x i8], [4 x [6 x i8]], i16, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i32, %struct.completion, i8, i8, ptr, [4 x %struct.p54_led_dev], %struct.delayed_work, i16, %struct.ieee80211_low_level_stats, %struct.delayed_work, ptr, %struct.completion, %struct.mutex }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.p54_tx_queue_stats = type { i32, i32, i32 }
%struct.p54_edcf_queue_param = type { i16, i16, i16, i16 }
%struct.anon.132 = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.p54_led_dev = type { ptr, %struct.led_classdev, [32 x i8], i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }

@p54_init_leds.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&priv->led_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@p54_init_leds.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&priv->led_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"assoc\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"radio\00", [26 x i8] zeroinitializer }, align 32
@p54_update_leds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 57, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to update LEDs (%d).\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"p54_update_leds\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/intersil/p54/led.c\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@p54_update_leds._entry_ptr = internal global ptr @p54_update_leds._entry, section ".printk_index", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"p54-%s::%s\00", [21 x i8] zeroinitializer }, align 32
@p54_register_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.9, i32 102, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register %s LED.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"p54_register_led\00", [47 x i8] zeroinitializer }, align 32
@p54_register_led._entry_ptr = internal global ptr @p54_register_led._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 119, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 121, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 126, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 131, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 136, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 56, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 91, i32 41 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [43 x i8] c"../drivers/net/wireless/intersil/p54/led.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 101, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @p54_register_led._entry, ptr @p54_register_led._entry_ptr, ptr @p54_update_leds._entry, ptr @p54_update_leds._entry_ptr, ptr @p54_init_leds.__key, ptr @.str, ptr @p54_init_leds.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_init_leds.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_init_leds.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_update_leds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_register_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_init_leds(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %led_work = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 61
  tail call void @__init_work(ptr noundef %led_work, i32 noundef 0) #5
  %0 = ptrtoint ptr %led_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %led_work, align 4
  %lockdep_map = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 61, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @p54_init_leds.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry8 = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 61, i32 0, i32 1
  %1 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 61, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 61, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @p54_update_leds, ptr %func, align 4
  %timer = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 61, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @p54_init_leds.__key.1) #5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %call.i = tail call ptr @__ieee80211_get_assoc_led_name(ptr noundef %5) #5
  %registered.i = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 0, i32 5
  %6 = ptrtoint ptr %registered.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %registered.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 0
  %name1.i = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 0, i32 2
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56, i32 3
  %12 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.wiphy_name.exit.i_crit_edge

if.end.i.wiphy_name.exit.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  br label %wiphy_name.exit.i

wiphy_name.exit.i:                                ; preds = %if.end.i.i.i, %if.end.i.wiphy_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %15, %if.end.i.i.i ], [ %13, %if.end.i.wiphy_name.exit.i_crit_edge ]
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name1.i, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i.i, ptr noundef nonnull @.str.3) #5
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %arrayidx.i, align 4
  %index.i = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 0, i32 4
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %index.i, align 4
  %led_dev.i = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 0, i32 1
  %20 = ptrtoint ptr %led_dev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %name1.i, ptr %led_dev.i, align 4
  %default_trigger.i = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 0, i32 1, i32 14
  %21 = ptrtoint ptr %default_trigger.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %default_trigger.i, align 4
  %brightness_set.i = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @p54_led_brightness_set, ptr %brightness_set.i, align 4
  %wiphy10.i = getelementptr inbounds %struct.ieee80211_hw, ptr %17, i32 0, i32 1
  %23 = ptrtoint ptr %wiphy10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy10.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %24, i32 0, i32 56, i32 1
  %25 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i.i, align 8
  %call.i.i = tail call i32 @led_classdev_register_ext(ptr noundef %26, ptr noundef %led_dev.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %wiphy_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %wiphy17.i = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy17.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end:                                           ; preds = %wiphy_name.exit.i
  %31 = ptrtoint ptr %registered.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %registered.i, align 4
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  %call.i59 = tail call ptr @__ieee80211_get_tx_led_name(ptr noundef %33) #5
  %registered.i60 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 1, i32 5
  %34 = ptrtoint ptr %registered.i60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %registered.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i61 = icmp eq i32 %35, 0
  br i1 %tobool.not.i61, label %if.end.i67, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i67:                                       ; preds = %if.end
  %arrayidx.i62 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 1
  %name1.i63 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 1, i32 2
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %wiphy.i64 = getelementptr inbounds %struct.ieee80211_hw, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wiphy.i64 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy.i64, align 8
  %init_name.i.i.i65 = getelementptr inbounds %struct.wiphy, ptr %39, i32 0, i32 56, i32 3
  %40 = ptrtoint ptr %init_name.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i.i65, align 8
  %tobool.not.i.i.i66 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i66, label %if.end.i.i.i69, label %if.end.i67.wiphy_name.exit.i80_crit_edge

if.end.i67.wiphy_name.exit.i80_crit_edge:         ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit.i80

if.end.i.i.i69:                                   ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i68 = getelementptr inbounds %struct.wiphy, ptr %39, i32 0, i32 56
  %42 = ptrtoint ptr %dev.i.i68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i68, align 4
  br label %wiphy_name.exit.i80

wiphy_name.exit.i80:                              ; preds = %if.end.i.i.i69, %if.end.i67.wiphy_name.exit.i80_crit_edge
  %retval.0.i.i.i70 = phi ptr [ %43, %if.end.i.i.i69 ], [ %41, %if.end.i67.wiphy_name.exit.i80_crit_edge ]
  %call2.i71 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name1.i63, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i.i70, ptr noundef nonnull @.str.4) #5
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 8
  %46 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %arrayidx.i62, align 4
  %index.i72 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 1, i32 4
  %47 = ptrtoint ptr %index.i72 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %index.i72, align 4
  %led_dev.i73 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 1, i32 1
  %48 = ptrtoint ptr %led_dev.i73 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %name1.i63, ptr %led_dev.i73, align 4
  %default_trigger.i74 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 1, i32 1, i32 14
  %49 = ptrtoint ptr %default_trigger.i74 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i59, ptr %default_trigger.i74, align 4
  %brightness_set.i75 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 1, i32 1, i32 5
  %50 = ptrtoint ptr %brightness_set.i75 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @p54_led_brightness_set, ptr %brightness_set.i75, align 4
  %wiphy10.i76 = getelementptr inbounds %struct.ieee80211_hw, ptr %45, i32 0, i32 1
  %51 = ptrtoint ptr %wiphy10.i76 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wiphy10.i76, align 8
  %parent.i.i77 = getelementptr inbounds %struct.wiphy, ptr %52, i32 0, i32 56, i32 1
  %53 = ptrtoint ptr %parent.i.i77 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parent.i.i77, align 8
  %call.i.i78 = tail call i32 @led_classdev_register_ext(ptr noundef %54, ptr noundef %led_dev.i73, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %tobool14.not.i79 = icmp eq i32 %call.i.i78, 0
  br i1 %tobool14.not.i79, label %if.end23, label %do.end.i83

do.end.i83:                                       ; preds = %wiphy_name.exit.i80
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv, align 8
  %wiphy17.i81 = getelementptr inbounds %struct.ieee80211_hw, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %wiphy17.i81 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wiphy17.i81, align 8
  %dev.i82 = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i82, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end23:                                         ; preds = %wiphy_name.exit.i80
  %59 = ptrtoint ptr %registered.i60 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %registered.i60, align 4
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 8
  %call.i87 = tail call ptr @__ieee80211_get_rx_led_name(ptr noundef %61) #5
  %registered.i88 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 2, i32 5
  %62 = ptrtoint ptr %registered.i88 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %registered.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i89 = icmp eq i32 %63, 0
  br i1 %tobool.not.i89, label %if.end.i95, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i95:                                       ; preds = %if.end23
  %arrayidx.i90 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 2
  %name1.i91 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 2, i32 2
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 8
  %wiphy.i92 = getelementptr inbounds %struct.ieee80211_hw, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %wiphy.i92 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wiphy.i92, align 8
  %init_name.i.i.i93 = getelementptr inbounds %struct.wiphy, ptr %67, i32 0, i32 56, i32 3
  %68 = ptrtoint ptr %init_name.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %init_name.i.i.i93, align 8
  %tobool.not.i.i.i94 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i.i94, label %if.end.i.i.i97, label %if.end.i95.wiphy_name.exit.i108_crit_edge

if.end.i95.wiphy_name.exit.i108_crit_edge:        ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit.i108

if.end.i.i.i97:                                   ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i96 = getelementptr inbounds %struct.wiphy, ptr %67, i32 0, i32 56
  %70 = ptrtoint ptr %dev.i.i96 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i.i96, align 4
  br label %wiphy_name.exit.i108

wiphy_name.exit.i108:                             ; preds = %if.end.i.i.i97, %if.end.i95.wiphy_name.exit.i108_crit_edge
  %retval.0.i.i.i98 = phi ptr [ %71, %if.end.i.i.i97 ], [ %69, %if.end.i95.wiphy_name.exit.i108_crit_edge ]
  %call2.i99 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name1.i91, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i.i98, ptr noundef nonnull @.str.5) #5
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv, align 8
  %74 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %arrayidx.i90, align 4
  %index.i100 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 2, i32 4
  %75 = ptrtoint ptr %index.i100 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2, ptr %index.i100, align 4
  %led_dev.i101 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 2, i32 1
  %76 = ptrtoint ptr %led_dev.i101 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %name1.i91, ptr %led_dev.i101, align 4
  %default_trigger.i102 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 2, i32 1, i32 14
  %77 = ptrtoint ptr %default_trigger.i102 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i87, ptr %default_trigger.i102, align 4
  %brightness_set.i103 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 2, i32 1, i32 5
  %78 = ptrtoint ptr %brightness_set.i103 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @p54_led_brightness_set, ptr %brightness_set.i103, align 4
  %wiphy10.i104 = getelementptr inbounds %struct.ieee80211_hw, ptr %73, i32 0, i32 1
  %79 = ptrtoint ptr %wiphy10.i104 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wiphy10.i104, align 8
  %parent.i.i105 = getelementptr inbounds %struct.wiphy, ptr %80, i32 0, i32 56, i32 1
  %81 = ptrtoint ptr %parent.i.i105 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %parent.i.i105, align 8
  %call.i.i106 = tail call i32 @led_classdev_register_ext(ptr noundef %82, ptr noundef %led_dev.i101, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i106)
  %tobool14.not.i107 = icmp eq i32 %call.i.i106, 0
  br i1 %tobool14.not.i107, label %if.end29, label %do.end.i111

do.end.i111:                                      ; preds = %wiphy_name.exit.i108
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %priv, align 8
  %wiphy17.i109 = getelementptr inbounds %struct.ieee80211_hw, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %wiphy17.i109 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %wiphy17.i109, align 8
  %dev.i110 = getelementptr inbounds %struct.wiphy, ptr %86, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i110, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end29:                                         ; preds = %wiphy_name.exit.i108
  %87 = ptrtoint ptr %registered.i88 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %registered.i88, align 4
  %88 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %priv, align 8
  %call.i115 = tail call ptr @__ieee80211_get_radio_led_name(ptr noundef %89) #5
  %registered.i116 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 3, i32 5
  %90 = ptrtoint ptr %registered.i116 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %registered.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i117 = icmp eq i32 %91, 0
  br i1 %tobool.not.i117, label %if.end.i123, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i123:                                      ; preds = %if.end29
  %arrayidx.i118 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 3
  %name1.i119 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 3, i32 2
  %92 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv, align 8
  %wiphy.i120 = getelementptr inbounds %struct.ieee80211_hw, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %wiphy.i120 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wiphy.i120, align 8
  %init_name.i.i.i121 = getelementptr inbounds %struct.wiphy, ptr %95, i32 0, i32 56, i32 3
  %96 = ptrtoint ptr %init_name.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %init_name.i.i.i121, align 8
  %tobool.not.i.i.i122 = icmp eq ptr %97, null
  br i1 %tobool.not.i.i.i122, label %if.end.i.i.i125, label %if.end.i123.wiphy_name.exit.i136_crit_edge

if.end.i123.wiphy_name.exit.i136_crit_edge:       ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit.i136

if.end.i.i.i125:                                  ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i124 = getelementptr inbounds %struct.wiphy, ptr %95, i32 0, i32 56
  %98 = ptrtoint ptr %dev.i.i124 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i.i124, align 4
  br label %wiphy_name.exit.i136

wiphy_name.exit.i136:                             ; preds = %if.end.i.i.i125, %if.end.i123.wiphy_name.exit.i136_crit_edge
  %retval.0.i.i.i126 = phi ptr [ %99, %if.end.i.i.i125 ], [ %97, %if.end.i123.wiphy_name.exit.i136_crit_edge ]
  %call2.i127 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name1.i119, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i.i126, ptr noundef nonnull @.str.6) #5
  %100 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %priv, align 8
  %102 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %arrayidx.i118, align 4
  %index.i128 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 3, i32 4
  %103 = ptrtoint ptr %index.i128 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 3, ptr %index.i128, align 4
  %led_dev.i129 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 3, i32 1
  %104 = ptrtoint ptr %led_dev.i129 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %name1.i119, ptr %led_dev.i129, align 4
  %default_trigger.i130 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 3, i32 1, i32 14
  %105 = ptrtoint ptr %default_trigger.i130 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i115, ptr %default_trigger.i130, align 4
  %brightness_set.i131 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 3, i32 1, i32 5
  %106 = ptrtoint ptr %brightness_set.i131 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @p54_led_brightness_set, ptr %brightness_set.i131, align 4
  %wiphy10.i132 = getelementptr inbounds %struct.ieee80211_hw, ptr %101, i32 0, i32 1
  %107 = ptrtoint ptr %wiphy10.i132 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %wiphy10.i132, align 8
  %parent.i.i133 = getelementptr inbounds %struct.wiphy, ptr %108, i32 0, i32 56, i32 1
  %109 = ptrtoint ptr %parent.i.i133 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %parent.i.i133, align 8
  %call.i.i134 = tail call i32 @led_classdev_register_ext(ptr noundef %110, ptr noundef %led_dev.i129, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i134)
  %tobool14.not.i135 = icmp eq i32 %call.i.i134, 0
  br i1 %tobool14.not.i135, label %if.end35, label %do.end.i139

do.end.i139:                                      ; preds = %wiphy_name.exit.i136
  call void @__sanitizer_cov_trace_pc() #7
  %111 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %priv, align 8
  %wiphy17.i137 = getelementptr inbounds %struct.ieee80211_hw, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %wiphy17.i137 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %wiphy17.i137, align 8
  %dev.i138 = getelementptr inbounds %struct.wiphy, ptr %114, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i138, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end35:                                         ; preds = %wiphy_name.exit.i136
  call void @__sanitizer_cov_trace_pc() #7
  %115 = ptrtoint ptr %registered.i116 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %registered.i116, align 4
  %call36 = tail call i32 @p54_set_leds(ptr noundef %priv) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end.i139, %if.end29.cleanup_crit_edge, %do.end.i111, %if.end23.cleanup_crit_edge, %do.end.i83, %if.end.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %if.end35 ], [ %call.i.i, %do.end.i ], [ -17, %entry.cleanup_crit_edge ], [ %call.i.i78, %do.end.i83 ], [ -17, %if.end.cleanup_crit_edge ], [ %call.i.i106, %do.end.i111 ], [ -17, %if.end23.cleanup_crit_edge ], [ %call.i.i134, %do.end.i139 ], [ -17, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54_update_leds(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2572
  %mode = getelementptr i8, ptr %work, i32 -1884
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %softled_state = getelementptr i8, ptr %work, i32 100
  %toggled = getelementptr i8, ptr %work, i32 -1356
  %2 = ptrtoint ptr %toggled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %toggled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %softled_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %softled_state, align 8
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %conv4 = or i16 %5, 1
  %6 = ptrtoint ptr %softled_state to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv4, ptr %softled_state, align 8
  %div = udiv i32 200, %3
  %7 = add nuw nsw i32 %div, 70
  %brightness = getelementptr i8, ptr %work, i32 -1784
  %8 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14 = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool22 = icmp ne i32 %9, 0
  %lnot.ext = zext i1 %tobool22 to i32
  %10 = ptrtoint ptr %toggled to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %lnot.ext, ptr %toggled, align 4
  br label %for.inc

if.else:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %conv30 = and i16 %5, -2
  %11 = ptrtoint ptr %softled_state to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv30, ptr %softled_state, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then3
  %blink_delay.2 = phi i32 [ %7, %if.then3 ], [ 400, %if.else ]
  %rerun.2.off0 = phi i1 [ %cmp14, %if.then3 ], [ false, %if.else ]
  %toggled.1 = getelementptr i8, ptr %work, i32 -908
  %12 = ptrtoint ptr %toggled.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %toggled.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.1 = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %softled_state to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %softled_state, align 8
  br i1 %tobool.not.1, label %if.else.1, label %if.then3.1

if.then3.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.1 = or i16 %15, 2
  %16 = ptrtoint ptr %softled_state to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv4.1, ptr %softled_state, align 8
  %div.1 = udiv i32 200, %13
  %add.1 = add nuw nsw i32 %div.1, 70
  %17 = tail call i32 @llvm.smin.i32(i32 %add.1, i32 %blink_delay.2)
  %brightness.1 = getelementptr i8, ptr %work, i32 -1336
  %18 = ptrtoint ptr %brightness.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brightness.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp14.1 = icmp eq i32 %19, 0
  %rerun.1.off0.1 = select i1 %cmp14.1, i1 true, i1 %rerun.2.off0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool22.1 = icmp ne i32 %19, 0
  %lnot.ext.1 = zext i1 %tobool22.1 to i32
  %20 = ptrtoint ptr %toggled.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %lnot.ext.1, ptr %toggled.1, align 4
  br label %for.inc.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %conv30.1 = and i16 %15, -3
  %21 = ptrtoint ptr %softled_state to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv30.1, ptr %softled_state, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then3.1
  %blink_delay.2.1 = phi i32 [ %17, %if.then3.1 ], [ %blink_delay.2, %if.else.1 ]
  %rerun.2.off0.1 = phi i1 [ %rerun.1.off0.1, %if.then3.1 ], [ %rerun.2.off0, %if.else.1 ]
  %toggled.2 = getelementptr i8, ptr %work, i32 -460
  %22 = ptrtoint ptr %toggled.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %toggled.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.2 = icmp eq i32 %23, 0
  %24 = ptrtoint ptr %softled_state to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %softled_state, align 8
  br i1 %tobool.not.2, label %if.else.2, label %if.then3.2

if.then3.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.2 = or i16 %25, 4
  %26 = ptrtoint ptr %softled_state to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv4.2, ptr %softled_state, align 8
  %div.2 = udiv i32 200, %23
  %add.2 = add nuw nsw i32 %div.2, 70
  %27 = tail call i32 @llvm.smin.i32(i32 %add.2, i32 %blink_delay.2.1)
  %brightness.2 = getelementptr i8, ptr %work, i32 -888
  %28 = ptrtoint ptr %brightness.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %brightness.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp14.2 = icmp eq i32 %29, 0
  %rerun.1.off0.2 = select i1 %cmp14.2, i1 true, i1 %rerun.2.off0.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool22.2 = icmp ne i32 %29, 0
  %lnot.ext.2 = zext i1 %tobool22.2 to i32
  %30 = ptrtoint ptr %toggled.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %lnot.ext.2, ptr %toggled.2, align 4
  br label %for.inc.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %conv30.2 = and i16 %25, -5
  %31 = ptrtoint ptr %softled_state to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv30.2, ptr %softled_state, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %if.then3.2
  %blink_delay.2.2 = phi i32 [ %27, %if.then3.2 ], [ %blink_delay.2.1, %if.else.2 ]
  %rerun.2.off0.2 = phi i1 [ %rerun.1.off0.2, %if.then3.2 ], [ %rerun.2.off0.1, %if.else.2 ]
  %toggled.3 = getelementptr i8, ptr %work, i32 -12
  %32 = ptrtoint ptr %toggled.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %toggled.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.3 = icmp eq i32 %33, 0
  %34 = ptrtoint ptr %softled_state to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %softled_state, align 8
  br i1 %tobool.not.3, label %if.else.3, label %if.then3.3

if.then3.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.3 = or i16 %35, 8
  %36 = ptrtoint ptr %softled_state to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv4.3, ptr %softled_state, align 8
  %div.3 = udiv i32 200, %33
  %add.3 = add nuw nsw i32 %div.3, 70
  %37 = tail call i32 @llvm.smin.i32(i32 %add.3, i32 %blink_delay.2.2)
  %brightness.3 = getelementptr i8, ptr %work, i32 -440
  %38 = ptrtoint ptr %brightness.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %brightness.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp14.3 = icmp eq i32 %39, 0
  %rerun.1.off0.3 = select i1 %cmp14.3, i1 true, i1 %rerun.2.off0.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool22.3 = icmp ne i32 %39, 0
  %lnot.ext.3 = zext i1 %tobool22.3 to i32
  %40 = ptrtoint ptr %toggled.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %lnot.ext.3, ptr %toggled.3, align 4
  br label %for.inc.3

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %conv30.3 = and i16 %35, -9
  %41 = ptrtoint ptr %softled_state to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv30.3, ptr %softled_state, align 8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.3, %if.then3.3
  %blink_delay.2.3 = phi i32 [ %37, %if.then3.3 ], [ %blink_delay.2.2, %if.else.3 ]
  %rerun.2.off0.3 = phi i1 [ %rerun.1.off0.3, %if.then3.3 ], [ %rerun.2.off0.2, %if.else.3 ]
  %call = tail call i32 @p54_set_leds(ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool32.not = icmp eq i32 %call, 0
  br i1 %tobool32.not, label %for.inc.3.if.end36_crit_edge, label %land.lhs.true

for.inc.3.if.end36_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

land.lhs.true:                                    ; preds = %for.inc.3
  %call33 = tail call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true.if.end36_crit_edge, label %do.end

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %45, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call) #8
  br label %if.end36

if.end36:                                         ; preds = %do.end, %land.lhs.true.if.end36_crit_edge, %for.inc.3.if.end36_crit_edge
  br i1 %rerun.2.off0.3, label %if.then38, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %blink_delay.2.3) #5
  tail call void @ieee80211_queue_delayed_work(ptr noundef %47, ptr noundef %work, i32 noundef %call2.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end36.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_set_leds(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @p54_unregister_leds(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %registered = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 0, i32 5
  %0 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %registered, align 4
  %toggled = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 0, i32 3
  %3 = ptrtoint ptr %toggled to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %toggled, align 4
  %led_dev = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 0, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %registered.1 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 1, i32 5
  %4 = ptrtoint ptr %registered.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %registered.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1 = icmp eq i32 %5, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %registered.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %registered.1, align 4
  %toggled.1 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 1, i32 3
  %7 = ptrtoint ptr %toggled.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %toggled.1, align 4
  %led_dev.1 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 1, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.1) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %registered.2 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 2, i32 5
  %8 = ptrtoint ptr %registered.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %registered.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.2 = icmp eq i32 %9, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %registered.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %registered.2, align 4
  %toggled.2 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 2, i32 3
  %11 = ptrtoint ptr %toggled.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %toggled.2, align 4
  %led_dev.2 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 2, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.2) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %registered.3 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 3, i32 5
  %12 = ptrtoint ptr %registered.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %registered.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.3 = icmp eq i32 %13, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %registered.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %registered.3, align 4
  %toggled.3 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 3, i32 3
  %15 = ptrtoint ptr %toggled.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %toggled.3, align 4
  %led_dev.3 = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 60, i32 3, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.3) #5
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %led_work = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 61
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %led_work) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54_led_brightness_set(ptr nocapture noundef %led_dev, i32 noundef %brightness) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_dev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %mode = getelementptr inbounds %struct.p54_common, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool.not = icmp eq i32 %brightness, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %registered = getelementptr i8, ptr %led_dev, i32 440
  %6 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %toggled = getelementptr i8, ptr %led_dev, i32 432
  %8 = ptrtoint ptr %toggled to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %toggled, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %toggled, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %led_work = getelementptr inbounds %struct.p54_common, ptr %3, i32 0, i32 61
  tail call void @ieee80211_queue_delayed_work(ptr noundef %11, ptr noundef %led_work, i32 noundef 10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_assoc_led_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_tx_led_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_rx_led_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_radio_led_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @p54_init_leds.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/p54/led.c", i32 119, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @p54_init_leds.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intersil/p54/led.c", i32 121, i32 34}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intersil/p54/led.c", i32 126, i32 34}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intersil/p54/led.c", i32 131, i32 34}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intersil/p54/led.c", i32 136, i32 34}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intersil/p54/led.c", i32 56, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @p54_update_leds._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @p54_update_leds._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intersil/p54/led.c", i32 91, i32 41}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intersil/p54/led.c", i32 101, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @p54_register_led._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @p54_register_led._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
