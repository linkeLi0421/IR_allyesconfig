; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-divider-gate.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-divider-gate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_divider_gate = type { %struct.clk_divider, i32 }

@clk_divider_gate_ro_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_divider_gate_recalc_rate_ro, ptr null, ptr @clk_divider_determine_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_divider_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_divider_enable, ptr @clk_divider_disable, ptr @clk_divider_is_enabled, ptr null, ptr null, ptr null, ptr @clk_divider_gate_recalc_rate, ptr null, ptr @clk_divider_determine_rate, ptr null, ptr null, ptr @clk_divider_gate_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clk_divider_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@clk_divider_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: no valid preset rate\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_divider_enable\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/clk/imx/clk-divider-gate.c\00", [61 x i8] zeroinitializer }, align 32
@clk_divider_enable._entry_ptr = internal global ptr @clk_divider_enable._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [24 x i8] c"clk_divider_gate_ro_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 155, i32 29 }
@___asan_gen_.6 = private unnamed_addr constant [21 x i8] c"clk_divider_gate_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 160, i32 29 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [38 x i8] c"../drivers/clk/imx/clk-divider-gate.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 111, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @clk_divider_enable._entry, ptr @clk_divider_enable._entry_ptr, ptr @clk_divider_gate_ro_ops, ptr @clk_divider_gate_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_divider_gate_ro_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_divider_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_divider_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_divider_gate(ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, ptr noundef %reg, i8 noundef zeroext %shift, i8 noundef zeroext %width, i8 noundef zeroext %clk_divider_flags, ptr noundef %table, ptr noundef %lock) local_unnamed_addr #0 align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %5 = and i8 %clk_divider_flags, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool3.not, ptr @clk_divider_gate_ops, ptr @clk_divider_gate_ro_ops
  %6 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select, ptr %6, align 4
  %flags7 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %flags, ptr %flags7, align 4
  %9 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent_name.addr, align 4
  %tobool8.not = icmp eq ptr %10, null
  %parent_name.addr. = select i1 %tobool8.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %11 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool9.not = icmp ne ptr %10, null
  %conv11 = zext i1 %tobool9.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %12 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv11, ptr %num_parents, align 4
  %reg12 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %reg12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg, ptr %reg12, align 4
  %shift14 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %shift14 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %shift, ptr %shift14, align 8
  %width16 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %width16 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %width, ptr %width16, align 1
  %lock18 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %lock18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %lock, ptr %lock18, align 8
  %table20 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %table20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %table, ptr %table20, align 4
  %init23 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %init23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %init, ptr %init23, align 8
  %or = or i8 %clk_divider_flags, 1
  %flags27 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %flags27 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %or, ptr %flags27, align 2
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #6, !srcloc !19
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !20
  %conv30 = zext i8 %shift to i32
  %shr = lshr i32 %21, %conv30
  %conv31 = zext i8 %width to i32
  %notmask = shl nsw i32 -1, %conv31
  %sub = xor i32 %notmask, -1
  %and32 = and i32 %shr, %sub
  %cached_val = getelementptr inbounds %struct.clk_divider_gate, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %cached_val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and32, ptr %cached_val, align 4
  %call35 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end.cleanup_crit_edge, label %if.then37

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %23 = inttoptr i32 %call35 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %23, %if.then37 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_divider_gate_recalc_rate_ro(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !19
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !21
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %table = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 5
  %8 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %table, align 4
  %flags = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 2
  %conv4 = zext i8 %11 to i32
  %call7 = tail call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %and, ptr noundef %9, i32 noundef %conv4, i32 noundef %conv3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_divider_determine_rate(ptr noundef %hw, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 12), align 4
  %call = tail call i32 %0(ptr noundef %hw, ptr noundef %req) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_divider_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cached_val = getelementptr inbounds %struct.clk_divider_gate, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cached_val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cached_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %call2) #10
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %reg = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !19
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  %8 = ptrtoint ptr %cached_val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cached_val, align 4
  %shift = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 2
  %10 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %shift, align 4
  %conv17 = zext i8 %11 to i32
  %shl = shl i32 %9, %conv17
  %or = or i32 %shl, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #6, !srcloc !24
  %15 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %call8) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body5, %do.end
  %retval.0 = phi i32 [ 0, %do.body5 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_divider_disable(ptr nocapture noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %reg = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !19
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  %shift = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 4
  %conv10 = zext i8 %7 to i32
  %shr = lshr i32 %5, %conv10
  %width = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width, align 1
  %conv11 = zext i8 %9 to i32
  %notmask = shl nsw i32 -1, %conv11
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %cached_val = getelementptr inbounds %struct.clk_divider_gate, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %cached_val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %cached_val, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #6, !srcloc !24
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %call4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_divider_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !19
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_divider_gate_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %call7 = tail call zeroext i1 @clk_hw_is_enabled(ptr noundef %hw) #6
  br i1 %call7, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cached_val = getelementptr inbounds %struct.clk_divider_gate, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %cached_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cached_val, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reg = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !19
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  %shift = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 2
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 4
  %conv11 = zext i8 %9 to i32
  %shr = lshr i32 %7, %conv11
  %width = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %width, align 1
  %conv12 = zext i8 %11 to i32
  %notmask = shl nsw i32 -1, %conv12
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %and, %if.else ], [ %3, %if.then ]
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %tobool.not = icmp eq i32 %val.0, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %table = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 5
  %14 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %table, align 4
  %flags16 = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 4
  %16 = ptrtoint ptr %flags16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags16, align 2
  %conv17 = zext i8 %17 to i32
  %width18 = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 3
  %18 = ptrtoint ptr %width18 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %width18, align 1
  %conv19 = zext i8 %19 to i32
  %call20 = tail call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %val.0, ptr noundef %15, i32 noundef %conv17, i32 noundef %conv19) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end15 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_divider_gate_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %width = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %width, align 1
  %flags1 = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags1, align 2
  %conv = zext i8 %5 to i32
  %call2 = tail call i32 @divider_get_val(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef %1, i8 noundef zeroext %3, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body4:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 6
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  %call12 = tail call zeroext i1 @clk_hw_is_enabled(ptr noundef %hw) #6
  br i1 %call12, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %reg = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !19
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %width, align 1
  %conv18 = zext i8 %13 to i32
  %notmask = shl nsw i32 -1, %conv18
  %sub = xor i32 %notmask, -1
  %shift = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 2
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift, align 4
  %conv19 = zext i8 %15 to i32
  %shl20 = shl i32 %sub, %conv19
  %neg = xor i32 %shl20, -1
  %and = and i32 %11, %neg
  %shl23 = shl i32 %call2, %conv19
  %or = or i32 %and, %shl23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !24
  br label %if.end28

if.else:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %cached_val = getelementptr inbounds %struct.clk_divider_gate, ptr %hw, i32 0, i32 1
  %19 = ptrtoint ptr %cached_val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call2, ptr %cached_val, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then13
  %20 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_hw_is_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @clk_divider_gate_ro_ops, !1, !"clk_divider_gate_ro_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-divider-gate.c", i32 155, i32 29}
!2 = !{ptr @clk_divider_gate_ops, !3, !"clk_divider_gate_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-divider-gate.c", i32 160, i32 29}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-divider-gate.c", i32 111, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @clk_divider_enable._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @clk_divider_enable._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 4030582}
!20 = !{i64 2152536228}
!21 = !{i64 2152523058}
!22 = !{i64 2152531044}
!23 = !{i64 2152531249}
!24 = !{i64 4030164}
!25 = !{i64 2152533388}
!26 = !{i64 2152533623}
!27 = !{i64 2152535406}
!28 = !{i64 2152525063}
!29 = !{i64 2152527068}
!30 = !{i64 2152527305}
