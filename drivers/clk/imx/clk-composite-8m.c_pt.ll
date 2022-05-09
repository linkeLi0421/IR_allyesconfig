; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-composite-8m.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-composite-8m.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__imx8m_clk_hw_composite\22, \22a\22\09"
module asm "\09.weak\09__crc___imx8m_clk_hw_composite\09\09\09\09"
module asm "\09.long\09__crc___imx8m_clk_hw_composite\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___imx8m_clk_hw_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22__imx8m_clk_hw_composite\22\09\09\09\09\09"
module asm "__kstrtabns___imx8m_clk_hw_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }

@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@imx8m_clk_composite_mux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx8m_clk_composite_mux_determine_rate, ptr @imx8m_clk_composite_mux_set_parent, ptr @imx8m_clk_composite_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@imx8m_clk_composite_divider_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx8m_clk_composite_divider_recalc_rate, ptr @imx8m_clk_composite_divider_round_rate, ptr null, ptr null, ptr null, ptr @imx8m_clk_composite_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@__kstrtab___imx8m_clk_hw_composite = external dso_local constant [0 x i8], align 1
@__kstrtabns___imx8m_clk_hw_composite = external dso_local constant [0 x i8], align 1
@__ksymtab___imx8m_clk_hw_composite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__imx8m_clk_hw_composite to i32), ptr @__kstrtab___imx8m_clk_hw_composite, ptr @__kstrtabns___imx8m_clk_hw_composite }, section "___ksymtab_gpl+__imx8m_clk_hw_composite", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [28 x i8] c"imx8m_clk_composite_mux_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 168, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [32 x i8] c"imx8m_clk_composite_divider_ops\00", align 1
@___asan_gen_.5 = private constant [38 x i8] c"../drivers/clk/imx/clk-composite-8m.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 122, i32 29 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___imx8m_clk_hw_composite, ptr @imx8m_clk_composite_mux_ops, ptr @imx8m_clk_composite_divider_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_clk_composite_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_clk_composite_divider_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__imx8m_clk_hw_composite(ptr noundef %name, ptr noundef %parent_names, i32 noundef %num_parents, ptr noundef %reg, i32 noundef %composite_flags, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end:                                           ; preds = %entry
  %reg3 = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %reg3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %reg, ptr %reg3, align 4
  %shift = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 24, ptr %shift, align 8
  %mask = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %mask, align 4
  %lock = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @imx_ccm_lock, ptr %lock, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i78 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 28) #8
  %tobool5.not = icmp eq ptr %call7.i.i78, null
  br i1 %tobool5.not, label %if.end.fail_crit_edge, label %if.end7

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end7:                                          ; preds = %if.end
  %reg9 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i78, i32 0, i32 1
  %6 = ptrtoint ptr %reg9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %reg, ptr %reg9, align 4
  %and = and i32 %composite_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %shift12 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i78, i32 0, i32 2
  %7 = ptrtoint ptr %shift12 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %shift12, align 8
  %width = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i78, i32 0, i32 3
  %8 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %width, align 1
  br label %if.end26

if.else:                                          ; preds = %if.end7
  %and13 = and i32 %composite_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %shift19 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i78, i32 0, i32 2
  %9 = ptrtoint ptr %shift19 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %shift19, align 8
  %width20 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i78, i32 0, i32 3
  %10 = ptrtoint ptr %width20 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %width20, align 1
  br i1 %tobool14.not, label %if.else18, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %and21 = lshr i32 %composite_flags, 1
  %11 = and i32 %and21, 2
  %12 = xor i32 %11, 2
  %13 = or i32 %12, %flags
  br label %if.end26

if.end26:                                         ; preds = %if.else18, %if.else.if.end26_crit_edge, %if.then11
  %flags.addr.0 = phi i32 [ %flags, %if.then11 ], [ %13, %if.else18 ], [ %flags, %if.else.if.end26_crit_edge ]
  %divider_ops.0 = phi ptr [ @clk_divider_ops, %if.then11 ], [ @imx8m_clk_composite_divider_ops, %if.else18 ], [ @imx8m_clk_composite_divider_ops, %if.else.if.end26_crit_edge ]
  %mux_ops.0 = phi ptr [ @imx8m_clk_composite_mux_ops, %if.then11 ], [ @clk_mux_ops, %if.else18 ], [ @imx8m_clk_composite_mux_ops, %if.else.if.end26_crit_edge ]
  %lock27 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i78, i32 0, i32 6
  %14 = ptrtoint ptr %lock27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @imx_ccm_lock, ptr %lock27, align 8
  %flags28 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i78, i32 0, i32 4
  %15 = ptrtoint ptr %flags28 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %flags28, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i79 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 24) #8
  %tobool30.not = icmp eq ptr %call7.i.i79, null
  br i1 %tobool30.not, label %if.end26.fail_crit_edge, label %if.end32

if.end26.fail_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end32:                                         ; preds = %if.end26
  %reg34 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i79, i32 0, i32 1
  %17 = ptrtoint ptr %reg34 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %reg, ptr %reg34, align 4
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i79, i32 0, i32 2
  %18 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 28, ptr %bit_idx, align 8
  %lock35 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i79, i32 0, i32 4
  %19 = ptrtoint ptr %lock35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @imx_ccm_lock, ptr %lock35, align 4
  %call36 = tail call ptr @clk_hw_register_composite(ptr noundef null, ptr noundef %name, ptr noundef %parent_names, i32 noundef %num_parents, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %mux_ops.0, ptr noundef nonnull %call7.i.i78, ptr noundef nonnull %divider_ops.0, ptr noundef nonnull %call7.i.i79, ptr noundef nonnull @clk_gate_ops, i32 noundef %flags.addr.0) #5
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end32.fail_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32.fail_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

fail:                                             ; preds = %if.end32.fail_crit_edge, %if.end26.fail_crit_edge, %if.end.fail_crit_edge, %entry.fail_crit_edge
  %hw.0 = phi ptr [ %call36, %if.end32.fail_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end26.fail_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.fail_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.fail_crit_edge ]
  %div.0 = phi ptr [ %call7.i.i78, %if.end32.fail_crit_edge ], [ %call7.i.i78, %if.end26.fail_crit_edge ], [ null, %if.end.fail_crit_edge ], [ null, %entry.fail_crit_edge ]
  %gate.0 = phi ptr [ %call7.i.i79, %if.end32.fail_crit_edge ], [ null, %if.end26.fail_crit_edge ], [ null, %if.end.fail_crit_edge ], [ null, %entry.fail_crit_edge ]
  tail call void @kfree(ptr noundef %gate.0) #5
  tail call void @kfree(ptr noundef %div.0) #5
  tail call void @kfree(ptr noundef %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end32.cleanup_crit_edge
  %retval.0 = phi ptr [ %hw.0, %fail ], [ %call36, %if.end32.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_clk_composite_mux_determine_rate(ptr noundef %hw, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 12), align 4
  %call = tail call i32 %0(ptr noundef %hw, ptr noundef %req) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_clk_composite_mux_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %flags = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 @clk_mux_index_to_val(ptr noundef %1, i32 noundef %conv, i8 noundef zeroext %index) #5
  %lock = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 6
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #5
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  %flags1.0 = phi i32 [ %call7, %do.body2 ], [ 0, %entry.if.end_crit_edge ]
  %reg10 = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %reg10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg10, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !15
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %mask = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %shift = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 4
  %12 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift, align 4
  %conv14 = zext i8 %13 to i32
  %shl = shl i32 %11, %conv14
  %neg = xor i32 %shl, -1
  %and = and i32 %9, %neg
  %shl17 = shl i32 %call, %conv14
  %or = or i32 %and, %shl17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %reg10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %reg10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %14) #5, !srcloc !18
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock, align 4
  %tobool27.not = icmp eq ptr %20, null
  br i1 %tobool27.not, label %if.end.if.end30_crit_edge, label %if.then28

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %20, i32 noundef %flags1.0) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end.if.end30_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @imx8m_clk_composite_mux_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 14) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 14), align 4
  %call = tail call zeroext i8 %0(ptr noundef %hw) #5
  ret i8 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_index_to_val(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_clk_composite_divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !15
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %shift = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shift, align 4
  %conv = zext i8 %5 to i32
  %shr = lshr i32 %3, %conv
  %width = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width, align 1
  %conv3 = zext i8 %7 to i32
  %notmask = shl nsw i32 -1, %conv3
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %flags = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 2
  %conv4 = zext i8 %9 to i32
  %call7 = tail call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %and, ptr noundef null, i32 noundef %conv4, i32 noundef %conv3) #5
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !15
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  %and15 = and i32 %13, 63
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags, align 2
  %conv17 = zext i8 %15 to i32
  %call18 = tail call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %call7, i32 noundef %and15, ptr noundef null, i32 noundef %conv17, i32 noundef 6) #5
  ret i32 %call18
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_clk_composite_divider_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %entry
  %div_value.1 = phi i32 [ 1, %entry ], [ %spec.select, %for.body3.i.for.body3.i_crit_edge ]
  %div2.034.i = phi i32 [ 1, %entry ], [ %inc.i, %for.body3.i.for.body3.i_crit_edge ]
  %error.132.i = phi i32 [ 2147483647, %entry ], [ %spec.select9, %for.body3.i.for.body3.i_crit_edge ]
  %div4.i = udiv i32 %1, %div2.034.i
  %sub.i = sub i32 %div4.i, %rate
  %2 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #5
  %3 = tail call i32 @llvm.abs.i32(i32 %error.132.i, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp15.i = icmp slt i32 %2, %3
  %spec.select = select i1 %cmp15.i, i32 %div2.034.i, i32 %div_value.1
  %spec.select9 = select i1 %cmp15.i, i32 %sub.i, i32 %error.132.i
  %inc.i = add nuw nsw i32 %div2.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 65
  br i1 %exitcond.not.i, label %for.inc16.i, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i

for.inc16.i:                                      ; preds = %for.body3.i
  %div.i.16 = lshr i32 %1, 1
  br label %for.body3.i.1

for.body3.i.1:                                    ; preds = %for.body3.i.1.for.body3.i.1_crit_edge, %for.inc16.i
  %prediv_value.1.1 = phi i32 [ 1, %for.inc16.i ], [ %prediv_value.2.1, %for.body3.i.1.for.body3.i.1_crit_edge ]
  %div_value.1.1 = phi i32 [ %spec.select, %for.inc16.i ], [ %div_value.2.1, %for.body3.i.1.for.body3.i.1_crit_edge ]
  %div2.034.i.1 = phi i32 [ 1, %for.inc16.i ], [ %inc.i.1, %for.body3.i.1.for.body3.i.1_crit_edge ]
  %error.132.i.1 = phi i32 [ %spec.select9, %for.inc16.i ], [ %error.2.i.1, %for.body3.i.1.for.body3.i.1_crit_edge ]
  %div4.i.1 = udiv i32 %div.i.16, %div2.034.i.1
  %sub.i.1 = sub i32 %div4.i.1, %rate
  %4 = tail call i32 @llvm.abs.i32(i32 %sub.i.1, i1 false) #5
  %5 = tail call i32 @llvm.abs.i32(i32 %error.132.i.1, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp15.i.1 = icmp slt i32 %4, %5
  %prediv_value.2.1 = select i1 %cmp15.i.1, i32 2, i32 %prediv_value.1.1
  %div_value.2.1 = select i1 %cmp15.i.1, i32 %div2.034.i.1, i32 %div_value.1.1
  %error.2.i.1 = select i1 %cmp15.i.1, i32 %sub.i.1, i32 %error.132.i.1
  %inc.i.1 = add nuw nsw i32 %div2.034.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 65
  br i1 %exitcond.not.i.1, label %for.inc16.i.1, label %for.body3.i.1.for.body3.i.1_crit_edge

for.body3.i.1.for.body3.i.1_crit_edge:            ; preds = %for.body3.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.1

for.inc16.i.1:                                    ; preds = %for.body3.i.1
  %div.i.2 = udiv i32 %1, 3
  br label %for.body3.i.2

for.body3.i.2:                                    ; preds = %for.body3.i.2.for.body3.i.2_crit_edge, %for.inc16.i.1
  %prediv_value.1.2 = phi i32 [ %prediv_value.2.1, %for.inc16.i.1 ], [ %prediv_value.2.2, %for.body3.i.2.for.body3.i.2_crit_edge ]
  %div_value.1.2 = phi i32 [ %div_value.2.1, %for.inc16.i.1 ], [ %div_value.2.2, %for.body3.i.2.for.body3.i.2_crit_edge ]
  %div2.034.i.2 = phi i32 [ 1, %for.inc16.i.1 ], [ %inc.i.2, %for.body3.i.2.for.body3.i.2_crit_edge ]
  %error.132.i.2 = phi i32 [ %error.2.i.1, %for.inc16.i.1 ], [ %error.2.i.2, %for.body3.i.2.for.body3.i.2_crit_edge ]
  %div4.i.2 = udiv i32 %div.i.2, %div2.034.i.2
  %sub.i.2 = sub i32 %div4.i.2, %rate
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.i.2, i1 false) #5
  %7 = tail call i32 @llvm.abs.i32(i32 %error.132.i.2, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp15.i.2 = icmp slt i32 %6, %7
  %prediv_value.2.2 = select i1 %cmp15.i.2, i32 3, i32 %prediv_value.1.2
  %div_value.2.2 = select i1 %cmp15.i.2, i32 %div2.034.i.2, i32 %div_value.1.2
  %error.2.i.2 = select i1 %cmp15.i.2, i32 %sub.i.2, i32 %error.132.i.2
  %inc.i.2 = add nuw nsw i32 %div2.034.i.2, 1
  %exitcond.not.i.2 = icmp eq i32 %inc.i.2, 65
  br i1 %exitcond.not.i.2, label %for.inc16.i.2, label %for.body3.i.2.for.body3.i.2_crit_edge

for.body3.i.2.for.body3.i.2_crit_edge:            ; preds = %for.body3.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.2

for.inc16.i.2:                                    ; preds = %for.body3.i.2
  %div.i.37 = lshr i32 %1, 2
  br label %for.body3.i.3

for.body3.i.3:                                    ; preds = %for.body3.i.3.for.body3.i.3_crit_edge, %for.inc16.i.2
  %prediv_value.1.3 = phi i32 [ %prediv_value.2.2, %for.inc16.i.2 ], [ %prediv_value.2.3, %for.body3.i.3.for.body3.i.3_crit_edge ]
  %div_value.1.3 = phi i32 [ %div_value.2.2, %for.inc16.i.2 ], [ %div_value.2.3, %for.body3.i.3.for.body3.i.3_crit_edge ]
  %div2.034.i.3 = phi i32 [ 1, %for.inc16.i.2 ], [ %inc.i.3, %for.body3.i.3.for.body3.i.3_crit_edge ]
  %error.132.i.3 = phi i32 [ %error.2.i.2, %for.inc16.i.2 ], [ %error.2.i.3, %for.body3.i.3.for.body3.i.3_crit_edge ]
  %div4.i.3 = udiv i32 %div.i.37, %div2.034.i.3
  %sub.i.3 = sub i32 %div4.i.3, %rate
  %8 = tail call i32 @llvm.abs.i32(i32 %sub.i.3, i1 false) #5
  %9 = tail call i32 @llvm.abs.i32(i32 %error.132.i.3, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp15.i.3 = icmp slt i32 %8, %9
  %prediv_value.2.3 = select i1 %cmp15.i.3, i32 4, i32 %prediv_value.1.3
  %div_value.2.3 = select i1 %cmp15.i.3, i32 %div2.034.i.3, i32 %div_value.1.3
  %error.2.i.3 = select i1 %cmp15.i.3, i32 %sub.i.3, i32 %error.132.i.3
  %inc.i.3 = add nuw nsw i32 %div2.034.i.3, 1
  %exitcond.not.i.3 = icmp eq i32 %inc.i.3, 65
  br i1 %exitcond.not.i.3, label %for.inc16.i.3, label %for.body3.i.3.for.body3.i.3_crit_edge

for.body3.i.3.for.body3.i.3_crit_edge:            ; preds = %for.body3.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.3

for.inc16.i.3:                                    ; preds = %for.body3.i.3
  %div.i.4 = udiv i32 %1, 5
  br label %for.body3.i.4

for.body3.i.4:                                    ; preds = %for.body3.i.4.for.body3.i.4_crit_edge, %for.inc16.i.3
  %prediv_value.1.4 = phi i32 [ %prediv_value.2.3, %for.inc16.i.3 ], [ %prediv_value.2.4, %for.body3.i.4.for.body3.i.4_crit_edge ]
  %div_value.1.4 = phi i32 [ %div_value.2.3, %for.inc16.i.3 ], [ %div_value.2.4, %for.body3.i.4.for.body3.i.4_crit_edge ]
  %div2.034.i.4 = phi i32 [ 1, %for.inc16.i.3 ], [ %inc.i.4, %for.body3.i.4.for.body3.i.4_crit_edge ]
  %error.132.i.4 = phi i32 [ %error.2.i.3, %for.inc16.i.3 ], [ %error.2.i.4, %for.body3.i.4.for.body3.i.4_crit_edge ]
  %div4.i.4 = udiv i32 %div.i.4, %div2.034.i.4
  %sub.i.4 = sub i32 %div4.i.4, %rate
  %10 = tail call i32 @llvm.abs.i32(i32 %sub.i.4, i1 false) #5
  %11 = tail call i32 @llvm.abs.i32(i32 %error.132.i.4, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp15.i.4 = icmp slt i32 %10, %11
  %prediv_value.2.4 = select i1 %cmp15.i.4, i32 5, i32 %prediv_value.1.4
  %div_value.2.4 = select i1 %cmp15.i.4, i32 %div2.034.i.4, i32 %div_value.1.4
  %error.2.i.4 = select i1 %cmp15.i.4, i32 %sub.i.4, i32 %error.132.i.4
  %inc.i.4 = add nuw nsw i32 %div2.034.i.4, 1
  %exitcond.not.i.4 = icmp eq i32 %inc.i.4, 65
  br i1 %exitcond.not.i.4, label %for.inc16.i.4, label %for.body3.i.4.for.body3.i.4_crit_edge

for.body3.i.4.for.body3.i.4_crit_edge:            ; preds = %for.body3.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.4

for.inc16.i.4:                                    ; preds = %for.body3.i.4
  %div.i.5 = udiv i32 %1, 6
  br label %for.body3.i.5

for.body3.i.5:                                    ; preds = %for.body3.i.5.for.body3.i.5_crit_edge, %for.inc16.i.4
  %prediv_value.1.5 = phi i32 [ %prediv_value.2.4, %for.inc16.i.4 ], [ %prediv_value.2.5, %for.body3.i.5.for.body3.i.5_crit_edge ]
  %div_value.1.5 = phi i32 [ %div_value.2.4, %for.inc16.i.4 ], [ %div_value.2.5, %for.body3.i.5.for.body3.i.5_crit_edge ]
  %div2.034.i.5 = phi i32 [ 1, %for.inc16.i.4 ], [ %inc.i.5, %for.body3.i.5.for.body3.i.5_crit_edge ]
  %error.132.i.5 = phi i32 [ %error.2.i.4, %for.inc16.i.4 ], [ %error.2.i.5, %for.body3.i.5.for.body3.i.5_crit_edge ]
  %div4.i.5 = udiv i32 %div.i.5, %div2.034.i.5
  %sub.i.5 = sub i32 %div4.i.5, %rate
  %12 = tail call i32 @llvm.abs.i32(i32 %sub.i.5, i1 false) #5
  %13 = tail call i32 @llvm.abs.i32(i32 %error.132.i.5, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp15.i.5 = icmp slt i32 %12, %13
  %prediv_value.2.5 = select i1 %cmp15.i.5, i32 6, i32 %prediv_value.1.5
  %div_value.2.5 = select i1 %cmp15.i.5, i32 %div2.034.i.5, i32 %div_value.1.5
  %error.2.i.5 = select i1 %cmp15.i.5, i32 %sub.i.5, i32 %error.132.i.5
  %inc.i.5 = add nuw nsw i32 %div2.034.i.5, 1
  %exitcond.not.i.5 = icmp eq i32 %inc.i.5, 65
  br i1 %exitcond.not.i.5, label %for.inc16.i.5, label %for.body3.i.5.for.body3.i.5_crit_edge

for.body3.i.5.for.body3.i.5_crit_edge:            ; preds = %for.body3.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.5

for.inc16.i.5:                                    ; preds = %for.body3.i.5
  %div.i.6 = udiv i32 %1, 7
  br label %for.body3.i.6

for.body3.i.6:                                    ; preds = %for.body3.i.6.for.body3.i.6_crit_edge, %for.inc16.i.5
  %prediv_value.1.6 = phi i32 [ %prediv_value.2.5, %for.inc16.i.5 ], [ %prediv_value.2.6, %for.body3.i.6.for.body3.i.6_crit_edge ]
  %div_value.1.6 = phi i32 [ %div_value.2.5, %for.inc16.i.5 ], [ %div_value.2.6, %for.body3.i.6.for.body3.i.6_crit_edge ]
  %div2.034.i.6 = phi i32 [ 1, %for.inc16.i.5 ], [ %inc.i.6, %for.body3.i.6.for.body3.i.6_crit_edge ]
  %error.132.i.6 = phi i32 [ %error.2.i.5, %for.inc16.i.5 ], [ %error.2.i.6, %for.body3.i.6.for.body3.i.6_crit_edge ]
  %div4.i.6 = udiv i32 %div.i.6, %div2.034.i.6
  %sub.i.6 = sub i32 %div4.i.6, %rate
  %14 = tail call i32 @llvm.abs.i32(i32 %sub.i.6, i1 false) #5
  %15 = tail call i32 @llvm.abs.i32(i32 %error.132.i.6, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15)
  %cmp15.i.6 = icmp slt i32 %14, %15
  %prediv_value.2.6 = select i1 %cmp15.i.6, i32 7, i32 %prediv_value.1.6
  %div_value.2.6 = select i1 %cmp15.i.6, i32 %div2.034.i.6, i32 %div_value.1.6
  %error.2.i.6 = select i1 %cmp15.i.6, i32 %sub.i.6, i32 %error.132.i.6
  %inc.i.6 = add nuw nsw i32 %div2.034.i.6, 1
  %exitcond.not.i.6 = icmp eq i32 %inc.i.6, 65
  br i1 %exitcond.not.i.6, label %for.inc16.i.6, label %for.body3.i.6.for.body3.i.6_crit_edge

for.body3.i.6.for.body3.i.6_crit_edge:            ; preds = %for.body3.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.6

for.inc16.i.6:                                    ; preds = %for.body3.i.6
  %div.i.78 = lshr i32 %1, 3
  br label %for.body3.i.7

for.body3.i.7:                                    ; preds = %for.body3.i.7.for.body3.i.7_crit_edge, %for.inc16.i.6
  %prediv_value.1.7 = phi i32 [ %prediv_value.2.6, %for.inc16.i.6 ], [ %prediv_value.2.7, %for.body3.i.7.for.body3.i.7_crit_edge ]
  %div_value.1.7 = phi i32 [ %div_value.2.6, %for.inc16.i.6 ], [ %div_value.2.7, %for.body3.i.7.for.body3.i.7_crit_edge ]
  %div2.034.i.7 = phi i32 [ 1, %for.inc16.i.6 ], [ %inc.i.7, %for.body3.i.7.for.body3.i.7_crit_edge ]
  %error.132.i.7 = phi i32 [ %error.2.i.6, %for.inc16.i.6 ], [ %error.2.i.7, %for.body3.i.7.for.body3.i.7_crit_edge ]
  %div4.i.7 = udiv i32 %div.i.78, %div2.034.i.7
  %sub.i.7 = sub i32 %div4.i.7, %rate
  %16 = tail call i32 @llvm.abs.i32(i32 %sub.i.7, i1 false) #5
  %17 = tail call i32 @llvm.abs.i32(i32 %error.132.i.7, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %17)
  %cmp15.i.7 = icmp slt i32 %16, %17
  %prediv_value.2.7 = select i1 %cmp15.i.7, i32 8, i32 %prediv_value.1.7
  %div_value.2.7 = select i1 %cmp15.i.7, i32 %div2.034.i.7, i32 %div_value.1.7
  %error.2.i.7 = select i1 %cmp15.i.7, i32 %sub.i.7, i32 %error.132.i.7
  %inc.i.7 = add nuw nsw i32 %div2.034.i.7, 1
  %exitcond.not.i.7 = icmp eq i32 %inc.i.7, 65
  br i1 %exitcond.not.i.7, label %for.inc16.i.7, label %for.body3.i.7.for.body3.i.7_crit_edge

for.body3.i.7.for.body3.i.7_crit_edge:            ; preds = %for.body3.i.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.7

for.inc16.i.7:                                    ; preds = %for.body3.i.7
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %1, -1
  %sub = add i32 %add, %prediv_value.2.7
  %div = udiv i32 %sub, %prediv_value.2.7
  %add1 = add i32 %div_value.2.7, -1
  %sub2 = add i32 %add1, %div
  %div3 = udiv i32 %sub2, %div_value.2.7
  ret i32 %div3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_clk_composite_divider_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %entry
  %div_value.1 = phi i32 [ 1, %entry ], [ %div_value.2, %for.body3.i.for.body3.i_crit_edge ]
  %div2.034.i = phi i32 [ 1, %entry ], [ %inc.i, %for.body3.i.for.body3.i_crit_edge ]
  %ret.133.i = phi i32 [ -22, %entry ], [ %ret.2.i, %for.body3.i.for.body3.i_crit_edge ]
  %error.132.i = phi i32 [ 2147483647, %entry ], [ %error.2.i, %for.body3.i.for.body3.i_crit_edge ]
  %div4.i = udiv i32 %parent_rate, %div2.034.i
  %sub.i = sub i32 %div4.i, %rate
  %0 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #5
  %1 = tail call i32 @llvm.abs.i32(i32 %error.132.i, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp15.i = icmp slt i32 %0, %1
  %div_value.2 = select i1 %cmp15.i, i32 %div2.034.i, i32 %div_value.1
  %error.2.i = select i1 %cmp15.i, i32 %sub.i, i32 %error.132.i
  %ret.2.i = select i1 %cmp15.i, i32 0, i32 %ret.133.i
  %inc.i = add nuw nsw i32 %div2.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 65
  br i1 %exitcond.not.i, label %for.inc16.i, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i

for.inc16.i:                                      ; preds = %for.body3.i
  %div.i.141 = lshr i32 %parent_rate, 1
  br label %for.body3.i.1

for.body3.i.1:                                    ; preds = %if.end.i.1.for.body3.i.1_crit_edge, %for.inc16.i
  %prediv_value.1.1 = phi i32 [ 1, %for.inc16.i ], [ %prediv_value.2.1, %if.end.i.1.for.body3.i.1_crit_edge ]
  %div_value.1.1 = phi i32 [ %div_value.2, %for.inc16.i ], [ %div_value.2.1, %if.end.i.1.for.body3.i.1_crit_edge ]
  %div2.034.i.1 = phi i32 [ 1, %for.inc16.i ], [ %inc.i.1, %if.end.i.1.for.body3.i.1_crit_edge ]
  %ret.133.i.1 = phi i32 [ %ret.2.i, %for.inc16.i ], [ %ret.2.i.1, %if.end.i.1.for.body3.i.1_crit_edge ]
  %error.132.i.1 = phi i32 [ %error.2.i, %for.inc16.i ], [ %error.2.i.1, %if.end.i.1.for.body3.i.1_crit_edge ]
  %div4.i.1 = udiv i32 %div.i.141, %div2.034.i.1
  %sub.i.1 = sub i32 %div4.i.1, %rate
  %2 = tail call i32 @llvm.abs.i32(i32 %sub.i.1, i1 false) #5
  %3 = tail call i32 @llvm.abs.i32(i32 %error.132.i.1, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp15.i.1 = icmp slt i32 %2, %3
  br i1 %cmp15.i.1, label %if.then.i.1, label %for.body3.i.1.if.end.i.1_crit_edge

for.body3.i.1.if.end.i.1_crit_edge:               ; preds = %for.body3.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.1

if.then.i.1:                                      ; preds = %for.body3.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i.1, %for.body3.i.1.if.end.i.1_crit_edge
  %prediv_value.2.1 = phi i32 [ 2, %if.then.i.1 ], [ %prediv_value.1.1, %for.body3.i.1.if.end.i.1_crit_edge ]
  %div_value.2.1 = phi i32 [ %div2.034.i.1, %if.then.i.1 ], [ %div_value.1.1, %for.body3.i.1.if.end.i.1_crit_edge ]
  %error.2.i.1 = phi i32 [ %sub.i.1, %if.then.i.1 ], [ %error.132.i.1, %for.body3.i.1.if.end.i.1_crit_edge ]
  %ret.2.i.1 = phi i32 [ 0, %if.then.i.1 ], [ %ret.133.i.1, %for.body3.i.1.if.end.i.1_crit_edge ]
  %inc.i.1 = add nuw nsw i32 %div2.034.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 65
  br i1 %exitcond.not.i.1, label %for.inc16.i.1, label %if.end.i.1.for.body3.i.1_crit_edge

if.end.i.1.for.body3.i.1_crit_edge:               ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.1

for.inc16.i.1:                                    ; preds = %if.end.i.1
  %div.i.2 = udiv i32 %parent_rate, 3
  br label %for.body3.i.2

for.body3.i.2:                                    ; preds = %if.end.i.2.for.body3.i.2_crit_edge, %for.inc16.i.1
  %prediv_value.1.2 = phi i32 [ %prediv_value.2.1, %for.inc16.i.1 ], [ %prediv_value.2.2, %if.end.i.2.for.body3.i.2_crit_edge ]
  %div_value.1.2 = phi i32 [ %div_value.2.1, %for.inc16.i.1 ], [ %div_value.2.2, %if.end.i.2.for.body3.i.2_crit_edge ]
  %div2.034.i.2 = phi i32 [ 1, %for.inc16.i.1 ], [ %inc.i.2, %if.end.i.2.for.body3.i.2_crit_edge ]
  %ret.133.i.2 = phi i32 [ %ret.2.i.1, %for.inc16.i.1 ], [ %ret.2.i.2, %if.end.i.2.for.body3.i.2_crit_edge ]
  %error.132.i.2 = phi i32 [ %error.2.i.1, %for.inc16.i.1 ], [ %error.2.i.2, %if.end.i.2.for.body3.i.2_crit_edge ]
  %div4.i.2 = udiv i32 %div.i.2, %div2.034.i.2
  %sub.i.2 = sub i32 %div4.i.2, %rate
  %4 = tail call i32 @llvm.abs.i32(i32 %sub.i.2, i1 false) #5
  %5 = tail call i32 @llvm.abs.i32(i32 %error.132.i.2, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp15.i.2 = icmp slt i32 %4, %5
  br i1 %cmp15.i.2, label %if.then.i.2, label %for.body3.i.2.if.end.i.2_crit_edge

for.body3.i.2.if.end.i.2_crit_edge:               ; preds = %for.body3.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.2

if.then.i.2:                                      ; preds = %for.body3.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i.2, %for.body3.i.2.if.end.i.2_crit_edge
  %prediv_value.2.2 = phi i32 [ 3, %if.then.i.2 ], [ %prediv_value.1.2, %for.body3.i.2.if.end.i.2_crit_edge ]
  %div_value.2.2 = phi i32 [ %div2.034.i.2, %if.then.i.2 ], [ %div_value.1.2, %for.body3.i.2.if.end.i.2_crit_edge ]
  %error.2.i.2 = phi i32 [ %sub.i.2, %if.then.i.2 ], [ %error.132.i.2, %for.body3.i.2.if.end.i.2_crit_edge ]
  %ret.2.i.2 = phi i32 [ 0, %if.then.i.2 ], [ %ret.133.i.2, %for.body3.i.2.if.end.i.2_crit_edge ]
  %inc.i.2 = add nuw nsw i32 %div2.034.i.2, 1
  %exitcond.not.i.2 = icmp eq i32 %inc.i.2, 65
  br i1 %exitcond.not.i.2, label %for.inc16.i.2, label %if.end.i.2.for.body3.i.2_crit_edge

if.end.i.2.for.body3.i.2_crit_edge:               ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.2

for.inc16.i.2:                                    ; preds = %if.end.i.2
  %div.i.342 = lshr i32 %parent_rate, 2
  br label %for.body3.i.3

for.body3.i.3:                                    ; preds = %if.end.i.3.for.body3.i.3_crit_edge, %for.inc16.i.2
  %prediv_value.1.3 = phi i32 [ %prediv_value.2.2, %for.inc16.i.2 ], [ %prediv_value.2.3, %if.end.i.3.for.body3.i.3_crit_edge ]
  %div_value.1.3 = phi i32 [ %div_value.2.2, %for.inc16.i.2 ], [ %div_value.2.3, %if.end.i.3.for.body3.i.3_crit_edge ]
  %div2.034.i.3 = phi i32 [ 1, %for.inc16.i.2 ], [ %inc.i.3, %if.end.i.3.for.body3.i.3_crit_edge ]
  %ret.133.i.3 = phi i32 [ %ret.2.i.2, %for.inc16.i.2 ], [ %ret.2.i.3, %if.end.i.3.for.body3.i.3_crit_edge ]
  %error.132.i.3 = phi i32 [ %error.2.i.2, %for.inc16.i.2 ], [ %error.2.i.3, %if.end.i.3.for.body3.i.3_crit_edge ]
  %div4.i.3 = udiv i32 %div.i.342, %div2.034.i.3
  %sub.i.3 = sub i32 %div4.i.3, %rate
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.i.3, i1 false) #5
  %7 = tail call i32 @llvm.abs.i32(i32 %error.132.i.3, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp15.i.3 = icmp slt i32 %6, %7
  br i1 %cmp15.i.3, label %if.then.i.3, label %for.body3.i.3.if.end.i.3_crit_edge

for.body3.i.3.if.end.i.3_crit_edge:               ; preds = %for.body3.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.3

if.then.i.3:                                      ; preds = %for.body3.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.3

if.end.i.3:                                       ; preds = %if.then.i.3, %for.body3.i.3.if.end.i.3_crit_edge
  %prediv_value.2.3 = phi i32 [ 4, %if.then.i.3 ], [ %prediv_value.1.3, %for.body3.i.3.if.end.i.3_crit_edge ]
  %div_value.2.3 = phi i32 [ %div2.034.i.3, %if.then.i.3 ], [ %div_value.1.3, %for.body3.i.3.if.end.i.3_crit_edge ]
  %error.2.i.3 = phi i32 [ %sub.i.3, %if.then.i.3 ], [ %error.132.i.3, %for.body3.i.3.if.end.i.3_crit_edge ]
  %ret.2.i.3 = phi i32 [ 0, %if.then.i.3 ], [ %ret.133.i.3, %for.body3.i.3.if.end.i.3_crit_edge ]
  %inc.i.3 = add nuw nsw i32 %div2.034.i.3, 1
  %exitcond.not.i.3 = icmp eq i32 %inc.i.3, 65
  br i1 %exitcond.not.i.3, label %for.inc16.i.3, label %if.end.i.3.for.body3.i.3_crit_edge

if.end.i.3.for.body3.i.3_crit_edge:               ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.3

for.inc16.i.3:                                    ; preds = %if.end.i.3
  %div.i.4 = udiv i32 %parent_rate, 5
  br label %for.body3.i.4

for.body3.i.4:                                    ; preds = %if.end.i.4.for.body3.i.4_crit_edge, %for.inc16.i.3
  %prediv_value.1.4 = phi i32 [ %prediv_value.2.3, %for.inc16.i.3 ], [ %prediv_value.2.4, %if.end.i.4.for.body3.i.4_crit_edge ]
  %div_value.1.4 = phi i32 [ %div_value.2.3, %for.inc16.i.3 ], [ %div_value.2.4, %if.end.i.4.for.body3.i.4_crit_edge ]
  %div2.034.i.4 = phi i32 [ 1, %for.inc16.i.3 ], [ %inc.i.4, %if.end.i.4.for.body3.i.4_crit_edge ]
  %ret.133.i.4 = phi i32 [ %ret.2.i.3, %for.inc16.i.3 ], [ %ret.2.i.4, %if.end.i.4.for.body3.i.4_crit_edge ]
  %error.132.i.4 = phi i32 [ %error.2.i.3, %for.inc16.i.3 ], [ %error.2.i.4, %if.end.i.4.for.body3.i.4_crit_edge ]
  %div4.i.4 = udiv i32 %div.i.4, %div2.034.i.4
  %sub.i.4 = sub i32 %div4.i.4, %rate
  %8 = tail call i32 @llvm.abs.i32(i32 %sub.i.4, i1 false) #5
  %9 = tail call i32 @llvm.abs.i32(i32 %error.132.i.4, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp15.i.4 = icmp slt i32 %8, %9
  br i1 %cmp15.i.4, label %if.then.i.4, label %for.body3.i.4.if.end.i.4_crit_edge

for.body3.i.4.if.end.i.4_crit_edge:               ; preds = %for.body3.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.4

if.then.i.4:                                      ; preds = %for.body3.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.4

if.end.i.4:                                       ; preds = %if.then.i.4, %for.body3.i.4.if.end.i.4_crit_edge
  %prediv_value.2.4 = phi i32 [ 5, %if.then.i.4 ], [ %prediv_value.1.4, %for.body3.i.4.if.end.i.4_crit_edge ]
  %div_value.2.4 = phi i32 [ %div2.034.i.4, %if.then.i.4 ], [ %div_value.1.4, %for.body3.i.4.if.end.i.4_crit_edge ]
  %error.2.i.4 = phi i32 [ %sub.i.4, %if.then.i.4 ], [ %error.132.i.4, %for.body3.i.4.if.end.i.4_crit_edge ]
  %ret.2.i.4 = phi i32 [ 0, %if.then.i.4 ], [ %ret.133.i.4, %for.body3.i.4.if.end.i.4_crit_edge ]
  %inc.i.4 = add nuw nsw i32 %div2.034.i.4, 1
  %exitcond.not.i.4 = icmp eq i32 %inc.i.4, 65
  br i1 %exitcond.not.i.4, label %for.inc16.i.4, label %if.end.i.4.for.body3.i.4_crit_edge

if.end.i.4.for.body3.i.4_crit_edge:               ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.4

for.inc16.i.4:                                    ; preds = %if.end.i.4
  %div.i.5 = udiv i32 %parent_rate, 6
  br label %for.body3.i.5

for.body3.i.5:                                    ; preds = %if.end.i.5.for.body3.i.5_crit_edge, %for.inc16.i.4
  %prediv_value.1.5 = phi i32 [ %prediv_value.2.4, %for.inc16.i.4 ], [ %prediv_value.2.5, %if.end.i.5.for.body3.i.5_crit_edge ]
  %div_value.1.5 = phi i32 [ %div_value.2.4, %for.inc16.i.4 ], [ %div_value.2.5, %if.end.i.5.for.body3.i.5_crit_edge ]
  %div2.034.i.5 = phi i32 [ 1, %for.inc16.i.4 ], [ %inc.i.5, %if.end.i.5.for.body3.i.5_crit_edge ]
  %ret.133.i.5 = phi i32 [ %ret.2.i.4, %for.inc16.i.4 ], [ %ret.2.i.5, %if.end.i.5.for.body3.i.5_crit_edge ]
  %error.132.i.5 = phi i32 [ %error.2.i.4, %for.inc16.i.4 ], [ %error.2.i.5, %if.end.i.5.for.body3.i.5_crit_edge ]
  %div4.i.5 = udiv i32 %div.i.5, %div2.034.i.5
  %sub.i.5 = sub i32 %div4.i.5, %rate
  %10 = tail call i32 @llvm.abs.i32(i32 %sub.i.5, i1 false) #5
  %11 = tail call i32 @llvm.abs.i32(i32 %error.132.i.5, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp15.i.5 = icmp slt i32 %10, %11
  br i1 %cmp15.i.5, label %if.then.i.5, label %for.body3.i.5.if.end.i.5_crit_edge

for.body3.i.5.if.end.i.5_crit_edge:               ; preds = %for.body3.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.5

if.then.i.5:                                      ; preds = %for.body3.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.5

if.end.i.5:                                       ; preds = %if.then.i.5, %for.body3.i.5.if.end.i.5_crit_edge
  %prediv_value.2.5 = phi i32 [ 6, %if.then.i.5 ], [ %prediv_value.1.5, %for.body3.i.5.if.end.i.5_crit_edge ]
  %div_value.2.5 = phi i32 [ %div2.034.i.5, %if.then.i.5 ], [ %div_value.1.5, %for.body3.i.5.if.end.i.5_crit_edge ]
  %error.2.i.5 = phi i32 [ %sub.i.5, %if.then.i.5 ], [ %error.132.i.5, %for.body3.i.5.if.end.i.5_crit_edge ]
  %ret.2.i.5 = phi i32 [ 0, %if.then.i.5 ], [ %ret.133.i.5, %for.body3.i.5.if.end.i.5_crit_edge ]
  %inc.i.5 = add nuw nsw i32 %div2.034.i.5, 1
  %exitcond.not.i.5 = icmp eq i32 %inc.i.5, 65
  br i1 %exitcond.not.i.5, label %for.inc16.i.5, label %if.end.i.5.for.body3.i.5_crit_edge

if.end.i.5.for.body3.i.5_crit_edge:               ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.5

for.inc16.i.5:                                    ; preds = %if.end.i.5
  %div.i.6 = udiv i32 %parent_rate, 7
  br label %for.body3.i.6

for.body3.i.6:                                    ; preds = %if.end.i.6.for.body3.i.6_crit_edge, %for.inc16.i.5
  %prediv_value.1.6 = phi i32 [ %prediv_value.2.5, %for.inc16.i.5 ], [ %prediv_value.2.6, %if.end.i.6.for.body3.i.6_crit_edge ]
  %div_value.1.6 = phi i32 [ %div_value.2.5, %for.inc16.i.5 ], [ %div_value.2.6, %if.end.i.6.for.body3.i.6_crit_edge ]
  %div2.034.i.6 = phi i32 [ 1, %for.inc16.i.5 ], [ %inc.i.6, %if.end.i.6.for.body3.i.6_crit_edge ]
  %ret.133.i.6 = phi i32 [ %ret.2.i.5, %for.inc16.i.5 ], [ %ret.2.i.6, %if.end.i.6.for.body3.i.6_crit_edge ]
  %error.132.i.6 = phi i32 [ %error.2.i.5, %for.inc16.i.5 ], [ %error.2.i.6, %if.end.i.6.for.body3.i.6_crit_edge ]
  %div4.i.6 = udiv i32 %div.i.6, %div2.034.i.6
  %sub.i.6 = sub i32 %div4.i.6, %rate
  %12 = tail call i32 @llvm.abs.i32(i32 %sub.i.6, i1 false) #5
  %13 = tail call i32 @llvm.abs.i32(i32 %error.132.i.6, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp15.i.6 = icmp slt i32 %12, %13
  br i1 %cmp15.i.6, label %if.then.i.6, label %for.body3.i.6.if.end.i.6_crit_edge

for.body3.i.6.if.end.i.6_crit_edge:               ; preds = %for.body3.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.6

if.then.i.6:                                      ; preds = %for.body3.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.6

if.end.i.6:                                       ; preds = %if.then.i.6, %for.body3.i.6.if.end.i.6_crit_edge
  %prediv_value.2.6 = phi i32 [ 7, %if.then.i.6 ], [ %prediv_value.1.6, %for.body3.i.6.if.end.i.6_crit_edge ]
  %div_value.2.6 = phi i32 [ %div2.034.i.6, %if.then.i.6 ], [ %div_value.1.6, %for.body3.i.6.if.end.i.6_crit_edge ]
  %error.2.i.6 = phi i32 [ %sub.i.6, %if.then.i.6 ], [ %error.132.i.6, %for.body3.i.6.if.end.i.6_crit_edge ]
  %ret.2.i.6 = phi i32 [ 0, %if.then.i.6 ], [ %ret.133.i.6, %for.body3.i.6.if.end.i.6_crit_edge ]
  %inc.i.6 = add nuw nsw i32 %div2.034.i.6, 1
  %exitcond.not.i.6 = icmp eq i32 %inc.i.6, 65
  br i1 %exitcond.not.i.6, label %for.inc16.i.6, label %if.end.i.6.for.body3.i.6_crit_edge

if.end.i.6.for.body3.i.6_crit_edge:               ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.6

for.inc16.i.6:                                    ; preds = %if.end.i.6
  %div.i.743 = lshr i32 %parent_rate, 3
  br label %for.body3.i.7.outer

for.body3.i.7.outer:                              ; preds = %if.end.i.7.thread.for.body3.i.7.outer_crit_edge, %for.inc16.i.6
  %prediv_value.1.7.ph = phi i32 [ 8, %if.end.i.7.thread.for.body3.i.7.outer_crit_edge ], [ %prediv_value.2.6, %for.inc16.i.6 ]
  %div_value.1.7.ph = phi i32 [ %div2.034.i.7, %if.end.i.7.thread.for.body3.i.7.outer_crit_edge ], [ %div_value.2.6, %for.inc16.i.6 ]
  %div2.034.i.7.ph = phi i32 [ %inc.i.748, %if.end.i.7.thread.for.body3.i.7.outer_crit_edge ], [ 1, %for.inc16.i.6 ]
  %ret.133.i.7.ph = phi i32 [ 0, %if.end.i.7.thread.for.body3.i.7.outer_crit_edge ], [ %ret.2.i.6, %for.inc16.i.6 ]
  %error.132.i.7.ph = phi i32 [ %sub.i.7, %if.end.i.7.thread.for.body3.i.7.outer_crit_edge ], [ %error.2.i.6, %for.inc16.i.6 ]
  %14 = tail call i32 @llvm.abs.i32(i32 %error.132.i.7.ph, i1 false) #5
  br label %for.body3.i.7

for.body3.i.7:                                    ; preds = %if.end.i.7.for.body3.i.7_crit_edge, %for.body3.i.7.outer
  %div2.034.i.7 = phi i32 [ %inc.i.748, %if.end.i.7.for.body3.i.7_crit_edge ], [ %div2.034.i.7.ph, %for.body3.i.7.outer ]
  %div4.i.7 = udiv i32 %div.i.743, %div2.034.i.7
  %sub.i.7 = sub i32 %div4.i.7, %rate
  %15 = tail call i32 @llvm.abs.i32(i32 %sub.i.7, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %14)
  %cmp15.i.7 = icmp slt i32 %15, %14
  %inc.i.748 = add nuw nsw i32 %div2.034.i.7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %inc.i.748)
  %exitcond.not.i.749 = icmp eq i32 %inc.i.748, 65
  br i1 %cmp15.i.7, label %if.end.i.7.thread, label %if.end.i.7

if.end.i.7:                                       ; preds = %for.body3.i.7
  br i1 %exitcond.not.i.749, label %for.inc16.i.7, label %if.end.i.7.for.body3.i.7_crit_edge

if.end.i.7.for.body3.i.7_crit_edge:               ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.7

if.end.i.7.thread:                                ; preds = %for.body3.i.7
  br i1 %exitcond.not.i.749, label %if.end.i.7.thread.do.body1_crit_edge, label %if.end.i.7.thread.for.body3.i.7.outer_crit_edge

if.end.i.7.thread.for.body3.i.7.outer_crit_edge:  ; preds = %if.end.i.7.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.7.outer

if.end.i.7.thread.do.body1_crit_edge:             ; preds = %if.end.i.7.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1

for.inc16.i.7:                                    ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.133.i.7.ph)
  %tobool.not = icmp eq i32 %ret.133.i.7.ph, 0
  br i1 %tobool.not, label %for.inc16.i.7.do.body1_crit_edge, label %for.inc16.i.7.cleanup_crit_edge

for.inc16.i.7.cleanup_crit_edge:                  ; preds = %for.inc16.i.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc16.i.7.do.body1_crit_edge:                 ; preds = %for.inc16.i.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1

do.body1:                                         ; preds = %for.inc16.i.7.do.body1_crit_edge, %if.end.i.7.thread.do.body1_crit_edge
  %prediv_value.2.75058 = phi i32 [ %prediv_value.1.7.ph, %for.inc16.i.7.do.body1_crit_edge ], [ 8, %if.end.i.7.thread.do.body1_crit_edge ]
  %div_value.2.75157 = phi i32 [ %div_value.1.7.ph, %for.inc16.i.7.do.body1_crit_edge ], [ 64, %if.end.i.7.thread.do.body1_crit_edge ]
  %lock = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 6
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #5
  %reg = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 1
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !15
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %width = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 3
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %width, align 1
  %conv10 = zext i8 %23 to i32
  %notmask = shl nsw i32 -1, %conv10
  %sub = xor i32 %notmask, -1
  %shift = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 2
  %24 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %shift, align 4
  %conv11 = zext i8 %25 to i32
  %shl12 = shl i32 %sub, %conv11
  %26 = and i32 %shl12, -64
  %neg = xor i32 %26, -64
  %and = and i32 %neg, %21
  %sub13 = add i32 %prediv_value.2.75058, -1
  %shl16 = shl i32 %sub13, %conv11
  %sub18 = add i32 %div_value.2.75157, -1
  %or17 = or i32 %shl16, %sub18
  %or20 = or i32 %or17, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %27 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #5, !srcloc !18
  %30 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %for.inc16.i.7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body1 ], [ -22, %for.inc16.i.7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab___imx8m_clk_hw_composite, !1, !"__ksymtab___imx8m_clk_hw_composite", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-composite-8m.c", i32 249, i32 1}
!2 = !{ptr @imx8m_clk_composite_mux_ops, !3, !"imx8m_clk_composite_mux_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-composite-8m.c", i32 168, i32 29}
!4 = !{ptr @imx8m_clk_composite_divider_ops, !5, !"imx8m_clk_composite_divider_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-composite-8m.c", i32 122, i32 29}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 4031070}
!16 = !{i64 2152535586}
!17 = !{i64 2152535791}
!18 = !{i64 4030652}
!19 = !{i64 2152536162}
!20 = !{i64 2152520996}
!21 = !{i64 2152521510}
!22 = !{i64 2152533209}
!23 = !{i64 2152533483}
