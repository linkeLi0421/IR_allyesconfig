; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-pfdv2.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-pfdv2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+imx_clk_hw_pfdv2\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_clk_hw_pfdv2\09\09\09\09"
module asm "\09.long\09__crc_imx_clk_hw_pfdv2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_clk_hw_pfdv2:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_clk_hw_pfdv2\22\09\09\09\09\09"
module asm "__kstrtabns_imx_clk_hw_pfdv2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pfdv2 = type { %struct.clk_hw, ptr, i8, i8, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/imx/clk-pfdv2.c\00", [36 x i8] zeroinitializer }, align 32
@clk_pfdv2_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pfdv2_enable, ptr @clk_pfdv2_disable, ptr @clk_pfdv2_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pfdv2_recalc_rate, ptr null, ptr @clk_pfdv2_determine_rate, ptr null, ptr null, ptr @clk_pfdv2_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_imx_clk_hw_pfdv2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_clk_hw_pfdv2 = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_clk_hw_pfdv2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_clk_hw_pfdv2 to i32), ptr @__kstrtab_imx_clk_hw_pfdv2, ptr @__kstrtabns_imx_clk_hw_pfdv2 }, section "___ksymtab_gpl+imx_clk_hw_pfdv2", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pfd_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pfd_lock\00", [23 x i8] zeroinitializer }, align 32
@clk_pfdv2_recalc_rate.__UNIQUE_ID_ddebug167 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mxc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clk_pfdv2_recalc_rate\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"clk_pfdv2: %s invalid pfd frac value 0\0A\00", [56 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 211, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"clk_pfdv2_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 194, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [9 x i8] c"pfd_lock\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 41, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [31 x i8] c"../drivers/clk/imx/clk-pfdv2.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 90, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_imx_clk_hw_pfdv2, ptr @.str, ptr @clk_pfdv2_ops, ptr @pfd_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pfdv2_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfd_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_pfdv2(i32 noundef %type, ptr noundef %name, ptr noundef %parent_name, ptr noundef %reg, i8 noundef zeroext %idx) #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %idx)
  %cmp = icmp ugt i8 %idx, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !23

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 20) #9
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %reg24 = getelementptr inbounds %struct.clk_pfdv2, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %reg24 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %reg, ptr %reg24, align 4
  %add = shl i8 %idx, 3
  %sub = or i8 %add, 7
  %gate_bit = getelementptr inbounds %struct.clk_pfdv2, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %gate_bit to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %sub, ptr %gate_bit, align 8
  %sub29 = or i8 %add, 6
  %vld_bit = getelementptr inbounds %struct.clk_pfdv2, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %vld_bit to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %sub29, ptr %vld_bit, align 1
  %frac_off = getelementptr inbounds %struct.clk_pfdv2, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %frac_off to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %add, ptr %frac_off, align 2
  %8 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @clk_pfdv2_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %10 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %11 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %num_parents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp35 = icmp eq i32 %type, 0
  %spec.select = select i1 %cmp35, i32 5, i32 1
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select, ptr %12, align 4
  %init41 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %init41 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %init, ptr %init41, align 8
  %call43 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end23.cleanup_crit_edge, label %if.then45

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %15 = inttoptr i32 %call43 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end23.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %15, %if.then45 ], [ %call7.i.i, %if.end23.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pfdv2_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pfd_lock) #6
  %reg = getelementptr inbounds %struct.clk_pfdv2, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !24
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %gate_bit = getelementptr inbounds %struct.clk_pfdv2, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %gate_bit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gate_bit, align 4
  %conv8 = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv8
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pfd_lock, i32 noundef %call3) #6
  %call.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call.i, 1000000
  %vld_bit.i = getelementptr inbounds %struct.clk_pfdv2, ptr %hw, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %entry
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !24
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  %13 = ptrtoint ptr %vld_bit.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vld_bit.i, align 1
  %conv.i = zext i8 %14 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.clk_pfdv2_wait.exit_crit_edge

for.cond.i.clk_pfdv2_wait.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_pfdv2_wait.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call13.i = tail call i64 @ktime_get() #6
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then17.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !24
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  br label %clk_pfdv2_wait.exit

clk_pfdv2_wait.exit:                              ; preds = %if.then17.i, %for.cond.i.clk_pfdv2_wait.exit_crit_edge
  %val.0.i = phi i32 [ %18, %if.then17.i ], [ %12, %for.cond.i.clk_pfdv2_wait.exit_crit_edge ]
  %19 = ptrtoint ptr %vld_bit.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vld_bit.i, align 1
  %conv30.i = zext i8 %20 to i32
  %shl31.i = shl nuw i32 1, %conv30.i
  %and32.i = and i32 %shl31.i, %val.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  %cond.i = select i1 %tobool33.not.i, i32 -110, i32 0
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_pfdv2_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pfd_lock) #6
  %reg = getelementptr inbounds %struct.clk_pfdv2, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !24
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %gate_bit = getelementptr inbounds %struct.clk_pfdv2, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %gate_bit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gate_bit, align 4
  %conv8 = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv8
  %or = or i32 %shl, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pfd_lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pfdv2_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.clk_pfdv2, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !24
  %gate_bit = getelementptr inbounds %struct.clk_pfdv2, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %gate_bit to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %gate_bit, align 4
  %conv = zext i8 %4 to i32
  %5 = xor i32 %2, -1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = lshr i32 %6, %conv
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pfdv2_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.clk_pfdv2, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !24
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %frac_off = getelementptr inbounds %struct.clk_pfdv2, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %frac_off to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %frac_off, align 2
  %conv3 = zext i8 %5 to i32
  %shr = lshr i32 %3, %conv3
  %6 = trunc i32 %shr to i8
  %conv4 = and i8 %6, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4)
  %tobool.not = icmp eq i8 %conv4, 0
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_pfdv2_recalc_rate.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_pfdv2_recalc_rate, %if.then10)) #6
          to label %cleanup [label %if.then10], !srcloc !28

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_pfdv2_recalc_rate.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.4, ptr noundef %call11) #6
  br label %cleanup

if.end12:                                         ; preds = %entry
  %conv = zext i32 %parent_rate to i64
  %mul = mul nuw nsw i64 %conv, 18
  %conv13 = zext i8 %conv4 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp187 = icmp ult i64 %mul, 4294967296
  br i1 %cmp187, label %if.then195, label %if.else201, !prof !29

if.then195:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %conv196 = trunc i64 %mul to i32
  %div199 = udiv i32 %conv196, %conv13
  br label %cleanup

if.else201:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv13, i64 %mul) #10, !srcloc !30
  %asmresult1.i = extractvalue { i64, i64 } %7, 1
  %extract.t320 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else201, %if.then195, %if.then10, %do.body
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %do.body ], [ %div199, %if.then195 ], [ %extract.t320, %if.else201 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pfdv2_determine_rate(ptr nocapture noundef readnone %hw, ptr nocapture noundef %req) #4 align 64 {
entry:
  %parent_rates = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %parent_rates) #6
  %0 = getelementptr inbounds [3 x i32], ptr %parent_rates, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i32], ptr %parent_rates, i32 0, i32 2
  %2 = ptrtoint ptr %parent_rates to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 480000000, ptr %parent_rates, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 528000000, ptr %0, align 4
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %best_parent_rate, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %1, align 4
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %req, align 4
  %div636 = lshr i32 %8, 1
  %conv5 = zext i32 %div636 to i64
  %9 = load i32, ptr %parent_rates, align 4
  %conv = zext i32 %9 to i64
  %mul = mul nuw nsw i64 %conv, 18
  %add = add nuw nsw i64 %mul, %conv5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp176 = icmp ult i64 %add, 4294967296
  br i1 %cmp176, label %if.then180, label %if.else186, !prof !29

if.then180:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv181 = trunc i64 %add to i32
  %div184 = udiv i32 %conv181, %8
  br label %if.end190

if.else186:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %add) #10, !srcloc !30
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  %extract.t716 = trunc i64 %asmresult1.i to i32
  br label %if.end190

if.end190:                                        ; preds = %if.else186, %if.then180
  %tmp.0.off0 = phi i32 [ %div184, %if.then180 ], [ %extract.t716, %if.else186 ]
  %conv193 = and i32 %tmp.0.off0, 255
  %11 = call i32 @llvm.umin.i32(i32 %conv193, i32 35)
  %12 = call i32 @llvm.umax.i32(i32 %11, i32 12)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp409 = icmp ult i64 %mul, 4294967296
  br i1 %cmp409, label %if.then417, label %if.else423, !prof !29

if.then417:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  %conv418 = trunc i64 %mul to i32
  %div421 = udiv i32 %conv418, %12
  %conv422 = zext i32 %div421 to i64
  br label %if.end427

if.else423:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %mul) #10, !srcloc !30
  %asmresult1.i664 = extractvalue { i64, i64 } %13, 1
  br label %if.end427

if.end427:                                        ; preds = %if.else423, %if.then417
  %tmp.1 = phi i64 [ %conv422, %if.then417 ], [ %asmresult1.i664, %if.else423 ]
  %arrayidx.1 = getelementptr inbounds [3 x i32], ptr %parent_rates, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1, align 4
  %conv.1 = zext i32 %15 to i64
  %mul.1 = mul nuw nsw i64 %conv.1, 18
  %add.1 = add nuw nsw i64 %mul.1, %conv5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.1)
  %cmp176.1 = icmp ult i64 %add.1, 4294967296
  br i1 %cmp176.1, label %if.then180.1, label %if.else186.1, !prof !29

if.else186.1:                                     ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %add.1) #10, !srcloc !30
  %asmresult1.i.1 = extractvalue { i64, i64 } %16, 1
  %extract.t716.1 = trunc i64 %asmresult1.i.1 to i32
  br label %if.end190.1

if.then180.1:                                     ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #8
  %conv181.1 = trunc i64 %add.1 to i32
  %div184.1 = udiv i32 %conv181.1, %8
  br label %if.end190.1

if.end190.1:                                      ; preds = %if.then180.1, %if.else186.1
  %tmp.0.off0.1 = phi i32 [ %div184.1, %if.then180.1 ], [ %extract.t716.1, %if.else186.1 ]
  %conv193.1 = and i32 %tmp.0.off0.1, 255
  %17 = call i32 @llvm.umin.i32(i32 %conv193.1, i32 35)
  %18 = call i32 @llvm.umax.i32(i32 %17, i32 12)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.1)
  %cmp409.1 = icmp ult i64 %mul.1, 4294967296
  br i1 %cmp409.1, label %if.then417.1, label %if.else423.1, !prof !29

if.else423.1:                                     ; preds = %if.end190.1
  call void @__sanitizer_cov_trace_pc() #8
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %mul.1) #10, !srcloc !30
  %asmresult1.i664.1 = extractvalue { i64, i64 } %19, 1
  br label %if.end427.1

if.then417.1:                                     ; preds = %if.end190.1
  call void @__sanitizer_cov_trace_pc() #8
  %conv418.1 = trunc i64 %mul.1 to i32
  %div421.1 = udiv i32 %conv418.1, %18
  %conv422.1 = zext i32 %div421.1 to i64
  br label %if.end427.1

if.end427.1:                                      ; preds = %if.then417.1, %if.else423.1
  %tmp.1.1 = phi i64 [ %conv422.1, %if.then417.1 ], [ %asmresult1.i664.1, %if.else423.1 ]
  %arrayidx.2 = getelementptr inbounds [3 x i32], ptr %parent_rates, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.2, align 4
  %conv.2 = zext i32 %21 to i64
  %mul.2 = mul nuw nsw i64 %conv.2, 18
  %add.2 = add nuw nsw i64 %mul.2, %conv5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.2)
  %cmp176.2 = icmp ult i64 %add.2, 4294967296
  br i1 %cmp176.2, label %if.then180.2, label %if.else186.2, !prof !29

if.else186.2:                                     ; preds = %if.end427.1
  call void @__sanitizer_cov_trace_pc() #8
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %add.2) #10, !srcloc !30
  %asmresult1.i.2 = extractvalue { i64, i64 } %22, 1
  %extract.t716.2 = trunc i64 %asmresult1.i.2 to i32
  br label %if.end190.2

if.then180.2:                                     ; preds = %if.end427.1
  call void @__sanitizer_cov_trace_pc() #8
  %conv181.2 = trunc i64 %add.2 to i32
  %div184.2 = udiv i32 %conv181.2, %8
  br label %if.end190.2

if.end190.2:                                      ; preds = %if.then180.2, %if.else186.2
  %tmp.0.off0.2 = phi i32 [ %div184.2, %if.then180.2 ], [ %extract.t716.2, %if.else186.2 ]
  %conv193.2 = and i32 %tmp.0.off0.2, 255
  %23 = call i32 @llvm.umin.i32(i32 %conv193.2, i32 35)
  %24 = call i32 @llvm.umax.i32(i32 %23, i32 12)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.2)
  %cmp409.2 = icmp ult i64 %mul.2, 4294967296
  br i1 %cmp409.2, label %if.then417.2, label %if.else423.2, !prof !29

if.else423.2:                                     ; preds = %if.end190.2
  call void @__sanitizer_cov_trace_pc() #8
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %mul.2) #10, !srcloc !30
  %asmresult1.i664.2 = extractvalue { i64, i64 } %25, 1
  br label %if.end427.2

if.then417.2:                                     ; preds = %if.end190.2
  call void @__sanitizer_cov_trace_pc() #8
  %conv418.2 = trunc i64 %mul.2 to i32
  %div421.2 = udiv i32 %conv418.2, %24
  %conv422.2 = zext i32 %div421.2 to i64
  br label %if.end427.2

if.end427.2:                                      ; preds = %if.then417.2, %if.else423.2
  %tmp.1.2 = phi i64 [ %conv422.2, %if.then417.2 ], [ %asmresult1.i664.2, %if.else423.2 ]
  %conv37 = zext i32 %8 to i64
  %sub431.1 = sub i64 %tmp.1.1, %conv37
  %26 = tail call i64 @llvm.abs.i64(i64 %sub431.1, i1 false)
  %sub431 = sub i64 %tmp.1, %conv37
  %27 = tail call i64 @llvm.abs.i64(i64 %sub431, i1 false)
  %sub442 = xor i32 %8, -1
  %28 = tail call i32 @llvm.abs.i32(i32 %sub442, i1 false)
  %conv451 = sext i32 %28 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %conv451)
  %cmp452 = icmp slt i64 %27, %conv451
  %conv455 = trunc i64 %tmp.1 to i32
  %spec.select714 = select i1 %cmp452, i32 %conv455, i32 -1
  %sub442.1 = sub i32 %spec.select714, %8
  %29 = tail call i32 @llvm.abs.i32(i32 %sub442.1, i1 false)
  %conv451.1 = sext i32 %29 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %conv451.1)
  %cmp452.1 = icmp slt i64 %26, %conv451.1
  %conv455.1 = trunc i64 %tmp.1.1 to i32
  %spec.select714.1 = select i1 %cmp452.1, i32 %conv455.1, i32 %spec.select714
  %spec.select = select i1 %cmp452, i32 %9, i32 %5
  %spec.select.1 = select i1 %cmp452.1, i32 %15, i32 %spec.select
  %sub431.2 = sub i64 %tmp.1.2, %conv37
  %30 = tail call i64 @llvm.abs.i64(i64 %sub431.2, i1 false)
  %sub442.2 = sub i32 %spec.select714.1, %8
  %31 = tail call i32 @llvm.abs.i32(i32 %sub442.2, i1 false)
  %conv451.2 = sext i32 %31 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %conv451.2)
  %cmp452.2 = icmp slt i64 %30, %conv451.2
  %conv455.2 = trunc i64 %tmp.1.2 to i32
  %spec.select.2 = select i1 %cmp452.2, i32 %21, i32 %spec.select.1
  %spec.select714.2 = select i1 %cmp452.2, i32 %conv455.2, i32 %spec.select714.1
  %32 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.select.2, ptr %best_parent_rate, align 4
  %33 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select714.2, ptr %req, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %parent_rates) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pfdv2_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg.i = getelementptr inbounds %struct.clk_pfdv2, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !24
  %gate_bit.i = getelementptr inbounds %struct.clk_pfdv2, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %gate_bit.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %gate_bit.i, align 4
  %conv.i = zext i8 %4 to i32
  %5 = xor i32 %2, -1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %7 = shl nuw i32 1, %conv.i
  %8 = and i32 %7, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pfd_lock) #6
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !24
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %13 = ptrtoint ptr %gate_bit.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %gate_bit.i, align 4
  %conv8.i = zext i8 %14 to i32
  %shl.i = shl nuw i32 1, %conv8.i
  %or.i = or i32 %shl.i, %12
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #6, !srcloc !25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pfd_lock, i32 noundef %call3.i) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %mul = mul nuw nsw i64 %conv, 18
  %div321 = lshr i32 %rate, 1
  %conv5 = zext i32 %div321 to i64
  %add = add nuw nsw i64 %mul, %conv5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp179 = icmp ult i64 %add, 4294967296
  br i1 %cmp179, label %if.then183, label %if.else189, !prof !29

if.then183:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %conv184 = trunc i64 %add to i32
  %div187 = udiv i32 %conv184, %rate
  br label %if.end193

if.else189:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate, i64 %add) #10, !srcloc !30
  %asmresult1.i = extractvalue { i64, i64 } %18, 1
  %extract.t351 = trunc i64 %asmresult1.i to i32
  br label %if.end193

if.end193:                                        ; preds = %if.else189, %if.then183
  %tmp1.0.off0 = phi i32 [ %div187, %if.then183 ], [ %extract.t351, %if.else189 ]
  %conv196 = and i32 %tmp1.0.off0, 255
  %19 = tail call i32 @llvm.umin.i32(i32 %conv196, i32 35)
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 12)
  %call212 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pfd_lock) #6
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !24
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %frac_off = getelementptr inbounds %struct.clk_pfdv2, ptr %hw, i32 0, i32 4
  %25 = ptrtoint ptr %frac_off to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %frac_off, align 2
  %conv217 = zext i8 %26 to i32
  %shl218 = shl i32 63, %conv217
  %neg219 = xor i32 %shl218, -1
  %and220 = and i32 %24, %neg219
  %shl224 = shl i32 %20, %conv217
  %or225 = or i32 %and220, %shl224
  %27 = tail call i32 @llvm.bswap.i32(i32 %or225)
  %28 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #6, !srcloc !25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pfd_lock, i32 noundef %call212) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end193, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end193 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-pfdv2.c", i32 211, i32 2}
!2 = !{ptr @__ksymtab_imx_clk_hw_pfdv2, !3, !"__ksymtab_imx_clk_hw_pfdv2", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-pfdv2.c", i32 242, i32 1}
!4 = !{ptr @clk_pfdv2_ops, !5, !"clk_pfdv2_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-pfdv2.c", i32 194, i32 29}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/imx/clk-pfdv2.c", i32 41, i32 8}
!8 = !{ptr @pfd_lock, !7, !"pfd_lock", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/imx/clk-pfdv2.c", i32 90, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @clk_pfdv2_recalc_rate.__UNIQUE_ID_ddebug167, !10, !"__UNIQUE_ID_ddebug167", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 4030225}
!25 = !{i64 4029807}
!26 = !{i64 2152536094}
!27 = !{i64 2152536544}
!28 = !{i64 2148920004, i64 2148920009, i64 2148920022, i64 2148920066, i64 2148920100, i64 2148920121}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2148945191, i64 2148945471, i64 2148945805, i64 2148946139}
