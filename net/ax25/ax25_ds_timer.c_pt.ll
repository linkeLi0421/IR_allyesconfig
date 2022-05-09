; ModuleID = '/llk/IR_all_yes/net/ax25/ax25_ds_timer.c_pt.bc'
source_filename = "../net/ax25/ax25_ds_timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.ax25_dev = type { ptr, ptr, ptr, ptr, ptr, [14 x i32], %struct.ax25_dama_info, %struct.refcount_struct }
%struct.ax25_dama_info = type { i8, %struct.timer_list, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ax25_cb = type { %struct.hlist_node, %struct.ax25_address, %struct.ax25_address, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i16, i16, i16, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.timer_list, %struct.timer_list, ptr, %struct.refcount_struct }
%struct.ax25_address = type { [7 x i8] }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.104, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.105, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.106, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.104 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }

@ax25_ds_setup_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(&ax25_dev->dama.slave_timer)\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ax25_list_lock = external dso_local global %struct.spinlock, align 4
@ax25_list = external dso_local local_unnamed_addr global %struct.hlist_head, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.2 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [28 x i8] c"../net/ax25/ax25_ds_timer.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 41, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @ax25_ds_setup_timer.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_ds_setup_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_ds_setup_timer(ptr noundef %ax25_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_timer = getelementptr inbounds %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %slave_timer, ptr noundef nonnull @ax25_ds_timeout, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @ax25_ds_setup_timer.__key) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax25_ds_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -80
  %cmp = icmp eq ptr %add.ptr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dama = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %dama to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dama, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %slave_timeout = getelementptr i8, ptr %t, i32 48
  %2 = ptrtoint ptr %slave_timeout to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %slave_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %if.end.if.else.i.i_crit_edge, label %lor.lhs.false3

if.end.if.else.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i.i

lor.lhs.false3:                                   ; preds = %if.end
  %dec = add i16 %3, -1
  %4 = ptrtoint ptr %slave_timeout to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %dec, ptr %slave_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool6.not = icmp eq i16 %dec, 0
  br i1 %tobool6.not, label %if.end8, label %lor.lhs.false3.if.else.i.i_crit_edge

lor.lhs.false3.if.else.i.i_crit_edge:             ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false3.if.else.i.i_crit_edge, %if.end.if.else.i.i_crit_edge
  %arrayidx.i = getelementptr i8, ptr %t, i32 -8
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %6) #3
  %div.i = udiv i32 %call2.i.i, 10
  %conv.i = trunc i32 %div.i to i16
  %7 = ptrtoint ptr %slave_timeout to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %slave_timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 100
  %call2.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #3
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false3
  tail call void @_raw_spin_lock(ptr noundef nonnull @ax25_list_lock) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ax25_list to i32))
  %ax25.050 = load ptr, ptr @ax25_list, align 4
  %tobool14.not51 = icmp eq ptr %ax25.050, null
  br i1 %tobool14.not51, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8.for.body_crit_edge
  %ax25.052 = phi ptr [ %ax25.0, %for.inc.for.body_crit_edge ], [ %ax25.050, %if.end8.for.body_crit_edge ]
  %ax25_dev15 = getelementptr inbounds %struct.ax25_cb, ptr %ax25.052, i32 0, i32 4
  %9 = ptrtoint ptr %ax25_dev15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ax25_dev15, align 4
  %cmp16.not = icmp eq ptr %10, %add.ptr
  br i1 %cmp16.not, label %lor.lhs.false18, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

lor.lhs.false18:                                  ; preds = %for.body
  %condition = getelementptr inbounds %struct.ax25_cb, ptr %ax25.052, i32 0, i32 12
  %11 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %condition, align 2
  %13 = and i8 %12, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool20.not = icmp eq i8 %13, 0
  br i1 %tobool20.not, label %lor.lhs.false18.for.inc_crit_edge, label %if.end22

lor.lhs.false18.for.inc_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end22:                                         ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ax25_send_control(ptr noundef nonnull %ax25.052, i32 noundef 67, i32 noundef 1, i32 noundef 1) #3
  tail call void @ax25_disconnect(ptr noundef nonnull %ax25.052, i32 noundef 110) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %lor.lhs.false18.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %ax25.052 to i32
  call void @__asan_load4_noabort(i32 %14)
  %ax25.0 = load ptr, ptr %ax25.052, align 4
  %tobool14.not = icmp eq ptr %ax25.0, null
  br i1 %tobool14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ax25_list_lock) #3
  tail call void @ax25_dev_dama_off(ptr noundef nonnull %add.ptr) #3
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else.i.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_ds_del_timer(ptr noundef %ax25_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ax25_dev, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %slave_timer = getelementptr inbounds %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 6, i32 1
  %call = tail call i32 @del_timer(ptr noundef %slave_timer) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_ds_set_timer(ptr noundef %ax25_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ax25_dev, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.else.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 13
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #3
  %div = udiv i32 %call2.i, 10
  %conv = trunc i32 %div to i16
  %slave_timeout = getelementptr inbounds %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %slave_timeout to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %slave_timeout, align 4
  %slave_timer = getelementptr inbounds %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 6, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, 100
  %call2 = tail call i32 @mod_timer(ptr noundef %slave_timer, i32 noundef %add) #3
  br label %return

return:                                           ; preds = %if.else.i, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_ds_heartbeat_expiry(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 35
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sk_lock = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %sw.epilog [
    i8 0, label %if.end.sw.bb_crit_edge
    i8 2, label %if.end.sw.bb_crit_edge72
    i8 3, label %sw.bb16
  ]

if.end.sw.bb_crit_edge72:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge72
  br i1 %tobool.not, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %5 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %lor.lhs.false4, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %10)
  %cmp = icmp eq i8 %10, 10
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false4.if.then38_crit_edge

lor.lhs.false4.if.then38_crit_edge:               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then38

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %5, align 4
  %13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i68.not = icmp eq i32 %13, 0
  br i1 %tobool.i68.not, label %land.lhs.true.if.then38_crit_edge, label %land.lhs.true.if.then11_crit_edge

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

land.lhs.true.if.then38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then38

if.then11:                                        ; preds = %land.lhs.true.if.then11_crit_edge, %lor.lhs.false.if.then11_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #3
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #3
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #3, !srcloc !12
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then11.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !13

if.then11.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then11
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !14

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then11.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then11.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #3
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @ax25_destroy_socket(ptr noundef %ax25) #3
  %sk_lock12 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock12) #3
  %call.i.i.i.i.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #3
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #3, !srcloc !16
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i71 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i71, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !14

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #3
  br label %cleanup

if.then.i:                                        ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @sk_free(ptr noundef nonnull %1) #3
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ax25_destroy_socket(ptr noundef %ax25) #3
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  br i1 %tobool.not, label %sw.bb16.if.end41_crit_edge, label %if.then19

sw.bb16.if.end41_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then19:                                        ; preds = %sw.bb16
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #3
  %17 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %sk_backlog, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sk_rcvbuf, align 8
  %shr = ashr i32 %20, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %shr)
  %cmp21 = icmp slt i32 %18, %shr
  br i1 %cmp21, label %land.lhs.true23, label %if.then19.if.then38_crit_edge

if.then19.if.then38_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then38

land.lhs.true23:                                  ; preds = %if.then19
  %condition = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %21 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %condition, align 2
  %23 = and i8 %22, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool25.not = icmp eq i8 %23, 0
  br i1 %tobool25.not, label %land.lhs.true23.if.then38_crit_edge, label %if.then26

land.lhs.true23.if.then38_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then38

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #5
  %24 = and i8 %22, -10
  %25 = ptrtoint ptr %condition to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %condition, align 2
  br label %if.then38

sw.epilog:                                        ; preds = %if.end
  br i1 %tobool.not, label %sw.epilog.if.end41_crit_edge, label %sw.epilog.if.then38_crit_edge

sw.epilog.if.then38_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then38

sw.epilog.if.end41_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then38:                                        ; preds = %sw.epilog.if.then38_crit_edge, %if.then26, %land.lhs.true23.if.then38_crit_edge, %if.then19.if.then38_crit_edge, %land.lhs.true.if.then38_crit_edge, %lor.lhs.false4.if.then38_crit_edge
  %sk_lock39 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock39) #3
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %sw.epilog.if.end41_crit_edge, %sw.bb16.if.end41_crit_edge
  tail call void @ax25_start_heartbeat(ptr noundef %ax25) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.else, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_destroy_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_heartbeat(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_ds_t3timer_expiry(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ax25_send_control(ptr noundef %ax25, i32 noundef 67, i32 noundef 1, i32 noundef 1) #3
  tail call void @ax25_dama_off(ptr noundef %ax25) #3
  tail call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 110) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_send_control(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_dama_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_ds_idletimer_expiry(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ax25_clear_queues(ptr noundef %ax25) #3
  %n2count = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %0 = ptrtoint ptr %n2count to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %n2count, align 1
  %state = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 6
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %state, align 1
  tail call void @ax25_calculate_t1(ptr noundef %ax25) #3
  tail call void @ax25_start_t1timer(ptr noundef %ax25) #3
  tail call void @ax25_stop_t3timer(ptr noundef %ax25) #3
  %sk = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 35
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then:                                          ; preds = %entry
  %sk_lock = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #3
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 7, ptr %skc_state, align 2
  %7 = load ptr, ptr %sk, align 4
  %sk_err = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 51
  %8 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %sk_err, align 4
  %9 = load ptr, ptr %sk, align 4
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 66
  %10 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sk_shutdown, align 2
  %12 = or i8 %11, 2
  store i8 %12, ptr %sk_shutdown, align 2
  %13 = load ptr, ptr %sk, align 4
  %14 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 76
  %18 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk_state_change, align 4
  tail call void %19(ptr noundef %13) #3
  %20 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk, align 4
  %22 = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 13
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %or.i.i = or i32 %24, 1
  store i32 %or.i.i, ptr %22, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %25 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sk, align 4
  %sk_lock12 = getelementptr inbounds %struct.sock, ptr %26, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock12) #3
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_clear_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_calculate_t1(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_t1timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_t3timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_ds_t1_timeout(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 6
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb21
    i8 3, label %sw.bb35
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %n2count = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %3 = ptrtoint ptr %n2count to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %n2count, align 1
  %n2 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 14
  %5 = ptrtoint ptr %n2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %n2, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp = icmp eq i8 %4, %6
  br i1 %cmp, label %if.then, label %if.else11

if.then:                                          ; preds = %sw.bb
  %modulus = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %7 = ptrtoint ptr %modulus to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %modulus, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp5 = icmp eq i8 %8, 8
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 110) #3
  br label %return

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %modulus to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %modulus, align 2
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %10 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ax25_dev, align 4
  %arrayidx = getelementptr %struct.ax25_dev, ptr %11, i32 0, i32 5, i32 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %conv9 = trunc i32 %13 to i8
  %window = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 32
  %14 = ptrtoint ptr %window to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv9, ptr %window, align 4
  %15 = ptrtoint ptr %n2count to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %n2count, align 1
  tail call void @ax25_send_control(ptr noundef %ax25, i32 noundef 47, i32 noundef 0, i32 noundef 1) #3
  br label %sw.epilog

if.else11:                                        ; preds = %sw.bb
  %inc = add i8 %4, 1
  %16 = ptrtoint ptr %n2count to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %inc, ptr %n2count, align 1
  %modulus13 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %17 = ptrtoint ptr %modulus13 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %modulus13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %18)
  %cmp15 = icmp eq i8 %18, 8
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ax25_send_control(ptr noundef %ax25, i32 noundef 47, i32 noundef 0, i32 noundef 1) #3
  br label %sw.epilog

if.else18:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ax25_send_control(ptr noundef %ax25, i32 noundef 111, i32 noundef 0, i32 noundef 1) #3
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %n2count22 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %19 = ptrtoint ptr %n2count22 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %n2count22, align 1
  %n224 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 14
  %21 = ptrtoint ptr %n224 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %n224, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp26 = icmp eq i8 %20, %22
  br i1 %cmp26, label %if.then28, label %if.else31

if.then28:                                        ; preds = %sw.bb21
  tail call void @ax25_send_control(ptr noundef %ax25, i32 noundef 67, i32 noundef 1, i32 noundef 1) #3
  %sk = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 35
  %23 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sk, align 4
  %25 = getelementptr inbounds %struct.sock_common, ptr %24, i32 0, i32 13
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.not, label %if.then29, label %if.then28.return_crit_edge

if.then28.return_crit_edge:                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then29:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 110) #3
  br label %return

if.else31:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #5
  %inc33 = add i8 %20, 1
  %29 = ptrtoint ptr %n2count22 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %inc33, ptr %n2count22, align 1
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  %n2count36 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %30 = ptrtoint ptr %n2count36 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %n2count36, align 1
  %n238 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 14
  %32 = ptrtoint ptr %n238 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %n238, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp40 = icmp eq i8 %31, %33
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ax25_send_control(ptr noundef %ax25, i32 noundef 15, i32 noundef 1, i32 noundef 2) #3
  tail call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 110) #3
  br label %return

if.else43:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #5
  %inc45 = add i8 %31, 1
  %34 = ptrtoint ptr %n2count36 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %inc45, ptr %n2count36, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else43, %if.else31, %if.else18, %if.then17, %if.else, %entry.sw.epilog_crit_edge
  tail call void @ax25_calculate_t1(ptr noundef %ax25) #3
  tail call void @ax25_start_t1timer(ptr noundef %ax25) #3
  br label %return

return:                                           ; preds = %sw.epilog, %if.then42, %if.then29, %if.then28.return_crit_edge, %if.then7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_dev_dama_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @ax25_ds_setup_timer.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/ax25/ax25_ds_timer.c", i32 41, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i64 2148252285, i64 2148252317, i64 2148252346, i64 2148252380, i64 2148252411, i64 2148252434}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2148340286}
!16 = !{i64 2148254750, i64 2148254782, i64 2148254811, i64 2148254845, i64 2148254876, i64 2148254899}
!17 = !{i64 2149276566}
