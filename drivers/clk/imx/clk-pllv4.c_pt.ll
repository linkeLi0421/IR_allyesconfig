; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-pllv4.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-pllv4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+imx_clk_hw_pllv4\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_clk_hw_pllv4\09\09\09\09"
module asm "\09.long\09__crc_imx_clk_hw_pllv4\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_clk_hw_pllv4:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_clk_hw_pllv4\22\09\09\09\09\09"
module asm "__kstrtabns_imx_clk_hw_pllv4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pllv4 = type { %struct.clk_hw, ptr, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_pllv4_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_pllv4_prepare, ptr @clk_pllv4_unprepare, ptr @clk_pllv4_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllv4_recalc_rate, ptr @clk_pllv4_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllv4_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_imx_clk_hw_pllv4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_clk_hw_pllv4 = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_clk_hw_pllv4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_clk_hw_pllv4 to i32), ptr @__kstrtab_imx_clk_hw_pllv4, ptr @__kstrtabns_imx_clk_hw_pllv4 }, section "___ksymtab_gpl+imx_clk_hw_pllv4", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/imx/clk-pllv4.c\00", [36 x i8] zeroinitializer }, align 32
@clk_pllv4_round_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s: unable to round rate %lu, parent rate %lu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_pllv4_round_rate\00", [43 x i8] zeroinitializer }, align 32
@clk_pllv4_round_rate._entry_ptr = internal global ptr @clk_pllv4_round_rate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 16, i64 17, i64 20, i64 22, i64 27, i64 33]
@___asan_gen_.3 = private unnamed_addr constant [14 x i8] c"clk_pllv4_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 207, i32 29 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 60, i32 9 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [31 x i8] c"../drivers/clk/imx/clk-pllv4.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 112, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_imx_clk_hw_pllv4, ptr @clk_pllv4_round_rate._entry, ptr @clk_pllv4_round_rate._entry_ptr, ptr @clk_pllv4_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pllv4_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pllv4_round_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_pllv4(i32 noundef %type, ptr noundef %name, ptr noundef %parent_name, ptr noundef %base) #0 align 64 {
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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %base2 = getelementptr inbounds %struct.clk_pllv4, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %base2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base, ptr %base2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  %.sink33 = select i1 %cmp, i32 16, i32 8
  %.sink32 = select i1 %cmp, i32 28, i32 16
  %.sink = select i1 %cmp, i32 24, i32 20
  %5 = getelementptr inbounds %struct.clk_pllv4, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink33, ptr %5, align 8
  %7 = getelementptr inbounds %struct.clk_pllv4, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_pllv4, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %9, align 8
  %11 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @clk_pllv4_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %13 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %14 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %flags, align 4
  %init10 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %init10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %init, ptr %init10, align 8
  %call12 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.then14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %17 = inttoptr i32 %call12 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %17, %if.then14 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
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
define internal i32 @clk_pllv4_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv4, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !22
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #6, !srcloc !23
  %call.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call.i, 1000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %entry
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  %9 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.clk_pllv4_wait_lock.exit_crit_edge

for.cond.i.clk_pllv4_wait_lock.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_pllv4_wait_lock.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call13.i = tail call i64 @ktime_get() #6
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  %13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %phi.cmp.i = icmp eq i32 %13, 0
  %phi.sel.i = select i1 %phi.cmp.i, i32 -110, i32 0
  br label %clk_pllv4_wait_lock.exit

clk_pllv4_wait_lock.exit:                         ; preds = %if.then16.i, %for.cond.i.clk_pllv4_wait_lock.exit_crit_edge
  %and29.pre-phi.i = phi i32 [ %phi.sel.i, %if.then16.i ], [ 0, %for.cond.i.clk_pllv4_wait_lock.exit_crit_edge ]
  ret i32 %and29.pre-phi.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_pllv4_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv4, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !22
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #6, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv4_is_prepared(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv4, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !22
  %3 = lshr i32 %2, 24
  %.lobit = and i32 %3, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv4_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv4, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %cfg_offset = getelementptr inbounds %struct.clk_pllv4, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %cfg_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg_offset, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !22
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %num_offset = getelementptr inbounds %struct.clk_pllv4, ptr %hw, i32 0, i32 3
  %7 = ptrtoint ptr %num_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_offset, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 %8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !22
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %denom_offset = getelementptr inbounds %struct.clk_pllv4, ptr %hw, i32 0, i32 4
  %13 = ptrtoint ptr %denom_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %denom_offset, align 4
  %add.ptr10 = getelementptr i8, ptr %12, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #6, !srcloc !22
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %conv = zext i32 %parent_rate to i64
  %conv13 = zext i32 %10 to i64
  %mul = mul nuw i64 %conv13, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp184 = icmp ult i64 %mul, 4294967296
  br i1 %cmp184, label %if.then188, label %if.else194, !prof !26

if.then188:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv189 = trunc i64 %mul to i32
  %div192 = udiv i32 %conv189, %16
  br label %if.end198

if.else194:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %mul) #10, !srcloc !27
  %asmresult1.i = extractvalue { i64, i64 } %17, 1
  %extract.t315 = trunc i64 %asmresult1.i to i32
  br label %if.end198

if.end198:                                        ; preds = %if.else194, %if.then188
  %temp64.0.off0 = phi i32 [ %div192, %if.then188 ], [ %extract.t315, %if.else194 ]
  %18 = lshr i32 %4, 8
  %shr = and i32 %18, 127
  %mul200 = mul i32 %shr, %parent_rate
  %add202 = add i32 %temp64.0.off0, %mul200
  ret i32 %add202
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv4_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %mul = mul i32 %1, 33
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %rate)
  %cmp1.not = icmp ugt i32 %mul, %rate
  br i1 %cmp1.not, label %for.cond, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

for.cond:                                         ; preds = %entry
  %mul.1 = mul i32 %1, 27
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1, i32 %rate)
  %cmp1.not.1 = icmp ugt i32 %mul.1, %rate
  br i1 %cmp1.not.1, label %for.cond.1, label %for.cond.if.end4_crit_edge

for.cond.if.end4_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

for.cond.1:                                       ; preds = %for.cond
  %mul.2 = mul i32 %1, 22
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2, i32 %rate)
  %cmp1.not.2 = icmp ugt i32 %mul.2, %rate
  br i1 %cmp1.not.2, label %for.cond.2, label %for.cond.1.if.end4_crit_edge

for.cond.1.if.end4_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

for.cond.2:                                       ; preds = %for.cond.1
  %mul.3 = mul i32 %1, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3, i32 %rate)
  %cmp1.not.3 = icmp ugt i32 %mul.3, %rate
  br i1 %cmp1.not.3, label %for.cond.3, label %for.cond.2.if.end4_crit_edge

for.cond.2.if.end4_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

for.cond.3:                                       ; preds = %for.cond.2
  %mul.4 = mul i32 %1, 17
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.4, i32 %rate)
  %cmp1.not.4 = icmp ugt i32 %mul.4, %rate
  br i1 %cmp1.not.4, label %for.cond.4, label %for.cond.3.if.end4_crit_edge

for.cond.3.if.end4_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

for.cond.4:                                       ; preds = %for.cond.3
  %mul.5 = shl i32 %1, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.5, i32 %rate)
  %cmp1.not.5 = icmp ugt i32 %mul.5, %rate
  br i1 %cmp1.not.5, label %for.cond.5, label %for.cond.4.if.end4_crit_edge

for.cond.4.if.end4_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hw) #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %call, i32 noundef %rate, i32 noundef %1) #11
  br label %cleanup

if.end4:                                          ; preds = %for.cond.4.if.end4_crit_edge, %for.cond.3.if.end4_crit_edge, %for.cond.2.if.end4_crit_edge, %for.cond.1.if.end4_crit_edge, %for.cond.if.end4_crit_edge, %entry.if.end4_crit_edge
  %mul.lcssa = phi i32 [ %mul, %entry.if.end4_crit_edge ], [ %mul.1, %for.cond.if.end4_crit_edge ], [ %mul.2, %for.cond.1.if.end4_crit_edge ], [ %mul.3, %for.cond.2.if.end4_crit_edge ], [ %mul.4, %for.cond.3.if.end4_crit_edge ], [ %mul.5, %for.cond.4.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %1)
  %cmp5 = icmp ult i32 %1, 1073741824
  %spec.select = select i1 %cmp5, i32 %1, i32 1000000
  %sub = sub i32 %rate, %mul.lcssa
  %conv = zext i32 %sub to i64
  %conv8 = zext i32 %spec.select to i64
  %mul9 = mul nuw nsw i64 %conv, %conv8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul9)
  %cmp183 = icmp ult i64 %mul9, 4294967296
  br i1 %cmp183, label %if.then187, label %if.else193, !prof !26

if.then187:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %conv188 = trunc i64 %mul9 to i32
  %div191 = udiv i32 %conv188, %1
  %conv192 = zext i32 %div191 to i64
  br label %if.end197

if.else193:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %mul9) #10, !srcloc !27
  %asmresult1.i = extractvalue { i64, i64 } %2, 1
  br label %if.end197

if.end197:                                        ; preds = %if.else193, %if.then187
  %temp64.0 = phi i64 [ %conv192, %if.then187 ], [ %asmresult1.i, %if.else193 ]
  %conv199 = trunc i64 %temp64.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv199)
  %cmp200.not = icmp ugt i32 %spec.select, %conv199
  br i1 %cmp200.not, label %if.end203, label %if.end197.cleanup_crit_edge

if.end197.cleanup_crit_edge:                      ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end203:                                        ; preds = %if.end197
  %conv204 = zext i32 %1 to i64
  %conv205 = and i64 %temp64.0, 4294967295
  %mul206 = mul nuw i64 %conv205, %conv204
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul206)
  %cmp408 = icmp ult i64 %mul206, 4294967296
  br i1 %cmp408, label %if.then416, label %if.else422, !prof !26

if.then416:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #8
  %conv417 = trunc i64 %mul206 to i32
  %div420 = udiv i32 %conv417, %spec.select
  br label %if.end426

if.else422:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select, i64 %mul206) #10, !srcloc !27
  %asmresult1.i636 = extractvalue { i64, i64 } %3, 1
  %extract.t686 = trunc i64 %asmresult1.i636 to i32
  br label %if.end426

if.end426:                                        ; preds = %if.else422, %if.then416
  %temp64.1.off0 = phi i32 [ %div420, %if.then416 ], [ %extract.t686, %if.else422 ]
  %add429 = add i32 %temp64.1.off0, %mul.lcssa
  br label %cleanup

cleanup:                                          ; preds = %if.end426, %if.end197.cleanup_crit_edge, %for.cond.5
  %retval.0 = phi i32 [ %add429, %if.end426 ], [ 0, %for.cond.5 ], [ %mul.lcssa, %if.end197.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv4_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %rate, %parent_rate
  %0 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div, label %entry.cleanup_crit_edge [
    i32 33, label %entry.if.end_crit_edge
    i32 27, label %entry.if.end_crit_edge337
    i32 22, label %entry.if.end_crit_edge338
    i32 20, label %entry.if.end_crit_edge339
    i32 17, label %entry.if.end_crit_edge340
    i32 16, label %entry.if.end_crit_edge341
  ]

entry.if.end_crit_edge341:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge340:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge339:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge338:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge337:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge337, %entry.if.end_crit_edge338, %entry.if.end_crit_edge339, %entry.if.end_crit_edge340, %entry.if.end_crit_edge341
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %parent_rate)
  %cmp = icmp ult i32 %parent_rate, 1073741824
  %spec.select = select i1 %cmp, i32 %parent_rate, i32 1000000
  %mul = mul i32 %div, %parent_rate
  %sub = sub i32 %rate, %mul
  %conv = zext i32 %sub to i64
  %conv3 = zext i32 %spec.select to i64
  %mul4 = mul nuw nsw i64 %conv, %conv3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul4)
  %cmp178 = icmp ult i64 %mul4, 4294967296
  br i1 %cmp178, label %if.then182, label %if.else188, !prof !26

if.then182:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv183 = trunc i64 %mul4 to i32
  %div186 = udiv i32 %conv183, %parent_rate
  br label %if.end192

if.else188:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %mul4) #10, !srcloc !27
  %asmresult1.i = extractvalue { i64, i64 } %1, 1
  %extract.t335 = trunc i64 %asmresult1.i to i32
  br label %if.end192

if.end192:                                        ; preds = %if.else188, %if.then182
  %temp64.0.off0 = phi i32 [ %div186, %if.then182 ], [ %extract.t335, %if.else188 ]
  %base = getelementptr inbounds %struct.clk_pllv4, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %cfg_offset = getelementptr inbounds %struct.clk_pllv4, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %cfg_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg_offset, align 4
  %add.ptr195 = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195) #6, !srcloc !22
  %7 = and i32 %6, -32513
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %shl199 = shl nuw nsw i32 %div, 16
  %or200 = or i32 %8, %shl199
  %9 = tail call i32 @llvm.bswap.i32(i32 %or200)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %12 = ptrtoint ptr %cfg_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg_offset, align 4
  %add.ptr203 = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr203, i32 %9) #6, !srcloc !23
  %14 = tail call i32 @llvm.bswap.i32(i32 %temp64.0.off0)
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %num_offset = getelementptr inbounds %struct.clk_pllv4, ptr %hw, i32 0, i32 3
  %17 = ptrtoint ptr %num_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_offset, align 4
  %add.ptr205 = getelementptr i8, ptr %16, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr205, i32 %14) #6, !srcloc !23
  %19 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %denom_offset = getelementptr inbounds %struct.clk_pllv4, ptr %hw, i32 0, i32 4
  %22 = ptrtoint ptr %denom_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %denom_offset, align 4
  %add.ptr207 = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207, i32 %19) #6, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %if.end192, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end192 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_imx_clk_hw_pllv4, !1, !"__ksymtab_imx_clk_hw_pllv4", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-pllv4.c", i32 257, i32 1}
!2 = !{ptr @clk_pllv4_ops, !3, !"clk_pllv4_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-pllv4.c", i32 207, i32 29}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-pllv4.c", i32 60, i32 9}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/imx/clk-pllv4.c", i32 112, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @clk_pllv4_round_rate._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @clk_pllv4_round_rate._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = distinct !{null, !12, !"pllv4_mult_table", i1 false, i1 false}
!12 = !{!"../drivers/clk/imx/clk-pllv4.c", i32 50, i32 18}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 4030747}
!23 = !{i64 4030329}
!24 = !{i64 2152536457}
!25 = !{i64 2152536939}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2148945713, i64 2148945993, i64 2148946327, i64 2148946661}
