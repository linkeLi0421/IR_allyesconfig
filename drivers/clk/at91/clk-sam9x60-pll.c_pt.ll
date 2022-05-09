; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/clk-sam9x60-pll.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-sam9x60-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.sam9x60_pll_core = type { ptr, ptr, ptr, ptr, %struct.clk_hw, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.sam9x60_frac = type { %struct.sam9x60_pll_core, %struct.at91_clk_pms, i32, i16 }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.sam9x60_div = type { %struct.sam9x60_pll_core, %struct.at91_clk_pms, i8, i8 }
%struct.clk_pll_characteristics = type { %struct.clk_range, i32, ptr, ptr, ptr, i8 }
%struct.clk_range = type { i32, i32 }
%struct.clk_pll_layout = type { i32, i32, i32, i32, i32, i8, i8, i8, i8 }

@sam9x60_frac_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @sam9x60_frac_pll_prepare, ptr @sam9x60_frac_pll_unprepare, ptr @sam9x60_frac_pll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sam9x60_frac_pll_save_context, ptr @sam9x60_frac_pll_restore_context, ptr @sam9x60_frac_pll_recalc_rate, ptr @sam9x60_frac_pll_round_rate, ptr null, ptr null, ptr null, ptr @sam9x60_frac_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sam9x60_frac_pll_ops_chg = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @sam9x60_frac_pll_prepare, ptr @sam9x60_frac_pll_unprepare, ptr @sam9x60_frac_pll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sam9x60_frac_pll_save_context, ptr @sam9x60_frac_pll_restore_context, ptr @sam9x60_frac_pll_recalc_rate, ptr @sam9x60_frac_pll_round_rate, ptr null, ptr null, ptr null, ptr @sam9x60_frac_pll_set_rate_chg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@notifier_div = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sam9x60_div_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @sam9x60_div_pll_prepare, ptr @sam9x60_div_pll_unprepare, ptr @sam9x60_div_pll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sam9x60_div_pll_save_context, ptr @sam9x60_div_pll_restore_context, ptr @sam9x60_div_pll_recalc_rate, ptr @sam9x60_div_pll_round_rate, ptr null, ptr null, ptr null, ptr @sam9x60_div_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sam9x60_div_pll_ops_chg = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @sam9x60_div_pll_prepare, ptr @sam9x60_div_pll_unprepare, ptr @sam9x60_div_pll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sam9x60_div_pll_save_context, ptr @sam9x60_div_pll_restore_context, ptr @sam9x60_div_pll_recalc_rate, ptr @sam9x60_div_pll_round_rate, ptr null, ptr null, ptr null, ptr @sam9x60_div_pll_set_rate_chg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sam9x60_div_pll_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @sam9x60_div_pll_notifier_fn, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"sam9x60_frac_pll_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 314, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [25 x i8] c"sam9x60_frac_pll_ops_chg\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 325, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"notifier_div\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 58, i32 28 }
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"sam9x60_div_pll_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 588, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"sam9x60_div_pll_ops_chg\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 599, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant [25 x i8] c"sam9x60_div_pll_notifier\00", align 1
@___asan_gen_.17 = private constant [38 x i8] c"../drivers/clk/at91/clk-sam9x60-pll.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 584, i32 30 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @sam9x60_frac_pll_ops, ptr @sam9x60_frac_pll_ops_chg, ptr @notifier_div, ptr @sam9x60_div_pll_ops, ptr @sam9x60_div_pll_ops_chg, ptr @sam9x60_div_pll_notifier], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x60_frac_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x60_frac_pll_ops_chg to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @notifier_div to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x60_div_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x60_div_pll_ops_chg to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x60_div_pll_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sam9x60_clk_register_frac_pll(ptr noundef %regmap, ptr noundef %lock, ptr noundef %name, ptr noundef %parent_name, ptr noundef %parent_hw, i8 noundef zeroext %id, ptr noundef %characteristics, ptr noundef %layout, i32 noundef %flags) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %status.i = alloca i32, align 4
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #9
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !21
  %conv = zext i8 %id to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %id)
  %cmp = icmp ugt i8 %id, 7
  %tobool.not = icmp eq ptr %lock, null
  %or.cond = or i1 %tobool.not, %cmp
  %tobool3.not = icmp eq ptr %parent_hw, null
  %or.cond141 = or i1 %tobool3.not, %or.cond
  br i1 %or.cond141, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 56) #12
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %init, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_parents, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool10.not, ptr @sam9x60_frac_pll_ops_chg, ptr @sam9x60_frac_pll_ops
  %8 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select, ptr %8, align 4
  %flags14 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %10 = ptrtoint ptr %flags14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flags, ptr %flags14, align 4
  %id15 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %id15 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %id, ptr %id15, align 4
  %hw17 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %call7.i.i, i32 0, i32 4
  %init18 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %call7.i.i, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %init18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %init, ptr %init18, align 8
  %characteristics20 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %characteristics20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %characteristics, ptr %characteristics20, align 8
  %layout22 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %layout22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %layout, ptr %layout22, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %regmap, ptr %call7.i.i, align 8
  %lock26 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %lock26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %lock, ptr %lock26, align 4
  %call33 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %lock) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %status.i, align 4, !annotation !21
  %call.i = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 236, ptr noundef nonnull %status.i) #9
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status.i, align 4
  %shl.i = shl nuw i32 1, %conv
  %and.i = and i32 %19, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br i1 %tobool.i.not, label %if.else79, label %if.then38

if.then38:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call.i142 = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 28, i32 noundef 15, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call41 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 16, ptr noundef nonnull %val) #9
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %shr = lshr i32 %21, 24
  %conv59 = trunc i32 %shr to i16
  %mul = getelementptr inbounds %struct.sam9x60_frac, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %mul to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv59, ptr %mul, align 4
  %and76 = and i32 %21, 4194303
  br label %if.end92

if.else79:                                        ; preds = %if.end8
  %call80 = call i32 @clk_hw_get_rate(ptr noundef nonnull %parent_hw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.else79.free_crit_edge, label %if.end84

if.else79.free_crit_edge:                         ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

if.end84:                                         ; preds = %if.else79
  %div.i = udiv i32 600000000, %call80
  %mul11.i = mul i32 %div.i, %call80
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000000, i32 %mul11.i)
  %tobool.not.i = icmp eq i32 %mul11.i, 600000000
  br i1 %tobool.not.i, label %if.end84.sam9x60_frac_pll_compute_mul_frac.exit.thread_crit_edge, label %if.then15.i

if.end84.sam9x60_frac_pll_compute_mul_frac.exit.thread_crit_edge: ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %sam9x60_frac_pll_compute_mul_frac.exit.thread

if.then15.i:                                      ; preds = %if.end84
  %sub.i = sub i32 600000000, %mul11.i
  %conv.i = zext i32 %sub.i to i64
  %mul16.i = shl nuw nsw i64 %conv.i, 22
  %div17644.i = lshr i32 %call80, 1
  %conv18.i = zext i32 %div17644.i to i64
  %add19.i = add nuw nsw i64 %mul16.i, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add19.i)
  %cmp195.i = icmp ult i64 %add19.i, 4294967296
  br i1 %cmp195.i, label %if.then199.i, label %if.else205.i, !prof !22

if.then199.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv200.i = trunc i64 %add19.i to i32
  %div203.i = udiv i32 %conv200.i, %call80
  %conv204.i = zext i32 %div203.i to i64
  br label %if.end446.i

if.else205.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call80, i64 %add19.i) #13, !srcloc !23
  %asmresult1.i.i = extractvalue { i64, i64 } %23, 1
  br label %if.end446.i

if.end446.i:                                      ; preds = %if.else205.i, %if.then199.i
  %_tmp.0.i = phi i64 [ %conv204.i, %if.then199.i ], [ %asmresult1.i.i, %if.else205.i ]
  %conv212.i = trunc i64 %_tmp.0.i to i32
  %conv215.i = and i64 %_tmp.0.i, 4294967295
  %conv216.i = zext i32 %call80 to i64
  %mul217.i = mul nuw i64 %conv215.i, %conv216.i
  %add220.i = add nuw i64 %mul217.i, 2097152
  %shr246.i = lshr i64 %add220.i, 22
  %extract.t.i = trunc i64 %shr246.i to i32
  %conv445.i = add i32 %mul11.i, -1200000001
  %.pre.i = add i32 %conv445.i, %extract.t.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -600000001, i32 %.pre.i)
  %24 = icmp ult i32 %.pre.i, -600000001
  br i1 %24, label %if.end446.i.free_crit_edge, label %if.end446.i.sam9x60_frac_pll_compute_mul_frac.exit.thread_crit_edge

if.end446.i.sam9x60_frac_pll_compute_mul_frac.exit.thread_crit_edge: ; preds = %if.end446.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sam9x60_frac_pll_compute_mul_frac.exit.thread

if.end446.i.free_crit_edge:                       ; preds = %if.end446.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

sam9x60_frac_pll_compute_mul_frac.exit.thread:    ; preds = %if.end446.i.sam9x60_frac_pll_compute_mul_frac.exit.thread_crit_edge, %if.end84.sam9x60_frac_pll_compute_mul_frac.exit.thread_crit_edge
  %nfrac.0.i148 = phi i32 [ %conv212.i, %if.end446.i.sam9x60_frac_pll_compute_mul_frac.exit.thread_crit_edge ], [ 0, %if.end84.sam9x60_frac_pll_compute_mul_frac.exit.thread_crit_edge ]
  %25 = trunc i32 %div.i to i16
  %conv457.i = add i16 %25, -1
  %mul458.i = getelementptr inbounds %struct.sam9x60_frac, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %mul458.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv457.i, ptr %mul458.i, align 4
  br label %if.end92

if.end92:                                         ; preds = %sam9x60_frac_pll_compute_mul_frac.exit.thread, %if.then38
  %nfrac.0.i148.sink = phi i32 [ %nfrac.0.i148, %sam9x60_frac_pll_compute_mul_frac.exit.thread ], [ %and76, %if.then38 ]
  %frac459.i = getelementptr inbounds %struct.sam9x60_frac, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %frac459.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %nfrac.0.i148.sink, ptr %frac459.i, align 8
  %28 = ptrtoint ptr %lock26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lock26, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %call33) #9
  %call97 = call i32 @clk_hw_register(ptr noundef null, ptr noundef %hw17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end92.cleanup_crit_edge, label %if.then99

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then99:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %30 = inttoptr i32 %call97 to ptr
  br label %cleanup

free:                                             ; preds = %if.end446.i.free_crit_edge, %if.else79.free_crit_edge
  %hw.1 = phi ptr [ inttoptr (i32 -22 to ptr), %if.else79.free_crit_edge ], [ inttoptr (i32 -34 to ptr), %if.end446.i.free_crit_edge ]
  %31 = ptrtoint ptr %lock26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lock26, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %call33) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free, %if.then99, %if.end92.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %hw.1, %free ], [ %30, %if.then99 ], [ %hw17, %if.end92.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #9
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sam9x60_clk_register_div_pll(ptr noundef %regmap, ptr noundef %lock, ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %id, ptr noundef %characteristics, ptr noundef %layout, i32 noundef %flags, i32 noundef %safe_div) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #9
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !21
  %conv = zext i8 %id to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %id)
  %cmp = icmp ugt i8 %id, 7
  %tobool.not = icmp eq ptr %lock, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %safe_div)
  %tobool3.not = icmp eq i32 %safe_div, 0
  br i1 %tobool3.not, label %lor.lhs.false2.if.end_crit_edge, label %land.lhs.true

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %4 = load ptr, ptr @notifier_div, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false2.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 52) #12
  %tobool39.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool39.not, label %if.end.cleanup_crit_edge, label %if.end42

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %if.end
  %6 = tail call i32 @llvm.umin.i32(i32 %safe_div, i32 255)
  %7 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %init, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %8 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %9 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %num_parents, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool44.not, ptr @sam9x60_div_pll_ops_chg, ptr @sam9x60_div_pll_ops
  %10 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select, ptr %10, align 4
  %flags48 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %12 = ptrtoint ptr %flags48 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %flags, ptr %flags48, align 4
  %id49 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %id49 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %id, ptr %id49, align 4
  %hw51 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %call7.i.i, i32 0, i32 4
  %init52 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %call7.i.i, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %init52 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %init, ptr %init52, align 8
  %characteristics54 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %characteristics54 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %characteristics, ptr %characteristics54, align 8
  %layout56 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %layout56 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %layout, ptr %layout56, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %regmap, ptr %call7.i.i, align 8
  %lock60 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %lock60 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %lock, ptr %lock60, align 4
  %conv61 = trunc i32 %6 to i8
  %safe_div62 = getelementptr inbounds %struct.sam9x60_div, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %safe_div62 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv61, ptr %safe_div62, align 1
  %call71 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %lock) #9
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 28, i32 noundef 15, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call78 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 12, ptr noundef nonnull %val) #9
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %conv96 = trunc i32 %21 to i8
  %div97 = getelementptr inbounds %struct.sam9x60_div, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %div97 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv96, ptr %div97, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %lock, i32 noundef %call71) #9
  %call102 = call i32 @clk_hw_register(ptr noundef null, ptr noundef %hw51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.else106, label %if.then104

if.then104:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %23 = inttoptr i32 %call102 to ptr
  br label %cleanup

if.else106:                                       ; preds = %if.end42
  %24 = ptrtoint ptr %safe_div62 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %safe_div62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool108.not = icmp eq i8 %25, 0
  br i1 %tobool108.not, label %if.else106.cleanup_crit_edge, label %if.then109

if.else106.cleanup_crit_edge:                     ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then109:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call7.i.i, ptr @notifier_div, align 4
  %clk = getelementptr inbounds %struct.sam9x60_pll_core, ptr %call7.i.i, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  %call110 = call i32 @clk_notifier_register(ptr noundef %27, ptr noundef nonnull @sam9x60_div_pll_notifier) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %if.else106.cleanup_crit_edge, %if.then104, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %23, %if.then104 ], [ %hw51, %if.then109 ], [ %hw51, %if.else106.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x60_frac_pll_prepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  tail call fastcc void @sam9x60_frac_pll_set(ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sam9x60_frac_pll_unprepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %lock = getelementptr i8, ptr %hw, i32 -12
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %id = getelementptr i8, ptr %hw, i32 12
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv7 = zext i8 %5 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 15, i32 noundef %conv7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 12, i32 noundef 268435456, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %characteristics = getelementptr i8, ptr %hw, i32 -8
  %6 = ptrtoint ptr %characteristics to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %characteristics, align 4
  %upll = getelementptr inbounds %struct.clk_pll_characteristics, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %upll to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %upll, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 24, i32 noundef 12288, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %id, align 4
  %conv12 = zext i8 %10 to i32
  %or = or i32 %conv12, 256
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 271, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x60_frac_pll_is_prepared(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %id = getelementptr i8, ptr %hw, i32 12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status.i, align 4, !annotation !21
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 236, ptr noundef nonnull %status.i) #9
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  %7 = lshr i32 %6, %conv
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x60_frac_pll_save_context(ptr nocapture noundef %hw) #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %id = getelementptr i8, ptr %hw, i32 12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status.i, align 4, !annotation !21
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 236, ptr noundef nonnull %status.i) #9
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  %7 = lshr i32 %6, %conv
  %8 = and i32 %7, 1
  %status = getelementptr i8, ptr %hw, i32 24
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sam9x60_frac_pll_restore_context(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr i8, ptr %hw, i32 24
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  tail call fastcc void @sam9x60_frac_pll_set(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x60_frac_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
if.end195:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = getelementptr i8, ptr %hw, i32 36
  %0 = ptrtoint ptr %mul to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mul, align 4
  %conv6 = zext i32 %parent_rate to i64
  %frac7 = getelementptr i8, ptr %hw, i32 32
  %2 = ptrtoint ptr %frac7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frac7, align 4
  %conv8 = zext i32 %3 to i64
  %mul9 = mul nuw i64 %conv8, %conv6
  %add11 = add nuw i64 %mul9, 2097152
  %shr = lshr i64 %add11, 22
  %extract.t = trunc i64 %shr to i32
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 1
  %mul4 = mul i32 %add, %parent_rate
  %conv199 = add i32 %mul4, %extract.t
  ret i32 %conv199
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x60_frac_pll_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %2 = add i32 %rate, -1200000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -600000001, i32 %2)
  %3 = icmp ult i32 %2, -600000001
  br i1 %3, label %entry.sam9x60_frac_pll_compute_mul_frac.exit_crit_edge, label %if.end.i

entry.sam9x60_frac_pll_compute_mul_frac.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sam9x60_frac_pll_compute_mul_frac.exit

if.end.i:                                         ; preds = %entry
  %4 = urem i32 %rate, %1
  %mul11.i = sub nsw i32 %rate, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.i.if.end446.i_crit_edge, label %if.then15.i

if.end.i.if.end446.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end446.i

if.then15.i:                                      ; preds = %if.end.i
  %conv.i = zext i32 %4 to i64
  %mul16.i = shl nuw nsw i64 %conv.i, 22
  %div17644.i = lshr i32 %1, 1
  %conv18.i = zext i32 %div17644.i to i64
  %add19.i = add nuw nsw i64 %mul16.i, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add19.i)
  %cmp195.i = icmp ult i64 %add19.i, 4294967296
  br i1 %cmp195.i, label %if.then199.i, label %if.else205.i, !prof !22

if.then199.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv200.i = trunc i64 %add19.i to i32
  %div203.i = udiv i32 %conv200.i, %1
  %conv204.i = zext i32 %div203.i to i64
  br label %if.end440.i

if.else205.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %add19.i) #13, !srcloc !23
  %asmresult1.i.i = extractvalue { i64, i64 } %5, 1
  br label %if.end440.i

if.end440.i:                                      ; preds = %if.else205.i, %if.then199.i
  %_tmp.0.i = phi i64 [ %conv204.i, %if.then199.i ], [ %asmresult1.i.i, %if.else205.i ]
  %conv215.i = and i64 %_tmp.0.i, 4294967295
  %conv216.i = zext i32 %1 to i64
  %mul217.i = mul nuw i64 %conv215.i, %conv216.i
  %add220.i = add nuw i64 %mul217.i, 2097152
  %shr246.i = lshr i64 %add220.i, 22
  %extract.t.i = trunc i64 %shr246.i to i32
  %conv445.i = add i32 %mul11.i, %extract.t.i
  %.pre.i = add i32 %conv445.i, -1200000001
  br label %if.end446.i

if.end446.i:                                      ; preds = %if.end440.i, %if.end.i.if.end446.i_crit_edge
  %.pre-phi.i = phi i32 [ %.pre.i, %if.end440.i ], [ %2, %if.end.i.if.end446.i_crit_edge ]
  %tmprate.0.i = phi i32 [ %conv445.i, %if.end440.i ], [ %rate, %if.end.i.if.end446.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -600000001, i32 %.pre-phi.i)
  %6 = icmp ult i32 %.pre-phi.i, -600000001
  %.mux.i = select i1 %6, i32 -34, i32 %tmprate.0.i
  br label %sam9x60_frac_pll_compute_mul_frac.exit

sam9x60_frac_pll_compute_mul_frac.exit:           ; preds = %if.end446.i, %entry.sam9x60_frac_pll_compute_mul_frac.exit_crit_edge
  %retval.0.i = phi i32 [ -34, %entry.sam9x60_frac_pll_compute_mul_frac.exit_crit_edge ], [ %.mux.i, %if.end446.i ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @sam9x60_frac_pll_set_rate(ptr nocapture noundef writeonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %rate, -1200000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -600000001, i32 %0)
  %1 = icmp ult i32 %0, -600000001
  br i1 %1, label %entry.sam9x60_frac_pll_compute_mul_frac.exit_crit_edge, label %if.end.i

entry.sam9x60_frac_pll_compute_mul_frac.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sam9x60_frac_pll_compute_mul_frac.exit

if.end.i:                                         ; preds = %entry
  %div.i = udiv i32 %rate, %parent_rate
  %mul11.i = mul i32 %div.i, %parent_rate
  call void @__sanitizer_cov_trace_cmp4(i32 %mul11.i, i32 %rate)
  %tobool.not.i = icmp eq i32 %mul11.i, %rate
  br i1 %tobool.not.i, label %if.end.i.if.then455.i_crit_edge, label %if.then15.i

if.end.i.if.then455.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then455.i

if.then15.i:                                      ; preds = %if.end.i
  %sub.i = sub i32 %rate, %mul11.i
  %conv.i = zext i32 %sub.i to i64
  %mul16.i = shl nuw nsw i64 %conv.i, 22
  %div17644.i = lshr i32 %parent_rate, 1
  %conv18.i = zext i32 %div17644.i to i64
  %add19.i = add nuw nsw i64 %mul16.i, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add19.i)
  %cmp195.i = icmp ult i64 %add19.i, 4294967296
  br i1 %cmp195.i, label %if.then199.i, label %if.else205.i, !prof !22

if.then199.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv200.i = trunc i64 %add19.i to i32
  %div203.i = udiv i32 %conv200.i, %parent_rate
  %conv204.i = zext i32 %div203.i to i64
  br label %if.end446.i

if.else205.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %add19.i) #13, !srcloc !23
  %asmresult1.i.i = extractvalue { i64, i64 } %2, 1
  br label %if.end446.i

if.end446.i:                                      ; preds = %if.else205.i, %if.then199.i
  %_tmp.0.i = phi i64 [ %conv204.i, %if.then199.i ], [ %asmresult1.i.i, %if.else205.i ]
  %conv212.i = trunc i64 %_tmp.0.i to i32
  %conv215.i = and i64 %_tmp.0.i, 4294967295
  %conv216.i = zext i32 %parent_rate to i64
  %mul217.i = mul nuw i64 %conv215.i, %conv216.i
  %add220.i = add nuw i64 %mul217.i, 2097152
  %shr246.i = lshr i64 %add220.i, 22
  %extract.t.i = trunc i64 %shr246.i to i32
  %conv445.i = add i32 %mul11.i, %extract.t.i
  %.pre.i = add i32 %conv445.i, -1200000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -600000001, i32 %.pre.i)
  %3 = icmp ult i32 %.pre.i, -600000001
  br i1 %3, label %if.end446.i.sam9x60_frac_pll_compute_mul_frac.exit_crit_edge, label %if.end446.i.if.then455.i_crit_edge

if.end446.i.if.then455.i_crit_edge:               ; preds = %if.end446.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then455.i

if.end446.i.sam9x60_frac_pll_compute_mul_frac.exit_crit_edge: ; preds = %if.end446.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sam9x60_frac_pll_compute_mul_frac.exit

if.then455.i:                                     ; preds = %if.end446.i.if.then455.i_crit_edge, %if.end.i.if.then455.i_crit_edge
  %tmprate.0.i6 = phi i32 [ %conv445.i, %if.end446.i.if.then455.i_crit_edge ], [ %rate, %if.end.i.if.then455.i_crit_edge ]
  %nfrac.0.i5 = phi i32 [ %conv212.i, %if.end446.i.if.then455.i_crit_edge ], [ 0, %if.end.i.if.then455.i_crit_edge ]
  %4 = trunc i32 %div.i to i16
  %conv457.i = add i16 %4, -1
  %mul458.i = getelementptr i8, ptr %hw, i32 36
  %5 = ptrtoint ptr %mul458.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv457.i, ptr %mul458.i, align 4
  %frac459.i = getelementptr i8, ptr %hw, i32 32
  %6 = ptrtoint ptr %frac459.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %nfrac.0.i5, ptr %frac459.i, align 4
  br label %sam9x60_frac_pll_compute_mul_frac.exit

sam9x60_frac_pll_compute_mul_frac.exit:           ; preds = %if.then455.i, %if.end446.i.sam9x60_frac_pll_compute_mul_frac.exit_crit_edge, %entry.sam9x60_frac_pll_compute_mul_frac.exit_crit_edge
  %retval.0.i = phi i32 [ -34, %entry.sam9x60_frac_pll_compute_mul_frac.exit_crit_edge ], [ -34, %if.end446.i.sam9x60_frac_pll_compute_mul_frac.exit_crit_edge ], [ %tmprate.0.i6, %if.then455.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sam9x60_frac_pll_set(ptr nocapture noundef readonly %core) unnamed_addr #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  %status.i.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !21
  %lock = getelementptr inbounds %struct.sam9x60_pll_core, ptr %core, i32 0, i32 1
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %id = getelementptr inbounds %struct.sam9x60_pll_core, ptr %core, i32 0, i32 5
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 4
  %conv7 = zext i8 %6 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 15, i32 noundef %conv7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call9 = call i32 @regmap_read(ptr noundef %1, i32 noundef 16, ptr noundef nonnull %val) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %layout = getelementptr inbounds %struct.sam9x60_pll_core, ptr %core, i32 0, i32 3
  %9 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %layout, align 4
  %mul_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %mul_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mul_mask, align 4
  %mul_shift = getelementptr inbounds %struct.clk_pll_layout, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %mul_shift to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mul_shift, align 4
  %frac_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %frac_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frac_mask, align 4
  %and13 = and i32 %16, %8
  %frac_shift = getelementptr inbounds %struct.clk_pll_layout, ptr %10, i32 0, i32 6
  %17 = ptrtoint ptr %frac_shift to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %frac_shift, align 1
  %conv15 = zext i8 %18 to i32
  %shr16 = lshr i32 %and13, %conv15
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %id, align 4
  %conv.i = zext i8 %20 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i) #9
  %21 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %status.i.i, align 4, !annotation !21
  %call.i.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 236, ptr noundef nonnull %status.i.i) #9
  %22 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status.i.i, align 4
  %shl.i.i = shl nuw i32 1, %conv.i
  %and.i.i = and i32 %23, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #9
  br i1 %tobool.i.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %and = and i32 %12, %8
  %conv11 = zext i8 %14 to i32
  %shr = lshr i32 %and, %conv11
  %mul = getelementptr inbounds %struct.sam9x60_frac, ptr %core, i32 0, i32 3
  %24 = ptrtoint ptr %mul to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mul, align 4
  %conv20 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv20)
  %cmp21 = icmp eq i32 %shr, %conv20
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true23:                                  ; preds = %land.lhs.true
  %frac24 = getelementptr inbounds %struct.sam9x60_frac, ptr %core, i32 0, i32 2
  %26 = ptrtoint ptr %frac24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frac24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr16, i32 %27)
  %cmp25 = icmp eq i32 %shr16, %27
  br i1 %cmp25, label %land.lhs.true23.unlock_crit_edge, label %land.lhs.true23.if.end_crit_edge

land.lhs.true23.if.end_crit_edge:                 ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true23.unlock_crit_edge:                 ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %land.lhs.true23.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %characteristics = getelementptr inbounds %struct.sam9x60_pll_core, ptr %core, i32 0, i32 2
  %28 = ptrtoint ptr %characteristics to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %characteristics, align 4
  %upll = getelementptr inbounds %struct.clk_pll_characteristics, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %upll to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %upll, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %. = select i1 %tobool.not, i32 131088, i32 302120976
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %., ptr %val, align 4
  %call29 = call i32 @regmap_write(ptr noundef %1, i32 noundef 24, i32 noundef %.) #9
  %mul30 = getelementptr inbounds %struct.sam9x60_frac, ptr %core, i32 0, i32 3
  %32 = ptrtoint ptr %mul30 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mul30, align 4
  %conv31 = zext i16 %33 to i32
  %34 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %layout, align 4
  %mul_shift33 = getelementptr inbounds %struct.clk_pll_layout, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %mul_shift33 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %mul_shift33, align 4
  %conv34 = zext i8 %37 to i32
  %shl = shl i32 %conv31, %conv34
  %frac35 = getelementptr inbounds %struct.sam9x60_frac, ptr %core, i32 0, i32 2
  %38 = ptrtoint ptr %frac35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %frac35, align 4
  %frac_shift37 = getelementptr inbounds %struct.clk_pll_layout, ptr %35, i32 0, i32 6
  %40 = ptrtoint ptr %frac_shift37 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %frac_shift37, align 1
  %conv38 = zext i8 %41 to i32
  %shl39 = shl i32 %39, %conv38
  %or = or i32 %shl39, %shl
  %call40 = call i32 @regmap_write(ptr noundef %1, i32 noundef 16, i32 noundef %or) #9
  %42 = ptrtoint ptr %characteristics to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %characteristics, align 4
  %upll42 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %upll42 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load43 = load i8, ptr %upll42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load43)
  %tobool45.not = icmp sgt i8 %bf.load43, -1
  br i1 %tobool45.not, label %if.end.if.end51_crit_edge, label %if.then46

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then46:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val, align 4
  %or47 = or i32 %46, 8192
  store i32 %or47, ptr %val, align 4
  %call48 = call i32 @regmap_write(ptr noundef %1, i32 noundef 24, i32 noundef %or47) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 2147480) #9
  %48 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val, align 4
  %or49 = or i32 %49, 4096
  store i32 %or49, ptr %val, align 4
  %call50 = call i32 @regmap_write(ptr noundef %1, i32 noundef 24, i32 noundef %or49) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 2147480) #9
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.end.if.end51_crit_edge
  %51 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %id, align 4
  %conv53 = zext i8 %52 to i32
  %or54 = or i32 %conv53, 256
  %call.i1 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 271, i32 noundef %or54, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i2 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 12, i32 noundef -1879048192, i32 noundef -1879048192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %53 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %id, align 4
  %conv58 = zext i8 %54 to i32
  %or59 = or i32 %conv58, 256
  %call.i3 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 271, i32 noundef %or59, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %55 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %id, align 4
  %conv625 = zext i8 %56 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %57 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %status.i, align 4, !annotation !21
  %call.i46 = call i32 @regmap_read(ptr noundef %1, i32 noundef 236, ptr noundef nonnull %status.i) #9
  %58 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %status.i, align 4
  %shl.i7 = shl nuw i32 1, %conv625
  %and.i8 = and i32 %59, %shl.i7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool.i.not9 = icmp eq i32 %and.i8, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br i1 %tobool.i.not9, label %if.end51.do.end68_crit_edge, label %if.end51.unlock_crit_edge

if.end51.unlock_crit_edge:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end51.do.end68_crit_edge:                      ; preds = %if.end51
  br label %do.end68

do.end68:                                         ; preds = %do.end68.do.end68_crit_edge, %if.end51.do.end68_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !24
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !25
  %60 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %id, align 4
  %conv62 = zext i8 %61 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %62 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %status.i, align 4, !annotation !21
  %call.i4 = call i32 @regmap_read(ptr noundef %1, i32 noundef 236, ptr noundef nonnull %status.i) #9
  %63 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %status.i, align 4
  %shl.i = shl nuw i32 1, %conv62
  %and.i = and i32 %64, %shl.i
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br i1 %tobool.i.not, label %do.end68.do.end68_crit_edge, label %do.end68.unlock_crit_edge

do.end68.unlock_crit_edge:                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

do.end68.do.end68_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

unlock:                                           ; preds = %do.end68.unlock_crit_edge, %if.end51.unlock_crit_edge, %land.lhs.true23.unlock_crit_edge
  %65 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %66, i32 noundef %call4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x60_frac_pll_set_rate_chg(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !21
  %3 = add i32 %rate, -1200000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -600000001, i32 %3)
  %4 = icmp ult i32 %3, -600000001
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %div.i = udiv i32 %rate, %parent_rate
  %mul11.i = mul i32 %div.i, %parent_rate
  call void @__sanitizer_cov_trace_cmp4(i32 %mul11.i, i32 %rate)
  %tobool.not.i = icmp eq i32 %mul11.i, %rate
  br i1 %tobool.not.i, label %if.end.i.sam9x60_frac_pll_compute_mul_frac.exit.thread109_crit_edge, label %if.then15.i

if.end.i.sam9x60_frac_pll_compute_mul_frac.exit.thread109_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sam9x60_frac_pll_compute_mul_frac.exit.thread109

if.then15.i:                                      ; preds = %if.end.i
  %sub.i = sub i32 %rate, %mul11.i
  %conv.i = zext i32 %sub.i to i64
  %mul16.i = shl nuw nsw i64 %conv.i, 22
  %div17644.i = lshr i32 %parent_rate, 1
  %conv18.i = zext i32 %div17644.i to i64
  %add19.i = add nuw nsw i64 %mul16.i, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add19.i)
  %cmp195.i = icmp ult i64 %add19.i, 4294967296
  br i1 %cmp195.i, label %if.then199.i, label %if.else205.i, !prof !22

if.then199.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv200.i = trunc i64 %add19.i to i32
  %div203.i = udiv i32 %conv200.i, %parent_rate
  %conv204.i = zext i32 %div203.i to i64
  br label %if.end446.i

if.else205.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %add19.i) #13, !srcloc !23
  %asmresult1.i.i = extractvalue { i64, i64 } %5, 1
  br label %if.end446.i

if.end446.i:                                      ; preds = %if.else205.i, %if.then199.i
  %_tmp.0.i = phi i64 [ %conv204.i, %if.then199.i ], [ %asmresult1.i.i, %if.else205.i ]
  %conv212.i = trunc i64 %_tmp.0.i to i32
  %conv215.i = and i64 %_tmp.0.i, 4294967295
  %conv216.i = zext i32 %parent_rate to i64
  %mul217.i = mul nuw i64 %conv215.i, %conv216.i
  %add220.i = add nuw i64 %mul217.i, 2097152
  %shr246.i = lshr i64 %add220.i, 22
  %extract.t.i = trunc i64 %shr246.i to i32
  %conv445.i = add i32 %mul11.i, %extract.t.i
  %.pre.i = add i32 %conv445.i, -1200000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -600000001, i32 %.pre.i)
  %6 = icmp ult i32 %.pre.i, -600000001
  br i1 %6, label %if.end446.i.cleanup_crit_edge, label %if.end446.i.sam9x60_frac_pll_compute_mul_frac.exit.thread109_crit_edge

if.end446.i.sam9x60_frac_pll_compute_mul_frac.exit.thread109_crit_edge: ; preds = %if.end446.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sam9x60_frac_pll_compute_mul_frac.exit.thread109

if.end446.i.cleanup_crit_edge:                    ; preds = %if.end446.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sam9x60_frac_pll_compute_mul_frac.exit.thread109: ; preds = %if.end446.i.sam9x60_frac_pll_compute_mul_frac.exit.thread109_crit_edge, %if.end.i.sam9x60_frac_pll_compute_mul_frac.exit.thread109_crit_edge
  %tmprate.0.i105 = phi i32 [ %conv445.i, %if.end446.i.sam9x60_frac_pll_compute_mul_frac.exit.thread109_crit_edge ], [ %rate, %if.end.i.sam9x60_frac_pll_compute_mul_frac.exit.thread109_crit_edge ]
  %nfrac.0.i104 = phi i32 [ %conv212.i, %if.end446.i.sam9x60_frac_pll_compute_mul_frac.exit.thread109_crit_edge ], [ 0, %if.end.i.sam9x60_frac_pll_compute_mul_frac.exit.thread109_crit_edge ]
  %7 = trunc i32 %div.i to i16
  %conv457.i = add i16 %7, -1
  %mul458.i = getelementptr i8, ptr %hw, i32 36
  %8 = ptrtoint ptr %mul458.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv457.i, ptr %mul458.i, align 4
  %frac459.i = getelementptr i8, ptr %hw, i32 32
  %9 = ptrtoint ptr %frac459.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %nfrac.0.i104, ptr %frac459.i, align 4
  %lock = getelementptr i8, ptr %hw, i32 -12
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #9
  %id = getelementptr i8, ptr %hw, i32 12
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id, align 4
  %conv12 = zext i8 %13 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 15, i32 noundef %conv12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call14 = call i32 @regmap_read(ptr noundef %1, i32 noundef 16, ptr noundef nonnull %val) #9
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %layout = getelementptr i8, ptr %hw, i32 -4
  %16 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %layout, align 4
  %mul_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %mul_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mul_mask, align 4
  %and = and i32 %19, %15
  %mul_shift = getelementptr inbounds %struct.clk_pll_layout, ptr %17, i32 0, i32 5
  %20 = ptrtoint ptr %mul_shift to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mul_shift, align 4
  %conv16 = zext i8 %21 to i32
  %shr = lshr i32 %and, %conv16
  %22 = ptrtoint ptr %mul458.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mul458.i, align 4
  %conv22 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv22)
  %cmp23 = icmp eq i32 %shr, %conv22
  br i1 %cmp23, label %land.lhs.true, label %sam9x60_frac_pll_compute_mul_frac.exit.thread109.if.end29_crit_edge

sam9x60_frac_pll_compute_mul_frac.exit.thread109.if.end29_crit_edge: ; preds = %sam9x60_frac_pll_compute_mul_frac.exit.thread109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true:                                    ; preds = %sam9x60_frac_pll_compute_mul_frac.exit.thread109
  %frac_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %17, i32 0, i32 2
  %24 = ptrtoint ptr %frac_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frac_mask, align 4
  %and18 = and i32 %25, %15
  %frac_shift = getelementptr inbounds %struct.clk_pll_layout, ptr %17, i32 0, i32 6
  %26 = ptrtoint ptr %frac_shift to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %frac_shift, align 1
  %conv20 = zext i8 %27 to i32
  %shr21 = lshr i32 %and18, %conv20
  %28 = ptrtoint ptr %frac459.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %frac459.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr21, i32 %29)
  %cmp26 = icmp eq i32 %shr21, %29
  br i1 %cmp26, label %land.lhs.true.unlock_crit_edge, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %sam9x60_frac_pll_compute_mul_frac.exit.thread109.if.end29_crit_edge
  %shl = shl i32 %conv22, %conv16
  %30 = ptrtoint ptr %frac459.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %frac459.i, align 4
  %frac_shift37 = getelementptr inbounds %struct.clk_pll_layout, ptr %17, i32 0, i32 6
  %32 = ptrtoint ptr %frac_shift37 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %frac_shift37, align 1
  %conv38 = zext i8 %33 to i32
  %shl39 = shl i32 %31, %conv38
  %or = or i32 %shl39, %shl
  %call40 = call i32 @regmap_write(ptr noundef %1, i32 noundef 16, i32 noundef %or) #9
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %id, align 4
  %conv42 = zext i8 %35 to i32
  %or43 = or i32 %conv42, 256
  %call.i95 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 271, i32 noundef %or43, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i96 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 12, i32 noundef -1879048192, i32 noundef -1879048192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %36 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %id, align 4
  %conv47 = zext i8 %37 to i32
  %or48 = or i32 %conv47, 256
  %call.i97 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 271, i32 noundef %or48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %id, align 4
  %conv51113 = zext i8 %39 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %40 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %status.i, align 4, !annotation !21
  %call.i98114 = call i32 @regmap_read(ptr noundef %1, i32 noundef 236, ptr noundef nonnull %status.i) #9
  %41 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status.i, align 4
  %shl.i99115 = shl nuw i32 1, %conv51113
  %and.i116 = and i32 %42, %shl.i99115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool.i.not117 = icmp eq i32 %and.i116, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br i1 %tobool.i.not117, label %if.end29.do.end57_crit_edge, label %if.end29.unlock_crit_edge

if.end29.unlock_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end29.do.end57_crit_edge:                      ; preds = %if.end29
  br label %do.end57

do.end57:                                         ; preds = %do.end57.do.end57_crit_edge, %if.end29.do.end57_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !26
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %id, align 4
  %conv51 = zext i8 %44 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %45 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %status.i, align 4, !annotation !21
  %call.i98 = call i32 @regmap_read(ptr noundef %1, i32 noundef 236, ptr noundef nonnull %status.i) #9
  %46 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %status.i, align 4
  %shl.i99 = shl nuw i32 1, %conv51
  %and.i = and i32 %47, %shl.i99
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br i1 %tobool.i.not, label %do.end57.do.end57_crit_edge, label %do.end57.unlock_crit_edge

do.end57.unlock_crit_edge:                        ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

do.end57.do.end57_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

unlock:                                           ; preds = %do.end57.unlock_crit_edge, %if.end29.unlock_crit_edge, %land.lhs.true.unlock_crit_edge
  %48 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %call9) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end446.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i108 = phi i32 [ %tmprate.0.i105, %unlock ], [ -34, %entry.cleanup_crit_edge ], [ -34, %if.end446.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0.i108
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x60_div_pll_prepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  tail call fastcc void @sam9x60_div_pll_set(ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sam9x60_div_pll_unprepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %lock = getelementptr i8, ptr %hw, i32 -12
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %id = getelementptr i8, ptr %hw, i32 12
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv7 = zext i8 %5 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 15, i32 noundef %conv7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %layout = getelementptr i8, ptr %hw, i32 -4
  %6 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layout, align 4
  %endiv_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %endiv_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %endiv_mask, align 4
  %call.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 12, i32 noundef %9, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %id, align 4
  %conv11 = zext i8 %11 to i32
  %or = or i32 %conv11, 256
  %call.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 271, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x60_div_pll_is_prepared(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !21
  %lock = getelementptr i8, ptr %hw, i32 -12
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %id = getelementptr i8, ptr %hw, i32 12
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 4
  %conv7 = zext i8 %6 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 15, i32 noundef %conv7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call9 = call i32 @regmap_read(ptr noundef %1, i32 noundef 12, ptr noundef nonnull %val) #9
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %call4) #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %layout = getelementptr i8, ptr %hw, i32 -4
  %11 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %layout, align 4
  %endiv_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %endiv_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %endiv_mask, align 4
  %and = and i32 %14, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x60_div_pll_save_context(ptr nocapture noundef %hw) #4 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !21
  %lock.i = getelementptr i8, ptr %hw, i32 -12
  %3 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock.i, align 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %id.i = getelementptr i8, ptr %hw, i32 12
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id.i, align 4
  %conv7.i = zext i8 %6 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 15, i32 noundef %conv7.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call9.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 12, ptr noundef nonnull %val.i) #9
  %7 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %call4.i) #9
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %layout.i = getelementptr i8, ptr %hw, i32 -4
  %11 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %layout.i, align 4
  %endiv_mask.i = getelementptr inbounds %struct.clk_pll_layout, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %endiv_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %endiv_mask.i, align 4
  %and.i = and i32 %14, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %status = getelementptr i8, ptr %hw, i32 24
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %lnot.ext.i, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sam9x60_div_pll_restore_context(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr i8, ptr %hw, i32 24
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  tail call fastcc void @sam9x60_div_pll_set(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x60_div_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div4 = getelementptr i8, ptr %hw, i32 32
  %0 = ptrtoint ptr %div4 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %div4, align 4
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv, 1
  %div5274 = lshr i32 %add, 1
  %add6 = add i32 %div5274, %parent_rate
  %div184 = udiv i32 %add6, %add
  ret i32 %div184
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x60_div_pll_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef writeonly %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %characteristics1.i = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %characteristics1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %characteristics1.i, align 4
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not.i = icmp eq i32 %rate, 0
  br i1 %tobool.not.i, label %entry.sam9x60_div_pll_compute_div.exit_crit_edge, label %if.end.i

entry.sam9x60_div_pll_compute_div.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sam9x60_div_pll_compute_div.exit

if.end.i:                                         ; preds = %entry
  %output.i = getelementptr inbounds %struct.clk_pll_characteristics, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp.i = icmp ugt i32 %5, %rate
  br i1 %cmp.i, label %if.end.i.sam9x60_div_pll_compute_div.exit_crit_edge, label %lor.lhs.false.i

if.end.i.sam9x60_div_pll_compute_div.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sam9x60_div_pll_compute_div.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %max.i = getelementptr inbounds %struct.clk_range, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %rate)
  %cmp4.i = icmp ult i32 %7, %rate
  br i1 %cmp4.i, label %lor.lhs.false.i.sam9x60_div_pll_compute_div.exit_crit_edge, label %for.cond.preheader.i

lor.lhs.false.i.sam9x60_div_pll_compute_div.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sam9x60_div_pll_compute_div.exit

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %layout.i = getelementptr i8, ptr %hw, i32 -4
  %8 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %layout.i, align 4
  %div_mask373.i = getelementptr inbounds %struct.clk_pll_layout, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %div_mask373.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div_mask373.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp7374.i = icmp ugt i32 %11, 1
  br i1 %cmp7374.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %divid.0377.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %best_rate.0376.i = phi i32 [ %best_rate.2.i, %for.inc.i.for.body.i_crit_edge ], [ -22, %for.cond.preheader.i.for.body.i_crit_edge ]
  %best_diff.0375.i = phi i32 [ %best_diff.2.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %divid.0377.i, %rate
  %call8.i = tail call i32 @clk_hw_round_rate(ptr noundef %call.i, i32 noundef %mul.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then189.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then189.i:                                     ; preds = %for.body.i
  %div344.i = lshr i32 %divid.0377.i, 1
  %add.i = add i32 %call8.i, %div344.i
  %div193.i = udiv i32 %add.i, %divid.0377.i
  %sub203.i = sub i32 %rate, %div193.i
  %12 = tail call i32 @llvm.abs.i32(i32 %sub203.i, i1 false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.0375.i)
  %cmp212.i = icmp slt i32 %best_diff.0375.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.0375.i, i32 %12)
  %cmp215.i = icmp ugt i32 %best_diff.0375.i, %12
  %or.cond.i = select i1 %cmp212.i, i1 true, i1 %cmp215.i
  br i1 %or.cond.i, label %if.then217.i, label %if.then189.i.if.end218.i_crit_edge

if.then189.i.if.end218.i_crit_edge:               ; preds = %if.then189.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end218.i

if.then217.i:                                     ; preds = %if.then189.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call8.i, ptr %parent_rate, align 4
  br label %if.end218.i

if.end218.i:                                      ; preds = %if.then217.i, %if.then189.i.if.end218.i_crit_edge
  %best_diff.1.i = phi i32 [ %12, %if.then217.i ], [ %best_diff.0375.i, %if.then189.i.if.end218.i_crit_edge ]
  %best_rate.1.i = phi i32 [ %div193.i, %if.then217.i ], [ %best_rate.0376.i, %if.then189.i.if.end218.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.1.i)
  %tobool219.not.i = icmp eq i32 %best_diff.1.i, 0
  br i1 %tobool219.not.i, label %if.end218.i.for.end.i_crit_edge, label %if.end218.i.for.inc.i_crit_edge

if.end218.i.for.inc.i_crit_edge:                  ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end218.i.for.end.i_crit_edge:                  ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end218.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %best_diff.2.i = phi i32 [ %best_diff.1.i, %if.end218.i.for.inc.i_crit_edge ], [ %best_diff.0375.i, %for.body.i.for.inc.i_crit_edge ]
  %best_rate.2.i = phi i32 [ %best_rate.1.i, %if.end218.i.for.inc.i_crit_edge ], [ %best_rate.0376.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %divid.0377.i, 1
  %14 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %layout.i, align 4
  %div_mask.i = getelementptr inbounds %struct.clk_pll_layout, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %div_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %div_mask.i, align 4
  %cmp7.i = icmp ult i32 %inc.i, %17
  br i1 %cmp7.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end218.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %best_rate.3.i = phi i32 [ -22, %for.cond.preheader.i.for.end.i_crit_edge ], [ %best_rate.2.i, %for.inc.i.for.end.i_crit_edge ], [ %best_rate.1.i, %if.end218.i.for.end.i_crit_edge ]
  %18 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %output.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %best_rate.3.i, i32 %21)
  %cmp225.i = icmp ult i32 %best_rate.3.i, %21
  br i1 %cmp225.i, label %for.end.i.sam9x60_div_pll_compute_div.exit_crit_edge, label %lor.lhs.false227.i

for.end.i.sam9x60_div_pll_compute_div.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sam9x60_div_pll_compute_div.exit

lor.lhs.false227.i:                               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %max230.i = getelementptr inbounds %struct.clk_range, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %max230.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max230.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %best_rate.3.i, i32 %23)
  %cmp231.i = icmp ugt i32 %best_rate.3.i, %23
  %spec.select.i = select i1 %cmp231.i, i32 -34, i32 %best_rate.3.i
  br label %sam9x60_div_pll_compute_div.exit

sam9x60_div_pll_compute_div.exit:                 ; preds = %lor.lhs.false227.i, %for.end.i.sam9x60_div_pll_compute_div.exit_crit_edge, %lor.lhs.false.i.sam9x60_div_pll_compute_div.exit_crit_edge, %if.end.i.sam9x60_div_pll_compute_div.exit_crit_edge, %entry.sam9x60_div_pll_compute_div.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.sam9x60_div_pll_compute_div.exit_crit_edge ], [ -34, %lor.lhs.false.i.sam9x60_div_pll_compute_div.exit_crit_edge ], [ -34, %if.end.i.sam9x60_div_pll_compute_div.exit_crit_edge ], [ -34, %for.end.i.sam9x60_div_pll_compute_div.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false227.i ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sam9x60_div_pll_set_rate(ptr nocapture noundef writeonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div59 = lshr i32 %rate, 1
  %add = add i32 %div59, %parent_rate
  %div6 = udiv i32 %add, %rate
  %0 = trunc i32 %div6 to i8
  %conv = add i8 %0, -1
  %div7 = getelementptr i8, ptr %hw, i32 32
  %1 = ptrtoint ptr %div7 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %div7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sam9x60_div_pll_set(ptr nocapture noundef readonly %core) unnamed_addr #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !21
  %lock = getelementptr inbounds %struct.sam9x60_pll_core, ptr %core, i32 0, i32 1
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %id = getelementptr inbounds %struct.sam9x60_pll_core, ptr %core, i32 0, i32 5
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 4
  %conv7 = zext i8 %6 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 15, i32 noundef %conv7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call9 = call i32 @regmap_read(ptr noundef %1, i32 noundef 12, ptr noundef nonnull %val) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %layout = getelementptr inbounds %struct.sam9x60_pll_core, ptr %core, i32 0, i32 3
  %9 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %layout, align 4
  %endiv_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %endiv_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %endiv_mask, align 4
  %and13 = and i32 %12, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %div_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %div_mask, align 4
  %and = and i32 %14, %8
  %div_shift = getelementptr inbounds %struct.clk_pll_layout, ptr %10, i32 0, i32 7
  %15 = ptrtoint ptr %div_shift to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %div_shift, align 2
  %conv11 = zext i8 %16 to i32
  %shr = lshr i32 %and, %conv11
  %div14 = getelementptr inbounds %struct.sam9x60_div, ptr %core, i32 0, i32 2
  %17 = ptrtoint ptr %div14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %div14, align 4
  %conv15 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv15)
  %cmp16 = icmp eq i32 %shr, %conv15
  br i1 %cmp16, label %land.lhs.true.unlock_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %div18 = getelementptr inbounds %struct.sam9x60_div, ptr %core, i32 0, i32 2
  %19 = ptrtoint ptr %div18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %div18, align 4
  %conv19 = zext i8 %20 to i32
  call fastcc void @sam9x60_div_pll_set_div(ptr noundef %core, i32 noundef %conv19, i1 noundef zeroext true)
  br label %unlock

unlock:                                           ; preds = %if.end, %land.lhs.true.unlock_crit_edge
  %21 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %call4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sam9x60_div_pll_set_div(ptr nocapture noundef readonly %core, i32 noundef %div, i1 noundef zeroext %enable) unnamed_addr #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  br i1 %enable, label %cond.true3, label %entry.cond.end6_crit_edge

entry.cond.end6_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end6

cond.true3:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %layout = getelementptr inbounds %struct.sam9x60_pll_core, ptr %core, i32 0, i32 3
  %2 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layout, align 4
  %endiv_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %endiv_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %endiv_mask, align 4
  %endiv_shift = getelementptr inbounds %struct.clk_pll_layout, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %endiv_shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %endiv_shift, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true3, %entry.cond.end6_crit_edge
  %cond37 = phi i32 [ %5, %cond.true3 ], [ 0, %entry.cond.end6_crit_edge ]
  %cond7 = phi i32 [ %shl, %cond.true3 ], [ 0, %entry.cond.end6_crit_edge ]
  %layout8 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %core, i32 0, i32 3
  %8 = ptrtoint ptr %layout8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %layout8, align 4
  %div_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div_mask, align 4
  %or = or i32 %11, %cond37
  %div_shift = getelementptr inbounds %struct.clk_pll_layout, ptr %9, i32 0, i32 7
  %12 = ptrtoint ptr %div_shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %div_shift, align 2
  %conv10 = zext i8 %13 to i32
  %shl11 = shl i32 %div, %conv10
  %or12 = or i32 %shl11, %cond7
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 12, i32 noundef %or, i32 noundef %or12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %id = getelementptr inbounds %struct.sam9x60_pll_core, ptr %core, i32 0, i32 5
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id, align 4
  %conv13 = zext i8 %15 to i32
  %or14 = or i32 %conv13, 256
  %call.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 271, i32 noundef %or14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %id, align 4
  %conv1739 = zext i8 %17 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %status.i, align 4, !annotation !21
  %call.i3540 = call i32 @regmap_read(ptr noundef %1, i32 noundef 236, ptr noundef nonnull %status.i) #9
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status.i, align 4
  %shl.i41 = shl nuw i32 1, %conv1739
  %and.i42 = and i32 %20, %shl.i41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.i.not43 = icmp eq i32 %and.i42, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br i1 %tobool.i.not43, label %cond.end6.do.end_crit_edge, label %cond.end6.while.end_crit_edge

cond.end6.while.end_crit_edge:                    ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cond.end6.do.end_crit_edge:                       ; preds = %cond.end6
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %cond.end6.do.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !28
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !29
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %id, align 4
  %conv17 = zext i8 %22 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %23 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %status.i, align 4, !annotation !21
  %call.i35 = call i32 @regmap_read(ptr noundef %1, i32 noundef 236, ptr noundef nonnull %status.i) #9
  %24 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status.i, align 4
  %shl.i = shl nuw i32 1, %conv17
  %and.i = and i32 %25, %shl.i
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br i1 %tobool.i.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %cond.end6.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x60_div_pll_set_rate_chg(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !21
  %div638 = lshr i32 %rate, 1
  %add = add i32 %div638, %parent_rate
  %div7 = udiv i32 %add, %rate
  %3 = trunc i32 %div7 to i8
  %conv = add i8 %3, -1
  %div8 = getelementptr i8, ptr %hw, i32 32
  %4 = ptrtoint ptr %div8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %div8, align 4
  %lock = getelementptr i8, ptr %hw, i32 -12
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  %id = getelementptr i8, ptr %hw, i32 12
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 4
  %conv15 = zext i8 %8 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 15, i32 noundef %conv15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call17 = call i32 @regmap_read(ptr noundef %1, i32 noundef 12, ptr noundef nonnull %val) #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %layout = getelementptr i8, ptr %hw, i32 -4
  %11 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %layout, align 4
  %div_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %div_mask, align 4
  %and = and i32 %14, %10
  %div_shift = getelementptr inbounds %struct.clk_pll_layout, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %div_shift to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %div_shift, align 2
  %conv19 = zext i8 %16 to i32
  %shr = lshr i32 %and, %conv19
  %17 = ptrtoint ptr %div8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %div8, align 4
  %conv21 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv21)
  %cmp22 = icmp eq i32 %shr, %conv21
  br i1 %cmp22, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @sam9x60_div_pll_set_div(ptr noundef %add.ptr, i32 noundef %conv21, i1 noundef zeroext false)
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x60_div_pll_notifier_fn(ptr nocapture noundef readnone %notifier, i32 noundef %code, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  %core = alloca %struct.sam9x60_pll_core, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @notifier_div, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %core) #9
  %1 = call ptr @memcpy(ptr %core, ptr %0, i32 32)
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %code)
  %cmp.not = icmp eq i32 %code, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %safe_div = getelementptr inbounds %struct.sam9x60_div, ptr %0, i32 0, i32 3
  %5 = ptrtoint ptr %safe_div to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %safe_div, align 1
  %div3 = getelementptr inbounds %struct.sam9x60_div, ptr %0, i32 0, i32 2
  %7 = ptrtoint ptr %div3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %div3, align 4
  %lock = getelementptr inbounds %struct.sam9x60_pll_core, ptr %core, i32 0, i32 1
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #9
  %id = getelementptr inbounds %struct.sam9x60_pll_core, ptr %core, i32 0, i32 5
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %id, align 4
  %conv9 = zext i8 %11 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 28, i32 noundef 15, i32 noundef %conv9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call11 = call i32 @regmap_read(ptr noundef %3, i32 noundef 12, ptr noundef nonnull %val) #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %layout = getelementptr inbounds %struct.sam9x60_pll_core, ptr %core, i32 0, i32 3
  %14 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %layout, align 4
  %div_mask = getelementptr inbounds %struct.clk_pll_layout, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %div_mask, align 4
  %and = and i32 %17, %13
  %div_shift = getelementptr inbounds %struct.clk_pll_layout, ptr %15, i32 0, i32 7
  %18 = ptrtoint ptr %div_shift to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %div_shift, align 2
  %conv13 = zext i8 %19 to i32
  %shr = lshr i32 %and, %conv13
  %20 = ptrtoint ptr %safe_div to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %safe_div, align 1
  %conv15 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv15)
  %cmp16 = icmp eq i32 %shr, %conv15
  br i1 %cmp16, label %if.end.unlock_crit_edge, label %if.end19

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %div3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %div3, align 4
  %conv21 = zext i8 %23 to i32
  call fastcc void @sam9x60_div_pll_set_div(ptr noundef nonnull %core, i32 noundef %conv21, i1 noundef zeroext false)
  br label %unlock

unlock:                                           ; preds = %if.end19, %if.end.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.unlock_crit_edge ], [ 1, %if.end19 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %core) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @notifier_div, !1, !"notifier_div", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/clk-sam9x60-pll.c", i32 58, i32 28}
!2 = !{ptr @sam9x60_frac_pll_ops, !3, !"sam9x60_frac_pll_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/at91/clk-sam9x60-pll.c", i32 314, i32 29}
!4 = !{ptr @sam9x60_frac_pll_ops_chg, !5, !"sam9x60_frac_pll_ops_chg", i1 false, i1 false}
!5 = !{!"../drivers/clk/at91/clk-sam9x60-pll.c", i32 325, i32 29}
!6 = !{ptr @sam9x60_div_pll_ops, !7, !"sam9x60_div_pll_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/at91/clk-sam9x60-pll.c", i32 588, i32 29}
!8 = !{ptr @sam9x60_div_pll_ops_chg, !9, !"sam9x60_div_pll_ops_chg", i1 false, i1 false}
!9 = !{!"../drivers/clk/at91/clk-sam9x60-pll.c", i32 599, i32 29}
!10 = !{ptr @sam9x60_div_pll_notifier, !11, !"sam9x60_div_pll_notifier", i1 false, i1 false}
!11 = !{!"../drivers/clk/at91/clk-sam9x60-pll.c", i32 584, i32 30}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2148680789, i64 2148681069, i64 2148681403, i64 2148681737}
!24 = !{i64 2152729242}
!25 = !{i64 2152729084}
!26 = !{i64 2152751269}
!27 = !{i64 2152751111}
!28 = !{i64 2152760551}
!29 = !{i64 2152760393}
