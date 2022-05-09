; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/pmc.c_pt.bc'
source_filename = "../drivers/clk/at91/pmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_at91_get_clk_range\22, \22a\22\09"
module asm "\09.weak\09__crc_of_at91_get_clk_range\09\09\09\09"
module asm "\09.long\09__crc_of_at91_get_clk_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_at91_get_clk_range:\09\09\09\09\09"
module asm "\09.asciz \09\22of_at91_get_clk_range\22\09\09\09\09\09"
module asm "__kstrtabns_of_at91_get_clk_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_range = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.pmc_data = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, [0 x ptr] }

@__kstrtab_of_at91_get_clk_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_at91_get_clk_range = external dso_local constant [0 x i8], align 1
@__ksymtab_of_at91_get_clk_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_at91_get_clk_range to i32), ptr @__kstrtab_of_at91_get_clk_range, ptr @__kstrtabns_of_at91_get_clk_range }, section "___ksymtab_gpl+of_at91_get_clk_range", align 4
@of_clk_hw_pmc_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: invalid type (%u) or index (%u)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"of_clk_hw_pmc_get\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/clk/at91/pmc.c\00", [41 x i8] zeroinitializer }, align 32
@of_clk_hw_pmc_get._entry_ptr = internal global ptr @of_clk_hw_pmc_get._entry, section ".printk_index", align 4
@__initcall__kmod_pmc__183_192_pmc_register_ops2 = internal global ptr @pmc_register_ops, section ".initcall2.init", align 4
@pmc_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel,sama5d2-securam\00", [42 x i8] zeroinitializer }, align 32
@at91_pmc_backup_suspend = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pmc_register_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s(): unable to map securam\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pmc_register_ops\00", [47 x i8] zeroinitializer }, align 32
@pmc_register_ops._entry_ptr = internal global ptr @pmc_register_ops._entry, section ".printk_index", align 4
@pmc_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @at91_pmc_suspend, ptr @at91_pmc_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 78, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"pmc_dt_ids\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 151, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 171, i32 43 }
@___asan_gen_.24 = private unnamed_addr constant [24 x i8] c"at91_pmc_backup_suspend\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 116, i32 22 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 183, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"pmc_syscore_ops\00", align 1
@___asan_gen_.37 = private constant [26 x i8] c"../drivers/clk/at91/pmc.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 146, i32 27 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__initcall__kmod_pmc__183_192_pmc_register_ops2, ptr @__ksymtab_of_at91_get_clk_range, ptr @of_clk_hw_pmc_get._entry, ptr @of_clk_hw_pmc_get._entry_ptr, ptr @pmc_register_ops._entry, ptr @pmc_register_ops._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pmc_dt_ids, ptr @.str.3, ptr @at91_pmc_backup_suspend, ptr @.str.4, ptr @.str.5, ptr @pmc_syscore_ops], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_clk_hw_pmc_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pmc_backup_suspend to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc_register_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_at91_get_clk_range(ptr noundef %np, ptr noundef %propname, ptr noundef writeonly %range) #0 align 64 {
entry:
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min) #7
  %0 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %min, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max) #7
  %1 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %max, align 4, !annotation !32
  %call = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef %propname, i32 noundef 0, ptr noundef nonnull %min) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef %propname, i32 noundef 1, ptr noundef nonnull %max) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %range, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min, align 4
  %4 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %range, align 4
  %5 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max, align 4
  %max8 = getelementptr inbounds %struct.clk_range, ptr %range, i32 0, i32 1
  %7 = ptrtoint ptr %max8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %max8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_clk_hw_pmc_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %arrayidx2 = getelementptr %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.do.end_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb9
    i32 3, label %sw.bb14
    i32 4, label %sw.bb19
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %6)
  %cmp = icmp ult i32 %3, %6
  br i1 %cmp, label %if.then, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %chws = getelementptr inbounds %struct.pmc_data, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chws, align 4
  %arrayidx3 = getelementptr ptr, ptr %8, i32 %3
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %nsystem = getelementptr inbounds %struct.pmc_data, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %nsystem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nsystem, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %12)
  %cmp5 = icmp ult i32 %3, %12
  br i1 %cmp5, label %if.then6, label %sw.bb4.do.end_crit_edge

sw.bb4.do.end_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then6:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %shws = getelementptr inbounds %struct.pmc_data, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %shws to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shws, align 4
  %arrayidx7 = getelementptr ptr, ptr %14, i32 %3
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %nperiph = getelementptr inbounds %struct.pmc_data, ptr %data, i32 0, i32 4
  %17 = ptrtoint ptr %nperiph to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nperiph, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %18)
  %cmp10 = icmp ult i32 %3, %18
  br i1 %cmp10, label %if.then11, label %sw.bb9.do.end_crit_edge

sw.bb9.do.end_crit_edge:                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then11:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %phws = getelementptr inbounds %struct.pmc_data, ptr %data, i32 0, i32 5
  %19 = ptrtoint ptr %phws to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phws, align 4
  %arrayidx12 = getelementptr ptr, ptr %20, i32 %3
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx12, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %ngck = getelementptr inbounds %struct.pmc_data, ptr %data, i32 0, i32 6
  %23 = ptrtoint ptr %ngck to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ngck, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %24)
  %cmp15 = icmp ult i32 %3, %24
  br i1 %cmp15, label %if.then16, label %sw.bb14.do.end_crit_edge

sw.bb14.do.end_crit_edge:                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then16:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  %ghws = getelementptr inbounds %struct.pmc_data, ptr %data, i32 0, i32 7
  %25 = ptrtoint ptr %ghws to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ghws, align 4
  %arrayidx17 = getelementptr ptr, ptr %26, i32 %3
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx17, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %npck = getelementptr inbounds %struct.pmc_data, ptr %data, i32 0, i32 8
  %29 = ptrtoint ptr %npck to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %npck, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %30)
  %cmp20 = icmp ult i32 %3, %30
  br i1 %cmp20, label %if.then21, label %sw.bb19.do.end_crit_edge

sw.bb19.do.end_crit_edge:                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then21:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %pchws = getelementptr inbounds %struct.pmc_data, ptr %data, i32 0, i32 9
  %31 = ptrtoint ptr %pchws to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pchws, align 4
  %arrayidx22 = getelementptr ptr, ptr %32, i32 %3
  %33 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx22, align 4
  br label %cleanup

do.end:                                           ; preds = %sw.bb19.do.end_crit_edge, %sw.bb14.do.end_crit_edge, %sw.bb9.do.end_crit_edge, %sw.bb4.do.end_crit_edge, %sw.bb.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then21, %if.then16, %if.then11, %if.then6, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %34, %if.then21 ], [ %28, %if.then16 ], [ %22, %if.then11 ], [ %16, %if.then6 ], [ %10, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pmc_data_allocate(i32 noundef %ncore, i32 noundef %nsystem, i32 noundef %nperiph, i32 noundef %ngck, i32 noundef %npck) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %nsystem, %ncore
  %add1 = add i32 %add, %nperiph
  %add2 = add i32 %add1, %ngck
  %add3 = add i32 %add2, %npck
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add3, i32 4) #7
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 40) #7
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ncore, ptr %call9.i.i, align 128
  %hwtable = getelementptr inbounds %struct.pmc_data, ptr %call9.i.i, i32 0, i32 10
  %chws = getelementptr inbounds %struct.pmc_data, ptr %call9.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %chws to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hwtable, ptr %chws, align 4
  %nsystem6 = getelementptr inbounds %struct.pmc_data, ptr %call9.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %nsystem6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %nsystem, ptr %nsystem6, align 8
  %add.ptr = getelementptr ptr, ptr %hwtable, i32 %ncore
  %shws = getelementptr inbounds %struct.pmc_data, ptr %call9.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %shws to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %shws, align 4
  %nperiph8 = getelementptr inbounds %struct.pmc_data, ptr %call9.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %nperiph8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %nperiph, ptr %nperiph8, align 16
  %add.ptr10 = getelementptr ptr, ptr %add.ptr, i32 %nsystem
  %phws = getelementptr inbounds %struct.pmc_data, ptr %call9.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %phws to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr10, ptr %phws, align 4
  %ngck11 = getelementptr inbounds %struct.pmc_data, ptr %call9.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %ngck11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ngck, ptr %ngck11, align 8
  %add.ptr13 = getelementptr ptr, ptr %add.ptr10, i32 %nperiph
  %ghws = getelementptr inbounds %struct.pmc_data, ptr %call9.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %ghws to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr13, ptr %ghws, align 4
  %npck14 = getelementptr inbounds %struct.pmc_data, ptr %call9.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %npck14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %npck, ptr %npck14, align 32
  %add.ptr16 = getelementptr ptr, ptr %add.ptr13, i32 %ngck
  %pchws = getelementptr inbounds %struct.pmc_data, ptr %call9.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %pchws to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr16, ptr %pchws, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pmc_register_ops() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @pmc_dt_ids, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call.i) #7
  tail call void @of_node_put(ptr noundef nonnull %call.i) #7
  br i1 %call1, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call4) #7
  tail call void @of_node_put(ptr noundef nonnull %call4) #7
  br i1 %call8, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %call11 = tail call ptr @of_iomap(ptr noundef nonnull %call4, i32 noundef 0) #7
  store ptr %call11, ptr @at91_pmc_backup_suspend, align 4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @register_syscore_ops(ptr noundef nonnull @pmc_syscore_ops) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -12, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end3.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_pmc_suspend() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @at91_pmc_backup_suspend, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %0) #7, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @clk_save_context() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_pmc_resume() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @at91_pmc_backup_suspend, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %0) #7, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_restore_context() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_save_context() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_restore_context() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__ksymtab_of_at91_get_clk_range, !1, !"__ksymtab_of_at91_get_clk_range", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/pmc.c", i32 45, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/at91/pmc.c", i32 78, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @of_clk_hw_pmc_get._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @of_clk_hw_pmc_get._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_pmc__183_192_pmc_register_ops2, !9, !"__initcall__kmod_pmc__183_192_pmc_register_ops2", i1 false, i1 false}
!9 = !{!"../drivers/clk/at91/pmc.c", i32 192, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/at91/pmc.c", i32 171, i32 43}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/at91/pmc.c", i32 183, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pmc_register_ops._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @pmc_register_ops._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @pmc_dt_ids, !18, !"pmc_dt_ids", i1 false, i1 false}
!18 = !{!"../drivers/clk/at91/pmc.c", i32 151, i32 34}
!19 = !{ptr @at91_pmc_backup_suspend, !20, !"at91_pmc_backup_suspend", i1 false, i1 false}
!20 = !{!"../drivers/clk/at91/pmc.c", i32 116, i32 22}
!21 = !{ptr @pmc_syscore_ops, !22, !"pmc_syscore_ops", i1 false, i1 false}
!22 = !{!"../drivers/clk/at91/pmc.c", i32 146, i32 27}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
!33 = !{i64 5020309}
