; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/patch.c_pt.bc'
source_filename = "../arch/arm/kernel/patch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.66, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.66 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.patch = type { ptr, i32 }

@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@patch_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"patch_lock\00", [21 x i8] zeroinitializer }, align 32
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"patch_lock\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [27 x i8] c"../arch/arm/kernel/patch.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 20, i32 8 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @patch_lock, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patch_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__patch_text_real(ptr noundef %addr, i32 noundef %insn, i1 noundef zeroext %remap) local_unnamed_addr #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  br i1 %remap, label %if.then, label %if.end45.thread

if.end45.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %insn)
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %addr, align 4
  %.pre = ptrtoint ptr %addr to i32
  br label %if.end57

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %addr to i32
  %call.i = tail call i32 @core_kernel_text(i32 noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then4.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call2.i = tail call ptr @vmalloc_to_page(ptr noundef %addr) #6
  br label %if.end45

if.then4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %2, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %3, i32 %shr.i
  br label %if.end45

if.end45:                                         ; preds = %if.then4.i, %if.then.i
  %page.0.i = phi ptr [ %call2.i, %if.then.i ], [ %add.ptr.i, %if.then4.i ]
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @patch_lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %page.0.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add12.i = add i32 %sub.ptr.div.i, %5
  %shl.i = shl i32 %add12.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %6 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %6, 512
  tail call void @__set_fixmap(i32 noundef 133, i32 noundef %shl.i, i32 noundef %or.i) #6
  %and.i = and i32 %2, 4095
  %add15.i = or i32 %and.i, -1597440
  %7 = inttoptr i32 %add15.i to ptr
  %8 = tail call i32 @llvm.bswap.i32(i32 %insn)
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %7, align 4
  %cmp48.not = icmp eq ptr %7, %addr
  br i1 %cmp48.not, label %if.end45.if.end57_crit_edge, label %cond.end55

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

cond.end55:                                       ; preds = %if.end45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %10 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool2.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool2.not.i, label %cond.end55.flush_kernel_vmap_range.exit_crit_edge, label %if.then.i91

cond.end55.flush_kernel_vmap_range.exit_crit_edge: ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #5
  br label %flush_kernel_vmap_range.exit

if.then.i91:                                      ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %11(ptr noundef nonnull %7, i32 noundef 4) #6
  br label %flush_kernel_vmap_range.exit

flush_kernel_vmap_range.exit:                     ; preds = %if.then.i91, %cond.end55.flush_kernel_vmap_range.exit_crit_edge
  tail call void @__set_fixmap(i32 noundef 133, i32 noundef 0, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @patch_lock, i32 noundef %call10.i) #6
  br label %if.end57

if.end57:                                         ; preds = %flush_kernel_vmap_range.exit, %if.end45.if.end57_crit_edge, %if.end45.thread
  %.pre-phi = phi i32 [ %.pre, %if.end45.thread ], [ %2, %flush_kernel_vmap_range.exit ], [ %2, %if.end45.if.end57_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %add = add i32 %.pre-phi, 4
  tail call void %12(i32 noundef %.pre-phi, i32 noundef %add) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @patch_text(ptr noundef %addr, i32 noundef %insn) local_unnamed_addr #0 section ".kprobes.text" align 64 {
entry:
  %patch = alloca %struct.patch, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %patch) #6
  %0 = getelementptr inbounds %struct.patch, ptr %patch, i32 0, i32 1
  %1 = ptrtoint ptr %patch to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %addr, ptr %patch, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %insn, ptr %0, align 4
  %call = call i32 @stop_machine_cpuslocked(ptr noundef nonnull @patch_text_stop_machine, ptr noundef nonnull %patch, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %patch) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stop_machine_cpuslocked(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_text_stop_machine(ptr nocapture noundef readonly %data) #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %insn = getelementptr inbounds %struct.patch, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %insn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %insn, align 4
  tail call void @__patch_text_real(ptr noundef %1, i32 noundef %3, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_kernel_text(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_fixmap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/patch.c", i32 20, i32 8}
!2 = !{ptr @patch_lock, !1, !"patch_lock", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
