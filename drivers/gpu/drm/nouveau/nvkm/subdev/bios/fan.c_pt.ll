; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/fan.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/fan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_therm_fan = type { i32, i32, i8, i8, i16, i16, i32, [10 x %struct.nvbios_therm_trip_point], i8, i8, i8 }
%struct.nvbios_therm_trip_point = type { i32, i32, i32 }

@switch.table.nvbios_fan_parse = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 2], [20 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/fan.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [30 x i8] c"switch.table.nvbios_fan_parse\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @switch.table.nvbios_fan_parse], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvbios_fan_parse to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_fan_parse(ptr noundef %bios, ptr nocapture noundef writeonly %fan) local_unnamed_addr #0 align 64 {
entry:
  %bit_P.i.i = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_P.i.i) #3
  %0 = getelementptr inbounds %struct.bit_entry, ptr %bit_P.i.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.bit_entry, ptr %bit_P.i.i, i32 0, i32 3
  %2 = call ptr @memset(ptr %bit_P.i.i, i32 255, i32 6)
  %call.i.i = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 80, ptr noundef nonnull %bit_P.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.nvbios_fan_table.exit.thread.i_crit_edge

entry.nvbios_fan_table.exit.thread.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_fan_table.exit.thread.i

if.then.i.i:                                      ; preds = %entry
  %3 = getelementptr inbounds %struct.bit_entry, ptr %bit_P.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i.i = icmp eq i8 %5, 2
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then.i.i.nvbios_fan_table.exit.thread.i_crit_edge

if.then.i.i.nvbios_fan_table.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_fan_table.exit.thread.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 91, i16 %7)
  %cmp3.i.i = icmp ugt i16 %7, 91
  br i1 %cmp3.i.i, label %if.end.i.i, label %land.lhs.true.i.i.nvbios_fan_table.exit.thread.i_crit_edge

land.lhs.true.i.i.nvbios_fan_table.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_fan_table.exit.thread.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  %conv6.i.i = zext i16 %9 to i32
  %add.i.i = add nuw nsw i32 %conv6.i.i, 88
  %call7.i.i = call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end.i.i.nvbios_fan_table.exit.thread.i_crit_edge, label %if.then9.i.i

if.end.i.i.nvbios_fan_table.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_fan_table.exit.thread.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  %call11.i.i = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %call7.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %call11.i.i)
  %cond.i.i = icmp eq i8 %call11.i.i, 16
  br i1 %cond.i.i, label %land.lhs.true.i, label %if.then9.i.i.nvbios_fan_table.exit.thread.i_crit_edge

if.then9.i.i.nvbios_fan_table.exit.thread.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_fan_table.exit.thread.i

nvbios_fan_table.exit.thread.i:                   ; preds = %if.then9.i.i.nvbios_fan_table.exit.thread.i_crit_edge, %if.end.i.i.nvbios_fan_table.exit.thread.i_crit_edge, %land.lhs.true.i.i.nvbios_fan_table.exit.thread.i_crit_edge, %if.then.i.i.nvbios_fan_table.exit.thread.i_crit_edge, %entry.nvbios_fan_table.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_P.i.i) #3
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then9.i.i
  %add13.i.i = add i32 %call7.i.i, 1
  %call14.i.i = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add13.i.i) #3
  %add15.i.i = add i32 %call7.i.i, 2
  %call16.i.i = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add15.i.i) #3
  %add17.i.i = add i32 %call7.i.i, 3
  %call18.i.i = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add17.i.i) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_P.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call18.i.i)
  %cmp.not.i = icmp eq i8 %call18.i.i, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end_crit_edge, label %nvbios_fan_entry.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

nvbios_fan_entry.exit:                            ; preds = %land.lhs.true.i
  %conv2.i = zext i8 %call14.i.i to i32
  %add.i = add i32 %call7.i.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not = icmp eq i32 %add.i, 0
  br i1 %tobool.not, label %nvbios_fan_entry.exit.if.end_crit_edge, label %if.then

nvbios_fan_entry.exit.if.end_crit_edge:           ; preds = %nvbios_fan_entry.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %nvbios_fan_entry.exit
  %call1 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add.i) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call1)
  %10 = icmp ult i8 %call1, 3
  br i1 %10, label %switch.lookup, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %11 = sext i8 %call1 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.nvbios_fan_parse, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then.sw.epilog_crit_edge ]
  %13 = ptrtoint ptr %fan to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %fan, align 4
  %fan_mode = getelementptr inbounds %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 6
  %14 = ptrtoint ptr %fan_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %fan_mode, align 4
  %add6 = add i32 %add.i, 2
  %call7 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add6) #3
  %min_duty = getelementptr inbounds %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 2
  %15 = ptrtoint ptr %min_duty to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call7, ptr %min_duty, align 4
  %add8 = add i32 %add.i, 3
  %call9 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add8) #3
  %max_duty = getelementptr inbounds %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 3
  %16 = ptrtoint ptr %max_duty to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call9, ptr %max_duty, align 1
  %add10 = add i32 %add.i, 11
  %call11 = call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add10) #3
  %and = and i32 %call11, 16777215
  %pwm_freq = getelementptr inbounds %struct.nvbios_therm_fan, ptr %fan, i32 0, i32 1
  %17 = ptrtoint ptr %pwm_freq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %pwm_freq, align 4
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %nvbios_fan_entry.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %nvbios_fan_table.exit.thread.i
  %retval.0.i29 = phi i32 [ %add.i, %sw.epilog ], [ 0, %nvbios_fan_entry.exit.if.end_crit_edge ], [ 0, %land.lhs.true.i.if.end_crit_edge ], [ 0, %nvbios_fan_table.exit.thread.i ]
  ret i32 %retval.0.i29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
