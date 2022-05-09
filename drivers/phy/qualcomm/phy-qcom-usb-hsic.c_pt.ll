; ModuleID = '/llk/IR_all_yes/drivers/phy/qualcomm/phy-qcom-usb-hsic.c_pt.bc'
source_filename = "../drivers/phy/qualcomm/phy-qcom-usb-hsic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ulpi_driver = type { ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ulpi = type { %struct.ulpi_device_id, ptr, %struct.device }
%struct.ulpi_device_id = type { i16, i16, i32 }
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
%struct.qcom_usb_hsic_phy = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_qcom_usb_hsic__289_153_qcom_usb_hsic_phy_driver_init6 = internal global ptr @qcom_usb_hsic_phy_driver_init, section ".initcall6.init", align 4
@qcom_usb_hsic_phy_driver = internal global { %struct.ulpi_driver, [40 x i8] } { %struct.ulpi_driver { ptr null, ptr @qcom_usb_hsic_phy_probe, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_usb_hsic_phy_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@__exitcall_qcom_usb_hsic_phy_driver_exit = internal global ptr @qcom_usb_hsic_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [52 x i8] c"phy_qcom_usb_hsic.description=Qualcomm USB HSIC phy\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [62 x i8] c"phy_qcom_usb_hsic.file=drivers/phy/qualcomm/phy-qcom-usb-hsic\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [33 x i8] c"phy_qcom_usb_hsic.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom_usb_hsic_phy\00", [46 x i8] zeroinitializer }, align 32
@qcom_usb_hsic_phy_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,usb-hsic-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cal\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cal_sleep\00", [22 x i8] zeroinitializer }, align 32
@qcom_usb_hsic_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @qcom_usb_hsic_phy_power_on, ptr @qcom_usb_hsic_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"qcom_usb_hsic_phy_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 146, i32 27 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 149, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [24 x i8] c"qcom_usb_hsic_phy_match\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 140, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 118, i32 49 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 122, i32 49 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 126, i32 55 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"qcom_usb_hsic_phy_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 96, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [44 x i8] c"../drivers/phy/qualcomm/phy-qcom-usb-hsic.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 56, i32 50 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_qcom_usb_hsic_phy_driver_exit, ptr @__initcall__kmod_phy_qcom_usb_hsic__289_153_qcom_usb_hsic_phy_driver_init6, ptr @qcom_usb_hsic_phy_driver_exit, ptr @qcom_usb_hsic_phy_driver, ptr @.str, ptr @qcom_usb_hsic_phy_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @qcom_usb_hsic_phy_ops, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_usb_hsic_phy_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_usb_hsic_phy_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_usb_hsic_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_usb_hsic_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__ulpi_register_driver(ptr noundef nonnull @qcom_usb_hsic_phy_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_usb_hsic_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ulpi_unregister_driver(ptr noundef nonnull @qcom_usb_hsic_phy_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ulpi_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ulpi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_usb_hsic_phy_probe(ptr noundef %ulpi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ulpi, ptr %call.i, align 4
  %call3 = tail call ptr @devm_pinctrl_get(ptr noundef %dev) #3
  %pctl = getelementptr inbounds %struct.qcom_usb_hsic_phy, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %pctl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %pctl, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #3
  %phy_clk = getelementptr inbounds %struct.qcom_usb_hsic_phy, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %phy_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %phy_clk, align 4
  %cmp.i70 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %call17 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #3
  %cal_clk = getelementptr inbounds %struct.qcom_usb_hsic_phy, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %cal_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %cal_clk, align 4
  %cmp.i71 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #3
  %cal_sleep_clk = getelementptr inbounds %struct.qcom_usb_hsic_phy, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %cal_sleep_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call23, ptr %cal_sleep_clk, align 4
  %cmp.i72 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %of_node = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call30 = tail call ptr @devm_phy_create(ptr noundef %dev, ptr noundef %11, ptr noundef nonnull @qcom_usb_hsic_phy_ops) #3
  %phy = getelementptr inbounds %struct.qcom_usb_hsic_phy, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call30, ptr %phy, align 4
  %cmp.i73 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %driver_data.i.i74 = getelementptr inbounds %struct.device, ptr %call30, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i74 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i74, align 4
  %call39 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #3
  %cmp.i.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %call39 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %15, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then33, %if.then25, %if.then19, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %5, %if.then13 ], [ %7, %if.then19 ], [ %9, %if.then25 ], [ %13, %if.then33 ], [ %spec.select.i, %if.end36 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_usb_hsic_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %phy_clk = getelementptr inbounds %struct.qcom_usb_hsic_phy, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %5) #3
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %cal_clk = getelementptr inbounds %struct.qcom_usb_hsic_phy, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %cal_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cal_clk, align 4
  %call.i66 = tail call i32 @clk_prepare(ptr noundef %7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i67, label %if.end.i70, label %if.end.err_cal_crit_edge

if.end.err_cal_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_cal

if.end.i70:                                       ; preds = %if.end
  %call1.i68 = tail call i32 @clk_enable(ptr noundef %7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %tobool2.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool2.not.i69, label %if.end6, label %if.end.i70.err_cal.sink.split_crit_edge

if.end.i70.err_cal.sink.split_crit_edge:          ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_cal.sink.split

if.end6:                                          ; preds = %if.end.i70
  %cal_sleep_clk = getelementptr inbounds %struct.qcom_usb_hsic_phy, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %cal_sleep_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cal_sleep_clk, align 4
  %call.i74 = tail call i32 @clk_prepare(ptr noundef %9) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %if.end.i78, label %if.end6.err_sleep_crit_edge

if.end6.err_sleep_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_sleep

if.end.i78:                                       ; preds = %if.end6
  %call1.i76 = tail call i32 @clk_enable(ptr noundef %9) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76)
  %tobool2.not.i77 = icmp eq i32 %call1.i76, 0
  br i1 %tobool2.not.i77, label %if.end10, label %if.end.i78.err_sleep.sink.split_crit_edge

if.end.i78.err_sleep.sink.split_crit_edge:        ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_sleep.sink.split

if.end10:                                         ; preds = %if.end.i78
  %call11 = tail call i32 @ulpi_write(ptr noundef %3, i8 noundef zeroext 51, i8 noundef zeroext -1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.err_ulpi_crit_edge

if.end10.err_ulpi_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_ulpi

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @ulpi_write(ptr noundef %3, i8 noundef zeroext 48, i8 noundef zeroext -88) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err_ulpi_crit_edge

if.end14.err_ulpi_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_ulpi

if.end18:                                         ; preds = %if.end14
  %pctl = getelementptr inbounds %struct.qcom_usb_hsic_phy, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pctl, align 4
  %call19 = tail call ptr @pinctrl_lookup_state(ptr noundef %11, ptr noundef nonnull @.str.4) #3
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %13 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pctl, align 4
  %call25 = tail call i32 @pinctrl_select_state(ptr noundef %14, ptr noundef %call19) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.err_ulpi_crit_edge

if.end23.err_ulpi_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_ulpi

if.end28:                                         ; preds = %if.end23
  %call29 = tail call i32 @ulpi_write(ptr noundef %3, i8 noundef zeroext 49, i8 noundef zeroext 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.err_ulpi_crit_edge

if.end28.err_ulpi_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_ulpi

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @ulpi_write(ptr noundef %3, i8 noundef zeroext 9, i8 noundef zeroext 16) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end32.cleanup_crit_edge, label %if.end32.err_ulpi_crit_edge

if.end32.err_ulpi_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_ulpi

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

err_ulpi:                                         ; preds = %if.end32.err_ulpi_crit_edge, %if.end28.err_ulpi_crit_edge, %if.end23.err_ulpi_crit_edge, %if.end14.err_ulpi_crit_edge, %if.end10.err_ulpi_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end10.err_ulpi_crit_edge ], [ %call15, %if.end14.err_ulpi_crit_edge ], [ %call25, %if.end23.err_ulpi_crit_edge ], [ %call29, %if.end28.err_ulpi_crit_edge ], [ %call33, %if.end32.err_ulpi_crit_edge ]
  %15 = ptrtoint ptr %cal_sleep_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cal_sleep_clk, align 4
  tail call void @clk_disable(ptr noundef %16) #3
  br label %err_sleep.sink.split

err_sleep.sink.split:                             ; preds = %err_ulpi, %if.end.i78.err_sleep.sink.split_crit_edge
  %.sink = phi ptr [ %16, %err_ulpi ], [ %9, %if.end.i78.err_sleep.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %err_ulpi ], [ %call1.i76, %if.end.i78.err_sleep.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #3
  br label %err_sleep

err_sleep:                                        ; preds = %err_sleep.sink.split, %if.end6.err_sleep_crit_edge
  %ret.1 = phi i32 [ %call.i74, %if.end6.err_sleep_crit_edge ], [ %ret.1.ph, %err_sleep.sink.split ]
  %17 = ptrtoint ptr %cal_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cal_clk, align 4
  tail call void @clk_disable(ptr noundef %18) #3
  br label %err_cal.sink.split

err_cal.sink.split:                               ; preds = %err_sleep, %if.end.i70.err_cal.sink.split_crit_edge
  %.sink88 = phi ptr [ %18, %err_sleep ], [ %7, %if.end.i70.err_cal.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ %ret.1, %err_sleep ], [ %call1.i68, %if.end.i70.err_cal.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink88) #3
  br label %err_cal

err_cal:                                          ; preds = %err_cal.sink.split, %if.end.err_cal_crit_edge
  %ret.2 = phi i32 [ %call.i66, %if.end.err_cal_crit_edge ], [ %ret.2.ph, %err_cal.sink.split ]
  %19 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy_clk, align 4
  tail call void @clk_disable(ptr noundef %20) #3
  tail call void @clk_unprepare(ptr noundef %20) #3
  br label %cleanup

cleanup:                                          ; preds = %err_cal, %if.end32.cleanup_crit_edge, %if.then21, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_cal ], [ %12, %if.then21 ], [ 0, %if.end32.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_usb_hsic_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cal_sleep_clk = getelementptr inbounds %struct.qcom_usb_hsic_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cal_sleep_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cal_sleep_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #3
  tail call void @clk_unprepare(ptr noundef %3) #3
  %cal_clk = getelementptr inbounds %struct.qcom_usb_hsic_phy, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %cal_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cal_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #3
  tail call void @clk_unprepare(ptr noundef %5) #3
  %phy_clk = getelementptr inbounds %struct.qcom_usb_hsic_phy, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #3
  tail call void @clk_unprepare(ptr noundef %7) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ulpi_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_phy_qcom_usb_hsic__289_153_qcom_usb_hsic_phy_driver_init6, !1, !"__initcall__kmod_phy_qcom_usb_hsic__289_153_qcom_usb_hsic_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hsic.c", i32 153, i32 1}
!2 = !{ptr @__exitcall_qcom_usb_hsic_phy_driver_exit, !1, !"__exitcall_qcom_usb_hsic_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hsic.c", i32 155, i32 1}
!5 = !{ptr @__UNIQUE_ID_file291, !6, !"__UNIQUE_ID_file291", i1 false, i1 false}
!6 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hsic.c", i32 156, i32 1}
!7 = !{ptr @__UNIQUE_ID_license292, !6, !"__UNIQUE_ID_license292", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hsic.c", i32 149, i32 11}
!10 = !{ptr @qcom_usb_hsic_phy_driver, !11, !"qcom_usb_hsic_phy_driver", i1 false, i1 false}
!11 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hsic.c", i32 146, i32 27}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hsic.c", i32 118, i32 49}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hsic.c", i32 122, i32 49}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hsic.c", i32 126, i32 55}
!18 = !{ptr @qcom_usb_hsic_phy_ops, !19, !"qcom_usb_hsic_phy_ops", i1 false, i1 false}
!19 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hsic.c", i32 96, i32 29}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hsic.c", i32 56, i32 50}
!22 = !{ptr @qcom_usb_hsic_phy_match, !23, !"qcom_usb_hsic_phy_match", i1 false, i1 false}
!23 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hsic.c", i32 140, i32 34}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
