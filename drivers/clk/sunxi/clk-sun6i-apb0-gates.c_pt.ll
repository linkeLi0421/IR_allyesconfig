; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi/clk-sun6i-apb0-gates.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sun6i-apb0-gates.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.gates_data = type { [1 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.clk_onecell_data = type { ptr, i32 }

@__initcall__kmod_clk_sun6i_apb0_gates__170_99_sun6i_a31_apb0_gates_clk_driver_init6 = internal global ptr @sun6i_a31_apb0_gates_clk_driver_init, section ".initcall6.init", align 4
@sun6i_a31_apb0_gates_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun6i_a31_apb0_gates_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun6i_a31_apb0_gates_clk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sun6i-a31-apb0-gates-clk\00", [39 x i8] zeroinitializer }, align 32
@sun6i_a31_apb0_gates_clk_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-apb0-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_apb0_gates }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-apb0-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a23_apb0_gates }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/clk/sunxi/clk-sun6i-apb0-gates.c\00", [55 x i8] zeroinitializer }, align 32
@sun6i_a31_apb0_gates = internal constant %struct.gates_data { [1 x i32] [i32 127] }, section ".init.rodata", align 4
@sun8i_a23_apb0_gates = internal constant %struct.gates_data { [1 x i32] [i32 93] }, section ".init.rodata", align 4
@___asan_gen_.3 = private unnamed_addr constant [32 x i8] c"sun6i_a31_apb0_gates_clk_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 92, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 94, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [32 x i8] c"sun6i_a31_apb0_gates_clk_dt_ids\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 30, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 76, i32 37 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [44 x i8] c"../drivers/clk/sunxi/clk-sun6i-apb0-gates.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 82, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__initcall__kmod_clk_sun6i_apb0_gates__170_99_sun6i_a31_apb0_gates_clk_driver_init6, ptr @sun6i_a31_apb0_gates_clk_driver, ptr @.str, ptr @sun6i_a31_apb0_gates_clk_dt_ids, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_a31_apb0_gates_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_a31_apb0_gates_clk_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_a31_apb0_gates_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun6i_a31_apb0_gates_clk_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_a31_apb0_gates_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #5
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !25
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = tail call ptr @of_clk_get_parent_name(ptr noundef nonnull %1, i32 noundef 0) #5
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #5
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 false) #5, !range !26
  %sub.i.i.op = sub nuw nsw i32 32, %6
  %add = select i1 %tobool.not.i, i32 33, i32 %sub.i.i.op
  %7 = shl nuw nsw i32 %add, 2
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %7, i32 noundef 3520) #5
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %call.i, align 4
  %tobool23.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool23.not, label %if.end18.cleanup_crit_edge, label %if.end25

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %call28 = tail call i32 @_find_next_bit_be(ptr noundef nonnull %call, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call28)
  %cmp102 = icmp slt i32 %call28, 32
  br i1 %cmp102, label %if.end25.for.body_crit_edge, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

for.body:                                         ; preds = %if.end50.for.body_crit_edge, %if.end25.for.body_crit_edge
  %j.0104 = phi i32 [ %inc, %if.end50.for.body_crit_edge ], [ 0, %if.end25.for.body_crit_edge ]
  %i.0103 = phi i32 [ %call60, %if.end50.for.body_crit_edge ], [ %call28, %if.end25.for.body_crit_edge ]
  %call.i98 = call i32 @of_property_read_string_helper(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef %j.0104) #5
  %9 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_name, align 4
  %conv = trunc i32 %i.0103 to i8
  %call31 = call ptr @clk_register_gate(ptr noundef %dev, ptr noundef %10, ptr noundef nonnull %call10, i32 noundef 0, ptr noundef %call5, i8 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef null) #5
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 %i.0103
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call31, ptr %arrayidx, align 4
  %14 = load ptr, ptr %call.i, align 4
  %arrayidx34 = getelementptr ptr, ptr %14, i32 %i.0103
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx34, align 4
  %cmp.i99 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %do.end, label %for.body.if.end50_crit_edge, !prof !27

for.body.if.end50_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 82, i32 noundef 9, ptr noundef null) #5
  br label %if.end50

if.end50:                                         ; preds = %do.end, %for.body.if.end50_crit_edge
  %inc = add i32 %j.0104, 1
  %add59 = add nsw i32 %i.0103, 1
  %call60 = call i32 @_find_next_bit_be(ptr noundef nonnull %call, i32 noundef 32, i32 noundef %add59) #5
  %cmp = icmp slt i32 %call60, 32
  br i1 %cmp, label %if.end50.for.body_crit_edge, label %if.end50.for.end_crit_edge

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end50.for.end_crit_edge, %if.end25.for.end_crit_edge
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %clk_num, align 4
  %call62 = call i32 @of_clk_add_provider(ptr noundef nonnull %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %call62, %for.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_clk_sun6i_apb0_gates__170_99_sun6i_a31_apb0_gates_clk_driver_init6, !1, !"__initcall__kmod_clk_sun6i_apb0_gates__170_99_sun6i_a31_apb0_gates_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi/clk-sun6i-apb0-gates.c", i32 99, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi/clk-sun6i-apb0-gates.c", i32 94, i32 11}
!4 = !{ptr @sun6i_a31_apb0_gates_clk_driver, !5, !"sun6i_a31_apb0_gates_clk_driver", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi/clk-sun6i-apb0-gates.c", i32 92, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/sunxi/clk-sun6i-apb0-gates.c", i32 76, i32 37}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi/clk-sun6i-apb0-gates.c", i32 82, i32 3}
!10 = !{ptr @sun6i_a31_apb0_gates_clk_dt_ids, !11, !"sun6i_a31_apb0_gates_clk_dt_ids", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi/clk-sun6i-apb0-gates.c", i32 30, i32 34}
!12 = !{ptr @sun6i_a31_apb0_gates, !13, !"sun6i_a31_apb0_gates", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi/clk-sun6i-apb0-gates.c", i32 22, i32 32}
!14 = !{ptr @sun8i_a23_apb0_gates, !15, !"sun8i_a23_apb0_gates", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi/clk-sun6i-apb0-gates.c", i32 26, i32 32}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
!26 = !{i32 0, i32 33}
!27 = !{!"branch_weights", i32 1, i32 2000}
