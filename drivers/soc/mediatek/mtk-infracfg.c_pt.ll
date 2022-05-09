; ModuleID = '/llk/IR_all_yes/drivers/soc/mediatek/mtk-infracfg.c_pt.bc'
source_filename = "../drivers/soc/mediatek/mtk-infracfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/soc/mediatek/mtk-infracfg.c\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [39 x i8] c"../drivers/soc/mediatek/mtk-infracfg.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 39, i32 8 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_infracfg_set_bus_protection(ptr noundef %infracfg, i32 noundef %mask, i1 noundef zeroext %reg_update) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !11
  br i1 %reg_update, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %infracfg, i32 noundef 544, i32 noundef %mask, i32 noundef %mask, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @regmap_write(ptr noundef %infracfg, i32 noundef 608, i32 noundef %mask) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = tail call i32 @jiffies_to_usecs(i32 noundef 100) #3
  %conv = zext i32 %call2 to i64
  %call3 = tail call i64 @ktime_get() #3
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %mul.i, %call3
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 41) #3
  %call1464 = call i32 @regmap_read(ptr noundef %infracfg, i32 noundef 552, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1464)
  %tobool15.not65 = icmp eq i32 %call1464, 0
  br i1 %tobool15.not65, label %lor.lhs.false.lr.ph, label %if.end.lor.end_crit_edge

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

lor.lhs.false.lr.ph:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool20.not = icmp eq i32 %call2, 0
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then29.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %and = and i32 %2, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %mask)
  %cmp16 = icmp eq i32 %and, %mask
  br i1 %cmp16, label %lor.lhs.false.lor.rhs_crit_edge, label %if.end19

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.rhs

if.end19:                                         ; preds = %lor.lhs.false
  br i1 %tobool20.not, label %if.end19.if.then29_crit_edge, label %land.lhs.true

if.end19.if.then29_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then29

land.lhs.true:                                    ; preds = %if.end19
  %call21 = call i64 @ktime_get() #3
  call void @__sanitizer_cov_trace_cmp8(i64 %call21, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.then29_crit_edge

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then29

if.then29:                                        ; preds = %land.lhs.true.if.then29_crit_edge, %if.end19.if.then29_crit_edge
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #3
  %call14 = call i32 @regmap_read(ptr noundef %infracfg, i32 noundef 552, ptr noundef nonnull %val) #3
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then29.lor.lhs.false_crit_edge, label %if.then29.lor.end_crit_edge

if.then29.lor.end_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

if.then29.lor.lhs.false_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %call26 = call i32 @regmap_read(ptr noundef %infracfg, i32 noundef 552, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool31.not = icmp eq i32 %call26, 0
  br i1 %tobool31.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and32 = and i32 %4, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and32, i32 %mask)
  %cmp33 = icmp eq i32 %and32, %mask
  %phi.sel = select i1 %cmp33, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then29.lor.end_crit_edge, %if.end.lor.end_crit_edge
  %tobool31.not57 = phi i32 [ %call26, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call1464, %if.end.lor.end_crit_edge ], [ %call14, %if.then29.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i32 %tobool31.not57
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_infracfg_clear_bus_protection(ptr noundef %infracfg, i32 noundef %mask, i1 noundef zeroext %reg_update) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !11
  br i1 %reg_update, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %infracfg, i32 noundef 544, i32 noundef %mask, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @regmap_write(ptr noundef %infracfg, i32 noundef 612, i32 noundef %mask) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = tail call i32 @jiffies_to_usecs(i32 noundef 100) #3
  %conv = zext i32 %call2 to i64
  %call3 = tail call i64 @ktime_get() #3
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %mul.i, %call3
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 71) #3
  %call1459 = call i32 @regmap_read(ptr noundef %infracfg, i32 noundef 552, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1459)
  %tobool15.not60 = icmp eq i32 %call1459, 0
  br i1 %tobool15.not60, label %lor.lhs.false.lr.ph, label %if.end.lor.end_crit_edge

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

lor.lhs.false.lr.ph:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool19.not = icmp eq i32 %call2, 0
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then28.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %and = and i32 %2, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %lor.lhs.false.lor.rhs_crit_edge, label %if.end18

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.rhs

if.end18:                                         ; preds = %lor.lhs.false
  br i1 %tobool19.not, label %if.end18.if.then28_crit_edge, label %land.lhs.true

if.end18.if.then28_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then28

land.lhs.true:                                    ; preds = %if.end18
  %call20 = call i64 @ktime_get() #3
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.then28_crit_edge

land.lhs.true.if.then28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then28

if.then28:                                        ; preds = %land.lhs.true.if.then28_crit_edge, %if.end18.if.then28_crit_edge
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #3
  %call14 = call i32 @regmap_read(ptr noundef %infracfg, i32 noundef 552, ptr noundef nonnull %val) #3
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then28.lor.lhs.false_crit_edge, label %if.then28.lor.end_crit_edge

if.then28.lor.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

if.then28.lor.lhs.false_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %call25 = call i32 @regmap_read(ptr noundef %infracfg, i32 noundef 552, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool30.not = icmp eq i32 %call25, 0
  br i1 %tobool30.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and31 = and i32 %4, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %phi.sel = select i1 %tobool32.not, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then28.lor.end_crit_edge, %if.end.lor.end_crit_edge
  %tobool30.not52 = phi i32 [ %call25, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call1459, %if.end.lor.end_crit_edge ], [ %call14, %if.then28.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i32 %tobool30.not52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/mediatek/mtk-infracfg.c", i32 39, i32 8}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
