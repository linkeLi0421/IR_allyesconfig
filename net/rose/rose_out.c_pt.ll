; ModuleID = '/llk/IR_all_yes/net/rose/rose_out.c_pt.bc'
source_filename = "../net/rose/rose_out.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rose_sock = type { %struct.sock, %struct.rose_address, %struct.rose_address, %struct.ax25_address, %struct.ax25_address, i8, i8, [6 x %struct.ax25_address], [6 x %struct.ax25_address], ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, i32, %struct.sk_buff_head, %struct.rose_facilities_struct, %struct.timer_list, %struct.timer_list }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rose_address = type { [5 x i8] }
%struct.ax25_address = type { [7 x i8] }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.rose_facilities_struct = type { %struct.rose_address, %struct.rose_address, %struct.ax25_address, %struct.ax25_address, i8, i8, [6 x %struct.ax25_address], [6 x %struct.ax25_address], i32, %struct.rose_address, %struct.ax25_address }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }

@sysctl_rose_window_size = external dso_local local_unnamed_addr global i32, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_kick(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %condition = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 14
  %2 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %condition, align 1
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %5 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i = icmp eq ptr %6, %sk_write_queue
  %tobool5.not85 = icmp eq ptr %6, null
  %tobool5.not = or i1 %cmp.i, %tobool5.not85
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %ack_queue = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 28
  %7 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ack_queue, align 4
  %cmp.i82 = icmp eq ptr %8, %ack_queue
  %cmp986 = icmp eq ptr %8, null
  %cmp9 = or i1 %cmp.i82, %cmp986
  %va = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 21
  %vs = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 19
  %cond.in.in = select i1 %cmp9, ptr %va, ptr %vs
  %9 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %9)
  %cond.in81 = load i16, ptr %cond.in.in, align 2
  %10 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %va, align 2
  %conv15 = zext i16 %11 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_rose_window_size to i32))
  %12 = load i32, ptr @sysctl_rose_window_size, align 4
  %add = add i32 %12, %conv15
  %rem = srem i32 %add, 8
  %13 = trunc i32 %rem to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %cond.in81, i16 %13)
  %cmp19 = icmp eq i16 %cond.in81, %13
  br i1 %cmp19, label %if.end7.cleanup_crit_edge, label %if.end22

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end22:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %vs to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %cond.in81, ptr %vs, align 2
  %call25 = tail call ptr @skb_dequeue(ptr noundef %sk_write_queue) #2
  %vr.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 20
  %neighbour.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end22
  %skb.0 = phi ptr [ %call25, %if.end22 ], [ %call45, %land.rhs.do.body_crit_edge ]
  %call26 = tail call ptr @skb_clone(ptr noundef %skb.0, i32 noundef 2592) #2
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %if.then29, label %rose_send_iframe.exit

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @skb_queue_head(ptr noundef %sk_write_queue, ptr noundef %skb.0) #2
  br label %do.end

rose_send_iframe.exit:                            ; preds = %do.body
  tail call void @skb_set_owner_w(ptr noundef nonnull %call26, ptr noundef %sk) #2
  %15 = ptrtoint ptr %vr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vr.i, align 8
  %conv.i = trunc i16 %16 to i8
  %shl.i = shl i8 %conv.i, 5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %18, i32 2
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %or.i = or i8 %shl.i, %20
  store i8 %or.i, ptr %arrayidx.i, align 1
  %21 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vs, align 2
  %conv3.i = trunc i16 %22 to i8
  %shl4.i = shl i8 %conv3.i, 1
  %and5.i = and i8 %shl4.i, 14
  %23 = load ptr, ptr %data.i, align 4
  %arrayidx7.i = getelementptr i8, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx7.i, align 1
  %or9.i = or i8 %and5.i, %25
  store i8 %or9.i, ptr %arrayidx7.i, align 1
  tail call void @rose_start_idletimer(ptr noundef %sk) #2
  %26 = ptrtoint ptr %neighbour.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %neighbour.i, align 8
  tail call void @rose_transmit_link(ptr noundef nonnull %call26, ptr noundef %27) #2
  %28 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vs, align 2
  %30 = add i16 %29, 1
  %31 = and i16 %30, 7
  store i16 %31, ptr %vs, align 2
  tail call void @skb_queue_tail(ptr noundef %ack_queue, ptr noundef %skb.0) #2
  %32 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vs, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %13)
  %cmp42.not = icmp eq i16 %33, %13
  br i1 %cmp42.not, label %rose_send_iframe.exit.do.end_crit_edge, label %land.rhs

rose_send_iframe.exit.do.end_crit_edge:           ; preds = %rose_send_iframe.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

land.rhs:                                         ; preds = %rose_send_iframe.exit
  %call45 = tail call ptr @skb_dequeue(ptr noundef %sk_write_queue) #2
  %cmp46.not = icmp eq ptr %call45, null
  br i1 %cmp46.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %rose_send_iframe.exit.do.end_crit_edge, %if.then29
  %34 = ptrtoint ptr %vr.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vr.i, align 8
  %vl = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 22
  %36 = ptrtoint ptr %vl to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %vl, align 4
  %37 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %condition, align 1
  %39 = and i8 %38, -2
  store i8 %39, ptr %condition, align 1
  tail call void @rose_stop_timer(ptr noundef %sk) #2
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_stop_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_enquiry_response(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %condition = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 14
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %condition, align 1
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %. = select i1 %tobool.not, i32 1, i32 5
  tail call void @rose_write_internal(ptr noundef %sk, i32 noundef %.) #2
  %vr = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 20
  %3 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vr, align 8
  %vl = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 22
  %5 = ptrtoint ptr %vl to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %vl, align 4
  %6 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %condition, align 1
  %8 = and i8 %7, -2
  store i8 %8, ptr %condition, align 1
  tail call void @rose_stop_timer(ptr noundef %sk) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_write_internal(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_start_idletimer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_transmit_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
