; ModuleID = '/llk/IR_all_yes/drivers/clk/renesas/clk-emev2.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-emev2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@__of_table_emev2_smu_clkdiv = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,emev2-smu-clkdiv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emev2_smu_clkdiv_init }, section "__clk_of_table", align 4
@__of_table_emev2_smu_gclk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,emev2-smu-gclk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emev2_smu_gclk_init }, section "__clk_of_table", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/renesas/clk-emev2.c\00", [32 x i8] zeroinitializer }, align 32
@smu_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@emev2_smu_clkdiv_init.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.1, ptr @.str.4, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_emev2\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"emev2_smu_clkdiv_init\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"## %s %pOFn %p\0A\00", [16 x i8] zeroinitializer }, align 32
@smu_id = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,emev2-smu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@emev2_smu_gclk_init.__UNIQUE_ID_ddebug176 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.6, ptr @.str.1, ptr @.str.4, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"emev2_smu_gclk_init\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 70, i32 6 }
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"smu_base\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 27, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 78, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 24, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [35 x i8] c"../drivers/clk/renesas/clk-emev2.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 96, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__of_table_emev2_smu_clkdiv, ptr @__of_table_emev2_smu_gclk, ptr @.str, ptr @.str.1, ptr @smu_base, ptr @lock, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @emev2_smu_clkdiv_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %reg = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !31
  %1 = getelementptr inbounds [2 x i32], ptr %reg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !31
  %call = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #3
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull %reg, i32 noundef 2, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end23, label %do.end, !prof !32

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end23:                                         ; preds = %entry
  %3 = load ptr, ptr @smu_base, align 4
  %tobool24.not = icmp eq ptr %3, null
  br i1 %tobool24.not, label %if.then25, label %if.end23.if.end26_crit_edge

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @emev2_smu_init() #6
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  %4 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %np, align 4
  %6 = load ptr, ptr @smu_base, align 4
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %conv = trunc i32 %10 to i8
  %call28 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %5, ptr noundef %call, i32 noundef 0, ptr noundef %add.ptr, i8 noundef zeroext %conv, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #3
  %call29 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call28) #3
  %full_name = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %11 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %full_name, align 4
  %call30 = call i32 @clk_register_clkdev(ptr noundef %call28, ptr noundef %12, ptr noundef null) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emev2_smu_clkdiv_init.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emev2_smu_clkdiv_init, %if.then41)) #3
          to label %cleanup [label %if.then41], !srcloc !33

if.then41:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @emev2_smu_clkdiv_init.__UNIQUE_ID_ddebug175, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %np, ptr noundef %call28) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end26, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @emev2_smu_gclk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %reg = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !31
  %1 = getelementptr inbounds [2 x i32], ptr %reg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !31
  %call = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #3
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull %reg, i32 noundef 2, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end23, label %do.end, !prof !32

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 88, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end23:                                         ; preds = %entry
  %3 = load ptr, ptr @smu_base, align 4
  %tobool24.not = icmp eq ptr %3, null
  br i1 %tobool24.not, label %if.then25, label %if.end23.if.end26_crit_edge

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @emev2_smu_init() #6
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  %4 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %np, align 4
  %6 = load ptr, ptr @smu_base, align 4
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %conv = trunc i32 %10 to i8
  %call28 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %5, ptr noundef %call, i32 noundef 0, ptr noundef %add.ptr, i8 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef nonnull @lock) #3
  %call29 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call28) #3
  %full_name = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %11 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %full_name, align 4
  %call30 = call i32 @clk_register_clkdev(ptr noundef %call28, ptr noundef %12, ptr noundef null) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emev2_smu_gclk_init.__UNIQUE_ID_ddebug176, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emev2_smu_gclk_init, %if.then41)) #3
          to label %cleanup [label %if.then41], !srcloc !33

if.then41:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @emev2_smu_gclk_init.__UNIQUE_ID_ddebug176, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, ptr noundef %np, ptr noundef %call28) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end26, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emev2_smu_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @smu_id, ptr noundef null) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !34

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #3, !srcloc !35
  unreachable

do.end9:                                          ; preds = %entry
  %call10 = tail call ptr @of_iomap(ptr noundef nonnull %call.i, i32 noundef 0) #3
  store ptr %call10, ptr @smu_base, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.body22, label %do.end30, !prof !34

do.body22:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 47, 0\0A.popsection", ""() #3, !srcloc !36
  unreachable

do.end30:                                         ; preds = %do.end9
  tail call void @of_node_put(ptr noundef nonnull %call.i) #3
  %0 = load ptr, ptr @smu_base, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %do.body3.i, label %emev2_smu_write.exit, !prof !34

do.body3.i:                                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !37
  unreachable

emev2_smu_write.exit:                             ; preds = %do.end30
  %add.ptr.i = getelementptr i8, ptr %0, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #3, !srcloc !38
  %1 = load ptr, ptr @smu_base, align 4
  %tobool.not.i33 = icmp eq ptr %1, null
  br i1 %tobool.not.i33, label %do.body3.i34, label %emev2_smu_write.exit36, !prof !34

do.body3.i34:                                     ; preds = %emev2_smu_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !37
  unreachable

emev2_smu_write.exit36:                           ; preds = %emev2_smu_write.exit
  %add.ptr.i35 = getelementptr i8, ptr %1, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 16777216) #3, !srcloc !38
  %2 = load ptr, ptr @smu_base, align 4
  %tobool.not.i37 = icmp eq ptr %2, null
  br i1 %tobool.not.i37, label %do.body3.i38, label %emev2_smu_write.exit40, !prof !34

do.body3.i38:                                     ; preds = %emev2_smu_write.exit36
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !37
  unreachable

emev2_smu_write.exit40:                           ; preds = %emev2_smu_write.exit36
  %add.ptr.i39 = getelementptr i8, ptr %2, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 33554432) #3, !srcloc !38
  %3 = load ptr, ptr @smu_base, align 4
  %tobool.not.i41 = icmp eq ptr %3, null
  br i1 %tobool.not.i41, label %do.body3.i42, label %emev2_smu_write.exit44, !prof !34

do.body3.i42:                                     ; preds = %emev2_smu_write.exit40
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !37
  unreachable

emev2_smu_write.exit44:                           ; preds = %emev2_smu_write.exit40
  %add.ptr.i43 = getelementptr i8, ptr %3, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 33554432) #3, !srcloc !38
  %4 = load ptr, ptr @smu_base, align 4
  %tobool.not.i45 = icmp eq ptr %4, null
  br i1 %tobool.not.i45, label %do.body3.i46, label %emev2_smu_write.exit48, !prof !34

do.body3.i46:                                     ; preds = %emev2_smu_write.exit44
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !37
  unreachable

emev2_smu_write.exit48:                           ; preds = %emev2_smu_write.exit44
  %add.ptr.i47 = getelementptr i8, ptr %4, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 33554432) #3, !srcloc !38
  %5 = load ptr, ptr @smu_base, align 4
  %tobool.not.i49 = icmp eq ptr %5, null
  br i1 %tobool.not.i49, label %do.body3.i50, label %emev2_smu_write.exit52, !prof !34

do.body3.i50:                                     ; preds = %emev2_smu_write.exit48
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !37
  unreachable

emev2_smu_write.exit52:                           ; preds = %emev2_smu_write.exit48
  %add.ptr.i51 = getelementptr i8, ptr %5, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 33554432) #3, !srcloc !38
  %6 = load ptr, ptr @smu_base, align 4
  %tobool.not.i53 = icmp eq ptr %6, null
  br i1 %tobool.not.i53, label %do.body3.i54, label %emev2_smu_write.exit56, !prof !34

do.body3.i54:                                     ; preds = %emev2_smu_write.exit52
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !37
  unreachable

emev2_smu_write.exit56:                           ; preds = %emev2_smu_write.exit52
  %add.ptr.i55 = getelementptr i8, ptr %6, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 16777216) #3, !srcloc !38
  %7 = load ptr, ptr @smu_base, align 4
  %tobool.not.i57 = icmp eq ptr %7, null
  br i1 %tobool.not.i57, label %do.body3.i58, label %emev2_smu_write.exit60, !prof !34

do.body3.i58:                                     ; preds = %emev2_smu_write.exit56
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !37
  unreachable

emev2_smu_write.exit60:                           ; preds = %emev2_smu_write.exit56
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i59 = getelementptr i8, ptr %7, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 16777216) #3, !srcloc !38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !14, !16, !18, !19, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__of_table_emev2_smu_clkdiv, !1, !"__of_table_emev2_smu_clkdiv", i1 false, i1 false}
!1 = !{!"../drivers/clk/renesas/clk-emev2.c", i32 80, i32 1}
!2 = !{ptr @__of_table_emev2_smu_gclk, !3, !"__of_table_emev2_smu_gclk", i1 false, i1 false}
!3 = !{!"../drivers/clk/renesas/clk-emev2.c", i32 98, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/renesas/clk-emev2.c", i32 70, i32 6}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/clk/renesas/clk-emev2.c", i32 78, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @emev2_smu_clkdiv_init.__UNIQUE_ID_ddebug175, !8, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!12 = !{ptr @smu_base, !13, !"smu_base", i1 false, i1 false}
!13 = !{!"../drivers/clk/renesas/clk-emev2.c", i32 27, i32 22}
!14 = !{ptr @smu_id, !15, !"smu_id", i1 false, i1 false}
!15 = !{!"../drivers/clk/renesas/clk-emev2.c", i32 35, i32 34}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/renesas/clk-emev2.c", i32 24, i32 8}
!18 = !{ptr @lock, !17, !"lock", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/renesas/clk-emev2.c", i32 96, i32 2}
!21 = !{ptr @emev2_smu_gclk_init.__UNIQUE_ID_ddebug176, !20, !"__UNIQUE_ID_ddebug176", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2148917616, i64 2148917621, i64 2148917634, i64 2148917678, i64 2148917712, i64 2148917733}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2152527028, i64 2152527523, i64 2152527065, i64 2152527121, i64 2152527155, i64 2152527179, i64 2152527220, i64 2152527241, i64 2152527269, i64 2152527303}
!36 = !{i64 2152528635, i64 2152529130, i64 2152528672, i64 2152528728, i64 2152528762, i64 2152528786, i64 2152528827, i64 2152528848, i64 2152528876, i64 2152528910}
!37 = !{i64 2152524971, i64 2152525466, i64 2152525008, i64 2152525064, i64 2152525098, i64 2152525122, i64 2152525163, i64 2152525184, i64 2152525212, i64 2152525246}
!38 = !{i64 4949153}
