; ModuleID = '/llk/IR_all_yes/sound/firewire/dice/dice-alesis.c_pt.bc'
source_filename = "../sound/firewire/dice/dice-alesis.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_dice = type { ptr, ptr, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, [2 x [3 x i32]], [2 x [3 x i32]], [2 x i32], [2 x i32], %struct.fw_address_handler, i32, i32, i32, i8, %struct.wait_queue_head, [2 x %struct.fw_iso_resources], [2 x %struct.fw_iso_resources], [2 x %struct.amdtp_stream], [2 x %struct.amdtp_stream], i8, %struct.completion, i32, %struct.amdtp_domain }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }

@alesis_io14_tx_pcm_chs = internal constant { [2 x [3 x i32]], [40 x i8] } { [2 x [3 x i32]] [[3 x i32] [i32 6, i32 6, i32 4], [3 x i32] [i32 8, i32 4, i32 0]], [40 x i8] zeroinitializer }, align 32
@alesis_io26_tx_pcm_chs = internal constant { [2 x [3 x i32]], [40 x i8] } { [2 x [3 x i32]] [[3 x i32] [i32 10, i32 10, i32 4], [3 x i32] [i32 16, i32 4, i32 0]], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"alesis_io14_tx_pcm_chs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 11, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"alesis_io26_tx_pcm_chs\00", align 1
@___asan_gen_.5 = private constant [37 x i8] c"../sound/firewire/dice/dice-alesis.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 17, i32 1 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @alesis_io14_tx_pcm_chs, ptr @alesis_io26_tx_pcm_chs], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alesis_io14_tx_pcm_chs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alesis_io26_tx_pcm_chs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_detect_alesis_formats(ptr noundef %dice) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !13
  %call.i = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 2, i32 noundef 12, ptr noundef nonnull %reg, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.else [
    i32 4, label %if.end.if.then3_crit_edge
    i32 6, label %if.end.if.then3_crit_edge24
  ]

if.end.if.then3_crit_edge24:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %if.end.if.then3_crit_edge24
  %tx_pcm_chs = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 10
  %4 = call ptr @memcpy(ptr %tx_pcm_chs, ptr @alesis_io14_tx_pcm_chs, i32 24)
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %tx_pcm_chs4 = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 10
  %5 = call ptr @memcpy(ptr %tx_pcm_chs4, ptr @alesis_io26_tx_pcm_chs, i32 24)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %rx_pcm_chs = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 11
  %6 = ptrtoint ptr %rx_pcm_chs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %rx_pcm_chs, align 4
  %arrayidx8.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %arrayidx8.1, align 4
  %arrayidx8.2 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %arrayidx8.2, align 4
  %tx_midi_ports = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 12
  %9 = ptrtoint ptr %tx_midi_ports to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %tx_midi_ports, align 8
  %rx_midi_ports = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 13
  %10 = ptrtoint ptr %rx_midi_ports to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %rx_midi_ports, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @snd_dice_detect_alesis_mastercontrol_formats(ptr nocapture noundef writeonly %dice) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_pcm_chs = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 10
  %0 = ptrtoint ptr %tx_pcm_chs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %tx_pcm_chs, align 8
  %arrayidx3 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12, ptr %arrayidx3, align 4
  %arrayidx7 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %arrayidx7, align 4
  %arrayidx10 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %arrayidx10, align 4
  %arrayidx13 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %arrayidx13, align 8
  %arrayidx16 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 1, i32 2
  %5 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx16, align 4
  %rx_pcm_chs = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 11
  %6 = ptrtoint ptr %rx_pcm_chs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %rx_pcm_chs, align 4
  %arrayidx21 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 1, i32 0
  %7 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx21, align 4
  %arrayidx18.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %arrayidx18.1, align 4
  %arrayidx21.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx21.1, align 4
  %arrayidx18.2 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %arrayidx18.2, align 4
  %arrayidx21.2 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 1, i32 2
  %11 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx21.2, align 4
  %arrayidx25 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 12, i32 0
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %arrayidx25, align 4
  %arrayidx26 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 13, i32 0
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %arrayidx26, align 4
  %arrayidx25.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %arrayidx25.1, align 4
  %arrayidx26.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %arrayidx26.1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_transaction_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @alesis_io14_tx_pcm_chs, !1, !"alesis_io14_tx_pcm_chs", i1 false, i1 false}
!1 = !{!"../sound/firewire/dice/dice-alesis.c", i32 11, i32 1}
!2 = !{ptr @alesis_io26_tx_pcm_chs, !3, !"alesis_io26_tx_pcm_chs", i1 false, i1 false}
!3 = !{!"../sound/firewire/dice/dice-alesis.c", i32 17, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
