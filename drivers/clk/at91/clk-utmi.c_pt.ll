; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/clk-utmi.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-utmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_utmi = type { %struct.clk_hw, ptr, ptr, %struct.at91_clk_pms }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }

@utmi_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_utmi_prepare, ptr @clk_utmi_unprepare, ptr @clk_utmi_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_utmi_save_context, ptr @clk_utmi_restore_context, ptr @clk_utmi_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sama7g5_utmi_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_utmi_sama7g5_prepare, ptr null, ptr @clk_utmi_sama7g5_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_utmi_sama7g5_save_context, ptr @clk_utmi_sama7g5_restore_context, ptr @clk_utmi_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clk_utmi_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013UTMICK: unsupported mainck rate\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_utmi_prepare\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/at91/clk-utmi.c\00", [36 x i8] zeroinitializer }, align 32
@clk_utmi_prepare._entry_ptr = internal global ptr @clk_utmi_prepare._entry, section ".printk_index", align 4
@clk_utmi_prepare._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013UTMICK: sfr node required\0A\00", [35 x i8] zeroinitializer }, align 32
@clk_utmi_prepare._entry_ptr.5 = internal global ptr @clk_utmi_prepare._entry.3, section ".printk_index", align 4
@clk_utmi_sama7g5_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013UTMICK: unsupported main_xtal rate\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clk_utmi_sama7g5_prepare\00", [39 x i8] zeroinitializer }, align 32
@clk_utmi_sama7g5_prepare._entry_ptr = internal global ptr @clk_utmi_sama7g5_prepare._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 12000000, i64 16000000, i64 24000000, i64 48000000]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 16000000, i64 20000000, i64 24000000, i64 32000000]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 16000000, i64 20000000, i64 24000000, i64 32000000]
@___asan_gen_.12 = private unnamed_addr constant [9 x i8] c"utmi_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 134, i32 29 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"sama7g5_utmi_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 272, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 75, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 83, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [31 x i8] c"../drivers/clk/at91/clk-utmi.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 210, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @clk_utmi_prepare._entry, ptr @clk_utmi_prepare._entry.3, ptr @clk_utmi_prepare._entry_ptr, ptr @clk_utmi_prepare._entry_ptr.5, ptr @clk_utmi_sama7g5_prepare._entry, ptr @clk_utmi_sama7g5_prepare._entry_ptr, ptr @utmi_ops, ptr @sama7g5_utmi_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utmi_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama7g5_utmi_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_utmi_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_utmi_prepare._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_utmi_sama7g5_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_utmi(ptr noundef %regmap_pmc, ptr noundef %regmap_sfr, ptr noundef %name, ptr noundef %parent_name) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @at91_clk_register_utmi_internal(ptr noundef %regmap_pmc, ptr noundef %regmap_sfr, ptr noundef %name, ptr noundef %parent_name, ptr noundef nonnull @utmi_ops, i32 noundef 1) #10
  ret ptr %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @at91_clk_register_utmi_internal(ptr noundef %regmap_pmc, ptr noundef %regmap_sfr, ptr noundef %name, ptr noundef %parent_name, ptr noundef %ops, i32 noundef %flags) unnamed_addr #0 section ".init.text" align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 36) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ops, ptr %ops3, align 4
  %6 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent_name.addr, align 4
  %tobool4.not = icmp eq ptr %7, null
  %parent_name.addr. = select i1 %tobool4.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %8 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool5.not = icmp ne ptr %7, null
  %conv = zext i1 %tobool5.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %9 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %num_parents, align 4
  %flags7 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %10 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flags, ptr %flags7, align 4
  %init9 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %init9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %init, ptr %init9, align 8
  %regmap_pmc10 = getelementptr inbounds %struct.clk_utmi, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %regmap_pmc10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %regmap_pmc, ptr %regmap_pmc10, align 4
  %regmap_sfr11 = getelementptr inbounds %struct.clk_utmi, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %regmap_sfr11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %regmap_sfr, ptr %regmap_sfr11, align 8
  %call14 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.then16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %14 = inttoptr i32 %call14 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %if.then16 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_sama7g5_register_utmi(ptr noundef %regmap_pmc, ptr noundef %name, ptr noundef %parent_name) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @at91_clk_register_utmi_internal(ptr noundef %regmap_pmc, ptr noundef null, ptr noundef %name, ptr noundef %parent_name, ptr noundef nonnull @sama7g5_utmi_ops, i32 noundef 0) #10
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_utmi_prepare(ptr noundef %hw) #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #7
  %call1 = tail call i32 @clk_hw_get_rate(ptr noundef %call) #7
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %entry.cleanup.sink.split_crit_edge [
    i32 12000000, label %sw.epilog.thread
    i32 16000000, label %entry.sw.epilog_crit_edge
    i32 24000000, label %sw.bb3
    i32 48000000, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %entry.sw.epilog_crit_edge
  %utmi_ref_clk_freq.0 = phi i32 [ 3, %sw.bb4 ], [ 2, %sw.bb3 ], [ 1, %entry.sw.epilog_crit_edge ]
  %regmap_sfr = getelementptr inbounds %struct.clk_utmi, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %regmap_sfr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap_sfr, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %sw.epilog.cleanup.sink.split_crit_edge, label %sw.epilog.if.then_crit_edge

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.epilog.thread:                                 ; preds = %entry
  %regmap_sfr43 = getelementptr inbounds %struct.clk_utmi, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %regmap_sfr43 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap_sfr43, align 4
  %tobool.not44 = icmp eq ptr %4, null
  br i1 %tobool.not44, label %sw.epilog.thread.if.end16_crit_edge, label %sw.epilog.thread.if.then_crit_edge

sw.epilog.thread.if.then_crit_edge:               ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.epilog.thread.if.end16_crit_edge:              ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then:                                          ; preds = %sw.epilog.thread.if.then_crit_edge, %sw.epilog.if.then_crit_edge
  %5 = phi ptr [ %4, %sw.epilog.thread.if.then_crit_edge ], [ %2, %sw.epilog.if.then_crit_edge ]
  %utmi_ref_clk_freq.046 = phi i32 [ 0, %sw.epilog.thread.if.then_crit_edge ], [ %utmi_ref_clk_freq.0, %sw.epilog.if.then_crit_edge ]
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %5, i32 noundef 48, i32 noundef 3, i32 noundef %utmi_ref_clk_freq.046, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then, %sw.epilog.thread.if.end16_crit_edge
  %regmap_pmc = getelementptr inbounds %struct.clk_utmi, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %regmap_pmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_pmc, align 4
  %call.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 28, i32 noundef 32571392, i32 noundef 32571392, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %8 = ptrtoint ptr %regmap_pmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_pmc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %status.i, align 4, !annotation !28
  %call.i4048 = call i32 @regmap_read(ptr noundef %9, i32 noundef 104, ptr noundef nonnull %status.i) #7
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status.i, align 4
  %and.i49 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool.i.not50 = icmp eq i32 %and.i49, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br i1 %tobool.i.not50, label %if.end16.do.end24_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16.do.end24_crit_edge:                      ; preds = %if.end16
  br label %do.end24

do.end24:                                         ; preds = %do.end24.do.end24_crit_edge, %if.end16.do.end24_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !30
  %13 = ptrtoint ptr %regmap_pmc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap_pmc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %status.i, align 4, !annotation !28
  %call.i40 = call i32 @regmap_read(ptr noundef %14, i32 noundef 104, ptr noundef nonnull %status.i) #7
  %16 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status.i, align 4
  %and.i = and i32 %17, 64
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br i1 %tobool.i.not, label %do.end24.do.end24_crit_edge, label %do.end24.cleanup_crit_edge

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end24.do.end24_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

cleanup.sink.split:                               ; preds = %sw.epilog.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.4.sink = phi ptr [ @.str, %entry.cleanup.sink.split_crit_edge ], [ @.str.4, %sw.epilog.cleanup.sink.split_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end24.cleanup_crit_edge, %if.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ 0, %do.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_utmi_unprepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_pmc = getelementptr inbounds %struct.clk_utmi, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap_pmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_pmc, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_utmi_is_prepared(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_pmc = getelementptr inbounds %struct.clk_utmi, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap_pmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_pmc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status.i, align 4, !annotation !28
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i) #7
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  %and.i = lshr i32 %4, 6
  %and.i.lobit = and i32 %and.i, 1
  ret i32 %and.i.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_utmi_save_context(ptr nocapture noundef %hw) #4 align 64 {
entry:
  %status.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_pmc.i = getelementptr inbounds %struct.clk_utmi, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap_pmc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_pmc.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i) #7
  %2 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status.i.i, align 4, !annotation !28
  %call.i.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %status.i.i) #7
  %3 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #7
  %and.i.i = lshr i32 %4, 6
  %and.i.lobit.i = and i32 %and.i.i, 1
  %status = getelementptr inbounds %struct.clk_utmi, ptr %hw, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i.lobit.i, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_utmi_restore_context(ptr noundef %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.clk_utmi, ptr %hw, i32 0, i32 3, i32 2
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
  %call = tail call i32 @clk_utmi_prepare(ptr noundef %hw)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_utmi_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 480000000
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_utmi_sama7g5_prepare(ptr noundef %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #7
  %call1 = tail call i32 @clk_hw_get_rate(ptr noundef %call) #7
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call1, label %do.end [
    i32 16000000, label %entry.sw.epilog_crit_edge
    i32 20000000, label %sw.bb2
    i32 24000000, label %sw.bb3
    i32 32000000, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 5, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  %regmap_pmc = getelementptr inbounds %struct.clk_utmi, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap_pmc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap_pmc, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 52, i32 noundef %val.0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_utmi_sama7g5_is_prepared(ptr noundef %hw) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !28
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #7
  %call1 = tail call i32 @clk_hw_get_rate(ptr noundef %call) #7
  %regmap_pmc = getelementptr inbounds %struct.clk_utmi, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap_pmc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap_pmc, align 4
  %call2 = call i32 @regmap_read(ptr noundef %2, i32 noundef 52, ptr noundef nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 7
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb7
    i32 5, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000000, i32 %call1)
  %cmp = icmp eq i32 %call1, 16000000
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %call1)
  %cmp4 = icmp eq i32 %call1, 20000000
  br i1 %cmp4, label %sw.bb3.cleanup_crit_edge, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call1)
  %cmp8 = icmp eq i32 %call1, 24000000
  br i1 %cmp8, label %sw.bb7.cleanup_crit_edge, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000000, i32 %call1)
  %cmp12 = icmp eq i32 %call1, 32000000
  br i1 %cmp12, label %sw.bb11.cleanup_crit_edge, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb11.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %sw.bb3.cleanup_crit_edge ], [ 1, %sw.bb7.cleanup_crit_edge ], [ 1, %sw.bb11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_utmi_sama7g5_save_context(ptr noundef %hw) #4 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !28
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #7
  %call1.i = tail call i32 @clk_hw_get_rate(ptr noundef %call.i) #7
  %regmap_pmc.i = getelementptr inbounds %struct.clk_utmi, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap_pmc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap_pmc.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 52, ptr noundef nonnull %val.i) #7
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %and.i = and i32 %4, 7
  %5 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %and.i, label %entry.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb7.i
    i32 5, label %sw.bb11.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000000, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 16000000
  br i1 %cmp.i, label %sw.bb.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_utmi_sama7g5_is_prepared.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %call1.i)
  %cmp4.i = icmp eq i32 %call1.i, 20000000
  br i1 %cmp4.i, label %sw.bb3.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge, label %sw.bb3.i.sw.epilog.i_crit_edge

sw.bb3.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb3.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge: ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_utmi_sama7g5_is_prepared.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call1.i)
  %cmp8.i = icmp eq i32 %call1.i, 24000000
  br i1 %cmp8.i, label %sw.bb7.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge, label %sw.bb7.i.sw.epilog.i_crit_edge

sw.bb7.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb7.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge: ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_utmi_sama7g5_is_prepared.exit

sw.bb11.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000000, i32 %call1.i)
  %cmp12.i = icmp eq i32 %call1.i, 32000000
  br i1 %cmp12.i, label %sw.bb11.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge, label %sw.bb11.i.sw.epilog.i_crit_edge

sw.bb11.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb11.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge: ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_utmi_sama7g5_is_prepared.exit

sw.epilog.i:                                      ; preds = %sw.bb11.i.sw.epilog.i_crit_edge, %sw.bb7.i.sw.epilog.i_crit_edge, %sw.bb3.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge
  br label %clk_utmi_sama7g5_is_prepared.exit

clk_utmi_sama7g5_is_prepared.exit:                ; preds = %sw.epilog.i, %sw.bb11.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge, %sw.bb7.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge, %sw.bb3.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge, %sw.bb.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ 1, %sw.bb.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge ], [ 1, %sw.bb3.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge ], [ 1, %sw.bb7.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge ], [ 1, %sw.bb11.i.clk_utmi_sama7g5_is_prepared.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %status = getelementptr inbounds %struct.clk_utmi, ptr %hw, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_utmi_sama7g5_restore_context(ptr noundef %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.clk_utmi, ptr %hw, i32 0, i32 3, i32 2
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
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #7
  %call1.i = tail call i32 @clk_hw_get_rate(ptr noundef %call.i) #7
  %2 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call1.i, label %do.end.i [
    i32 16000000, label %if.then.sw.epilog.i_crit_edge
    i32 20000000, label %sw.bb2.i
    i32 24000000, label %sw.bb3.i
    i32 32000000, label %sw.bb4.i
  ]

if.then.sw.epilog.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %if.end

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %if.then.sw.epilog.i_crit_edge
  %val.0.i = phi i32 [ 5, %sw.bb4.i ], [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 0, %if.then.sw.epilog.i_crit_edge ]
  %regmap_pmc.i = getelementptr inbounds %struct.clk_utmi, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap_pmc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap_pmc.i, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 52, i32 noundef %val.0.i) #7
  br label %if.end

if.end:                                           ; preds = %sw.epilog.i, %do.end.i, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @utmi_ops, !1, !"utmi_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/clk-utmi.c", i32 134, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/at91/clk-utmi.c", i32 75, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @clk_utmi_prepare._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @clk_utmi_prepare._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/at91/clk-utmi.c", i32 83, i32 3}
!10 = !{ptr @clk_utmi_prepare._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @clk_utmi_prepare._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @sama7g5_utmi_ops, !13, !"sama7g5_utmi_ops", i1 false, i1 false}
!13 = !{!"../drivers/clk/at91/clk-utmi.c", i32 272, i32 29}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/at91/clk-utmi.c", i32 210, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @clk_utmi_sama7g5_prepare._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @clk_utmi_sama7g5_prepare._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{i64 2152652006}
!30 = !{i64 2152651848}
