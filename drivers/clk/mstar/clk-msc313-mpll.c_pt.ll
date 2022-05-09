; ModuleID = '/llk/IR_all_yes/drivers/clk/mstar/clk-msc313-mpll.c_pt.bc'
source_filename = "../drivers/clk/mstar/clk-msc313-mpll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
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
%struct.msc313_mpll = type { %struct.clk_hw, ptr, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__initcall__kmod_clk_msc313_mpll__174_155_msc313_mpll_driver_init6 = internal global ptr @msc313_mpll_driver_init, section ".initcall6.init", align 4
@msc313_mpll_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @msc313_mpll_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msc313_mpll_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mstar-msc313-mpll\00", [46 x i8] zeroinitializer }, align 32
@msc313_mpll_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mstar,msc313-mpll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@msc313_mpll_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@msc313_mpll_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 4, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"clk_msc313_mpll:90:(&msc313_mpll_regmap_config)->lock\00", [42 x i8] zeroinitializer }, align 32
@msc313_mpll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msc313_mpll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mpll_parent = internal constant { %struct.clk_parent_data, [16 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s_div_%u\00", [22 x i8] zeroinitializer }, align 32
@output_dividers = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 10], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [19 x i8] c"msc313_mpll_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 148, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 150, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"msc313_mpll_of_match\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 143, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [26 x i8] c"msc313_mpll_regmap_config\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 16, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 90, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"msc313_mpll_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 63, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"mpll_parent\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 67, i32 37 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 126, i32 48 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"output_dividers\00", align 1
@___asan_gen_.31 = private constant [39 x i8] c"../drivers/clk/mstar/clk-msc313-mpll.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 27, i32 27 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__initcall__kmod_clk_msc313_mpll__174_155_msc313_mpll_driver_init6, ptr @msc313_mpll_driver, ptr @.str, ptr @msc313_mpll_of_match, ptr @msc313_mpll_probe._key, ptr @msc313_mpll_regmap_config, ptr @.str.1, ptr @msc313_mpll_ops, ptr @mpll_parent, ptr @.str.2, ptr @output_dividers], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313_mpll_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313_mpll_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313_mpll_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313_mpll_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313_mpll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpll_parent to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_dividers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313_mpll_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @msc313_mpll_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313_mpll_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %clk_init) #5
  %0 = getelementptr inbounds i8, ptr %clk_init, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @msc313_mpll_regmap_config, ptr noundef nonnull @msc313_mpll_probe._key, ptr noundef nonnull @.str.1) #5
  %cmp.i148 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %call7, [5 x i32] [i32 8, i32 4, i32 5, i32 0, i32 0]) #5
  %input_div = getelementptr inbounds %struct.msc313_mpll, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %input_div to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %input_div, align 4
  %cmp.i149 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call19 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %call7, [5 x i32] [i32 12, i32 12, i32 13, i32 0, i32 0]) #5
  %output_div = getelementptr inbounds %struct.msc313_mpll, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %output_div to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call19, ptr %output_div, align 4
  %cmp.i150 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %call26 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %call7, [5 x i32] [i32 8, i32 8, i32 9, i32 0, i32 0]) #5
  %loop_div_first = getelementptr inbounds %struct.msc313_mpll, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %loop_div_first to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call26, ptr %loop_div_first, align 4
  %cmp.i151 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  %call33 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %call7, [5 x i32] [i32 12, i32 0, i32 7, i32 0, i32 0]) #5
  %loop_div_second = getelementptr inbounds %struct.msc313_mpll, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %loop_div_second to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call33, ptr %loop_div_second, align 4
  %cmp.i152 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  %call.i153 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #5
  %clk_data = getelementptr inbounds %struct.msc313_mpll, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %clk_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i153, ptr %clk_data, align 4
  %tobool43.not = icmp eq ptr %call.i153, null
  br i1 %tobool43.not, label %if.end39.cleanup_crit_edge, label %if.end45

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end45.dev_name.exit_crit_edge

if.end45.dev_name.exit_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end45.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %16, %if.end.i ], [ %14, %if.end45.dev_name.exit_crit_edge ]
  %17 = ptrtoint ptr %clk_init to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.0.i, ptr %clk_init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %clk_init, i32 0, i32 1
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @msc313_mpll_ops, ptr %ops, align 4
  %parent_data = getelementptr inbounds %struct.clk_init_data, ptr %clk_init, i32 0, i32 3
  %19 = ptrtoint ptr %parent_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mpll_parent, ptr %parent_data, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %clk_init, i32 0, i32 5
  %20 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %num_parents, align 4
  %init = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %clk_init, ptr %init, align 4
  %call48 = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end51:                                         ; preds = %dev_name.exit
  %22 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_data, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %23, align 4
  %25 = load ptr, ptr %clk_data, align 4
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %hws, align 4
  br label %for.body

for.body:                                         ; preds = %if.end67.for.body_crit_edge, %if.end51
  %i.0155 = phi i32 [ 0, %if.end51 ], [ %add, %if.end67.for.body_crit_edge ]
  %27 = ptrtoint ptr %clk_init to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_init, align 4
  %arrayidx56 = getelementptr [7 x i32], ptr @output_dividers, i32 0, i32 %i.0155
  %29 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx56, align 4
  %call57 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %28, i32 noundef %30) #5
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %for.body.cleanup_crit_edge, label %if.end60

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60:                                         ; preds = %for.body
  %31 = ptrtoint ptr %clk_init to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_init, align 4
  %call63 = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %dev1, ptr noundef nonnull %call57, ptr noundef %32, i32 noundef 0, i32 noundef 1, i32 noundef %30) #5
  %cmp.i154 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %call63 to i32
  br label %cleanup

if.end67:                                         ; preds = %if.end60
  %34 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk_data, align 4
  %add = add nuw nsw i32 %i.0155, 1
  %arrayidx70 = getelementptr %struct.clk_hw_onecell_data, ptr %35, i32 0, i32 1, i32 %add
  %36 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call63, ptr %arrayidx70, align 4
  %exitcond.not = icmp eq i32 %add, 7
  br i1 %exitcond.not, label %for.end, label %if.end67.for.body_crit_edge

if.end67.for.body_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %38 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk_data, align 4
  %call73 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %39) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then65, %for.body.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.then36, %if.then29, %if.then22, %if.then15, %if.then9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %3, %if.then9 ], [ %5, %if.then15 ], [ %7, %if.then22 ], [ %9, %if.then29 ], [ %11, %if.then36 ], [ %33, %if.then65 ], [ %call73, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end39.cleanup_crit_edge ], [ %call48, %dev_name.exit.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %clk_init) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313_mpll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %input_div = alloca i32, align 4
  %output_div = alloca i32, align 4
  %loop_first = alloca i32, align 4
  %loop_second = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input_div) #5
  %0 = ptrtoint ptr %input_div to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %input_div, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %output_div) #5
  %1 = ptrtoint ptr %output_div to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %output_div, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %loop_first) #5
  %2 = ptrtoint ptr %loop_first to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %loop_first, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %loop_second) #5
  %3 = ptrtoint ptr %loop_second to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %loop_second, align 4, !annotation !38
  %input_div1 = getelementptr inbounds %struct.msc313_mpll, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %input_div1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_div1, align 4
  %call = call i32 @regmap_field_read(ptr noundef %5, ptr noundef nonnull %input_div) #5
  %output_div2 = getelementptr inbounds %struct.msc313_mpll, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %output_div2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %output_div2, align 4
  %call3 = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %output_div) #5
  %loop_div_first = getelementptr inbounds %struct.msc313_mpll, ptr %hw, i32 0, i32 2
  %8 = ptrtoint ptr %loop_div_first to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %loop_div_first, align 4
  %call4 = call i32 @regmap_field_read(ptr noundef %9, ptr noundef nonnull %loop_first) #5
  %loop_div_second = getelementptr inbounds %struct.msc313_mpll, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %loop_div_second to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %loop_div_second, align 4
  %call5 = call i32 @regmap_field_read(ptr noundef %11, ptr noundef nonnull %loop_second) #5
  %12 = ptrtoint ptr %input_div to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %input_div, align 4
  %14 = ptrtoint ptr %loop_first to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %loop_first, align 4
  %16 = ptrtoint ptr %loop_second to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %loop_second, align 4
  %18 = call i32 @llvm.umax.i32(i32 %17, i32 1)
  %19 = ptrtoint ptr %output_div to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %output_div, align 4
  %21 = call i32 @llvm.umax.i32(i32 %20, i32 1)
  %div26 = lshr i32 %parent_rate, %13
  %mul = shl i32 %18, %15
  %mul8 = mul i32 %mul, %div26
  %div15 = udiv i32 %mul8, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %loop_second) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %loop_first) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %output_div) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input_div) #5
  ret i32 %div15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_clk_msc313_mpll__174_155_msc313_mpll_driver_init6, !1, !"__initcall__kmod_clk_msc313_mpll__174_155_msc313_mpll_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/mstar/clk-msc313-mpll.c", i32 155, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/mstar/clk-msc313-mpll.c", i32 150, i32 11}
!4 = !{ptr @msc313_mpll_driver, !5, !"msc313_mpll_driver", i1 false, i1 false}
!5 = !{!"../drivers/clk/mstar/clk-msc313-mpll.c", i32 148, i32 31}
!6 = !{ptr @msc313_mpll_probe._key, !7, !"_key", i1 false, i1 false}
!7 = !{!"../drivers/clk/mstar/clk-msc313-mpll.c", i32 90, i32 11}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/mstar/clk-msc313-mpll.c", i32 126, i32 48}
!11 = !{ptr @msc313_mpll_regmap_config, !12, !"msc313_mpll_regmap_config", i1 false, i1 false}
!12 = !{!"../drivers/clk/mstar/clk-msc313-mpll.c", i32 16, i32 35}
!13 = distinct !{null, !14, !"config1_input_div_first", i1 false, i1 false}
!14 = !{!"../drivers/clk/mstar/clk-msc313-mpll.c", i32 23, i32 31}
!15 = distinct !{null, !16, !"config2_output_div_first", i1 false, i1 false}
!16 = !{!"../drivers/clk/mstar/clk-msc313-mpll.c", i32 24, i32 31}
!17 = distinct !{null, !18, !"config1_loop_div_first", i1 false, i1 false}
!18 = !{!"../drivers/clk/mstar/clk-msc313-mpll.c", i32 22, i32 31}
!19 = distinct !{null, !20, !"config2_loop_div_second", i1 false, i1 false}
!20 = !{!"../drivers/clk/mstar/clk-msc313-mpll.c", i32 25, i32 31}
!21 = !{ptr @msc313_mpll_ops, !22, !"msc313_mpll_ops", i1 false, i1 false}
!22 = !{!"../drivers/clk/mstar/clk-msc313-mpll.c", i32 63, i32 29}
!23 = !{ptr @mpll_parent, !24, !"mpll_parent", i1 false, i1 false}
!24 = !{!"../drivers/clk/mstar/clk-msc313-mpll.c", i32 67, i32 37}
!25 = !{ptr @output_dividers, !26, !"output_dividers", i1 false, i1 false}
!26 = !{!"../drivers/clk/mstar/clk-msc313-mpll.c", i32 27, i32 27}
!27 = !{ptr @msc313_mpll_of_match, !28, !"msc313_mpll_of_match", i1 false, i1 false}
!28 = !{!"../drivers/clk/mstar/clk-msc313-mpll.c", i32 143, i32 34}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
