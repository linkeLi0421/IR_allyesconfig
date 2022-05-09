; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-composite.c_pt.bc'
source_filename = "../drivers/clk/clk-composite.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clk_hw_register_composite\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_hw_register_composite\09\09\09\09"
module asm "\09.long\09__crc_clk_hw_register_composite\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_register_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_register_composite\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_register_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_register_composite\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_register_composite\09\09\09\09"
module asm "\09.long\09__crc_clk_register_composite\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_register_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_register_composite\22\09\09\09\09\09"
module asm "__kstrtabns_clk_register_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_hw_unregister_composite\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_hw_unregister_composite\09\09\09\09"
module asm "\09.long\09__crc_clk_hw_unregister_composite\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_unregister_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_unregister_composite\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_unregister_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_composite = type { %struct.clk_hw, %struct.clk_ops, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__kstrtab_clk_hw_register_composite = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_register_composite = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_register_composite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_register_composite to i32), ptr @__kstrtab_clk_hw_register_composite, ptr @__kstrtabns_clk_hw_register_composite }, section "___ksymtab_gpl+clk_hw_register_composite", align 4
@__kstrtab_clk_register_composite = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_register_composite = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_register_composite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_register_composite to i32), ptr @__kstrtab_clk_register_composite, ptr @__kstrtabns_clk_register_composite }, section "___ksymtab_gpl+clk_register_composite", align 4
@__kstrtab_clk_hw_unregister_composite = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_unregister_composite = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_unregister_composite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_unregister_composite to i32), ptr @__kstrtab_clk_hw_unregister_composite, ptr @__kstrtabns_clk_hw_unregister_composite }, section "___ksymtab_gpl+clk_hw_unregister_composite", align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/clk-composite.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: missing round_rate op is required\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.__clk_hw_register_composite = private unnamed_addr constant [28 x i8] c"__clk_hw_register_composite\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clk_composite_determine_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013clk: clk_composite_determine_rate function called, but no mux or rate callback set!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clk_composite_determine_rate\00", [35 x i8] zeroinitializer }, align 32
@clk_composite_determine_rate._entry_ptr = internal global ptr @clk_composite_determine_rate._entry, section ".printk_index", align 4
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"devm_clk_hw_release_composite\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 296, i32 5 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 143, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [31 x i8] c"../drivers/clk/clk-composite.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 455, i32 8 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_clk_hw_register_composite, ptr @__ksymtab_clk_hw_unregister_composite, ptr @__ksymtab_clk_register_composite, ptr @clk_composite_determine_rate._entry, ptr @clk_composite_determine_rate._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_composite_determine_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_hw_register_composite(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_names, i32 noundef %num_parents, ptr noundef %mux_hw, ptr noundef %mux_ops, ptr noundef %rate_hw, ptr noundef %rate_ops, ptr noundef %gate_hw, ptr noundef %gate_ops, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__clk_hw_register_composite(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_names, ptr noundef null, i32 noundef %num_parents, ptr noundef %mux_hw, ptr noundef %mux_ops, ptr noundef %rate_hw, ptr noundef %rate_ops, ptr noundef %gate_hw, ptr noundef %gate_ops, i32 noundef %flags)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__clk_hw_register_composite(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_names, ptr noundef %pdata, i32 noundef %num_parents, ptr noundef %mux_hw, ptr noundef %mux_ops, ptr noundef %rate_hw, ptr noundef %rate_ops, ptr noundef %gate_hw, ptr noundef %gate_ops, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %0 = getelementptr inbounds i8, ptr %init, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 136) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %flags3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %flags3, align 4
  %tobool4.not = icmp eq ptr %parent_names, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %parent_names6 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %5 = ptrtoint ptr %parent_names6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %parent_names, ptr %parent_names6, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %parent_data = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 3
  %6 = ptrtoint ptr %parent_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdata, ptr %parent_data, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %conv = trunc i32 %num_parents to i8
  %num_parents8 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %num_parents8, align 4
  %ops = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 1
  %tobool10.not = icmp eq ptr %mux_hw, null
  %tobool11.not = icmp eq ptr %mux_ops, null
  %or.cond = or i1 %tobool10.not, %tobool11.not
  br i1 %or.cond, label %if.end7.if.end28_crit_edge, label %if.then12

if.end7.if.end28_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then12:                                        ; preds = %if.end7
  %get_parent = getelementptr inbounds %struct.clk_ops, ptr %mux_ops, i32 0, i32 14
  %8 = ptrtoint ptr %get_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_parent, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.then12.err_crit_edge, label %if.end16

if.then12.err_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end16:                                         ; preds = %if.then12
  %mux_hw17 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %mux_hw17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mux_hw, ptr %mux_hw17, align 8
  %mux_ops18 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %mux_ops18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mux_ops, ptr %mux_ops18, align 4
  %get_parent19 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 1, i32 14
  %12 = ptrtoint ptr %get_parent19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @clk_composite_get_parent, ptr %get_parent19, align 4
  %set_parent = getelementptr inbounds %struct.clk_ops, ptr %mux_ops, i32 0, i32 13
  %13 = ptrtoint ptr %set_parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_parent, align 4
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %if.end16.if.end23_crit_edge, label %if.then21

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %set_parent22 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 1, i32 13
  %15 = ptrtoint ptr %set_parent22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @clk_composite_set_parent, ptr %set_parent22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end16.if.end23_crit_edge
  %determine_rate = getelementptr inbounds %struct.clk_ops, ptr %mux_ops, i32 0, i32 12
  %16 = ptrtoint ptr %determine_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %determine_rate, align 4
  %tobool24.not = icmp eq ptr %17, null
  br i1 %tobool24.not, label %if.end23.if.end28_crit_edge, label %if.then25

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %determine_rate26 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 1, i32 12
  %18 = ptrtoint ptr %determine_rate26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @clk_composite_determine_rate, ptr %determine_rate26, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23.if.end28_crit_edge, %if.end7.if.end28_crit_edge
  %tobool29.not = icmp eq ptr %rate_hw, null
  %tobool31.not = icmp eq ptr %rate_ops, null
  %or.cond206 = or i1 %tobool29.not, %tobool31.not
  br i1 %or.cond206, label %if.end28.if.end78_crit_edge, label %if.then32

if.end28.if.end78_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then32:                                        ; preds = %if.end28
  %recalc_rate = getelementptr inbounds %struct.clk_ops, ptr %rate_ops, i32 0, i32 10
  %19 = ptrtoint ptr %recalc_rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %recalc_rate, align 4
  %tobool33.not = icmp eq ptr %20, null
  br i1 %tobool33.not, label %if.then32.err_crit_edge, label %if.end36

if.then32.err_crit_edge:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end36:                                         ; preds = %if.then32
  %recalc_rate37 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 1, i32 10
  %21 = ptrtoint ptr %recalc_rate37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @clk_composite_recalc_rate, ptr %recalc_rate37, align 4
  %determine_rate38 = getelementptr inbounds %struct.clk_ops, ptr %rate_ops, i32 0, i32 12
  %22 = ptrtoint ptr %determine_rate38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %determine_rate38, align 4
  %tobool39.not = icmp eq ptr %23, null
  br i1 %tobool39.not, label %if.else42, label %if.end47.thread

if.else42:                                        ; preds = %if.end36
  %round_rate = getelementptr inbounds %struct.clk_ops, ptr %rate_ops, i32 0, i32 11
  %24 = ptrtoint ptr %round_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %round_rate, align 4
  %tobool43.not = icmp eq ptr %25, null
  br i1 %tobool43.not, label %if.else42.if.end47_crit_edge, label %if.then44

if.else42.if.end47_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then44:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #8
  %round_rate45 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 1, i32 11
  %26 = ptrtoint ptr %round_rate45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @clk_composite_round_rate, ptr %round_rate45, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.else42.if.end47_crit_edge
  %set_rate = getelementptr inbounds %struct.clk_ops, ptr %rate_ops, i32 0, i32 15
  %27 = ptrtoint ptr %set_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_rate, align 4
  %tobool48.not = icmp eq ptr %28, null
  br i1 %tobool48.not, label %if.end47.if.end75_crit_edge, label %lor.lhs.false.critedge

if.end47.if.end75_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.end47.thread:                                  ; preds = %if.end36
  %determine_rate41 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 1, i32 12
  %29 = ptrtoint ptr %determine_rate41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @clk_composite_determine_rate, ptr %determine_rate41, align 4
  %set_rate210 = getelementptr inbounds %struct.clk_ops, ptr %rate_ops, i32 0, i32 15
  %30 = ptrtoint ptr %set_rate210 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_rate210, align 4
  %tobool48.not211 = icmp eq ptr %31, null
  br i1 %tobool48.not211, label %if.end47.thread.if.end75_crit_edge, label %if.end47.thread.if.then54_crit_edge

if.end47.thread.if.then54_crit_edge:              ; preds = %if.end47.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

if.end47.thread.if.end75_crit_edge:               ; preds = %if.end47.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

lor.lhs.false.critedge:                           ; preds = %if.end47
  %32 = ptrtoint ptr %round_rate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %round_rate, align 4
  %tobool53.not = icmp eq ptr %33, null
  br i1 %tobool53.not, label %do.end, label %lor.lhs.false.critedge.if.then54_crit_edge

lor.lhs.false.critedge.if.then54_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

if.then54:                                        ; preds = %lor.lhs.false.critedge.if.then54_crit_edge, %if.end47.thread.if.then54_crit_edge
  %set_rate55 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 1, i32 15
  %34 = ptrtoint ptr %set_rate55 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @clk_composite_set_rate, ptr %set_rate55, align 8
  br label %if.end75

do.end:                                           ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 297, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.__clk_hw_register_composite) #6
  br label %if.end75

if.end75:                                         ; preds = %do.end, %if.then54, %if.end47.thread.if.end75_crit_edge, %if.end47.if.end75_crit_edge
  %rate_hw76 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %rate_hw76 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %rate_hw, ptr %rate_hw76, align 4
  %rate_ops77 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %rate_ops77 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %rate_ops, ptr %rate_ops77, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.end75, %if.end28.if.end78_crit_edge
  %brmerge = or i1 %or.cond, %tobool29.not
  %or.cond208 = or i1 %brmerge, %tobool31.not
  br i1 %or.cond208, label %if.end78.if.end94_crit_edge, label %if.then86

if.end78.if.end94_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then86:                                        ; preds = %if.end78
  %set_parent87 = getelementptr inbounds %struct.clk_ops, ptr %mux_ops, i32 0, i32 13
  %37 = ptrtoint ptr %set_parent87 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_parent87, align 4
  %tobool88.not = icmp eq ptr %38, null
  br i1 %tobool88.not, label %if.then86.if.end94_crit_edge, label %land.lhs.true89

if.then86.if.end94_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

land.lhs.true89:                                  ; preds = %if.then86
  %set_rate90 = getelementptr inbounds %struct.clk_ops, ptr %rate_ops, i32 0, i32 15
  %39 = ptrtoint ptr %set_rate90 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_rate90, align 4
  %tobool91.not = icmp eq ptr %40, null
  br i1 %tobool91.not, label %land.lhs.true89.if.end94_crit_edge, label %if.then92

land.lhs.true89.if.end94_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then92:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #8
  %set_rate_and_parent = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 1, i32 16
  %41 = ptrtoint ptr %set_rate_and_parent to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @clk_composite_set_rate_and_parent, ptr %set_rate_and_parent, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %land.lhs.true89.if.end94_crit_edge, %if.then86.if.end94_crit_edge, %if.end78.if.end94_crit_edge
  %tobool95.not = icmp eq ptr %gate_hw, null
  %tobool97.not = icmp eq ptr %gate_ops, null
  %or.cond209 = or i1 %tobool95.not, %tobool97.not
  br i1 %or.cond209, label %if.end94.if.end112_crit_edge, label %if.then98

if.end94.if.end112_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then98:                                        ; preds = %if.end94
  %is_enabled = getelementptr inbounds %struct.clk_ops, ptr %gate_ops, i32 0, i32 6
  %42 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %is_enabled, align 4
  %tobool99.not = icmp eq ptr %43, null
  br i1 %tobool99.not, label %if.then98.err_crit_edge, label %lor.lhs.false100

if.then98.err_crit_edge:                          ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

lor.lhs.false100:                                 ; preds = %if.then98
  %enable = getelementptr inbounds %struct.clk_ops, ptr %gate_ops, i32 0, i32 4
  %44 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %enable, align 4
  %tobool101.not = icmp eq ptr %45, null
  br i1 %tobool101.not, label %lor.lhs.false100.err_crit_edge, label %lor.lhs.false102

lor.lhs.false100.err_crit_edge:                   ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

lor.lhs.false102:                                 ; preds = %lor.lhs.false100
  %disable = getelementptr inbounds %struct.clk_ops, ptr %gate_ops, i32 0, i32 5
  %46 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %disable, align 4
  %tobool103.not = icmp eq ptr %47, null
  br i1 %tobool103.not, label %lor.lhs.false102.err_crit_edge, label %if.end106

lor.lhs.false102.err_crit_edge:                   ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end106:                                        ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #8
  %gate_hw107 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %gate_hw107 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %gate_hw, ptr %gate_hw107, align 8
  %gate_ops108 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 7
  %49 = ptrtoint ptr %gate_ops108 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %gate_ops, ptr %gate_ops108, align 4
  %is_enabled109 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 1, i32 6
  %50 = ptrtoint ptr %is_enabled109 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @clk_composite_is_enabled, ptr %is_enabled109, align 4
  %enable110 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 1, i32 4
  %51 = ptrtoint ptr %enable110 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @clk_composite_enable, ptr %enable110, align 4
  %disable111 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 1, i32 5
  %52 = ptrtoint ptr %disable111 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @clk_composite_disable, ptr %disable111, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.end106, %if.end94.if.end112_crit_edge
  %ops113 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %53 = ptrtoint ptr %ops113 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %ops, ptr %ops113, align 4
  %init115 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %init115 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %init, ptr %init115, align 8
  %call116 = call i32 @clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end120, label %if.then118

if.then118:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  %55 = inttoptr i32 %call116 to ptr
  br label %err

if.end120:                                        ; preds = %if.end112
  %mux_hw121 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %mux_hw121 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mux_hw121, align 8
  %tobool122.not = icmp eq ptr %57, null
  br i1 %tobool122.not, label %if.end120.if.end126_crit_edge, label %if.then123

if.end120.if.end126_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk, align 4
  %clk125 = getelementptr inbounds %struct.clk_hw, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %clk125 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %clk125, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %if.end120.if.end126_crit_edge
  %rate_hw127 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %rate_hw127 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rate_hw127, align 4
  %tobool128.not = icmp eq ptr %62, null
  br i1 %tobool128.not, label %if.end126.if.end133_crit_edge, label %if.then129

if.end126.if.end133_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end133

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  %clk130 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %clk130 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clk130, align 4
  %clk132 = getelementptr inbounds %struct.clk_hw, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %clk132 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %clk132, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then129, %if.end126.if.end133_crit_edge
  %gate_hw134 = getelementptr inbounds %struct.clk_composite, ptr %call7.i.i, i32 0, i32 4
  %66 = ptrtoint ptr %gate_hw134 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %gate_hw134, align 8
  %tobool135.not = icmp eq ptr %67, null
  br i1 %tobool135.not, label %if.end133.cleanup_crit_edge, label %if.then136

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then136:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  %clk137 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %clk137 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk137, align 4
  %clk139 = getelementptr inbounds %struct.clk_hw, ptr %67, i32 0, i32 1
  %70 = ptrtoint ptr %clk139 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %clk139, align 4
  br label %cleanup

err:                                              ; preds = %if.then118, %lor.lhs.false102.err_crit_edge, %lor.lhs.false100.err_crit_edge, %if.then98.err_crit_edge, %if.then32.err_crit_edge, %if.then12.err_crit_edge
  %hw.0 = phi ptr [ %55, %if.then118 ], [ inttoptr (i32 -22 to ptr), %if.then12.err_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then32.err_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false102.err_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false100.err_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then98.err_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then136, %if.end133.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %hw.0, %err ], [ %call7.i.i, %if.then136 ], [ %call7.i.i, %if.end133.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_hw_register_composite_pdata(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_data, i32 noundef %num_parents, ptr noundef %mux_hw, ptr noundef %mux_ops, ptr noundef %rate_hw, ptr noundef %rate_ops, ptr noundef %gate_hw, ptr noundef %gate_ops, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__clk_hw_register_composite(ptr noundef %dev, ptr noundef %name, ptr noundef null, ptr noundef %parent_data, i32 noundef %num_parents, ptr noundef %mux_hw, ptr noundef %mux_ops, ptr noundef %rate_hw, ptr noundef %rate_ops, ptr noundef %gate_hw, ptr noundef %gate_ops, i32 noundef %flags)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_register_composite(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_names, i32 noundef %num_parents, ptr noundef %mux_hw, ptr noundef %mux_ops, ptr noundef %rate_hw, ptr noundef %rate_ops, ptr noundef %gate_hw, ptr noundef %gate_ops, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @__clk_hw_register_composite(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_names, ptr noundef null, i32 noundef %num_parents, ptr noundef %mux_hw, ptr noundef %mux_ops, ptr noundef %rate_hw, ptr noundef %rate_ops, ptr noundef %gate_hw, ptr noundef %gate_ops, i32 noundef %flags) #6
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_register_composite_pdata(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_data, i32 noundef %num_parents, ptr noundef %mux_hw, ptr noundef %mux_ops, ptr noundef %rate_hw, ptr noundef %rate_ops, ptr noundef %gate_hw, ptr noundef %gate_ops, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @__clk_hw_register_composite(ptr noundef %dev, ptr noundef %name, ptr noundef null, ptr noundef %parent_data, i32 noundef %num_parents, ptr noundef %mux_hw, ptr noundef %mux_ops, ptr noundef %rate_hw, ptr noundef %rate_ops, ptr noundef %gate_hw, ptr noundef %gate_ops, i32 noundef %flags) #6
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clk_unregister_composite(ptr noundef %clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__clk_get_hw(ptr noundef %clk) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister(ptr noundef %clk) #6
  tail call void @kfree(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clk_hw_unregister_composite(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_hw_unregister(ptr noundef %hw) #6
  tail call void @kfree(ptr noundef %hw) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_clk_hw_register_composite_pdata(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_data, i32 noundef %num_parents, ptr noundef %mux_hw, ptr noundef %mux_ops, ptr noundef %rate_hw, ptr noundef %rate_ops, ptr noundef %gate_hw, ptr noundef %gate_ops, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_hw_release_composite, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.__devm_clk_hw_register_composite.exit_crit_edge, label %if.end.i

entry.__devm_clk_hw_register_composite.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__devm_clk_hw_register_composite.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call fastcc ptr @__clk_hw_register_composite(ptr noundef %dev, ptr noundef %name, ptr noundef null, ptr noundef %parent_data, i32 noundef %num_parents, ptr noundef %mux_hw, ptr noundef %mux_ops, ptr noundef %rate_hw, ptr noundef %rate_ops, ptr noundef %gate_hw, ptr noundef %gate_ops, i32 noundef %flags) #6
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2.i, ptr %call.i, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  br label %__devm_clk_hw_register_composite.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @devres_free(ptr noundef nonnull %call.i) #6
  br label %__devm_clk_hw_register_composite.exit

__devm_clk_hw_register_composite.exit:            ; preds = %if.else.i, %if.then4.i, %entry.__devm_clk_hw_register_composite.exit_crit_edge
  %retval.0.i = phi ptr [ %call2.i, %if.else.i ], [ %call2.i, %if.then4.i ], [ inttoptr (i32 -12 to ptr), %entry.__devm_clk_hw_register_composite.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_composite_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mux_ops1 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %mux_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux_ops1, align 4
  %mux_hw2 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %mux_hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux_hw2, align 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.clk_hw, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %clk1.i, align 4
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %3, align 4
  %get_parent = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %get_parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_parent, align 4
  %call = tail call zeroext i8 %11(ptr noundef %3) #6
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_composite_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mux_ops1 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %mux_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux_ops1, align 4
  %mux_hw2 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %mux_hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux_hw2, align 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.clk_hw, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %clk1.i, align 4
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %3, align 4
  %set_parent = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %set_parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_parent, align 4
  %call = tail call i32 %11(ptr noundef %3, i8 noundef zeroext %index) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_composite_determine_rate(ptr noundef %hw, ptr noundef %req) #0 align 64 {
entry:
  %tmp_req = alloca %struct.clk_rate_request, align 4
  %tmp_req27 = alloca %struct.clk_rate_request, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_ops1 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %rate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_ops1, align 4
  %mux_ops2 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %mux_ops2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux_ops2, align 4
  %rate_hw3 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %rate_hw3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rate_hw3, align 4
  %mux_hw4 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %mux_hw4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mux_hw4, align 4
  %tobool.not = icmp eq ptr %5, null
  %tobool5.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %entry.if.else67_crit_edge, label %land.lhs.true6

entry.if.else67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else67

land.lhs.true6:                                   ; preds = %entry
  %determine_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %determine_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %determine_rate, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %lor.lhs.false, label %land.lhs.true9

lor.lhs.false:                                    ; preds = %land.lhs.true6
  %round_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %round_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %round_rate, align 4
  %tobool8.not = icmp eq ptr %11, null
  %tobool10.not = icmp eq ptr %7, null
  %or.cond149 = select i1 %tobool8.not, i1 true, i1 %tobool10.not
  %tobool12.not = icmp eq ptr %3, null
  %or.cond150 = select i1 %or.cond149, i1 true, i1 %tobool12.not
  br i1 %or.cond150, label %lor.lhs.false.land.lhs.true61_crit_edge, label %lor.lhs.false.land.lhs.true13_crit_edge

lor.lhs.false.land.lhs.true13_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true13

lor.lhs.false.land.lhs.true61_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true61

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %tobool10.not.old = icmp eq ptr %7, null
  %tobool12.not.old = icmp eq ptr %3, null
  %or.cond151 = select i1 %tobool10.not.old, i1 true, i1 %tobool12.not.old
  br i1 %or.cond151, label %land.lhs.true9.land.lhs.true61_crit_edge, label %land.lhs.true9.land.lhs.true13_crit_edge

land.lhs.true9.land.lhs.true13_crit_edge:         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true13

land.lhs.true9.land.lhs.true61_crit_edge:         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true61

land.lhs.true13:                                  ; preds = %land.lhs.true9.land.lhs.true13_crit_edge, %lor.lhs.false.land.lhs.true13_crit_edge
  %set_parent = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %set_parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_parent, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %land.lhs.true13.land.lhs.true61_crit_edge, label %if.then

land.lhs.true13.land.lhs.true61_crit_edge:        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true61

if.then:                                          ; preds = %land.lhs.true13
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %best_parent_hw, align 4
  %call = tail call i32 @clk_hw_get_flags(ptr noundef %hw) #6
  %and = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %for.cond.preheader, label %if.then16

for.cond.preheader:                               ; preds = %if.then
  %call26191 = call i32 @clk_hw_get_num_parents(ptr noundef nonnull %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26191)
  %cmp192.not = icmp eq i32 %call26191, 0
  br i1 %cmp192.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %15 = getelementptr inbounds %struct.clk_rate_request, ptr %tmp_req27, i32 0, i32 3
  %16 = getelementptr inbounds %struct.clk_rate_request, ptr %tmp_req27, i32 0, i32 4
  %round_rate.i162 = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 11
  %best_parent_rate50 = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  br label %for.body

if.then16:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tmp_req) #6
  %17 = getelementptr inbounds %struct.clk_rate_request, ptr %tmp_req, i32 0, i32 3
  %18 = getelementptr inbounds %struct.clk_rate_request, ptr %tmp_req, i32 0, i32 4
  %19 = call ptr @memcpy(ptr %tmp_req, ptr %req, i32 12)
  %call17 = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %7) #6
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call17, ptr %18, align 4
  %call.i = tail call i32 @clk_hw_get_rate(ptr noundef %call17) #6
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i, ptr %17, align 4
  %22 = ptrtoint ptr %determine_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %determine_rate, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i, label %clk_composite_determine_rate_for_parent.exit

if.end.i:                                         ; preds = %if.then16
  %round_rate.i = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %round_rate.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %round_rate.i, align 4
  %26 = ptrtoint ptr %tmp_req to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tmp_req, align 4
  %call5.i = call i32 %25(ptr noundef nonnull %5, i32 noundef %27, ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %clk_composite_determine_rate_for_parent.exit.thread

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

clk_composite_determine_rate_for_parent.exit.thread: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %tmp_req to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call5.i, ptr %tmp_req, align 4
  br label %if.end

clk_composite_determine_rate_for_parent.exit:     ; preds = %if.then16
  %call2.i = call i32 %23(ptr noundef nonnull %5, ptr noundef nonnull %tmp_req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool19.not = icmp eq i32 %call2.i, 0
  br i1 %tobool19.not, label %clk_composite_determine_rate_for_parent.exit.if.end_crit_edge, label %clk_composite_determine_rate_for_parent.exit.cleanup_crit_edge

clk_composite_determine_rate_for_parent.exit.cleanup_crit_edge: ; preds = %clk_composite_determine_rate_for_parent.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

clk_composite_determine_rate_for_parent.exit.if.end_crit_edge: ; preds = %clk_composite_determine_rate_for_parent.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %clk_composite_determine_rate_for_parent.exit.if.end_crit_edge, %clk_composite_determine_rate_for_parent.exit.thread
  %29 = ptrtoint ptr %tmp_req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tmp_req, align 4
  %31 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %req, align 4
  %32 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %18, align 4
  %34 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %best_parent_hw, align 4
  %35 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %17, align 4
  %best_parent_rate24 = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %37 = ptrtoint ptr %best_parent_rate24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %best_parent_rate24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %clk_composite_determine_rate_for_parent.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2.i, %clk_composite_determine_rate_for_parent.exit.cleanup_crit_edge ], [ %call5.i, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tmp_req) #6
  br label %cleanup80

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0195 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %best_rate.0194 = phi i32 [ 0, %for.body.lr.ph ], [ %best_rate.2.ph, %for.inc.for.body_crit_edge ]
  %best_rate_diff.0193 = phi i32 [ -1, %for.body.lr.ph ], [ %best_rate_diff.2.ph, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tmp_req27) #6
  %38 = call ptr @memcpy(ptr %tmp_req27, ptr %req, i32 20)
  %call28 = call ptr @clk_hw_get_parent_by_index(ptr noundef nonnull %7, i32 noundef %i.0195) #6
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %for.body.for.inc_crit_edge, label %if.end31

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end31:                                         ; preds = %for.body
  %39 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call28, ptr %16, align 4
  %call.i156 = call i32 @clk_hw_get_rate(ptr noundef nonnull %call28) #6
  %40 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call.i156, ptr %15, align 4
  %41 = ptrtoint ptr %determine_rate to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %determine_rate, align 4
  %tobool.not.i159 = icmp eq ptr %42, null
  br i1 %tobool.not.i159, label %if.end.i165, label %clk_composite_determine_rate_for_parent.exit168

if.end.i165:                                      ; preds = %if.end31
  %43 = ptrtoint ptr %round_rate.i162 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %round_rate.i162, align 4
  %45 = ptrtoint ptr %tmp_req27 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tmp_req27, align 4
  %call5.i163 = call i32 %44(ptr noundef %5, i32 noundef %46, ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i163)
  %cmp.i164 = icmp slt i32 %call5.i163, 0
  br i1 %cmp.i164, label %if.end.i165.for.inc_crit_edge, label %clk_composite_determine_rate_for_parent.exit168.thread

if.end.i165.for.inc_crit_edge:                    ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

clk_composite_determine_rate_for_parent.exit168.thread: ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %tmp_req27 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call5.i163, ptr %tmp_req27, align 4
  br label %if.end35

clk_composite_determine_rate_for_parent.exit168:  ; preds = %if.end31
  %call2.i160 = call i32 %42(ptr noundef %5, ptr noundef nonnull %tmp_req27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i160)
  %tobool33.not = icmp eq i32 %call2.i160, 0
  br i1 %tobool33.not, label %clk_composite_determine_rate_for_parent.exit168.if.end35_crit_edge, label %clk_composite_determine_rate_for_parent.exit168.for.inc_crit_edge

clk_composite_determine_rate_for_parent.exit168.for.inc_crit_edge: ; preds = %clk_composite_determine_rate_for_parent.exit168
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

clk_composite_determine_rate_for_parent.exit168.if.end35_crit_edge: ; preds = %clk_composite_determine_rate_for_parent.exit168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.end35:                                         ; preds = %clk_composite_determine_rate_for_parent.exit168.if.end35_crit_edge, %clk_composite_determine_rate_for_parent.exit168.thread
  %48 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %req, align 4
  %50 = ptrtoint ptr %tmp_req27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tmp_req27, align 4
  %sub = sub i32 %49, %51
  %52 = call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %tobool41.not = icmp eq i32 %49, %51
  br i1 %tobool41.not, label %cleanup56, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.end35
  %53 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %best_parent_hw, align 4
  %tobool44.not = icmp eq ptr %54, null
  call void @__sanitizer_cov_trace_cmp4(i32 %best_rate_diff.0193, i32 %52)
  %cmp46 = icmp ugt i32 %best_rate_diff.0193, %52
  %or.cond152 = select i1 %tobool44.not, i1 true, i1 %cmp46
  br i1 %or.cond152, label %if.end52, label %lor.lhs.false42.for.inc_crit_edge

lor.lhs.false42.for.inc_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end52:                                         ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call28, ptr %best_parent_hw, align 4
  %56 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %15, align 4
  %58 = ptrtoint ptr %best_parent_rate50 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %best_parent_rate50, align 4
  br label %for.inc

cleanup56:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call28, ptr %best_parent_hw, align 4
  %60 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %15, align 4
  %62 = ptrtoint ptr %best_parent_rate50 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %best_parent_rate50, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tmp_req27) #6
  br label %cleanup80

for.inc:                                          ; preds = %if.end52, %lor.lhs.false42.for.inc_crit_edge, %clk_composite_determine_rate_for_parent.exit168.for.inc_crit_edge, %if.end.i165.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %best_rate_diff.2.ph = phi i32 [ %52, %if.end52 ], [ %best_rate_diff.0193, %clk_composite_determine_rate_for_parent.exit168.for.inc_crit_edge ], [ %best_rate_diff.0193, %for.body.for.inc_crit_edge ], [ %best_rate_diff.0193, %if.end.i165.for.inc_crit_edge ], [ %best_rate_diff.0193, %lor.lhs.false42.for.inc_crit_edge ]
  %best_rate.2.ph = phi i32 [ %51, %if.end52 ], [ %best_rate.0194, %clk_composite_determine_rate_for_parent.exit168.for.inc_crit_edge ], [ %best_rate.0194, %for.body.for.inc_crit_edge ], [ %best_rate.0194, %if.end.i165.for.inc_crit_edge ], [ %best_rate.0194, %lor.lhs.false42.for.inc_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tmp_req27) #6
  %inc = add nuw i32 %i.0195, 1
  %call26 = call i32 @clk_hw_get_num_parents(ptr noundef nonnull %7) #6
  %cmp = icmp ult i32 %inc, %call26
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %best_rate.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %best_rate.2.ph, %for.inc.for.end_crit_edge ]
  %63 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %best_rate.0.lcssa, ptr %req, align 4
  br label %cleanup80

land.lhs.true61:                                  ; preds = %land.lhs.true13.land.lhs.true61_crit_edge, %land.lhs.true9.land.lhs.true61_crit_edge, %lor.lhs.false.land.lhs.true61_crit_edge
  %64 = ptrtoint ptr %determine_rate to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %determine_rate, align 4
  %tobool63.not = icmp eq ptr %65, null
  br i1 %tobool63.not, label %land.lhs.true61.if.else67_crit_edge, label %if.then64

land.lhs.true61.if.else67_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else67

if.then64:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #8
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %66 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.clk_hw, ptr %5, i32 0, i32 1
  %68 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %clk1.i, align 4
  %69 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw, align 4
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %5, align 4
  %72 = ptrtoint ptr %determine_rate to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %determine_rate, align 4
  %call66 = tail call i32 %73(ptr noundef nonnull %5, ptr noundef %req) #6
  br label %cleanup80

if.else67:                                        ; preds = %land.lhs.true61.if.else67_crit_edge, %entry.if.else67_crit_edge
  %tobool68.not = icmp eq ptr %7, null
  %tobool70.not = icmp eq ptr %3, null
  %or.cond154 = select i1 %tobool68.not, i1 true, i1 %tobool70.not
  br i1 %or.cond154, label %if.else67.do.end_crit_edge, label %land.lhs.true71

if.else67.do.end_crit_edge:                       ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true71:                                  ; preds = %if.else67
  %determine_rate72 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 12
  %74 = ptrtoint ptr %determine_rate72 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %determine_rate72, align 4
  %tobool73.not = icmp eq ptr %75, null
  br i1 %tobool73.not, label %land.lhs.true71.do.end_crit_edge, label %if.then74

land.lhs.true71.do.end_crit_edge:                 ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then74:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  %clk.i169 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %76 = ptrtoint ptr %clk.i169 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clk.i169, align 4
  %clk1.i170 = getelementptr inbounds %struct.clk_hw, ptr %7, i32 0, i32 1
  %78 = ptrtoint ptr %clk1.i170 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %clk1.i170, align 4
  %79 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw, align 4
  %81 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %7, align 4
  %82 = ptrtoint ptr %determine_rate72 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %determine_rate72, align 4
  %call76 = tail call i32 %83(ptr noundef nonnull %7, ptr noundef %req) #6
  br label %cleanup80

do.end:                                           ; preds = %land.lhs.true71.do.end_crit_edge, %if.else67.do.end_crit_edge
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %cleanup80

cleanup80:                                        ; preds = %do.end, %if.then74, %if.then64, %for.end, %cleanup56, %cleanup
  %retval.3 = phi i32 [ %retval.0, %cleanup ], [ 0, %cleanup56 ], [ 0, %for.end ], [ %call66, %if.then64 ], [ %call76, %if.then74 ], [ -22, %do.end ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_composite_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_ops1 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %rate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_ops1, align 4
  %rate_hw2 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %rate_hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rate_hw2, align 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.clk_hw, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %clk1.i, align 4
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %3, align 4
  %recalc_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %recalc_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %recalc_rate, align 4
  %call = tail call i32 %11(ptr noundef %3, i32 noundef %parent_rate) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_composite_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_ops1 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %rate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_ops1, align 4
  %rate_hw2 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %rate_hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rate_hw2, align 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.clk_hw, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %clk1.i, align 4
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %3, align 4
  %round_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %round_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %round_rate, align 4
  %call = tail call i32 %11(ptr noundef %3, i32 noundef %rate, ptr noundef %prate) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_composite_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_ops1 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %rate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_ops1, align 4
  %rate_hw2 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %rate_hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rate_hw2, align 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.clk_hw, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %clk1.i, align 4
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %3, align 4
  %set_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %set_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_rate, align 4
  %call = tail call i32 %11(ptr noundef %3, i32 noundef %rate, i32 noundef %parent_rate) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_composite_set_rate_and_parent(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_ops1 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %rate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_ops1, align 4
  %mux_ops2 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %mux_ops2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux_ops2, align 4
  %rate_hw3 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %rate_hw3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rate_hw3, align 4
  %mux_hw4 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %mux_hw4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mux_hw4, align 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.clk_hw, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %clk1.i, align 4
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %5, align 4
  %14 = load ptr, ptr %clk.i, align 4
  %clk1.i30 = getelementptr inbounds %struct.clk_hw, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %clk1.i30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %clk1.i30, align 4
  %16 = load ptr, ptr %hw, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %7, align 4
  %recalc_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %recalc_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %recalc_rate, align 4
  %call = tail call i32 %19(ptr noundef %5, i32 noundef %parent_rate) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %rate)
  %cmp = icmp ugt i32 %call, %rate
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %set_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %set_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_rate, align 4
  %call5 = tail call i32 %21(ptr noundef %5, i32 noundef %rate, i32 noundef %parent_rate) #6
  %set_parent = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 13
  %22 = ptrtoint ptr %set_parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_parent, align 4
  %call6 = tail call i32 %23(ptr noundef %7, i8 noundef zeroext %index) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %set_parent7 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 13
  %24 = ptrtoint ptr %set_parent7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_parent7, align 4
  %call8 = tail call i32 %25(ptr noundef %7, i8 noundef zeroext %index) #6
  %set_rate9 = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %set_rate9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_rate9, align 4
  %call10 = tail call i32 %27(ptr noundef %5, i32 noundef %rate, i32 noundef %parent_rate) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_composite_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gate_ops1 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %gate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gate_ops1, align 4
  %gate_hw2 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %gate_hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gate_hw2, align 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.clk_hw, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %clk1.i, align 4
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %3, align 4
  %is_enabled = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %is_enabled, align 4
  %call = tail call i32 %11(ptr noundef %3) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_composite_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gate_ops1 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %gate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gate_ops1, align 4
  %gate_hw2 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %gate_hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gate_hw2, align 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.clk_hw, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %clk1.i, align 4
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %3, align 4
  %enable = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enable, align 4
  %call = tail call i32 %11(ptr noundef %3) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_composite_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gate_ops1 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %gate_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gate_ops1, align 4
  %gate_hw2 = getelementptr inbounds %struct.clk_composite, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %gate_hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gate_hw2, align 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr inbounds %struct.clk_hw, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %clk1.i, align 4
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %3, align 4
  %disable = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable, align 4
  tail call void %11(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_clk_hw_release_composite(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @clk_hw_unregister(ptr noundef %1) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_clk_hw_register_composite, !1, !"__ksymtab_clk_hw_register_composite", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-composite.c", i32 361, i32 1}
!2 = !{ptr @__ksymtab_clk_register_composite, !3, !"__ksymtab_clk_register_composite", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-composite.c", i32 394, i32 1}
!4 = !{ptr @__ksymtab_clk_hw_unregister_composite, !5, !"__ksymtab_clk_hw_unregister_composite", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-composite.c", i32 438, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-composite.c", i32 296, i32 5}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.__clk_hw_register_composite, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-composite.c", i32 143, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @clk_composite_determine_rate._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @clk_composite_determine_rate._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/clk-composite.c", i32 455, i32 8}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
