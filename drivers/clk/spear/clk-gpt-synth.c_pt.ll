; ModuleID = '/llk/IR_all_yes/drivers/clk/spear/clk-gpt-synth.c_pt.bc'
source_filename = "../drivers/clk/spear/clk-gpt-synth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_gpt = type { %struct.clk_hw, ptr, ptr, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.gpt_rate_tbl = type { i16, i16 }

@clk_register_gpt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013clk-gpt-synth: Invalid arguments passed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_register_gpt\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/spear/clk-gpt-synth.c\00", [62 x i8] zeroinitializer }, align 32
@clk_register_gpt._entry_ptr = internal global ptr @clk_register_gpt._entry, section ".printk_index", align 4
@clk_gpt_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_gpt_recalc_rate, ptr @clk_gpt_round_rate, ptr null, ptr null, ptr null, ptr @clk_gpt_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_register_gpt._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013clk-gpt-synth: clk register failed\0A\00", [58 x i8] zeroinitializer }, align 32
@clk_register_gpt._entry_ptr.5 = internal global ptr @clk_register_gpt._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 123, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"clk_gpt_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 108, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [37 x i8] c"../drivers/clk/spear/clk-gpt-synth.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 148, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @clk_register_gpt._entry, ptr @clk_register_gpt._entry.3, ptr @clk_register_gpt._entry_ptr, ptr @clk_register_gpt._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @clk_gpt_ops, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_register_gpt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_gpt_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_register_gpt._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_register_gpt(ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, ptr noundef %reg, ptr noundef %rtbl, i8 noundef zeroext %rtbl_cnt, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %tobool1.not = icmp eq ptr %parent_name, null
  %tobool3.not = icmp eq ptr %reg, null
  %or.cond = or i1 %tobool1.not, %tobool3.not
  %tobool5.not = icmp eq ptr %rtbl, null
  %or.cond45 = or i1 %or.cond, %tobool5.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rtbl_cnt)
  %tobool7.not = icmp eq i8 %rtbl_cnt, 0
  %or.cond46 = or i1 %or.cond45, %tobool7.not
  br i1 %or.cond46, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #11
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %reg14 = getelementptr inbounds %struct.clk_gpt, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %reg14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %reg, ptr %reg14, align 4
  %rtbl15 = getelementptr inbounds %struct.clk_gpt, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %rtbl15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rtbl, ptr %rtbl15, align 8
  %rtbl_cnt16 = getelementptr inbounds %struct.clk_gpt, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %rtbl_cnt16 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %rtbl_cnt, ptr %rtbl_cnt16, align 4
  %lock17 = getelementptr inbounds %struct.clk_gpt, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %lock17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %lock, ptr %lock17, align 8
  %init18 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %init18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %init, ptr %init18, align 8
  %9 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @clk_gpt_ops, ptr %ops, align 4
  %flags20 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %11 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %flags, ptr %flags20, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %12 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %13 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %num_parents, align 4
  %call22 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %tobool.not.i = icmp eq ptr %call22, null
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end28, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end28:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end28 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %call22, %if.end13.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_gpt_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_gpt, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %reg = getelementptr inbounds %struct.clk_gpt, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !21
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %6, i32 noundef %flags.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge
  %7 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and = and i32 %7, 4095
  %add = add nuw nsw i32 %and, 1
  %shr = lshr i32 %7, 12
  %and14 = and i32 %shr, 15
  %shl = shl nuw nsw i32 2, %and14
  %mul = mul nuw nsw i32 %shl, %add
  %div19 = udiv i32 %parent_rate, %mul
  ret i32 %div19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_gpt_round_rate(ptr noundef %hw, i32 noundef %drate, ptr nocapture noundef readonly %prate) #0 align 64 {
entry:
  %unused = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused) #7
  %0 = ptrtoint ptr %unused to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %unused, align 4, !annotation !22
  %1 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %prate, align 4
  %rtbl_cnt = getelementptr inbounds %struct.clk_gpt, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %rtbl_cnt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rtbl_cnt, align 4
  %call = call i32 @clk_round_rate_index(ptr noundef %hw, i32 noundef %drate, i32 noundef %2, ptr noundef nonnull @gpt_calc_rate, i8 noundef zeroext %4, ptr noundef nonnull %unused) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_gpt_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtbl1 = getelementptr inbounds %struct.clk_gpt, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %rtbl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtbl1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #7
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %i, align 4, !annotation !22
  %rtbl_cnt = getelementptr inbounds %struct.clk_gpt, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %rtbl_cnt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rtbl_cnt, align 4
  %call = call i32 @clk_round_rate_index(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate, ptr noundef nonnull @gpt_calc_rate, i8 noundef zeroext %4, ptr noundef nonnull %i) #7
  %lock = getelementptr inbounds %struct.clk_gpt, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %6) #7
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call6, %do.body2 ], [ 0, %entry.if.end_crit_edge ]
  %reg = getelementptr inbounds %struct.clk_gpt, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %10 = and i32 %9, 65535
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i, align 4
  %arrayidx = getelementptr %struct.gpt_rate_tbl, ptr %1, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  %16 = and i16 %15, 4095
  %and14 = zext i16 %16 to i32
  %or = or i32 %11, %and14
  %nscale = getelementptr %struct.gpt_rate_tbl, ptr %1, i32 %13, i32 1
  %17 = ptrtoint ptr %nscale to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nscale, align 2
  %19 = shl i16 %18, 12
  %shl = zext i16 %19 to i32
  %or18 = or i32 %or, %shl
  %20 = call i32 @llvm.bswap.i32(i32 %or18)
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #7, !srcloc !24
  %23 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock, align 4
  %tobool21.not = icmp eq ptr %24, null
  br i1 %tobool21.not, label %if.end.if.end24_crit_edge, label %if.then22

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %24, i32 noundef %flags.0) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate_index(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpt_calc_rate(ptr nocapture noundef readonly %hw, i32 noundef %prate, i32 noundef %index) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtbl1 = getelementptr inbounds %struct.clk_gpt, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %rtbl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtbl1, align 4
  %arrayidx = getelementptr %struct.gpt_rate_tbl, ptr %1, i32 %index
  %nscale = getelementptr %struct.gpt_rate_tbl, ptr %1, i32 %index, i32 1
  %2 = ptrtoint ptr %nscale to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nscale, align 2
  %conv = zext i16 %3 to i32
  %shl = shl i32 2, %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv3 = zext i16 %5 to i32
  %add4 = add nuw nsw i32 %conv3, 1
  %mul = mul i32 %add4, %shl
  %div = udiv i32 %prate, %mul
  ret i32 %div
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/spear/clk-gpt-synth.c", i32 123, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @clk_register_gpt._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @clk_register_gpt._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/spear/clk-gpt-synth.c", i32 148, i32 2}
!8 = !{ptr @clk_register_gpt._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @clk_register_gpt._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @clk_gpt_ops, !11, !"clk_gpt_ops", i1 false, i1 false}
!11 = !{!"../drivers/clk/spear/clk-gpt-synth.c", i32 108, i32 29}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 4948937}
!22 = !{!"auto-init"}
!23 = !{i64 2152508133}
!24 = !{i64 4948519}
