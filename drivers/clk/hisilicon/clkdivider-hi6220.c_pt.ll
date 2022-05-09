; ModuleID = '/llk/IR_all_yes/drivers/clk/hisilicon/clkdivider-hi6220.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clkdivider-hi6220.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.hi6220_clk_divider = type { %struct.clk_hw, ptr, i8, i8, i32, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@hi6220_clkdiv_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hi6220_clkdiv_recalc_rate, ptr @hi6220_clkdiv_round_rate, ptr null, ptr null, ptr null, ptr @hi6220_clkdiv_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"hi6220_clkdiv_ops\00", align 1
@___asan_gen_.2 = private constant [45 x i8] c"../drivers/clk/hisilicon/clkdivider-hi6220.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 94, i32 29 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @hi6220_clkdiv_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_clkdiv_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hi6220_register_clkdiv(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, ptr noundef %reg, i8 noundef zeroext %shift, i8 noundef zeroext %width, i32 noundef %mask_bit, ptr noundef %lock) local_unnamed_addr #0 align 64 {
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
  %conv = zext i8 %width to i32
  %shl = shl nuw i32 1, %conv
  %add2 = add nuw i32 %shl, 1
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add2, i32 8) #6
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end.if.then5_crit_edge, label %if.end7.i.i, !prof !11

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.end7.i.i:                                      ; preds = %if.end
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #10
  %tobool4.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not, label %if.end7.i.i.if.then5_crit_edge, label %if.end7.i.i.for.body_crit_edge

if.end7.i.i.for.body_crit_edge:                   ; preds = %if.end7.i.i
  br label %for.body

if.end7.i.i.if.then5_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.then5:                                         ; preds = %if.end7.i.i.if.then5_crit_edge, %if.end.if.then5_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.i.i.for.body_crit_edge
  %i.070 = phi i32 [ %add9, %for.body.for.body_crit_edge ], [ 0, %if.end7.i.i.for.body_crit_edge ]
  %add9 = add nuw i32 %i.070, 1
  %arrayidx = getelementptr %struct.clk_div_table, ptr %call8.i.i, i32 %i.070
  %div10 = getelementptr %struct.clk_div_table, ptr %call8.i.i, i32 %i.070, i32 1
  %7 = ptrtoint ptr %div10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add9, ptr %div10, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.070, ptr %arrayidx, align 8
  %exitcond.not = icmp eq i32 %add9, %shl
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %9 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @hi6220_clkdiv_ops, ptr %ops, align 4
  %flags16 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %11 = ptrtoint ptr %flags16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %flags, ptr %flags16, align 4
  %12 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent_name.addr, align 4
  %tobool17.not = icmp eq ptr %13, null
  %parent_name.addr. = select i1 %tobool17.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %14 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool18.not = icmp ne ptr %13, null
  %conv20 = zext i1 %tobool18.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %15 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv20, ptr %num_parents, align 4
  %reg21 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %reg21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %reg, ptr %reg21, align 4
  %shift22 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %shift22 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %shift, ptr %shift22, align 8
  %width23 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %width23 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %width, ptr %width23, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask_bit)
  %tobool24.not = icmp eq i32 %mask_bit, 0
  %shl26 = shl nuw i32 1, %mask_bit
  %spec.select = select i1 %tobool24.not, i32 0, i32 %shl26
  %mask = getelementptr inbounds %struct.hi6220_clk_divider, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select, ptr %mask, align 4
  %lock30 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %lock30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %lock, ptr %lock30, align 4
  %init31 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %init31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %init, ptr %init31, align 8
  %table32 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %table32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call8.i.i, ptr %table32, align 8
  %call34 = call ptr @clk_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #6
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then36:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call8.i.i) #6
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %for.end.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then5 ], [ %call34, %if.then36 ], [ %call34, %for.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_clkdiv_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.hi6220_clk_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !12
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shift = getelementptr inbounds %struct.hi6220_clk_divider, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shift, align 4
  %conv = zext i8 %5 to i32
  %shr = lshr i32 %3, %conv
  %width = getelementptr inbounds %struct.hi6220_clk_divider, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width, align 1
  %conv2 = zext i8 %7 to i32
  %notmask = shl nsw i32 -1, %conv2
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %table = getelementptr inbounds %struct.hi6220_clk_divider, ptr %hw, i32 0, i32 5
  %8 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %table, align 4
  %call5 = tail call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %and, ptr noundef %9, i32 noundef 16, i32 noundef %conv2) #6
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_clkdiv_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.hi6220_clk_divider, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %width = getelementptr inbounds %struct.hi6220_clk_divider, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %width, align 1
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #6
  %call1.i = tail call i32 @divider_round_rate_parent(ptr noundef %hw, ptr noundef %call.i, i32 noundef %rate, ptr noundef %prate, ptr noundef %1, i8 noundef zeroext %3, i32 noundef 16) #6
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_clkdiv_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.hi6220_clk_divider, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %width = getelementptr inbounds %struct.hi6220_clk_divider, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %width, align 1
  %call = tail call i32 @divider_get_val(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef %1, i8 noundef zeroext %3, i32 noundef 16) #6
  %lock = getelementptr inbounds %struct.hi6220_clk_divider, ptr %hw, i32 0, i32 6
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #6
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call5, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %reg = getelementptr inbounds %struct.hi6220_clk_divider, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !12
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %width, align 1
  %conv11 = zext i8 %11 to i32
  %notmask = shl nsw i32 -1, %conv11
  %sub = xor i32 %notmask, -1
  %shift = getelementptr inbounds %struct.hi6220_clk_divider, ptr %hw, i32 0, i32 2
  %12 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift, align 4
  %conv12 = zext i8 %13 to i32
  %shl13 = shl i32 %sub, %conv12
  %neg = xor i32 %shl13, -1
  %and = and i32 %9, %neg
  %shl16 = shl i32 %call, %conv12
  %mask = getelementptr inbounds %struct.hi6220_clk_divider, ptr %hw, i32 0, i32 4
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask, align 4
  %or = or i32 %shl16, %15
  %or17 = or i32 %or, %and
  %16 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !13
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock, align 4
  %tobool20.not = icmp eq ptr %20, null
  br i1 %tobool20.not, label %if.end.if.end23_crit_edge, label %if.then21

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %20, i32 noundef %flags.0) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end.if.end23_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @hi6220_clkdiv_ops, !1, !"hi6220_clkdiv_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/hisilicon/clkdivider-hi6220.c", i32 94, i32 29}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 4949167}
!13 = !{i64 4948749}
