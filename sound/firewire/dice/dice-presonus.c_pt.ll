; ModuleID = '/llk/IR_all_yes/sound/firewire/dice/dice-presonus.c_pt.bc'
source_filename = "../sound/firewire/dice/dice-presonus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.94 = type { i32, ptr }
%struct.dice_presonus_spec = type { [2 x [3 x i32]], [2 x [3 x i32]], i8 }
%struct.fw_csr_iterator = type { ptr, ptr }
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
%struct.fw_unit = type { %struct.device, ptr, %struct.fw_attribute_group }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.fw_attribute_group = type { [2 x ptr], %struct.attribute_group, [13 x ptr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }

@snd_dice_detect_presonus_formats.entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@snd_dice_detect_presonus_formats.entries = internal constant { [1 x %struct.anon.94], [24 x i8] } { [1 x %struct.anon.94] [%struct.anon.94 { i32 8, ptr @dice_presonus_firesutio }], [24 x i8] zeroinitializer }, align 32
@dice_presonus_firesutio = internal constant { %struct.dice_presonus_spec, [44 x i8] } { %struct.dice_presonus_spec { [2 x [3 x i32]] [[3 x i32] [i32 16, i32 16, i32 0], [3 x i32] [i32 10, i32 2, i32 0]], [2 x [3 x i32]] [[3 x i32] [i32 16, i32 16, i32 0], [3 x i32] [i32 10, i32 2, i32 0]], i8 1 }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 27, i32 5 }
@___asan_gen_.4 = private unnamed_addr constant [8 x i8] c"entries\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 27, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"dice_presonus_firesutio\00", align 1
@___asan_gen_.8 = private constant [39 x i8] c"../sound/firewire/dice/dice-presonus.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 16, i32 40 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @snd_dice_detect_presonus_formats.entry, ptr @snd_dice_detect_presonus_formats.entries, ptr @dice_presonus_firesutio], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dice_detect_presonus_formats.entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dice_detect_presonus_formats.entries to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dice_presonus_firesutio to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_detect_presonus_formats(ptr nocapture noundef %dice) local_unnamed_addr #0 align 64 {
entry:
  %it = alloca %struct.fw_csr_iterator, align 4
  %key = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %it) #3
  %0 = ptrtoint ptr %it to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %it, align 4, !annotation !15
  %1 = getelementptr inbounds %struct.fw_csr_iterator, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key) #3
  %3 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %key, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !15
  %unit = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  %5 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unit, align 4
  %directory = getelementptr inbounds %struct.fw_unit, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %directory to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %directory, align 8
  call void @fw_csr_iterator_init(ptr noundef nonnull %it, ptr noundef %8) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %call = call i32 @fw_csr_iterator_next(ptr noundef nonnull %it, ptr noundef nonnull %key, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end.thread, label %while.body

while.end.thread:                                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  store ptr @snd_dice_detect_presonus_formats.entries, ptr @snd_dice_detect_presonus_formats.entry, align 4
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %9 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key, align 4
  %cmp = icmp eq i32 %10, 23
  br i1 %cmp, label %while.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

while.end:                                        ; preds = %while.body
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %phi.cmp.not = icmp eq i32 %12, 8
  store ptr @snd_dice_detect_presonus_formats.entries, ptr @snd_dice_detect_presonus_formats.entry, align 4
  br i1 %phi.cmp.not, label %if.end8, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %while.end
  %tx_pcm_chs = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 10
  %13 = load ptr, ptr @snd_dice_detect_presonus_formats.entry, align 4
  %spec = getelementptr inbounds %struct.anon.94, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spec, align 4
  %16 = call ptr @memcpy(ptr %tx_pcm_chs, ptr %15, i32 24)
  %rx_pcm_chs = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 11
  %17 = load ptr, ptr %spec, align 4
  %rx_pcm_chs13 = getelementptr inbounds %struct.dice_presonus_spec, ptr %17, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %rx_pcm_chs, ptr %rx_pcm_chs13, i32 24)
  %19 = load ptr, ptr %spec, align 4
  %has_midi = getelementptr inbounds %struct.dice_presonus_spec, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %has_midi to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %has_midi, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool16.not = icmp eq i8 %21, 0
  br i1 %tobool16.not, label %if.end8.cleanup_crit_edge, label %if.then17

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %tx_midi_ports = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 12
  %22 = ptrtoint ptr %tx_midi_ports to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %tx_midi_ports, align 8
  %rx_midi_ports = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 13
  %23 = ptrtoint ptr %rx_midi_ports to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %rx_midi_ports, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end8.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.end.thread
  %retval.0 = phi i32 [ -19, %while.end.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end8.cleanup_crit_edge ], [ -19, %while.end.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %it) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_csr_iterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_csr_iterator_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @snd_dice_detect_presonus_formats.entry, !1, !"entry", i1 false, i1 false}
!1 = !{!"../sound/firewire/dice/dice-presonus.c", i32 27, i32 5}
!2 = !{ptr @snd_dice_detect_presonus_formats.entries, !3, !"entries", i1 false, i1 false}
!3 = !{!"../sound/firewire/dice/dice-presonus.c", i32 27, i32 12}
!4 = !{ptr @dice_presonus_firesutio, !5, !"dice_presonus_firesutio", i1 false, i1 false}
!5 = !{!"../sound/firewire/dice/dice-presonus.c", i32 16, i32 40}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 2}
