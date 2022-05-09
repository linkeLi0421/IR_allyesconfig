; ModuleID = '/llk/IR_all_yes/sound/firewire/bebob/bebob_terratec.c_pt.bc'
source_filename = "../sound/firewire/bebob/bebob_terratec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_bebob_clock_spec = type { i32, ptr, ptr, ptr }
%struct.snd_bebob_rate_spec = type { ptr, ptr }
%struct.snd_bebob_spec = type { ptr, ptr, ptr }
%struct.snd_bebob = type { ptr, ptr, i32, %struct.mutex, %struct.spinlock, ptr, i32, i32, i32, %struct.amdtp_stream, %struct.amdtp_stream, %struct.cmp_connection, %struct.cmp_connection, i32, [7 x %struct.snd_bebob_stream_formation], [7 x %struct.snd_bebob_stream_formation], i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.snd_bebob_stream_formation = type { i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }

@phase88_rack_clk = internal constant { %struct.snd_bebob_clock_spec, [16 x i8] } { %struct.snd_bebob_clock_spec { i32 3, ptr null, ptr @phase88_rack_clk_src_types, ptr @phase88_rack_clk_src_get }, [16 x i8] zeroinitializer }, align 32
@phase_series_rate_spec = internal constant { %struct.snd_bebob_rate_spec, [24 x i8] } { %struct.snd_bebob_rate_spec { ptr @snd_bebob_stream_get_rate, ptr @snd_bebob_stream_set_rate }, [24 x i8] zeroinitializer }, align 32
@phase88_rack_spec = dso_local constant { %struct.snd_bebob_spec, [20 x i8] } { %struct.snd_bebob_spec { ptr @phase88_rack_clk, ptr @phase_series_rate_spec, ptr null }, [20 x i8] zeroinitializer }, align 32
@phase88_rack_clk_src_types = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 1], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"phase88_rack_clk\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 44, i32 42 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"phase_series_rate_spec\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 38, i32 41 }
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"phase88_rack_spec\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 49, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"phase88_rack_clk_src_types\00", align 1
@___asan_gen_.11 = private constant [41 x i8] c"../sound/firewire/bebob/bebob_terratec.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 10, i32 40 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @phase88_rack_clk, ptr @phase_series_rate_spec, ptr @phase88_rack_spec, ptr @phase88_rack_clk_src_types], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phase88_rack_clk to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phase_series_rate_spec to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phase88_rack_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phase88_rack_clk_src_types to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phase88_rack_clk_src_get(ptr nocapture noundef readonly %bebob, ptr nocapture noundef writeonly %id) #0 align 64 {
entry:
  %enable_ext = alloca i32, align 4
  %enable_word = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable_ext) #3
  %0 = ptrtoint ptr %enable_ext to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %enable_ext, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable_word) #3
  %1 = ptrtoint ptr %enable_word to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %enable_word, align 4, !annotation !17
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %call = call i32 @avc_audio_get_selector(ptr noundef %3, i32 noundef 0, i32 noundef 9, ptr noundef nonnull %enable_ext) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unit, align 4
  %call2 = call i32 @avc_audio_get_selector(ptr noundef %5, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %enable_word) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.end_crit_edge, label %if.end5

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %enable_ext to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_ext, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.end5.end.sink.split_crit_edge, label %if.else

if.end5.end.sink.split_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %end.sink.split

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %enable_word to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable_word, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp eq i32 %9, 0
  %. = select i1 %cmp8, i32 1, i32 2
  br label %end.sink.split

end.sink.split:                                   ; preds = %if.else, %if.end5.end.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.end5.end.sink.split_crit_edge ], [ %., %if.else ]
  %10 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %id, align 4
  br label %end

end:                                              ; preds = %end.sink.split, %if.end.end_crit_edge, %entry.end_crit_edge
  %err.0 = phi i32 [ %call, %entry.end_crit_edge ], [ %call2, %if.end.end_crit_edge ], [ %call2, %end.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable_word) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable_ext) #3
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_audio_get_selector(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_stream_get_rate(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_stream_set_rate(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @phase88_rack_spec, !1, !"phase88_rack_spec", i1 false, i1 false}
!1 = !{!"../sound/firewire/bebob/bebob_terratec.c", i32 49, i32 29}
!2 = !{ptr @phase88_rack_clk, !3, !"phase88_rack_clk", i1 false, i1 false}
!3 = !{!"../sound/firewire/bebob/bebob_terratec.c", i32 44, i32 42}
!4 = !{ptr @phase88_rack_clk_src_types, !5, !"phase88_rack_clk_src_types", i1 false, i1 false}
!5 = !{!"../sound/firewire/bebob/bebob_terratec.c", i32 10, i32 40}
!6 = !{ptr @phase_series_rate_spec, !7, !"phase_series_rate_spec", i1 false, i1 false}
!7 = !{!"../sound/firewire/bebob/bebob_terratec.c", i32 38, i32 41}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
