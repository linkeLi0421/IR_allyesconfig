; ModuleID = '/llk/IR_all_yes/net/sctp/primitive.c_pt.bc'
source_filename = "../net/sctp/primitive.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.170, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.106 }
%union.anon.106 = type { [4 x i32] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.170 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.sctp_stream = type { %struct.anon.171, %struct.anon.176, i16, i16, ptr, %union.anon.178, ptr }
%struct.anon.171 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.172, i32, ptr, i8 }
%union.anon.172 = type { i32 }
%struct.anon.176 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.177, i32, i32, i32, i8, i8 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { %struct.anon.180 }
%struct.anon.180 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.92, i32, %struct.spinlock }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.166 }
%union.anon.166 = type { ptr, [124 x i8] }
%struct.callback_head = type { ptr, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_primitive_ASSOCIATE(ptr noundef %net, ptr noundef %asoc, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %entry.cond.end6_crit_edge, label %cond.true3

entry.cond.end6_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end6

cond.true3:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %state1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 6
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  %ep4 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %2 = ptrtoint ptr %ep4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep4, align 4
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true3, %entry.cond.end6_crit_edge
  %cond15 = phi i32 [ %1, %cond.true3 ], [ 0, %entry.cond.end6_crit_edge ]
  %cond7 = phi ptr [ %3, %cond.true3 ], [ null, %entry.cond.end6_crit_edge ]
  %call9 = tail call i32 @sctp_do_sm(ptr noundef %net, i32 noundef 4, [1 x i32] zeroinitializer, i32 noundef %cond15, ptr noundef %cond7, ptr noundef %asoc, ptr noundef %arg, i32 noundef 3264) #2
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_do_sm(ptr noundef, i32 noundef, [1 x i32], i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_primitive_SHUTDOWN(ptr noundef %net, ptr noundef %asoc, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %entry.cond.end6_crit_edge, label %cond.true3

entry.cond.end6_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end6

cond.true3:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %state1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 6
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  %ep4 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %2 = ptrtoint ptr %ep4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep4, align 4
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true3, %entry.cond.end6_crit_edge
  %cond15 = phi i32 [ %1, %cond.true3 ], [ 0, %entry.cond.end6_crit_edge ]
  %cond7 = phi ptr [ %3, %cond.true3 ], [ null, %entry.cond.end6_crit_edge ]
  %call9 = tail call i32 @sctp_do_sm(ptr noundef %net, i32 noundef 4, [1 x i32] [i32 1], i32 noundef %cond15, ptr noundef %cond7, ptr noundef %asoc, ptr noundef %arg, i32 noundef 3264) #2
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_primitive_ABORT(ptr noundef %net, ptr noundef %asoc, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %entry.cond.end6_crit_edge, label %cond.true3

entry.cond.end6_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end6

cond.true3:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %state1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 6
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  %ep4 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %2 = ptrtoint ptr %ep4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep4, align 4
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true3, %entry.cond.end6_crit_edge
  %cond15 = phi i32 [ %1, %cond.true3 ], [ 0, %entry.cond.end6_crit_edge ]
  %cond7 = phi ptr [ %3, %cond.true3 ], [ null, %entry.cond.end6_crit_edge ]
  %call9 = tail call i32 @sctp_do_sm(ptr noundef %net, i32 noundef 4, [1 x i32] [i32 2], i32 noundef %cond15, ptr noundef %cond7, ptr noundef %asoc, ptr noundef %arg, i32 noundef 3264) #2
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_primitive_SEND(ptr noundef %net, ptr noundef %asoc, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %entry.cond.end6_crit_edge, label %cond.true3

entry.cond.end6_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end6

cond.true3:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %state1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 6
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  %ep4 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %2 = ptrtoint ptr %ep4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep4, align 4
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true3, %entry.cond.end6_crit_edge
  %cond15 = phi i32 [ %1, %cond.true3 ], [ 0, %entry.cond.end6_crit_edge ]
  %cond7 = phi ptr [ %3, %cond.true3 ], [ null, %entry.cond.end6_crit_edge ]
  %call9 = tail call i32 @sctp_do_sm(ptr noundef %net, i32 noundef 4, [1 x i32] [i32 3], i32 noundef %cond15, ptr noundef %cond7, ptr noundef %asoc, ptr noundef %arg, i32 noundef 3264) #2
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_primitive_REQUESTHEARTBEAT(ptr noundef %net, ptr noundef %asoc, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %entry.cond.end6_crit_edge, label %cond.true3

entry.cond.end6_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end6

cond.true3:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %state1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 6
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  %ep4 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %2 = ptrtoint ptr %ep4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep4, align 4
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true3, %entry.cond.end6_crit_edge
  %cond15 = phi i32 [ %1, %cond.true3 ], [ 0, %entry.cond.end6_crit_edge ]
  %cond7 = phi ptr [ %3, %cond.true3 ], [ null, %entry.cond.end6_crit_edge ]
  %call9 = tail call i32 @sctp_do_sm(ptr noundef %net, i32 noundef 4, [1 x i32] [i32 4], i32 noundef %cond15, ptr noundef %cond7, ptr noundef %asoc, ptr noundef %arg, i32 noundef 3264) #2
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_primitive_ASCONF(ptr noundef %net, ptr noundef %asoc, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %entry.cond.end6_crit_edge, label %cond.true3

entry.cond.end6_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end6

cond.true3:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %state1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 6
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  %ep4 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %2 = ptrtoint ptr %ep4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep4, align 4
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true3, %entry.cond.end6_crit_edge
  %cond15 = phi i32 [ %1, %cond.true3 ], [ 0, %entry.cond.end6_crit_edge ]
  %cond7 = phi ptr [ %3, %cond.true3 ], [ null, %entry.cond.end6_crit_edge ]
  %call9 = tail call i32 @sctp_do_sm(ptr noundef %net, i32 noundef 4, [1 x i32] [i32 5], i32 noundef %cond15, ptr noundef %cond7, ptr noundef %asoc, ptr noundef %arg, i32 noundef 3264) #2
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_primitive_RECONF(ptr noundef %net, ptr noundef %asoc, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %entry.cond.end6_crit_edge, label %cond.true3

entry.cond.end6_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end6

cond.true3:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %state1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 6
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  %ep4 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %2 = ptrtoint ptr %ep4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep4, align 4
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true3, %entry.cond.end6_crit_edge
  %cond15 = phi i32 [ %1, %cond.true3 ], [ 0, %entry.cond.end6_crit_edge ]
  %cond7 = phi ptr [ %3, %cond.true3 ], [ null, %entry.cond.end6_crit_edge ]
  %call9 = tail call i32 @sctp_do_sm(ptr noundef %net, i32 noundef 4, [1 x i32] [i32 6], i32 noundef %cond15, ptr noundef %cond7, ptr noundef %asoc, ptr noundef %arg, i32 noundef 3264) #2
  ret i32 %call9
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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
