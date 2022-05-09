; ModuleID = '/llk/IR_all_yes/drivers/clk/spear/clk-vco-pll.c_pt.bc'
source_filename = "../drivers/clk/spear/clk-vco-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_vco = type { %struct.clk_hw, ptr, ptr, ptr, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_pll = type { %struct.clk_hw, ptr, [1 x ptr], ptr }
%struct.pll_rate_tbl = type { i8, i16, i8, i8 }

@clk_register_vco_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013clk-vco-pll: Invalid arguments passed\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_register_vco_pll\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/spear/clk-vco-pll.c\00", [32 x i8] zeroinitializer }, align 32
@clk_register_vco_pll._entry_ptr = internal global ptr @clk_register_vco_pll._entry, section ".printk_index", align 4
@clk_vco_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_vco_recalc_rate, ptr @clk_vco_round_rate, ptr null, ptr null, ptr null, ptr @clk_vco_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr @clk_pll_round_rate, ptr null, ptr null, ptr null, ptr @clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_register_vco_pll._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013clk-vco-pll: Failed to register vco pll clock\0A\00", [47 x i8] zeroinitializer }, align 32
@clk_register_vco_pll._entry_ptr.5 = internal global ptr @clk_register_vco_pll._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: denominator can't be zero\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.clk_vco_recalc_rate = private unnamed_addr constant [20 x i8] c"clk_vco_recalc_rate\00", align 1
@clk_pll_round_rate_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013clk-vco-pll: %s: prate is must for pll clk\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clk_pll_round_rate_index\00", [39 x i8] zeroinitializer }, align 32
@clk_pll_round_rate_index._entry_ptr = internal global ptr @clk_pll_round_rate_index._entry, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 290, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"clk_vco_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 269, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"clk_pll_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 168, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 356, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 222, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [35 x i8] c"../drivers/clk/spear/clk-vco-pll.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 93, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @clk_pll_round_rate_index._entry, ptr @clk_pll_round_rate_index._entry_ptr, ptr @clk_register_vco_pll._entry, ptr @clk_register_vco_pll._entry.3, ptr @clk_register_vco_pll._entry_ptr, ptr @clk_register_vco_pll._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @clk_vco_ops, ptr @clk_pll_ops, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_register_vco_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_vco_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_register_vco_pll._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll_round_rate_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_register_vco_pll(ptr noundef %vco_name, ptr noundef %pll_name, ptr noundef %vco_gate_name, ptr noundef %parent_name, i32 noundef %flags, ptr noundef %mode_reg, ptr noundef %cfg_reg, ptr noundef %rtbl, i8 noundef zeroext %rtbl_cnt, ptr noundef %lock, ptr noundef writeonly %pll_clk, ptr noundef writeonly %vco_gate_clk) local_unnamed_addr #0 align 64 {
entry:
  %vco_name.addr = alloca ptr, align 4
  %vco_gate_name.addr = alloca ptr, align 4
  %parent_name.addr = alloca ptr, align 4
  %vco_init = alloca %struct.clk_init_data, align 4
  %pll_init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vco_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %vco_name, ptr %vco_name.addr, align 4
  %1 = ptrtoint ptr %vco_gate_name.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vco_gate_name, ptr %vco_gate_name.addr, align 4
  %2 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %vco_init) #7
  %3 = call ptr @memset(ptr %vco_init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pll_init) #7
  %4 = call ptr @memset(ptr %pll_init, i32 255, i32 28)
  %tobool.not = icmp eq ptr %vco_name, null
  %tobool1.not = icmp eq ptr %pll_name, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.do.end_crit_edge, label %lor.lhs.false2

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false2:                                   ; preds = %entry
  %tobool3.not = icmp eq ptr %parent_name, null
  %tobool5.not = icmp eq ptr %mode_reg, null
  %or.cond97 = or i1 %tobool3.not, %tobool5.not
  %tobool7.not = icmp eq ptr %cfg_reg, null
  %or.cond98 = or i1 %or.cond97, %tobool7.not
  %tobool9.not = icmp eq ptr %rtbl, null
  %or.cond99 = or i1 %or.cond98, %tobool9.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rtbl_cnt)
  %tobool11.not = icmp eq i8 %rtbl_cnt, 0
  %or.cond100 = or i1 %or.cond99, %tobool11.not
  br i1 %or.cond100, label %lor.lhs.false2.do.end_crit_edge, label %if.end

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false2.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 32) #11
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i101 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 24) #11
  %tobool19.not = icmp eq ptr %call7.i.i101, null
  br i1 %tobool19.not, label %if.end17.free_vco_crit_edge, label %if.end21

if.end17.free_vco_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_vco

if.end21:                                         ; preds = %if.end17
  %mode_reg22 = getelementptr inbounds %struct.clk_vco, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %mode_reg22 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mode_reg, ptr %mode_reg22, align 4
  %cfg_reg23 = getelementptr inbounds %struct.clk_vco, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %cfg_reg23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cfg_reg, ptr %cfg_reg23, align 8
  %rtbl24 = getelementptr inbounds %struct.clk_vco, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %rtbl24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %rtbl, ptr %rtbl24, align 4
  %rtbl_cnt25 = getelementptr inbounds %struct.clk_vco, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %rtbl_cnt25 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %rtbl_cnt, ptr %rtbl_cnt25, align 8
  %lock26 = getelementptr inbounds %struct.clk_vco, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %lock26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lock, ptr %lock26, align 4
  %init = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vco_init, ptr %init, align 8
  %vco27 = getelementptr inbounds %struct.clk_pll, ptr %call7.i.i101, i32 0, i32 1
  %13 = ptrtoint ptr %vco27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %vco27, align 4
  %init29 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i101, i32 0, i32 2
  %14 = ptrtoint ptr %init29 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pll_init, ptr %init29, align 8
  %15 = ptrtoint ptr %vco_gate_name.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vco_gate_name.addr, align 4
  %tobool30.not = icmp eq ptr %16, null
  br i1 %tobool30.not, label %if.end21.if.end39_crit_edge, label %if.then31

if.end21.if.end39_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then31:                                        ; preds = %if.end21
  %17 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent_name.addr, align 4
  %call32 = call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull %16, ptr noundef %18, i32 noundef 0, ptr noundef nonnull %mode_reg, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef %lock) #7
  %tobool.not.i = icmp eq ptr %call32, null
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then31.free_pll_crit_edge, label %if.end35

if.then31.free_pll_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_pll

if.end35:                                         ; preds = %if.then31
  %tobool36.not = icmp eq ptr %vco_gate_clk, null
  br i1 %tobool36.not, label %if.end35.if.end39_crit_edge, label %if.then37

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %vco_gate_clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call32, ptr %vco_gate_clk, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35.if.end39_crit_edge, %if.end21.if.end39_crit_edge
  %vco_parent_name.0 = phi ptr [ %vco_gate_name.addr, %if.then37 ], [ %vco_gate_name.addr, %if.end35.if.end39_crit_edge ], [ %parent_name.addr, %if.end21.if.end39_crit_edge ]
  %20 = ptrtoint ptr %vco_name.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vco_name.addr, align 4
  %22 = ptrtoint ptr %vco_init to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %vco_init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %vco_init, i32 0, i32 1
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @clk_vco_ops, ptr %ops, align 4
  %flags40 = getelementptr inbounds %struct.clk_init_data, ptr %vco_init, i32 0, i32 6
  %24 = ptrtoint ptr %flags40 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %flags, ptr %flags40, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %vco_init, i32 0, i32 2
  %25 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %vco_parent_name.0, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %vco_init, i32 0, i32 5
  %26 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %num_parents, align 4
  %27 = ptrtoint ptr %pll_init to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pll_name, ptr %pll_init, align 4
  %ops42 = getelementptr inbounds %struct.clk_init_data, ptr %pll_init, i32 0, i32 1
  %28 = ptrtoint ptr %ops42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @clk_pll_ops, ptr %ops42, align 4
  %flags43 = getelementptr inbounds %struct.clk_init_data, ptr %pll_init, i32 0, i32 6
  %29 = ptrtoint ptr %flags43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %flags43, align 4
  %parent_names44 = getelementptr inbounds %struct.clk_init_data, ptr %pll_init, i32 0, i32 2
  %30 = ptrtoint ptr %parent_names44 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %vco_name.addr, ptr %parent_names44, align 4
  %num_parents45 = getelementptr inbounds %struct.clk_init_data, ptr %pll_init, i32 0, i32 5
  %31 = ptrtoint ptr %num_parents45 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %num_parents45, align 4
  %call47 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %tobool.not.i102 = icmp eq ptr %call47, null
  %cmp.i103 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  %spec.select.i104 = or i1 %tobool.not.i102, %cmp.i103
  br i1 %spec.select.i104, label %if.end39.free_pll_crit_edge, label %if.end50

if.end39.free_pll_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_pll

if.end50:                                         ; preds = %if.end39
  %call52 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i101) #7
  %tobool.not.i105 = icmp eq ptr %call52, null
  %cmp.i106 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  %spec.select.i107 = or i1 %tobool.not.i105, %cmp.i106
  br i1 %spec.select.i107, label %if.end50.free_pll_crit_edge, label %if.end55

if.end50.free_pll_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_pll

if.end55:                                         ; preds = %if.end50
  %tobool56.not = icmp eq ptr %pll_clk, null
  br i1 %tobool56.not, label %if.end55.cleanup_crit_edge, label %if.then57

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %pll_clk to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call52, ptr %pll_clk, align 4
  br label %cleanup

free_pll:                                         ; preds = %if.end50.free_pll_crit_edge, %if.end39.free_pll_crit_edge, %if.then31.free_pll_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i101) #7
  br label %free_vco

free_vco:                                         ; preds = %free_pll, %if.end17.free_vco_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %cleanup

cleanup:                                          ; preds = %free_vco, %if.then57, %if.end55.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %free_vco ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %call47, %if.then57 ], [ %call47, %if.end55.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pll_init) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_vco_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_vco, ptr %hw, i32 0, i32 5
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
  %mode_reg = getelementptr inbounds %struct.clk_vco, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode_reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !31
  %cfg_reg = getelementptr inbounds %struct.clk_vco, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %cfg_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg_reg, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !31
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %if.end.if.end16_crit_edge, label %if.then14

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %10, i32 noundef %flags.0) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end.if.end16_crit_edge
  %and18 = and i32 %8, 255
  %11 = and i32 %4, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool19.not = icmp eq i32 %11, 0
  %mul26 = shl nuw nsw i32 %and18, 8
  %den.0 = select i1 %tobool19.not, i32 %and18, i32 %mul26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %den.0)
  %tobool28.not = icmp eq i32 %den.0, 0
  br i1 %tobool28.not, label %do.end37, label %if.end51

do.end37:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.clk_vco_recalc_rate) #7
  br label %cleanup

if.end51:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %12 = lshr i32 %8, 23
  %mul = and i32 %12, 510
  %13 = lshr i32 %8, 15
  %mul25 = and i32 %13, 131070
  %num.0 = select i1 %tobool19.not, i32 %mul, i32 %mul25
  %div = udiv i32 %parent_rate, 10000
  %mul52 = mul i32 %num.0, %div
  %div53 = udiv i32 %mul52, %den.0
  %mul54 = mul i32 %div53, 10000
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end37
  %retval.0 = phi i32 [ %mul54, %if.end51 ], [ 0, %do.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_vco_round_rate(ptr noundef %hw, i32 noundef %drate, ptr nocapture noundef readonly %prate) #0 align 64 {
entry:
  %unused = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused) #7
  %0 = ptrtoint ptr %unused to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %unused, align 4, !annotation !32
  %1 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %prate, align 4
  %rtbl_cnt = getelementptr inbounds %struct.clk_vco, ptr %hw, i32 0, i32 4
  %3 = ptrtoint ptr %rtbl_cnt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rtbl_cnt, align 4
  %call = call i32 @clk_round_rate_index(ptr noundef %hw, i32 noundef %drate, i32 noundef %2, ptr noundef nonnull @vco_calc_rate, i8 noundef zeroext %4, ptr noundef nonnull %unused) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_vco_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtbl1 = getelementptr inbounds %struct.clk_vco, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %rtbl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtbl1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #7
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %i, align 4, !annotation !32
  %rtbl_cnt = getelementptr inbounds %struct.clk_vco, ptr %hw, i32 0, i32 4
  %3 = ptrtoint ptr %rtbl_cnt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rtbl_cnt, align 4
  %call = call i32 @clk_round_rate_index(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate, ptr noundef nonnull @vco_calc_rate, i8 noundef zeroext %4, ptr noundef nonnull %i) #7
  %lock = getelementptr inbounds %struct.clk_vco, ptr %hw, i32 0, i32 5
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
  %mode_reg = getelementptr inbounds %struct.clk_vco, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_reg, align 4
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !31
  %10 = and i32 %9, -402653185
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i, align 4
  %arrayidx = getelementptr %struct.pll_rate_tbl, ptr %1, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 2
  %16 = shl i8 %15, 3
  %17 = and i8 %16, 24
  %shl = zext i8 %17 to i32
  %or = or i32 %11, %shl
  %18 = call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mode_reg, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #7, !srcloc !33
  %cfg_reg = getelementptr inbounds %struct.clk_vco, ptr %hw, i32 0, i32 2
  %21 = ptrtoint ptr %cfg_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg_reg, align 4
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !31
  %24 = lshr i32 %23, 8
  %25 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i, align 4
  %arrayidx18 = getelementptr %struct.pll_rate_tbl, ptr %1, i32 %26
  %n = getelementptr %struct.pll_rate_tbl, ptr %1, i32 %26, i32 2
  %27 = ptrtoint ptr %n to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %n, align 2
  %conv19 = zext i8 %28 to i32
  %.masked = and i32 %24, 65280
  %and23 = or i32 %.masked, %conv19
  %29 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx18, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool26.not = icmp eq i8 %30, 0
  %m34 = getelementptr %struct.pll_rate_tbl, ptr %1, i32 %26, i32 1
  %31 = ptrtoint ptr %m34 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %m34, align 2
  %and36 = zext i16 %32 to i32
  %. = select i1 %tobool26.not, i32 24, i32 16
  %shl37 = shl i32 %and36, %.
  %val.0 = or i32 %and23, %shl37
  %33 = call i32 @llvm.bswap.i32(i32 %val.0)
  %34 = ptrtoint ptr %cfg_reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg_reg, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #7, !srcloc !33
  %36 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lock, align 4
  %tobool42.not = icmp eq ptr %37, null
  br i1 %tobool42.not, label %if.end.if.end45_crit_edge, label %if.then43

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then43:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %37, i32 noundef %flags.0) #7
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end.if.end45_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate_index(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vco_calc_rate(ptr nocapture noundef readonly %hw, i32 noundef %prate, i32 noundef %index) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %rtbl = getelementptr inbounds %struct.clk_vco, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtbl, align 4
  %arrayidx.i = getelementptr %struct.pll_rate_tbl, ptr %1, i32 %index
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 256
  %mul.i = shl i32 %prate, 1
  %div.i = udiv i32 %mul.i, 10000
  %m.i = getelementptr %struct.pll_rate_tbl, ptr %1, i32 %index, i32 1
  %4 = ptrtoint ptr %m.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %m.i, align 2
  %conv3.i = zext i16 %5 to i32
  %mul4.i = mul i32 %div.i, %conv3.i
  %n.i = getelementptr %struct.pll_rate_tbl, ptr %1, i32 %index, i32 2
  %6 = ptrtoint ptr %n.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %n.i, align 2
  %conv6.i = zext i8 %7 to i32
  %mul7.i = mul nuw nsw i32 %cond.i, %conv6.i
  %div8.i = udiv i32 %mul4.i, %mul7.i
  %mul14.i = mul i32 %div8.i, 10000
  ret i32 %mul14.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vco = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %vco to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vco, align 4
  %lock = getelementptr inbounds %struct.clk_vco, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call5, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %4 = ptrtoint ptr %vco to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vco, align 4
  %cfg_reg = getelementptr inbounds %struct.clk_vco, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cfg_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg_reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !31
  %9 = ptrtoint ptr %vco to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vco, align 4
  %lock12 = getelementptr inbounds %struct.clk_vco, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %lock12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock12, align 4
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %if.end.if.end17_crit_edge, label %if.then14

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %12, i32 noundef %flags.0) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  %13 = lshr i32 %8, 16
  %and = and i32 %13, 7
  %div23 = lshr i32 %parent_rate, %and
  ret i32 %div23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_round_rate(ptr noundef %hw, i32 noundef %drate, ptr noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #7
  %call1.i = tail call ptr @clk_hw_get_parent(ptr noundef %call.i) #7
  %call2.i = tail call i32 @clk_hw_get_rate(ptr noundef %call1.i) #7
  %tobool.not.i = icmp eq ptr %prate, null
  br i1 %tobool.not.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  %vco.i = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %vco.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vco.i, align 4
  %rtbl_cnt32.i = getelementptr inbounds %struct.clk_vco, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rtbl_cnt32.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rtbl_cnt32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp34.not.i = icmp eq i8 %3, 0
  br i1 %cmp34.not.i, label %for.cond.preheader.i.clk_pll_round_rate_index.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.clk_pll_round_rate_index.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_pll_round_rate_index.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %mul.i.i = shl i32 %call2.i, 1
  %div.i.i = udiv i32 %mul.i.i, 10000
  br label %for.body.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #10
  br label %clk_pll_round_rate_index.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %unused.0 = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = phi ptr [ %1, %for.body.lr.ph.i ], [ %20, %for.inc.i.for.body.i_crit_edge ]
  %rate.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %mul13.i.i, %for.inc.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prate, align 4
  %rtbl.i = getelementptr inbounds %struct.clk_vco, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %rtbl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtbl.i, align 4
  %arrayidx.i.i = getelementptr %struct.pll_rate_tbl, ptr %8, i32 %unused.0
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 256
  %m.i.i = getelementptr %struct.pll_rate_tbl, ptr %8, i32 %unused.0, i32 1
  %11 = ptrtoint ptr %m.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %m.i.i, align 2
  %conv3.i.i = zext i16 %12 to i32
  %mul4.i.i = mul i32 %div.i.i, %conv3.i.i
  %n.i.i = getelementptr %struct.pll_rate_tbl, ptr %8, i32 %unused.0, i32 2
  %13 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %n.i.i, align 2
  %conv6.i.i = zext i8 %14 to i32
  %mul7.i.i = mul nuw nsw i32 %cond.i.i, %conv6.i.i
  %div8.i.i = udiv i32 %mul4.i.i, %mul7.i.i
  %p.i.i = getelementptr %struct.pll_rate_tbl, ptr %8, i32 %unused.0, i32 3
  %15 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %p.i.i, align 1
  %conv11.i.i = zext i8 %16 to i32
  %div1224.i.i = lshr i32 %div8.i.i, %conv11.i.i
  %mul13.i.i = mul i32 %div1224.i.i, 10000
  %mul14.i.i = mul i32 %div8.i.i, 10000
  %17 = ptrtoint ptr %prate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul14.i.i, ptr %prate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul13.i.i, i32 %drate)
  %cmp8.i = icmp ugt i32 %mul13.i.i, %drate
  br i1 %cmp8.i, label %if.then10.i, label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unused.0)
  %tobool11.not.i = icmp eq i32 %unused.0, 0
  br i1 %tobool11.not.i, label %if.then10.i.clk_pll_round_rate_index.exit_crit_edge, label %if.then12.i

if.then10.i.clk_pll_round_rate_index.exit_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_pll_round_rate_index.exit

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %prate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %6, ptr %prate, align 4
  br label %clk_pll_round_rate_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %unused.0, 1
  %19 = ptrtoint ptr %vco.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vco.i, align 4
  %rtbl_cnt.i = getelementptr inbounds %struct.clk_vco, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %rtbl_cnt.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rtbl_cnt.i, align 4
  %conv.i = zext i8 %22 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.clk_pll_round_rate_index.exit_crit_edge

for.inc.i.clk_pll_round_rate_index.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_pll_round_rate_index.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

clk_pll_round_rate_index.exit:                    ; preds = %for.inc.i.clk_pll_round_rate_index.exit_crit_edge, %if.then12.i, %if.then10.i.clk_pll_round_rate_index.exit_crit_edge, %do.end.i, %for.cond.preheader.i.clk_pll_round_rate_index.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %mul13.i.i, %if.then10.i.clk_pll_round_rate_index.exit_crit_edge ], [ %rate.035.i, %if.then12.i ], [ 0, %for.cond.preheader.i.clk_pll_round_rate_index.exit_crit_edge ], [ %mul13.i.i, %for.inc.i.clk_pll_round_rate_index.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vco = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %vco to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vco, align 4
  %rtbl1 = getelementptr inbounds %struct.clk_vco, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rtbl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtbl1, align 4
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #7
  %call1.i = tail call ptr @clk_hw_get_parent(ptr noundef %call.i) #7
  %call2.i = tail call i32 @clk_hw_get_rate(ptr noundef %call1.i) #7
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #10
  %4 = ptrtoint ptr %vco to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vco, align 4
  %lock = getelementptr inbounds %struct.clk_vco, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %7) #7
  br label %if.end

if.end:                                           ; preds = %do.body3, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call8, %do.body3 ], [ 0, %entry.if.end_crit_edge ]
  %8 = ptrtoint ptr %vco to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vco, align 4
  %cfg_reg = getelementptr inbounds %struct.clk_vco, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %cfg_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg_reg, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !31
  %13 = and i32 %12, -458753
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %p = getelementptr %struct.pll_rate_tbl, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %p, align 1
  %17 = and i8 %16, 7
  %and15 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %and15, 8
  %or = or i32 %shl, %14
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %vco to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vco, align 4
  %cfg_reg17 = getelementptr inbounds %struct.clk_vco, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %cfg_reg17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg_reg17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %18) #7, !srcloc !33
  %23 = ptrtoint ptr %vco to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vco, align 4
  %lock19 = getelementptr inbounds %struct.clk_vco, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %lock19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock19, align 4
  %tobool20.not = icmp eq ptr %26, null
  br i1 %tobool20.not, label %if.end.if.end24_crit_edge, label %if.then21

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %26, i32 noundef %flags.0) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end.if.end24_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !17, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/spear/clk-vco-pll.c", i32 290, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @clk_register_vco_pll._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @clk_register_vco_pll._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/spear/clk-vco-pll.c", i32 356, i32 2}
!8 = !{ptr @clk_register_vco_pll._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @clk_register_vco_pll._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @clk_vco_ops, !11, !"clk_vco_ops", i1 false, i1 false}
!11 = !{!"../drivers/clk/spear/clk-vco-pll.c", i32 269, i32 29}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/spear/clk-vco-pll.c", i32 222, i32 3}
!14 = !{ptr @__func__.clk_vco_recalc_rate, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @clk_pll_ops, !16, !"clk_pll_ops", i1 false, i1 false}
!16 = !{!"../drivers/clk/spear/clk-vco-pll.c", i32 168, i32 29}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/spear/clk-vco-pll.c", i32 93, i32 3}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @clk_pll_round_rate_index._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @clk_pll_round_rate_index._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 4954292}
!32 = !{!"auto-init"}
!33 = !{i64 4953874}
