; ModuleID = '/llk/IR_all_yes/arch/arm/plat-omap/sram.c_pt.bc'
source_filename = "../arch/arm/plat-omap/sram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@omap_sram_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap_sram_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@omap_sram_ceil = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap_sram_skip = internal global { i32, [28 x i8] } zeroinitializer, align 32
@omap_map_sram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013SRAM: Could not map\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap_map_sram\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"arch/arm/plat-omap/sram.c\00", [38 x i8] zeroinitializer }, align 32
@omap_map_sram._entry_ptr = internal global ptr @omap_map_sram._entry, section ".printk_index", align 4
@omap_sram_push_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Not enough space in SRAM\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_sram_push_address\00", [41 x i8] zeroinitializer }, align 32
@omap_sram_push_address._entry_ptr = internal global ptr @omap_sram_push_address._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"omap_sram_base\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 31, i32 22 }
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"omap_sram_size\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 33, i32 22 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"omap_sram_ceil\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 34, i32 22 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"omap_sram_skip\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 32, i32 22 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 111, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [29 x i8] c"../arch/arm/plat-omap/sram.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 50, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @omap_map_sram._entry, ptr @omap_map_sram._entry_ptr, ptr @omap_sram_push_address._entry, ptr @omap_sram_push_address._entry_ptr, ptr @omap_sram_base, ptr @omap_sram_size, ptr @omap_sram_ceil, ptr @omap_sram_skip, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sram_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sram_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sram_ceil to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sram_skip to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_map_sram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sram_push_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_sram_push(ptr noundef %funcp, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap_sram_ceil, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = load ptr, ptr @omap_sram_base, align 4
  %3 = load i32, ptr @omap_sram_skip, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %3
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %1, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %size)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, %size
  br i1 %cmp.i, label %omap_sram_push_address.exit.thread, label %omap_sram_push_address.exit

omap_sram_push_address.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %cleanup

omap_sram_push_address.exit:                      ; preds = %entry
  %sub.i = sub i32 %1, %size
  %and.i = and i32 %sub.i, -8
  %4 = inttoptr i32 %and.i to ptr
  store ptr %4, ptr @omap_sram_ceil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %omap_sram_push_address.exit.cleanup_crit_edge, label %if.end

omap_sram_push_address.exit.cleanup_crit_edge:    ; preds = %omap_sram_push_address.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %omap_sram_push_address.exit
  %and = and i32 %sub.i, -4096
  %add = add i32 %size, 4095
  %div41 = lshr i32 %add, 12
  %call2 = tail call i32 @set_memory_rw(i32 noundef %and, i32 noundef %div41) #5
  %5 = tail call i32 asm "", "=r,0"(ptr %funcp) #9, !srcloc !28
  %and6 = and i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.end17, label %do.body11, !prof !29

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/plat-omap/sram.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #5, !srcloc !30
  unreachable

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and18 = and i32 %5, -2
  %6 = inttoptr i32 %and18 to ptr
  %7 = call ptr @memcpy(ptr %4, ptr %6, i32 %size)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %add19 = add i32 %and.i, %size
  tail call void %8(i32 noundef %and.i, i32 noundef %add19) #5
  %and20 = and i32 %5, 1
  %or = or i32 %and20, %and.i
  %9 = tail call ptr asm "", "=r,0"(i32 %or) #9, !srcloc !31
  %call21 = tail call i32 @set_memory_ro(i32 noundef %and, i32 noundef %div41) #5
  %call22 = tail call i32 @set_memory_x(i32 noundef %and, i32 noundef %div41) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %omap_sram_push_address.exit.cleanup_crit_edge, %omap_sram_push_address.exit.thread
  %retval.0 = phi ptr [ %9, %do.end17 ], [ null, %omap_sram_push_address.exit.cleanup_crit_edge ], [ null, %omap_sram_push_address.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_rw(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_ro(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_x(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omap_sram_reset() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap_sram_base, align 4
  %1 = load i32, ptr @omap_sram_size, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 %1
  store ptr %add.ptr, ptr @omap_sram_ceil, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_map_sram(i32 noundef %start, i32 noundef %size, i32 noundef %skip, i32 noundef %cached) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %start, -4096
  store i32 %size, ptr @omap_sram_size, align 4
  store i32 %skip, ptr @omap_sram_skip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cached)
  %tobool = icmp ne i32 %cached, 0
  %call = tail call ptr @__arm_ioremap_exec(i32 noundef %and, i32 noundef %size, i1 noundef zeroext %tobool) #5
  store ptr %call, ptr @omap_sram_base, align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load i32, ptr @omap_sram_size, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 %0
  store ptr %add.ptr.i, ptr @omap_sram_ceil, align 4
  %1 = load i32, ptr @omap_sram_skip, align 4
  %add.ptr = getelementptr i8, ptr %call, i32 %1
  %sub = sub i32 %0, %1
  tail call void @mmioset(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %sub) #5
  %2 = load ptr, ptr @omap_sram_base, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = load i32, ptr @omap_sram_size, align 4
  %add = add i32 %4, 4095
  %div14 = lshr i32 %add, 12
  %call6 = tail call i32 @set_memory_ro(i32 noundef %3, i32 noundef %div14) #5
  %call7 = tail call i32 @set_memory_x(i32 noundef %3, i32 noundef %div14) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__arm_ioremap_exec(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/plat-omap/sram.c", i32 111, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @omap_map_sram._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @omap_map_sram._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @omap_sram_base, !7, !"omap_sram_base", i1 false, i1 false}
!7 = !{!"../arch/arm/plat-omap/sram.c", i32 31, i32 22}
!8 = !{ptr @omap_sram_skip, !9, !"omap_sram_skip", i1 false, i1 false}
!9 = !{!"../arch/arm/plat-omap/sram.c", i32 32, i32 22}
!10 = !{ptr @omap_sram_size, !11, !"omap_sram_size", i1 false, i1 false}
!11 = !{!"../arch/arm/plat-omap/sram.c", i32 33, i32 22}
!12 = !{ptr @omap_sram_ceil, !13, !"omap_sram_ceil", i1 false, i1 false}
!13 = !{!"../arch/arm/plat-omap/sram.c", i32 34, i32 22}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/plat-omap/sram.c", i32 50, i32 3}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @omap_sram_push_address._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @omap_sram_push_address._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 2154860986}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2154862077, i64 2154862566, i64 2154862114, i64 2154862170, i64 2154862204, i64 2154862228, i64 2154862269, i64 2154862290, i64 2154862318, i64 2154862352}
!31 = !{i64 2154861481}
