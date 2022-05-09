; ModuleID = '/llk/IR_all_yes/drivers/clk/hisilicon/clkgate-separated.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clkgate-separated.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clkgate_separated = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@clkgate_separated_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clkgate_separated_enable, ptr @clkgate_separated_disable, ptr @clkgate_separated_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"clkgate_separated_ops\00", align 1
@___asan_gen_.2 = private constant [45 x i8] c"../drivers/clk/hisilicon/clkgate-separated.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 77, i32 29 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @clkgate_separated_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgate_separated_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hisi_register_clkgate_sep(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, ptr noundef %reg, i8 noundef zeroext %bit_idx, i8 noundef zeroext %clk_gate_flags, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @clkgate_separated_ops, ptr %ops, align 4
  %flags3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %6 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %flags, ptr %flags3, align 4
  %7 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent_name.addr, align 4
  %tobool4.not = icmp eq ptr %8, null
  %parent_name.addr. = select i1 %tobool4.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool5.not = icmp ne ptr %8, null
  %conv = zext i1 %tobool5.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %num_parents, align 4
  %enable = getelementptr inbounds %struct.clkgate_separated, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg, ptr %enable, align 4
  %bit_idx7 = getelementptr inbounds %struct.clkgate_separated, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %bit_idx7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bit_idx, ptr %bit_idx7, align 8
  %flags8 = getelementptr inbounds %struct.clkgate_separated, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %flags8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %clk_gate_flags, ptr %flags8, align 1
  %init9 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %init9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %init, ptr %init9, align 8
  %lock10 = getelementptr inbounds %struct.clkgate_separated, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %lock10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %lock, ptr %lock10, align 4
  %call12 = call ptr @clk_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #5
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call12, %if.then14 ], [ %call12, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clkgate_separated_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clkgate_separated, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %bit_idx = getelementptr inbounds %struct.clkgate_separated, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bit_idx, align 4
  %conv7 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv7
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %enable = getelementptr inbounds %struct.clkgate_separated, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enable, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !11
  %7 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %enable, align 4
  %add.ptr9 = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !12
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.end.if.end16_crit_edge, label %if.then14

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %11, i32 noundef %flags.0) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end.if.end16_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clkgate_separated_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clkgate_separated, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %bit_idx = getelementptr inbounds %struct.clkgate_separated, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bit_idx, align 4
  %conv7 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv7
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %enable = getelementptr inbounds %struct.clkgate_separated, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enable, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %4) #5, !srcloc !11
  %7 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %enable, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !12
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.end.if.end17_crit_edge, label %if.then15

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %11, i32 noundef %flags.0) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clkgate_separated_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enable = getelementptr inbounds %struct.clkgate_separated, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !12
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %bit_idx = getelementptr inbounds %struct.clkgate_separated, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bit_idx, align 4
  %conv = zext i8 %5 to i32
  %6 = lshr i32 %3, %conv
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @clkgate_separated_ops, !1, !"clkgate_separated_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/hisilicon/clkgate-separated.c", i32 77, i32 29}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 4027586}
!12 = !{i64 4028004}
