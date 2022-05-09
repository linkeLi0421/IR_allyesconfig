; ModuleID = '/llk/IR_all_yes/arch/arm/mach-socfpga/l2_cache.c_pt.bc'
source_filename = "../arch/arm/mach-socfpga/l2_cache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"altr,socfpga-l2-ecc\00", [44 x i8] zeroinitializer }, align 32
@socfpga_init_l2_ecc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Unable to find socfpga-l2-ecc in dtb\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"socfpga_init_l2_ecc\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"arch/arm/mach-socfpga/l2_cache.c\00", [63 x i8] zeroinitializer }, align 32
@socfpga_init_l2_ecc._entry_ptr = internal global ptr @socfpga_init_l2_ecc._entry, section ".printk_index", align 4
@socfpga_init_l2_ecc._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Unable to find L2 ECC mapping in dtb\0A\00", [56 x i8] zeroinitializer }, align 32
@socfpga_init_l2_ecc._entry_ptr.6 = internal global ptr @socfpga_init_l2_ecc._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"altr,socfpga-a10-l2-ecc\00", [40 x i8] zeroinitializer }, align 32
@socfpga_init_arria10_l2_ecc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Unable to find socfpga-a10-l2-ecc in dtb\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"socfpga_init_arria10_l2_ecc\00", [36 x i8] zeroinitializer }, align 32
@socfpga_init_arria10_l2_ecc._entry_ptr = internal global ptr @socfpga_init_arria10_l2_ecc._entry, section ".printk_index", align 4
@socfpga_init_arria10_l2_ecc._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.9, ptr @.str.3, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@socfpga_init_arria10_l2_ecc._entry_ptr.11 = internal global ptr @socfpga_init_arria10_l2_ecc._entry.10, section ".printk_index", align 4
@sys_manager_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@socfpga_init_arria10_l2_ecc._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.3, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013System Manager not mapped for L2 ECC\0A\00", [56 x i8] zeroinitializer }, align 32
@socfpga_init_arria10_l2_ecc._entry_ptr.14 = internal global ptr @socfpga_init_arria10_l2_ecc._entry.12, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 28, i32 43 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 30, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 37, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 52, i32 43 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 54, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 61, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [36 x i8] c"../arch/arm/mach-socfpga/l2_cache.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 66, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @socfpga_init_arria10_l2_ecc._entry, ptr @socfpga_init_arria10_l2_ecc._entry.10, ptr @socfpga_init_arria10_l2_ecc._entry.12, ptr @socfpga_init_arria10_l2_ecc._entry_ptr, ptr @socfpga_init_arria10_l2_ecc._entry_ptr.11, ptr @socfpga_init_arria10_l2_ecc._entry_ptr.14, ptr @socfpga_init_l2_ecc._entry, ptr @socfpga_init_l2_ecc._entry.4, ptr @socfpga_init_l2_ecc._entry_ptr, ptr @socfpga_init_l2_ecc._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_init_l2_ecc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_init_l2_ecc._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_init_arria10_l2_ecc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_init_arria10_l2_ecc._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_init_arria10_l2_ecc._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @socfpga_init_l2_ecc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #3
  tail call void @of_node_put(ptr noundef nonnull %call) #3
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %do.body11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  br label %cleanup

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call2, i32 16777216) #3, !srcloc !36
  tail call void @iounmap(ptr noundef nonnull %call2) #3
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %do.end7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @socfpga_init_arria10_l2_ecc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #3
  tail call void @of_node_put(ptr noundef nonnull %call) #3
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_manager_base_addr to i32))
  %0 = load ptr, ptr @sys_manager_base_addr, align 4
  %tobool11.not = icmp eq ptr %0, null
  br i1 %tobool11.not, label %do.end15, label %do.body19

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #6
  br label %exit

do.body19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  tail call void @arm_heavy_mb() #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_manager_base_addr to i32))
  %1 = load ptr, ptr @sys_manager_base_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 8388736) #3, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  tail call void @arm_heavy_mb() #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_manager_base_addr to i32))
  %2 = load ptr, ptr @sys_manager_base_addr, align 4
  %add.ptr25 = getelementptr i8, ptr %2, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 16777216) #3, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call2, i32 16777216) #3, !srcloc !36
  br label %exit

exit:                                             ; preds = %do.body19, %do.end15
  tail call void @iounmap(ptr noundef nonnull %call2) #3
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end7, %do.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-socfpga/l2_cache.c", i32 28, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-socfpga/l2_cache.c", i32 30, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @socfpga_init_l2_ecc._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @socfpga_init_l2_ecc._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-socfpga/l2_cache.c", i32 37, i32 3}
!10 = !{ptr @socfpga_init_l2_ecc._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @socfpga_init_l2_ecc._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-socfpga/l2_cache.c", i32 52, i32 43}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-socfpga/l2_cache.c", i32 54, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @socfpga_init_arria10_l2_ecc._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @socfpga_init_arria10_l2_ecc._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @socfpga_init_arria10_l2_ecc._entry.10, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-socfpga/l2_cache.c", i32 61, i32 3}
!21 = !{ptr @socfpga_init_arria10_l2_ecc._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-socfpga/l2_cache.c", i32 66, i32 3}
!24 = !{ptr @socfpga_init_arria10_l2_ecc._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @socfpga_init_arria10_l2_ecc._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2152505560}
!36 = !{i64 685242}
!37 = !{i64 2152511159}
!38 = !{i64 2152511864}
!39 = !{i64 2152512454}
