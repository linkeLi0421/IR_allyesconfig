; ModuleID = '/llk/IR_all_yes/sound/firewire/dice/dice-mytek.c_pt.bc'
source_filename = "../sound/firewire/dice/dice-mytek.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dice_mytek_spec = type { [2 x [3 x i32]], [2 x [3 x i32]] }
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

@stereo_192_dsd_dac = internal constant { %struct.dice_mytek_spec, [48 x i8] } { %struct.dice_mytek_spec { [2 x [3 x i32]] [[3 x i32] [i32 8, i32 8, i32 8], [3 x i32] zeroinitializer], [2 x [3 x i32]] [[3 x i32] [i32 4, i32 4, i32 4], [3 x i32] zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"stereo_192_dsd_dac\00", align 1
@___asan_gen_.2 = private constant [36 x i8] c"../sound/firewire/dice/dice-mytek.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 15, i32 37 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @stereo_192_dsd_dac], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stereo_192_dsd_dac to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_detect_mytek_formats(ptr nocapture noundef writeonly %dice) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_pcm_chs = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 10
  %0 = call ptr @memcpy(ptr %tx_pcm_chs, ptr @stereo_192_dsd_dac, i32 24)
  %rx_pcm_chs = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 11
  %1 = call ptr @memcpy(ptr %rx_pcm_chs, ptr getelementptr inbounds (%struct.dice_mytek_spec, ptr @stereo_192_dsd_dac, i32 0, i32 1), i32 24)
  %arrayidx = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 12, i32 0
  %2 = call ptr @memset(ptr %arrayidx, i32 0, i32 16)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_pc()

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @stereo_192_dsd_dac, !1, !"stereo_192_dsd_dac", i1 false, i1 false}
!1 = !{!"../sound/firewire/dice/dice-mytek.c", i32 15, i32 37}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
