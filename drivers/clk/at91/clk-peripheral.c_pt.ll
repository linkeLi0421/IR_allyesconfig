; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/clk-peripheral.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-peripheral.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_peripheral = type { %struct.clk_hw, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_sam9x5_peripheral = type { %struct.clk_hw, ptr, %struct.clk_range, ptr, i32, i32, ptr, %struct.at91_clk_pms, i8, i32 }
%struct.clk_range = type { i32, i32 }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.clk_pcr_layout = type { i32, i32, i32, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pmc_pcr_lock\00", [19 x i8] zeroinitializer }, align 32
@pmc_pcr_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@peripheral_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_peripheral_enable, ptr @clk_peripheral_disable, ptr @clk_peripheral_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sam9x5_peripheral_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_sam9x5_peripheral_enable, ptr @clk_sam9x5_peripheral_disable, ptr @clk_sam9x5_peripheral_is_enabled, ptr null, ptr @clk_sam9x5_peripheral_save_context, ptr @clk_sam9x5_peripheral_restore_context, ptr @clk_sam9x5_peripheral_recalc_rate, ptr @clk_sam9x5_peripheral_round_rate, ptr null, ptr null, ptr null, ptr @clk_sam9x5_peripheral_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sam9x5_peripheral_chg_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_sam9x5_peripheral_enable, ptr @clk_sam9x5_peripheral_disable, ptr @clk_sam9x5_peripheral_is_enabled, ptr null, ptr @clk_sam9x5_peripheral_save_context, ptr @clk_sam9x5_peripheral_restore_context, ptr @clk_sam9x5_peripheral_recalc_rate, ptr null, ptr @clk_sam9x5_peripheral_determine_rate, ptr null, ptr null, ptr @clk_sam9x5_peripheral_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clk_sam9x5_peripheral_determine_rate.__UNIQUE_ID_ddebug167 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_peripheral\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"clk_sam9x5_peripheral_determine_rate\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/at91/clk-peripheral.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PCK: %s, best_rate = %ld, parent clk: %s @ %ld\0A\00", [48 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"pmc_pcr_lock\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 16, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"peripheral_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 92, i32 29 }
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"sam9x5_peripheral_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 421, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [26 x i8] c"sam9x5_peripheral_chg_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 432, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [37 x i8] c"../drivers/clk/at91/clk-peripheral.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 321, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @pmc_pcr_lock, ptr @peripheral_ops, ptr @sam9x5_peripheral_ops, ptr @sam9x5_peripheral_chg_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc_pcr_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peripheral_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x5_peripheral_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x5_peripheral_chg_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_peripheral(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_name, i32 noundef %id) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tobool1.not = icmp eq ptr %parent_name, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %id)
  %cmp = icmp ugt i32 %id, 31
  %or.cond = or i1 %tobool1.not, %cmp
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 20) #11
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @peripheral_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags, align 4
  %id9 = getelementptr inbounds %struct.clk_peripheral, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %id9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %id, ptr %id9, align 8
  %init11 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %init11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %init, ptr %init11, align 8
  %regmap12 = getelementptr inbounds %struct.clk_peripheral, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %regmap12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %regmap, ptr %regmap12, align 4
  %call15 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end7.cleanup_crit_edge, label %if.then17

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %12 = inttoptr i32 %call15 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %if.then17 ], [ %call7.i.i, %if.end7.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_sam9x5_peripheral(ptr noundef %regmap, ptr noundef %lock, ptr noundef %layout, ptr noundef %name, ptr noundef %parent_name, i32 noundef %id, ptr nocapture noundef readonly %range, i32 noundef %chg_pid) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  %tobool.not = icmp eq ptr %name, null
  %tobool1.not = icmp eq ptr %parent_name, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #11
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %5 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %6 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %num_parents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chg_pid)
  %cmp = icmp slt i32 %chg_pid, 0
  %spec.select = select i1 %cmp, i32 0, i32 7
  %spec.select51 = select i1 %cmp, ptr @sam9x5_peripheral_ops, ptr @sam9x5_peripheral_chg_ops
  %7 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %spec.select51, ptr %9, align 4
  %id12 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %id12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %id, ptr %id12, align 4
  %init14 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %init14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %init, ptr %init14, align 8
  %div = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %div, align 8
  %regmap15 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %regmap15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %regmap, ptr %regmap15, align 4
  %lock16 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %lock16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %lock, ptr %lock16, align 8
  %div_mask = getelementptr inbounds %struct.clk_pcr_layout, ptr %layout, i32 0, i32 2
  %16 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %div_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool17.not = icmp eq i32 %17, 0
  br i1 %tobool17.not, label %if.end6.if.end19_crit_edge, label %if.then18

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %auto_div = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %call7.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %auto_div to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %auto_div, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end6.if.end19_crit_edge
  %layout20 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %call7.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %layout20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %layout, ptr %layout20, align 4
  %range21 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %range to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %range, align 4
  %22 = ptrtoint ptr %range21 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %range21, align 8
  %chg_pid22 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %call7.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %chg_pid22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %chg_pid, ptr %chg_pid22, align 4
  %call25 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %24 = inttoptr i32 %call25 to ptr
  br label %cleanup

if.else29:                                        ; preds = %if.end19
  %auto_div.i = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %call7.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %auto_div.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %auto_div.i, align 8, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.else29.cleanup_crit_edge, label %if.end.i

if.else29.cleanup_crit_edge:                      ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.else29
  %max.i = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %call7.i.i, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool1.not.i = icmp eq i32 %28, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then2.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then2.i:                                       ; preds = %if.end.i
  %call.i = call ptr @clk_hw_get_parent_by_index(ptr noundef nonnull %call7.i.i, i32 noundef 0) #8
  %call3.i = call i32 @clk_hw_get_rate(ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.cleanup_crit_edge, label %for.cond.preheader.i

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then2.i
  %29 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %30)
  %cmp9.not.i = icmp ugt i32 %call3.i, %30
  br i1 %cmp9.not.i, label %for.inc.i, label %for.cond.preheader.i.if.end12.i_crit_edge

for.cond.preheader.i.if.end12.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

for.inc.i:                                        ; preds = %for.cond.preheader.i
  %shr.1.i = lshr i32 %call3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %30)
  %cmp9.not.1.i = icmp ugt i32 %shr.1.i, %30
  br i1 %cmp9.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end12.i_crit_edge

for.inc.i.if.end12.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.2.i = lshr i32 %call3.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %30)
  %cmp9.not.2.i = icmp ugt i32 %shr.2.i, %30
  %spec.select.i = select i1 %cmp9.not.2.i, i32 3, i32 2
  br label %if.end12.i

if.end12.i:                                       ; preds = %for.inc.1.i, %for.inc.i.if.end12.i_crit_edge, %for.cond.preheader.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %shift.1.i = phi i32 [ 0, %if.end.i.if.end12.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end12.i_crit_edge ], [ 1, %for.inc.i.if.end12.i_crit_edge ], [ %spec.select.i, %for.inc.1.i ]
  %31 = ptrtoint ptr %auto_div.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %auto_div.i, align 8
  %32 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shift.1.i, ptr %div, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i, %if.then2.i.cleanup_crit_edge, %if.else29.cleanup_crit_edge, %if.then27, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %24, %if.then27 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call7.i.i, %if.else29.cleanup_crit_edge ], [ %call7.i.i, %if.then2.i.cleanup_crit_edge ], [ %call7.i.i, %if.end12.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_peripheral_enable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.clk_peripheral, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp2 = icmp ugt i32 %1, 31
  %spec.select = select i1 %cmp2, i32 256, i32 16
  %regmap = getelementptr inbounds %struct.clk_peripheral, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %and = and i32 %1, 31
  %shl = shl nuw i32 1, %and
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %spec.select, i32 noundef %shl) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_peripheral_disable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.clk_peripheral, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp2 = icmp ugt i32 %1, 31
  %spec.select = select i1 %cmp2, i32 260, i32 20
  %regmap = getelementptr inbounds %struct.clk_peripheral, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %and = and i32 %1, 31
  %shl = shl nuw i32 1, %and
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %spec.select, i32 noundef %shl) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_peripheral_is_enabled(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !25
  %id1 = getelementptr inbounds %struct.clk_peripheral, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ult i32 %2, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %2)
  %cmp2 = icmp ugt i32 %2, 31
  %spec.select = select i1 %cmp2, i32 264, i32 24
  %regmap = getelementptr inbounds %struct.clk_peripheral, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %spec.select, ptr noundef nonnull %status) #8
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = and i32 %2, 31
  %7 = lshr i32 %6, %and
  %8 = and i32 %7, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_peripheral_enable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @clk_sam9x5_peripheral_set(ptr noundef %hw)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_sam9x5_peripheral_disable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %regmap = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %layout = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 6
  %6 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layout, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %pid_mask = getelementptr inbounds %struct.clk_pcr_layout, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %pid_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid_mask, align 4
  %and = and i32 %13, %11
  %call9 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %9, i32 noundef %and) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %16 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %layout, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %cmd = getelementptr inbounds %struct.clk_pcr_layout, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd, align 4
  %or = or i32 %21, 268435456
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %19, i32 noundef %or, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %22 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_peripheral_is_enabled(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !25
  %id = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ult i32 %2, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %regmap = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %layout = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 6
  %7 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %layout, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %pid_mask = getelementptr inbounds %struct.clk_pcr_layout, ptr %8, i32 0, i32 4
  %13 = ptrtoint ptr %pid_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid_mask, align 4
  %and = and i32 %14, %12
  %call9 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %10, i32 noundef %and) #8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %layout, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %call13 = call i32 @regmap_read(ptr noundef %16, i32 noundef %20, ptr noundef nonnull %status) #8
  %21 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %call4) #8
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %and15 = lshr i32 %24, 28
  %and15.lobit = and i32 %and15, 1
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and15.lobit, %do.body1 ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_peripheral_save_context(ptr nocapture noundef %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_sam9x5_peripheral_is_enabled(ptr noundef %hw)
  %status = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_sam9x5_peripheral_restore_context(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @clk_sam9x5_peripheral_set(ptr noundef %hw)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_peripheral_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !25
  %id = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ult i32 %2, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %regmap = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %layout = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 6
  %7 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %layout, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %pid_mask = getelementptr inbounds %struct.clk_pcr_layout, ptr %8, i32 0, i32 4
  %13 = ptrtoint ptr %pid_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid_mask, align 4
  %and = and i32 %14, %12
  %call9 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %10, i32 noundef %and) #8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %layout, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %call13 = call i32 @regmap_read(ptr noundef %16, i32 noundef %20, ptr noundef nonnull %status) #8
  %21 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %call4) #8
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %and15 = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %layout, align 4
  %div_mask = getelementptr inbounds %struct.clk_pcr_layout, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %div_mask, align 4
  %and18 = and i32 %28, %24
  %29 = call i32 @llvm.cttz.i32(i32 %28, i1 true), !range !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %iszero = icmp eq i32 %28, 0
  %sub = select i1 %iszero, i32 -1, i32 %29
  %shr = lshr i32 %and18, %sub
  %div = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 5
  %30 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr, ptr %div, align 4
  %auto_div = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 8
  %31 = ptrtoint ptr %auto_div to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %auto_div, align 4
  br label %if.end21

if.else:                                          ; preds = %do.body1
  %auto_div.i = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 8
  %32 = ptrtoint ptr %auto_div.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %auto_div.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.else.if.end21_crit_edge, label %if.end.i

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end.i:                                         ; preds = %if.else
  %max.i = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool1.not.i = icmp eq i32 %35, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then2.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then2.i:                                       ; preds = %if.end.i
  %call.i = call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef 0) #8
  %call3.i = call i32 @clk_hw_get_rate(ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.if.end21_crit_edge, label %for.cond.preheader.i

if.then2.i.if.end21_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.cond.preheader.i:                             ; preds = %if.then2.i
  %36 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %37)
  %cmp9.not.i = icmp ugt i32 %call3.i, %37
  br i1 %cmp9.not.i, label %for.inc.i, label %for.cond.preheader.i.if.end12.i_crit_edge

for.cond.preheader.i.if.end12.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

for.inc.i:                                        ; preds = %for.cond.preheader.i
  %shr.1.i = lshr i32 %call3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %37)
  %cmp9.not.1.i = icmp ugt i32 %shr.1.i, %37
  br i1 %cmp9.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end12.i_crit_edge

for.inc.i.if.end12.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.2.i = lshr i32 %call3.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %37)
  %cmp9.not.2.i = icmp ugt i32 %shr.2.i, %37
  %spec.select.i = select i1 %cmp9.not.2.i, i32 3, i32 2
  br label %if.end12.i

if.end12.i:                                       ; preds = %for.inc.1.i, %for.inc.i.if.end12.i_crit_edge, %for.cond.preheader.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %shift.1.i = phi i32 [ 0, %if.end.i.if.end12.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end12.i_crit_edge ], [ 1, %for.inc.i.if.end12.i_crit_edge ], [ %spec.select.i, %for.inc.1.i ]
  %38 = ptrtoint ptr %auto_div.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %auto_div.i, align 4
  %div.i = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 5
  %39 = ptrtoint ptr %div.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shift.1.i, ptr %div.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end12.i, %if.then2.i.if.end21_crit_edge, %if.else.if.end21_crit_edge, %if.then16
  %div22 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 5
  %40 = ptrtoint ptr %div22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %div22, align 4
  %shr23 = lshr i32 %parent_rate, %41
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr23, %if.end21 ], [ %parent_rate, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_peripheral_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %id = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %for.body.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp8.not = icmp ugt i32 %1, %5
  br i1 %cmp8.not, label %for.inc, label %for.body.preheader.if.end11_crit_edge

for.body.preheader.if.end11_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

for.inc:                                          ; preds = %for.body.preheader
  %shr.1 = lshr i32 %1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1, i32 %5)
  %cmp8.not.1 = icmp ugt i32 %shr.1, %5
  br i1 %cmp8.not.1, label %for.inc.1, label %for.inc.if.end11_crit_edge

for.inc.if.end11_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

for.inc.1:                                        ; preds = %for.inc
  %shr.2 = lshr i32 %1, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2, i32 %5)
  %cmp8.not.2 = icmp ugt i32 %shr.2, %5
  br i1 %cmp8.not.2, label %for.inc.2, label %for.inc.1.if.end11_crit_edge

for.inc.1.if.end11_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

for.inc.2:                                        ; preds = %for.inc.1
  %shr.3 = lshr i32 %1, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3, i32 %5)
  %cmp8.not.3 = icmp ugt i32 %shr.3, %5
  br i1 %cmp8.not.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.2.if.end11_crit_edge

for.inc.2.if.end11_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %for.inc.2.if.end11_crit_edge, %for.inc.1.if.end11_crit_edge, %for.inc.if.end11_crit_edge, %for.body.preheader.if.end11_crit_edge
  %shr.lcssa = phi i32 [ %1, %for.body.preheader.if.end11_crit_edge ], [ %shr.1, %for.inc.if.end11_crit_edge ], [ %shr.2, %for.inc.1.if.end11_crit_edge ], [ %shr.3, %for.inc.2.if.end11_crit_edge ]
  %shift.0.lcssa = phi i32 [ 0, %for.body.preheader.if.end11_crit_edge ], [ 1, %for.inc.if.end11_crit_edge ], [ 2, %for.inc.1.if.end11_crit_edge ], [ 3, %for.inc.2.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.lcssa, i32 %rate)
  %cmp12.not = icmp ugt i32 %shr.lcssa, %rate
  br i1 %cmp12.not, label %for.body17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body17:                                       ; preds = %if.end11
  %sub = sub i32 %shr.lcssa, %rate
  %shr18 = lshr i32 %1, %shift.0.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %shr18, i32 %rate)
  %cmp19 = icmp ult i32 %shr18, %rate
  %sub21 = sub i32 %rate, %shr18
  %sub22 = sub i32 %shr18, %rate
  %cur_diff.0 = select i1 %cmp19, i32 %sub21, i32 %sub22
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_diff.0, i32 %sub)
  %cmp24 = icmp ult i32 %cur_diff.0, %sub
  %best_rate.1 = select i1 %cmp24, i32 %shr18, i32 %shr.lcssa
  %6 = tail call i32 @llvm.umin.i32(i32 %cur_diff.0, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool27.not = icmp eq i32 %6, 0
  %brmerge = select i1 %tobool27.not, i1 true, i1 %cmp19
  %inc33 = add nuw nsw i32 %shift.0.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc33)
  %exitcond.not = icmp eq i32 %inc33, 4
  %or.cond = select i1 %brmerge, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.body17.cleanup_crit_edge, label %for.body17.1

for.body17.cleanup_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body17.1:                                     ; preds = %for.body17
  %shr18.1 = lshr i32 %1, %inc33
  call void @__sanitizer_cov_trace_cmp4(i32 %shr18.1, i32 %rate)
  %cmp19.1 = icmp ult i32 %shr18.1, %rate
  %sub21.1 = sub i32 %rate, %shr18.1
  %sub22.1 = sub i32 %shr18.1, %rate
  %cur_diff.0.1 = select i1 %cmp19.1, i32 %sub21.1, i32 %sub22.1
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_diff.0.1, i32 %6)
  %cmp24.1 = icmp ult i32 %cur_diff.0.1, %6
  %best_rate.1.1 = select i1 %cmp24.1, i32 %shr18.1, i32 %best_rate.1
  %7 = tail call i32 @llvm.umin.i32(i32 %cur_diff.0.1, i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool27.not.1 = icmp eq i32 %7, 0
  %brmerge.1 = select i1 %tobool27.not.1, i1 true, i1 %cmp19.1
  %inc33.1 = add nuw nsw i32 %shift.0.lcssa, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc33.1)
  %exitcond.not.1 = icmp eq i32 %inc33.1, 4
  %or.cond.1 = select i1 %brmerge.1, i1 true, i1 %exitcond.not.1
  br i1 %or.cond.1, label %for.body17.1.cleanup_crit_edge, label %for.body17.2

for.body17.1.cleanup_crit_edge:                   ; preds = %for.body17.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body17.2:                                     ; preds = %for.body17.1
  %shr18.2 = lshr i32 %1, %inc33.1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr18.2, i32 %rate)
  %cmp19.2 = icmp ult i32 %shr18.2, %rate
  %sub21.2 = sub i32 %rate, %shr18.2
  %sub22.2 = sub i32 %shr18.2, %rate
  %cur_diff.0.2 = select i1 %cmp19.2, i32 %sub21.2, i32 %sub22.2
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_diff.0.2, i32 %7)
  %cmp24.2 = icmp ult i32 %cur_diff.0.2, %7
  %best_rate.1.2 = select i1 %cmp24.2, i32 %shr18.2, i32 %best_rate.1.1
  %8 = tail call i32 @llvm.umin.i32(i32 %cur_diff.0.2, i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool27.not.2 = icmp eq i32 %8, 0
  %brmerge.2 = select i1 %tobool27.not.2, i1 true, i1 %cmp19.2
  %inc33.2 = add nuw nsw i32 %shift.0.lcssa, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc33.2)
  %exitcond.not.2 = icmp eq i32 %inc33.2, 4
  %or.cond.2 = select i1 %brmerge.2, i1 true, i1 %exitcond.not.2
  br i1 %or.cond.2, label %for.body17.2.cleanup_crit_edge, label %for.body17.3

for.body17.2.cleanup_crit_edge:                   ; preds = %for.body17.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body17.3:                                     ; preds = %for.body17.2
  call void @__sanitizer_cov_trace_pc() #10
  %shr18.3 = lshr i32 %1, %inc33.2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr18.3, i32 %rate)
  %cmp19.3 = icmp ult i32 %shr18.3, %rate
  %sub21.3 = sub i32 %rate, %shr18.3
  %sub22.3 = sub i32 %shr18.3, %rate
  %cur_diff.0.3 = select i1 %cmp19.3, i32 %sub21.3, i32 %sub22.3
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_diff.0.3, i32 %8)
  %cmp24.3 = icmp ult i32 %cur_diff.0.3, %8
  %best_rate.1.3 = select i1 %cmp24.3, i32 %shr18.3, i32 %best_rate.1.2
  br label %cleanup

cleanup:                                          ; preds = %for.body17.3, %for.body17.2.cleanup_crit_edge, %for.body17.1.cleanup_crit_edge, %for.body17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr.lcssa, %if.end11.cleanup_crit_edge ], [ %1, %lor.lhs.false.cleanup_crit_edge ], [ %1, %entry.cleanup_crit_edge ], [ %shr.3, %for.inc.2.cleanup_crit_edge ], [ %best_rate.1, %for.body17.cleanup_crit_edge ], [ %best_rate.1.1, %for.body17.1.cleanup_crit_edge ], [ %best_rate.1.2, %for.body17.2.cleanup_crit_edge ], [ %best_rate.1.3, %for.body17.3 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_peripheral_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %max = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %land.lhs.true

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %parent_rate, i32 %rate)
  %cmp1 = icmp eq i32 %parent_rate, %rate
  %. = select i1 %cmp1, i32 0, i32 -22
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rate)
  %cmp8 = icmp ult i32 %3, %rate
  br i1 %cmp8, label %land.lhs.true.cleanup_crit_edge, label %for.body.preheader

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %parent_rate, i32 %rate)
  %cmp12 = icmp eq i32 %parent_rate, %rate
  br i1 %cmp12, label %for.body.preheader.if.then13_crit_edge, label %for.inc

for.body.preheader.if.then13_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %for.inc.2.if.then13_crit_edge, %for.inc.1.if.then13_crit_edge, %for.inc.if.then13_crit_edge, %for.body.preheader.if.then13_crit_edge
  %shift.028.lcssa = phi i32 [ 0, %for.body.preheader.if.then13_crit_edge ], [ 1, %for.inc.if.then13_crit_edge ], [ 2, %for.inc.1.if.then13_crit_edge ], [ 3, %for.inc.2.if.then13_crit_edge ]
  %auto_div = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 8
  %4 = ptrtoint ptr %auto_div to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %auto_div, align 4
  %div = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 5
  %5 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shift.028.lcssa, ptr %div, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %shr.1 = lshr i32 %parent_rate, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1, i32 %rate)
  %cmp12.1 = icmp eq i32 %shr.1, %rate
  br i1 %cmp12.1, label %for.inc.if.then13_crit_edge, label %for.inc.1

for.inc.if.then13_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

for.inc.1:                                        ; preds = %for.inc
  %shr.2 = lshr i32 %parent_rate, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2, i32 %rate)
  %cmp12.2 = icmp eq i32 %shr.2, %rate
  br i1 %cmp12.2, label %for.inc.1.if.then13_crit_edge, label %for.inc.2

for.inc.1.if.then13_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

for.inc.2:                                        ; preds = %for.inc.1
  %shr.3 = lshr i32 %parent_rate, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3, i32 %rate)
  %cmp12.3 = icmp eq i32 %shr.3, %rate
  br i1 %cmp12.3, label %for.inc.2.if.then13_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.2.if.then13_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

cleanup:                                          ; preds = %for.inc.2.cleanup_crit_edge, %if.then13, %land.lhs.true.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then13 ], [ %., %if.then ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_sam9x5_peripheral_set(ptr nocapture noundef readonly %periph) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %periph, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %periph, i32 0, i32 3
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %regmap = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %periph, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %layout = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %periph, i32 0, i32 6
  %6 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layout, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %pid_mask = getelementptr inbounds %struct.clk_pcr_layout, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %pid_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid_mask, align 4
  %and = and i32 %13, %11
  %call8 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %9, i32 noundef %and) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %16 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %layout, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %div_mask = getelementptr inbounds %struct.clk_pcr_layout, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %div_mask, align 4
  %cmd = getelementptr inbounds %struct.clk_pcr_layout, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmd, align 4
  %or = or i32 %23, %21
  %or14 = or i32 %or, 268435456
  %div = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %periph, i32 0, i32 5
  %24 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %div, align 4
  %26 = tail call i32 @llvm.cttz.i32(i32 %21, i1 true), !range !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %iszero = icmp eq i32 %21, 0
  %sub = select i1 %iszero, i32 -1, i32 %26
  %shl = shl i32 %25, %sub
  %and19 = and i32 %shl, %21
  %or22 = or i32 %23, %and19
  %or23 = or i32 %or22, 268435456
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %19, i32 noundef %or14, i32 noundef %or23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %27 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_peripheral_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #4 align 64 {
entry:
  %req_parent = alloca %struct.clk_rate_request, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_parent) #8
  %0 = call ptr @memcpy(ptr %req_parent, ptr %req, i32 20)
  %call1 = tail call i32 @clk_hw_get_rate(ptr noundef %call) #8
  %id = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ult i32 %2, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %best_parent_rate.i = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %best_parent_hw.i = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %6)
  %cmp8 = icmp ugt i32 %call1, %6
  %or.cond = select i1 %tobool5.not, i1 %cmp8, i1 false
  br i1 %or.cond, label %for.cond.preheader.for.inc_crit_edge, label %clk_sam9x5_peripheral_best_diff.exit

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

clk_sam9x5_peripheral_best_diff.exit:             ; preds = %for.cond.preheader
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %req, align 4
  %9 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call1, ptr %best_parent_rate.i, align 4
  %10 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %best_parent_hw.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call1)
  %tobool11.not = icmp eq i32 %8, %call1
  br i1 %tobool11.not, label %clk_sam9x5_peripheral_best_diff.exit.for.end_crit_edge, label %lor.lhs.false12

clk_sam9x5_peripheral_best_diff.exit.for.end_crit_edge: ; preds = %clk_sam9x5_peripheral_best_diff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false12:                                  ; preds = %clk_sam9x5_peripheral_best_diff.exit
  %sub.i = sub i32 %8, %call1
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call1)
  %cmp13.not = icmp ult i32 %8, %call1
  br i1 %cmp13.not, label %lor.lhs.false12.for.inc_crit_edge, label %lor.lhs.false12.for.end_crit_edge

lor.lhs.false12.for.end_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false12.for.inc_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false12.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %best_rate.2 = phi i32 [ -2147483648, %for.cond.preheader.for.inc_crit_edge ], [ %call1, %lor.lhs.false12.for.inc_crit_edge ]
  %best_diff.2 = phi i32 [ -2147483648, %for.cond.preheader.for.inc_crit_edge ], [ %11, %lor.lhs.false12.for.inc_crit_edge ]
  %12 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not.1 = icmp ne i32 %13, 0
  %shr.1 = lshr i32 %call1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1, i32 %13)
  %cmp8.1 = icmp ugt i32 %shr.1, %13
  %or.cond.1 = select i1 %tobool5.not.1, i1 %cmp8.1, i1 false
  br i1 %or.cond.1, label %for.inc.for.inc.1_crit_edge, label %if.end10.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end10.1:                                       ; preds = %for.inc
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %req, align 4
  %sub.i.1 = sub i32 %15, %shr.1
  %16 = tail call i32 @llvm.abs.i32(i32 %sub.i.1, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.2)
  %cmp2.i.1 = icmp sgt i32 %best_diff.2, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.2, i32 %16)
  %cmp3.not.i.1 = icmp ult i32 %best_diff.2, %16
  %or.cond.i.1 = select i1 %cmp2.i.1, i1 %cmp3.not.i.1, i1 false
  br i1 %or.cond.i.1, label %if.end10.1.clk_sam9x5_peripheral_best_diff.exit.1_crit_edge, label %if.then.i.1

if.end10.1.clk_sam9x5_peripheral_best_diff.exit.1_crit_edge: ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_sam9x5_peripheral_best_diff.exit.1

if.then.i.1:                                      ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call1, ptr %best_parent_rate.i, align 4
  %18 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %best_parent_hw.i, align 4
  br label %clk_sam9x5_peripheral_best_diff.exit.1

clk_sam9x5_peripheral_best_diff.exit.1:           ; preds = %if.then.i.1, %if.end10.1.clk_sam9x5_peripheral_best_diff.exit.1_crit_edge
  %best_rate.1.1 = phi i32 [ %best_rate.2, %if.end10.1.clk_sam9x5_peripheral_best_diff.exit.1_crit_edge ], [ %shr.1, %if.then.i.1 ]
  %best_diff.1.1 = phi i32 [ %best_diff.2, %if.end10.1.clk_sam9x5_peripheral_best_diff.exit.1_crit_edge ], [ %16, %if.then.i.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.1.1)
  %tobool11.not.1 = icmp eq i32 %best_diff.1.1, 0
  br i1 %tobool11.not.1, label %clk_sam9x5_peripheral_best_diff.exit.1.for.end_crit_edge, label %lor.lhs.false12.1

clk_sam9x5_peripheral_best_diff.exit.1.for.end_crit_edge: ; preds = %clk_sam9x5_peripheral_best_diff.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false12.1:                                ; preds = %clk_sam9x5_peripheral_best_diff.exit.1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_rate.1.1, i32 %15)
  %cmp13.not.1 = icmp ugt i32 %best_rate.1.1, %15
  br i1 %cmp13.not.1, label %lor.lhs.false12.1.for.inc.1_crit_edge, label %lor.lhs.false12.1.for.end_crit_edge

lor.lhs.false12.1.for.end_crit_edge:              ; preds = %lor.lhs.false12.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false12.1.for.inc.1_crit_edge:            ; preds = %lor.lhs.false12.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %lor.lhs.false12.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %best_rate.2.1 = phi i32 [ %best_rate.2, %for.inc.for.inc.1_crit_edge ], [ %best_rate.1.1, %lor.lhs.false12.1.for.inc.1_crit_edge ]
  %best_diff.2.1 = phi i32 [ %best_diff.2, %for.inc.for.inc.1_crit_edge ], [ %best_diff.1.1, %lor.lhs.false12.1.for.inc.1_crit_edge ]
  %19 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool5.not.2 = icmp ne i32 %20, 0
  %shr.2 = lshr i32 %call1, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2, i32 %20)
  %cmp8.2 = icmp ugt i32 %shr.2, %20
  %or.cond.2 = select i1 %tobool5.not.2, i1 %cmp8.2, i1 false
  br i1 %or.cond.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end10.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end10.2:                                       ; preds = %for.inc.1
  %21 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %req, align 4
  %sub.i.2 = sub i32 %22, %shr.2
  %23 = tail call i32 @llvm.abs.i32(i32 %sub.i.2, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.2.1)
  %cmp2.i.2 = icmp sgt i32 %best_diff.2.1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.2.1, i32 %23)
  %cmp3.not.i.2 = icmp ult i32 %best_diff.2.1, %23
  %or.cond.i.2 = select i1 %cmp2.i.2, i1 %cmp3.not.i.2, i1 false
  br i1 %or.cond.i.2, label %if.end10.2.clk_sam9x5_peripheral_best_diff.exit.2_crit_edge, label %if.then.i.2

if.end10.2.clk_sam9x5_peripheral_best_diff.exit.2_crit_edge: ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_sam9x5_peripheral_best_diff.exit.2

if.then.i.2:                                      ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call1, ptr %best_parent_rate.i, align 4
  %25 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call, ptr %best_parent_hw.i, align 4
  br label %clk_sam9x5_peripheral_best_diff.exit.2

clk_sam9x5_peripheral_best_diff.exit.2:           ; preds = %if.then.i.2, %if.end10.2.clk_sam9x5_peripheral_best_diff.exit.2_crit_edge
  %best_rate.1.2 = phi i32 [ %best_rate.2.1, %if.end10.2.clk_sam9x5_peripheral_best_diff.exit.2_crit_edge ], [ %shr.2, %if.then.i.2 ]
  %best_diff.1.2 = phi i32 [ %best_diff.2.1, %if.end10.2.clk_sam9x5_peripheral_best_diff.exit.2_crit_edge ], [ %23, %if.then.i.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.1.2)
  %tobool11.not.2 = icmp eq i32 %best_diff.1.2, 0
  br i1 %tobool11.not.2, label %clk_sam9x5_peripheral_best_diff.exit.2.for.end_crit_edge, label %lor.lhs.false12.2

clk_sam9x5_peripheral_best_diff.exit.2.for.end_crit_edge: ; preds = %clk_sam9x5_peripheral_best_diff.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false12.2:                                ; preds = %clk_sam9x5_peripheral_best_diff.exit.2
  call void @__sanitizer_cov_trace_cmp4(i32 %best_rate.1.2, i32 %22)
  %cmp13.not.2 = icmp ugt i32 %best_rate.1.2, %22
  br i1 %cmp13.not.2, label %lor.lhs.false12.2.for.inc.2_crit_edge, label %lor.lhs.false12.2.for.end_crit_edge

lor.lhs.false12.2.for.end_crit_edge:              ; preds = %lor.lhs.false12.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false12.2.for.inc.2_crit_edge:            ; preds = %lor.lhs.false12.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %lor.lhs.false12.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %best_rate.2.2 = phi i32 [ %best_rate.2.1, %for.inc.1.for.inc.2_crit_edge ], [ %best_rate.1.2, %lor.lhs.false12.2.for.inc.2_crit_edge ]
  %best_diff.2.2 = phi i32 [ %best_diff.2.1, %for.inc.1.for.inc.2_crit_edge ], [ %best_diff.1.2, %lor.lhs.false12.2.for.inc.2_crit_edge ]
  %26 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool5.not.3 = icmp ne i32 %27, 0
  %shr.3 = lshr i32 %call1, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3, i32 %27)
  %cmp8.3 = icmp ugt i32 %shr.3, %27
  %or.cond.3 = select i1 %tobool5.not.3, i1 %cmp8.3, i1 false
  br i1 %or.cond.3, label %for.inc.2.for.end_crit_edge, label %if.end10.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end10.3:                                       ; preds = %for.inc.2
  %28 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %req, align 4
  %sub.i.3 = sub i32 %29, %shr.3
  %30 = tail call i32 @llvm.abs.i32(i32 %sub.i.3, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.2.2)
  %cmp2.i.3 = icmp sgt i32 %best_diff.2.2, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.2.2, i32 %30)
  %cmp3.not.i.3 = icmp ult i32 %best_diff.2.2, %30
  %or.cond.i.3 = select i1 %cmp2.i.3, i1 %cmp3.not.i.3, i1 false
  br i1 %or.cond.i.3, label %if.end10.3.for.end_crit_edge, label %if.then.i.3

if.end10.3.for.end_crit_edge:                     ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then.i.3:                                      ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call1, ptr %best_parent_rate.i, align 4
  %32 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call, ptr %best_parent_hw.i, align 4
  br label %for.end

for.end:                                          ; preds = %if.then.i.3, %if.end10.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %lor.lhs.false12.2.for.end_crit_edge, %clk_sam9x5_peripheral_best_diff.exit.2.for.end_crit_edge, %lor.lhs.false12.1.for.end_crit_edge, %clk_sam9x5_peripheral_best_diff.exit.1.for.end_crit_edge, %lor.lhs.false12.for.end_crit_edge, %clk_sam9x5_peripheral_best_diff.exit.for.end_crit_edge
  %best_rate.3 = phi i32 [ %call1, %clk_sam9x5_peripheral_best_diff.exit.for.end_crit_edge ], [ %call1, %lor.lhs.false12.for.end_crit_edge ], [ %best_rate.1.1, %clk_sam9x5_peripheral_best_diff.exit.1.for.end_crit_edge ], [ %best_rate.1.1, %lor.lhs.false12.1.for.end_crit_edge ], [ %best_rate.1.2, %clk_sam9x5_peripheral_best_diff.exit.2.for.end_crit_edge ], [ %best_rate.1.2, %lor.lhs.false12.2.for.end_crit_edge ], [ %best_rate.2.2, %for.inc.2.for.end_crit_edge ], [ %best_rate.2.2, %if.end10.3.for.end_crit_edge ], [ %shr.3, %if.then.i.3 ]
  %best_diff.3 = phi i32 [ 0, %clk_sam9x5_peripheral_best_diff.exit.for.end_crit_edge ], [ %11, %lor.lhs.false12.for.end_crit_edge ], [ 0, %clk_sam9x5_peripheral_best_diff.exit.1.for.end_crit_edge ], [ %best_diff.1.1, %lor.lhs.false12.1.for.end_crit_edge ], [ 0, %clk_sam9x5_peripheral_best_diff.exit.2.for.end_crit_edge ], [ %best_diff.1.2, %lor.lhs.false12.2.for.end_crit_edge ], [ %best_diff.2.2, %for.inc.2.for.end_crit_edge ], [ %best_diff.2.2, %if.end10.3.for.end_crit_edge ], [ %30, %if.then.i.3 ]
  %chg_pid = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %hw, i32 0, i32 9
  %33 = ptrtoint ptr %chg_pid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chg_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp16 = icmp slt i32 %34, 0
  br i1 %cmp16, label %for.end.end_crit_edge, label %if.end18

for.end.end_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end18:                                         ; preds = %for.end
  %call20 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %34) #8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end18.end_crit_edge, label %for.cond24.preheader

if.end18.end_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

for.cond24.preheader:                             ; preds = %if.end18
  %35 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %req, align 4
  %37 = ptrtoint ptr %req_parent to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %req_parent, align 4
  %call29 = call i32 @__clk_determine_rate(ptr noundef nonnull %call20, ptr noundef nonnull %req_parent) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %for.cond24.preheader.for.inc37_crit_edge

for.cond24.preheader.for.inc37_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc37

if.end32:                                         ; preds = %for.cond24.preheader
  %38 = ptrtoint ptr %req_parent to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %req_parent, align 4
  %40 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %req, align 4
  %sub.i101 = sub i32 %41, %39
  %42 = call i32 @llvm.abs.i32(i32 %sub.i101, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.3)
  %cmp2.i102 = icmp sgt i32 %best_diff.3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.3, i32 %42)
  %cmp3.not.i103 = icmp ult i32 %best_diff.3, %42
  %or.cond.i104 = select i1 %cmp2.i102, i1 %cmp3.not.i103, i1 false
  br i1 %or.cond.i104, label %if.end32.clk_sam9x5_peripheral_best_diff.exit108_crit_edge, label %if.then.i107

if.end32.clk_sam9x5_peripheral_best_diff.exit108_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_sam9x5_peripheral_best_diff.exit108

if.then.i107:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %39, ptr %best_parent_rate.i, align 4
  %44 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call20, ptr %best_parent_hw.i, align 4
  br label %clk_sam9x5_peripheral_best_diff.exit108

clk_sam9x5_peripheral_best_diff.exit108:          ; preds = %if.then.i107, %if.end32.clk_sam9x5_peripheral_best_diff.exit108_crit_edge
  %best_rate.5 = phi i32 [ %best_rate.3, %if.end32.clk_sam9x5_peripheral_best_diff.exit108_crit_edge ], [ %39, %if.then.i107 ]
  %best_diff.5 = phi i32 [ %best_diff.3, %if.end32.clk_sam9x5_peripheral_best_diff.exit108_crit_edge ], [ %42, %if.then.i107 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.5)
  %tobool34.not = icmp eq i32 %best_diff.5, 0
  br i1 %tobool34.not, label %clk_sam9x5_peripheral_best_diff.exit108.end_crit_edge, label %clk_sam9x5_peripheral_best_diff.exit108.for.inc37_crit_edge

clk_sam9x5_peripheral_best_diff.exit108.for.inc37_crit_edge: ; preds = %clk_sam9x5_peripheral_best_diff.exit108
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc37

clk_sam9x5_peripheral_best_diff.exit108.end_crit_edge: ; preds = %clk_sam9x5_peripheral_best_diff.exit108
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

for.inc37:                                        ; preds = %clk_sam9x5_peripheral_best_diff.exit108.for.inc37_crit_edge, %for.cond24.preheader.for.inc37_crit_edge
  %best_rate.6 = phi i32 [ %best_rate.5, %clk_sam9x5_peripheral_best_diff.exit108.for.inc37_crit_edge ], [ %best_rate.3, %for.cond24.preheader.for.inc37_crit_edge ]
  %best_diff.6 = phi i32 [ %best_diff.5, %clk_sam9x5_peripheral_best_diff.exit108.for.inc37_crit_edge ], [ %best_diff.3, %for.cond24.preheader.for.inc37_crit_edge ]
  %45 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %req, align 4
  %shl.1 = shl i32 %46, 1
  %47 = ptrtoint ptr %req_parent to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl.1, ptr %req_parent, align 4
  %call29.1 = call i32 @__clk_determine_rate(ptr noundef nonnull %call20, ptr noundef nonnull %req_parent) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.1)
  %tobool30.not.1 = icmp eq i32 %call29.1, 0
  br i1 %tobool30.not.1, label %if.end32.1, label %for.inc37.for.inc37.1_crit_edge

for.inc37.for.inc37.1_crit_edge:                  ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc37.1

if.end32.1:                                       ; preds = %for.inc37
  %48 = ptrtoint ptr %req_parent to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %req_parent, align 4
  %shr.i100.1 = lshr i32 %49, 1
  %50 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %req, align 4
  %sub.i101.1 = sub i32 %51, %shr.i100.1
  %52 = call i32 @llvm.abs.i32(i32 %sub.i101.1, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.6)
  %cmp2.i102.1 = icmp sgt i32 %best_diff.6, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.6, i32 %52)
  %cmp3.not.i103.1 = icmp ult i32 %best_diff.6, %52
  %or.cond.i104.1 = select i1 %cmp2.i102.1, i1 %cmp3.not.i103.1, i1 false
  br i1 %or.cond.i104.1, label %if.end32.1.clk_sam9x5_peripheral_best_diff.exit108.1_crit_edge, label %if.then.i107.1

if.end32.1.clk_sam9x5_peripheral_best_diff.exit108.1_crit_edge: ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_sam9x5_peripheral_best_diff.exit108.1

if.then.i107.1:                                   ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %49, ptr %best_parent_rate.i, align 4
  %54 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call20, ptr %best_parent_hw.i, align 4
  br label %clk_sam9x5_peripheral_best_diff.exit108.1

clk_sam9x5_peripheral_best_diff.exit108.1:        ; preds = %if.then.i107.1, %if.end32.1.clk_sam9x5_peripheral_best_diff.exit108.1_crit_edge
  %best_rate.5.1 = phi i32 [ %best_rate.6, %if.end32.1.clk_sam9x5_peripheral_best_diff.exit108.1_crit_edge ], [ %shr.i100.1, %if.then.i107.1 ]
  %best_diff.5.1 = phi i32 [ %best_diff.6, %if.end32.1.clk_sam9x5_peripheral_best_diff.exit108.1_crit_edge ], [ %52, %if.then.i107.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.5.1)
  %tobool34.not.1 = icmp eq i32 %best_diff.5.1, 0
  br i1 %tobool34.not.1, label %clk_sam9x5_peripheral_best_diff.exit108.1.end_crit_edge, label %clk_sam9x5_peripheral_best_diff.exit108.1.for.inc37.1_crit_edge

clk_sam9x5_peripheral_best_diff.exit108.1.for.inc37.1_crit_edge: ; preds = %clk_sam9x5_peripheral_best_diff.exit108.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc37.1

clk_sam9x5_peripheral_best_diff.exit108.1.end_crit_edge: ; preds = %clk_sam9x5_peripheral_best_diff.exit108.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

for.inc37.1:                                      ; preds = %clk_sam9x5_peripheral_best_diff.exit108.1.for.inc37.1_crit_edge, %for.inc37.for.inc37.1_crit_edge
  %best_rate.6.1 = phi i32 [ %best_rate.5.1, %clk_sam9x5_peripheral_best_diff.exit108.1.for.inc37.1_crit_edge ], [ %best_rate.6, %for.inc37.for.inc37.1_crit_edge ]
  %best_diff.6.1 = phi i32 [ %best_diff.5.1, %clk_sam9x5_peripheral_best_diff.exit108.1.for.inc37.1_crit_edge ], [ %best_diff.6, %for.inc37.for.inc37.1_crit_edge ]
  %55 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %req, align 4
  %shl.2 = shl i32 %56, 2
  %57 = ptrtoint ptr %req_parent to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shl.2, ptr %req_parent, align 4
  %call29.2 = call i32 @__clk_determine_rate(ptr noundef nonnull %call20, ptr noundef nonnull %req_parent) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.2)
  %tobool30.not.2 = icmp eq i32 %call29.2, 0
  br i1 %tobool30.not.2, label %if.end32.2, label %for.inc37.1.for.inc37.2_crit_edge

for.inc37.1.for.inc37.2_crit_edge:                ; preds = %for.inc37.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc37.2

if.end32.2:                                       ; preds = %for.inc37.1
  %58 = ptrtoint ptr %req_parent to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %req_parent, align 4
  %shr.i100.2 = lshr i32 %59, 2
  %60 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %req, align 4
  %sub.i101.2 = sub i32 %61, %shr.i100.2
  %62 = call i32 @llvm.abs.i32(i32 %sub.i101.2, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.6.1)
  %cmp2.i102.2 = icmp sgt i32 %best_diff.6.1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.6.1, i32 %62)
  %cmp3.not.i103.2 = icmp ult i32 %best_diff.6.1, %62
  %or.cond.i104.2 = select i1 %cmp2.i102.2, i1 %cmp3.not.i103.2, i1 false
  br i1 %or.cond.i104.2, label %if.end32.2.clk_sam9x5_peripheral_best_diff.exit108.2_crit_edge, label %if.then.i107.2

if.end32.2.clk_sam9x5_peripheral_best_diff.exit108.2_crit_edge: ; preds = %if.end32.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_sam9x5_peripheral_best_diff.exit108.2

if.then.i107.2:                                   ; preds = %if.end32.2
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %59, ptr %best_parent_rate.i, align 4
  %64 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call20, ptr %best_parent_hw.i, align 4
  br label %clk_sam9x5_peripheral_best_diff.exit108.2

clk_sam9x5_peripheral_best_diff.exit108.2:        ; preds = %if.then.i107.2, %if.end32.2.clk_sam9x5_peripheral_best_diff.exit108.2_crit_edge
  %best_rate.5.2 = phi i32 [ %best_rate.6.1, %if.end32.2.clk_sam9x5_peripheral_best_diff.exit108.2_crit_edge ], [ %shr.i100.2, %if.then.i107.2 ]
  %best_diff.5.2 = phi i32 [ %best_diff.6.1, %if.end32.2.clk_sam9x5_peripheral_best_diff.exit108.2_crit_edge ], [ %62, %if.then.i107.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.5.2)
  %tobool34.not.2 = icmp eq i32 %best_diff.5.2, 0
  br i1 %tobool34.not.2, label %clk_sam9x5_peripheral_best_diff.exit108.2.end_crit_edge, label %clk_sam9x5_peripheral_best_diff.exit108.2.for.inc37.2_crit_edge

clk_sam9x5_peripheral_best_diff.exit108.2.for.inc37.2_crit_edge: ; preds = %clk_sam9x5_peripheral_best_diff.exit108.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc37.2

clk_sam9x5_peripheral_best_diff.exit108.2.end_crit_edge: ; preds = %clk_sam9x5_peripheral_best_diff.exit108.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

for.inc37.2:                                      ; preds = %clk_sam9x5_peripheral_best_diff.exit108.2.for.inc37.2_crit_edge, %for.inc37.1.for.inc37.2_crit_edge
  %best_rate.6.2 = phi i32 [ %best_rate.5.2, %clk_sam9x5_peripheral_best_diff.exit108.2.for.inc37.2_crit_edge ], [ %best_rate.6.1, %for.inc37.1.for.inc37.2_crit_edge ]
  %best_diff.6.2 = phi i32 [ %best_diff.5.2, %clk_sam9x5_peripheral_best_diff.exit108.2.for.inc37.2_crit_edge ], [ %best_diff.6.1, %for.inc37.1.for.inc37.2_crit_edge ]
  %65 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %req, align 4
  %shl.3 = shl i32 %66, 3
  %67 = ptrtoint ptr %req_parent to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %shl.3, ptr %req_parent, align 4
  %call29.3 = call i32 @__clk_determine_rate(ptr noundef nonnull %call20, ptr noundef nonnull %req_parent) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.3)
  %tobool30.not.3 = icmp eq i32 %call29.3, 0
  br i1 %tobool30.not.3, label %if.end32.3, label %for.inc37.2.end_crit_edge

for.inc37.2.end_crit_edge:                        ; preds = %for.inc37.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end32.3:                                       ; preds = %for.inc37.2
  %68 = ptrtoint ptr %req_parent to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %req_parent, align 4
  %shr.i100.3 = lshr i32 %69, 3
  %70 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %req, align 4
  %sub.i101.3 = sub i32 %71, %shr.i100.3
  %72 = call i32 @llvm.abs.i32(i32 %sub.i101.3, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.6.2)
  %cmp2.i102.3 = icmp sgt i32 %best_diff.6.2, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.6.2, i32 %72)
  %cmp3.not.i103.3 = icmp ult i32 %best_diff.6.2, %72
  %or.cond.i104.3 = select i1 %cmp2.i102.3, i1 %cmp3.not.i103.3, i1 false
  br i1 %or.cond.i104.3, label %if.end32.3.end_crit_edge, label %if.then.i107.3

if.end32.3.end_crit_edge:                         ; preds = %if.end32.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.then.i107.3:                                   ; preds = %if.end32.3
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %69, ptr %best_parent_rate.i, align 4
  %74 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call20, ptr %best_parent_hw.i, align 4
  br label %end

end:                                              ; preds = %if.then.i107.3, %if.end32.3.end_crit_edge, %for.inc37.2.end_crit_edge, %clk_sam9x5_peripheral_best_diff.exit108.2.end_crit_edge, %clk_sam9x5_peripheral_best_diff.exit108.1.end_crit_edge, %clk_sam9x5_peripheral_best_diff.exit108.end_crit_edge, %if.end18.end_crit_edge, %for.end.end_crit_edge
  %best_rate.7 = phi i32 [ %best_rate.3, %for.end.end_crit_edge ], [ %best_rate.3, %if.end18.end_crit_edge ], [ %best_rate.5, %clk_sam9x5_peripheral_best_diff.exit108.end_crit_edge ], [ %best_rate.5.1, %clk_sam9x5_peripheral_best_diff.exit108.1.end_crit_edge ], [ %best_rate.5.2, %clk_sam9x5_peripheral_best_diff.exit108.2.end_crit_edge ], [ %best_rate.6.2, %for.inc37.2.end_crit_edge ], [ %best_rate.6.2, %if.end32.3.end_crit_edge ], [ %shr.i100.3, %if.then.i107.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.7)
  %cmp40 = icmp slt i32 %best_rate.7, 0
  br i1 %cmp40, label %end.cleanup_crit_edge, label %lor.lhs.false41

end.cleanup_crit_edge:                            ; preds = %end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false41:                                  ; preds = %end
  %75 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool44.not = icmp ne i32 %76, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %best_rate.7, i32 %76)
  %cmp48 = icmp ugt i32 %best_rate.7, %76
  %or.cond99 = select i1 %tobool44.not, i1 %cmp48, i1 false
  br i1 %or.cond99, label %lor.lhs.false41.cleanup_crit_edge, label %do.body

lor.lhs.false41.cleanup_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_sam9x5_peripheral_determine_rate.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_sam9x5_peripheral_determine_rate, %if.then56)) #8
          to label %do.end [label %if.then56], !srcloc !27

if.then56:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %best_parent_hw.i, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %clk, align 4
  %call57 = call ptr @__clk_get_name(ptr noundef %80) #8
  %81 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %best_parent_rate.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_sam9x5_peripheral_determine_rate.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef %best_rate.7, ptr noundef %call57, i32 noundef %82) #8
  br label %do.end

do.end:                                           ; preds = %if.then56, %do.body
  %83 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %best_rate.7, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false41.cleanup_crit_edge, %end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call1, %lor.lhs.false.cleanup_crit_edge ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false41.cleanup_crit_edge ], [ -22, %end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_parent) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_determine_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/clk-peripheral.c", i32 16, i32 1}
!2 = !{ptr @pmc_pcr_lock, !1, !"pmc_pcr_lock", i1 false, i1 false}
!3 = !{ptr @peripheral_ops, !4, !"peripheral_ops", i1 false, i1 false}
!4 = !{!"../drivers/clk/at91/clk-peripheral.c", i32 92, i32 29}
!5 = !{ptr @sam9x5_peripheral_ops, !6, !"sam9x5_peripheral_ops", i1 false, i1 false}
!6 = !{!"../drivers/clk/at91/clk-peripheral.c", i32 421, i32 29}
!7 = !{ptr @sam9x5_peripheral_chg_ops, !8, !"sam9x5_peripheral_chg_ops", i1 false, i1 false}
!8 = !{!"../drivers/clk/at91/clk-peripheral.c", i32 432, i32 29}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/at91/clk-peripheral.c", i32 321, i32 2}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @clk_sam9x5_peripheral_determine_rate.__UNIQUE_ID_ddebug167, !10, !"__UNIQUE_ID_ddebug167", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i8 0, i8 2}
!25 = !{!"auto-init"}
!26 = !{i32 0, i32 33}
!27 = !{i64 2148927285, i64 2148927290, i64 2148927303, i64 2148927347, i64 2148927381, i64 2148927402}
