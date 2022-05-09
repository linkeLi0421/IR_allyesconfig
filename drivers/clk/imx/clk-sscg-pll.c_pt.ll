; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-sscg-pll.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-sscg-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+imx_clk_hw_sscg_pll\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_clk_hw_sscg_pll\09\09\09\09"
module asm "\09.long\09__crc_imx_clk_hw_sscg_pll\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_clk_hw_sscg_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_clk_hw_sscg_pll\22\09\09\09\09\09"
module asm "__kstrtabns_imx_clk_hw_sscg_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_sscg_pll = type { %struct.clk_hw, %struct.clk_ops, ptr, %struct.clk_sscg_pll_setup, i8, i8, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_sscg_pll_setup = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@clk_sscg_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_sscg_pll_prepare, ptr @clk_sscg_pll_unprepare, ptr @clk_sscg_pll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_sscg_pll_recalc_rate, ptr null, ptr @clk_sscg_pll_determine_rate, ptr @clk_sscg_pll_set_parent, ptr @clk_sscg_pll_get_parent, ptr @clk_sscg_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_imx_clk_hw_sscg_pll = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_clk_hw_sscg_pll = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_clk_hw_sscg_pll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_clk_hw_sscg_pll to i32), ptr @__kstrtab_imx_clk_hw_sscg_pll, ptr @__kstrtabns_imx_clk_hw_sscg_pll }, section "___ksymtab_gpl+imx_clk_hw_sscg_pll", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"clk_sscg_pll_ops\00", align 1
@___asan_gen_.3 = private constant [34 x i8] c"../drivers/clk/imx/clk-sscg-pll.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 489, i32 29 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_imx_clk_hw_sscg_pll, ptr @clk_sscg_pll_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_sscg_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_sscg_pll(ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, i8 noundef zeroext %parent, i8 noundef zeroext %bypass1, i8 noundef zeroext %bypass2, ptr noundef %base, i32 noundef %flags) #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 216) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent2 = getelementptr inbounds %struct.clk_sscg_pll, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %parent2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %parent, ptr %parent2, align 8
  %bypass13 = getelementptr inbounds %struct.clk_sscg_pll, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %bypass13 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bypass1, ptr %bypass13, align 1
  %bypass24 = getelementptr inbounds %struct.clk_sscg_pll, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %bypass24 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bypass2, ptr %bypass24, align 2
  %base5 = getelementptr inbounds %struct.clk_sscg_pll, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @clk_sscg_pll_ops, ptr %ops, align 4
  %flags7 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %flags, ptr %flags7, align 4
  %parent_names8 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_names, ptr %parent_names8, align 4
  %num_parents9 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %num_parents, ptr %num_parents9, align 4
  %11 = ptrtoint ptr %base5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %base, ptr %base5, align 8
  %init12 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %init12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %init, ptr %init12, align 8
  %call14 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.then16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %13 = inttoptr i32 %call14 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %13, %if.then16 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sscg_pll_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !15
  %3 = and i32 %2, 2147483647
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #5, !srcloc !16
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !15
  %9 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.clk_sscg_pll_wait_lock.exit_crit_edge

entry.clk_sscg_pll_wait_lock.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_sscg_pll_wait_lock.exit

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call1.i, 70000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.then.i
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !15
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool16.not.i = icmp sgt i32 %13, -1
  br i1 %tobool16.not.i, label %land.lhs.true.i, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call20.i = tail call i64 @ktime_get() #5
  %cmp3.i.i = icmp sgt i64 %call20.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then23.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !15
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !18
  br label %for.end.i

for.end.i:                                        ; preds = %if.then23.i, %for.cond.i.for.end.i_crit_edge
  %val.0.i = phi i32 [ %17, %if.then23.i ], [ %13, %for.cond.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i)
  %tobool36.not.inv.i = icmp slt i32 %val.0.i, 0
  %cond.i = select i1 %tobool36.not.inv.i, i32 0, i32 -110
  br label %clk_sscg_pll_wait_lock.exit

clk_sscg_pll_wait_lock.exit:                      ; preds = %for.end.i, %entry.clk_sscg_pll_wait_lock.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %for.end.i ], [ 0, %entry.clk_sscg_pll_wait_lock.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_sscg_pll_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !15
  %3 = or i32 %2, -2147483648
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #5, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sscg_pll_is_prepared(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !15
  %3 = xor i32 %2, -1
  %call.lobit.not = lshr i32 %3, 31
  ret i32 %call.lobit.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sscg_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr1 = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !15
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = lshr i32 %3, 25
  %shr = and i32 %and, 7
  %and32 = lshr i32 %3, 19
  %shr33 = and i32 %and32, 63
  %and50 = lshr i32 %3, 13
  %shr51 = and i32 %and50, 63
  %and68 = lshr i32 %3, 7
  %shr69 = and i32 %and68, 63
  %and86 = lshr i32 %3, 1
  %shr87 = and i32 %and86, 63
  %conv = zext i32 %parent_rate to i64
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !15
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %and94 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool.not = icmp eq i32 %and94, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end526_crit_edge

entry.if.end526_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end526

if.else:                                          ; preds = %entry
  %and96 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.else292, label %if.then98

if.then98:                                        ; preds = %if.else
  %conv99 = zext i32 %shr69 to i64
  %mul = mul nuw nsw i64 %conv99, %conv
  %add = add nuw nsw i32 %shr33, 1
  %add100 = add nuw nsw i32 %shr87, 1
  %mul101 = mul nuw nsw i32 %add, %add100
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp276 = icmp ult i64 %mul, 4294967296
  br i1 %cmp276, label %if.then280, label %if.else286, !prof !20

if.then280:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  %conv281 = trunc i64 %mul to i32
  %div284 = udiv i32 %conv281, %mul101
  br label %if.end526

if.else286:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul101, i64 %mul) #9, !srcloc !21
  %asmresult1.i = extractvalue { i64, i64 } %8, 1
  %extract.t776 = trunc i64 %asmresult1.i to i32
  br label %if.end526

if.else292:                                       ; preds = %if.else
  %mul293 = shl nuw nsw i64 %conv, 1
  %add294 = add nuw nsw i32 %shr51, 1
  %add295 = add nuw nsw i32 %shr69, 1
  %mul296 = mul nuw nsw i32 %add294, %add295
  %conv297 = zext i32 %mul296 to i64
  %mul298 = mul nuw nsw i64 %mul293, %conv297
  %add300 = add nuw nsw i32 %shr, 1
  %add301 = add nuw nsw i32 %shr33, 1
  %mul302 = mul nuw nsw i32 %add300, %add301
  %add303 = add nuw nsw i32 %shr87, 1
  %mul304 = mul nuw nsw i32 %mul302, %add303
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul298)
  %cmp505 = icmp ult i64 %mul298, 4294967296
  br i1 %cmp505, label %if.then513, label %if.else519, !prof !20

if.then513:                                       ; preds = %if.else292
  call void @__sanitizer_cov_trace_pc() #7
  %conv514 = trunc i64 %mul298 to i32
  %div517 = udiv i32 %conv514, %mul304
  br label %if.end526

if.else519:                                       ; preds = %if.else292
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul304, i64 %mul298) #9, !srcloc !21
  %asmresult1.i721 = extractvalue { i64, i64 } %9, 1
  %extract.t772 = trunc i64 %asmresult1.i721 to i32
  br label %if.end526

if.end526:                                        ; preds = %if.else519, %if.then513, %if.else286, %if.then280, %entry.if.end526_crit_edge
  %temp64.0.off0 = phi i32 [ %div517, %if.then513 ], [ %extract.t772, %if.else519 ], [ %div284, %if.then280 ], [ %extract.t776, %if.else286 ], [ %parent_rate, %entry.if.end526_crit_edge ]
  ret i32 %temp64.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sscg_pll_determine_rate(ptr noundef %hw, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %conv = zext i32 %1 to i64
  %min_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_rate, align 4
  %conv3 = zext i32 %3 to i64
  %max_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_rate, align 4
  %conv4 = zext i32 %5 to i64
  %6 = add i32 %1, -1200000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1180000001, i32 %6)
  %7 = icmp ult i32 %6, -1180000001
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %max_rate, align 4
  %9 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %min_rate, align 4
  %bypass2.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 6
  %10 = ptrtoint ptr %bypass2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bypass_parent_index.0.in.i = load i8, ptr %bypass2.i, align 1
  %bypass_parent_index.0.i = zext i8 %bypass_parent_index.0.in.i to i32
  %call.i = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %bypass_parent_index.0.i) #5
  %call7.i = tail call i32 @__clk_determine_rate(ptr noundef %call.i, ptr noundef %req) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.__clk_sscg_pll_determine_rate.exit_crit_edge

if.end.__clk_sscg_pll_determine_rate.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %__clk_sscg_pll_determine_rate.exit

if.then.i:                                        ; preds = %if.end
  %setup1.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %req, align 4
  %13 = call ptr @memset(ptr %setup1.i, i32 0, i32 88)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %1)
  %cmp.i.i = icmp eq i32 %12, %1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.__clk_sscg_pll_determine_rate.exit_crit_edge

if.then.i.__clk_sscg_pll_determine_rate.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__clk_sscg_pll_determine_rate.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %bypass.i.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 5
  %14 = ptrtoint ptr %bypass.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %bypass.i.i, align 4
  %fout.i.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %fout.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %fout.i.i, align 8
  br label %__clk_sscg_pll_determine_rate.exit

__clk_sscg_pll_determine_rate.exit:               ; preds = %if.then.i.i, %if.then.i.__clk_sscg_pll_determine_rate.exit_crit_edge, %if.end.__clk_sscg_pll_determine_rate.exit_crit_edge
  %ret.0.i = phi i32 [ %call7.i, %if.end.__clk_sscg_pll_determine_rate.exit_crit_edge ], [ 0, %if.then.i.i ], [ -22, %if.then.i.__clk_sscg_pll_determine_rate.exit_crit_edge ]
  %best_parent_hw.i = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %16 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %best_parent_hw.i, align 4
  %17 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %req, align 4
  %best_parent_rate.i = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %19 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %best_parent_rate.i, align 4
  %fout.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %fout.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fout.i, align 8
  %conv12.i = trunc i64 %21 to i32
  store i32 %conv12.i, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %__clk_sscg_pll_determine_rate.exit.cleanup_crit_edge, label %if.end13

__clk_sscg_pll_determine_rate.exit.cleanup_crit_edge: ; preds = %__clk_sscg_pll_determine_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %__clk_sscg_pll_determine_rate.exit
  %call14 = tail call fastcc i32 @__clk_sscg_pll_determine_rate(ptr noundef %hw, ptr noundef %req, i64 noundef 25000000, i64 noundef 54000000, i64 noundef %conv, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call fastcc i32 @__clk_sscg_pll_determine_rate(ptr noundef %hw, ptr noundef %req, i64 noundef 25000000, i64 noundef 235000000, i64 noundef %conv, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %fout.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %fout.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %conv3)
  %cmp22.not = icmp ult i64 %23, %conv3
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %conv4)
  %cmp25.not = icmp ugt i64 %23, %conv4
  %or.cond55 = select i1 %cmp22.not, i1 true, i1 %cmp25.not
  %ret.0 = select i1 %or.cond55, i32 %call18, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %__clk_sscg_pll_determine_rate.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end21 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %__clk_sscg_pll_determine_rate.exit.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sscg_pll_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %bypass = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 5
  %3 = ptrtoint ptr %bypass to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bypass, align 4
  %5 = and i32 %2, -805306369
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shl = shl i32 %4, 4
  %and22 = and i32 %shl, 48
  %or = or i32 %and22, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !16
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !15
  %13 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.clk_sscg_pll_wait_lock.exit_crit_edge

entry.clk_sscg_pll_wait_lock.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_sscg_pll_wait_lock.exit

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call1.i, 70000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.then.i
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !15
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool16.not.i = icmp sgt i32 %17, -1
  br i1 %tobool16.not.i, label %land.lhs.true.i, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call20.i = tail call i64 @ktime_get() #5
  %cmp3.i.i = icmp sgt i64 %call20.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then23.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !15
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !18
  br label %for.end.i

for.end.i:                                        ; preds = %if.then23.i, %for.cond.i.for.end.i_crit_edge
  %val.0.i = phi i32 [ %21, %if.then23.i ], [ %17, %for.cond.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i)
  %tobool36.not.inv.i = icmp slt i32 %val.0.i, 0
  %cond.i = select i1 %tobool36.not.inv.i, i32 0, i32 -110
  br label %clk_sscg_pll_wait_lock.exit

clk_sscg_pll_wait_lock.exit:                      ; preds = %for.end.i, %entry.clk_sscg_pll_wait_lock.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %for.end.i ], [ 0, %entry.clk_sscg_pll_wait_lock.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_sscg_pll_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %parent, align 8
  %base = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !15
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bypass2 = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 6
  %6 = ptrtoint ptr %bypass2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bypass2, align 2
  br label %if.end7

if.else:                                          ; preds = %entry
  %and4 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end7_crit_edge, label %if.then6

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %bypass1 = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 5
  %8 = ptrtoint ptr %bypass1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bypass1, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.else.if.end7_crit_edge, %if.then
  %ret.0 = phi i8 [ %7, %if.then ], [ %9, %if.then6 ], [ %1, %if.else.if.end7_crit_edge ]
  ret i8 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sscg_pll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %setup1 = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3
  %base = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  %bypass = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 5
  %3 = ptrtoint ptr %bypass to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bypass, align 4
  %5 = and i32 %2, -805306369
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shl = shl i32 %4, 4
  %and21 = and i32 %shl, 48
  %or = or i32 %and21, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !16
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 8
  %add.ptr29 = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #5, !srcloc !15
  %divf1 = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %divf1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %divf1, align 4
  %divf2 = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %divf2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %divf2, align 4
  %17 = ptrtoint ptr %setup1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %setup1, align 8
  %divr2 = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %divr2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %divr2, align 8
  %divq = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %divq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %divq, align 8
  %23 = and i32 %12, 16777456
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %shl58 = shl i32 %14, 13
  %and59 = and i32 %shl58, 516096
  %or60 = or i32 %and59, %24
  %shl85 = shl i32 %16, 7
  %and86 = and i32 %shl85, 8064
  %or87 = or i32 %or60, %and86
  %shl112 = shl i32 %18, 25
  %and113 = and i32 %shl112, 234881024
  %or114 = or i32 %or87, %and113
  %shl139 = shl i32 %20, 19
  %and140 = and i32 %shl139, 33030144
  %or141 = or i32 %or114, %and140
  %shl166 = shl i32 %22, 1
  %and167 = and i32 %shl166, 126
  %or168 = or i32 %or141, %and167
  %25 = tail call i32 @llvm.bswap.i32(i32 %or168)
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 8
  %add.ptr170 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 %25) #5, !srcloc !16
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !15
  %31 = and i32 %30, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.clk_sscg_pll_wait_lock.exit_crit_edge

entry.clk_sscg_pll_wait_lock.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_sscg_pll_wait_lock.exit

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call1.i, 70000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.then.i
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !15
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %tobool16.not.i = icmp sgt i32 %35, -1
  br i1 %tobool16.not.i, label %land.lhs.true.i, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call20.i = tail call i64 @ktime_get() #5
  %cmp3.i.i = icmp sgt i64 %call20.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then23.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #5, !srcloc !15
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !18
  br label %for.end.i

for.end.i:                                        ; preds = %if.then23.i, %for.cond.i.for.end.i_crit_edge
  %val.0.i = phi i32 [ %39, %if.then23.i ], [ %35, %for.cond.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i)
  %tobool36.not.inv.i = icmp slt i32 %val.0.i, 0
  %cond.i = select i1 %tobool36.not.inv.i, i32 0, i32 -110
  br label %clk_sscg_pll_wait_lock.exit

clk_sscg_pll_wait_lock.exit:                      ; preds = %for.end.i, %entry.clk_sscg_pll_wait_lock.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %for.end.i ], [ 0, %entry.clk_sscg_pll_wait_lock.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__clk_sscg_pll_determine_rate(ptr noundef %hw, ptr noundef %req, i64 noundef %min, i64 noundef %max, i64 noundef %rate, i32 noundef %bypass) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %setup1 = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3
  %conv = trunc i64 %max to i32
  %max_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %max_rate, align 4
  %conv2 = trunc i64 %min to i32
  %min_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 1
  %1 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv2, ptr %min_rate, align 4
  %2 = zext i32 %bypass to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bypass, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bypass2 = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bypass1 = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  %bypass_parent_index.0.in.in = phi ptr [ %parent, %sw.default ], [ %bypass1, %sw.bb4 ], [ %bypass2, %sw.bb ]
  %3 = ptrtoint ptr %bypass_parent_index.0.in.in to i32
  call void @__asan_load1_noabort(i32 %3)
  %bypass_parent_index.0.in = load i8, ptr %bypass_parent_index.0.in.in, align 1
  %bypass_parent_index.0 = zext i8 %bypass_parent_index.0.in to i32
  %call = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %bypass_parent_index.0) #5
  %call7 = tail call i32 @__clk_determine_rate(ptr noundef %call, ptr noundef %req) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 4
  %conv9 = zext i32 %5 to i64
  %6 = call ptr @memset(ptr %setup1, i32 0, i32 88)
  %7 = zext i32 %bypass to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %bypass, label %if.then.if.end_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 0, label %sw.bb2.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp8(i64 %conv9, i64 %rate)
  %cmp.i = icmp eq i64 %conv9, %rate
  br i1 %cmp.i, label %if.then.i, label %sw.bb.i.if.end_crit_edge

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %bypass.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %bypass.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %bypass.i, align 4
  %fout.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %fout.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %rate, ptr %fout.i, align 8
  br label %if.end

sw.bb1.i:                                         ; preds = %if.then
  %10 = add nsw i64 %conv9, -2400000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 -800000001, i64 %10)
  %11 = icmp ult i64 %10, -800000001
  br i1 %11, label %sw.bb1.i.if.end_crit_edge, label %for.body.i.i.preheader.i

sw.bb1.i.if.end_crit_edge:                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i.i.preheader.i:                         ; preds = %sw.bb1.i
  %temp_setup.sroa.10.0.setup.sroa_idx.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 1
  %temp_setup.sroa.13.0.setup.sroa_idx.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 2
  %temp_setup.sroa.21.0.setup.sroa_idx.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 3
  %temp_setup.sroa.29.0.setup.sroa_idx.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 4
  %temp_setup.sroa.35.0.setup.sroa_idx.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 5
  %temp_setup.sroa.38.0.setup.sroa_idx.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 6
  %temp_setup.sroa.44.0.setup.sroa_idx.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 7
  %temp_setup.sroa.46.0.setup.sroa_idx.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 8
  %temp_setup.sroa.50.0.setup.sroa_idx.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 9
  %temp_setup.sroa.54.0.setup.sroa_idx.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 11
  %temp_setup.sroa.56.0.setup.sroa_idx.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 12
  %temp_setup.sroa.61.0.setup.sroa_idx.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 13
  %temp_setup.sroa.66.0.setup.sroa_idx.i = getelementptr inbounds i8, ptr %setup1, i32 84
  %12 = trunc i64 %rate to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.preheader.i
  %temp_setup.sroa.13.0.i = phi i32 [ %add.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.i.preheader.i ]
  %temp_setup.sroa.61.0.i = phi i32 [ %temp_setup.sroa.61.4.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 1200000000, %for.body.i.i.preheader.i ]
  %ret.0333.i.i.i = phi i32 [ %ret.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ -22, %for.body.i.i.preheader.i ]
  %add.i.i.i = add nuw nsw i32 %temp_setup.sroa.13.0.i, 1
  %div185.i.i.i = udiv i32 %5, %add.i.i.i
  %conv186.i.i.i = zext i32 %div185.i.i.i to i64
  %13 = add nsw i64 %conv186.i.i.i, -54000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 21000001, i64 %13)
  %14 = icmp ult i64 %13, 21000001
  br i1 %14, label %for.body.i.i.i.i.preheader, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

for.body.i.i.i.i.preheader:                       ; preds = %for.body.i.i.i
  %div184.i.i.i.i.i = udiv i32 %5, %add.i.i.i
  %conv185.i.i.i.i.i = zext i32 %div184.i.i.i.i.i to i64
  %mul195.i.i.i.i.i = shl nuw nsw i64 %conv185.i.i.i.i.i, 1
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i.i.i.i.preheader
  %temp_setup.sroa.21.0.i = phi i32 [ %add196.i.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.body.i.i.i.i.preheader ]
  %temp_setup.sroa.61.1.i = phi i32 [ %temp_setup.sroa.61.3.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %temp_setup.sroa.61.0.i, %for.body.i.i.i.i.preheader ]
  %add196.i.i.i.i.i = add nuw nsw i32 %temp_setup.sroa.21.0.i, 1
  %conv197.i.i.i.i.i = zext i32 %add196.i.i.i.i.i to i64
  %mul199.i.i.i.i.i = mul nuw i64 %mul195.i.i.i.i.i, %conv197.i.i.i.i.i
  %15 = add i64 %mul199.i.i.i.i.i, -1200000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 1200000001, i64 %15)
  %16 = icmp ult i64 %15, 1200000001
  %conv430.i.i.i.i.i = trunc i64 %mul199.i.i.i.i.i to i32
  br label %if.end192.i.i.i.i.i

if.end192.i.i.i.i.i:                              ; preds = %for.inc.i.i.i.i.i.if.end192.i.i.i.i.i_crit_edge, %for.body.i.i.i.i
  %temp_setup.sroa.29.0.i = phi i32 [ 0, %for.body.i.i.i.i ], [ %inc.i.i.i.i.i, %for.inc.i.i.i.i.i.if.end192.i.i.i.i.i_crit_edge ]
  %temp_setup.sroa.61.2.i = phi i32 [ %temp_setup.sroa.61.1.i, %for.body.i.i.i.i ], [ %temp_setup.sroa.61.3.i, %for.inc.i.i.i.i.i.if.end192.i.i.i.i.i_crit_edge ]
  %ret.0720.i.i.i.i.i = phi i32 [ -22, %for.body.i.i.i.i ], [ %ret.1.i.i.i.i.i, %for.inc.i.i.i.i.i.if.end192.i.i.i.i.i_crit_edge ]
  br i1 %16, label %if.then428.i.i.i.i.i, label %if.end192.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

if.end192.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge:  ; preds = %if.end192.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i.i.i

if.then428.i.i.i.i.i:                             ; preds = %if.end192.i.i.i.i.i
  %add211.i.i.i.i.i = shl nuw i32 %temp_setup.sroa.29.0.i, 1
  %mul212.i.i.i.i.i = add nuw nsw i32 %add211.i.i.i.i.i, 2
  %div434.i.i.i.i.i = udiv i32 %conv430.i.i.i.i.i, %mul212.i.i.i.i.i
  %conv.i.i.i.i.i.i = sub i32 %div434.i.i.i.i.i, %12
  %17 = tail call i32 @llvm.abs.i32(i32 %temp_setup.sroa.61.2.i, i1 false) #5
  %18 = tail call i32 @llvm.abs.i32(i32 %conv.i.i.i.i.i.i, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %18)
  %cmp12.i.i.i.i.i.i = icmp sgt i32 %17, %18
  br i1 %cmp12.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.then428.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

if.then428.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge: ; preds = %if.then428.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then428.i.i.i.i.i
  %conv435.i.i.i.i.i = zext i32 %div434.i.i.i.i.i to i64
  %19 = ptrtoint ptr %setup1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %setup1, align 8
  %20 = ptrtoint ptr %temp_setup.sroa.10.0.setup.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %temp_setup.sroa.10.0.setup.sroa_idx.i, align 4
  %21 = ptrtoint ptr %temp_setup.sroa.13.0.setup.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %temp_setup.sroa.13.0.i, ptr %temp_setup.sroa.13.0.setup.sroa_idx.i, align 8
  %22 = ptrtoint ptr %temp_setup.sroa.21.0.setup.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %temp_setup.sroa.21.0.i, ptr %temp_setup.sroa.21.0.setup.sroa_idx.i, align 4
  %23 = ptrtoint ptr %temp_setup.sroa.29.0.setup.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %temp_setup.sroa.29.0.i, ptr %temp_setup.sroa.29.0.setup.sroa_idx.i, align 8
  %24 = ptrtoint ptr %temp_setup.sroa.35.0.setup.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %temp_setup.sroa.35.0.setup.sroa_idx.i, align 4
  %25 = ptrtoint ptr %temp_setup.sroa.38.0.setup.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv9, ptr %temp_setup.sroa.38.0.setup.sroa_idx.i, align 8
  %26 = ptrtoint ptr %temp_setup.sroa.44.0.setup.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %mul199.i.i.i.i.i, ptr %temp_setup.sroa.44.0.setup.sroa_idx.i, align 8
  %27 = ptrtoint ptr %temp_setup.sroa.46.0.setup.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv435.i.i.i.i.i, ptr %temp_setup.sroa.46.0.setup.sroa_idx.i, align 8
  %28 = call ptr @memset(ptr %temp_setup.sroa.50.0.setup.sroa_idx.i, i32 0, i32 16)
  %29 = ptrtoint ptr %temp_setup.sroa.54.0.setup.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv186.i.i.i, ptr %temp_setup.sroa.54.0.setup.sroa_idx.i, align 8
  %30 = ptrtoint ptr %temp_setup.sroa.56.0.setup.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %rate, ptr %temp_setup.sroa.56.0.setup.sroa_idx.i, align 8
  %31 = ptrtoint ptr %temp_setup.sroa.61.0.setup.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i.i.i.i.i.i, ptr %temp_setup.sroa.61.0.setup.sroa_idx.i, align 8
  %32 = ptrtoint ptr %temp_setup.sroa.66.0.setup.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %temp_setup.sroa.66.0.setup.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %conv435.i.i.i.i.i, i64 %rate)
  %cmp17.i.i.i.i.i.i = icmp eq i64 %conv435.i.i.i.i.i, %rate
  br i1 %cmp17.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.if.end_crit_edge, label %if.then.i.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

if.then.i.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge:  ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i.i.i

if.then.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.inc.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, %if.then428.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, %if.end192.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge
  %temp_setup.sroa.61.3.i = phi i32 [ %conv.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge ], [ %temp_setup.sroa.61.2.i, %if.then428.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge ], [ %temp_setup.sroa.61.2.i, %if.end192.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge ]
  %ret.1.i.i.i.i.i = phi i32 [ -1, %if.then.i.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge ], [ -1, %if.then428.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge ], [ %ret.0720.i.i.i.i.i, %if.end192.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge ]
  %inc.i.i.i.i.i = add nuw nsw i32 %temp_setup.sroa.29.0.i, 1
  %exitcond658.not.i = icmp eq i32 %inc.i.i.i.i.i, 64
  br i1 %exitcond658.not.i, label %for.inc.i.i.i.i, label %for.inc.i.i.i.i.i.if.end192.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.if.end192.i.i.i.i.i_crit_edge:  ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end192.i.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.i
  %exitcond659.not.i = icmp eq i32 %add196.i.i.i.i.i, 64
  br i1 %exitcond659.not.i, label %for.inc.i.i.i.i.for.inc.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.inc.i.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %temp_setup.sroa.61.4.i = phi i32 [ %temp_setup.sroa.61.0.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ], [ %temp_setup.sroa.61.3.i, %for.inc.i.i.i.i.for.inc.i.i.i_crit_edge ]
  %ret.1.i.i.i = phi i32 [ %ret.0333.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ], [ %ret.1.i.i.i.i.i, %for.inc.i.i.i.i.for.inc.i.i.i_crit_edge ]
  %exitcond660.not.i = icmp eq i32 %add.i.i.i, 64
  br i1 %exitcond660.not.i, label %for.inc.i.i.i.if.end_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.inc.i.i.i.if.end_crit_edge:                   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb2.i:                                         ; preds = %if.then
  %33 = add nsw i64 %conv9, -235000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 -210000001, i64 %33)
  %34 = icmp ult i64 %33, -210000001
  br i1 %34, label %sw.bb2.i.if.end_crit_edge, label %for.body.i.i18.preheader.i

sw.bb2.i.if.end_crit_edge:                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i.i18.preheader.i:                       ; preds = %sw.bb2.i
  %temp_setup.sroa.10.0.setup.sroa_idx533.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 1
  %temp_setup.sroa.13.0.setup.sroa_idx535.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 2
  %temp_setup.sroa.21.0.setup.sroa_idx540.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 3
  %temp_setup.sroa.29.0.setup.sroa_idx545.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 4
  %temp_setup.sroa.35.0.setup.sroa_idx548.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 5
  %temp_setup.sroa.38.0.setup.sroa_idx550.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 6
  %temp_setup.sroa.44.0.setup.sroa_idx555.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 7
  %temp_setup.sroa.46.0.setup.sroa_idx557.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 8
  %temp_setup.sroa.50.0.setup.sroa_idx560.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 9
  %temp_setup.sroa.53.0.setup.sroa_idx562.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 10
  %temp_setup.sroa.54.0.setup.sroa_idx564.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 11
  %temp_setup.sroa.56.0.setup.sroa_idx566.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 12
  %temp_setup.sroa.61.0.setup.sroa_idx571.i = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 13
  %temp_setup.sroa.66.0.setup.sroa_idx575.i = getelementptr inbounds i8, ptr %setup1, i32 84
  %35 = trunc i64 %rate to i32
  br label %for.body.i.i18.i

for.body.i.i18.i:                                 ; preds = %for.inc.i.i139.i.for.body.i.i18.i_crit_edge, %for.body.i.i18.preheader.i
  %temp_setup.sroa.0.0.i = phi i32 [ %add.i.i15.i, %for.inc.i.i139.i.for.body.i.i18.i_crit_edge ], [ 0, %for.body.i.i18.preheader.i ]
  %temp_setup.sroa.61.5.i = phi i32 [ %temp_setup.sroa.61.13.i, %for.inc.i.i139.i.for.body.i.i18.i_crit_edge ], [ 1200000000, %for.body.i.i18.preheader.i ]
  %ret.0333.i.i13.i = phi i32 [ %ret.1.i.i136.i, %for.inc.i.i139.i.for.body.i.i18.i_crit_edge ], [ -22, %for.body.i.i18.preheader.i ]
  %add.i.i15.i = add nuw nsw i32 %temp_setup.sroa.0.0.i, 1
  %div185.i.i125.i = udiv i32 %5, %add.i.i15.i
  %conv186.i.i126.i = zext i32 %div185.i.i125.i to i64
  %36 = add nsw i64 %conv186.i.i126.i, -25000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 29000001, i64 %36)
  %37 = icmp ult i64 %36, 29000001
  br i1 %37, label %if.end181.i.i.i.i.preheader, label %for.body.i.i18.i.for.inc.i.i139.i_crit_edge

for.body.i.i18.i.for.inc.i.i139.i_crit_edge:      ; preds = %for.body.i.i18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i139.i

if.end181.i.i.i.i.preheader:                      ; preds = %for.body.i.i18.i
  %div175.i.i.i.i = udiv i32 %5, %add.i.i15.i
  %conv176.i.i.i.i = zext i32 %div175.i.i.i.i to i64
  br label %if.end181.i.i.i.i

if.end181.i.i.i.i:                                ; preds = %for.inc.critedge.i.i.i.i.if.end181.i.i.i.i_crit_edge, %if.end181.i.i.i.i.preheader
  %temp_setup.sroa.10.0.i = phi i32 [ %add185.i.i.i.i, %for.inc.critedge.i.i.i.i.if.end181.i.i.i.i_crit_edge ], [ 0, %if.end181.i.i.i.i.preheader ]
  %temp_setup.sroa.61.6.i = phi i32 [ %temp_setup.sroa.61.12642.i, %for.inc.critedge.i.i.i.i.if.end181.i.i.i.i_crit_edge ], [ %temp_setup.sroa.61.5.i, %if.end181.i.i.i.i.preheader ]
  %add185.i.i.i.i = add nuw nsw i32 %temp_setup.sroa.10.0.i, 1
  %38 = shl nuw i32 %add185.i.i.i.i, 1
  %mul183.i.i.i.i = zext i32 %38 to i64
  %mul187.i.i.i.i = mul nuw i64 %conv176.i.i.i.i, %mul183.i.i.i.i
  %39 = add i64 %mul187.i.i.i.i, -2400000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 -800000001, i64 %39)
  %40 = icmp ult i64 %39, -800000001
  br i1 %40, label %if.end181.i.i.i.i.for.inc.critedge.i.i.i.i_crit_edge, label %for.body.i.i157.preheader.i

if.end181.i.i.i.i.for.inc.critedge.i.i.i.i_crit_edge: ; preds = %if.end181.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.critedge.i.i.i.i

for.body.i.i157.preheader.i:                      ; preds = %if.end181.i.i.i.i
  %conv181.i.i263.i = trunc i64 %mul187.i.i.i.i to i32
  br label %for.body.i.i157.i

for.body.i.i157.i:                                ; preds = %for.inc.i.i528.i.for.body.i.i157.i_crit_edge, %for.body.i.i157.preheader.i
  %temp_setup.sroa.13.1.i = phi i32 [ %add.i.i153.i, %for.inc.i.i528.i.for.body.i.i157.i_crit_edge ], [ 0, %for.body.i.i157.preheader.i ]
  %temp_setup.sroa.61.7.i = phi i32 [ %temp_setup.sroa.61.11.i, %for.inc.i.i528.i.for.body.i.i157.i_crit_edge ], [ %temp_setup.sroa.61.6.i, %for.body.i.i157.preheader.i ]
  %ret.0333.i.i151.i = phi i32 [ %ret.1.i.i525.i, %for.inc.i.i528.i.for.body.i.i157.i_crit_edge ], [ -22, %for.body.i.i157.preheader.i ]
  %add.i.i153.i = add nuw nsw i32 %temp_setup.sroa.13.1.i, 1
  %div185.i.i264.i = udiv i32 %conv181.i.i263.i, %add.i.i153.i
  %conv186.i.i265.i = zext i32 %div185.i.i264.i to i64
  %41 = add nsw i64 %conv186.i.i265.i, -54000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 21000001, i64 %41)
  %42 = icmp ult i64 %41, 21000001
  br i1 %42, label %for.body.i.i.i272.i.preheader, label %for.body.i.i157.i.for.inc.i.i528.i_crit_edge

for.body.i.i157.i.for.inc.i.i528.i_crit_edge:     ; preds = %for.body.i.i157.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i528.i

for.body.i.i.i272.i.preheader:                    ; preds = %for.body.i.i157.i
  %div184.i.i.i.i386.i = udiv i32 %conv181.i.i263.i, %add.i.i153.i
  %conv185.i.i.i.i387.i = zext i32 %div184.i.i.i.i386.i to i64
  %mul195.i.i.i.i392.i = shl nuw nsw i64 %conv185.i.i.i.i387.i, 1
  br label %for.body.i.i.i272.i

for.body.i.i.i272.i:                              ; preds = %for.inc.i.i.i524.i.for.body.i.i.i272.i_crit_edge, %for.body.i.i.i272.i.preheader
  %temp_setup.sroa.21.1.i = phi i32 [ %add196.i.i.i.i393.i, %for.inc.i.i.i524.i.for.body.i.i.i272.i_crit_edge ], [ 0, %for.body.i.i.i272.i.preheader ]
  %temp_setup.sroa.61.8.i = phi i32 [ %temp_setup.sroa.61.10.i, %for.inc.i.i.i524.i.for.body.i.i.i272.i_crit_edge ], [ %temp_setup.sroa.61.7.i, %for.body.i.i.i272.i.preheader ]
  %add196.i.i.i.i393.i = add nuw nsw i32 %temp_setup.sroa.21.1.i, 1
  %conv197.i.i.i.i394.i = zext i32 %add196.i.i.i.i393.i to i64
  %mul199.i.i.i.i395.i = mul nuw i64 %mul195.i.i.i.i392.i, %conv197.i.i.i.i394.i
  %43 = add i64 %mul199.i.i.i.i395.i, -1200000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 1200000001, i64 %43)
  %44 = icmp ult i64 %43, 1200000001
  %conv430.i.i.i.i505.i = trunc i64 %mul199.i.i.i.i395.i to i32
  br label %if.end192.i.i.i.i396.i

if.end192.i.i.i.i396.i:                           ; preds = %for.inc.i.i.i.i521.i.if.end192.i.i.i.i396.i_crit_edge, %for.body.i.i.i272.i
  %temp_setup.sroa.29.1.i = phi i32 [ 0, %for.body.i.i.i272.i ], [ %inc.i.i.i.i519.i, %for.inc.i.i.i.i521.i.if.end192.i.i.i.i396.i_crit_edge ]
  %temp_setup.sroa.61.9.i = phi i32 [ %temp_setup.sroa.61.8.i, %for.body.i.i.i272.i ], [ %temp_setup.sroa.61.10.i, %for.inc.i.i.i.i521.i.if.end192.i.i.i.i396.i_crit_edge ]
  %ret.0720.i.i.i.i273.i = phi i32 [ -22, %for.body.i.i.i272.i ], [ %ret.1.i.i.i.i518.i, %for.inc.i.i.i.i521.i.if.end192.i.i.i.i396.i_crit_edge ]
  br i1 %44, label %if.then428.i.i.i.i508.i, label %if.end192.i.i.i.i396.i.for.inc.i.i.i.i521.i_crit_edge

if.end192.i.i.i.i396.i.for.inc.i.i.i.i521.i_crit_edge: ; preds = %if.end192.i.i.i.i396.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i.i521.i

if.then428.i.i.i.i508.i:                          ; preds = %if.end192.i.i.i.i396.i
  %add211.i.i.i.i397.i = shl nuw i32 %temp_setup.sroa.29.1.i, 1
  %mul212.i.i.i.i398.i = add nuw nsw i32 %add211.i.i.i.i397.i, 2
  %div434.i.i.i.i506.i = udiv i32 %conv430.i.i.i.i505.i, %mul212.i.i.i.i398.i
  %conv.i.i.i.i.i511.i = sub i32 %div434.i.i.i.i506.i, %35
  %45 = tail call i32 @llvm.abs.i32(i32 %temp_setup.sroa.61.9.i, i1 false) #5
  %46 = tail call i32 @llvm.abs.i32(i32 %conv.i.i.i.i.i511.i, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %46)
  %cmp12.i.i.i.i.i512.i = icmp sgt i32 %45, %46
  br i1 %cmp12.i.i.i.i.i512.i, label %if.then.i.i.i.i.i515.i, label %if.then428.i.i.i.i508.i.for.inc.i.i.i.i521.i_crit_edge

if.then428.i.i.i.i508.i.for.inc.i.i.i.i521.i_crit_edge: ; preds = %if.then428.i.i.i.i508.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i.i521.i

if.then.i.i.i.i.i515.i:                           ; preds = %if.then428.i.i.i.i508.i
  %conv435.i.i.i.i507.i = zext i32 %div434.i.i.i.i506.i to i64
  %47 = ptrtoint ptr %setup1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %temp_setup.sroa.0.0.i, ptr %setup1, align 8
  %48 = ptrtoint ptr %temp_setup.sroa.10.0.setup.sroa_idx533.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %temp_setup.sroa.10.0.i, ptr %temp_setup.sroa.10.0.setup.sroa_idx533.i, align 4
  %49 = ptrtoint ptr %temp_setup.sroa.13.0.setup.sroa_idx535.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %temp_setup.sroa.13.1.i, ptr %temp_setup.sroa.13.0.setup.sroa_idx535.i, align 8
  %50 = ptrtoint ptr %temp_setup.sroa.21.0.setup.sroa_idx540.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %temp_setup.sroa.21.1.i, ptr %temp_setup.sroa.21.0.setup.sroa_idx540.i, align 4
  %51 = ptrtoint ptr %temp_setup.sroa.29.0.setup.sroa_idx545.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %temp_setup.sroa.29.1.i, ptr %temp_setup.sroa.29.0.setup.sroa_idx545.i, align 8
  %52 = ptrtoint ptr %temp_setup.sroa.35.0.setup.sroa_idx548.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %temp_setup.sroa.35.0.setup.sroa_idx548.i, align 4
  %53 = ptrtoint ptr %temp_setup.sroa.38.0.setup.sroa_idx550.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %mul187.i.i.i.i, ptr %temp_setup.sroa.38.0.setup.sroa_idx550.i, align 8
  %54 = ptrtoint ptr %temp_setup.sroa.44.0.setup.sroa_idx555.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %mul199.i.i.i.i395.i, ptr %temp_setup.sroa.44.0.setup.sroa_idx555.i, align 8
  %55 = ptrtoint ptr %temp_setup.sroa.46.0.setup.sroa_idx557.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv435.i.i.i.i507.i, ptr %temp_setup.sroa.46.0.setup.sroa_idx557.i, align 8
  %56 = ptrtoint ptr %temp_setup.sroa.50.0.setup.sroa_idx560.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv9, ptr %temp_setup.sroa.50.0.setup.sroa_idx560.i, align 8
  %57 = ptrtoint ptr %temp_setup.sroa.53.0.setup.sroa_idx562.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv186.i.i126.i, ptr %temp_setup.sroa.53.0.setup.sroa_idx562.i, align 8
  %58 = ptrtoint ptr %temp_setup.sroa.54.0.setup.sroa_idx564.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv186.i.i265.i, ptr %temp_setup.sroa.54.0.setup.sroa_idx564.i, align 8
  %59 = ptrtoint ptr %temp_setup.sroa.56.0.setup.sroa_idx566.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %rate, ptr %temp_setup.sroa.56.0.setup.sroa_idx566.i, align 8
  %60 = ptrtoint ptr %temp_setup.sroa.61.0.setup.sroa_idx571.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv.i.i.i.i.i511.i, ptr %temp_setup.sroa.61.0.setup.sroa_idx571.i, align 8
  %61 = ptrtoint ptr %temp_setup.sroa.66.0.setup.sroa_idx575.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %temp_setup.sroa.66.0.setup.sroa_idx575.i, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %conv435.i.i.i.i507.i, i64 %rate)
  %cmp17.i.i.i.i.i514.i = icmp eq i64 %conv435.i.i.i.i507.i, %rate
  br i1 %cmp17.i.i.i.i.i514.i, label %if.then.i.i.i.i.i515.i.if.end_crit_edge, label %if.then.i.i.i.i.i515.i.for.inc.i.i.i.i521.i_crit_edge

if.then.i.i.i.i.i515.i.for.inc.i.i.i.i521.i_crit_edge: ; preds = %if.then.i.i.i.i.i515.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i.i521.i

if.then.i.i.i.i.i515.i.if.end_crit_edge:          ; preds = %if.then.i.i.i.i.i515.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.inc.i.i.i.i521.i:                             ; preds = %if.then.i.i.i.i.i515.i.for.inc.i.i.i.i521.i_crit_edge, %if.then428.i.i.i.i508.i.for.inc.i.i.i.i521.i_crit_edge, %if.end192.i.i.i.i396.i.for.inc.i.i.i.i521.i_crit_edge
  %temp_setup.sroa.61.10.i = phi i32 [ %conv.i.i.i.i.i511.i, %if.then.i.i.i.i.i515.i.for.inc.i.i.i.i521.i_crit_edge ], [ %temp_setup.sroa.61.9.i, %if.then428.i.i.i.i508.i.for.inc.i.i.i.i521.i_crit_edge ], [ %temp_setup.sroa.61.9.i, %if.end192.i.i.i.i396.i.for.inc.i.i.i.i521.i_crit_edge ]
  %ret.1.i.i.i.i518.i = phi i32 [ -1, %if.then.i.i.i.i.i515.i.for.inc.i.i.i.i521.i_crit_edge ], [ -1, %if.then428.i.i.i.i508.i.for.inc.i.i.i.i521.i_crit_edge ], [ %ret.0720.i.i.i.i273.i, %if.end192.i.i.i.i396.i.for.inc.i.i.i.i521.i_crit_edge ]
  %inc.i.i.i.i519.i = add nuw nsw i32 %temp_setup.sroa.29.1.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i.i.i.i519.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.i.i524.i, label %for.inc.i.i.i.i521.i.if.end192.i.i.i.i396.i_crit_edge

for.inc.i.i.i.i521.i.if.end192.i.i.i.i396.i_crit_edge: ; preds = %for.inc.i.i.i.i521.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end192.i.i.i.i396.i

for.inc.i.i.i524.i:                               ; preds = %for.inc.i.i.i.i521.i
  %exitcond654.not.i = icmp eq i32 %add196.i.i.i.i393.i, 64
  br i1 %exitcond654.not.i, label %for.inc.i.i.i524.i.for.inc.i.i528.i_crit_edge, label %for.inc.i.i.i524.i.for.body.i.i.i272.i_crit_edge

for.inc.i.i.i524.i.for.body.i.i.i272.i_crit_edge: ; preds = %for.inc.i.i.i524.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i272.i

for.inc.i.i.i524.i.for.inc.i.i528.i_crit_edge:    ; preds = %for.inc.i.i.i524.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i528.i

for.inc.i.i528.i:                                 ; preds = %for.inc.i.i.i524.i.for.inc.i.i528.i_crit_edge, %for.body.i.i157.i.for.inc.i.i528.i_crit_edge
  %temp_setup.sroa.61.11.i = phi i32 [ %temp_setup.sroa.61.7.i, %for.body.i.i157.i.for.inc.i.i528.i_crit_edge ], [ %temp_setup.sroa.61.10.i, %for.inc.i.i.i524.i.for.inc.i.i528.i_crit_edge ]
  %ret.1.i.i525.i = phi i32 [ %ret.0333.i.i151.i, %for.body.i.i157.i.for.inc.i.i528.i_crit_edge ], [ %ret.1.i.i.i.i518.i, %for.inc.i.i.i524.i.for.inc.i.i528.i_crit_edge ]
  %exitcond655.not.i = icmp eq i32 %add.i.i153.i, 64
  br i1 %exitcond655.not.i, label %for.inc.i.i528.i.for.inc.critedge.i.i.i.i_crit_edge, label %for.inc.i.i528.i.for.body.i.i157.i_crit_edge

for.inc.i.i528.i.for.body.i.i157.i_crit_edge:     ; preds = %for.inc.i.i528.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i157.i

for.inc.i.i528.i.for.inc.critedge.i.i.i.i_crit_edge: ; preds = %for.inc.i.i528.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.critedge.i.i.i.i

for.inc.critedge.i.i.i.i:                         ; preds = %for.inc.i.i528.i.for.inc.critedge.i.i.i.i_crit_edge, %if.end181.i.i.i.i.for.inc.critedge.i.i.i.i_crit_edge
  %retval.0.i529643.i = phi i32 [ -22, %if.end181.i.i.i.i.for.inc.critedge.i.i.i.i_crit_edge ], [ %ret.1.i.i525.i, %for.inc.i.i528.i.for.inc.critedge.i.i.i.i_crit_edge ]
  %temp_setup.sroa.61.12642.i = phi i32 [ %temp_setup.sroa.61.6.i, %if.end181.i.i.i.i.for.inc.critedge.i.i.i.i_crit_edge ], [ %temp_setup.sroa.61.11.i, %for.inc.i.i528.i.for.inc.critedge.i.i.i.i_crit_edge ]
  %exitcond656.not.i = icmp eq i32 %add185.i.i.i.i, 64
  br i1 %exitcond656.not.i, label %for.inc.critedge.i.i.i.i.for.inc.i.i139.i_crit_edge, label %for.inc.critedge.i.i.i.i.if.end181.i.i.i.i_crit_edge

for.inc.critedge.i.i.i.i.if.end181.i.i.i.i_crit_edge: ; preds = %for.inc.critedge.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end181.i.i.i.i

for.inc.critedge.i.i.i.i.for.inc.i.i139.i_crit_edge: ; preds = %for.inc.critedge.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i139.i

for.inc.i.i139.i:                                 ; preds = %for.inc.critedge.i.i.i.i.for.inc.i.i139.i_crit_edge, %for.body.i.i18.i.for.inc.i.i139.i_crit_edge
  %temp_setup.sroa.61.13.i = phi i32 [ %temp_setup.sroa.61.5.i, %for.body.i.i18.i.for.inc.i.i139.i_crit_edge ], [ %temp_setup.sroa.61.12642.i, %for.inc.critedge.i.i.i.i.for.inc.i.i139.i_crit_edge ]
  %ret.1.i.i136.i = phi i32 [ %ret.0333.i.i13.i, %for.body.i.i18.i.for.inc.i.i139.i_crit_edge ], [ %retval.0.i529643.i, %for.inc.critedge.i.i.i.i.for.inc.i.i139.i_crit_edge ]
  %exitcond657.not.i = icmp eq i32 %add.i.i15.i, 8
  br i1 %exitcond657.not.i, label %for.inc.i.i139.i.if.end_crit_edge, label %for.inc.i.i139.i.for.body.i.i18.i_crit_edge

for.inc.i.i139.i.for.body.i.i18.i_crit_edge:      ; preds = %for.inc.i.i139.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i18.i

for.inc.i.i139.i.if.end_crit_edge:                ; preds = %for.inc.i.i139.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %for.inc.i.i139.i.if.end_crit_edge, %if.then.i.i.i.i.i515.i.if.end_crit_edge, %sw.bb2.i.if.end_crit_edge, %for.inc.i.i.i.if.end_crit_edge, %if.then.i.i.i.i.i.i.if.end_crit_edge, %sw.bb1.i.if.end_crit_edge, %if.then.i, %sw.bb.i.if.end_crit_edge, %if.then.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %ret.0 = phi i32 [ %call7, %sw.epilog.if.end_crit_edge ], [ -22, %if.then.if.end_crit_edge ], [ 0, %if.then.i ], [ -22, %sw.bb.i.if.end_crit_edge ], [ -22, %sw.bb1.i.if.end_crit_edge ], [ -22, %sw.bb2.i.if.end_crit_edge ], [ 0, %if.then.i.i.i.i.i.i.if.end_crit_edge ], [ %ret.1.i.i.i, %for.inc.i.i.i.if.end_crit_edge ], [ 0, %if.then.i.i.i.i.i515.i.if.end_crit_edge ], [ %ret.1.i.i136.i, %for.inc.i.i139.i.if.end_crit_edge ]
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %62 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call, ptr %best_parent_hw, align 4
  %63 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %req, align 4
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %65 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %best_parent_rate, align 4
  %fout = getelementptr inbounds %struct.clk_sscg_pll, ptr %hw, i32 0, i32 3, i32 8
  %66 = ptrtoint ptr %fout to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %fout, align 8
  %conv12 = trunc i64 %67 to i32
  store i32 %conv12, ptr %req, align 4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_determine_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_imx_clk_hw_sscg_pll, !1, !"__ksymtab_imx_clk_hw_sscg_pll", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-sscg-pll.c", i32 541, i32 1}
!2 = !{ptr @clk_sscg_pll_ops, !3, !"clk_sscg_pll_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-sscg-pll.c", i32 489, i32 29}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-sscg-pll.c", i32 106, i32 10}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 4038128}
!16 = !{i64 4037710}
!17 = !{i64 2152571282}
!18 = !{i64 2152571736}
!19 = !{i64 2152822416}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148953094, i64 2148953374, i64 2148953708, i64 2148954042}
!22 = !{i64 2153091239}
!23 = !{i64 2153135929}
!24 = !{i64 2153089410}
!25 = !{i64 2152834499}
!26 = !{i64 2152875080}
