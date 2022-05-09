; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-composite-7ulp.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-composite-7ulp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+imx8ulp_clk_hw_composite\22, \22a\22\09"
module asm "\09.weak\09__crc_imx8ulp_clk_hw_composite\09\09\09\09"
module asm "\09.long\09__crc_imx8ulp_clk_hw_composite\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx8ulp_clk_hw_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22imx8ulp_clk_hw_composite\22\09\09\09\09\09"
module asm "__kstrtabns_imx8ulp_clk_hw_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_fractional_divider = type { %struct.clk_hw, ptr, i8, i8, i32, i8, i8, i32, i8, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }

@__kstrtab_imx8ulp_clk_hw_composite = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx8ulp_clk_hw_composite = external dso_local constant [0 x i8], align 1
@__ksymtab_imx8ulp_clk_hw_composite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx8ulp_clk_hw_composite to i32), ptr @__kstrtab_imx8ulp_clk_hw_composite, ptr @__kstrtabns_imx8ulp_clk_hw_composite }, section "___ksymtab_gpl+imx8ulp_clk_hw_composite", align 4
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_fractional_divider_ops = external dso_local constant %struct.clk_ops, align 4
@pcc_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @pcc_gate_enable, ptr @pcc_gate_disable, ptr @pcc_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"pcc_gate_ops\00", align 1
@___asan_gen_.2 = private constant [40 x i8] c"../drivers/clk/imx/clk-composite-7ulp.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 64, i32 29 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_imx8ulp_clk_hw_composite, ptr @pcc_gate_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcc_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx7ulp_clk_hw_composite(ptr noundef %name, ptr noundef %parent_names, i32 noundef %num_parents, i1 noundef zeroext %mux_present, i1 noundef zeroext %rate_present, i1 noundef zeroext %gate_present, ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @imx_ulp_clk_hw_composite(ptr noundef %name, ptr noundef %parent_names, i32 noundef %num_parents, i1 noundef zeroext %mux_present, i1 noundef zeroext %rate_present, i1 noundef zeroext %gate_present, ptr noundef %reg, i1 noundef zeroext false)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @imx_ulp_clk_hw_composite(ptr noundef %name, ptr noundef %parent_names, i32 noundef %num_parents, i1 noundef zeroext %mux_present, i1 noundef zeroext %rate_present, i1 noundef zeroext %gate_present, ptr noundef %reg, i1 noundef zeroext %has_swrst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %mux_present, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #6
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  %reg8 = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %reg8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %reg, ptr %reg8, align 4
  %shift = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 24, ptr %shift, align 8
  %mask = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %mask, align 4
  br i1 %has_swrst, label %if.then10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %lock = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @imx_ccm_lock, ptr %lock, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %mux_hw.0 = phi ptr [ %call7.i.i, %if.then10 ], [ %call7.i.i, %if.end.if.end12_crit_edge ], [ null, %entry.if.end12_crit_edge ]
  br i1 %rate_present, label %if.then14, label %if.end12.if.end26_crit_edge

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then14:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i88 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 44) #6
  %tobool16.not = icmp eq ptr %call7.i.i88, null
  br i1 %tobool16.not, label %if.then14.cleanup.sink.split_crit_edge, label %if.end19

if.then14.cleanup.sink.split_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.then14
  %reg21 = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i88, i32 0, i32 1
  %6 = ptrtoint ptr %reg21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %reg, ptr %reg21, align 4
  %mshift = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i88, i32 0, i32 2
  %7 = ptrtoint ptr %mshift to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %mshift, align 8
  %mwidth = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i88, i32 0, i32 3
  %8 = ptrtoint ptr %mwidth to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %mwidth, align 1
  %mmask = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i88, i32 0, i32 4
  %9 = ptrtoint ptr %mmask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %mmask, align 4
  %nshift = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i88, i32 0, i32 5
  %10 = ptrtoint ptr %nshift to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %nshift, align 8
  %nwidth = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i88, i32 0, i32 6
  %11 = ptrtoint ptr %nwidth to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %nwidth, align 1
  %nmask = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i88, i32 0, i32 7
  %12 = ptrtoint ptr %nmask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7, ptr %nmask, align 4
  %flags = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i88, i32 0, i32 8
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %flags, align 8
  br i1 %has_swrst, label %if.then23, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  %lock24 = getelementptr inbounds %struct.clk_fractional_divider, ptr %call7.i.i88, i32 0, i32 10
  %14 = ptrtoint ptr %lock24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @imx_ccm_lock, ptr %lock24, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end19.if.end26_crit_edge, %if.end12.if.end26_crit_edge
  %fd.0 = phi ptr [ %call7.i.i88, %if.then23 ], [ %call7.i.i88, %if.end19.if.end26_crit_edge ], [ null, %if.end12.if.end26_crit_edge ]
  br i1 %gate_present, label %if.then28, label %if.end26.if.end41_crit_edge

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then28:                                        ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i89 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 24) #6
  %tobool30.not = icmp eq ptr %call7.i.i89, null
  br i1 %tobool30.not, label %if.then28.cleanup.sink.split.sink.split_crit_edge, label %if.end33

if.then28.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.sink.split

if.end33:                                         ; preds = %if.then28
  %reg35 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i89, i32 0, i32 1
  %16 = ptrtoint ptr %reg35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %reg, ptr %reg35, align 4
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i89, i32 0, i32 2
  %17 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 30, ptr %bit_idx, align 8
  br i1 %has_swrst, label %if.then37, label %if.end33.if.end39_crit_edge

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  %lock38 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i89, i32 0, i32 4
  %18 = ptrtoint ptr %lock38 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @imx_ccm_lock, ptr %lock38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end33.if.end39_crit_edge
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #3, !srcloc !13
  %20 = and i32 %19, -65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %20) #3, !srcloc !14
  br label %if.end41

if.end41:                                         ; preds = %if.end39, %if.end26.if.end41_crit_edge
  %gate.0 = phi ptr [ %call7.i.i89, %if.end39 ], [ null, %if.end26.if.end41_crit_edge ]
  %cond = select i1 %has_swrst, ptr @pcc_gate_ops, ptr @clk_gate_ops
  %call43 = tail call ptr @clk_hw_register_composite(ptr noundef null, ptr noundef %name, ptr noundef %parent_names, i32 noundef %num_parents, ptr noundef %mux_hw.0, ptr noundef nonnull @clk_mux_ops, ptr noundef %fd.0, ptr noundef nonnull @clk_fractional_divider_ops, ptr noundef %gate.0, ptr noundef nonnull %cond, i32 noundef 131) #3
  %cmp.i = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kfree(ptr noundef %mux_hw.0) #3
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then45, %if.then28.cleanup.sink.split.sink.split_crit_edge
  %mux_hw.0.sink = phi ptr [ %fd.0, %if.then45 ], [ %mux_hw.0, %if.then28.cleanup.sink.split.sink.split_crit_edge ]
  %gate.0.sink.ph = phi ptr [ %gate.0, %if.then45 ], [ %fd.0, %if.then28.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi ptr [ %call43, %if.then45 ], [ inttoptr (i32 -12 to ptr), %if.then28.cleanup.sink.split.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef %mux_hw.0.sink) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then14.cleanup.sink.split_crit_edge
  %gate.0.sink = phi ptr [ %mux_hw.0, %if.then14.cleanup.sink.split_crit_edge ], [ %gate.0.sink.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.then14.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @kfree(ptr noundef %gate.0.sink) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end41.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call43, %if.end41.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx8ulp_clk_hw_composite(ptr noundef %name, ptr noundef %parent_names, i32 noundef %num_parents, i1 noundef zeroext %mux_present, i1 noundef zeroext %rate_present, i1 noundef zeroext %gate_present, ptr noundef %reg, i1 noundef zeroext %has_swrst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @imx_ulp_clk_hw_composite(ptr noundef %name, ptr noundef %parent_names, i32 noundef %num_parents, i1 noundef zeroext %mux_present, i1 noundef zeroext %rate_present, i1 noundef zeroext %gate_present, ptr noundef %reg, i1 noundef zeroext %has_swrst)
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcc_gate_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4), align 4
  %call = tail call i32 %0(ptr noundef %hw) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %lock = getelementptr inbounds %struct.clk_gate, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #3
  %reg = getelementptr inbounds %struct.clk_gate, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %6 = or i32 %5, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #3, !srcloc !14
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call4) #3
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcc_gate_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5), align 4
  tail call void %0(ptr noundef %hw) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcc_gate_is_enabled(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6), align 4
  %call = tail call i32 %0(ptr noundef %hw) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_imx8ulp_clk_hw_composite, !1, !"__ksymtab_imx8ulp_clk_hw_composite", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-composite-7ulp.c", i32 169, i32 1}
!2 = !{ptr @pcc_gate_ops, !3, !"pcc_gate_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-composite-7ulp.c", i32 64, i32 29}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 4029427}
!14 = !{i64 4029009}
!15 = !{i64 2152520031}
!16 = !{i64 2152520321}
