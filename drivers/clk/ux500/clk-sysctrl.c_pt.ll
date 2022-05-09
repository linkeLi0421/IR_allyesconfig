; ModuleID = '/llk/IR_all_yes/drivers/clk/ux500/clk-sysctrl.c_pt.bc'
source_filename = "../drivers/clk/ux500/clk-sysctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_sysctrl = type { %struct.clk_hw, ptr, i8, [4 x i16], [4 x i8], [4 x i8], i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_sysctrl_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_sysctrl_prepare, ptr @clk_sysctrl_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_sysctrl_gate_fixed_rate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_sysctrl_prepare, ptr @clk_sysctrl_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_sysctrl_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_sysctrl_set_parent_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_sysctrl_set_parent, ptr @clk_sysctrl_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_reg_sysctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 138, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"clk_sysctrl: invalid arguments passed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_reg_sysctrl\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/ux500/clk-sysctrl.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@clk_reg_sysctrl._entry_ptr = internal global ptr @clk_reg_sysctrl._entry, section ".printk_index", align 4
@clk_reg_sysctrl._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 172, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clk_sysctrl: clk_register failed\0A\00", [62 x i8] zeroinitializer }, align 32
@clk_reg_sysctrl._entry_ptr.7 = internal global ptr @clk_reg_sysctrl._entry.5, section ".printk_index", align 4
@clk_sysctrl_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 55, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"clk_sysctrl: %s fail to clear %s.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clk_sysctrl_unprepare\00", [42 x i8] zeroinitializer }, align 32
@clk_sysctrl_unprepare._entry_ptr = internal global ptr @clk_sysctrl_unprepare._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"clk_sysctrl_gate_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 101, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant [32 x i8] c"clk_sysctrl_gate_fixed_rate_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 106, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant [27 x i8] c"clk_sysctrl_set_parent_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 112, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 138, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 172, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [35 x i8] c"../drivers/clk/ux500/clk-sysctrl.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 54, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @clk_reg_sysctrl._entry, ptr @clk_reg_sysctrl._entry.5, ptr @clk_reg_sysctrl._entry_ptr, ptr @clk_reg_sysctrl._entry_ptr.7, ptr @clk_sysctrl_unprepare._entry, ptr @clk_sysctrl_unprepare._entry_ptr, ptr @clk_sysctrl_gate_ops, ptr @clk_sysctrl_gate_fixed_rate_ops, ptr @clk_sysctrl_set_parent_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_sysctrl_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_sysctrl_gate_fixed_rate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_sysctrl_set_parent_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_reg_sysctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_reg_sysctrl._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_sysctrl_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_reg_sysctrl_gate(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, i16 noundef zeroext %reg_sel, i8 noundef zeroext %reg_mask, i8 noundef zeroext %reg_bits, i32 noundef %enable_delay_us, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %reg_sel.addr = alloca i16, align 2
  %reg_mask.addr = alloca i8, align 1
  %reg_bits.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  %1 = ptrtoint ptr %reg_sel.addr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %reg_sel, ptr %reg_sel.addr, align 2
  %2 = ptrtoint ptr %reg_mask.addr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %reg_mask, ptr %reg_mask.addr, align 1
  %3 = ptrtoint ptr %reg_bits.addr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %reg_bits, ptr %reg_bits.addr, align 1
  %tobool.not = icmp eq ptr %parent_name, null
  %parent_name.addr. = select i1 %tobool.not, ptr null, ptr %parent_name.addr
  %not.tobool.not = xor i1 %tobool.not, true
  %conv = zext i1 %not.tobool.not to i8
  %call = call fastcc ptr @clk_reg_sysctrl(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name.addr., i8 noundef zeroext %conv, ptr noundef nonnull %reg_sel.addr, ptr noundef nonnull %reg_mask.addr, ptr noundef nonnull %reg_bits.addr, i32 noundef 0, i32 noundef %enable_delay_us, i32 noundef %flags, ptr noundef nonnull @clk_sysctrl_gate_ops)
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @clk_reg_sysctrl(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, ptr nocapture noundef readonly %reg_sel, ptr nocapture noundef readonly %reg_mask, ptr nocapture noundef readonly %reg_bits, i32 noundef %rate, i32 noundef %enable_delay_us, i32 noundef %flags, ptr noundef %clk_sysctrl_ops) unnamed_addr #0 align 64 {
entry:
  %clk_sysctrl_init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %clk_sysctrl_init) #5
  %0 = getelementptr inbounds i8, ptr %clk_sysctrl_init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %name, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %num_parents)
  %cmp = icmp ugt i8 %num_parents, 4
  %or.cond = or i1 %tobool1.not, %cmp
  br i1 %or.cond, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev, i32 noundef 44, i32 noundef 3520) #5
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %2 = ptrtoint ptr %reg_sel to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg_sel, align 2
  %reg_sel11 = getelementptr inbounds %struct.clk_sysctrl, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %reg_sel11 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %reg_sel11, align 2
  %5 = ptrtoint ptr %reg_bits to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_bits, align 1
  %reg_bits14 = getelementptr inbounds %struct.clk_sysctrl, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %reg_bits14 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %reg_bits14, align 2
  %8 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_mask, align 1
  %reg_mask17 = getelementptr inbounds %struct.clk_sysctrl, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %reg_mask17 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %reg_mask17, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %num_parents)
  %cmp2081 = icmp ugt i8 %num_parents, 1
  br i1 %cmp2081, label %for.body, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end10
  %arrayidx22 = getelementptr i16, ptr %reg_sel, i32 1
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx22, align 2
  %arrayidx24 = getelementptr %struct.clk_sysctrl, ptr %call.i, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayidx24, align 2
  %arrayidx25 = getelementptr i8, ptr %reg_bits, i32 1
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25, align 1
  %arrayidx27 = getelementptr %struct.clk_sysctrl, ptr %call.i, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx27, align 1
  %arrayidx28 = getelementptr i8, ptr %reg_mask, i32 1
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx28, align 1
  %arrayidx30 = getelementptr %struct.clk_sysctrl, ptr %call.i, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %num_parents)
  %exitcond.not = icmp eq i8 %num_parents, 2
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %arrayidx22.1 = getelementptr i16, ptr %reg_sel, i32 2
  %20 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx22.1, align 2
  %arrayidx24.1 = getelementptr %struct.clk_sysctrl, ptr %call.i, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx24.1, align 2
  %arrayidx25.1 = getelementptr i8, ptr %reg_bits, i32 2
  %23 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx25.1, align 1
  %arrayidx27.1 = getelementptr %struct.clk_sysctrl, ptr %call.i, i32 0, i32 5, i32 2
  %25 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx27.1, align 1
  %arrayidx28.1 = getelementptr i8, ptr %reg_mask, i32 2
  %26 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx28.1, align 1
  %arrayidx30.1 = getelementptr %struct.clk_sysctrl, ptr %call.i, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx30.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %num_parents)
  %exitcond.not.1 = icmp eq i8 %num_parents, 3
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx22.2 = getelementptr i16, ptr %reg_sel, i32 3
  %29 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx22.2, align 2
  %arrayidx24.2 = getelementptr %struct.clk_sysctrl, ptr %call.i, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %arrayidx24.2, align 2
  %arrayidx25.2 = getelementptr i8, ptr %reg_bits, i32 3
  %32 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx25.2, align 1
  %arrayidx27.2 = getelementptr %struct.clk_sysctrl, ptr %call.i, i32 0, i32 5, i32 3
  %34 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx27.2, align 1
  %arrayidx28.2 = getelementptr i8, ptr %reg_mask, i32 3
  %35 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx28.2, align 1
  %arrayidx30.2 = getelementptr %struct.clk_sysctrl, ptr %call.i, i32 0, i32 4, i32 3
  %37 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx30.2, align 1
  br label %for.end

for.end:                                          ; preds = %for.body.2, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  %parent_index = getelementptr inbounds %struct.clk_sysctrl, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %parent_index to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %parent_index, align 4
  %rate31 = getelementptr inbounds %struct.clk_sysctrl, ptr %call.i, i32 0, i32 6
  %39 = ptrtoint ptr %rate31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %rate, ptr %rate31, align 4
  %enable_delay_us32 = getelementptr inbounds %struct.clk_sysctrl, ptr %call.i, i32 0, i32 7
  %40 = ptrtoint ptr %enable_delay_us32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %enable_delay_us, ptr %enable_delay_us32, align 4
  %dev33 = getelementptr inbounds %struct.clk_sysctrl, ptr %call.i, i32 0, i32 1
  %41 = ptrtoint ptr %dev33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev, ptr %dev33, align 4
  %42 = ptrtoint ptr %clk_sysctrl_init to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %name, ptr %clk_sysctrl_init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %clk_sysctrl_init, i32 0, i32 1
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %clk_sysctrl_ops, ptr %ops, align 4
  %flags35 = getelementptr inbounds %struct.clk_init_data, ptr %clk_sysctrl_init, i32 0, i32 6
  %44 = ptrtoint ptr %flags35 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %flags, ptr %flags35, align 4
  %parent_names36 = getelementptr inbounds %struct.clk_init_data, ptr %clk_sysctrl_init, i32 0, i32 2
  %45 = ptrtoint ptr %parent_names36 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %parent_names, ptr %parent_names36, align 4
  %num_parents37 = getelementptr inbounds %struct.clk_init_data, ptr %clk_sysctrl_init, i32 0, i32 5
  %46 = ptrtoint ptr %num_parents37 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %num_parents, ptr %num_parents37, align 4
  %init = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %47 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %clk_sysctrl_init, ptr %init, align 4
  %call40 = call ptr @devm_clk_register(ptr noundef nonnull %dev, ptr noundef nonnull %call.i) #5
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end45, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end45:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.6) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %for.end.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call40, %do.end45 ], [ %call40, %for.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %clk_sysctrl_init) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_reg_sysctrl_gate_fixed_rate(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, i16 noundef zeroext %reg_sel, i8 noundef zeroext %reg_mask, i8 noundef zeroext %reg_bits, i32 noundef %rate, i32 noundef %enable_delay_us, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %reg_sel.addr = alloca i16, align 2
  %reg_mask.addr = alloca i8, align 1
  %reg_bits.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  %1 = ptrtoint ptr %reg_sel.addr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %reg_sel, ptr %reg_sel.addr, align 2
  %2 = ptrtoint ptr %reg_mask.addr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %reg_mask, ptr %reg_mask.addr, align 1
  %3 = ptrtoint ptr %reg_bits.addr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %reg_bits, ptr %reg_bits.addr, align 1
  %tobool.not = icmp eq ptr %parent_name, null
  %parent_name.addr. = select i1 %tobool.not, ptr null, ptr %parent_name.addr
  %not.tobool.not = xor i1 %tobool.not, true
  %conv = zext i1 %not.tobool.not to i8
  %call = call fastcc ptr @clk_reg_sysctrl(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name.addr., i8 noundef zeroext %conv, ptr noundef nonnull %reg_sel.addr, ptr noundef nonnull %reg_mask.addr, ptr noundef nonnull %reg_bits.addr, i32 noundef %rate, i32 noundef %enable_delay_us, i32 noundef %flags, ptr noundef nonnull @clk_sysctrl_gate_fixed_rate_ops)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_reg_sysctrl_set_parent(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, ptr nocapture noundef readonly %reg_sel, ptr nocapture noundef readonly %reg_mask, ptr nocapture noundef readonly %reg_bits, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @clk_reg_sysctrl(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, ptr noundef %reg_sel, ptr noundef %reg_mask, ptr noundef %reg_bits, i32 noundef 0, i32 noundef 0, i32 noundef %flags, ptr noundef nonnull @clk_sysctrl_set_parent_ops)
  ret ptr %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sysctrl_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_sel = getelementptr inbounds %struct.clk_sysctrl, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %reg_sel to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %reg_sel, align 2
  %reg_mask = getelementptr inbounds %struct.clk_sysctrl, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_mask, align 2
  %reg_bits = getelementptr inbounds %struct.clk_sysctrl, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %reg_bits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_bits, align 2
  %call = tail call i32 @ab8500_sysctrl_write(i16 noundef zeroext %1, i8 noundef zeroext %3, i8 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %enable_delay_us = getelementptr inbounds %struct.clk_sysctrl, ptr %hw, i32 0, i32 7
  %6 = ptrtoint ptr %enable_delay_us to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_delay_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %shr = lshr i32 %7, 2
  %add = add i32 %shr, %7
  tail call void @usleep_range_state(i32 noundef %7, i32 noundef %add, i32 noundef 2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_sysctrl_unprepare(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_sel = getelementptr inbounds %struct.clk_sysctrl, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %reg_sel to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %reg_sel, align 2
  %reg_mask = getelementptr inbounds %struct.clk_sysctrl, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_mask, align 2
  %call.i = tail call i32 @ab8500_sysctrl_write(i16 noundef zeroext %1, i8 noundef zeroext %3, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.clk_sysctrl, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %call2) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ab8500_sysctrl_write(i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_sysctrl_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rate = getelementptr inbounds %struct.clk_sysctrl, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sysctrl_set_parent(ptr nocapture noundef %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_index = getelementptr inbounds %struct.clk_sysctrl, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %parent_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %parent_index, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.clk_sysctrl, ptr %hw, i32 0, i32 3, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  %arrayidx5 = getelementptr %struct.clk_sysctrl, ptr %hw, i32 0, i32 4, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %call.i = tail call i32 @ab8500_sysctrl_write(i16 noundef zeroext %3, i8 noundef zeroext %5, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.then.if.end8_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %idxprom10 = zext i8 %index to i32
  %arrayidx11 = getelementptr %struct.clk_sysctrl, ptr %hw, i32 0, i32 3, i32 %idxprom10
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool12.not = icmp eq i16 %7, 0
  br i1 %tobool12.not, label %if.end8.if.end42_crit_edge, label %if.then13

if.end8.if.end42_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then13:                                        ; preds = %if.end8
  %arrayidx19 = getelementptr %struct.clk_sysctrl, ptr %hw, i32 0, i32 4, i32 %idxprom10
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx19, align 1
  %arrayidx21 = getelementptr %struct.clk_sysctrl, ptr %hw, i32 0, i32 5, i32 %idxprom10
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx21, align 1
  %call22 = tail call i32 @ab8500_sysctrl_write(i16 noundef zeroext %7, i8 noundef zeroext %9, i8 noundef zeroext %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then13.if.end42_crit_edge, label %if.then24

if.then13.if.end42_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then24:                                        ; preds = %if.then13
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool28.not = icmp eq i16 %13, 0
  br i1 %tobool28.not, label %if.then24.cleanup_crit_edge, label %if.then29

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx35 = getelementptr %struct.clk_sysctrl, ptr %hw, i32 0, i32 4, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx35, align 1
  %arrayidx38 = getelementptr %struct.clk_sysctrl, ptr %hw, i32 0, i32 5, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx38, align 1
  %call39 = tail call i32 @ab8500_sysctrl_write(i16 noundef zeroext %13, i8 noundef zeroext %15, i8 noundef zeroext %17) #5
  br label %cleanup

if.end42:                                         ; preds = %if.then13.if.end42_crit_edge, %if.end8.if.end42_crit_edge
  %18 = ptrtoint ptr %parent_index to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %index, ptr %parent_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then29, %if.then24.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42 ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call22, %if.then29 ], [ %call22, %if.then24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @clk_sysctrl_get_parent(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_index = getelementptr inbounds %struct.clk_sysctrl, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %parent_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %parent_index, align 4
  ret i8 %1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/ux500/clk-sysctrl.c", i32 138, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @clk_reg_sysctrl._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @clk_reg_sysctrl._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/ux500/clk-sysctrl.c", i32 172, i32 3}
!10 = !{ptr @clk_reg_sysctrl._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @clk_reg_sysctrl._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @clk_sysctrl_gate_ops, !13, !"clk_sysctrl_gate_ops", i1 false, i1 false}
!13 = !{!"../drivers/clk/ux500/clk-sysctrl.c", i32 101, i32 29}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/ux500/clk-sysctrl.c", i32 54, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @clk_sysctrl_unprepare._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @clk_sysctrl_unprepare._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @clk_sysctrl_gate_fixed_rate_ops, !20, !"clk_sysctrl_gate_fixed_rate_ops", i1 false, i1 false}
!20 = !{!"../drivers/clk/ux500/clk-sysctrl.c", i32 106, i32 29}
!21 = !{ptr @clk_sysctrl_set_parent_ops, !22, !"clk_sysctrl_set_parent_ops", i1 false, i1 false}
!22 = !{!"../drivers/clk/ux500/clk-sysctrl.c", i32 112, i32 29}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
