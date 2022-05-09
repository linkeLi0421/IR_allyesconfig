; ModuleID = '/llk/IR_all_yes/net/rxrpc/rtt.c_pt.bc'
source_filename = "../net/rxrpc/rtt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.122 }
%struct.atomic_t = type { i32 }
%union.anon.122 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.rxrpc_call = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.timer_list, %struct.work_struct, ptr, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, ptr, %struct.wait_queue_head, i64, [2 x i32], i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i32, i32, i32, %struct.atomic_t, i16, i8, i32, i32, i32, i32, i16, i16, i8, ptr, ptr, i32, i32, i16, i8, i8, i8, i8, i8, i8, i64, i32, i32, i32, i32, i8, i8, i8, i8, %struct.spinlock, i8, i32, i32, i32, i32, i32, [4 x i32], [4 x i64], i32, i64, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.rxrpc_peer = type { %struct.callback_head, %struct.atomic_t, i32, %struct.hlist_node, ptr, %struct.hlist_head, %struct.rb_root, %struct.list_head, i64, %struct.seqlock_t, %struct.spinlock, i32, i32, i32, i16, i32, %struct.sockaddr_rxrpc, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.135 }
%union.anon.135 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__tracepoint_rxrpc_rtt_rx = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_rtt_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [19 x i8] c"../net/rxrpc/rtt.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 1100, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 108, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_peer_add_rtt(ptr noundef %call, i32 noundef %why, i32 noundef %rtt_slot, i32 noundef %send_serial, i32 noundef %resp_serial, i64 noundef %send_time, i64 noundef %resp_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %peer1 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %peer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer1, align 4
  %sub = sub i64 %resp_time, %send_time
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %2 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #6
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %2, i32 0) #9, !srcloc !18
  %asmresult.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %2, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #9, !srcloc !19
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond213.i.i)
  %cmp = icmp slt i64 %cond213.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rtt_input_lock = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %rtt_input_lock) #6
  %conv = trunc i64 %cond213.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp.i = icmp slt i32 %conv, 0
  br i1 %cmp.i, label %if.end.rxrpc_ack_update_rtt.exit_crit_edge, label %if.end.i

if.end.rxrpc_ack_update_rtt.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rxrpc_ack_update_rtt.exit

if.end.i:                                         ; preds = %if.end
  %srtt_us.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %srtt_us.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %srtt_us.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i.i, label %if.else27.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %shr.i.i = lshr i32 %6, 3
  %sub.i.i = sub nsw i32 %conv, %shr.i.i
  %add.i.i = add i32 %sub.i.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp1.i.i = icmp slt i32 %sub.i.i, 0
  %mdev_us.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %mdev_us.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mdev_us.i.i, align 8
  %shr4.i.i = lshr i32 %8, 2
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = add nsw i32 %shr4.i.i, %sub.i.i
  %sub5.i.i = sub nsw i32 0, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6.i.i = icmp slt i32 %9, 0
  %shr8.i.i = ashr i32 %sub5.i.i, 3
  %spec.select.i.i = select i1 %cmp6.i.i, i32 %shr8.i.i, i32 %sub5.i.i
  br label %if.end12.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub11.i.i = sub nsw i32 %sub.i.i, %shr4.i.i
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.else.i.i, %if.then2.i.i
  %m.0.i.i = phi i32 [ %sub11.i.i, %if.else.i.i ], [ %spec.select.i.i, %if.then2.i.i ]
  %add14.i.i = add i32 %m.0.i.i, %8
  %10 = ptrtoint ptr %mdev_us.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add14.i.i, ptr %mdev_us.i.i, align 8
  %mdev_max_us.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 22
  %11 = ptrtoint ptr %mdev_max_us.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdev_max_us.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i.i, i32 %12)
  %cmp16.i.i = icmp ugt i32 %add14.i.i, %12
  br i1 %cmp16.i.i, label %if.then17.i.i, label %if.end12.i.i.rxrpc_rtt_estimator.exit.i_crit_edge

if.end12.i.i.rxrpc_rtt_estimator.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rxrpc_rtt_estimator.exit.i

if.then17.i.i:                                    ; preds = %if.end12.i.i
  %13 = ptrtoint ptr %mdev_max_us.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add14.i.i, ptr %mdev_max_us.i.i, align 4
  %rttvar_us.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 23
  %14 = ptrtoint ptr %rttvar_us.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rttvar_us.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i.i, i32 %15)
  %cmp21.i.i = icmp ugt i32 %add14.i.i, %15
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.then17.i.i.rxrpc_rtt_estimator.exit.i_crit_edge

if.then17.i.i.rxrpc_rtt_estimator.exit.i_crit_edge: ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rxrpc_rtt_estimator.exit.i

if.then22.i.i:                                    ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %rttvar_us.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add14.i.i, ptr %rttvar_us.i.i, align 8
  br label %rxrpc_rtt_estimator.exit.i

if.else27.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i.i = shl i32 %conv, 3
  %shl28.i.i = shl nuw i32 %conv, 1
  %mdev_us29.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 21
  %17 = ptrtoint ptr %mdev_us29.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl28.i.i, ptr %mdev_us29.i.i, align 8
  %18 = tail call i32 @llvm.umax.i32(i32 %shl28.i.i, i32 200) #6
  %rttvar_us32.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 23
  %19 = ptrtoint ptr %rttvar_us32.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rttvar_us32.i.i, align 8
  %mdev_max_us34.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 22
  %20 = ptrtoint ptr %mdev_max_us34.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %mdev_max_us34.i.i, align 4
  br label %rxrpc_rtt_estimator.exit.i

rxrpc_rtt_estimator.exit.i:                       ; preds = %if.else27.i.i, %if.then22.i.i, %if.then17.i.i.rxrpc_rtt_estimator.exit.i_crit_edge, %if.end12.i.i.rxrpc_rtt_estimator.exit.i_crit_edge
  %srtt.0.i.i = phi i32 [ %add.i.i, %if.then22.i.i ], [ %add.i.i, %if.then17.i.i.rxrpc_rtt_estimator.exit.i_crit_edge ], [ %add.i.i, %if.end12.i.i.rxrpc_rtt_estimator.exit.i_crit_edge ], [ %shl.i.i, %if.else27.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srtt.0.i.i)
  %cmp37.i.i = icmp eq i32 %srtt.0.i.i, 0
  %.srtt.0.i.i = select i1 %cmp37.i.i, i32 1, i32 %srtt.0.i.i
  %21 = ptrtoint ptr %srtt_us.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.srtt.0.i.i, ptr %srtt_us.i.i, align 4
  %shr.i.i.i = lshr i32 %.srtt.0.i.i, 3
  %rttvar_us.i.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 23
  %22 = ptrtoint ptr %rttvar_us.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rttvar_us.i.i.i, align 8
  %add.i.i.i = add i32 %shr.i.i.i, %23
  %call3.i.i.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %add.i.i.i) #6
  %24 = tail call i32 @llvm.umin.i32(i32 %call3.i.i.i.i, i32 12000) #6
  %rto_j.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 24
  %25 = ptrtoint ptr %rto_j.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %rto_j.i.i, align 4
  %backoff.i = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 25
  %26 = ptrtoint ptr %backoff.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %backoff.i, align 8
  br label %rxrpc_ack_update_rtt.exit

rxrpc_ack_update_rtt.exit:                        ; preds = %rxrpc_rtt_estimator.exit.i, %if.end.rxrpc_ack_update_rtt.exit_crit_edge
  %rtt_count = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 19
  %27 = ptrtoint ptr %rtt_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rtt_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp3 = icmp ult i32 %28, 3
  br i1 %cmp3, label %if.then5, label %rxrpc_ack_update_rtt.exit.if.end7_crit_edge

rxrpc_ack_update_rtt.exit.if.end7_crit_edge:      ; preds = %rxrpc_ack_update_rtt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %rxrpc_ack_update_rtt.exit
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add nuw nsw i32 %28, 1
  %29 = ptrtoint ptr %rtt_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc, ptr %rtt_count, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %rxrpc_ack_update_rtt.exit.if.end7_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rtt_input_lock) #6
  %srtt_us = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 20
  %30 = ptrtoint ptr %srtt_us to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %srtt_us, align 4
  %shr = lshr i32 %31, 3
  %rto_j = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 24
  %32 = ptrtoint ptr %rto_j to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rto_j, align 4
  tail call fastcc void @trace_rxrpc_rtt_rx(ptr noundef %call, i32 noundef %why, i32 noundef %rtt_slot, i32 noundef %send_serial, i32 noundef %resp_serial, i32 noundef %shr, i32 noundef %33)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rtt_rx(ptr noundef %call, i32 noundef %why, i32 noundef %slot, i32 noundef %send_serial, i32 noundef %resp_serial, i32 noundef %rtt, i32 noundef %rto) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rtt_rx, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rtt_rx, %do.body)) #6
          to label %if.end49 [label %do.body], !srcloc !20

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !8) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !21

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !8) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !22
  %call43 = tail call i32 @__traceiter_rxrpc_rtt_rx(ptr noundef null, ptr noundef %call, i32 noundef %why, i32 noundef %slot, i32 noundef %send_serial, i32 noundef %resp_serial, i32 noundef %rtt, i32 noundef %rto) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  %13 = tail call i32 @llvm.read_register.i32(metadata !8) #6
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !8) #6
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !21

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !8) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rtt_rx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rtt_rx, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_rxrpc_rtt_rx.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_rxrpc_rtt_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1136, ptr noundef nonnull @.str.1) #6
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %31 = tail call i32 @llvm.read_register.i32(metadata !8) #6
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_get_rto_backoff(ptr noundef %peer, i1 noundef zeroext %retrans) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %backoff1 = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 25
  %0 = ptrtoint ptr %backoff1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %backoff1, align 8
  %rto_j = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 24
  %2 = ptrtoint ptr %rto_j to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rto_j, align 4
  %conv = zext i32 %3 to i64
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 %conv, %sh_prom
  %mul = shl i64 %shl, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 12001, i64 %mul)
  %cmp = icmp ult i64 %mul, 12001
  %or.cond = select i1 %retrans, i1 %cmp, i1 false
  br i1 %or.cond, label %do.body9, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i8 %1, 1
  %4 = ptrtoint ptr %backoff1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 %add, ptr %backoff1, align 8
  br label %if.end

if.end:                                           ; preds = %do.body9, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl)
  %cmp17 = icmp eq i64 %shl, 0
  %5 = trunc i64 %shl to i32
  %conv21 = select i1 %cmp17, i32 1, i32 %5
  ret i32 %conv21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_peer_init_rtt(ptr nocapture noundef writeonly %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rto_j = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 24
  %0 = ptrtoint ptr %rto_j to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 100, ptr %rto_j, align 4
  %call = tail call i32 @jiffies_to_usecs(i32 noundef 100) #6
  %mdev_us = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 21
  %1 = ptrtoint ptr %mdev_us to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %mdev_us, align 8
  %backoff = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 25
  %2 = ptrtoint ptr %backoff to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %backoff, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rtt_rx(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7}
!llvm.named.register.sp = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/trace/events/rxrpc.h", i32 1100, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{!"sp"}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 1237786, i64 1237813, i64 1237835, i64 1237863}
!19 = !{i64 1238194, i64 1238221, i64 1238254, i64 1238275, i64 1238302, i64 1238328}
!20 = !{i64 2148166766, i64 2148166771, i64 2148166784, i64 2148166828, i64 2148166862, i64 2148166883}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2157811775}
!23 = !{i64 2157812064}
!24 = !{i64 2149400508}
!25 = !{i64 2149401544}
