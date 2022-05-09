; ModuleID = '/llk/IR_all_yes/drivers/clk/renesas/rcar-cpg-lib.c_pt.bc'
source_filename = "../drivers/clk/renesas/rcar-cpg-lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpg_simple_notifier = type { %struct.notifier_block, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.rpc_clock = type { %struct.clk_divider, %struct.clk_gate, %struct.cpg_simple_notifier }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.rpcd2_clock = type { %struct.clk_fixed_factor, %struct.clk_gate }

@cpg_lock = dso_local global { %struct.spinlock, [52 x i8] } zeroinitializer, align 32
@cpg_sdh_div_table = internal constant { [6 x %struct.clk_div_table], [48 x i8] } { [6 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 130, i32 4 }, %struct.clk_div_table { i32 131, i32 8 }, %struct.clk_div_table { i32 132, i32 16 }, %struct.clk_div_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cpg_sd_div_table = internal constant { [3 x %struct.clk_div_table], [40 x i8] } { [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 4 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@cpg_rpc_div_table = internal constant { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 16]
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"cpg_lock\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 25, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"cpg_sdh_div_table\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 72, i32 35 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"cpg_sd_div_table\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 102, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"cpg_rpc_div_table\00", align 1
@___asan_gen_.11 = private constant [38 x i8] c"../drivers/clk/renesas/rcar-cpg-lib.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 123, i32 35 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @cpg_lock, ptr @cpg_sdh_div_table, ptr @cpg_sd_div_table, ptr @cpg_rpc_div_table], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_sdh_div_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_sd_div_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_rpc_div_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpg_reg_modify(ptr noundef %reg, i32 noundef %clear, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cpg_lock) #5
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #5, !srcloc !17
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !18
  %neg = xor i32 %clear, -1
  %and = and i32 %1, %neg
  %or = or i32 %and, %set
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %2) #5, !srcloc !20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cpg_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpg_simple_notifier_register(ptr noundef %notifiers, ptr noundef %csn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %csn to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cpg_simple_notifier_call, ptr %csn, align 4
  %call = tail call i32 @raw_notifier_chain_register(ptr noundef %notifiers, ptr noundef %csn) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_simple_notifier_call(ptr nocapture noundef %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 16, label %do.body
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reg = getelementptr inbounds %struct.cpg_simple_notifier, ptr %nb, i32 0, i32 1
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !17
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  %saved = getelementptr inbounds %struct.cpg_simple_notifier, ptr %nb, i32 0, i32 2
  %5 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %saved, align 4
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %saved4 = getelementptr inbounds %struct.cpg_simple_notifier, ptr %nb, i32 0, i32 2
  %6 = ptrtoint ptr %saved4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %saved4, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %reg5 = getelementptr inbounds %struct.cpg_simple_notifier, ptr %nb, i32 0, i32 1
  %9 = ptrtoint ptr %reg5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #5, !srcloc !20
  br label %cleanup

cleanup:                                          ; preds = %do.body, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 1, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cpg_sdh_clk_register(ptr noundef %name, ptr noundef %sdnckcr, ptr noundef %parent_name, ptr noundef %notifiers) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.cpg_simple_notifier, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sdnckcr, ptr %reg, align 4
  %call2 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %name, ptr noundef %parent_name, i32 noundef 0, ptr noundef %sdnckcr, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef nonnull @cpg_sdh_div_table, ptr noundef nonnull @cpg_lock) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cpg_simple_notifier_call, ptr %call7.i.i, align 8
  %call.i = tail call i32 @raw_notifier_chain_register(ptr noundef %notifiers, ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.then4 ], [ %call2, %if.end5 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cpg_sd_clk_register(ptr noundef %name, ptr noundef %sdnckcr, ptr noundef %parent_name) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %name, ptr noundef %parent_name, i32 noundef 0, ptr noundef %sdnckcr, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @cpg_sd_div_table, ptr noundef nonnull @cpg_lock) #5
  ret ptr %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cpg_rpc_clk_register(ptr noundef %name, ptr noundef %rpcckcr, ptr noundef %parent_name, ptr noundef %notifiers) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 72) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rpcckcr, ptr %reg, align 4
  %width = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %width, align 1
  %table = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cpg_rpc_div_table, ptr %table, align 4
  %lock = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cpg_lock, ptr %lock, align 8
  %gate = getelementptr inbounds %struct.rpc_clock, ptr %call7.i.i, i32 0, i32 1
  %reg5 = getelementptr inbounds %struct.rpc_clock, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %reg5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rpcckcr, ptr %reg5, align 8
  %bit_idx = getelementptr inbounds %struct.rpc_clock, ptr %call7.i.i, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %bit_idx, align 4
  %flags = getelementptr inbounds %struct.rpc_clock, ptr %call7.i.i, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %flags, align 1
  %lock9 = getelementptr inbounds %struct.rpc_clock, ptr %call7.i.i, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %lock9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cpg_lock, ptr %lock9, align 8
  %reg10 = getelementptr inbounds %struct.rpc_clock, ptr %call7.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %reg10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rpcckcr, ptr %reg10, align 8
  %call14 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %name, ptr noundef nonnull %parent_name.addr, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @clk_divider_ops, ptr noundef %gate, ptr noundef nonnull @clk_gate_ops, i32 noundef 4) #5
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %csn = getelementptr inbounds %struct.rpc_clock, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %csn to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cpg_simple_notifier_call, ptr %csn, align 4
  %call.i = call i32 @raw_notifier_chain_register(ptr noundef %notifiers, ptr noundef %csn) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call14, %if.then16 ], [ %call14, %if.end17 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cpg_rpcd2_clk_register(ptr noundef %name, ptr noundef %rpcckcr, ptr noundef %parent_name) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 44) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mult = getelementptr inbounds %struct.clk_fixed_factor, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %mult, align 4
  %div = getelementptr inbounds %struct.clk_fixed_factor, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %div, align 8
  %gate = getelementptr inbounds %struct.rpcd2_clock, ptr %call7.i.i, i32 0, i32 1
  %reg = getelementptr inbounds %struct.rpcd2_clock, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rpcckcr, ptr %reg, align 8
  %bit_idx = getelementptr inbounds %struct.rpcd2_clock, ptr %call7.i.i, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 9, ptr %bit_idx, align 4
  %flags = getelementptr inbounds %struct.rpcd2_clock, ptr %call7.i.i, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %flags, align 1
  %lock = getelementptr inbounds %struct.rpcd2_clock, ptr %call7.i.i, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cpg_lock, ptr %lock, align 8
  %call9 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %name, ptr noundef nonnull %parent_name.addr, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @clk_fixed_factor_ops, ptr noundef %gate, ptr noundef nonnull @clk_gate_ops, i32 noundef 4) #5
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9, %if.then11 ], [ %call9, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @cpg_lock, !1, !"cpg_lock", i1 false, i1 false}
!1 = !{!"../drivers/clk/renesas/rcar-cpg-lib.c", i32 25, i32 12}
!2 = !{ptr @cpg_sdh_div_table, !3, !"cpg_sdh_div_table", i1 false, i1 false}
!3 = !{!"../drivers/clk/renesas/rcar-cpg-lib.c", i32 72, i32 35}
!4 = !{ptr @cpg_sd_div_table, !5, !"cpg_sd_div_table", i1 false, i1 false}
!5 = !{!"../drivers/clk/renesas/rcar-cpg-lib.c", i32 102, i32 35}
!6 = !{ptr @cpg_rpc_div_table, !7, !"cpg_rpc_div_table", i1 false, i1 false}
!7 = !{!"../drivers/clk/renesas/rcar-cpg-lib.c", i32 123, i32 35}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 4979677}
!18 = !{i64 2152925969}
!19 = !{i64 2152926169}
!20 = !{i64 4979259}
!21 = !{i64 2152927987}
!22 = !{i64 2152928213}
