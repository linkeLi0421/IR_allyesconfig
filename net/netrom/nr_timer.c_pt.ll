; ModuleID = '/llk/IR_all_yes/net/netrom/nr_timer.c_pt.bc'
source_filename = "../net/netrom/nr_timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nr_sock = type { %struct.sock, %struct.ax25_address, %struct.ax25_address, %struct.ax25_address, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.121 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }

@nr_init_timers.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&nr->t1timer)\00", [17 x i8] zeroinitializer }, align 32
@nr_init_timers.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&nr->t2timer)\00", [17 x i8] zeroinitializer }, align 32
@nr_init_timers.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&nr->t4timer)\00", [17 x i8] zeroinitializer }, align 32
@nr_init_timers.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&nr->idletimer)\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 39, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 40, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 41, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [25 x i8] c"../net/netrom/nr_timer.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 42, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @nr_init_timers.__key, ptr @.str, ptr @nr_init_timers.__key.1, ptr @.str.2, ptr @nr_init_timers.__key.3, ptr @.str.4, ptr @nr_init_timers.__key.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_init_timers.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_init_timers.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_init_timers.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_init_timers.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_init_timers(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %t1timer = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 24
  tail call void @init_timer_key(ptr noundef %t1timer, ptr noundef nonnull @nr_t1timer_expiry, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @nr_init_timers.__key) #4
  %t2timer = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 25
  tail call void @init_timer_key(ptr noundef %t2timer, ptr noundef nonnull @nr_t2timer_expiry, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @nr_init_timers.__key.1) #4
  %t4timer = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 26
  tail call void @init_timer_key(ptr noundef %t4timer, ptr noundef nonnull @nr_t4timer_expiry, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @nr_init_timers.__key.3) #4
  %idletimer = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 27
  tail call void @init_timer_key(ptr noundef %idletimer, ptr noundef nonnull @nr_idletimer_expiry, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @nr_init_timers.__key.5) #4
  %function = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 32, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nr_heartbeat_expiry, ptr %function, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nr_t1timer_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1028
  %sk_lock = getelementptr i8, ptr %t, i32 -904
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #4
  %state = getelementptr i8, ptr %t, i32 -36
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb5
    i8 3, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %n2count = getelementptr i8, ptr %t, i32 -23
  %3 = ptrtoint ptr %n2count to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %n2count, align 1
  %n2 = getelementptr i8, ptr %t, i32 -24
  %5 = ptrtoint ptr %n2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %n2, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp = icmp eq i8 %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nr_disconnect(ptr noundef %add.ptr, i32 noundef 110) #4
  br label %out

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %inc = add i8 %4, 1
  %7 = ptrtoint ptr %n2count to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %inc, ptr %n2count, align 1
  tail call void @nr_write_internal(ptr noundef %add.ptr, i32 noundef 1) #4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %n2count6 = getelementptr i8, ptr %t, i32 -23
  %8 = ptrtoint ptr %n2count6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %n2count6, align 1
  %n28 = getelementptr i8, ptr %t, i32 -24
  %10 = ptrtoint ptr %n28 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %n28, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp10 = icmp eq i8 %9, %11
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nr_disconnect(ptr noundef %add.ptr, i32 noundef 110) #4
  br label %out

if.else13:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  %inc15 = add i8 %9, 1
  %12 = ptrtoint ptr %n2count6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %inc15, ptr %n2count6, align 1
  tail call void @nr_write_internal(ptr noundef %add.ptr, i32 noundef 3) #4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %n2count18 = getelementptr i8, ptr %t, i32 -23
  %13 = ptrtoint ptr %n2count18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %n2count18, align 1
  %n220 = getelementptr i8, ptr %t, i32 -24
  %15 = ptrtoint ptr %n220 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %n220, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp22 = icmp eq i8 %14, %16
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nr_disconnect(ptr noundef %add.ptr, i32 noundef 110) #4
  br label %out

if.else25:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #6
  %inc27 = add i8 %14, 1
  %17 = ptrtoint ptr %n2count18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %inc27, ptr %n2count18, align 1
  tail call void @nr_requeue_frames(ptr noundef %add.ptr) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else25, %if.else13, %if.else, %entry.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %t1.i = getelementptr i8, ptr %t, i32 -20
  %19 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %t1.i, align 8
  %add.i = add i32 %20, %18
  tail call void @sk_reset_timer(ptr noundef %add.ptr, ptr noundef %t, i32 noundef %add.i) #4
  br label %out

out:                                              ; preds = %sw.epilog, %if.then24, %if.then12, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #4
  %skc_refcnt.i = getelementptr i8, ptr %t, i32 -928
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #4
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #4, !srcloc !22
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !23

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #4
  br label %sock_put.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @sk_free(ptr noundef %add.ptr) #4
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nr_t2timer_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1076
  %sk_lock = getelementptr i8, ptr %t, i32 -952
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #4
  %condition = getelementptr i8, ptr %t, i32 -83
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %condition, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and3 = and i8 %1, -2
  %3 = ptrtoint ptr %condition to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %and3, ptr %condition, align 1
  tail call void @nr_enquiry_response(ptr noundef %add.ptr) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #4
  %skc_refcnt.i = getelementptr i8, ptr %t, i32 -976
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #4
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #4, !srcloc !22
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !23

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #4
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @sk_free(ptr noundef %add.ptr) #4
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nr_t4timer_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_lock = getelementptr i8, ptr %t, i32 -1000
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #4
  %condition = getelementptr i8, ptr %t, i32 -131
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %condition, align 1
  %2 = and i8 %1, -5
  store i8 %2, ptr %condition, align 1
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #4
  %skc_refcnt.i = getelementptr i8, ptr %t, i32 -1024
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #4
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #4, !srcloc !22
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !23

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #4
  br label %sock_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %t, i32 -1124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @sk_free(ptr noundef %add.ptr) #4
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nr_idletimer_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1172
  %sk_lock = getelementptr i8, ptr %t, i32 -1048
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #4
  tail call void @nr_clear_queues(ptr noundef %add.ptr) #4
  %n2count = getelementptr i8, ptr %t, i32 -167
  %0 = ptrtoint ptr %n2count to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %n2count, align 1
  tail call void @nr_write_internal(ptr noundef %add.ptr, i32 noundef 3) #4
  %state = getelementptr i8, ptr %t, i32 -180
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %state, align 8
  %t1timer.i = getelementptr i8, ptr %t, i32 -144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %t1.i = getelementptr i8, ptr %t, i32 -164
  %3 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %t1.i, align 8
  %add.i = add i32 %4, %2
  tail call void @sk_reset_timer(ptr noundef %add.ptr, ptr noundef %t1timer.i, i32 noundef %add.i) #4
  %t2timer.i = getelementptr i8, ptr %t, i32 -96
  tail call void @sk_stop_timer(ptr noundef %add.ptr, ptr noundef %t2timer.i) #4
  %t4timer.i = getelementptr i8, ptr %t, i32 -48
  tail call void @sk_stop_timer(ptr noundef %add.ptr, ptr noundef %t4timer.i) #4
  %skc_state = getelementptr i8, ptr %t, i32 -1154
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %5)
  store volatile i8 7, ptr %skc_state, align 2
  %sk_err = getelementptr i8, ptr %t, i32 -480
  %6 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sk_err, align 4
  %sk_shutdown = getelementptr i8, ptr %t, i32 -306
  %7 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sk_shutdown, align 2
  %9 = or i8 %8, 2
  store i8 %9, ptr %sk_shutdown, align 2
  %10 = getelementptr i8, ptr %t, i32 -1092
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sk_state_change = getelementptr i8, ptr %t, i32 -264
  %14 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk_state_change, align 4
  tail call void %15(ptr noundef %add.ptr) #4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %10, align 4
  %or.i.i = or i32 %17, 1
  store i32 %or.i.i, ptr %10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #4
  %skc_refcnt.i = getelementptr i8, ptr %t, i32 -1072
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #4
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #4, !srcloc !22
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !23

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #4
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @sk_free(ptr noundef %add.ptr) #4
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nr_heartbeat_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -532
  %sk_lock = getelementptr i8, ptr %t, i32 -408
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #4
  %state = getelementptr i8, ptr %t, i32 460
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 3, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = getelementptr i8, ptr %t, i32 -452
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %sw.bb.if.then_crit_edge

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.bb
  %skc_state = getelementptr i8, ptr %t, i32 -514
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp = icmp eq i8 %8, 10
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true:                                    ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %3, align 4
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i43.not = icmp eq i32 %11, 0
  br i1 %tobool.i43.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %sw.bb.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #4
  tail call void @nr_destroy_socket(ptr noundef %add.ptr) #4
  br label %out

sw.bb8:                                           ; preds = %entry
  %sk_backlog = getelementptr i8, ptr %t, i32 -160
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #4
  %12 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %sk_backlog, align 4
  %sk_rcvbuf = getelementptr i8, ptr %t, i32 -124
  %14 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sk_rcvbuf, align 8
  %div = sdiv i32 %15, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div)
  %cmp10 = icmp slt i32 %13, %div
  br i1 %cmp10, label %land.lhs.true12, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true12:                                  ; preds = %sw.bb8
  %condition = getelementptr i8, ptr %t, i32 461
  %16 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %condition, align 1
  %18 = and i8 %17, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %land.lhs.true12.sw.epilog_crit_edge, label %if.then14

land.lhs.true12.sw.epilog_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  %19 = and i8 %17, -10
  %20 = ptrtoint ptr %condition to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %condition, align 1
  %vr = getelementptr i8, ptr %t, i32 466
  %21 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vr, align 2
  %vl = getelementptr i8, ptr %t, i32 470
  %23 = ptrtoint ptr %vl to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %vl, align 2
  tail call void @nr_write_internal(ptr noundef %add.ptr, i32 noundef 6) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then14, %land.lhs.true12.sw.epilog_crit_edge, %sw.bb8.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %24, 500
  tail call void @sk_reset_timer(ptr noundef %add.ptr, ptr noundef %t, i32 noundef %add.i) #4
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #4
  br label %out

out:                                              ; preds = %sw.epilog, %if.then
  %skc_refcnt.i = getelementptr i8, ptr %t, i32 -432
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #4
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #4, !srcloc !22
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !23

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #4
  br label %sock_put.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @sk_free(ptr noundef %add.ptr) #4
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_start_t1timer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %t1timer = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %t1 = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 19
  %1 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %t1, align 8
  %add = add i32 %2, %0
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %t1timer, i32 noundef %add) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_start_t2timer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %t2timer = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %t2 = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 20
  %1 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %t2, align 4
  %add = add i32 %2, %0
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %t2timer, i32 noundef %add) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_start_t4timer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %t4timer = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %t4 = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 21
  %1 = ptrtoint ptr %t4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %t4, align 8
  %add = add i32 %2, %0
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %t4timer, i32 noundef %add) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_start_idletimer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %idle = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 22
  %0 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %idletimer = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, %1
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %idletimer, i32 noundef %add) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_start_heartbeat(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_timer = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 500
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %sk_timer, i32 noundef %add) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_stop_t1timer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %t1timer = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 24
  tail call void @sk_stop_timer(ptr noundef %sk, ptr noundef %t1timer) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_stop_timer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_stop_t2timer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %t2timer = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 25
  tail call void @sk_stop_timer(ptr noundef %sk, ptr noundef %t2timer) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_stop_t4timer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %t4timer = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 26
  tail call void @sk_stop_timer(ptr noundef %sk, ptr noundef %t4timer) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_stop_idletimer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %idletimer = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 27
  tail call void @sk_stop_timer(ptr noundef %sk, ptr noundef %idletimer) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_stop_heartbeat(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_timer = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 32
  tail call void @sk_stop_timer(ptr noundef %sk, ptr noundef %sk_timer) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nr_t1timer_running(ptr noundef %sk) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 24, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp ne ptr %1, null
  %lnot.ext.i = zext i1 %tobool.not.i.i to i32
  ret i32 %lnot.ext.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_destroy_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_write_internal(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_enquiry_response(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_clear_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_requeue_frames(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @nr_init_timers.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/netrom/nr_timer.c", i32 39, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nr_init_timers.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../net/netrom/nr_timer.c", i32 40, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nr_init_timers.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../net/netrom/nr_timer.c", i32 41, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nr_init_timers.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../net/netrom/nr_timer.c", i32 42, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148339782}
!22 = !{i64 2148254246, i64 2148254278, i64 2148254307, i64 2148254341, i64 2148254372, i64 2148254395}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2149276062}
