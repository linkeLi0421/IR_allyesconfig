; ModuleID = '/llk/IR_all_yes/net/wireless/of.c_pt.bc'
source_filename = "../net/wireless/of.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+wiphy_read_of_freq_limits\22, \22a\22\09"
module asm "\09.weak\09__crc_wiphy_read_of_freq_limits\09\09\09\09"
module asm "\09.long\09__crc_wiphy_read_of_freq_limits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wiphy_read_of_freq_limits:\09\09\09\09\09"
module asm "\09.asciz \09\22wiphy_read_of_freq_limits\22\09\09\09\09\09"
module asm "__kstrtabns_wiphy_read_of_freq_limits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.anon.129 = type { i64, i64, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ieee80211-freq-limit\00", [43 x i8] zeroinitializer }, align 32
@wiphy_read_of_freq_limits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 96, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ieee80211-freq-limit wrong format\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wiphy_read_of_freq_limits\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/wireless/of.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wiphy_read_of_freq_limits._entry_ptr = internal global ptr @wiphy_read_of_freq_limits._entry, section ".printk_index", align 4
@wiphy_read_of_freq_limits._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 136, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get limits: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wiphy_read_of_freq_limits._entry_ptr.8 = internal global ptr @wiphy_read_of_freq_limits._entry.6, section ".printk_index", align 4
@__kstrtab_wiphy_read_of_freq_limits = external dso_local constant [0 x i8], align 1
@__kstrtabns_wiphy_read_of_freq_limits = external dso_local constant [0 x i8], align 1
@__ksymtab_wiphy_read_of_freq_limits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wiphy_read_of_freq_limits to i32), ptr @__kstrtab_wiphy_read_of_freq_limits, ptr @__kstrtabns_wiphy_read_of_freq_limits }, section "___ksymtab+wiphy_read_of_freq_limits", align 4
@wiphy_freq_limits_apply.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cfg80211\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wiphy_freq_limits_apply\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Disabling freq %d MHz as it's out of OF limits\0A\00", [48 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 91, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 96, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 136, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [21 x i8] c"../net/wireless/of.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 66, i32 5 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_wiphy_read_of_freq_limits, ptr @wiphy_read_of_freq_limits._entry, ptr @wiphy_read_of_freq_limits._entry.6, ptr @wiphy_read_of_freq_limits._entry_ptr, ptr @wiphy_read_of_freq_limits._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiphy_read_of_freq_limits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiphy_read_of_freq_limits._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wiphy_read_of_freq_limits(ptr nocapture noundef readonly %wiphy) #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %len, align 4, !annotation !30
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup47_crit_edge, label %dev_of_node.exit

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

dev_of_node.exit:                                 ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %dev_of_node.exit.cleanup47_crit_edge, label %if.end4

dev_of_node.exit.cleanup47_crit_edge:             ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

if.end4:                                          ; preds = %dev_of_node.exit
  %call5 = call ptr @of_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull %len) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup47_crit_edge, label %if.end8

if.end4.cleanup47_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

if.end8:                                          ; preds = %if.end4
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp ne i32 %6, 0
  %7 = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  %9 = and i1 %tobool9.not, %8
  br i1 %9, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #9
  br label %cleanup47

if.end15:                                         ; preds = %if.end8
  %div1784 = lshr i32 %6, 3
  %10 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div1784, i32 12) #6
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %if.end15.out_kfree.thread_crit_edge, label %if.end7.i.i, !prof !31

if.end15.out_kfree.thread_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_kfree.thread

if.end7.i.i:                                      ; preds = %if.end15
  %12 = extractvalue { i32, i1 } %10, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #10
  %tobool19.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool19.not, label %if.end7.i.i.out_kfree.thread_crit_edge, label %for.cond.preheader

if.end7.i.i.out_kfree.thread_crit_edge:           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_kfree.thread

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp108 = icmp ugt i32 %6, 7
  br i1 %cmp108, label %for.body.preheader, label %cleanup47.critedge

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div1784, i32 1)
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false32
  %inc = add nuw nsw i32 %i.0110, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %div1784)
  %cmp = icmp ult i32 %inc, %div1784
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %cmp111 = phi i1 [ %cmp, %for.cond.for.body_crit_edge ], [ true, %for.body.preheader ]
  %i.0110 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %p.0109 = phi ptr [ %call26, %for.cond.for.body_crit_edge ], [ null, %for.body.preheader ]
  %arrayidx = getelementptr %struct.ieee80211_freq_range, ptr %call8.i.i, i32 %i.0110
  %call22 = call ptr @of_prop_next_u32(ptr noundef nonnull %call5, ptr noundef %p.0109, ptr noundef %arrayidx) #6
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %for.body.out_kfree.thread101_crit_edge, label %if.end25

for.body.out_kfree.thread101_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_kfree.thread101

if.end25:                                         ; preds = %for.body
  %end_freq_khz = getelementptr %struct.ieee80211_freq_range, ptr %call8.i.i, i32 %i.0110, i32 1
  %call26 = call ptr @of_prop_next_u32(ptr noundef nonnull %call5, ptr noundef nonnull %call22, ptr noundef %end_freq_khz) #6
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.out_kfree.thread101_crit_edge, label %if.end29

if.end25.out_kfree.thread101_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_kfree.thread101

if.end29:                                         ; preds = %if.end25
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool31.not = icmp eq i32 %14, 0
  br i1 %tobool31.not, label %if.end29.out_kfree.thread101_crit_edge, label %lor.lhs.false32

if.end29.out_kfree.thread101_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_kfree.thread101

lor.lhs.false32:                                  ; preds = %if.end29
  %15 = ptrtoint ptr %end_freq_khz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end_freq_khz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool34.not = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp38.not = icmp ult i32 %14, %16
  %or.cond86 = select i1 %tobool34.not, i1 %cmp38.not, i1 false
  br i1 %or.cond86, label %for.cond, label %out_kfree

for.end:                                          ; preds = %for.cond
  call fastcc void @wiphy_freq_limits_apply(ptr noundef %wiphy, ptr noundef nonnull %call8.i.i, i32 noundef %div1784)
  call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br i1 %cmp, label %for.end.do.end45_crit_edge, label %for.end.cleanup47_crit_edge

for.end.cleanup47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

for.end.do.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

out_kfree.thread:                                 ; preds = %if.end7.i.i.out_kfree.thread_crit_edge, %if.end15.out_kfree.thread_crit_edge
  call void @kfree(ptr noundef null) #6
  br label %do.end45

out_kfree.thread101:                              ; preds = %if.end29.out_kfree.thread101_crit_edge, %if.end25.out_kfree.thread101_crit_edge, %for.body.out_kfree.thread101_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %do.end45

out_kfree:                                        ; preds = %lor.lhs.false32
  call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br i1 %cmp111, label %out_kfree.do.end45_crit_edge, label %out_kfree.cleanup47_crit_edge

out_kfree.cleanup47_crit_edge:                    ; preds = %out_kfree
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

out_kfree.do.end45_crit_edge:                     ; preds = %out_kfree
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

do.end45:                                         ; preds = %out_kfree.do.end45_crit_edge, %out_kfree.thread101, %out_kfree.thread, %for.end.do.end45_crit_edge
  %err.299 = phi i32 [ -12, %out_kfree.thread ], [ -22, %out_kfree.do.end45_crit_edge ], [ -22, %out_kfree.thread101 ], [ 0, %for.end.do.end45_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, i32 noundef %err.299) #9
  br label %cleanup47

cleanup47.critedge:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @wiphy_freq_limits_apply(ptr noundef %wiphy, ptr noundef nonnull %call8.i.i, i32 noundef %div1784)
  call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %cleanup47

cleanup47:                                        ; preds = %cleanup47.critedge, %do.end45, %out_kfree.cleanup47_crit_edge, %for.end.cleanup47_crit_edge, %do.end, %if.end4.cleanup47_crit_edge, %dev_of_node.exit.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wiphy_freq_limits_apply(ptr nocapture noundef readonly %wiphy, ptr noundef %freq_limits, i32 noundef %n_freq_limits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_freq_limits)
  %tobool.not = icmp eq i32 %n_freq_limits, 0
  br i1 %tobool.not, label %do.end, label %entry.for.body_crit_edge, !prof !31

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 48, i32 noundef 9, ptr noundef null) #6
  br label %cleanup57

for.body:                                         ; preds = %cleanup51.for.body_crit_edge, %entry.for.body_crit_edge
  %band.082 = phi i32 [ %inc55, %cleanup51.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 %band.082
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %1, null
  br i1 %tobool24.not, label %for.body.cleanup51_crit_edge, label %for.cond27.preheader

for.body.cleanup51_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup51

for.cond27.preheader:                             ; preds = %for.body
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2878 = icmp sgt i32 %3, 0
  br i1 %cmp2878, label %for.cond27.preheader.for.body29_crit_edge, label %for.cond27.preheader.cleanup51_crit_edge

for.cond27.preheader.cleanup51_crit_edge:         ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup51

for.cond27.preheader.for.body29_crit_edge:        ; preds = %for.cond27.preheader
  br label %for.body29

for.body29:                                       ; preds = %cleanup.for.body29_crit_edge, %for.cond27.preheader.for.body29_crit_edge
  %i.079 = phi i32 [ %inc, %cleanup.for.body29_crit_edge ], [ 0, %for.cond27.preheader.for.body29_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %flags = getelementptr %struct.ieee80211_channel, ptr %5, i32 %i.079, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %for.body.lr.ph.i, label %for.body29.cleanup_crit_edge

for.body29.cleanup_crit_edge:                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.body29
  %center_freq.i = getelementptr %struct.ieee80211_channel, ptr %5, i32 %i.079, i32 1
  %8 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %center_freq.i, align 4
  %mul.i74 = mul i32 %9, 1000
  %call.i75 = tail call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef %freq_limits, i32 noundef %mul.i74, i32 noundef 20000) #6
  br i1 %call.i75, label %for.body.lr.ph.i.cleanup_crit_edge, label %for.body.lr.ph.i.for.cond.i_crit_edge

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.body.lr.ph.i.cleanup_crit_edge:               ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.02.i76 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.02.i76, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %n_freq_limits)
  %exitcond.not.i = icmp eq i32 %inc.i, %n_freq_limits
  br i1 %exitcond.not.i, label %for.cond.i.wiphy_freq_limits_valid_chan.exit_crit_edge, label %for.body.i

for.cond.i.wiphy_freq_limits_valid_chan.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wiphy_freq_limits_valid_chan.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.ieee80211_freq_range, ptr %freq_limits, i32 %inc.i
  %10 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %center_freq.i, align 4
  %mul.i = mul i32 %11, 1000
  %call.i = tail call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef %arrayidx.i, i32 noundef %mul.i, i32 noundef 20000) #6
  br i1 %call.i, label %for.body.i.wiphy_freq_limits_valid_chan.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.body.i.wiphy_freq_limits_valid_chan.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wiphy_freq_limits_valid_chan.exit

wiphy_freq_limits_valid_chan.exit:                ; preds = %for.body.i.wiphy_freq_limits_valid_chan.exit_crit_edge, %for.cond.i.wiphy_freq_limits_valid_chan.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %n_freq_limits)
  %cmp.i.le = icmp ult i32 %inc.i, %n_freq_limits
  br i1 %cmp.i.le, label %wiphy_freq_limits_valid_chan.exit.cleanup_crit_edge, label %do.body35

wiphy_freq_limits_valid_chan.exit.cleanup_crit_edge: ; preds = %wiphy_freq_limits_valid_chan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body35:                                        ; preds = %wiphy_freq_limits_valid_chan.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wiphy_freq_limits_apply.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wiphy_freq_limits_apply, %if.then45)) #6
          to label %do.end48 [label %if.then45], !srcloc !32

if.then45:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %center_freq.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wiphy_freq_limits_apply.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.11, i32 noundef %13) #6
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %do.body35
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or = or i32 %15, 1
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %wiphy_freq_limits_valid_chan.exit.cleanup_crit_edge, %for.body.lr.ph.i.cleanup_crit_edge, %for.body29.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.079, 1
  %16 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_channels, align 4
  %cmp28 = icmp slt i32 %inc, %17
  br i1 %cmp28, label %cleanup.for.body29_crit_edge, label %cleanup.cleanup51_crit_edge

cleanup.cleanup51_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup51

cleanup.for.body29_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29

cleanup51:                                        ; preds = %cleanup.cleanup51_crit_edge, %for.cond27.preheader.cleanup51_crit_edge, %for.body.cleanup51_crit_edge
  %inc55 = add nuw nsw i32 %band.082, 1
  %exitcond.not = icmp eq i32 %inc55, 6
  br i1 %exitcond.not, label %cleanup51.cleanup57_crit_edge, label %cleanup51.for.body_crit_edge

cleanup51.for.body_crit_edge:                     ; preds = %cleanup51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup51.cleanup57_crit_edge:                    ; preds = %cleanup51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup57

cleanup57:                                        ; preds = %cleanup51.cleanup57_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/wireless/of.c", i32 91, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/wireless/of.c", i32 96, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @wiphy_read_of_freq_limits._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @wiphy_read_of_freq_limits._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/wireless/of.c", i32 136, i32 3}
!12 = !{ptr @wiphy_read_of_freq_limits._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @wiphy_read_of_freq_limits._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_wiphy_read_of_freq_limits, !15, !"__ksymtab_wiphy_read_of_freq_limits", i1 false, i1 false}
!15 = !{!"../net/wireless/of.c", i32 138, i32 1}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/wireless/of.c", i32 66, i32 5}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wiphy_freq_limits_apply.__UNIQUE_ID_ddebug345, !17, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2148859524, i64 2148859529, i64 2148859542, i64 2148859586, i64 2148859620, i64 2148859641}
