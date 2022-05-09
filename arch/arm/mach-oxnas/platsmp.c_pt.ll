; ModuleID = '/llk/IR_all_yes/arch/arm/mach-oxnas/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-oxnas/platsmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"oxsemi,ox820-smp\00", [47 x i8] zeroinitializer }, align 32
@ox820_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @ox820_smp_prepare_cpus, ptr null, ptr @ox820_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_ox820_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @ox820_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm,arm11mp-scu\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm,arm11mp-gic\00", [16 x i8] zeroinitializer }, align 32
@gic_cpu_ctrl = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"oxsemi,ox820-sys-ctrl\00", [42 x i8] zeroinitializer }, align 32
@cpu_ctrl = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 96, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 65, i32 43 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 72, i32 43 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"gic_cpu_ctrl\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 21, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 78, i32 43 }
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"cpu_ctrl\00", align 1
@___asan_gen_.20 = private constant [33 x i8] c"../arch/arm/mach-oxnas/platsmp.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 20, i32 22 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__cpu_method_of_table_ox820_smp, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gic_cpu_ctrl, ptr @.str.3, ptr @cpu_ctrl], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_cpu_ctrl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_ctrl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ox820_smp_prepare_cpus(i32 noundef %max_cpus) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #3
  %call1 = tail call ptr @of_iomap(ptr noundef %call, i32 noundef 0) #3
  tail call void @of_node_put(ptr noundef %call) #3
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #3
  %call3 = tail call ptr @of_iomap(ptr noundef %call2, i32 noundef 1) #3
  store ptr %call3, ptr @gic_cpu_ctrl, align 4
  tail call void @of_node_put(ptr noundef %call2) #3
  %0 = load ptr, ptr @gic_cpu_ctrl, align 4
  %tobool4.not = icmp eq ptr %0, null
  br i1 %tobool4.not, label %if.end.unmap_scu_crit_edge, label %if.end6

if.end.unmap_scu_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %unmap_scu

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #3
  %call8 = tail call ptr @of_iomap(ptr noundef %call7, i32 noundef 0) #3
  store ptr %call8, ptr @cpu_ctrl, align 4
  tail call void @of_node_put(ptr noundef %call7) #3
  %1 = load ptr, ptr @cpu_ctrl, align 4
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %if.end6.unmap_scu_crit_edge, label %if.end11

if.end6.unmap_scu_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %unmap_scu

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @scu_enable(ptr noundef nonnull %call1) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %2() #3
  br label %unmap_scu

unmap_scu:                                        ; preds = %if.end11, %if.end6.unmap_scu_crit_edge, %if.end.unmap_scu_crit_edge
  tail call void @iounmap(ptr noundef nonnull %call1) #3
  br label %cleanup

cleanup:                                          ; preds = %unmap_scu, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ox820_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %call.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @ox820_secondary_startup to i32)) #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %call.i)
  %1 = load ptr, ptr @cpu_ctrl, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %cpu)
  %3 = load ptr, ptr @cpu_ctrl, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %4 = load ptr, ptr @gic_cpu_ctrl, align 4
  %mul = shl i32 %cpu, 8
  %add = add i32 %mul, 256
  %add.ptr6 = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #3, !srcloc !25
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %add.ptr.i) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ox820_secondary_startup() #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-oxnas/platsmp.c", i32 96, i32 1}
!2 = !{ptr @__cpu_method_of_table_ox820_smp, !1, !"__cpu_method_of_table_ox820_smp", i1 false, i1 false}
!3 = !{ptr @ox820_smp_ops, !4, !"ox820_smp_ops", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-oxnas/platsmp.c", i32 91, i32 36}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-oxnas/platsmp.c", i32 65, i32 43}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-oxnas/platsmp.c", i32 72, i32 43}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-oxnas/platsmp.c", i32 78, i32 43}
!11 = !{ptr @gic_cpu_ctrl, !12, !"gic_cpu_ctrl", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-oxnas/platsmp.c", i32 21, i32 22}
!13 = !{ptr @cpu_ctrl, !14, !"cpu_ctrl", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-oxnas/platsmp.c", i32 20, i32 22}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2153948079}
!25 = !{i64 685615}
!26 = !{i64 2153948574}
!27 = !{i64 2153949020}
