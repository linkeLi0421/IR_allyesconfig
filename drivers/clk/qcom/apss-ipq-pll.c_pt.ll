; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/apss-ipq-pll.c_pt.bc'
source_filename = "../drivers/clk/qcom/apss-ipq-pll.c"
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
%struct.clk_alpha_pll = type { i32, ptr, ptr, i32, i8, %struct.clk_regmap }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.alpha_pll_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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

@__initcall__kmod_apss_ipq_pll__170_93_apss_ipq_pll_driver_init6 = internal global ptr @apss_ipq_pll_driver_init, section ".initcall6.init", align 4
@apss_ipq_pll_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @apss_ipq_pll_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @apss_ipq_pll_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_apss_ipq_pll_driver_exit = internal global ptr @apss_ipq_pll_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [71 x i8] c"apss_ipq_pll.description=Qualcomm technology Inc APSS ALPHA PLL Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [48 x i8] c"apss_ipq_pll.file=drivers/clk/qcom/apss-ipq-pll\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [28 x i8] c"apss_ipq_pll.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom-ipq-apss-pll\00", [46 x i8] zeroinitializer }, align 32
@apss_ipq_pll_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq6018-a53pll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@apss_ipq_pll_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ipq_pll_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"apss_ipq_pll:66:(&ipq_pll_regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@ipq_pll = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 0, ptr @ipq_pll_offsets, ptr null, i32 0, i8 8, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.4 }, ptr null, i32 0, i32 1, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@ipq_pll_config = internal constant { %struct.alpha_pll_config, [32 x i8] } { %struct.alpha_pll_config { i32 55, i32 0, i32 0, i32 68424192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@ipq_pll_offsets = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\08\00\10\00\18\00\00 $\0004\00(", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"a53pll\00", [25 x i8] zeroinitializer }, align 32
@clk_alpha_pll_huayra_ops = external dso_local constant %struct.clk_ops, align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.2, ptr @clk_alpha_pll_huayra_ops, ptr null, ptr @.compoundliteral, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [20 x i8] c"apss_ipq_pll_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 86, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 89, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [25 x i8] c"apss_ipq_pll_match_table\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 80, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"ipq_pll_regmap_config\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 47, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 66, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [8 x i8] c"ipq_pll\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 21, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"ipq_pll_config\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 39, i32 38 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"ipq_pll_offsets\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 10, i32 17 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 29, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [35 x i8] c"../drivers/clk/qcom/apss-ipq-pll.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 31, i32 16 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_apss_ipq_pll_driver_exit, ptr @__initcall__kmod_apss_ipq_pll__170_93_apss_ipq_pll_driver_init6, ptr @apss_ipq_pll_driver_exit, ptr @apss_ipq_pll_driver, ptr @.str, ptr @apss_ipq_pll_match_table, ptr @apss_ipq_pll_probe._key, ptr @ipq_pll_regmap_config, ptr @.str.1, ptr @ipq_pll, ptr @ipq_pll_config, ptr @ipq_pll_offsets, ptr @.str.2, ptr @.str.3, ptr @.compoundliteral, ptr @.compoundliteral.4], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apss_ipq_pll_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apss_ipq_pll_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apss_ipq_pll_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq_pll_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq_pll to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq_pll_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq_pll_offsets to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apss_ipq_pll_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @apss_ipq_pll_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @apss_ipq_pll_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @apss_ipq_pll_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apss_ipq_pll_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call, ptr noundef nonnull @ipq_pll_regmap_config, ptr noundef nonnull @apss_ipq_pll_probe._key, ptr noundef nonnull @.str.1) #3
  %cmp.i24 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @clk_alpha_pll_configure(ptr noundef nonnull @ipq_pll, ptr noundef %call4, ptr noundef nonnull @ipq_pll_config) #3
  %call9 = tail call i32 @devm_clk_register_regmap(ptr noundef %dev1, ptr noundef getelementptr inbounds (%struct.clk_alpha_pll, ptr @ipq_pll, i32 0, i32 5)) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %call12 = tail call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef getelementptr inbounds (%struct.clk_alpha_pll, ptr @ipq_pll, i32 0, i32 5)) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end8.cleanup_crit_edge, %if.then6, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %1, %if.then6 ], [ %call12, %if.end11 ], [ %call9, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_alpha_pll_configure(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_register_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_apss_ipq_pll__170_93_apss_ipq_pll_driver_init6, !1, !"__initcall__kmod_apss_ipq_pll__170_93_apss_ipq_pll_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/apss-ipq-pll.c", i32 93, i32 1}
!2 = !{ptr @__exitcall_apss_ipq_pll_driver_exit, !1, !"__exitcall_apss_ipq_pll_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/clk/qcom/apss-ipq-pll.c", i32 95, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/clk/qcom/apss-ipq-pll.c", i32 96, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/qcom/apss-ipq-pll.c", i32 89, i32 11}
!10 = !{ptr @apss_ipq_pll_driver, !11, !"apss_ipq_pll_driver", i1 false, i1 false}
!11 = !{!"../drivers/clk/qcom/apss-ipq-pll.c", i32 86, i32 31}
!12 = !{ptr @apss_ipq_pll_probe._key, !13, !"_key", i1 false, i1 false}
!13 = !{!"../drivers/clk/qcom/apss-ipq-pll.c", i32 66, i32 11}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ipq_pll_regmap_config, !16, !"ipq_pll_regmap_config", i1 false, i1 false}
!16 = !{!"../drivers/clk/qcom/apss-ipq-pll.c", i32 47, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/qcom/apss-ipq-pll.c", i32 29, i32 12}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/qcom/apss-ipq-pll.c", i32 31, i32 16}
!21 = !{ptr @ipq_pll, !22, !"ipq_pll", i1 false, i1 false}
!22 = !{!"../drivers/clk/qcom/apss-ipq-pll.c", i32 21, i32 29}
!23 = !{ptr @ipq_pll_offsets, !24, !"ipq_pll_offsets", i1 false, i1 false}
!24 = !{!"../drivers/clk/qcom/apss-ipq-pll.c", i32 10, i32 17}
!25 = !{ptr @ipq_pll_config, !26, !"ipq_pll_config", i1 false, i1 false}
!26 = !{!"../drivers/clk/qcom/apss-ipq-pll.c", i32 39, i32 38}
!27 = !{ptr @apss_ipq_pll_match_table, !28, !"apss_ipq_pll_match_table", i1 false, i1 false}
!28 = !{!"../drivers/clk/qcom/apss-ipq-pll.c", i32 80, i32 34}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
