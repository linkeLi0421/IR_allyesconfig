; ModuleID = '/llk/IR_all_yes/net/ax25/ax25_timer.c_pt.bc'
source_filename = "../net/ax25/ax25_timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ax25_display_timer\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25_display_timer\09\09\09\09"
module asm "\09.long\09__crc_ax25_display_timer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25_display_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25_display_timer\22\09\09\09\09\09"
module asm "__kstrtabns_ax25_display_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ax25_cb = type { %struct.hlist_node, %struct.ax25_address, %struct.ax25_address, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i16, i16, i16, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.timer_list, %struct.timer_list, ptr, %struct.refcount_struct }
%struct.ax25_address = type { [7 x i8] }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ax25_dev = type { ptr, ptr, ptr, ptr, ptr, [14 x i32], %struct.ax25_dama_info, %struct.refcount_struct }
%struct.ax25_dama_info = type { i8, %struct.timer_list, i16 }

@ax25_setup_timers.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&ax25->timer)\00", [17 x i8] zeroinitializer }, align 32
@ax25_setup_timers.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&ax25->t1timer)\00", [47 x i8] zeroinitializer }, align 32
@ax25_setup_timers.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&ax25->t2timer)\00", [47 x i8] zeroinitializer }, align 32
@ax25_setup_timers.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&ax25->t3timer)\00", [47 x i8] zeroinitializer }, align 32
@ax25_setup_timers.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&ax25->idletimer)\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_ax25_display_timer = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25_display_timer = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25_display_timer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25_display_timer to i32), ptr @__kstrtab_ax25_display_timer, ptr @__kstrtabns_ax25_display_timer }, section "___ksymtab+ax25_display_timer", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 41, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 42, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 43, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 44, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [25 x i8] c"../net/ax25/ax25_timer.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 45, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_ax25_display_timer, ptr @ax25_setup_timers.__key, ptr @.str, ptr @ax25_setup_timers.__key.1, ptr @.str.2, ptr @ax25_setup_timers.__key.3, ptr @.str.4, ptr @ax25_setup_timers.__key.5, ptr @.str.6, ptr @ax25_setup_timers.__key.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_setup_timers.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_setup_timers.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_setup_timers.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_setup_timers.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_setup_timers.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_setup_timers(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 33
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @ax25_heartbeat_expiry, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @ax25_setup_timers.__key) #4
  %t1timer = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 16
  tail call void @init_timer_key(ptr noundef %t1timer, ptr noundef nonnull @ax25_t1timer_expiry, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @ax25_setup_timers.__key.1) #4
  %t2timer = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 17
  tail call void @init_timer_key(ptr noundef %t2timer, ptr noundef nonnull @ax25_t2timer_expiry, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @ax25_setup_timers.__key.3) #4
  %t3timer = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 18
  tail call void @init_timer_key(ptr noundef %t3timer, ptr noundef nonnull @ax25_t3timer_expiry, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @ax25_setup_timers.__key.5) #4
  %idletimer = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 19
  tail call void @init_timer_key(ptr noundef %idletimer, ptr noundef nonnull @ax25_idletimer_expiry, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @ax25_setup_timers.__key.7) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax25_heartbeat_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -496
  %ax25_dev = getelementptr i8, ptr %t, i32 -468
  %0 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ax25_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.sw.bb_crit_edge, label %if.end

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ax25_dev, ptr %1, i32 0, i32 5, i32 12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge13
    i32 2, label %sw.bb2
  ]

if.end.sw.bb_crit_edge13:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge13, %entry.sw.bb_crit_edge
  tail call void @ax25_std_heartbeat_expiry(ptr noundef %add.ptr) #4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %dama = getelementptr inbounds %struct.ax25_dev, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %dama to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dama, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ax25_ds_heartbeat_expiry(ptr noundef %add.ptr) #4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ax25_std_heartbeat_expiry(ptr noundef %add.ptr) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then5, %sw.bb, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax25_t1timer_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -48
  %ax25_dev = getelementptr i8, ptr %t, i32 -20
  %0 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ax25_dev, align 4
  %arrayidx = getelementptr %struct.ax25_dev, ptr %1, i32 0, i32 5, i32 12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 1, label %entry.sw.epilog.sink.split_crit_edge6
    i32 2, label %sw.bb1
  ]

entry.sw.epilog.sink.split_crit_edge6:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %dama = getelementptr inbounds %struct.ax25_dev, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %dama to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dama, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %sw.bb1.sw.epilog.sink.split_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge6
  tail call void @ax25_std_t1timer_expiry(ptr noundef %add.ptr) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax25_t2timer_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -96
  %ax25_dev = getelementptr i8, ptr %t, i32 -68
  %0 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ax25_dev, align 4
  %arrayidx = getelementptr %struct.ax25_dev, ptr %1, i32 0, i32 5, i32 12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 1, label %entry.sw.epilog.sink.split_crit_edge6
    i32 2, label %sw.bb1
  ]

entry.sw.epilog.sink.split_crit_edge6:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %dama = getelementptr inbounds %struct.ax25_dev, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %dama to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dama, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %sw.bb1.sw.epilog.sink.split_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge6
  tail call void @ax25_std_t2timer_expiry(ptr noundef %add.ptr) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax25_t3timer_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -144
  %ax25_dev = getelementptr i8, ptr %t, i32 -116
  %0 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ax25_dev, align 4
  %arrayidx = getelementptr %struct.ax25_dev, ptr %1, i32 0, i32 5, i32 12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge7
    i32 2, label %sw.bb1
  ]

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge7
  tail call void @ax25_std_t3timer_expiry(ptr noundef %add.ptr) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %dama = getelementptr inbounds %struct.ax25_dev, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %dama to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dama, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ax25_ds_t3timer_expiry(ptr noundef %add.ptr) #4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ax25_std_t3timer_expiry(ptr noundef %add.ptr) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax25_idletimer_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -192
  %ax25_dev = getelementptr i8, ptr %t, i32 -164
  %0 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ax25_dev, align 4
  %arrayidx = getelementptr %struct.ax25_dev, ptr %1, i32 0, i32 5, i32 12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge7
    i32 2, label %sw.bb1
  ]

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge7
  tail call void @ax25_std_idletimer_expiry(ptr noundef %add.ptr) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %dama = getelementptr inbounds %struct.ax25_dev, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %dama to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dama, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ax25_ds_idletimer_expiry(ptr noundef %add.ptr) #4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ax25_std_idletimer_expiry(ptr noundef %add.ptr) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_start_heartbeat(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 500
  %call = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_start_t1timer(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %t1timer = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %t1 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 20
  %1 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %t1, align 4
  %add = add i32 %2, %0
  %call = tail call i32 @mod_timer(ptr noundef %t1timer, i32 noundef %add) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_start_t2timer(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %t2timer = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %t2 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 21
  %1 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %t2, align 4
  %add = add i32 %2, %0
  %call = tail call i32 @mod_timer(ptr noundef %t2timer, i32 noundef %add) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_start_t3timer(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %t3 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 22
  %0 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %t3timer2 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 18
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, %1
  %call = tail call i32 @mod_timer(ptr noundef %t3timer2, i32 noundef %add) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 @del_timer(ptr noundef %t3timer2) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_start_idletimer(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %idle = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 23
  %0 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %idletimer2 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 19
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, %1
  %call = tail call i32 @mod_timer(ptr noundef %idletimer2, i32 noundef %add) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 @del_timer(ptr noundef %idletimer2) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_stop_heartbeat(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 33
  %call = tail call i32 @del_timer(ptr noundef %timer) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_stop_t1timer(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %t1timer = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 16
  %call = tail call i32 @del_timer(ptr noundef %t1timer) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_stop_t2timer(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %t2timer = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 17
  %call = tail call i32 @del_timer(ptr noundef %t2timer) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_stop_t3timer(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %t3timer = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 18
  %call = tail call i32 @del_timer(ptr noundef %t3timer) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_stop_idletimer(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %idletimer = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 19
  %call = tail call i32 @del_timer(ptr noundef %idletimer) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ax25_t1timer_running(ptr noundef %ax25) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 16, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp ne ptr %1, null
  %lnot.ext.i = zext i1 %tobool.not.i.i to i32
  ret i32 %lnot.ext.i
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ax25_display_timer(ptr noundef %timer) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %timer, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %expires = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 1
  %2 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %expires, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %3, %4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_std_heartbeat_expiry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_ds_heartbeat_expiry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_std_t1timer_expiry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_std_t2timer_expiry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_std_t3timer_expiry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_ds_t3timer_expiry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_std_idletimer_expiry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_ds_idletimer_expiry(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @ax25_setup_timers.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/ax25/ax25_timer.c", i32 41, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ax25_setup_timers.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../net/ax25/ax25_timer.c", i32 42, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ax25_setup_timers.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../net/ax25/ax25_timer.c", i32 43, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ax25_setup_timers.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../net/ax25/ax25_timer.c", i32 44, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ax25_setup_timers.__key.7, !13, !"__key", i1 false, i1 false}
!13 = !{!"../net/ax25/ax25_timer.c", i32 45, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_ax25_display_timer, !16, !"__ksymtab_ax25_display_timer", i1 false, i1 false}
!16 = !{!"../net/ax25/ax25_timer.c", i32 117, i32 1}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
