; ModuleID = '/llk/IR_all_yes/drivers/clk/hisilicon/clk-hisi-phase.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hisi-phase.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clk_register_hisi_phase\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_register_hisi_phase\09\09\09\09"
module asm "\09.long\09__crc_clk_register_hisi_phase\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_register_hisi_phase:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_register_hisi_phase\22\09\09\09\09\09"
module asm "__kstrtabns_clk_register_hisi_phase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.hisi_phase_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, i8 }
%struct.clk_hisi_phase = type { %struct.clk_hw, ptr, ptr, ptr, i8, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_phase_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hisi_clk_get_phase, ptr @hisi_clk_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_register_hisi_phase = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_register_hisi_phase = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_register_hisi_phase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_register_hisi_phase to i32), ptr @__kstrtab_clk_register_hisi_phase, ptr @__kstrtabns_clk_register_hisi_phase }, section "___ksymtab_gpl+clk_register_hisi_phase", align 4
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"clk_phase_ops\00", align 1
@___asan_gen_.2 = private constant [42 x i8] c"../drivers/clk/hisilicon/clk-hisi-phase.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 88, i32 29 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_clk_register_hisi_phase, ptr @clk_phase_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_phase_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_register_hisi_phase(ptr noundef %dev, ptr noundef %clks, ptr noundef %base, ptr noundef %lock) #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #4
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.hisi_phase_clock, ptr %clks, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @clk_phase_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.hisi_phase_clock, ptr %clks, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %flags3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %flags3, align 4
  %parent_names = getelementptr inbounds %struct.hisi_phase_clock, ptr %clks, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent_names, align 4
  %tobool4.not = icmp eq ptr %10, null
  %spec.select = select i1 %tobool4.not, ptr null, ptr %parent_names
  %parent_names6 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %11 = ptrtoint ptr %parent_names6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select, ptr %parent_names6, align 4
  %tobool8.not = icmp ne ptr %10, null
  %conv = zext i1 %tobool8.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %12 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %num_parents, align 4
  %offset = getelementptr inbounds %struct.hisi_phase_clock, ptr %clks, i32 0, i32 4
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %14
  %reg = getelementptr inbounds %struct.clk_hisi_phase, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.hisi_phase_clock, ptr %clks, i32 0, i32 5
  %16 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift, align 4
  %shift10 = getelementptr inbounds %struct.clk_hisi_phase, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %shift10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %shift10, align 4
  %width = getelementptr inbounds %struct.hisi_phase_clock, ptr %clks, i32 0, i32 6
  %19 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %width, align 1
  %conv11 = zext i8 %20 to i32
  %notmask = shl nsw i32 -1, %conv11
  %sub = xor i32 %notmask, -1
  %conv13 = zext i8 %17 to i32
  %shl14 = shl i32 %sub, %conv13
  %mask = getelementptr inbounds %struct.clk_hisi_phase, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl14, ptr %mask, align 4
  %lock15 = getelementptr inbounds %struct.clk_hisi_phase, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %lock15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %lock, ptr %lock15, align 4
  %phase_degrees = getelementptr inbounds %struct.hisi_phase_clock, ptr %clks, i32 0, i32 7
  %23 = ptrtoint ptr %phase_degrees to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phase_degrees, align 4
  %phase_degrees16 = getelementptr inbounds %struct.clk_hisi_phase, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %phase_degrees16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %phase_degrees16, align 4
  %phase_regvals = getelementptr inbounds %struct.hisi_phase_clock, ptr %clks, i32 0, i32 8
  %26 = ptrtoint ptr %phase_regvals to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phase_regvals, align 4
  %phase_regvals17 = getelementptr inbounds %struct.clk_hisi_phase, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %phase_regvals17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %phase_regvals17, align 4
  %phase_num = getelementptr inbounds %struct.hisi_phase_clock, ptr %clks, i32 0, i32 9
  %29 = ptrtoint ptr %phase_num to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %phase_num, align 4
  %phase_num18 = getelementptr inbounds %struct.clk_hisi_phase, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %phase_num18 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %phase_num18, align 4
  %init19 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %init19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %init, ptr %init19, align 4
  %call21 = call ptr @devm_clk_register(ptr noundef %dev, ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call21, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #4
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_clk_get_phase(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.clk_hisi_phase, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !13
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %mask = getelementptr inbounds %struct.clk_hisi_phase, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %and = and i32 %5, %3
  %shift = getelementptr inbounds %struct.clk_hisi_phase, ptr %hw, i32 0, i32 6
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 4
  %conv = zext i8 %7 to i32
  %shr = lshr i32 %and, %conv
  %phase_num.i = getelementptr inbounds %struct.clk_hisi_phase, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %phase_num.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %phase_num.i, align 4
  %conv.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp11.not.i = icmp eq i8 %9, 0
  br i1 %cmp11.not.i, label %entry.hisi_phase_regval_to_degrees.exit_crit_edge, label %for.body.lr.ph.i

entry.hisi_phase_regval_to_degrees.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hisi_phase_regval_to_degrees.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %phase_regvals.i = getelementptr inbounds %struct.clk_hisi_phase, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %phase_regvals.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phase_regvals.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %11, i32 %i.012.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %shr)
  %cmp2.i = icmp eq i32 %13, %shr
  br i1 %cmp2.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %phase_degrees.i = getelementptr inbounds %struct.clk_hisi_phase, ptr %hw, i32 0, i32 2
  %14 = ptrtoint ptr %phase_degrees.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phase_degrees.i, align 4
  %arrayidx4.i = getelementptr i32, ptr %15, i32 %i.012.i
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  br label %hisi_phase_regval_to_degrees.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.hisi_phase_regval_to_degrees.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.hisi_phase_regval_to_degrees.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hisi_phase_regval_to_degrees.exit

hisi_phase_regval_to_degrees.exit:                ; preds = %for.inc.i.hisi_phase_regval_to_degrees.exit_crit_edge, %if.then.i, %entry.hisi_phase_regval_to_degrees.exit_crit_edge
  %retval.0.i = phi i32 [ %17, %if.then.i ], [ -22, %entry.hisi_phase_regval_to_degrees.exit_crit_edge ], [ -22, %for.inc.i.hisi_phase_regval_to_degrees.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_clk_set_phase(ptr nocapture noundef readonly %hw, i32 noundef %degrees) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phase_num.i = getelementptr inbounds %struct.clk_hisi_phase, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %phase_num.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phase_num.i, align 4
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp11.not.i = icmp eq i8 %1, 0
  br i1 %cmp11.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %phase_degrees.i = getelementptr inbounds %struct.clk_hisi_phase, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %phase_degrees.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phase_degrees.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %3, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %degrees)
  %cmp2.i = icmp eq i32 %5, %degrees
  br i1 %cmp2.i, label %hisi_phase_degrees_to_regval.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

hisi_phase_degrees_to_regval.exit:                ; preds = %for.body.i
  %phase_regvals.i = getelementptr inbounds %struct.clk_hisi_phase, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %phase_regvals.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phase_regvals.i, align 4
  %arrayidx4.i = getelementptr i32, ptr %7, i32 %i.012.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %hisi_phase_degrees_to_regval.exit.cleanup_crit_edge, label %do.body1

hisi_phase_degrees_to_regval.exit.cleanup_crit_edge: ; preds = %hisi_phase_degrees_to_regval.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body1:                                         ; preds = %hisi_phase_degrees_to_regval.exit
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr inbounds %struct.clk_hisi_phase, ptr %hw, i32 0, i32 8
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #4
  %reg = getelementptr inbounds %struct.clk_hisi_phase, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !13
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %mask = getelementptr inbounds %struct.clk_hisi_phase, ptr %hw, i32 0, i32 5
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask, align 4
  %neg = xor i32 %17, -1
  %and = and i32 %15, %neg
  %shift = getelementptr inbounds %struct.clk_hisi_phase, ptr %hw, i32 0, i32 6
  %18 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %shift, align 4
  %conv11 = zext i8 %19 to i32
  %shl = shl i32 %9, %conv11
  %or = or i32 %shl, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %20 = tail call i32 @llvm.bswap.i32(i32 %or)
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #4, !srcloc !17
  %23 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %call5) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %hisi_phase_degrees_to_regval.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body1 ], [ %9, %hisi_phase_degrees_to_regval.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_clk_register_hisi_phase, !1, !"__ksymtab_clk_register_hisi_phase", i1 false, i1 false}
!1 = !{!"../drivers/clk/hisilicon/clk-hisi-phase.c", i32 121, i32 1}
!2 = !{ptr @clk_phase_ops, !3, !"clk_phase_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/hisilicon/clk-hisi-phase.c", i32 88, i32 29}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 686364}
!14 = !{i64 2152910868}
!15 = !{i64 2152912886}
!16 = !{i64 2152913093}
!17 = !{i64 685946}
