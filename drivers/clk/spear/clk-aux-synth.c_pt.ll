; ModuleID = '/llk/IR_all_yes/drivers/clk/spear/clk-aux-synth.c_pt.bc'
source_filename = "../drivers/clk/spear/clk-aux-synth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.aux_clk_masks = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_aux = type { %struct.clk_hw, ptr, ptr, ptr, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.aux_rate_tbl = type { i16, i16, i8 }

@clk_register_aux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013clk-aux-synth: Invalid arguments passed\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_register_aux\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/spear/clk-aux-synth.c\00", [62 x i8] zeroinitializer }, align 32
@clk_register_aux._entry_ptr = internal global ptr @clk_register_aux._entry, section ".printk_index", align 4
@default_aux_masks = internal constant { %struct.aux_clk_masks, [60 x i8] } { %struct.aux_clk_masks { i32 1, i32 30, i32 0, i32 1, i32 4095, i32 16, i32 4095, i32 0, i32 31 }, [60 x i8] zeroinitializer }, align 32
@clk_aux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_aux_recalc_rate, ptr @clk_aux_round_rate, ptr null, ptr null, ptr null, ptr @clk_aux_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_register_aux._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013clk-aux-synth: clk register failed\0A\00", [58 x i8] zeroinitializer }, align 32
@clk_register_aux._entry_ptr.5 = internal global ptr @clk_register_aux._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 147, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"default_aux_masks\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 32, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"clk_aux_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 131, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [37 x i8] c"../drivers/clk/spear/clk-aux-synth.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 194, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @clk_register_aux._entry, ptr @clk_register_aux._entry.3, ptr @clk_register_aux._entry_ptr, ptr @clk_register_aux._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @default_aux_masks, ptr @clk_aux_ops, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_register_aux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_aux_masks to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_aux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_register_aux._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_register_aux(ptr noundef %aux_name, ptr noundef %gate_name, ptr noundef %parent_name, i32 noundef %flags, ptr noundef %reg, ptr noundef %masks, ptr noundef %rtbl, i8 noundef zeroext %rtbl_cnt, ptr noundef %lock, ptr noundef writeonly %gate_clk) local_unnamed_addr #0 align 64 {
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
  %tobool.not = icmp eq ptr %aux_name, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %tobool1.not = icmp eq ptr %parent_name, null
  %tobool3.not = icmp eq ptr %reg, null
  %or.cond = or i1 %tobool1.not, %tobool3.not
  %tobool5.not = icmp eq ptr %rtbl, null
  %or.cond71 = or i1 %or.cond, %tobool5.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rtbl_cnt)
  %tobool7.not = icmp eq i8 %rtbl_cnt, 0
  %or.cond72 = or i1 %or.cond71, %tobool7.not
  br i1 %or.cond72, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup46

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #11
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end.cleanup46_crit_edge, label %if.end13

if.end.cleanup46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

if.end13:                                         ; preds = %if.end
  %tobool14.not = icmp eq ptr %masks, null
  %spec.select = select i1 %tobool14.not, ptr @default_aux_masks, ptr %masks
  %4 = getelementptr inbounds %struct.clk_aux, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select, ptr %4, align 8
  %reg19 = getelementptr inbounds %struct.clk_aux, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %reg19 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %reg, ptr %reg19, align 4
  %rtbl20 = getelementptr inbounds %struct.clk_aux, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %rtbl20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rtbl, ptr %rtbl20, align 4
  %rtbl_cnt21 = getelementptr inbounds %struct.clk_aux, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %rtbl_cnt21 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %rtbl_cnt, ptr %rtbl_cnt21, align 8
  %lock22 = getelementptr inbounds %struct.clk_aux, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %lock22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lock, ptr %lock22, align 4
  %init23 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %init23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %init, ptr %init23, align 8
  %11 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %aux_name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @clk_aux_ops, ptr %ops, align 4
  %flags24 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %13 = ptrtoint ptr %flags24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %flags, ptr %flags24, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %14 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %15 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %num_parents, align 4
  %call26 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %tobool.not.i = icmp eq ptr %call26, null
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end13.free_aux_crit_edge, label %if.end29

if.end13.free_aux_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_aux

if.end29:                                         ; preds = %if.end13
  %tobool30.not = icmp eq ptr %gate_name, null
  br i1 %tobool30.not, label %if.end29.cleanup46_crit_edge, label %if.then31

if.end29.cleanup46_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

if.then31:                                        ; preds = %if.end29
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %4, align 8
  %enable_bit = getelementptr inbounds %struct.aux_clk_masks, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enable_bit, align 4
  %conv = trunc i32 %19 to i8
  %call33 = call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull %gate_name, ptr noundef nonnull %aux_name, i32 noundef 4, ptr noundef nonnull %reg, i8 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef %lock) #7
  %tobool.not.i74 = icmp eq ptr %call33, null
  %cmp.i75 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  %spec.select.i76 = or i1 %tobool.not.i74, %cmp.i75
  br i1 %spec.select.i76, label %if.then31.free_aux_crit_edge, label %if.end36

if.then31.free_aux_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_aux

if.end36:                                         ; preds = %if.then31
  %tobool37.not = icmp eq ptr %gate_clk, null
  br i1 %tobool37.not, label %if.end36.cleanup46_crit_edge, label %if.then38

if.end36.cleanup46_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %gate_clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call33, ptr %gate_clk, align 4
  br label %cleanup46

free_aux:                                         ; preds = %if.then31.free_aux_crit_edge, %if.end13.free_aux_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %cleanup46

cleanup46:                                        ; preds = %free_aux, %if.then38, %if.end36.cleanup46_crit_edge, %if.end29.cleanup46_crit_edge, %if.end.cleanup46_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %free_aux ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %call26, %if.end29.cleanup46_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup46_crit_edge ], [ %call26, %if.then38 ], [ %call26, %if.end36.cleanup46_crit_edge ]
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
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_aux_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_aux, ptr %hw, i32 0, i32 5
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
  %reg = getelementptr inbounds %struct.clk_aux, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !23
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %7, i32 noundef %flags.0) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %masks = getelementptr inbounds %struct.clk_aux, ptr %hw, i32 0, i32 2
  %8 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %masks, align 4
  %eq_sel_shift = getelementptr inbounds %struct.aux_clk_masks, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %eq_sel_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eq_sel_shift, align 4
  %shr = lshr i32 %5, %11
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %and = and i32 %shr, %13
  %eq1_mask = getelementptr inbounds %struct.aux_clk_masks, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %eq1_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eq1_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %15)
  %cmp16 = icmp eq i32 %and, %15
  %spec.select = select i1 %cmp16, i32 2, i32 1
  %yscale_sel_shift = getelementptr inbounds %struct.aux_clk_masks, ptr %9, i32 0, i32 7
  %16 = ptrtoint ptr %yscale_sel_shift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yscale_sel_shift, align 4
  %shr25 = lshr i32 %5, %17
  %yscale_sel_mask = getelementptr inbounds %struct.aux_clk_masks, ptr %9, i32 0, i32 6
  %18 = ptrtoint ptr %yscale_sel_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yscale_sel_mask, align 4
  %and27 = and i32 %shr25, %19
  %mul = mul i32 %and27, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool28.not = icmp eq i32 %mul, 0
  br i1 %tobool28.not, label %if.end13.cleanup_crit_edge, label %if.end30

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %xscale_sel_shift = getelementptr inbounds %struct.aux_clk_masks, ptr %9, i32 0, i32 5
  %20 = ptrtoint ptr %xscale_sel_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xscale_sel_shift, align 4
  %shr21 = lshr i32 %5, %21
  %xscale_sel_mask = getelementptr inbounds %struct.aux_clk_masks, ptr %9, i32 0, i32 4
  %22 = ptrtoint ptr %xscale_sel_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xscale_sel_mask, align 4
  %and23 = and i32 %shr21, %23
  %div = udiv i32 %parent_rate, 10000
  %mul31 = mul i32 %and23, %div
  %div32 = udiv i32 %mul31, %mul
  %mul33 = mul i32 %div32, 10000
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul33, %if.end30 ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_aux_round_rate(ptr noundef %hw, i32 noundef %drate, ptr nocapture noundef readonly %prate) #0 align 64 {
entry:
  %unused = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused) #7
  %0 = ptrtoint ptr %unused to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %unused, align 4, !annotation !24
  %1 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %prate, align 4
  %rtbl_cnt = getelementptr inbounds %struct.clk_aux, ptr %hw, i32 0, i32 4
  %3 = ptrtoint ptr %rtbl_cnt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rtbl_cnt, align 4
  %call = call i32 @clk_round_rate_index(ptr noundef %hw, i32 noundef %drate, i32 noundef %2, ptr noundef nonnull @aux_calc_rate, i8 noundef zeroext %4, ptr noundef nonnull %unused) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_aux_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtbl1 = getelementptr inbounds %struct.clk_aux, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %rtbl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtbl1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #7
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %i, align 4, !annotation !24
  %rtbl_cnt = getelementptr inbounds %struct.clk_aux, ptr %hw, i32 0, i32 4
  %3 = ptrtoint ptr %rtbl_cnt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rtbl_cnt, align 4
  %call = call i32 @clk_round_rate_index(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate, ptr noundef nonnull @aux_calc_rate, i8 noundef zeroext %4, ptr noundef nonnull %i) #7
  %lock = getelementptr inbounds %struct.clk_aux, ptr %hw, i32 0, i32 5
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
  %reg = getelementptr inbounds %struct.clk_aux, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !23
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %masks = getelementptr inbounds %struct.clk_aux, ptr %hw, i32 0, i32 2
  %11 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %masks, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %eq_sel_shift = getelementptr inbounds %struct.aux_clk_masks, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %eq_sel_shift to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %eq_sel_shift, align 4
  %shl = shl i32 %14, %16
  %neg = xor i32 %shl, -1
  %and = and i32 %10, %neg
  %17 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i, align 4
  %arrayidx = getelementptr %struct.aux_rate_tbl, ptr %1, i32 %18
  %eq = getelementptr %struct.aux_rate_tbl, ptr %1, i32 %18, i32 2
  %19 = ptrtoint ptr %eq to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %eq, align 2
  %conv12 = zext i8 %20 to i32
  %and15 = and i32 %14, %conv12
  %shl18 = shl i32 %and15, %16
  %or = or i32 %shl18, %and
  %xscale_sel_mask = getelementptr inbounds %struct.aux_clk_masks, ptr %12, i32 0, i32 4
  %21 = ptrtoint ptr %xscale_sel_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xscale_sel_mask, align 4
  %xscale_sel_shift = getelementptr inbounds %struct.aux_clk_masks, ptr %12, i32 0, i32 5
  %23 = ptrtoint ptr %xscale_sel_shift to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xscale_sel_shift, align 4
  %shl21 = shl i32 %22, %24
  %neg22 = xor i32 %shl21, -1
  %and23 = and i32 %or, %neg22
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx, align 2
  %conv25 = zext i16 %26 to i32
  %and28 = and i32 %22, %conv25
  %shl31 = shl i32 %and28, %24
  %or32 = or i32 %shl31, %and23
  %yscale_sel_mask = getelementptr inbounds %struct.aux_clk_masks, ptr %12, i32 0, i32 6
  %27 = ptrtoint ptr %yscale_sel_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %yscale_sel_mask, align 4
  %yscale_sel_shift = getelementptr inbounds %struct.aux_clk_masks, ptr %12, i32 0, i32 7
  %29 = ptrtoint ptr %yscale_sel_shift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %yscale_sel_shift, align 4
  %shl35 = shl i32 %28, %30
  %neg36 = xor i32 %shl35, -1
  %and37 = and i32 %or32, %neg36
  %yscale = getelementptr %struct.aux_rate_tbl, ptr %1, i32 %18, i32 1
  %31 = ptrtoint ptr %yscale to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %yscale, align 2
  %conv39 = zext i16 %32 to i32
  %and42 = and i32 %28, %conv39
  %shl45 = shl i32 %and42, %30
  %or46 = or i32 %shl45, %and37
  %33 = call i32 @llvm.bswap.i32(i32 %or46)
  %34 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #7, !srcloc !25
  %36 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lock, align 4
  %tobool49.not = icmp eq ptr %37, null
  br i1 %tobool49.not, label %if.end.if.end52_crit_edge, label %if.then50

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then50:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %37, i32 noundef %flags.0) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end.if.end52_crit_edge
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
define internal i32 @aux_calc_rate(ptr nocapture noundef readonly %hw, i32 noundef %prate, i32 noundef %index) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtbl1 = getelementptr inbounds %struct.clk_aux, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %rtbl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtbl1, align 4
  %arrayidx = getelementptr %struct.aux_rate_tbl, ptr %1, i32 %index
  %eq2 = getelementptr %struct.aux_rate_tbl, ptr %1, i32 %index, i32 2
  %2 = ptrtoint ptr %eq2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eq2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %conv3 = select i1 %tobool.not, i32 2, i32 1
  %div = udiv i32 %prate, 10000
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv5 = zext i16 %5 to i32
  %mul = mul i32 %div, %conv5
  %yscale = getelementptr %struct.aux_rate_tbl, ptr %1, i32 %index, i32 1
  %6 = ptrtoint ptr %yscale to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %yscale, align 2
  %conv7 = zext i16 %7 to i32
  %mul9 = mul nuw nsw i32 %conv3, %conv7
  %div10 = udiv i32 %mul, %mul9
  %mul11 = mul i32 %div10, 10000
  ret i32 %mul11
}

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
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/spear/clk-aux-synth.c", i32 147, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @clk_register_aux._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @clk_register_aux._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/spear/clk-aux-synth.c", i32 194, i32 2}
!8 = !{ptr @clk_register_aux._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @clk_register_aux._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @default_aux_masks, !11, !"default_aux_masks", i1 false, i1 false}
!11 = !{!"../drivers/clk/spear/clk-aux-synth.c", i32 32, i32 36}
!12 = !{ptr @clk_aux_ops, !13, !"clk_aux_ops", i1 false, i1 false}
!13 = !{!"../drivers/clk/spear/clk-aux-synth.c", i32 131, i32 29}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 4950324}
!24 = !{!"auto-init"}
!25 = !{i64 4949906}
