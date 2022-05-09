; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_LED.c_pt.bc'
source_filename = "../net/netfilter/xt_LED.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.xt_action_param = type { %union.anon.114, %union.anon.115, ptr, i32, i16, i8 }
%union.anon.114 = type { ptr }
%union.anon.115 = type { ptr }
%struct.xt_led_info = type { [27 x i8], i8, i32, ptr, [4 x i8] }
%struct.xt_led_info_internal = type { %struct.list_head, i32, ptr, %struct.led_trigger, %struct.timer_list }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }

@__UNIQUE_ID_file354 = internal constant [33 x i8] c"xt_LED.file=net/netfilter/xt_LED\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [19 x i8] c"xt_LED.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [51 x i8] c"xt_LED.author=Adam Nielsen <a.nielsen@shikadi.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description357 = internal constant [64 x i8] c"xt_LED.description=Xtables: trigger LED devices on packet match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias358 = internal constant [21 x i8] c"xt_LED.alias=ipt_LED\00", section ".modinfo", align 1
@__UNIQUE_ID_alias359 = internal constant [22 x i8] c"xt_LED.alias=ip6t_LED\00", section ".modinfo", align 1
@led_tg_reg = internal global %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"LED\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @led_tg, ptr @led_tg_check, ptr @led_tg_destroy, ptr null, ptr null, i32 40, i32 32, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_LED__360_201_led_tg_init6 = internal global ptr @led_tg_init, section ".initcall6.init", align 4
@__exitcall_led_tg_exit = internal global ptr @led_tg_exit, section ".exitcall.exit", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@xt_led_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xt_led_mutex, i64 52), ptr getelementptr (i8, ptr @xt_led_mutex, i64 52) }, ptr @xt_led_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@led_tg_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.led_tg_check = private unnamed_addr constant [13 x i8] c"led_tg_check\00", align 1
@led_tg_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.led_tg_check, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016xt_LED: Trigger name is already in use.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/netfilter/xt_LED.c\00", [41 x i8] zeroinitializer }, align 32
@led_tg_check._entry_ptr = internal global ptr @led_tg_check._entry, section ".printk_index", align 4
@led_tg_check.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&ledinternal->timer)\00", [42 x i8] zeroinitializer }, align 32
@xt_led_triggers = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @xt_led_triggers, ptr @xt_led_triggers }, [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xt_led_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xt_led_mutex\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"xt_led_mutex\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 125, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 132, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"xt_led_triggers\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 23, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [26 x i8] c"../net/netfilter/xt_LED.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 24, i32 8 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias358, ptr @__UNIQUE_ID_alias359, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_description357, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__exitcall_led_tg_exit, ptr @__initcall__kmod_xt_LED__360_201_led_tg_init6, ptr @led_tg_check._entry, ptr @led_tg_check._entry_ptr, ptr @led_tg_exit, ptr @xt_led_mutex, ptr @led_tg_check._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @led_tg_check.__key, ptr @.str.3, ptr @xt_led_triggers, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_led_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_tg_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_tg_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_tg_check.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_led_triggers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @led_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xt_unregister_target(ptr noundef nonnull @led_tg_reg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @led_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_target(ptr noundef nonnull @led_tg_reg) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @led_tg(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %led_delay = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %internal_data = getelementptr inbounds %struct.xt_led_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %internal_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %internal_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %led_delay) #7
  %5 = ptrtoint ptr %led_delay to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 50, ptr %led_delay, align 4
  %delay = getelementptr inbounds %struct.xt_led_info, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %always_blink = getelementptr inbounds %struct.xt_led_info, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %always_blink to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %always_blink, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true1

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true1:                                   ; preds = %land.lhs.true
  %pprev.i.i = getelementptr inbounds %struct.xt_led_info_internal, ptr %4, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.not, label %land.lhs.true1.if.else_crit_edge, label %if.then

land.lhs.true1.if.else_crit_edge:                 ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #9
  %netfilter_led_trigger = getelementptr inbounds %struct.xt_led_info_internal, ptr %4, i32 0, i32 3
  call void @led_trigger_blink_oneshot(ptr noundef %netfilter_led_trigger, ptr noundef nonnull %led_delay, ptr noundef nonnull %led_delay, i32 noundef 1) #7
  br label %if.end

if.else:                                          ; preds = %land.lhs.true1.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %netfilter_led_trigger3 = getelementptr inbounds %struct.xt_led_info_internal, ptr %4, i32 0, i32 3
  tail call void @led_trigger_event(ptr noundef %netfilter_led_trigger3, i32 noundef 255) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5.not = icmp eq i32 %13, 0
  br i1 %cmp5.not, label %if.then16, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %timer8 = getelementptr inbounds %struct.xt_led_info_internal, ptr %4, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %13) #7
  %add = add i32 %call2.i, %14
  %call11 = call i32 @mod_timer(ptr noundef %timer8, i32 noundef %add) #7
  br label %if.end19

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %netfilter_led_trigger17 = getelementptr inbounds %struct.xt_led_info_internal, ptr %4, i32 0, i32 3
  call void @led_trigger_event(ptr noundef %netfilter_led_trigger17, i32 noundef 0) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %led_delay) #7
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @led_tg_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @xt_led_mutex, i32 noundef 0) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %ledinternal.0.in.i = phi ptr [ @xt_led_triggers, %if.end ], [ %ledinternal.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %ledinternal.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %ledinternal.0.i = load ptr, ptr %ledinternal.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ledinternal.0.i, @xt_led_triggers
  br i1 %cmp.not.i, label %for.cond.i.if.end4_crit_edge, label %for.body.i

for.cond.i.if.end4_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.body.i:                                       ; preds = %for.cond.i
  %netfilter_led_trigger.i = getelementptr inbounds %struct.xt_led_info_internal, ptr %ledinternal.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %netfilter_led_trigger.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netfilter_led_trigger.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %1, ptr noundef %6) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %led_trigger_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

led_trigger_lookup.exit:                          ; preds = %for.body.i
  %tobool.not = icmp eq ptr %ledinternal.0.i, null
  br i1 %tobool.not, label %led_trigger_lookup.exit.if.end4_crit_edge, label %if.then3

led_trigger_lookup.exit.if.end4_crit_edge:        ; preds = %led_trigger_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %led_trigger_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %refcnt = getelementptr inbounds %struct.xt_led_info_internal, ptr %ledinternal.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %refcnt, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %refcnt, align 4
  br label %out

if.end4:                                          ; preds = %led_trigger_lookup.exit.if.end4_crit_edge, %for.cond.i.if.end4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 144) #11
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.exit_mutex_only_crit_edge, label %if.end8

if.end4.exit_mutex_only_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_mutex_only

if.end8:                                          ; preds = %if.end4
  %call11 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #7
  %trigger_id = getelementptr inbounds %struct.xt_led_info_internal, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %trigger_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call11, ptr %trigger_id, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end8.exit_internal_alloc_crit_edge, label %if.end15

if.end8.exit_internal_alloc_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_internal_alloc

if.end15:                                         ; preds = %if.end8
  %refcnt16 = getelementptr inbounds %struct.xt_led_info_internal, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %refcnt16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %refcnt16, align 8
  %netfilter_led_trigger = getelementptr inbounds %struct.xt_led_info_internal, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %netfilter_led_trigger to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call11, ptr %netfilter_led_trigger, align 8
  %call19 = tail call i32 @led_trigger_register(ptr noundef %netfilter_led_trigger) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body28, label %if.then21

if.then21:                                        ; preds = %if.end15
  %call22 = tail call i32 @___ratelimit(ptr noundef nonnull @led_tg_check._rs, ptr noundef nonnull @__func__.led_tg_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.exit_alloc_crit_edge, label %do.end

if.then21.exit_alloc_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_alloc

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %exit_alloc

do.body28:                                        ; preds = %if.end15
  %timer = getelementptr inbounds %struct.xt_led_info_internal, ptr %call7.i.i, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @led_timeout_callback, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @led_tg_check.__key) #7
  %13 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @xt_led_triggers, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %13, ptr noundef nonnull @xt_led_triggers) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.body28.out_crit_edge

do.body28.out_crit_edge:                          ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i.i:                                       ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @xt_led_triggers, i32 0, i32 1), align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @xt_led_triggers, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i, ptr %13, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %do.body28.out_crit_edge, %if.then3
  %ledinternal.0 = phi ptr [ %ledinternal.0.i, %if.then3 ], [ %call7.i.i, %do.body28.out_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @xt_led_mutex) #7
  %internal_data = getelementptr inbounds %struct.xt_led_info, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %internal_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ledinternal.0, ptr %internal_data, align 8
  br label %cleanup

exit_alloc:                                       ; preds = %do.end, %if.then21.exit_alloc_crit_edge
  %18 = ptrtoint ptr %trigger_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trigger_id, align 4
  tail call void @kfree(ptr noundef %19) #7
  br label %exit_internal_alloc

exit_internal_alloc:                              ; preds = %exit_alloc, %if.end8.exit_internal_alloc_crit_edge
  %err.0 = phi i32 [ %call19, %exit_alloc ], [ -12, %if.end8.exit_internal_alloc_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit_mutex_only

exit_mutex_only:                                  ; preds = %exit_internal_alloc, %if.end4.exit_mutex_only_crit_edge
  %err.1 = phi i32 [ %err.0, %exit_internal_alloc ], [ -12, %if.end4.exit_mutex_only_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @xt_led_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %exit_mutex_only, %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ %err.1, %exit_mutex_only ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @led_tg_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %internal_data = getelementptr inbounds %struct.xt_led_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %internal_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %internal_data, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @xt_led_mutex, i32 noundef 0) #7
  %refcnt = getelementptr inbounds %struct.xt_led_info_internal, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refcnt, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @xt_led_mutex) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %timer = getelementptr inbounds %struct.xt_led_info_internal, ptr %3, i32 0, i32 4
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #7
  %netfilter_led_trigger = getelementptr inbounds %struct.xt_led_info_internal, ptr %3, i32 0, i32 3
  tail call void @led_trigger_unregister(ptr noundef %netfilter_led_trigger) #7
  tail call void @mutex_unlock(ptr noundef nonnull @xt_led_mutex) #7
  %trigger_id = getelementptr inbounds %struct.xt_led_info_internal, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %trigger_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trigger_id, align 4
  tail call void @kfree(ptr noundef %15) #7
  tail call void @kfree(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_blink_oneshot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @led_timeout_callback(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netfilter_led_trigger = getelementptr i8, ptr %t, i32 -80
  tail call void @led_trigger_event(ptr noundef %netfilter_led_trigger, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__UNIQUE_ID_file354, !1, !"__UNIQUE_ID_file354", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_LED.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_license355, !1, !"__UNIQUE_ID_license355", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author356, !4, !"__UNIQUE_ID_author356", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_LED.c", i32 18, i32 1}
!5 = !{ptr @__UNIQUE_ID_description357, !6, !"__UNIQUE_ID_description357", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_LED.c", i32 19, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias358, !8, !"__UNIQUE_ID_alias358", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_LED.c", i32 20, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias359, !10, !"__UNIQUE_ID_alias359", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_LED.c", i32 21, i32 1}
!11 = !{ptr @__initcall__kmod_xt_LED__360_201_led_tg_init6, !12, !"__initcall__kmod_xt_LED__360_201_led_tg_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_LED.c", i32 201, i32 1}
!13 = !{ptr @__exitcall_led_tg_exit, !14, !"__exitcall_led_tg_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_LED.c", i32 202, i32 1}
!15 = !{ptr @led_tg_reg, !16, !"led_tg_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_LED.c", i32 179, i32 25}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_LED.c", i32 125, i32 3}
!19 = !{ptr @led_tg_check._rs, !18, !"_rs", i1 false, i1 false}
!20 = !{ptr @__func__.led_tg_check, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @led_tg_check._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @led_tg_check._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @led_tg_check.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../net/netfilter/xt_LED.c", i32 132, i32 2}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/netfilter/xt_LED.c", i32 24, i32 8}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @xt_led_mutex, !29, !"xt_led_mutex", i1 false, i1 false}
!32 = !{ptr @xt_led_triggers, !33, !"xt_led_triggers", i1 false, i1 false}
!33 = !{!"../net/netfilter/xt_LED.c", i32 23, i32 8}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
