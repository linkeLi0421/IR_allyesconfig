; ModuleID = '/llk/IR_all_yes/drivers/clk/berlin/berlin2-pll.c_pt.bc'
source_filename = "../drivers/clk/berlin/berlin2-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.berlin2_pll = type { %struct.clk_hw, ptr, %struct.berlin2_pll_map }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.berlin2_pll_map = type { [16 x i8], i8, i8, i8, i8 }

@berlin2_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @berlin2_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@berlin2_pll_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014%s has zero rfdiv\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"berlin2_pll_recalc_rate\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/berlin/berlin2-pll.c\00", [63 x i8] zeroinitializer }, align 32
@berlin2_pll_recalc_rate._entry_ptr = internal global ptr @berlin2_pll_recalc_rate._entry, section ".printk_index", align 4
@berlin2_pll_recalc_rate._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s has zero vcodiv (index %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@berlin2_pll_recalc_rate._entry_ptr.5 = internal global ptr @berlin2_pll_recalc_rate._entry.3, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"berlin2_pll_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 72, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 53, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [36 x i8] c"../drivers/clk/berlin/berlin2-pll.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 61, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @berlin2_pll_recalc_rate._entry, ptr @berlin2_pll_recalc_rate._entry.3, ptr @berlin2_pll_recalc_rate._entry_ptr, ptr @berlin2_pll_recalc_rate._entry_ptr.5, ptr @berlin2_pll_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2_pll_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2_pll_recalc_rate._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @berlin2_pll_register(ptr nocapture noundef readonly %map, ptr noundef %base, ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 36) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %map1 = getelementptr inbounds %struct.berlin2_pll, ptr %call7.i.i, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %map1, ptr %map, i32 20)
  %base2 = getelementptr inbounds %struct.berlin2_pll, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %base2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %base, ptr %base2, align 4
  %init3 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %init3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %init, ptr %init3, align 8
  %7 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @berlin2_pll_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %num_parents, align 4
  %flags5 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %11 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %flags, ptr %flags5, align 4
  %call7 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_pll_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %map1 = getelementptr inbounds %struct.berlin2_pll, ptr %hw, i32 0, i32 2
  %conv = zext i32 %parent_rate to i64
  %base = getelementptr inbounds %struct.berlin2_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %fbdiv_shift = getelementptr inbounds %struct.berlin2_pll, ptr %hw, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %fbdiv_shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fbdiv_shift, align 1
  %conv4 = zext i8 %5 to i32
  %shr = lshr i32 %3, %conv4
  %and = and i32 %shr, 511
  %rfdiv_shift = getelementptr inbounds %struct.berlin2_pll, ptr %hw, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %rfdiv_shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rfdiv_shift, align 1
  %conv5 = zext i8 %7 to i32
  %shr6 = lshr i32 %3, %conv5
  %and7 = and i32 %shr6, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp = icmp eq i32 %and7, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %call10) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %rfdiv.0 = phi i32 [ 1, %do.end ], [ %and7, %entry.if.end_crit_edge ]
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !21
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %divsel_shift = getelementptr inbounds %struct.berlin2_pll, ptr %hw, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %divsel_shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %divsel_shift, align 1
  %conv17 = zext i8 %13 to i32
  %shr18 = lshr i32 %11, %conv17
  %and19 = and i32 %shr18, 15
  %arrayidx = getelementptr [16 x i8], ptr %map1, i32 0, i32 %and19
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv21 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp22 = icmp eq i8 %15, 0
  br i1 %cmp22, label %do.end27, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %call29, i32 noundef %and19) #11
  br label %if.end31

if.end31:                                         ; preds = %do.end27, %if.end.if.end31_crit_edge
  %vcodiv.0 = phi i32 [ 1, %do.end27 ], [ %conv21, %if.end.if.end31_crit_edge ]
  %mult = getelementptr inbounds %struct.berlin2_pll, ptr %hw, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %mult to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mult, align 1
  %conv32 = zext i8 %17 to i32
  %mul = mul nuw nsw i32 %and, %conv32
  %conv33 = zext i32 %mul to i64
  %mul34 = mul nuw nsw i64 %conv33, %conv
  %mul35 = mul nuw nsw i32 %vcodiv.0, %rfdiv.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul34)
  %cmp209 = icmp ult i64 %mul34, 4294967296
  br i1 %cmp209, label %if.then213, label %if.else219, !prof !22

if.then213:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %conv214 = trunc i64 %mul34 to i32
  %div217 = udiv i32 %conv214, %mul35
  br label %if.end223

if.else219:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul35, i64 %mul34) #12, !srcloc !23
  %asmresult1.i = extractvalue { i64, i64 } %18, 1
  %extract.t346 = trunc i64 %asmresult1.i to i32
  br label %if.end223

if.end223:                                        ; preds = %if.else219, %if.then213
  %rate.0.off0 = phi i32 [ %div217, %if.then213 ], [ %extract.t346, %if.else219 ]
  ret i32 %rate.0.off0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @berlin2_pll_ops, !1, !"berlin2_pll_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/berlin/berlin2-pll.c", i32 72, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/berlin/berlin2-pll.c", i32 53, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @berlin2_pll_recalc_rate._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @berlin2_pll_recalc_rate._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/berlin/berlin2-pll.c", i32 61, i32 3}
!10 = !{ptr @berlin2_pll_recalc_rate._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @berlin2_pll_recalc_rate._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 4027503}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2148942469, i64 2148942749, i64 2148943083, i64 2148943417}
