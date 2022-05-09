; ModuleID = '/llk/IR_all_yes/drivers/clk/berlin/berlin2-div.c_pt.bc'
source_filename = "../drivers/clk/berlin/berlin2-div.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.berlin2_div = type { %struct.clk_hw, ptr, %struct.berlin2_div_map, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.berlin2_div_map = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }

@berlin2_div_mux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @berlin2_div_set_parent, ptr @berlin2_div_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@berlin2_div_rate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @berlin2_div_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@berlin2_div_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @berlin2_div_enable, ptr @berlin2_div_disable, ptr @berlin2_div_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_div = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\02\04\06\08\0C\01\01", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"berlin2_div_mux_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 222, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"berlin2_div_rate_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 212, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"berlin2_div_gate_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 216, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant [8 x i8] c"clk_div\00", align 1
@___asan_gen_.11 = private constant [36 x i8] c"../drivers/clk/berlin/berlin2-div.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 63, i32 11 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @berlin2_div_mux_ops, ptr @berlin2_div_rate_ops, ptr @berlin2_div_gate_ops, ptr @clk_div], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2_div_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2_div_rate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2_div_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_div to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @berlin2_div_register(ptr nocapture noundef readonly %map, ptr noundef %base, ptr noundef %name, i8 noundef zeroext %div_flags, ptr noundef %parent_names, i32 noundef %num_parents, i32 noundef %flags, ptr noundef %lock) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %map2 = getelementptr inbounds %struct.berlin2_div, ptr %call7.i.i, i32 0, i32 2
  %1 = call ptr @memcpy(ptr %map2, ptr %map, i32 18)
  %base3 = getelementptr inbounds %struct.berlin2_div, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %base3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %base, ptr %base3, align 4
  %lock4 = getelementptr inbounds %struct.berlin2_div, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %lock4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %lock, ptr %lock4, align 4
  %conv = zext i8 %div_flags to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %spec.select = select i1 %cmp, ptr null, ptr @berlin2_div_gate_ops
  %and9 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10 = icmp eq i32 %and9, 0
  %mux_ops.0 = select i1 %cmp10, ptr null, ptr @berlin2_div_mux_ops
  %call16 = tail call ptr @clk_hw_register_composite(ptr noundef null, ptr noundef %name, ptr noundef %parent_names, i32 noundef %num_parents, ptr noundef nonnull %call7.i.i, ptr noundef %mux_ops.0, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @berlin2_div_rate_ops, ptr noundef nonnull %call7.i.i, ptr noundef %spec.select, i32 noundef %flags) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call16, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_div_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %map1 = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2
  %lock = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_lock(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %pll_switch_offs = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pll_switch_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pll_switch_offs, align 2
  %conv = zext i16 %5 to i32
  %add.ptr3 = getelementptr i8, ptr %3, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !17
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %cmp = icmp eq i8 %index, 0
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pll_switch_shift = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 7
  %8 = ptrtoint ptr %pll_switch_shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pll_switch_shift, align 1
  %conv8 = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv8
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %13 = ptrtoint ptr %pll_switch_offs to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pll_switch_offs, align 2
  %conv15.c69 = zext i16 %14 to i32
  %add.ptr16.c70 = getelementptr i8, ptr %12, i32 %conv15.c69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.c70, i32 %10) #5, !srcloc !18
  br label %if.end40

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv5 = zext i8 %index to i32
  %pll_switch_shift9 = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 7
  %15 = ptrtoint ptr %pll_switch_shift9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pll_switch_shift9, align 1
  %conv10 = zext i8 %16 to i32
  %shl11 = shl nuw i32 1, %conv10
  %or = or i32 %shl11, %7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %20 = ptrtoint ptr %pll_switch_offs to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pll_switch_offs, align 2
  %conv15.c = zext i16 %21 to i32
  %add.ptr16.c = getelementptr i8, ptr %19, i32 %conv15.c
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.c, i32 %17) #5, !srcloc !18
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %24 = ptrtoint ptr %map1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %map1, align 2
  %conv23 = zext i16 %25 to i32
  %add.ptr24 = getelementptr i8, ptr %23, i32 %conv23
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #5, !srcloc !17
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %pll_select_shift = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 6
  %28 = ptrtoint ptr %pll_select_shift to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pll_select_shift, align 2
  %conv27 = zext i8 %29 to i32
  %shl28 = shl i32 7, %conv27
  %neg29 = xor i32 %shl28, -1
  %and30 = and i32 %27, %neg29
  %sub = add nsw i32 %conv5, -1
  %shl34 = shl i32 %sub, %conv27
  %or35 = or i32 %and30, %shl34
  %30 = tail call i32 @llvm.bswap.i32(i32 %or35)
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %33 = ptrtoint ptr %map1 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %map1, align 2
  %conv38 = zext i16 %34 to i32
  %add.ptr39 = getelementptr i8, ptr %32, i32 %conv38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %30) #5, !srcloc !18
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then7
  %35 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lock, align 4
  %tobool42.not = icmp eq ptr %36, null
  br i1 %tobool42.not, label %if.end40.if.end45_crit_edge, label %if.then43

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull %36) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40.if.end45_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @berlin2_div_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %map1 = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2
  %lock = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_lock(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %pll_switch_offs = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pll_switch_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pll_switch_offs, align 2
  %conv = zext i16 %5 to i32
  %add.ptr3 = getelementptr i8, ptr %3, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !17
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %pll_switch_shift = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 7
  %8 = ptrtoint ptr %pll_switch_shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pll_switch_shift, align 1
  %conv5 = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv5
  %and = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.if.end17_crit_edge, label %if.then7

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %12 = ptrtoint ptr %map1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %map1, align 2
  %conv10 = zext i16 %13 to i32
  %add.ptr11 = getelementptr i8, ptr %11, i32 %conv10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !17
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %pll_select_shift = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 6
  %16 = ptrtoint ptr %pll_select_shift to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pll_select_shift, align 2
  %conv14 = zext i8 %17 to i32
  %shr = lshr i32 %15, %conv14
  %18 = trunc i32 %shr to i8
  %19 = and i8 %18, 7
  %conv16 = add nuw nsw i8 %19, 1
  br label %if.end17

if.end17:                                         ; preds = %if.then7, %if.end.if.end17_crit_edge
  %index.0 = phi i8 [ %conv16, %if.then7 ], [ 0, %if.end.if.end17_crit_edge ]
  %20 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock, align 4
  %tobool19.not = icmp eq ptr %21, null
  br i1 %tobool19.not, label %if.end17.if.end22_crit_edge, label %if.then20

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull %21) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  ret i8 %index.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_div_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_lock(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %div_switch_offs = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %div_switch_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %div_switch_offs, align 2
  %conv = zext i16 %5 to i32
  %add.ptr3 = getelementptr i8, ptr %3, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !17
  %div_switch_shift = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 9
  %7 = ptrtoint ptr %div_switch_shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %div_switch_shift, align 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %div3_switch_offs = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %div3_switch_offs to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %div3_switch_offs, align 2
  %conv8 = zext i16 %12 to i32
  %add.ptr9 = getelementptr i8, ptr %10, i32 %conv8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !17
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %div3_switch_shift = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 10
  %15 = ptrtoint ptr %div3_switch_shift to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %div3_switch_shift, align 2
  %conv12 = zext i8 %16 to i32
  %shl13 = shl nuw i32 1, %conv12
  %and14 = and i32 %shl13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp.not = icmp eq i32 %and14, 0
  br i1 %cmp.not, label %if.else, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.else:                                          ; preds = %if.end
  %17 = tail call i32 @llvm.bswap.i32(i32 %6)
  %conv5 = zext i8 %8 to i32
  %shl = shl nuw i32 1, %conv5
  %and = and i32 %shl, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp17 = icmp eq i32 %and, 0
  br i1 %cmp17, label %if.else.if.end31_crit_edge, label %if.else20

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %div_select_offs = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %div_select_offs to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %div_select_offs, align 2
  %conv23 = zext i16 %21 to i32
  %add.ptr24 = getelementptr i8, ptr %19, i32 %conv23
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #5, !srcloc !17
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %div_select_shift = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 8
  %24 = ptrtoint ptr %div_select_shift to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %div_select_shift, align 2
  %conv27 = zext i8 %25 to i32
  %shr = lshr i32 %23, %conv27
  %and28 = and i32 %shr, 7
  %arrayidx = getelementptr [8 x i8], ptr @clk_div, i32 0, i32 %and28
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %conv29 = zext i8 %27 to i32
  br label %if.end31

if.end31:                                         ; preds = %if.else20, %if.else.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %divider.0 = phi i32 [ %conv29, %if.else20 ], [ 3, %if.end.if.end31_crit_edge ], [ 1, %if.else.if.end31_crit_edge ]
  %28 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lock, align 4
  %tobool33.not = icmp eq ptr %29, null
  br i1 %tobool33.not, label %if.end31.if.end36_crit_edge, label %if.then34

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull %29) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  %div37 = udiv i32 %parent_rate, %divider.0
  ret i32 %div37
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_div_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_lock(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %gate_offs = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %gate_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gate_offs, align 2
  %conv = zext i16 %5 to i32
  %add.ptr3 = getelementptr i8, ptr %3, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !17
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %gate_shift = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 11
  %8 = ptrtoint ptr %gate_shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gate_shift, align 1
  %conv5 = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv5
  %or = or i32 %shl, %7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %13 = ptrtoint ptr %gate_offs to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %gate_offs, align 2
  %conv8 = zext i16 %14 to i32
  %add.ptr9 = getelementptr i8, ptr %12, i32 %conv8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #5, !srcloc !18
  %15 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.end.if.end14_crit_edge, label %if.then12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull %16) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @berlin2_div_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_lock(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %gate_offs = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %gate_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gate_offs, align 2
  %conv = zext i16 %5 to i32
  %add.ptr3 = getelementptr i8, ptr %3, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !17
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %gate_shift = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 11
  %8 = ptrtoint ptr %gate_shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gate_shift, align 1
  %conv5 = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv5
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %13 = ptrtoint ptr %gate_offs to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %gate_offs, align 2
  %conv8 = zext i16 %14 to i32
  %add.ptr9 = getelementptr i8, ptr %12, i32 %conv8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #5, !srcloc !18
  %15 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.end.if.end14_crit_edge, label %if.then12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull %16) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_div_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_lock(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %gate_offs = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %gate_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gate_offs, align 2
  %conv = zext i16 %5 to i32
  %add.ptr3 = getelementptr i8, ptr %3, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !17
  %gate_shift = getelementptr inbounds %struct.berlin2_div, ptr %hw, i32 0, i32 2, i32 11
  %7 = ptrtoint ptr %gate_shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gate_shift, align 1
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull %10) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %11 = tail call i32 @llvm.bswap.i32(i32 %6)
  %conv5 = zext i8 %8 to i32
  %shr = lshr i32 %11, %conv5
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @berlin2_div_mux_ops, !1, !"berlin2_div_mux_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/berlin/berlin2-div.c", i32 222, i32 29}
!2 = !{ptr @berlin2_div_rate_ops, !3, !"berlin2_div_rate_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/berlin/berlin2-div.c", i32 212, i32 29}
!4 = !{ptr @clk_div, !5, !"clk_div", i1 false, i1 false}
!5 = !{!"../drivers/clk/berlin/berlin2-div.c", i32 63, i32 11}
!6 = !{ptr @berlin2_div_gate_ops, !7, !"berlin2_div_gate_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/berlin/berlin2-div.c", i32 216, i32 29}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 4032005}
!18 = !{i64 4031587}
