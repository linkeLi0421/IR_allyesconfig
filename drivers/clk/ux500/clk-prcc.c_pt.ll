; ModuleID = '/llk/IR_all_yes/drivers/clk/ux500/clk-prcc.c_pt.bc'
source_filename = "../drivers/clk/ux500/clk-prcc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_prcc = type { %struct.clk_hw, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_prcc_pclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_prcc_pclk_enable, ptr @clk_prcc_pclk_disable, ptr @clk_prcc_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_prcc_kclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_prcc_kclk_enable, ptr @clk_prcc_kclk_disable, ptr @clk_prcc_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_reg_prcc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013clk_prcc: %s invalid arguments passed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_reg_prcc\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clk/ux500/clk-prcc.c\00", [35 x i8] zeroinitializer }, align 32
@clk_reg_prcc._entry_ptr = internal global ptr @clk_reg_prcc._entry, section ".printk_index", align 4
@clk_reg_prcc._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013clk_prcc: %s failed to register clk\0A\00", [57 x i8] zeroinitializer }, align 32
@clk_reg_prcc._entry_ptr.5 = internal global ptr @clk_reg_prcc._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.6 = private unnamed_addr constant [18 x i8] c"clk_prcc_pclk_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 81, i32 29 }
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"clk_prcc_kclk_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 87, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 105, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [32 x i8] c"../drivers/clk/ux500/clk-prcc.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 137, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @clk_reg_prcc._entry, ptr @clk_reg_prcc._entry.3, ptr @clk_reg_prcc._entry_ptr, ptr @clk_reg_prcc._entry_ptr.5, ptr @clk_prcc_pclk_ops, ptr @clk_prcc_kclk_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_prcc_pclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_prcc_kclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_reg_prcc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_reg_prcc._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcc_pclk(ptr noundef %name, ptr noundef %parent_name, i32 noundef %phy_base, i32 noundef %cg_sel, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @clk_reg_prcc(ptr noundef %name, ptr noundef %parent_name, i32 noundef %phy_base, i32 noundef %cg_sel, i32 noundef %flags, ptr noundef nonnull @clk_prcc_pclk_ops)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @clk_reg_prcc(ptr noundef %name, ptr noundef %parent_name, i32 noundef %phy_base, i32 noundef %cg_sel, i32 noundef %flags, ptr noundef %clk_prcc_ops) unnamed_addr #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %clk_prcc_init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %clk_prcc_init) #7
  %1 = call ptr @memset(ptr %clk_prcc_init, i32 255, i32 28)
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #11
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @ioremap(i32 noundef %phy_base, i32 noundef 4096) #7
  %base = getelementptr inbounds %struct.clk_prcc, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %base, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end6.free_clk_crit_edge, label %if.end11

if.end6.free_clk_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_clk

if.end11:                                         ; preds = %if.end6
  %cg_sel12 = getelementptr inbounds %struct.clk_prcc, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %cg_sel12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cg_sel, ptr %cg_sel12, align 8
  %is_enabled = getelementptr inbounds %struct.clk_prcc, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %is_enabled, align 4
  %6 = ptrtoint ptr %clk_prcc_init to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %clk_prcc_init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %clk_prcc_init, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %clk_prcc_ops, ptr %ops, align 4
  %flags14 = getelementptr inbounds %struct.clk_init_data, ptr %clk_prcc_init, i32 0, i32 6
  %8 = ptrtoint ptr %flags14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %flags, ptr %flags14, align 4
  %9 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent_name.addr, align 4
  %tobool15.not = icmp eq ptr %10, null
  %parent_name.addr. = select i1 %tobool15.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %clk_prcc_init, i32 0, i32 2
  %11 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool16.not = icmp ne ptr %10, null
  %conv = zext i1 %tobool16.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %clk_prcc_init, i32 0, i32 5
  %12 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %num_parents, align 4
  %init = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %clk_prcc_init, ptr %init, align 8
  %call19 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %tobool.not.i = icmp eq ptr %call19, null
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %unmap_clk, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

unmap_clk:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  call void @iounmap(ptr noundef %15) #7
  br label %free_clk

free_clk:                                         ; preds = %unmap_clk, %if.end6.free_clk_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #10
  br label %cleanup

cleanup:                                          ; preds = %free_clk, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %free_clk ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %call19, %if.end11.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %clk_prcc_init) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcc_kclk(ptr noundef %name, ptr noundef %parent_name, i32 noundef %phy_base, i32 noundef %cg_sel, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @clk_reg_prcc(ptr noundef %name, ptr noundef %parent_name, i32 noundef %phy_base, i32 noundef %cg_sel, i32 noundef %flags, ptr noundef nonnull @clk_prcc_kclk_ops)
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_prcc_pclk_enable(ptr nocapture noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %cg_sel = getelementptr inbounds %struct.clk_prcc, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_sel, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %base = getelementptr inbounds %struct.clk_prcc, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #7, !srcloc !24
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr320 = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr320) #7, !srcloc !25
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  %9 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cg_sel, align 4
  %and21 = and i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool.not22 = icmp eq i32 %and21, 0
  br i1 %tobool.not22, label %entry.do.end11_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

entry.do.end11_crit_edge:                         ; preds = %entry
  br label %do.end11

do.end11:                                         ; preds = %do.end11.do.end11_crit_edge, %entry.do.end11_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !28
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !25
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  %15 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cg_sel, align 4
  %and = and i32 %16, %14
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end11.do.end11_crit_edge, label %do.end11.while.end_crit_edge

do.end11.while.end_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end11.do.end11_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

while.end:                                        ; preds = %do.end11.while.end_crit_edge, %entry.while.end_crit_edge
  %is_enabled = getelementptr inbounds %struct.clk_prcc, ptr %hw, i32 0, i32 3
  %17 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %is_enabled, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_prcc_pclk_disable(ptr nocapture noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %cg_sel = getelementptr inbounds %struct.clk_prcc, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_sel, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %base = getelementptr inbounds %struct.clk_prcc, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #7, !srcloc !24
  %is_enabled = getelementptr inbounds %struct.clk_prcc, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %is_enabled, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_prcc_is_enabled(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_enabled = getelementptr inbounds %struct.clk_prcc, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_enabled, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_prcc_kclk_enable(ptr nocapture noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %cg_sel = getelementptr inbounds %struct.clk_prcc, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_sel, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %base = getelementptr inbounds %struct.clk_prcc, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #7, !srcloc !24
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr320 = getelementptr i8, ptr %6, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr320) #7, !srcloc !25
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  %9 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cg_sel, align 4
  %and21 = and i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool.not22 = icmp eq i32 %and21, 0
  br i1 %tobool.not22, label %entry.do.end11_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

entry.do.end11_crit_edge:                         ; preds = %entry
  br label %do.end11

do.end11:                                         ; preds = %do.end11.do.end11_crit_edge, %entry.do.end11_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !33
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %12, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !25
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  %15 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cg_sel, align 4
  %and = and i32 %16, %14
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end11.do.end11_crit_edge, label %do.end11.while.end_crit_edge

do.end11.while.end_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end11.do.end11_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

while.end:                                        ; preds = %do.end11.while.end_crit_edge, %entry.while.end_crit_edge
  %is_enabled = getelementptr inbounds %struct.clk_prcc, ptr %hw, i32 0, i32 3
  %17 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %is_enabled, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_prcc_kclk_disable(ptr nocapture noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %cg_sel = getelementptr inbounds %struct.clk_prcc, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_sel, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %base = getelementptr inbounds %struct.clk_prcc, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %4, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #7, !srcloc !24
  %is_enabled = getelementptr inbounds %struct.clk_prcc, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %is_enabled, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/ux500/clk-prcc.c", i32 105, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @clk_reg_prcc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @clk_reg_prcc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/ux500/clk-prcc.c", i32 137, i32 2}
!8 = !{ptr @clk_reg_prcc._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @clk_reg_prcc._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @clk_prcc_pclk_ops, !11, !"clk_prcc_pclk_ops", i1 false, i1 false}
!11 = !{!"../drivers/clk/ux500/clk-prcc.c", i32 81, i32 29}
!12 = !{ptr @clk_prcc_kclk_ops, !13, !"clk_prcc_kclk_ops", i1 false, i1 false}
!13 = !{!"../drivers/clk/ux500/clk-prcc.c", i32 87, i32 29}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2152893236}
!24 = !{i64 4948540}
!25 = !{i64 4948958}
!26 = !{i64 2152893930}
!27 = !{i64 2152894205}
!28 = !{i64 2152894047}
!29 = !{i64 2152895579}
!30 = !{i64 2152897155}
!31 = !{i64 2152897849}
!32 = !{i64 2152898124}
!33 = !{i64 2152897966}
!34 = !{i64 2152899498}
