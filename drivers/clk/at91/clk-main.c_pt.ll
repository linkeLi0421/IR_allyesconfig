; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/clk-main.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_main_osc = type { %struct.clk_hw, ptr, %struct.at91_clk_pms }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.clk_main_rc_osc = type { %struct.clk_hw, ptr, i32, i32, %struct.at91_clk_pms }
%struct.clk_rm9200_main = type { %struct.clk_hw, ptr }
%struct.clk_sam9x5_main = type { %struct.clk_hw, ptr, %struct.at91_clk_pms, i8 }

@main_osc_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_main_osc_prepare, ptr @clk_main_osc_unprepare, ptr @clk_main_osc_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_main_osc_save_context, ptr @clk_main_osc_restore_context, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@main_rc_osc_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_main_rc_osc_prepare, ptr @clk_main_rc_osc_unprepare, ptr @clk_main_rc_osc_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_main_rc_osc_save_context, ptr @clk_main_rc_osc_restore_context, ptr @clk_main_rc_osc_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_main_rc_osc_recalc_accuracy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rm9200_main_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_rm9200_main_prepare, ptr null, ptr @clk_rm9200_main_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rm9200_main_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sam9x5_main_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_sam9x5_main_prepare, ptr null, ptr @clk_sam9x5_main_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_sam9x5_main_save_context, ptr @clk_sam9x5_main_restore_context, ptr @clk_sam9x5_main_recalc_rate, ptr null, ptr null, ptr @clk_sam9x5_main_set_parent, ptr @clk_sam9x5_main_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_state = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@clk_main_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014Main crystal frequency not set, using approximate value\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_main_recalc_rate\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/at91/clk-main.c\00", [36 x i8] zeroinitializer }, align 32
@clk_main_recalc_rate._entry_ptr = internal global ptr @clk_main_recalc_rate._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [13 x i8] c"main_osc_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 143, i32 29 }
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"main_rc_osc_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 282, i32 29 }
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"rm9200_main_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 391, i32 29 }
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"sam9x5_main_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 532, i32 29 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [31 x i8] c"../drivers/clk/at91/clk-main.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 358, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @clk_main_recalc_rate._entry, ptr @clk_main_recalc_rate._entry_ptr, ptr @main_osc_ops, ptr @main_rc_osc_ops, ptr @rm9200_main_ops, ptr @sam9x5_main_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_osc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_rc_osc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm9200_main_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x5_main_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_main_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_main_osc(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_name, i1 noundef zeroext %bypass) local_unnamed_addr #0 section ".init.text" align 64 {
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
  %tobool1.not = icmp eq ptr %parent_name, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #10
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @main_osc_ops, ptr %ops, align 4
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
  store i32 8, ptr %flags, align 4
  %init9 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %init9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %init, ptr %init9, align 8
  %regmap10 = getelementptr inbounds %struct.clk_main_osc, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %regmap10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %regmap, ptr %regmap10, align 4
  br i1 %bypass, label %if.then12, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 32, i32 noundef 16711682, i32 noundef 3604482, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end6.if.end14_crit_edge
  %call17 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %if.then19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %11 = inttoptr i32 %call17 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then19 ], [ %call7.i.i, %if.end14.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
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
define dso_local ptr @at91_clk_register_main_rc_osc(ptr noundef %regmap, ptr noundef %name, i32 noundef %frequency, i32 noundef %accuracy) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %tobool.not = icmp eq ptr %name, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frequency)
  %tobool1.not = icmp eq i32 %frequency, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #10
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @main_rc_osc_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %5 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %6 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %flags, align 4
  %init9 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %init9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %init, ptr %init9, align 8
  %regmap10 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %regmap10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %regmap, ptr %regmap10, align 4
  %frequency11 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %frequency11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %frequency, ptr %frequency11, align 8
  %accuracy12 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %accuracy12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %accuracy, ptr %accuracy12, align 4
  %call14 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end6.cleanup_crit_edge, label %if.then16

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %12 = inttoptr i32 %call14 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %if.then16 ], [ %call7.i.i, %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_rm9200_main(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_name) local_unnamed_addr #0 section ".init.text" align 64 {
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
  %tobool1.not = icmp eq ptr %parent_name, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #10
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rm9200_main_ops, ptr %ops, align 4
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
  %init12 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %init12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %init, ptr %init12, align 8
  %regmap13 = getelementptr inbounds %struct.clk_rm9200_main, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %regmap13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %regmap, ptr %regmap13, align 4
  %call16 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end9.cleanup_crit_edge, label %if.then18

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %11 = inttoptr i32 %call16 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then18 ], [ %call7.i.i, %if.end9.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_sam9x5_main(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_names, i32 noundef %num_parents) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !23
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %parent_names, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_parents)
  %tobool2.not = icmp eq i32 %num_parents, 0
  %or.cond = or i1 %tobool1.not, %tobool2.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 36) #10
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sam9x5_main_ops, ptr %ops, align 4
  %parent_names12 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_names, ptr %parent_names12, align 4
  %conv = trunc i32 %num_parents to i8
  %num_parents13 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents13 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %num_parents13, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %flags, align 4
  %init15 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %init15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %init, ptr %init15, align 8
  %regmap16 = getelementptr inbounds %struct.clk_sam9x5_main, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %regmap16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %regmap, ptr %regmap16, align 4
  %call18 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 32, ptr noundef nonnull %status) #7
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  %and = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp ne i32 %and, 0
  %conv20 = zext i1 %tobool19.not to i8
  %parent = getelementptr inbounds %struct.clk_sam9x5_main, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv20, ptr %parent, align 8
  %call23 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end10.cleanup_crit_edge, label %if.then25

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %14 = inttoptr i32 %call23 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %if.then25 ], [ %call7.i.i, %if.end10.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_main_osc_prepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.clk_main_osc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp2) #7
  %2 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp2, align 4, !annotation !23
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %tmp2) #7
  %3 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp2, align 4
  %and = and i32 %4, -16711681
  store i32 %and, ptr %tmp2, align 4
  %and3 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %and, 3604481
  %5 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %tmp2, align 4
  %call7 = call i32 @regmap_write(ptr noundef %1, i32 noundef 32, i32 noundef %or) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %status.i, align 4, !annotation !23
  %call.i20 = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #7
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status.i, align 4
  %and.i21 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool.i.not22 = icmp eq i32 %and.i21, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br i1 %tobool.i.not22, label %if.end8.do.end_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %if.end8.do.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !24
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %status.i, align 4, !annotation !23
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #7
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status.i, align 4
  %and.i = and i32 %11, 1
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br i1 %tobool.i.not, label %do.end.do.end_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

cleanup:                                          ; preds = %do.end.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_main_osc_unprepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %tmp2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.clk_main_osc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp2) #7
  %2 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp2, align 4, !annotation !23
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %tmp2) #7
  %3 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp2, align 4
  %5 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %.not = icmp eq i32 %5, 1
  br i1 %.not, label %if.end6, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and7 = and i32 %4, -3604482
  %6 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and7, ptr %tmp2, align 4
  %or = or i32 %and7, 3604480
  %call8 = call i32 @regmap_write(ptr noundef %1, i32 noundef 32, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_main_osc_is_prepared(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %tmp2 = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.clk_main_osc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp2) #7
  %2 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp2, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %status, align 4, !annotation !23
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %tmp2) #7
  %4 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp2, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status) #7
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %and4 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %land.rhs

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tmp2, align 4
  %and6 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7 = icmp ne i32 %and6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_main_osc_save_context(ptr nocapture noundef %hw) #4 align 64 {
entry:
  %tmp2.i = alloca i32, align 4
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1.i = getelementptr inbounds %struct.clk_main_osc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp2.i) #7
  %2 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp2.i, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %status.i, align 4, !annotation !23
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %tmp2.i) #7
  %4 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp2.i, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_main_osc_is_prepared.exit_crit_edge

entry.clk_main_osc_is_prepared.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_main_osc_is_prepared.exit

if.end.i:                                         ; preds = %entry
  %call3.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #7
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status.i, align 4
  %and4.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.clk_main_osc_is_prepared.exit_crit_edge, label %land.rhs.i

if.end.i.clk_main_osc_is_prepared.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_main_osc_is_prepared.exit

land.rhs.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tmp2.i, align 4
  %and6.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.i = icmp ne i32 %and6.i, 0
  %phi.cast.i = zext i1 %tobool7.i to i32
  br label %clk_main_osc_is_prepared.exit

clk_main_osc_is_prepared.exit:                    ; preds = %land.rhs.i, %if.end.i.clk_main_osc_is_prepared.exit_crit_edge, %entry.clk_main_osc_is_prepared.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %entry.clk_main_osc_is_prepared.exit_crit_edge ], [ 0, %if.end.i.clk_main_osc_is_prepared.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2.i) #7
  %status = getelementptr inbounds %struct.clk_main_osc, ptr %hw, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_main_osc_restore_context(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.clk_main_osc, ptr %hw, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_main_osc_prepare(ptr noundef %hw)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_main_rc_osc_prepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  %mor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mor) #7
  %2 = ptrtoint ptr %mor to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mor, align 4, !annotation !23
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %mor) #7
  %3 = ptrtoint ptr %mor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mor, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 32, i32 noundef 16711688, i32 noundef 3604488, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %status.i, align 4, !annotation !23
  %call.i1213 = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #7
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status.i, align 4
  %and.i14 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14)
  %tobool.i.not15 = icmp eq i32 %and.i14, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br i1 %tobool.i.not15, label %if.end.do.end_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %if.end.do.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !26
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %status.i, align 4, !annotation !23
  %call.i12 = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #7
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status.i, align 4
  %and.i = and i32 %10, 131072
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br i1 %tobool.i.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mor) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_main_rc_osc_unprepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %mor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mor) #7
  %2 = ptrtoint ptr %mor to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mor, align 4, !annotation !23
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %mor) #7
  %3 = ptrtoint ptr %mor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mor, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 32, i32 noundef 16711688, i32 noundef 3604480, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mor) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_main_rc_osc_is_prepared(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %mor = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mor) #7
  %2 = ptrtoint ptr %mor to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mor, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %status, align 4, !annotation !23
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %mor) #7
  %call2 = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status) #7
  %4 = ptrtoint ptr %mor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mor, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %and3 = lshr i32 %7, 17
  %and3.lobit = and i32 %and3, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %and3.lobit, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mor) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_main_rc_osc_save_context(ptr nocapture noundef %hw) #4 align 64 {
entry:
  %mor.i = alloca i32, align 4
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1.i = getelementptr inbounds %struct.clk_main_rc_osc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mor.i) #7
  %2 = ptrtoint ptr %mor.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mor.i, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %status.i, align 4, !annotation !23
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %mor.i) #7
  %call2.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #7
  %4 = ptrtoint ptr %mor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mor.i, align 4
  %and.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.clk_main_rc_osc_is_prepared.exit_crit_edge, label %land.rhs.i

entry.clk_main_rc_osc_is_prepared.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_main_rc_osc_is_prepared.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status.i, align 4
  %and3.i = lshr i32 %7, 17
  %and3.lobit.i = and i32 %and3.i, 1
  br label %clk_main_rc_osc_is_prepared.exit

clk_main_rc_osc_is_prepared.exit:                 ; preds = %land.rhs.i, %entry.clk_main_rc_osc_is_prepared.exit_crit_edge
  %8 = phi i32 [ 0, %entry.clk_main_rc_osc_is_prepared.exit_crit_edge ], [ %and3.lobit.i, %land.rhs.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mor.i) #7
  %status = getelementptr inbounds %struct.clk_main_rc_osc, ptr %hw, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_main_rc_osc_restore_context(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.clk_main_rc_osc, ptr %hw, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_main_rc_osc_prepare(ptr noundef %hw)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_main_rc_osc_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frequency = getelementptr inbounds %struct.clk_main_rc_osc, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frequency, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_main_rc_osc_recalc_accuracy(ptr nocapture noundef readonly %hw, i32 noundef %parent_acc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %accuracy = getelementptr inbounds %struct.clk_main_rc_osc, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %accuracy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %accuracy, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_rm9200_main_prepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %mcfr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_rm9200_main, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcfr.i) #7
  %2 = ptrtoint ptr %mcfr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mcfr.i, align 4, !annotation !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 518, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 518
  %spec.select.i.neg7.i = select i1 %cmp.i.i, i32 -1073741822, i32 -1
  %add.neg.i = sub i32 %spec.select.i.neg7.i, %3
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %call1.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 36, ptr noundef nonnull %mcfr.i) #7
  %5 = ptrtoint ptr %mcfr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mcfr.i, align 4
  %and.i = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.clk_main_probe_frequency.exit_crit_edge

do.body.i.clk_main_probe_frequency.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_main_probe_frequency.exit

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %7 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i = icmp ult i32 %7, 3
  br i1 %cmp.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 6442440) #7
  br label %do.cond.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 30, i32 noundef 518, i32 noundef 2) #7
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.else.i, %if.then2.i
  %sub.i = add i32 %add.neg.i, %4
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.clk_main_probe_frequency.exit_crit_edge

do.cond.i.clk_main_probe_frequency.exit_crit_edge: ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_main_probe_frequency.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

clk_main_probe_frequency.exit:                    ; preds = %do.cond.i.clk_main_probe_frequency.exit_crit_edge, %do.body.i.clk_main_probe_frequency.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body.i.clk_main_probe_frequency.exit_crit_edge ], [ -110, %do.cond.i.clk_main_probe_frequency.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcfr.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_rm9200_main_is_prepared(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !23
  %regmap = getelementptr inbounds %struct.clk_rm9200_main, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 36, ptr noundef nonnull %status) #7
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = lshr i32 %4, 16
  %and.lobit = and i32 %and, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_rm9200_main_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  %mcfr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_rm9200_main, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcfr.i) #7
  %2 = ptrtoint ptr %mcfr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mcfr.i, align 4, !annotation !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %tobool.not.i = icmp eq i32 %parent_rate, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.clk_main_recalc_rate.exit_crit_edge

entry.clk_main_recalc_rate.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_main_recalc_rate.exit

do.end.i:                                         ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  %call1.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 36, ptr noundef nonnull %mcfr.i) #7
  %3 = ptrtoint ptr %mcfr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mcfr.i, align 4
  %and.i = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.end.i.clk_main_recalc_rate.exit_crit_edge, label %if.end4.i

do.end.i.clk_main_recalc_rate.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_main_recalc_rate.exit

if.end4.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = shl i32 %4, 11
  %div7.i = and i32 %5, 134215680
  br label %clk_main_recalc_rate.exit

clk_main_recalc_rate.exit:                        ; preds = %if.end4.i, %do.end.i.clk_main_recalc_rate.exit_crit_edge, %entry.clk_main_recalc_rate.exit_crit_edge
  %retval.0.i = phi i32 [ %div7.i, %if.end4.i ], [ %parent_rate, %entry.clk_main_recalc_rate.exit_crit_edge ], [ 0, %do.end.i.clk_main_recalc_rate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcfr.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_main_prepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %mcfr.i = alloca i32, align 4
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.clk_sam9x5_main, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status.i, align 4, !annotation !23
  %call.i11 = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #7
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status.i, align 4
  %and.i12 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool.i.not13 = icmp eq i32 %and.i12, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br i1 %tobool.i.not13, label %entry.do.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !28
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %status.i, align 4, !annotation !23
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #7
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status.i, align 4
  %and.i = and i32 %7, 65536
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br i1 %tobool.i.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcfr.i) #7
  %8 = ptrtoint ptr %mcfr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %mcfr.i, align 4, !annotation !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 518, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 518
  %spec.select.i.neg7.i = select i1 %cmp.i.i, i32 -1073741822, i32 -1
  %add.neg.i = sub i32 %spec.select.i.neg7.i, %9
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %call1.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 36, ptr noundef nonnull %mcfr.i) #7
  %11 = ptrtoint ptr %mcfr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mcfr.i, align 4
  %and.i10 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.clk_main_probe_frequency.exit_crit_edge

do.body.i.clk_main_probe_frequency.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_main_probe_frequency.exit

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %13 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp ult i32 %13, 3
  br i1 %cmp.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 6442440) #7
  br label %do.cond.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 30, i32 noundef 518, i32 noundef 2) #7
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.else.i, %if.then2.i
  %sub.i = add i32 %add.neg.i, %10
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.clk_main_probe_frequency.exit_crit_edge

do.cond.i.clk_main_probe_frequency.exit_crit_edge: ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_main_probe_frequency.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

clk_main_probe_frequency.exit:                    ; preds = %do.cond.i.clk_main_probe_frequency.exit_crit_edge, %do.body.i.clk_main_probe_frequency.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body.i.clk_main_probe_frequency.exit_crit_edge ], [ -110, %do.cond.i.clk_main_probe_frequency.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcfr.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_main_is_prepared(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_sam9x5_main, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status.i, align 4, !annotation !23
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #7
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  %and.i = lshr i32 %4, 16
  %and.i.lobit = and i32 %and.i, 1
  ret i32 %and.i.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_main_save_context(ptr nocapture noundef %hw) #4 align 64 {
entry:
  %status.i8 = alloca i32, align 4
  %mor.i = alloca i32, align 4
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1.i = getelementptr inbounds %struct.clk_main_rc_osc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mor.i) #7
  %2 = ptrtoint ptr %mor.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mor.i, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %status.i, align 4, !annotation !23
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %mor.i) #7
  %call2.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #7
  %4 = ptrtoint ptr %mor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mor.i, align 4
  %and.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.clk_main_rc_osc_is_prepared.exit_crit_edge, label %land.rhs.i

entry.clk_main_rc_osc_is_prepared.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_main_rc_osc_is_prepared.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status.i, align 4
  %and3.i = lshr i32 %7, 17
  %and3.lobit.i = and i32 %and3.i, 1
  br label %clk_main_rc_osc_is_prepared.exit

clk_main_rc_osc_is_prepared.exit:                 ; preds = %land.rhs.i, %entry.clk_main_rc_osc_is_prepared.exit_crit_edge
  %8 = phi i32 [ 0, %entry.clk_main_rc_osc_is_prepared.exit_crit_edge ], [ %and3.lobit.i, %land.rhs.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mor.i) #7
  %status = getelementptr inbounds %struct.clk_sam9x5_main, ptr %hw, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i8) #7
  %10 = ptrtoint ptr %status.i8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %status.i8, align 4, !annotation !23
  %11 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap1.i, align 4
  %call.i9 = call i32 @regmap_read(ptr noundef %12, i32 noundef 32, ptr noundef nonnull %status.i8) #7
  %13 = ptrtoint ptr %status.i8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status.i8, align 4
  %and.i10 = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp ne i32 %and.i10, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i8) #7
  %conv = zext i1 %tobool.not.i11 to i32
  %parent = getelementptr inbounds %struct.clk_sam9x5_main, ptr %hw, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %parent, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_sam9x5_main_restore_context(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.clk_sam9x5_main, ptr %hw, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent, align 4
  %conv = trunc i32 %1 to i8
  %call = tail call i32 @clk_sam9x5_main_set_parent(ptr noundef %hw, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.clk_sam9x5_main, ptr %hw, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @clk_sam9x5_main_prepare(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_main_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  %mcfr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_sam9x5_main, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcfr.i) #7
  %2 = ptrtoint ptr %mcfr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mcfr.i, align 4, !annotation !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %tobool.not.i = icmp eq i32 %parent_rate, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.clk_main_recalc_rate.exit_crit_edge

entry.clk_main_recalc_rate.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_main_recalc_rate.exit

do.end.i:                                         ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  %call1.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 36, ptr noundef nonnull %mcfr.i) #7
  %3 = ptrtoint ptr %mcfr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mcfr.i, align 4
  %and.i = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.end.i.clk_main_recalc_rate.exit_crit_edge, label %if.end4.i

do.end.i.clk_main_recalc_rate.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_main_recalc_rate.exit

if.end4.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = shl i32 %4, 11
  %div7.i = and i32 %5, 134215680
  br label %clk_main_recalc_rate.exit

clk_main_recalc_rate.exit:                        ; preds = %if.end4.i, %do.end.i.clk_main_recalc_rate.exit_crit_edge, %entry.clk_main_recalc_rate.exit_crit_edge
  %retval.0.i = phi i32 [ %div7.i, %if.end4.i ], [ %parent_rate, %entry.clk_main_recalc_rate.exit_crit_edge ], [ 0, %do.end.i.clk_main_recalc_rate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcfr.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_main_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.clk_sam9x5_main, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp2) #7
  %2 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp2, align 4, !annotation !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %index)
  %cmp = icmp ugt i8 %index, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %tmp2) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %cond = icmp eq i8 %index, 0
  %3 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp2, align 4
  %and9 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %cond, label %land.lhs.true8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool10.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true8:                                   ; preds = %if.end
  br i1 %tobool10.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end14_crit_edge

land.lhs.true8.if.end14_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true8.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge
  %storemerge = phi i32 [ 16777216, %land.lhs.true.if.end14_crit_edge ], [ 0, %land.lhs.true8.if.end14_crit_edge ]
  %5 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge, ptr %tmp2, align 4
  %or = or i32 %storemerge, 3604480
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 32, i32 noundef 33488896, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %status.i, align 4, !annotation !23
  %call.i2930 = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #7
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status.i, align 4
  %and.i31 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31)
  %tobool.i.not32 = icmp eq i32 %and.i31, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br i1 %tobool.i.not32, label %if.end14.do.end_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %if.end14.do.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %status.i, align 4, !annotation !23
  %call.i29 = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #7
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status.i, align 4
  %and.i = and i32 %11, 65536
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br i1 %tobool.i.not, label %do.end.do.end_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

cleanup:                                          ; preds = %do.end.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true8.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_sam9x5_main_get_parent(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !23
  %regmap = getelementptr inbounds %struct.clk_sam9x5_main, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 32, ptr noundef nonnull %status) #7
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %conv = zext i1 %tobool.not to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i8 %conv
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @main_osc_ops, !1, !"main_osc_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/clk-main.c", i32 143, i32 29}
!2 = !{ptr @main_rc_osc_ops, !3, !"main_rc_osc_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/at91/clk-main.c", i32 282, i32 29}
!4 = !{ptr @rm9200_main_ops, !5, !"rm9200_main_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/at91/clk-main.c", i32 391, i32 29}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/at91/clk-main.c", i32 358, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @clk_main_recalc_rate._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @clk_main_recalc_rate._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @sam9x5_main_ops, !13, !"sam9x5_main_ops", i1 false, i1 false}
!13 = !{!"../drivers/clk/at91/clk-main.c", i32 532, i32 29}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{i64 2152653513}
!25 = !{i64 2152653355}
!26 = !{i64 2152660572}
!27 = !{i64 2152660414}
!28 = !{i64 2152677315}
!29 = !{i64 2152677157}
!30 = !{i64 2152681326}
!31 = !{i64 2152681168}
