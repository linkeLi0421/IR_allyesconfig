; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-gate2.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-gate2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clk_hw_register_gate2\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_hw_register_gate2\09\09\09\09"
module asm "\09.long\09__crc_clk_hw_register_gate2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_register_gate2:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_register_gate2\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_register_gate2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_gate2 = type { %struct.clk_hw, ptr, i8, i8, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_gate2_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_gate2_enable, ptr @clk_gate2_disable, ptr @clk_gate2_is_enabled, ptr @clk_gate2_disable_unused, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_hw_register_gate2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_register_gate2 = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_register_gate2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_register_gate2 to i32), ptr @__kstrtab_clk_hw_register_gate2, ptr @__kstrtabns_clk_hw_register_gate2 }, section "___ksymtab_gpl+clk_hw_register_gate2", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/imx/clk-gate2.c\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"clk_gate2_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 129, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [31 x i8] c"../drivers/clk/imx/clk-gate2.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 78, i32 7 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_clk_hw_register_gate2, ptr @clk_gate2_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_gate2_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_hw_register_gate2(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, ptr noundef %reg, i8 noundef zeroext %bit_idx, i8 noundef zeroext %cgr_val, i8 noundef zeroext %cgr_mask, i8 noundef zeroext %clk_gate2_flags, ptr noundef %lock, ptr noundef %share_count) #0 align 64 {
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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg2 = getelementptr inbounds %struct.clk_gate2, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %reg2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %reg, ptr %reg2, align 4
  %bit_idx3 = getelementptr inbounds %struct.clk_gate2, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %bit_idx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bit_idx, ptr %bit_idx3, align 8
  %cgr_val4 = getelementptr inbounds %struct.clk_gate2, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %cgr_val4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %cgr_val, ptr %cgr_val4, align 1
  %cgr_mask5 = getelementptr inbounds %struct.clk_gate2, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %cgr_mask5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %cgr_mask, ptr %cgr_mask5, align 2
  %flags6 = getelementptr inbounds %struct.clk_gate2, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %flags6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %clk_gate2_flags, ptr %flags6, align 1
  %lock7 = getelementptr inbounds %struct.clk_gate2, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %lock7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lock, ptr %lock7, align 4
  %share_count8 = getelementptr inbounds %struct.clk_gate2, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %share_count8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %share_count, ptr %share_count8, align 8
  %11 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @clk_gate2_ops, ptr %ops, align 4
  %flags10 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %13 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %flags, ptr %flags10, align 4
  %14 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent_name.addr, align 4
  %tobool11.not = icmp eq ptr %15, null
  %parent_name.addr. = select i1 %tobool11.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %16 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool12.not = icmp ne ptr %15, null
  %conv = zext i1 %tobool12.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %17 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %num_parents, align 4
  %init15 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %init15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %init, ptr %init15, align 8
  %call17 = call i32 @clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end.cleanup_crit_edge, label %if.then19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %19 = inttoptr i32 %call17 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %19, %if.then19 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
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
define internal i32 @clk_gate2_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #5
  %share_count = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %share_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %share_count, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.not = icmp eq i32 %5, 0
  br i1 %cmp7.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %reg1.i = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg1.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !15
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %cgr_mask.i = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %cgr_mask.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cgr_mask.i, align 2
  %conv.i = zext i8 %11 to i32
  %bit_idx.i = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 2
  %12 = ptrtoint ptr %bit_idx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bit_idx.i, align 4
  %conv4.i = zext i8 %13 to i32
  %shl.i = shl i32 %conv.i, %conv4.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %9, %neg.i
  %cgr_val.i = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 3
  %14 = ptrtoint ptr %cgr_val.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cgr_val.i, align 1
  %and821.i = and i8 %15, %11
  %and8.i = zext i8 %and821.i to i32
  %shl11.i = shl i32 %and8.i, %conv4.i
  %or.i = or i32 %shl11.i, %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %17 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #5, !srcloc !18
  br label %out

out:                                              ; preds = %if.end, %land.lhs.true.out_crit_edge
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_gate2_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #5
  %share_count = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %share_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %share_count, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end41_crit_edge, label %if.then

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7 = icmp eq i32 %5, 0
  br i1 %cmp7, label %do.end20, label %if.else.critedge, !prof !19

do.end20:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef null) #5
  br label %out

if.else.critedge:                                 ; preds = %if.then
  %dec = add i32 %5, -1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp36.not = icmp eq i32 %dec, 0
  br i1 %cmp36.not, label %if.else.critedge.if.end41_crit_edge, label %if.else.critedge.out_crit_edge

if.else.critedge.out_crit_edge:                   ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.else.critedge.if.end41_crit_edge:              ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.end41:                                         ; preds = %if.else.critedge.if.end41_crit_edge, %entry.if.end41_crit_edge
  %reg1.i = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg1.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !15
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %cgr_mask.i = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 4
  %11 = ptrtoint ptr %cgr_mask.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cgr_mask.i, align 2
  %conv.i = zext i8 %12 to i32
  %bit_idx.i = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 2
  %13 = ptrtoint ptr %bit_idx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bit_idx.i, align 4
  %conv4.i = zext i8 %14 to i32
  %shl.i = shl i32 %conv.i, %conv4.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %10, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %16 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #5, !srcloc !18
  br label %out

out:                                              ; preds = %if.end41, %if.else.critedge.out_crit_edge, %do.end20
  %18 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %call3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_gate2_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #5
  %reg = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %bit_idx = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bit_idx, align 4
  %cgr_val = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %cgr_val to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cgr_val, align 1
  %cgr_mask = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %cgr_mask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cgr_mask, align 2
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !15
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv.i = zext i8 %5 to i32
  %shr.i = lshr i32 %11, %conv.i
  %conv2.i = zext i8 %9 to i32
  %and.i = and i32 %shr.i, %conv2.i
  %conv3.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv3.i)
  %cmp.i = icmp eq i32 %and.i, %conv3.i
  %..i = zext i1 %cmp.i to i32
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %call3) #5
  ret i32 %..i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_gate2_disable_unused(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #5
  %share_count = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %share_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %share_count, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7 = icmp eq i32 %5, 0
  br i1 %cmp7, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %reg1.i = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg1.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !15
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %cgr_mask.i = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %cgr_mask.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cgr_mask.i, align 2
  %conv.i = zext i8 %11 to i32
  %bit_idx.i = getelementptr inbounds %struct.clk_gate2, ptr %hw, i32 0, i32 2
  %12 = ptrtoint ptr %bit_idx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bit_idx.i, align 4
  %conv4.i = zext i8 %13 to i32
  %shl.i = shl i32 %conv.i, %conv4.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %9, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %15 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %17 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %call3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
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

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_clk_hw_register_gate2, !1, !"__ksymtab_clk_hw_register_gate2", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-gate2.c", i32 177, i32 1}
!2 = !{ptr @clk_gate2_ops, !3, !"clk_gate2_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-gate2.c", i32 129, i32 29}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-gate2.c", i32 78, i32 7}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 5109933}
!16 = !{i64 2152679508}
!17 = !{i64 2152679714}
!18 = !{i64 5109515}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2152683834}
