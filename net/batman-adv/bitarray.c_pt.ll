; ModuleID = '/llk/IR_all_yes/net/batman-adv/bitarray.c_pt.bc'
source_filename = "../net/batman-adv/bitarray.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.batadv_priv_bla = type { %struct.atomic_t, ptr, ptr, [6 x i8], i32, %struct.atomic_t, [16 x %struct.batadv_bcast_duplist_entry], i32, %struct.spinlock, %struct.batadv_bla_claim_dst, %struct.delayed_work }
%struct.batadv_bcast_duplist_entry = type { [6 x i8], i32, i32 }
%struct.batadv_bla_claim_dst = type { [3 x i8], i8, i16 }
%struct.batadv_priv_gw = type { %struct.hlist_head, %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.batadv_priv_tt = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, ptr, ptr, %struct.hlist_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i16, %struct.spinlock, %struct.spinlock, %struct.delayed_work }
%struct.batadv_priv_tvlv = type { %struct.hlist_head, %struct.hlist_head, %struct.spinlock, %struct.spinlock }
%struct.batadv_priv_dat = type { i16, ptr, %struct.delayed_work }
%struct.batadv_priv_mcast = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.batadv_mcast_mla_flags, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.delayed_work }
%struct.batadv_mcast_mla_flags = type { %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state, i8, i8 }
%struct.batadv_mcast_querier_state = type { i8 }
%struct.atomic_t = type { i32 }
%struct.batadv_priv_nc = type { %struct.delayed_work, i8, i32, i32, i32, i32, ptr, ptr }
%struct.batadv_priv_bat_v = type { ptr, i32, %struct.atomic_t, %struct.mutex, %struct.delayed_work }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"We missed a lot of packets (%i) !\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Other host probably restarted!\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 63, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [29 x i8] c"../net/batman-adv/bitarray.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 81, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_bit_get_packet(ptr noundef %priv, ptr noundef %seq_bits, i32 noundef %seq_num_diff, i32 noundef %set_mark) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %seq_num_diff, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %0)
  %1 = icmp ult i32 %0, 64
  br i1 %1, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_mark)
  %tobool.not = icmp eq i32 %set_mark, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %sub = sub nsw i32 0, %seq_num_diff
  br label %cleanup.sink.split

if.end3:                                          ; preds = %entry
  %2 = add i32 %seq_num_diff, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %2)
  %3 = icmp ult i32 %2, 63
  br i1 %3, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end3
  tail call void @__bitmap_shift_left(ptr noundef %seq_bits, ptr noundef %seq_bits, i32 noundef %seq_num_diff, i32 noundef 64) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_mark)
  %tobool8.not = icmp eq i32 %set_mark, 0
  br i1 %tobool8.not, label %if.then7.cleanup_crit_edge, label %if.then7.cleanup.sink.split_crit_edge

if.then7.cleanup.sink.split_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %4 = add i32 %seq_num_diff, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 65472, i32 %4)
  %5 = icmp ult i32 %4, 65472
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #2
  %6 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %5, label %do.body, label %do.body25

do.body:                                          ; preds = %if.end11
  br i1 %tobool16.not, label %do.body.if.end20_crit_edge, label %if.then17

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end20

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  %call19 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %priv, ptr noundef nonnull @.str, i32 noundef %2) #2
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %do.body.if.end20_crit_edge
  %8 = ptrtoint ptr %seq_bits to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %seq_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_mark)
  %tobool21.not = icmp eq i32 %set_mark, 0
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.end20.cleanup.sink.split_crit_edge

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.body25:                                        ; preds = %if.end11
  br i1 %tobool16.not, label %do.body25.if.end33_crit_edge, label %if.then31

do.body25.if.end33_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end33

if.then31:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #4
  %call32 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %priv, ptr noundef nonnull @.str.1) #2
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %do.body25.if.end33_crit_edge
  %9 = ptrtoint ptr %seq_bits to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %seq_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_mark)
  %tobool36.not = icmp eq i32 %set_mark, 0
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %if.end33.cleanup.sink.split_crit_edge

if.end33.cleanup.sink.split_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end33.cleanup.sink.split_crit_edge, %if.end20.cleanup.sink.split_crit_edge, %if.then7.cleanup.sink.split_crit_edge, %if.then2
  %.sink = phi i32 [ %sub, %if.then2 ], [ 0, %if.then7.cleanup.sink.split_crit_edge ], [ 0, %if.end20.cleanup.sink.split_crit_edge ], [ 0, %if.end33.cleanup.sink.split_crit_edge ]
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %seq_bits) #2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end33.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %10 = xor i1 %1, true
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_shift_left(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/batman-adv/bitarray.c", i32 63, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/batman-adv/bitarray.c", i32 81, i32 2}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
