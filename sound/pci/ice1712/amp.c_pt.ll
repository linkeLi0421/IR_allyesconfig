; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/amp.c_pt.bc'
source_filename = "../sound/pci/ice1712/amp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.snd_ice1712 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], ptr, ptr, ptr, i32, i32, [6 x i32], [6 x i32], i32, i32, ptr, [2 x ptr], %struct.spinlock, ptr, %struct.snd_ice1712_eeprom, ptr, [20 x i32], i16, i32, i32, i32, %struct.mutex, [4 x ptr], ptr, i32, ptr, %struct.snd_ice1712_spdif, %struct.mutex, ptr, ptr, i32, %struct.ice1712_gpio, %struct.mutex, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i8, i32, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_ice1712_eeprom = type { i32, i8, i8, [32 x i8], i32, i32, i32 }
%struct.snd_ice1712_spdif = type { i8, i8, ptr, %struct.snd_ice1712_spdif_ops }
%struct.snd_ice1712_spdif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ice1712_gpio = type { i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chaintech AV-710\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"av710\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AMP Ltd AUDIO2000\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"amp2000\00", [24 x i8] zeroinitializer }, align 32
@snd_vt1724_amp_cards = dso_local global { [3 x %struct.snd_ice1712_card_info], [56 x i8] } { [3 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 303309847, ptr @.str, ptr @.str.1, ptr null, ptr @snd_vt1724_amp_init, ptr null, ptr @snd_vt1724_amp_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 196611, ptr @.str.2, ptr @.str.3, ptr null, ptr @snd_vt1724_amp_init, ptr null, ptr @snd_vt1724_amp_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 69, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 70, i32 12 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 76, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 77, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"snd_vt1724_amp_cards\00", align 1
@___asan_gen_.17 = private constant [27 x i8] c"../sound/pci/ice1712/amp.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 66, i32 30 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @snd_vt1724_amp_cards], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_amp_cards to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_amp_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %0 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 6, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %1 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_total_adcs, align 4
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %2 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 303309847, i32 %3)
  %cmp = icmp eq i32 %3, 303309847
  br i1 %cmp, label %for.body.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 54, i8 noundef zeroext 0, i8 noundef zeroext 0) #2
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 54, i8 noundef zeroext 2, i8 noundef zeroext 0) #2
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 54, i8 noundef zeroext 4, i8 noundef zeroext 8) #2
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 54, i8 noundef zeroext 6, i8 noundef zeroext 1) #2
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_amp_add_controls(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ac97 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 25
  %0 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac97, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call zeroext i16 @snd_ac97_read(ptr noundef nonnull %1, i16 noundef zeroext 90) #2
  %2 = and i16 %call, 32767
  tail call void @snd_ac97_write_cache(ptr noundef nonnull %1, i16 noundef zeroext 90, i16 noundef zeroext %2) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_vt1724_write_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_write_cache(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @snd_ac97_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/amp.c", i32 69, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/amp.c", i32 70, i32 12}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/amp.c", i32 76, i32 11}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/amp.c", i32 77, i32 12}
!8 = !{ptr @snd_vt1724_amp_cards, !9, !"snd_vt1724_amp_cards", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/amp.c", i32 66, i32 30}
!10 = distinct !{null, !11, !"wm_inits", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/amp.c", i32 28, i32 30}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
