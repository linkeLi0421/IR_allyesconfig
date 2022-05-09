; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-axi-clkgen.c_pt.bc'
source_filename = "../drivers/clk/clk-axi-clkgen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.axi_clkgen_limits = type { i32, i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.axi_clkgen = type { ptr, %struct.clk_hw, %struct.axi_clkgen_limits }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_clk_axi_clkgen__203_588_axi_clkgen_driver_init6 = internal global ptr @axi_clkgen_driver_init, section ".initcall6.init", align 4
@axi_clkgen_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axi_clkgen_probe, ptr @axi_clkgen_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axi_clkgen_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axi_clkgen_driver_exit = internal global ptr @axi_clkgen_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file204 = internal constant [47 x i8] c"clk_axi_clkgen.file=drivers/clk/clk-axi-clkgen\00", section ".modinfo", align 1
@__UNIQUE_ID_license205 = internal constant [30 x i8] c"clk_axi_clkgen.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author206 = internal constant [59 x i8] c"clk_axi_clkgen.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description207 = internal constant [91 x i8] c"clk_axi_clkgen.description=Driver for the Analog Devices' AXI clkgen pcore clock generator\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adi-axi-clkgen\00", [17 x i8] zeroinitializer }, align 32
@axi_clkgen_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,zynqmp-axi-clkgen-2.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axi_clkgen_zynqmp_default_limits }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,axi-clkgen-2.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axi_clkgen_zynq_default_limits }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@axi_clkgen_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @axi_clkgen_enable, ptr @axi_clkgen_disable, ptr null, ptr null, ptr null, ptr null, ptr @axi_clkgen_recalc_rate, ptr @axi_clkgen_round_rate, ptr null, ptr @axi_clkgen_set_parent, ptr @axi_clkgen_get_parent, ptr @axi_clkgen_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@axi_clkgen_lock_table = internal constant { [36 x i32], [48 x i8] } { [36 x i32] [i32 101057512, i32 101057512, i32 134743016, i32 185271272, i32 235799528, i32 286327784, i32 320013288, i32 370541544, i32 421069800, i32 471598056, i32 522126212, i32 522126137, i32 522126062, i32 522126012, i32 522125962, i32 522125937, i32 522125887, i32 522125862, i32 522125837, i32 522125812, i32 522125787, i32 522125762, i32 522125737, i32 522125712, i32 522125712, i32 522125687, i32 522125662, i32 522125662, i32 522125637, i32 522125637, i32 522125612, i32 522125612, i32 522125612, i32 522125587, i32 522125587, i32 522125587], [48 x i8] zeroinitializer }, align 32
@axi_clkgen_zynqmp_default_limits = internal constant { %struct.axi_clkgen_limits, [16 x i8] } { %struct.axi_clkgen_limits { i32 10000, i32 450000, i32 800000, i32 1600000 }, [16 x i8] zeroinitializer }, align 32
@axi_clkgen_zynq_default_limits = internal constant { %struct.axi_clkgen_limits, [16 x i8] } { %struct.axi_clkgen_limits { i32 10000, i32 300000, i32 600000, i32 1200000 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [49 x i64] [i64 47, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47]
@___asan_gen_.2 = private unnamed_addr constant [18 x i8] c"axi_clkgen_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 580, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 582, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"axi_clkgen_ids\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 567, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 541, i32 45 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"axi_clkgen_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 496, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"axi_clkgen_lock_table\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 92, i32 23 }
@___asan_gen_.20 = private unnamed_addr constant [33 x i8] c"axi_clkgen_zynqmp_default_limits\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 111, i32 39 }
@___asan_gen_.23 = private unnamed_addr constant [31 x i8] c"axi_clkgen_zynq_default_limits\00", align 1
@___asan_gen_.24 = private constant [32 x i8] c"../drivers/clk/clk-axi-clkgen.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 118, i32 39 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author206, ptr @__UNIQUE_ID_description207, ptr @__UNIQUE_ID_file204, ptr @__UNIQUE_ID_license205, ptr @__exitcall_axi_clkgen_driver_exit, ptr @__initcall__kmod_clk_axi_clkgen__203_588_axi_clkgen_driver_init6, ptr @axi_clkgen_driver_exit, ptr @axi_clkgen_driver, ptr @.str, ptr @axi_clkgen_ids, ptr @.str.1, ptr @axi_clkgen_ops, ptr @axi_clkgen_lock_table, ptr @axi_clkgen_zynqmp_default_limits, ptr @axi_clkgen_zynq_default_limits], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_clkgen_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_clkgen_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_clkgen_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_clkgen_lock_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_clkgen_zynqmp_default_limits to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_clkgen_zynq_default_limits to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_clkgen_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axi_clkgen_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axi_clkgen_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @axi_clkgen_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_clkgen_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_names = alloca [2 x ptr], align 4
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %0 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_names) #7
  %1 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_names, align 4, !annotation !35
  %2 = getelementptr inbounds [2 x ptr], ptr %parent_names, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call14 = tail call i32 @of_clk_get_parent_count(ptr noundef %7) #7
  %conv = trunc i32 %call14 to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %8 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %num_parents, align 4
  %conv16 = and i32 %call14, 255
  %9 = add nsw i32 %conv16, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %9)
  %10 = icmp ult i32 %9, -2
  br i1 %10, label %if.end12.cleanup_crit_edge, label %for.cond.preheader

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end12
  %11 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_parents, align 4
  %conv25 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp2681.not = icmp eq i8 %12, 0
  br i1 %cmp2681.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, %conv25
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.082 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call30 = tail call ptr @of_clk_get_parent_name(ptr noundef %14, i32 noundef %i.082) #7
  %arrayidx = getelementptr [2 x ptr], ptr %parent_names, i32 0, i32 %i.082
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call30, ptr %arrayidx, align 4
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %limits = getelementptr inbounds %struct.axi_clkgen, ptr %call.i, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %limits, ptr %call, i32 16)
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %clk_name, align 4
  %call39 = call i32 @of_property_read_string(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef nonnull %clk_name) #7
  %22 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_name, align 4
  %24 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @axi_clkgen_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %flags, align 4
  %parent_names41 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %27 = ptrtoint ptr %parent_names41 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %parent_names, ptr %parent_names41, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #7, !srcloc !37
  %clk_hw = getelementptr inbounds %struct.axi_clkgen, ptr %call.i, i32 0, i32 1
  %init42 = getelementptr inbounds %struct.axi_clkgen, ptr %call.i, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %init42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %init, ptr %init42, align 4
  %call45 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %clk_hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 8
  %call52 = call i32 @of_clk_add_hw_provider(ptr noundef %32, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %clk_hw) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then9 ], [ %call52, %if.end48 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ %call45, %for.end.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_clkgen_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_clkgen_enable(ptr nocapture noundef readonly %clk_hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %clk_hw, i32 -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 50331648) #7, !srcloc !37
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axi_clkgen_disable(ptr nocapture noundef readonly %clk_hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %clk_hw, i32 -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #7, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_clkgen_recalc_rate(ptr nocapture noundef readonly %clk_hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %clk_hw, i32 -4
  %call1 = tail call fastcc i32 @axi_clkgen_get_div(ptr noundef %add.ptr.i, i32 noundef 8, i32 noundef 9)
  %call2 = tail call fastcc i32 @axi_clkgen_get_div(ptr noundef %add.ptr.i, i32 noundef 20, i32 noundef 21)
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry
  %timeout.0.i.i = phi i32 [ 10000, %entry ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 116
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %3 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool1.not.i.i = icmp eq i32 %dec.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool1.not.i.i
  br i1 %or.cond.i.i, label %axi_clkgen_wait_non_busy.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

axi_clkgen_wait_non_busy.exit.i:                  ; preds = %do.body.i.i
  br i1 %tobool.not.i.i, label %if.end.i, label %axi_clkgen_wait_non_busy.exit.i.axi_clkgen_mmcm_read.exit_crit_edge

axi_clkgen_wait_non_busy.exit.i.axi_clkgen_mmcm_read.exit_crit_edge: ; preds = %axi_clkgen_wait_non_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_mmcm_read.exit

if.end.i:                                         ; preds = %axi_clkgen_wait_non_busy.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 5680) #7, !srcloc !37
  br label %do.body.i8.i

do.body.i8.i:                                     ; preds = %do.body.i8.i.do.body.i8.i_crit_edge, %if.end.i
  %timeout.0.i1.i = phi i32 [ 10000, %if.end.i ], [ %dec.i5.i, %do.body.i8.i.do.body.i8.i_crit_edge ]
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %7, i32 116
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #7, !srcloc !38
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %and.i3.i = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i4.i = icmp eq i32 %and.i3.i, 0
  %dec.i5.i = add nsw i32 %timeout.0.i1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i5.i)
  %tobool1.not.i6.i = icmp eq i32 %dec.i5.i, 0
  %or.cond.i7.i = select i1 %tobool.not.i4.i, i1 true, i1 %tobool1.not.i6.i
  br i1 %or.cond.i7.i, label %axi_clkgen_wait_non_busy.exit11.i, label %do.body.i8.i.do.body.i8.i_crit_edge

do.body.i8.i.do.body.i8.i_crit_edge:              ; preds = %do.body.i8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i8.i

axi_clkgen_wait_non_busy.exit11.i:                ; preds = %do.body.i8.i
  call void @__sanitizer_cov_trace_pc() #9
  %and4.i9.i = and i32 %9, 65535
  %spec.select = select i1 %tobool.not.i4.i, i32 %and4.i9.i, i32 -1
  br label %axi_clkgen_mmcm_read.exit

axi_clkgen_mmcm_read.exit:                        ; preds = %axi_clkgen_wait_non_busy.exit11.i, %axi_clkgen_wait_non_busy.exit.i.axi_clkgen_mmcm_read.exit_crit_edge
  %val.0 = phi i32 [ -1, %axi_clkgen_wait_non_busy.exit.i.axi_clkgen_mmcm_read.exit_crit_edge ], [ %spec.select, %axi_clkgen_wait_non_busy.exit11.i ]
  %and = and i32 %val.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and4 = and i32 %val.0, 63
  %shr = lshr i32 %val.0, 6
  %and5 = and i32 %shr, 63
  %add = add nuw nsw i32 %and5, %and4
  %d.0 = select i1 %tobool.not, i32 %add, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d.0)
  %cmp = icmp eq i32 %d.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp6 = icmp eq i32 %call1, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6
  br i1 %or.cond, label %axi_clkgen_mmcm_read.exit.cleanup_crit_edge, label %if.end8

axi_clkgen_mmcm_read.exit.cleanup_crit_edge:      ; preds = %axi_clkgen_mmcm_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %axi_clkgen_mmcm_read.exit
  %conv = zext i32 %parent_rate to i64
  %conv9 = zext i32 %call2 to i64
  %mul = mul nuw i64 %conv9, %conv
  %mul10 = mul i32 %d.0, %call1
  %div307 = lshr i32 %mul10, 1
  %conv11 = zext i32 %div307 to i64
  %add12 = add nuw i64 %mul, %conv11
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add12)
  %cmp190 = icmp ult i64 %add12, 4294967296
  br i1 %cmp190, label %if.then194, label %if.else200, !prof !40

if.then194:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %conv195 = trunc i64 %add12 to i32
  %div198 = udiv i32 %conv195, %mul10
  %conv199 = zext i32 %div198 to i64
  br label %if.end204

if.else200:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul10, i64 %add12) #10, !srcloc !41
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  br label %if.end204

if.end204:                                        ; preds = %if.else200, %if.then194
  %_tmp.0 = phi i64 [ %conv199, %if.then194 ], [ %asmresult1.i, %if.else200 ]
  %11 = tail call i64 @llvm.umin.i64(i64 %_tmp.0, i64 4294967295)
  %12 = trunc i64 %11 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end204, %axi_clkgen_mmcm_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end204 ], [ 0, %axi_clkgen_mmcm_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_clkgen_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #4 align 64 {
entry:
  %d = alloca i32, align 4
  %m = alloca i32, align 4
  %dout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %limits1 = getelementptr i8, ptr %hw, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #7
  %0 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %d, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #7
  %1 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %m, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dout) #7
  %2 = ptrtoint ptr %dout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dout, align 4, !annotation !35
  %3 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %parent_rate, align 4
  call fastcc void @axi_clkgen_calc_params(ptr noundef %limits1, i32 noundef %4, i32 noundef %rate, ptr noundef nonnull %d, ptr noundef nonnull %m, ptr noundef nonnull %dout)
  %5 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %d, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %dout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4 = icmp eq i32 %10, 0
  br i1 %cmp4, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %conv = zext i32 %4 to i64
  %conv5 = zext i32 %10 to i64
  %mul = mul nuw i64 %conv5, %conv
  %mul6 = mul i32 %8, %6
  %div298 = lshr i32 %mul6, 1
  %conv7 = zext i32 %div298 to i64
  %add = add nuw i64 %mul, %conv7
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp181 = icmp ult i64 %add, 4294967296
  br i1 %cmp181, label %if.then185, label %if.else191, !prof !40

if.then185:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv186 = trunc i64 %add to i32
  %div189 = udiv i32 %conv186, %mul6
  %conv190 = zext i32 %div189 to i64
  br label %if.end195

if.else191:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul6, i64 %add) #10, !srcloc !41
  %asmresult1.i = extractvalue { i64, i64 } %11, 1
  br label %if.end195

if.end195:                                        ; preds = %if.else191, %if.then185
  %_tmp.0 = phi i64 [ %conv190, %if.then185 ], [ %asmresult1.i, %if.else191 ]
  %12 = tail call i64 @llvm.umin.i64(i64 %_tmp.0, i64 2147483647)
  %13 = trunc i64 %12 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end195, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.end195 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dout) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_clkgen_set_parent(ptr nocapture noundef readonly %clk_hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %clk_hw, i32 -4
  %conv = zext i8 %index to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %0 = shl nuw i32 %conv, 24
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i1 = getelementptr i8, ptr %2, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 %0) #7, !srcloc !37
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @axi_clkgen_get_parent(ptr nocapture noundef readonly %clk_hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %clk_hw, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i1 = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #7, !srcloc !38
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %conv = trunc i32 %3 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_clkgen_set_rate(ptr nocapture noundef readonly %clk_hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %d = alloca i32, align 4
  %m = alloca i32, align 4
  %dout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %clk_hw, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #7
  %0 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %d, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #7
  %1 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %m, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dout) #7
  %2 = ptrtoint ptr %dout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dout, align 4, !annotation !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %cmp = icmp eq i32 %parent_rate, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp2 = icmp eq i32 %rate, 0
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %limits1 = getelementptr i8, ptr %clk_hw, i32 12
  call fastcc void @axi_clkgen_calc_params(ptr noundef %limits1, i32 noundef %parent_rate, i32 noundef %rate, ptr noundef nonnull %d, ptr noundef nonnull %m, ptr noundef nonnull %dout)
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %d, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %lor.lhs.false4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %5 = ptrtoint ptr %dout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %7 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %lor.lhs.false6.cleanup_crit_edge, label %if.end9

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false6
  %and = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp10.not = icmp eq i32 %and, 0
  %and12 = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not = icmp eq i32 %and12, 0
  %or.cond68 = select i1 %cmp10.not, i1 %cmp13.not, i1 false
  %power.0 = select i1 %or.cond68, i32 0, i32 38912
  tail call fastcc void @axi_clkgen_mmcm_write(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef %power.0, i32 noundef 38912)
  %sub = add i32 %8, -1
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %sw.default.i [
    i32 1, label %if.end9.if.then.i_crit_edge
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
    i32 4, label %sw.bb3.i
    i32 5, label %sw.bb4.i
    i32 6, label %if.end9.sw.bb5.i_crit_edge
    i32 7, label %if.end9.sw.bb5.i_crit_edge216
    i32 8, label %if.end9.sw.bb5.i_crit_edge217
    i32 9, label %if.end9.sw.bb5.i_crit_edge218
    i32 10, label %if.end9.sw.bb6.i_crit_edge
    i32 11, label %if.end9.sw.bb6.i_crit_edge219
    i32 12, label %if.end9.sw.bb6.i_crit_edge220
    i32 13, label %sw.bb7.i
    i32 14, label %if.end9.sw.bb8.i_crit_edge
    i32 15, label %if.end9.sw.bb8.i_crit_edge221
    i32 16, label %if.end9.sw.bb8.i_crit_edge222
    i32 17, label %if.end9.sw.bb8.i_crit_edge223
    i32 18, label %if.end9.sw.bb8.i_crit_edge224
    i32 19, label %if.end9.sw.bb8.i_crit_edge225
    i32 20, label %if.end9.sw.bb8.i_crit_edge226
    i32 21, label %if.end9.sw.bb8.i_crit_edge227
    i32 22, label %if.end9.sw.bb8.i_crit_edge228
    i32 23, label %if.end9.sw.bb8.i_crit_edge229
    i32 24, label %if.end9.axi_clkgen_lookup_filter.exit_crit_edge
    i32 25, label %if.end9.axi_clkgen_lookup_filter.exit_crit_edge230
    i32 26, label %if.end9.axi_clkgen_lookup_filter.exit_crit_edge231
    i32 27, label %if.end9.axi_clkgen_lookup_filter.exit_crit_edge232
    i32 28, label %if.end9.axi_clkgen_lookup_filter.exit_crit_edge233
    i32 29, label %if.end9.axi_clkgen_lookup_filter.exit_crit_edge234
    i32 30, label %if.end9.axi_clkgen_lookup_filter.exit_crit_edge235
    i32 31, label %if.end9.axi_clkgen_lookup_filter.exit_crit_edge236
    i32 32, label %if.end9.axi_clkgen_lookup_filter.exit_crit_edge237
    i32 33, label %if.end9.axi_clkgen_lookup_filter.exit_crit_edge238
    i32 34, label %if.end9.axi_clkgen_lookup_filter.exit_crit_edge239
    i32 35, label %if.end9.axi_clkgen_lookup_filter.exit_crit_edge240
    i32 36, label %if.end9.axi_clkgen_lookup_filter.exit_crit_edge241
    i32 37, label %if.end9.axi_clkgen_lookup_filter.exit_crit_edge242
    i32 38, label %if.end9.axi_clkgen_lookup_lock.exit_crit_edge
    i32 39, label %if.end9.axi_clkgen_lookup_lock.exit_crit_edge243
    i32 40, label %if.end9.axi_clkgen_lookup_lock.exit_crit_edge244
    i32 41, label %if.end9.axi_clkgen_lookup_lock.exit_crit_edge245
    i32 42, label %if.end9.axi_clkgen_lookup_lock.exit_crit_edge246
    i32 43, label %if.end9.axi_clkgen_lookup_lock.exit_crit_edge247
    i32 44, label %if.end9.axi_clkgen_lookup_lock.exit_crit_edge248
    i32 45, label %if.end9.axi_clkgen_lookup_lock.exit_crit_edge249
    i32 46, label %if.end9.axi_clkgen_lookup_lock.exit_crit_edge250
    i32 47, label %if.end9.axi_clkgen_lookup_lock.exit_crit_edge251
  ]

if.end9.axi_clkgen_lookup_lock.exit_crit_edge251: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_lock.exit

if.end9.axi_clkgen_lookup_lock.exit_crit_edge250: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_lock.exit

if.end9.axi_clkgen_lookup_lock.exit_crit_edge249: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_lock.exit

if.end9.axi_clkgen_lookup_lock.exit_crit_edge248: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_lock.exit

if.end9.axi_clkgen_lookup_lock.exit_crit_edge247: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_lock.exit

if.end9.axi_clkgen_lookup_lock.exit_crit_edge246: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_lock.exit

if.end9.axi_clkgen_lookup_lock.exit_crit_edge245: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_lock.exit

if.end9.axi_clkgen_lookup_lock.exit_crit_edge244: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_lock.exit

if.end9.axi_clkgen_lookup_lock.exit_crit_edge243: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_lock.exit

if.end9.axi_clkgen_lookup_lock.exit_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_lock.exit

if.end9.axi_clkgen_lookup_filter.exit_crit_edge242: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_filter.exit

if.end9.axi_clkgen_lookup_filter.exit_crit_edge241: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_filter.exit

if.end9.axi_clkgen_lookup_filter.exit_crit_edge240: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_filter.exit

if.end9.axi_clkgen_lookup_filter.exit_crit_edge239: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_filter.exit

if.end9.axi_clkgen_lookup_filter.exit_crit_edge238: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_filter.exit

if.end9.axi_clkgen_lookup_filter.exit_crit_edge237: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_filter.exit

if.end9.axi_clkgen_lookup_filter.exit_crit_edge236: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_filter.exit

if.end9.axi_clkgen_lookup_filter.exit_crit_edge235: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_filter.exit

if.end9.axi_clkgen_lookup_filter.exit_crit_edge234: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_filter.exit

if.end9.axi_clkgen_lookup_filter.exit_crit_edge233: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_filter.exit

if.end9.axi_clkgen_lookup_filter.exit_crit_edge232: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_filter.exit

if.end9.axi_clkgen_lookup_filter.exit_crit_edge231: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_filter.exit

if.end9.axi_clkgen_lookup_filter.exit_crit_edge230: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_filter.exit

if.end9.axi_clkgen_lookup_filter.exit_crit_edge:  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_filter.exit

if.end9.sw.bb8.i_crit_edge229:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end9.sw.bb8.i_crit_edge228:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end9.sw.bb8.i_crit_edge227:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end9.sw.bb8.i_crit_edge226:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end9.sw.bb8.i_crit_edge225:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end9.sw.bb8.i_crit_edge224:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end9.sw.bb8.i_crit_edge223:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end9.sw.bb8.i_crit_edge222:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end9.sw.bb8.i_crit_edge221:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end9.sw.bb8.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end9.sw.bb6.i_crit_edge220:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

if.end9.sw.bb6.i_crit_edge219:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

if.end9.sw.bb6.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

if.end9.sw.bb5.i_crit_edge218:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end9.sw.bb5.i_crit_edge217:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end9.sw.bb5.i_crit_edge216:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end9.sw.bb5.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end9.if.then.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb1.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb2.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb3.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb4.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb5.i:                                         ; preds = %if.end9.sw.bb5.i_crit_edge, %if.end9.sw.bb5.i_crit_edge216, %if.end9.sw.bb5.i_crit_edge217, %if.end9.sw.bb5.i_crit_edge218
  br label %if.then.i

sw.bb6.i:                                         ; preds = %if.end9.sw.bb6.i_crit_edge, %if.end9.sw.bb6.i_crit_edge219, %if.end9.sw.bb6.i_crit_edge220
  br label %if.then.i

sw.bb7.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb8.i:                                         ; preds = %if.end9.sw.bb8.i_crit_edge, %if.end9.sw.bb8.i_crit_edge221, %if.end9.sw.bb8.i_crit_edge222, %if.end9.sw.bb8.i_crit_edge223, %if.end9.sw.bb8.i_crit_edge224, %if.end9.sw.bb8.i_crit_edge225, %if.end9.sw.bb8.i_crit_edge226, %if.end9.sw.bb8.i_crit_edge227, %if.end9.sw.bb8.i_crit_edge228, %if.end9.sw.bb8.i_crit_edge229
  br label %if.then.i

sw.default.i:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_lock.exit

axi_clkgen_lookup_filter.exit:                    ; preds = %if.end9.axi_clkgen_lookup_filter.exit_crit_edge, %if.end9.axi_clkgen_lookup_filter.exit_crit_edge230, %if.end9.axi_clkgen_lookup_filter.exit_crit_edge231, %if.end9.axi_clkgen_lookup_filter.exit_crit_edge232, %if.end9.axi_clkgen_lookup_filter.exit_crit_edge233, %if.end9.axi_clkgen_lookup_filter.exit_crit_edge234, %if.end9.axi_clkgen_lookup_filter.exit_crit_edge235, %if.end9.axi_clkgen_lookup_filter.exit_crit_edge236, %if.end9.axi_clkgen_lookup_filter.exit_crit_edge237, %if.end9.axi_clkgen_lookup_filter.exit_crit_edge238, %if.end9.axi_clkgen_lookup_filter.exit_crit_edge239, %if.end9.axi_clkgen_lookup_filter.exit_crit_edge240, %if.end9.axi_clkgen_lookup_filter.exit_crit_edge241, %if.end9.axi_clkgen_lookup_filter.exit_crit_edge242
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %sub)
  %cmp.i = icmp ult i32 %sub, 36
  br i1 %cmp.i, label %axi_clkgen_lookup_filter.exit.if.then.i_crit_edge, label %axi_clkgen_lookup_filter.exit.axi_clkgen_lookup_lock.exit_crit_edge

axi_clkgen_lookup_filter.exit.axi_clkgen_lookup_lock.exit_crit_edge: ; preds = %axi_clkgen_lookup_filter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_lookup_lock.exit

axi_clkgen_lookup_filter.exit.if.then.i_crit_edge: ; preds = %axi_clkgen_lookup_filter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %axi_clkgen_lookup_filter.exit.if.then.i_crit_edge, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end9.if.then.i_crit_edge
  %retval.0.i205 = phi i32 [ 16810128, %axi_clkgen_lookup_filter.exit.if.then.i_crit_edge ], [ 16783760, %if.end9.if.then.i_crit_edge ], [ 16781712, %sw.bb1.i ], [ 16816272, %sw.bb2.i ], [ 16783504, %sw.bb3.i ], [ 16812176, %sw.bb4.i ], [ 16814224, %sw.bb5.i ], [ 16779408, %sw.bb6.i ], [ 134254736, %sw.bb7.i ], [ 16781456, %sw.bb8.i ]
  %arrayidx.i = getelementptr [36 x i32], ptr @axi_clkgen_lock_table, i32 0, i32 %sub
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  br label %axi_clkgen_lookup_lock.exit

axi_clkgen_lookup_lock.exit:                      ; preds = %if.then.i, %axi_clkgen_lookup_filter.exit.axi_clkgen_lookup_lock.exit_crit_edge, %sw.default.i, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge243, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge244, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge245, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge246, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge247, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge248, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge249, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge250, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge251
  %retval.0.i204 = phi i32 [ %retval.0.i205, %if.then.i ], [ 16810128, %axi_clkgen_lookup_filter.exit.axi_clkgen_lookup_lock.exit_crit_edge ], [ 134250640, %sw.default.i ], [ 134221968, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge ], [ 134221968, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge243 ], [ 134221968, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge244 ], [ 134221968, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge245 ], [ 134221968, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge246 ], [ 134221968, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge247 ], [ 134221968, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge248 ], [ 134221968, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge249 ], [ 134221968, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge250 ], [ 134221968, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge251 ]
  %retval.0.i69 = phi i32 [ %11, %if.then.i ], [ 522125562, %axi_clkgen_lookup_filter.exit.axi_clkgen_lookup_lock.exit_crit_edge ], [ 522125562, %sw.default.i ], [ 522125562, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge ], [ 522125562, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge243 ], [ 522125562, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge244 ], [ 522125562, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge245 ], [ 522125562, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge246 ], [ 522125562, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge247 ], [ 522125562, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge248 ], [ 522125562, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge249 ], [ 522125562, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge250 ], [ 522125562, %if.end9.axi_clkgen_lookup_lock.exit_crit_edge251 ]
  %shr = lshr i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp.i70 = icmp eq i32 %shr, 1
  br i1 %cmp.i70, label %axi_clkgen_lookup_lock.exit.axi_clkgen_calc_clk_params.exit_crit_edge, label %if.end.i

axi_clkgen_lookup_lock.exit.axi_clkgen_calc_clk_params.exit_crit_edge: ; preds = %axi_clkgen_lookup_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_calc_clk_params.exit

if.end.i:                                         ; preds = %axi_clkgen_lookup_lock.exit
  %div70.i = lshr i32 %6, 4
  %rem.i = and i32 %shr, 1
  br i1 %cmp10.not, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nsw i32 %shr, %div70.i
  br label %axi_clkgen_calc_clk_params.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp11.i = icmp eq i32 %rem.i, 0
  br i1 %cmp11.i, label %if.end21.i, label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp17.i = icmp eq i32 %and, 1
  br i1 %cmp17.i, label %if.end14.if.end21_crit_edge77.i, label %if.end14.i.if.end32.i_crit_edge

if.end14.i.if.end32.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.end14.if.end21_crit_edge77.i:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec2078.i = add nsw i32 %div70.i, -1
  br label %if.then31.i

if.end21.i:                                       ; preds = %if.else.i
  %dec.i = add nsw i32 %div70.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp1771.i = icmp ne i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cmp27.i = icmp eq i32 %shr, 2
  %or.cond.i = or i1 %cmp1771.i, %cmp27.i
  br i1 %or.cond.i, label %if.end21.i.if.then31.i_crit_edge, label %if.end21.i.if.end32.i_crit_edge

if.end21.i.if.end32.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.end21.i.if.then31.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31.i

if.then31.i:                                      ; preds = %if.end21.i.if.then31.i_crit_edge, %if.end14.if.end21_crit_edge77.i
  %params.sroa.0.0 = phi i32 [ %dec.i, %if.end21.i.if.then31.i_crit_edge ], [ %dec2078.i, %if.end14.if.end21_crit_edge77.i ]
  %params.sroa.18.0 = phi i32 [ %dec.i, %if.end21.i.if.then31.i_crit_edge ], [ %div70.i, %if.end14.if.end21_crit_edge77.i ]
  %params.sroa.54.0 = phi i32 [ 1024, %if.end21.i.if.then31.i_crit_edge ], [ 0, %if.end14.if.end21_crit_edge77.i ]
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %if.end21.i.if.end32.i_crit_edge, %if.end14.i.if.end32.i_crit_edge
  %params.sroa.0.1 = phi i32 [ %params.sroa.0.0, %if.then31.i ], [ %dec.i, %if.end21.i.if.end32.i_crit_edge ], [ %div70.i, %if.end14.i.if.end32.i_crit_edge ]
  %params.sroa.18.1 = phi i32 [ %params.sroa.18.0, %if.then31.i ], [ %dec.i, %if.end21.i.if.end32.i_crit_edge ], [ %div70.i, %if.end14.i.if.end32.i_crit_edge ]
  %params.sroa.50.0 = phi i32 [ 1024, %if.then31.i ], [ 0, %if.end21.i.if.end32.i_crit_edge ], [ 0, %if.end14.i.if.end32.i_crit_edge ]
  %params.sroa.54.1 = phi i32 [ %params.sroa.54.0, %if.then31.i ], [ 1024, %if.end21.i.if.end32.i_crit_edge ], [ 0, %if.end14.i.if.end32.i_crit_edge ]
  %phi.bo = shl nuw nsw i32 %and, 12
  %12 = shl nuw nsw i32 %rem.i, 13
  %13 = shl nuw nsw i32 %and, 10
  %14 = and i32 %13, 6144
  %phi.bo211 = or i32 %12, %14
  br label %axi_clkgen_calc_clk_params.exit

axi_clkgen_calc_clk_params.exit:                  ; preds = %if.end32.i, %if.then2.i, %axi_clkgen_lookup_lock.exit.axi_clkgen_calc_clk_params.exit_crit_edge
  %params.sroa.0.2 = phi i32 [ %sub.i, %if.then2.i ], [ %params.sroa.0.1, %if.end32.i ], [ 0, %axi_clkgen_lookup_lock.exit.axi_clkgen_calc_clk_params.exit_crit_edge ]
  %params.sroa.18.2 = phi i32 [ %div70.i, %if.then2.i ], [ %params.sroa.18.1, %if.end32.i ], [ 0, %axi_clkgen_lookup_lock.exit.axi_clkgen_calc_clk_params.exit_crit_edge ]
  %params.sroa.28.0 = phi i32 [ %rem.i, %if.then2.i ], [ %rem.i, %if.end32.i ], [ 0, %axi_clkgen_lookup_lock.exit.axi_clkgen_calc_clk_params.exit_crit_edge ]
  %params.sroa.36.0 = phi i32 [ 0, %if.then2.i ], [ 0, %if.end32.i ], [ 64, %axi_clkgen_lookup_lock.exit.axi_clkgen_calc_clk_params.exit_crit_edge ]
  %params.sroa.42.0 = phi i32 [ 0, %if.then2.i ], [ 2048, %if.end32.i ], [ 0, %axi_clkgen_lookup_lock.exit.axi_clkgen_calc_clk_params.exit_crit_edge ]
  %params.sroa.46.0 = phi i32 [ 0, %if.then2.i ], [ %phi.bo, %if.end32.i ], [ 0, %axi_clkgen_lookup_lock.exit.axi_clkgen_calc_clk_params.exit_crit_edge ]
  %params.sroa.50.1 = phi i32 [ 0, %if.then2.i ], [ %params.sroa.50.0, %if.end32.i ], [ 0, %axi_clkgen_lookup_lock.exit.axi_clkgen_calc_clk_params.exit_crit_edge ]
  %params.sroa.54.2 = phi i32 [ 0, %if.then2.i ], [ %params.sroa.54.1, %if.end32.i ], [ 0, %axi_clkgen_lookup_lock.exit.axi_clkgen_calc_clk_params.exit_crit_edge ]
  %params.sroa.58.0 = phi i32 [ 0, %if.then2.i ], [ %phi.bo211, %if.end32.i ], [ 0, %axi_clkgen_lookup_lock.exit.axi_clkgen_calc_clk_params.exit_crit_edge ]
  %shl.i = shl i32 %params.sroa.18.2, 6
  %or.i = or i32 %shl.i, %params.sroa.0.2
  tail call fastcc void @axi_clkgen_mmcm_write(ptr noundef %add.ptr.i, i32 noundef 8, i32 noundef %or.i, i32 noundef 61439) #7
  %shl6.i = shl nuw nsw i32 %params.sroa.28.0, 7
  %or3.i = or i32 %params.sroa.36.0, %shl6.i
  %or5.i = or i32 %or3.i, %params.sroa.42.0
  %or7.i = or i32 %or5.i, %params.sroa.46.0
  %or9.i = or i32 %or7.i, %params.sroa.54.2
  tail call fastcc void @axi_clkgen_mmcm_write(ptr noundef %add.ptr.i, i32 noundef 9, i32 noundef %or9.i, i32 noundef 32767) #7
  %or13.i = or i32 %params.sroa.58.0, %params.sroa.50.1
  tail call fastcc void @axi_clkgen_mmcm_write(ptr noundef %add.ptr.i, i32 noundef 7, i32 noundef %or13.i, i32 noundef 15360) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i80 = icmp eq i32 %4, 1
  br i1 %cmp.i80, label %axi_clkgen_calc_clk_params.exit.axi_clkgen_calc_clk_params.exit90_crit_edge, label %if.end.i83

axi_clkgen_calc_clk_params.exit.axi_clkgen_calc_clk_params.exit90_crit_edge: ; preds = %axi_clkgen_calc_clk_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_calc_clk_params.exit90

if.end.i83:                                       ; preds = %axi_clkgen_calc_clk_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  %div70.i84 = lshr i32 %4, 1
  %sub.i88 = sub i32 %4, %div70.i84
  %rem.i86 = shl i32 %4, 13
  %phi.bo212 = and i32 %rem.i86, 8192
  %phi.bo213 = shl i32 %div70.i84, 6
  %15 = or i32 %phi.bo212, %phi.bo213
  %16 = or i32 %15, %sub.i88
  br label %axi_clkgen_calc_clk_params.exit90

axi_clkgen_calc_clk_params.exit90:                ; preds = %if.end.i83, %axi_clkgen_calc_clk_params.exit.axi_clkgen_calc_clk_params.exit90_crit_edge
  %or25 = phi i32 [ %16, %if.end.i83 ], [ 4096, %axi_clkgen_calc_clk_params.exit.axi_clkgen_calc_clk_params.exit90_crit_edge ]
  tail call fastcc void @axi_clkgen_mmcm_write(ptr noundef %add.ptr.i, i32 noundef 22, i32 noundef %or25, i32 noundef 16383)
  %shr27 = lshr i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr27)
  %cmp.i91 = icmp eq i32 %shr27, 1
  br i1 %cmp.i91, label %axi_clkgen_calc_clk_params.exit90.axi_clkgen_calc_clk_params.exit127_crit_edge, label %if.end.i95

axi_clkgen_calc_clk_params.exit90.axi_clkgen_calc_clk_params.exit127_crit_edge: ; preds = %axi_clkgen_calc_clk_params.exit90
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_calc_clk_params.exit127

if.end.i95:                                       ; preds = %axi_clkgen_calc_clk_params.exit90
  %div70.i96 = lshr i32 %8, 4
  %rem.i98 = and i32 %shr27, 1
  br i1 %cmp13.not, label %if.then2.i101, label %if.else.i109

if.then2.i101:                                    ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i100 = sub nsw i32 %shr27, %div70.i96
  br label %axi_clkgen_calc_clk_params.exit127

if.else.i109:                                     ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i98)
  %cmp11.i108 = icmp eq i32 %rem.i98, 0
  br i1 %cmp11.i108, label %if.end21.i119, label %if.end14.i111

if.end14.i111:                                    ; preds = %if.else.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and12)
  %cmp17.i110 = icmp eq i32 %and12, 1
  br i1 %cmp17.i110, label %if.end14.if.end21_crit_edge77.i113, label %if.end14.i111.if.end32.i126_crit_edge

if.end14.i111.if.end32.i126_crit_edge:            ; preds = %if.end14.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i126

if.end14.if.end21_crit_edge77.i113:               ; preds = %if.end14.i111
  call void @__sanitizer_cov_trace_pc() #9
  %dec2078.i112 = add nsw i32 %div70.i96, -1
  br label %if.then31.i121

if.end21.i119:                                    ; preds = %if.else.i109
  %dec.i114 = add nsw i32 %div70.i96, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and12)
  %cmp1771.i116 = icmp ne i32 %and12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr27)
  %cmp27.i117 = icmp eq i32 %shr27, 2
  %or.cond.i118 = or i1 %cmp1771.i116, %cmp27.i117
  br i1 %or.cond.i118, label %if.end21.i119.if.then31.i121_crit_edge, label %if.end21.i119.if.end32.i126_crit_edge

if.end21.i119.if.end32.i126_crit_edge:            ; preds = %if.end21.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i126

if.end21.i119.if.then31.i121_crit_edge:           ; preds = %if.end21.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31.i121

if.then31.i121:                                   ; preds = %if.end21.i119.if.then31.i121_crit_edge, %if.end14.if.end21_crit_edge77.i113
  %params.sroa.0.4 = phi i32 [ %dec.i114, %if.end21.i119.if.then31.i121_crit_edge ], [ %dec2078.i112, %if.end14.if.end21_crit_edge77.i113 ]
  %params.sroa.18.4 = phi i32 [ %dec.i114, %if.end21.i119.if.then31.i121_crit_edge ], [ %div70.i96, %if.end14.if.end21_crit_edge77.i113 ]
  %params.sroa.54.3 = phi i32 [ 1024, %if.end21.i119.if.then31.i121_crit_edge ], [ 0, %if.end14.if.end21_crit_edge77.i113 ]
  br label %if.end32.i126

if.end32.i126:                                    ; preds = %if.then31.i121, %if.end21.i119.if.end32.i126_crit_edge, %if.end14.i111.if.end32.i126_crit_edge
  %params.sroa.0.5 = phi i32 [ %params.sroa.0.4, %if.then31.i121 ], [ %dec.i114, %if.end21.i119.if.end32.i126_crit_edge ], [ %div70.i96, %if.end14.i111.if.end32.i126_crit_edge ]
  %params.sroa.18.5 = phi i32 [ %params.sroa.18.4, %if.then31.i121 ], [ %dec.i114, %if.end21.i119.if.end32.i126_crit_edge ], [ %div70.i96, %if.end14.i111.if.end32.i126_crit_edge ]
  %params.sroa.50.2 = phi i32 [ 1024, %if.then31.i121 ], [ 0, %if.end21.i119.if.end32.i126_crit_edge ], [ 0, %if.end14.i111.if.end32.i126_crit_edge ]
  %params.sroa.54.4 = phi i32 [ %params.sroa.54.3, %if.then31.i121 ], [ 1024, %if.end21.i119.if.end32.i126_crit_edge ], [ 0, %if.end14.i111.if.end32.i126_crit_edge ]
  %phi.bo214 = shl nuw nsw i32 %and12, 12
  %17 = shl nuw nsw i32 %rem.i98, 13
  %18 = shl nuw nsw i32 %and12, 10
  %19 = and i32 %18, 6144
  %phi.bo215 = or i32 %17, %19
  br label %axi_clkgen_calc_clk_params.exit127

axi_clkgen_calc_clk_params.exit127:               ; preds = %if.end32.i126, %if.then2.i101, %axi_clkgen_calc_clk_params.exit90.axi_clkgen_calc_clk_params.exit127_crit_edge
  %params.sroa.0.6 = phi i32 [ %sub.i100, %if.then2.i101 ], [ %params.sroa.0.5, %if.end32.i126 ], [ 0, %axi_clkgen_calc_clk_params.exit90.axi_clkgen_calc_clk_params.exit127_crit_edge ]
  %params.sroa.18.6 = phi i32 [ %div70.i96, %if.then2.i101 ], [ %params.sroa.18.5, %if.end32.i126 ], [ 0, %axi_clkgen_calc_clk_params.exit90.axi_clkgen_calc_clk_params.exit127_crit_edge ]
  %params.sroa.28.2 = phi i32 [ %rem.i98, %if.then2.i101 ], [ %rem.i98, %if.end32.i126 ], [ 0, %axi_clkgen_calc_clk_params.exit90.axi_clkgen_calc_clk_params.exit127_crit_edge ]
  %params.sroa.36.2 = phi i32 [ 0, %if.then2.i101 ], [ 0, %if.end32.i126 ], [ 64, %axi_clkgen_calc_clk_params.exit90.axi_clkgen_calc_clk_params.exit127_crit_edge ]
  %params.sroa.42.1 = phi i32 [ 0, %if.then2.i101 ], [ 2048, %if.end32.i126 ], [ 0, %axi_clkgen_calc_clk_params.exit90.axi_clkgen_calc_clk_params.exit127_crit_edge ]
  %params.sroa.46.1 = phi i32 [ 0, %if.then2.i101 ], [ %phi.bo214, %if.end32.i126 ], [ 0, %axi_clkgen_calc_clk_params.exit90.axi_clkgen_calc_clk_params.exit127_crit_edge ]
  %params.sroa.50.3 = phi i32 [ 0, %if.then2.i101 ], [ %params.sroa.50.2, %if.end32.i126 ], [ 0, %axi_clkgen_calc_clk_params.exit90.axi_clkgen_calc_clk_params.exit127_crit_edge ]
  %params.sroa.54.5 = phi i32 [ 0, %if.then2.i101 ], [ %params.sroa.54.4, %if.end32.i126 ], [ 0, %axi_clkgen_calc_clk_params.exit90.axi_clkgen_calc_clk_params.exit127_crit_edge ]
  %params.sroa.58.1 = phi i32 [ 0, %if.then2.i101 ], [ %phi.bo215, %if.end32.i126 ], [ 0, %axi_clkgen_calc_clk_params.exit90.axi_clkgen_calc_clk_params.exit127_crit_edge ]
  %shl.i129 = shl i32 %params.sroa.18.6, 6
  %or.i130 = or i32 %shl.i129, %params.sroa.0.6
  tail call fastcc void @axi_clkgen_mmcm_write(ptr noundef %add.ptr.i, i32 noundef 20, i32 noundef %or.i130, i32 noundef 61439) #7
  %shl6.i140 = shl nuw nsw i32 %params.sroa.28.2, 7
  %or3.i135 = or i32 %params.sroa.36.2, %shl6.i140
  %or5.i138 = or i32 %or3.i135, %params.sroa.42.1
  %or7.i141 = or i32 %or5.i138, %params.sroa.46.1
  %or9.i144 = or i32 %or7.i141, %params.sroa.54.5
  tail call fastcc void @axi_clkgen_mmcm_write(ptr noundef %add.ptr.i, i32 noundef 21, i32 noundef %or9.i144, i32 noundef 32767) #7
  %or13.i149 = or i32 %params.sroa.58.1, %params.sroa.50.3
  tail call fastcc void @axi_clkgen_mmcm_write(ptr noundef %add.ptr.i, i32 noundef 19, i32 noundef %or13.i149, i32 noundef 15360) #7
  %and29 = and i32 %retval.0.i69, 1023
  tail call fastcc void @axi_clkgen_mmcm_write(ptr noundef %add.ptr.i, i32 noundef 24, i32 noundef %and29, i32 noundef 1023)
  %20 = lshr i32 %retval.0.i69, 6
  %shl33 = and i32 %20, 31744
  %or34 = or i32 %shl33, 1
  tail call fastcc void @axi_clkgen_mmcm_write(ptr noundef %add.ptr.i, i32 noundef 25, i32 noundef %or34, i32 noundef 32767)
  %21 = lshr i32 %retval.0.i69, 14
  %shl38 = and i32 %21, 31744
  %or39 = or i32 %shl38, 1001
  tail call fastcc void @axi_clkgen_mmcm_write(ptr noundef %add.ptr.i, i32 noundef 26, i32 noundef %or39, i32 noundef 32767)
  %shr41 = lshr i32 %retval.0.i204, 16
  tail call fastcc void @axi_clkgen_mmcm_write(ptr noundef %add.ptr.i, i32 noundef 78, i32 noundef %shr41, i32 noundef 39168)
  tail call fastcc void @axi_clkgen_mmcm_write(ptr noundef %add.ptr.i, i32 noundef 79, i32 noundef %retval.0.i204, i32 noundef 39168)
  br label %cleanup

cleanup:                                          ; preds = %axi_clkgen_calc_clk_params.exit127, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %axi_clkgen_calc_clk_params.exit127 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dout) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @axi_clkgen_get_div(ptr nocapture noundef readonly %axi_clkgen, i32 noundef %reg1, i32 noundef %reg2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry
  %timeout.0.i.i = phi i32 [ 10000, %entry ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %0 = ptrtoint ptr %axi_clkgen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %axi_clkgen, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 116
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %3 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool1.not.i.i = icmp eq i32 %dec.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool1.not.i.i
  br i1 %or.cond.i.i, label %axi_clkgen_wait_non_busy.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

axi_clkgen_wait_non_busy.exit.i:                  ; preds = %do.body.i.i
  br i1 %tobool.not.i.i, label %if.end.i, label %axi_clkgen_wait_non_busy.exit.i.cleanup_crit_edge

axi_clkgen_wait_non_busy.exit.i.cleanup_crit_edge: ; preds = %axi_clkgen_wait_non_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %axi_clkgen_wait_non_busy.exit.i
  %shl.i = shl i32 %reg2, 16
  %or.i = or i32 %shl.i, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %5 = ptrtoint ptr %axi_clkgen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %axi_clkgen, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #7, !srcloc !37
  br label %do.body.i8.i

do.body.i8.i:                                     ; preds = %do.body.i8.i.do.body.i8.i_crit_edge, %if.end.i
  %timeout.0.i1.i = phi i32 [ 10000, %if.end.i ], [ %dec.i5.i, %do.body.i8.i.do.body.i8.i_crit_edge ]
  %7 = ptrtoint ptr %axi_clkgen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %axi_clkgen, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %8, i32 116
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #7, !srcloc !38
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %and.i3.i = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i4.i = icmp eq i32 %and.i3.i, 0
  %dec.i5.i = add nsw i32 %timeout.0.i1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i5.i)
  %tobool1.not.i6.i = icmp eq i32 %dec.i5.i, 0
  %or.cond.i7.i = select i1 %tobool.not.i4.i, i1 true, i1 %tobool1.not.i6.i
  br i1 %or.cond.i7.i, label %axi_clkgen_wait_non_busy.exit11.i, label %do.body.i8.i.do.body.i8.i_crit_edge

do.body.i8.i.do.body.i8.i_crit_edge:              ; preds = %do.body.i8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i8.i

axi_clkgen_wait_non_busy.exit11.i:                ; preds = %do.body.i8.i
  %11 = and i32 %10, 65600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %axi_clkgen_wait_non_busy.exit11.i.do.body.i.i31_crit_edge, label %axi_clkgen_wait_non_busy.exit11.i.cleanup_crit_edge

axi_clkgen_wait_non_busy.exit11.i.cleanup_crit_edge: ; preds = %axi_clkgen_wait_non_busy.exit11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

axi_clkgen_wait_non_busy.exit11.i.do.body.i.i31_crit_edge: ; preds = %axi_clkgen_wait_non_busy.exit11.i
  br label %do.body.i.i31

do.body.i.i31:                                    ; preds = %do.body.i.i31.do.body.i.i31_crit_edge, %axi_clkgen_wait_non_busy.exit11.i.do.body.i.i31_crit_edge
  %timeout.0.i.i25 = phi i32 [ %dec.i.i28, %do.body.i.i31.do.body.i.i31_crit_edge ], [ 10000, %axi_clkgen_wait_non_busy.exit11.i.do.body.i.i31_crit_edge ]
  %13 = ptrtoint ptr %axi_clkgen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %axi_clkgen, align 4
  %add.ptr.i.i.i26 = getelementptr i8, ptr %14, i32 116
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i26) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i27 = icmp eq i32 %16, 0
  %dec.i.i28 = add nsw i32 %timeout.0.i.i25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i28)
  %tobool1.not.i.i29 = icmp eq i32 %dec.i.i28, 0
  %or.cond.i.i30 = select i1 %tobool.not.i.i27, i1 true, i1 %tobool1.not.i.i29
  br i1 %or.cond.i.i30, label %axi_clkgen_wait_non_busy.exit.i32, label %do.body.i.i31.do.body.i.i31_crit_edge

do.body.i.i31.do.body.i.i31_crit_edge:            ; preds = %do.body.i.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i31

axi_clkgen_wait_non_busy.exit.i32:                ; preds = %do.body.i.i31
  br i1 %tobool.not.i.i27, label %if.end.i36, label %axi_clkgen_wait_non_busy.exit.i32.axi_clkgen_mmcm_read.exit48_crit_edge

axi_clkgen_wait_non_busy.exit.i32.axi_clkgen_mmcm_read.exit48_crit_edge: ; preds = %axi_clkgen_wait_non_busy.exit.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_mmcm_read.exit48

if.end.i36:                                       ; preds = %axi_clkgen_wait_non_busy.exit.i32
  %shl.i33 = shl i32 %reg1, 16
  %or.i34 = or i32 %shl.i33, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i34) #7
  %18 = ptrtoint ptr %axi_clkgen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %axi_clkgen, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %19, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35, i32 %17) #7, !srcloc !37
  br label %do.body.i8.i44

do.body.i8.i44:                                   ; preds = %do.body.i8.i44.do.body.i8.i44_crit_edge, %if.end.i36
  %timeout.0.i1.i37 = phi i32 [ 10000, %if.end.i36 ], [ %dec.i5.i41, %do.body.i8.i44.do.body.i8.i44_crit_edge ]
  %20 = ptrtoint ptr %axi_clkgen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %axi_clkgen, align 4
  %add.ptr.i.i2.i38 = getelementptr i8, ptr %21, i32 116
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i38) #7, !srcloc !38
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %and.i3.i39 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i39)
  %tobool.not.i4.i40 = icmp eq i32 %and.i3.i39, 0
  %dec.i5.i41 = add nsw i32 %timeout.0.i1.i37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i5.i41)
  %tobool1.not.i6.i42 = icmp eq i32 %dec.i5.i41, 0
  %or.cond.i7.i43 = select i1 %tobool.not.i4.i40, i1 true, i1 %tobool1.not.i6.i42
  br i1 %or.cond.i7.i43, label %axi_clkgen_wait_non_busy.exit11.i45, label %do.body.i8.i44.do.body.i8.i44_crit_edge

do.body.i8.i44.do.body.i8.i44_crit_edge:          ; preds = %do.body.i8.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i8.i44

axi_clkgen_wait_non_busy.exit11.i45:              ; preds = %do.body.i8.i44
  call void @__sanitizer_cov_trace_pc() #9
  %and4.i9.i46 = and i32 %23, 65535
  %spec.select = select i1 %tobool.not.i4.i40, i32 %and4.i9.i46, i32 -1
  br label %axi_clkgen_mmcm_read.exit48

axi_clkgen_mmcm_read.exit48:                      ; preds = %axi_clkgen_wait_non_busy.exit11.i45, %axi_clkgen_wait_non_busy.exit.i32.axi_clkgen_mmcm_read.exit48_crit_edge
  %val1.0 = phi i32 [ -1, %axi_clkgen_wait_non_busy.exit.i32.axi_clkgen_mmcm_read.exit48_crit_edge ], [ %spec.select, %axi_clkgen_wait_non_busy.exit11.i45 ]
  %and2 = and i32 %val1.0, 63
  %shr = lshr i32 %val1.0, 6
  %and3 = and i32 %shr, 63
  %add = add nuw nsw i32 %and3, %and2
  %shl = shl nuw nsw i32 %add, 3
  %and4 = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %axi_clkgen_mmcm_read.exit48.cleanup_crit_edge, label %if.then6

axi_clkgen_mmcm_read.exit48.cleanup_crit_edge:    ; preds = %axi_clkgen_mmcm_read.exit48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %axi_clkgen_mmcm_read.exit48
  call void @__sanitizer_cov_trace_pc() #9
  %and7 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %and9 = and i32 %10, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and9)
  %cmp.not = icmp eq i32 %and9, 4096
  %or.cond = or i1 %tobool8.not, %cmp.not
  %div.0.v = select i1 %or.cond, i32 16, i32 8
  %div.0 = add nuw nsw i32 %shl, %div.0.v
  %and4.i9.i = lshr i32 %10, 12
  %and15 = and i32 %and4.i9.i, 7
  %add16 = or i32 %div.0, %and15
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %axi_clkgen_mmcm_read.exit48.cleanup_crit_edge, %axi_clkgen_wait_non_busy.exit11.i.cleanup_crit_edge, %axi_clkgen_wait_non_busy.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %add16, %if.then6 ], [ %shl, %axi_clkgen_mmcm_read.exit48.cleanup_crit_edge ], [ 8, %axi_clkgen_wait_non_busy.exit11.i.cleanup_crit_edge ], [ 8, %axi_clkgen_wait_non_busy.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axi_clkgen_calc_params(ptr nocapture noundef readonly %limits, i32 noundef %fin, i32 noundef %fout, ptr nocapture noundef writeonly %best_d, ptr nocapture noundef writeonly %best_m, ptr nocapture noundef writeonly %best_dout) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %fin, 1000
  %div1 = udiv i32 %fout, 1000
  %0 = ptrtoint ptr %best_d to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %best_d, align 4
  %1 = ptrtoint ptr %best_m to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %best_m, align 4
  %2 = ptrtoint ptr %best_dout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %best_dout, align 4
  %fpfd_max = getelementptr inbounds %struct.axi_clkgen_limits, ptr %limits, i32 0, i32 1
  %3 = ptrtoint ptr %fpfd_max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fpfd_max, align 4
  %add = add nsw i32 %div, -1
  %sub = add i32 %add, %4
  %div3 = udiv i32 %sub, %4
  %5 = tail call i32 @llvm.umax.i32(i32 %div3, i32 1)
  %6 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %limits, align 4
  %div4 = udiv i32 %div, %7
  %8 = tail call i32 @llvm.umin.i32(i32 %div4, i32 80)
  %fvco_min = getelementptr inbounds %struct.axi_clkgen_limits, ptr %limits, i32 0, i32 2
  %fvco_max = getelementptr inbounds %struct.axi_clkgen_limits, ptr %limits, i32 0, i32 3
  %div55 = udiv i32 %fout, 2000
  %9 = ptrtoint ptr %fvco_min to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fvco_min, align 4
  %11 = ptrtoint ptr %fvco_max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fvco_max, align 4
  %sub13 = add i32 %add, %10
  %div14 = udiv i32 %sub13, %div
  %mul = mul i32 %div14, %5
  %13 = tail call i32 @llvm.umax.i32(i32 %mul, i32 1)
  %mul21 = mul i32 %12, %8
  %div22 = udiv i32 %mul21, %div
  %14 = tail call i32 @llvm.umin.i32(i32 %div22, i32 64)
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp30.not189 = icmp ugt i32 %13, %14
  br i1 %cmp30.not189, label %entry.for.end100_crit_edge, label %for.body.lr.ph

entry.for.end100_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end100

for.body.lr.ph:                                   ; preds = %entry
  %add32 = add i32 %12, -1
  br label %for.body

for.body:                                         ; preds = %for.inc98.for.body_crit_edge, %for.body.lr.ph
  %m.0191 = phi i32 [ %13, %for.body.lr.ph ], [ %inc99, %for.inc98.for.body_crit_edge ]
  %best_f.1190 = phi i32 [ -1, %for.body.lr.ph ], [ %best_f.2.lcssa, %for.inc98.for.body_crit_edge ]
  %mul31 = mul i32 %m.0191, %div
  %sub33 = add i32 %add32, %mul31
  %div34 = udiv i32 %sub33, %12
  %15 = tail call i32 @llvm.umax.i32(i32 %5, i32 %div34)
  %div42 = udiv i32 %mul31, %10
  %16 = tail call i32 @llvm.umin.i32(i32 %8, i32 %div42)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %16)
  %cmp50.not185 = icmp ugt i32 %15, %16
  br i1 %cmp50.not185, label %for.body.for.inc98_crit_edge, label %for.body51.lr.ph

for.body.for.inc98_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc98

for.body51.lr.ph:                                 ; preds = %for.body
  %shl92 = shl i32 %m.0191, 3
  br label %for.body51

for.body51:                                       ; preds = %for.inc.for.body51_crit_edge, %for.body51.lr.ph
  %d.0187 = phi i32 [ %15, %for.body51.lr.ph ], [ %inc, %for.inc.for.body51_crit_edge ]
  %best_f.2186 = phi i32 [ %best_f.1190, %for.body51.lr.ph ], [ %best_f.3, %for.inc.for.body51_crit_edge ]
  %div53 = udiv i32 %mul31, %d.0187
  %add56 = add i32 %div53, %div55
  %div57 = udiv i32 %add56, %div1
  %17 = tail call i32 @llvm.umax.i32(i32 %div57, i32 1)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 128)
  %div71 = udiv i32 %div53, %18
  %sub73 = sub i32 %div71, %div1
  %19 = tail call i32 @llvm.abs.i32(i32 %sub73, i1 false)
  %sub82 = sub i32 %best_f.2186, %div1
  %20 = tail call i32 @llvm.abs.i32(i32 %sub82, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %20)
  %cmp90 = icmp slt i32 %19, %20
  br i1 %cmp90, label %if.then, label %for.body51.for.inc_crit_edge

for.body51.for.inc_crit_edge:                     ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body51
  %21 = ptrtoint ptr %best_d to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %d.0187, ptr %best_d, align 4
  %22 = ptrtoint ptr %best_m to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl92, ptr %best_m, align 4
  %shl94 = shl nuw nsw i32 %18, 3
  %23 = ptrtoint ptr %best_dout to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl94, ptr %best_dout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div71, i32 %div1)
  %cmp95 = icmp eq i32 %div71, %div1
  br i1 %cmp95, label %if.then.cleanup_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %for.body51.for.inc_crit_edge
  %best_f.3 = phi i32 [ %div71, %if.then.for.inc_crit_edge ], [ %best_f.2186, %for.body51.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %d.0187, 1
  %cmp50.not.not = icmp ult i32 %d.0187, %16
  br i1 %cmp50.not.not, label %for.inc.for.body51_crit_edge, label %for.inc.for.inc98_crit_edge

for.inc.for.inc98_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc98

for.inc.for.body51_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body51

for.inc98:                                        ; preds = %for.inc.for.inc98_crit_edge, %for.body.for.inc98_crit_edge
  %best_f.2.lcssa = phi i32 [ %best_f.1190, %for.body.for.inc98_crit_edge ], [ %best_f.3, %for.inc.for.inc98_crit_edge ]
  %inc99 = add nuw nsw i32 %m.0191, 1
  %exitcond = icmp eq i32 %m.0191, %14
  br i1 %exitcond, label %for.inc98.for.end100_crit_edge, label %for.inc98.for.body_crit_edge

for.inc98.for.body_crit_edge:                     ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc98.for.end100_crit_edge:                   ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end100

for.end100:                                       ; preds = %for.inc98.for.end100_crit_edge, %entry.for.end100_crit_edge
  %best_f.1.lcssa = phi i32 [ -1, %entry.for.end100_crit_edge ], [ %best_f.2.lcssa, %for.inc98.for.end100_crit_edge ]
  %24 = ptrtoint ptr %fvco_min to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fvco_min, align 4
  %shl.1 = shl i32 %25, 3
  %26 = ptrtoint ptr %fvco_max to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fvco_max, align 4
  %shl11.1 = shl i32 %27, 3
  %sub13.1 = add i32 %add, %shl.1
  %div14.1 = udiv i32 %sub13.1, %div
  %mul.1 = mul i32 %div14.1, %5
  %28 = tail call i32 @llvm.umax.i32(i32 %mul.1, i32 1)
  %mul21.1 = mul i32 %shl11.1, %8
  %div22.1 = udiv i32 %mul21.1, %div
  %29 = tail call i32 @llvm.umin.i32(i32 %div22.1, i32 512)
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %29)
  %cmp30.not189.1 = icmp ugt i32 %28, %29
  br i1 %cmp30.not189.1, label %for.end100.cleanup_crit_edge, label %for.body.lr.ph.1

for.end100.cleanup_crit_edge:                     ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.1:                                 ; preds = %for.end100
  %add32.1 = add i32 %shl11.1, -1
  br label %for.body.1

for.body.1:                                       ; preds = %for.inc98.1.for.body.1_crit_edge, %for.body.lr.ph.1
  %m.0191.1 = phi i32 [ %28, %for.body.lr.ph.1 ], [ %inc99.1, %for.inc98.1.for.body.1_crit_edge ]
  %best_f.1190.1 = phi i32 [ %best_f.1.lcssa, %for.body.lr.ph.1 ], [ %best_f.2.lcssa.1, %for.inc98.1.for.body.1_crit_edge ]
  %mul31.1 = mul i32 %m.0191.1, %div
  %sub33.1 = add i32 %add32.1, %mul31.1
  %div34.1 = udiv i32 %sub33.1, %shl11.1
  %30 = tail call i32 @llvm.umax.i32(i32 %5, i32 %div34.1)
  %div42.1 = udiv i32 %mul31.1, %shl.1
  %31 = tail call i32 @llvm.umin.i32(i32 %8, i32 %div42.1)
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %31)
  %cmp50.not185.1 = icmp ugt i32 %30, %31
  br i1 %cmp50.not185.1, label %for.body.1.for.inc98.1_crit_edge, label %for.body.1.for.body51.1_crit_edge

for.body.1.for.body51.1_crit_edge:                ; preds = %for.body.1
  br label %for.body51.1

for.body.1.for.inc98.1_crit_edge:                 ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc98.1

for.body51.1:                                     ; preds = %for.inc.1.for.body51.1_crit_edge, %for.body.1.for.body51.1_crit_edge
  %d.0187.1 = phi i32 [ %inc.1, %for.inc.1.for.body51.1_crit_edge ], [ %30, %for.body.1.for.body51.1_crit_edge ]
  %best_f.2186.1 = phi i32 [ %best_f.3.1, %for.inc.1.for.body51.1_crit_edge ], [ %best_f.1190.1, %for.body.1.for.body51.1_crit_edge ]
  %div53.1 = udiv i32 %mul31.1, %d.0187.1
  %add56.1 = add i32 %div53.1, %div55
  %div57.1 = udiv i32 %add56.1, %div1
  %32 = tail call i32 @llvm.umax.i32(i32 %div57.1, i32 1)
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 1024)
  %div71.1 = udiv i32 %div53.1, %33
  %sub73.1 = sub i32 %div71.1, %div1
  %34 = tail call i32 @llvm.abs.i32(i32 %sub73.1, i1 false)
  %sub82.1 = sub i32 %best_f.2186.1, %div1
  %35 = tail call i32 @llvm.abs.i32(i32 %sub82.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %35)
  %cmp90.1 = icmp slt i32 %34, %35
  br i1 %cmp90.1, label %if.then.1, label %for.body51.1.for.inc.1_crit_edge

for.body51.1.for.inc.1_crit_edge:                 ; preds = %for.body51.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.body51.1
  %36 = ptrtoint ptr %best_d to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %d.0187.1, ptr %best_d, align 4
  %37 = ptrtoint ptr %best_m to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %m.0191.1, ptr %best_m, align 4
  %38 = ptrtoint ptr %best_dout to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %33, ptr %best_dout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div71.1, i32 %div1)
  %cmp95.1 = icmp eq i32 %div71.1, %div1
  br i1 %cmp95.1, label %if.then.1.cleanup_crit_edge, label %if.then.1.for.inc.1_crit_edge

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1.cleanup_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.1:                                        ; preds = %if.then.1.for.inc.1_crit_edge, %for.body51.1.for.inc.1_crit_edge
  %best_f.3.1 = phi i32 [ %div71.1, %if.then.1.for.inc.1_crit_edge ], [ %best_f.2186.1, %for.body51.1.for.inc.1_crit_edge ]
  %inc.1 = add nuw nsw i32 %d.0187.1, 1
  %cmp50.not.1.not = icmp ult i32 %d.0187.1, %31
  br i1 %cmp50.not.1.not, label %for.inc.1.for.body51.1_crit_edge, label %for.inc.1.for.inc98.1_crit_edge

for.inc.1.for.inc98.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc98.1

for.inc.1.for.body51.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body51.1

for.inc98.1:                                      ; preds = %for.inc.1.for.inc98.1_crit_edge, %for.body.1.for.inc98.1_crit_edge
  %best_f.2.lcssa.1 = phi i32 [ %best_f.1190.1, %for.body.1.for.inc98.1_crit_edge ], [ %best_f.3.1, %for.inc.1.for.inc98.1_crit_edge ]
  %inc99.1 = add nuw nsw i32 %m.0191.1, 1
  %exitcond.1 = icmp eq i32 %m.0191.1, %29
  br i1 %exitcond.1, label %for.inc98.1.cleanup_crit_edge, label %for.inc98.1.for.body.1_crit_edge

for.inc98.1.for.body.1_crit_edge:                 ; preds = %for.inc98.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.1

for.inc98.1.cleanup_crit_edge:                    ; preds = %for.inc98.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc98.1.cleanup_crit_edge, %if.then.1.cleanup_crit_edge, %for.end100.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axi_clkgen_mmcm_write(ptr nocapture noundef readonly %axi_clkgen, i32 noundef %reg, i32 noundef %val, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 10000, %entry ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %0 = ptrtoint ptr %axi_clkgen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %axi_clkgen, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 116
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %3 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %axi_clkgen_wait_non_busy.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

axi_clkgen_wait_non_busy.exit:                    ; preds = %do.body.i
  br i1 %tobool.not.i, label %axi_clkgen_wait_non_busy.exit.do.body.i.i_crit_edge, label %axi_clkgen_wait_non_busy.exit.cleanup_crit_edge

axi_clkgen_wait_non_busy.exit.cleanup_crit_edge:  ; preds = %axi_clkgen_wait_non_busy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

axi_clkgen_wait_non_busy.exit.do.body.i.i_crit_edge: ; preds = %axi_clkgen_wait_non_busy.exit
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %axi_clkgen_wait_non_busy.exit.do.body.i.i_crit_edge
  %timeout.0.i.i = phi i32 [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ 10000, %axi_clkgen_wait_non_busy.exit.do.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %axi_clkgen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %axi_clkgen, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 116
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %7 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool1.not.i.i = icmp eq i32 %dec.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool1.not.i.i
  br i1 %or.cond.i.i, label %axi_clkgen_wait_non_busy.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

axi_clkgen_wait_non_busy.exit.i:                  ; preds = %do.body.i.i
  %shl.i = shl i32 %reg, 16
  br i1 %tobool.not.i.i, label %if.end.i, label %axi_clkgen_wait_non_busy.exit.i.axi_clkgen_mmcm_read.exit_crit_edge

axi_clkgen_wait_non_busy.exit.i.axi_clkgen_mmcm_read.exit_crit_edge: ; preds = %axi_clkgen_wait_non_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %axi_clkgen_mmcm_read.exit

if.end.i:                                         ; preds = %axi_clkgen_wait_non_busy.exit.i
  %or.i = or i32 %shl.i, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %9 = ptrtoint ptr %axi_clkgen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %axi_clkgen, align 4
  %add.ptr.i.i1 = getelementptr i8, ptr %10, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1, i32 %8) #7, !srcloc !37
  br label %do.body.i8.i

do.body.i8.i:                                     ; preds = %do.body.i8.i.do.body.i8.i_crit_edge, %if.end.i
  %timeout.0.i1.i = phi i32 [ 10000, %if.end.i ], [ %dec.i5.i, %do.body.i8.i.do.body.i8.i_crit_edge ]
  %11 = ptrtoint ptr %axi_clkgen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %axi_clkgen, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %12, i32 116
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #7, !srcloc !38
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %and.i3.i = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i4.i = icmp eq i32 %and.i3.i, 0
  %dec.i5.i = add nsw i32 %timeout.0.i1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i5.i)
  %tobool1.not.i6.i = icmp eq i32 %dec.i5.i, 0
  %or.cond.i7.i = select i1 %tobool.not.i4.i, i1 true, i1 %tobool1.not.i6.i
  br i1 %or.cond.i7.i, label %axi_clkgen_wait_non_busy.exit11.i, label %do.body.i8.i.do.body.i8.i_crit_edge

do.body.i8.i.do.body.i8.i_crit_edge:              ; preds = %do.body.i8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i8.i

axi_clkgen_wait_non_busy.exit11.i:                ; preds = %do.body.i8.i
  call void @__sanitizer_cov_trace_pc() #9
  %and4.i9.i = and i32 %14, 65535
  %spec.select = select i1 %tobool.not.i4.i, i32 %and4.i9.i, i32 0
  br label %axi_clkgen_mmcm_read.exit

axi_clkgen_mmcm_read.exit:                        ; preds = %axi_clkgen_wait_non_busy.exit11.i, %axi_clkgen_wait_non_busy.exit.i.axi_clkgen_mmcm_read.exit_crit_edge
  %reg_val.0 = phi i32 [ %spec.select, %axi_clkgen_wait_non_busy.exit11.i ], [ 0, %axi_clkgen_wait_non_busy.exit.i.axi_clkgen_mmcm_read.exit_crit_edge ]
  %neg = xor i32 %mask, -1
  %and = and i32 %reg_val.0, %neg
  %and5 = and i32 %mask, %val
  %or = or i32 %shl.i, %and5
  %or6 = or i32 %or, %and
  %or7 = or i32 %or6, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %or7) #7
  %16 = ptrtoint ptr %axi_clkgen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %axi_clkgen, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #7, !srcloc !37
  br label %cleanup

cleanup:                                          ; preds = %axi_clkgen_mmcm_read.exit, %axi_clkgen_wait_non_busy.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_clk_axi_clkgen__203_588_axi_clkgen_driver_init6, !1, !"__initcall__kmod_clk_axi_clkgen__203_588_axi_clkgen_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-axi-clkgen.c", i32 588, i32 1}
!2 = !{ptr @__exitcall_axi_clkgen_driver_exit, !1, !"__exitcall_axi_clkgen_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file204, !4, !"__UNIQUE_ID_file204", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-axi-clkgen.c", i32 590, i32 1}
!5 = !{ptr @__UNIQUE_ID_license205, !4, !"__UNIQUE_ID_license205", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author206, !7, !"__UNIQUE_ID_author206", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-axi-clkgen.c", i32 591, i32 1}
!8 = !{ptr @__UNIQUE_ID_description207, !9, !"__UNIQUE_ID_description207", i1 false, i1 false}
!9 = !{!"../drivers/clk/clk-axi-clkgen.c", i32 592, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-axi-clkgen.c", i32 582, i32 11}
!12 = !{ptr @axi_clkgen_driver, !13, !"axi_clkgen_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-axi-clkgen.c", i32 580, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-axi-clkgen.c", i32 541, i32 45}
!16 = !{ptr @axi_clkgen_ops, !17, !"axi_clkgen_ops", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-axi-clkgen.c", i32 496, i32 29}
!18 = !{ptr @axi_clkgen_lock_table, !19, !"axi_clkgen_lock_table", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-axi-clkgen.c", i32 92, i32 23}
!20 = !{ptr @axi_clkgen_ids, !21, !"axi_clkgen_ids", i1 false, i1 false}
!21 = !{!"../drivers/clk/clk-axi-clkgen.c", i32 567, i32 34}
!22 = !{ptr @axi_clkgen_zynqmp_default_limits, !23, !"axi_clkgen_zynqmp_default_limits", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-axi-clkgen.c", i32 111, i32 39}
!24 = !{ptr @axi_clkgen_zynq_default_limits, !25, !"axi_clkgen_zynq_default_limits", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-axi-clkgen.c", i32 118, i32 39}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"auto-init"}
!36 = !{i64 2152951983}
!37 = !{i64 5364047}
!38 = !{i64 5364465}
!39 = !{i64 2152952669}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2148328158, i64 2148328438, i64 2148328772, i64 2148329106}
