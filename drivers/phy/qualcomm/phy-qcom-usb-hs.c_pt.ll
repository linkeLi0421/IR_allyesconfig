; ModuleID = '/llk/IR_all_yes/drivers/phy/qualcomm/phy-qcom-usb-hs.c_pt.bc'
source_filename = "../drivers/phy/qualcomm/phy-qcom-usb-hs.c"
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
%struct.qcom_usb_hs_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ulpi_seq = type { i8, i8 }

@__initcall__kmod_phy_qcom_usb_hs__289_287_qcom_usb_hs_phy_driver_init6 = internal global ptr @qcom_usb_hs_phy_driver_init, section ".initcall6.init", align 4
@qcom_usb_hs_phy_driver = internal global { %struct.ulpi_driver, [40 x i8] } { %struct.ulpi_driver { ptr null, ptr @qcom_usb_hs_phy_probe, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_usb_hs_phy_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@__exitcall_qcom_usb_hs_phy_driver_exit = internal global ptr @qcom_usb_hs_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [48 x i8] c"phy_qcom_usb_hs.description=Qualcomm USB HS phy\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [58 x i8] c"phy_qcom_usb_hs.file=drivers/phy/qualcomm/phy-qcom-usb-hs\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [31 x i8] c"phy_qcom_usb_hs.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_usb_hs_phy\00", [16 x i8] zeroinitializer }, align 32
@qcom_usb_hs_phy_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,usb-hs-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom,init-seq\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sleep\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v1p8\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v3p3\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"por\00", [28 x i8] zeroinitializer }, align 32
@qcom_usb_hs_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @qcom_usb_hs_phy_power_on, ptr @qcom_usb_hs_phy_power_off, ptr @qcom_usb_hs_phy_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 6, i64 11]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 6, i64 11]
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"qcom_usb_hs_phy_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 280, i32 27 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 283, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"qcom_usb_hs_phy_match\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 274, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 218, i32 55 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 232, i32 49 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 236, i32 51 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 240, i32 52 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 244, i32 52 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 248, i32 59 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"qcom_usb_hs_phy_ops\00", align 1
@___asan_gen_.36 = private constant [42 x i8] c"../drivers/phy/qualcomm/phy-qcom-usb-hs.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 195, i32 29 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_qcom_usb_hs_phy_driver_exit, ptr @__initcall__kmod_phy_qcom_usb_hs__289_287_qcom_usb_hs_phy_driver_init6, ptr @qcom_usb_hs_phy_driver_exit, ptr @qcom_usb_hs_phy_driver, ptr @.str, ptr @qcom_usb_hs_phy_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @qcom_usb_hs_phy_ops], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_usb_hs_phy_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_usb_hs_phy_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_usb_hs_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_usb_hs_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__ulpi_register_driver(ptr noundef nonnull @qcom_usb_hs_phy_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_usb_hs_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ulpi_unregister_driver(ptr noundef nonnull @qcom_usb_hs_phy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ulpi_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ulpi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_usb_hs_phy_probe(ptr noundef %ulpi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ulpi, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i148 = tail call i32 @of_property_count_elems_of_size(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 1) #4
  %4 = tail call i32 @llvm.smax.i32(i32 %call.i148, i32 0)
  %div147 = lshr i32 %4, 1
  %add = and i32 %4, 2147483646
  %5 = add nuw i32 %add, 2
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %5, i32 noundef 3264) #4
  %init_seq = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %init_seq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i, ptr %init_seq, align 4
  %tobool9.not = icmp eq ptr %call5.i, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i149 = tail call i32 @of_property_read_variable_u8_array(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull %call5.i, i32 noundef %4, i32 noundef 0) #4
  %9 = tail call i32 @llvm.smin.i32(i32 %call.i149, i32 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i149)
  %tobool16.not = icmp sgt i32 %call.i149, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i148)
  %tobool17.not = icmp slt i32 %call.i148, 1
  %or.cond = select i1 %tobool16.not, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %if.end19, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %10 = ptrtoint ptr %init_seq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_seq, align 4
  %val = getelementptr %struct.ulpi_seq, ptr %11, i32 %div147, i32 1
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %val, align 1
  %13 = load ptr, ptr %init_seq, align 4
  %arrayidx24 = getelementptr %struct.ulpi_seq, ptr %13, i32 %div147
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx24, align 1
  %call26 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #4
  %ref_clk = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %ref_clk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call26, ptr %ref_clk, align 4
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end19
  %call32 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #4
  %sleep_clk = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %sleep_clk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call32, ptr %sleep_clk, align 4
  %cmp.i150 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %call38 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.4) #4
  %v1p8 = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %v1p8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call38, ptr %v1p8, align 4
  %cmp.i151 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %call38 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end36
  %call44 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.5) #4
  %v3p3 = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %v3p3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call44, ptr %v3p3, align 4
  %cmp.i152 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %call44 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end42
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %reset51 = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %reset51 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i, ptr %reset51, align 4
  %cmp.i153 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then53, label %if.end48.if.end60_crit_edge

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then53:                                        ; preds = %if.end48
  %cmp55 = icmp eq ptr %call.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp55, label %if.then53.cleanup_crit_edge, label %if.end58

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end58:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %reset51 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %reset51, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end58, %if.end48.if.end60_crit_edge
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %call64 = tail call ptr @devm_phy_create(ptr noundef %dev, ptr noundef %26, ptr noundef nonnull @qcom_usb_hs_phy_ops) #4
  %phy = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call64, ptr %phy, align 4
  %cmp.i154 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %call64 to i32
  br label %cleanup

if.end70:                                         ; preds = %if.end60
  %call72 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %dev, i32 noundef 0) #4
  %vbus_edev = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %call.i, i32 0, i32 8
  %29 = ptrtoint ptr %vbus_edev to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call72, ptr %vbus_edev, align 4
  %cmp.i155 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.then75, label %if.end70.if.end84_crit_edge

if.end70.if.end84_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84

if.then75:                                        ; preds = %if.end70
  %30 = ptrtoint ptr %call72 to i32
  %cmp78.not = icmp eq ptr %call72, inttoptr (i32 -19 to ptr)
  br i1 %cmp78.not, label %if.end82, label %if.then75.cleanup_crit_edge

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end82:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %vbus_edev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %vbus_edev, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end82, %if.end70.if.end84_crit_edge
  %vbus_notify = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %call.i, i32 0, i32 9
  %32 = ptrtoint ptr %vbus_notify to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @qcom_usb_hs_phy_vbus_notifier, ptr %vbus_notify, align 4
  %33 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy, align 4
  %driver_data.i.i156 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %driver_data.i.i156 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data.i.i156, align 4
  %call87 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #4
  %cmp.i.i = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %call87 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %36, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then75.cleanup_crit_edge, %if.then67, %if.then53.cleanup_crit_edge, %if.then46, %if.then40, %if.then34, %if.then28, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then28 ], [ %18, %if.then34 ], [ %20, %if.then40 ], [ %22, %if.then46 ], [ %28, %if.then67 ], [ %spec.select.i, %if.end84 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %9, %if.end11.cleanup_crit_edge ], [ -517, %if.then53.cleanup_crit_edge ], [ %30, %if.then75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_usb_hs_phy_vbus_notifier(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %tobool.not = icmp eq i32 %event, 0
  %. = select i1 %tobool.not, i8 -104, i8 -105
  %add.ptr = getelementptr i8, ptr %nb, i32 -36
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @ulpi_write(ptr noundef %1, i8 noundef zeroext %., i8 noundef zeroext 1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_usb_hs_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ref_clk = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ref_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %sleep_clk = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %sleep_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sleep_clk, align 4
  %call.i103 = tail call i32 @clk_prepare(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool.not.i104, label %if.end.i107, label %if.end.err_sleep_crit_edge

if.end.err_sleep_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_sleep

if.end.i107:                                      ; preds = %if.end
  %call1.i105 = tail call i32 @clk_enable(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i105)
  %tobool2.not.i106 = icmp eq i32 %call1.i105, 0
  br i1 %tobool2.not.i106, label %if.end6, label %if.end.i107.err_sleep.sink.split_crit_edge

if.end.i107.err_sleep.sink.split_crit_edge:       ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_sleep.sink.split

if.end6:                                          ; preds = %if.end.i107
  %v1p8 = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %v1p8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %v1p8, align 4
  %call7 = tail call i32 @regulator_set_load(ptr noundef %9, i32 noundef 50000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.err_1p8_crit_edge, label %if.end9

if.end6.err_1p8_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_1p8

if.end9:                                          ; preds = %if.end6
  %10 = ptrtoint ptr %v1p8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %v1p8, align 4
  %call11 = tail call i32 @regulator_enable(ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.err_1p8_crit_edge

if.end9.err_1p8_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_1p8

if.end14:                                         ; preds = %if.end9
  %v3p3 = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %v3p3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %v3p3, align 4
  %call.i111 = tail call i32 @regulator_set_voltage(ptr noundef %13, i32 noundef 3300000, i32 noundef 3300000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp.i = icmp eq i32 %call.i111, 0
  br i1 %cmp.i, label %if.end14.if.end18_crit_edge, label %regulator_set_voltage_triplet.exit

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

regulator_set_voltage_triplet.exit:               ; preds = %if.end14
  %call1.i112 = tail call i32 @regulator_set_voltage(ptr noundef %13, i32 noundef 3050000, i32 noundef 3300000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i112)
  %tobool16.not = icmp eq i32 %call1.i112, 0
  br i1 %tobool16.not, label %regulator_set_voltage_triplet.exit.if.end18_crit_edge, label %regulator_set_voltage_triplet.exit.err_3p3_crit_edge

regulator_set_voltage_triplet.exit.err_3p3_crit_edge: ; preds = %regulator_set_voltage_triplet.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_3p3

regulator_set_voltage_triplet.exit.if.end18_crit_edge: ; preds = %regulator_set_voltage_triplet.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.end18:                                         ; preds = %regulator_set_voltage_triplet.exit.if.end18_crit_edge, %if.end14.if.end18_crit_edge
  %14 = ptrtoint ptr %v3p3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %v3p3, align 4
  %call20 = tail call i32 @regulator_set_load(ptr noundef %15, i32 noundef 50000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end18.err_3p3_crit_edge, label %if.end23

if.end18.err_3p3_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_3p3

if.end23:                                         ; preds = %if.end18
  %16 = ptrtoint ptr %v3p3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %v3p3, align 4
  %call25 = tail call i32 @regulator_enable(ptr noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.err_3p3_crit_edge

if.end23.err_3p3_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_3p3

if.end28:                                         ; preds = %if.end23
  %init_seq = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %init_seq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_seq, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool29.not123 = icmp eq i8 %21, 0
  br i1 %tobool29.not123, label %if.end28.for.end_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.ulpi_seq, ptr %seq.0124, i32 1
  %22 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr, align 1
  %tobool29.not = icmp eq i8 %23, 0
  br i1 %tobool29.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end28.for.body_crit_edge
  %24 = phi i8 [ %23, %for.cond.for.body_crit_edge ], [ %21, %if.end28.for.body_crit_edge ]
  %seq.0124 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %19, %if.end28.for.body_crit_edge ]
  %add = xor i8 %24, -128
  %val = getelementptr inbounds %struct.ulpi_seq, ptr %seq.0124, i32 0, i32 1
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val, align 1
  %call32 = tail call i32 @ulpi_write(ptr noundef %3, i8 noundef zeroext %add, i8 noundef zeroext %26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %for.cond, label %for.body.err_ulpi_crit_edge

for.body.err_ulpi_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_ulpi

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end28.for.end_crit_edge
  %reset = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reset, align 4
  %tobool36.not = icmp eq ptr %28, null
  br i1 %tobool36.not, label %for.end.if.end43_crit_edge, label %if.then37

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then37:                                        ; preds = %for.end
  %call39 = tail call i32 @reset_control_reset(ptr noundef nonnull %28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then37.if.end43_crit_edge, label %if.then37.err_ulpi_crit_edge

if.then37.err_ulpi_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_ulpi

if.then37.if.end43_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.end43:                                         ; preds = %if.then37.if.end43_crit_edge, %for.end.if.end43_crit_edge
  %vbus_edev = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %vbus_edev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vbus_edev, align 4
  %tobool44.not = icmp eq ptr %30, null
  br i1 %tobool44.not, label %if.end43.cleanup_crit_edge, label %if.then45

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then45:                                        ; preds = %if.end43
  %call47 = tail call i32 @extcon_get_state(ptr noundef nonnull %30, i32 noundef 1) #4
  %vbus_notify = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %1, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool.not.i115 = icmp eq i32 %call47, 0
  %..i = select i1 %tobool.not.i115, i8 -104, i8 -105
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call.i116 = tail call i32 @ulpi_write(ptr noundef %32, i8 noundef zeroext %..i, i8 noundef zeroext 1) #4
  %33 = ptrtoint ptr %vbus_edev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vbus_edev, align 4
  %call52 = tail call i32 @extcon_register_notifier(ptr noundef %34, i32 noundef 1, ptr noundef %vbus_notify) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then45.cleanup_crit_edge, label %if.then45.err_ulpi_crit_edge

if.then45.err_ulpi_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_ulpi

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_ulpi:                                         ; preds = %if.then45.err_ulpi_crit_edge, %if.then37.err_ulpi_crit_edge, %for.body.err_ulpi_crit_edge
  %ret.0 = phi i32 [ %call39, %if.then37.err_ulpi_crit_edge ], [ %call52, %if.then45.err_ulpi_crit_edge ], [ %call32, %for.body.err_ulpi_crit_edge ]
  %35 = ptrtoint ptr %v3p3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %v3p3, align 4
  %call58 = tail call i32 @regulator_disable(ptr noundef %36) #4
  br label %err_3p3

err_3p3:                                          ; preds = %err_ulpi, %if.end23.err_3p3_crit_edge, %if.end18.err_3p3_crit_edge, %regulator_set_voltage_triplet.exit.err_3p3_crit_edge
  %ret.1 = phi i32 [ %call1.i112, %regulator_set_voltage_triplet.exit.err_3p3_crit_edge ], [ %call20, %if.end18.err_3p3_crit_edge ], [ %call25, %if.end23.err_3p3_crit_edge ], [ %ret.0, %err_ulpi ]
  %37 = ptrtoint ptr %v1p8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %v1p8, align 4
  %call60 = tail call i32 @regulator_disable(ptr noundef %38) #4
  br label %err_1p8

err_1p8:                                          ; preds = %err_3p3, %if.end9.err_1p8_crit_edge, %if.end6.err_1p8_crit_edge
  %ret.2 = phi i32 [ %call7, %if.end6.err_1p8_crit_edge ], [ %call11, %if.end9.err_1p8_crit_edge ], [ %ret.1, %err_3p3 ]
  %39 = ptrtoint ptr %sleep_clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sleep_clk, align 4
  tail call void @clk_disable(ptr noundef %40) #4
  br label %err_sleep.sink.split

err_sleep.sink.split:                             ; preds = %err_1p8, %if.end.i107.err_sleep.sink.split_crit_edge
  %.sink = phi ptr [ %40, %err_1p8 ], [ %7, %if.end.i107.err_sleep.sink.split_crit_edge ]
  %ret.3.ph = phi i32 [ %ret.2, %err_1p8 ], [ %call1.i105, %if.end.i107.err_sleep.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #4
  br label %err_sleep

err_sleep:                                        ; preds = %err_sleep.sink.split, %if.end.err_sleep_crit_edge
  %ret.3 = phi i32 [ %call.i103, %if.end.err_sleep_crit_edge ], [ %ret.3.ph, %err_sleep.sink.split ]
  %41 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %42) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_sleep, %if.end.i.cleanup.sink.split_crit_edge
  %.sink127 = phi ptr [ %42, %err_sleep ], [ %5, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.3, %err_sleep ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink127) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then45.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then45.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_usb_hs_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vbus_edev = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vbus_edev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbus_edev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %vbus_notify = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %1, i32 0, i32 9
  %call2 = tail call i32 @extcon_unregister_notifier(ptr noundef nonnull %3, i32 noundef 1, ptr noundef %vbus_notify) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %v3p3 = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %v3p3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v3p3, align 4
  %call3 = tail call i32 @regulator_disable(ptr noundef %5) #4
  %v1p8 = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %v1p8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v1p8, align 4
  %call4 = tail call i32 @regulator_disable(ptr noundef %7) #4
  %sleep_clk = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %sleep_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sleep_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #4
  tail call void @clk_unprepare(ptr noundef %9) #4
  %ref_clk = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #4
  tail call void @clk_unprepare(ptr noundef %11) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_usb_hs_phy_set_mode(ptr nocapture noundef readonly %phy, i32 noundef %mode, i32 noundef %submode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vbus_edev = getelementptr inbounds %struct.qcom_usb_hs_phy, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vbus_edev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbus_edev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %if.then.sw.epilog_crit_edge [
    i32 11, label %if.then.sw.bb_crit_edge
    i32 1, label %if.then.sw.bb_crit_edge39
    i32 6, label %if.then.sw.bb2_crit_edge
  ]

if.then.sw.bb2_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2

if.then.sw.bb_crit_edge39:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge39
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %if.then.sw.bb2_crit_edge
  %val.0 = phi i8 [ 4, %if.then.sw.bb2_crit_edge ], [ 20, %sw.bb ]
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.then.sw.epilog_crit_edge
  %val.1 = phi i8 [ 0, %if.then.sw.epilog_crit_edge ], [ %val.0, %sw.bb2 ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call6 = tail call i32 @ulpi_write(ptr noundef %6, i8 noundef zeroext 13, i8 noundef zeroext %val.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %sw.epilog.cleanup23_crit_edge

sw.epilog.cleanup23_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup23

cleanup.thread:                                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call10 = tail call i32 @ulpi_write(ptr noundef %8, i8 noundef zeroext 16, i8 noundef zeroext %val.1) #4
  br label %cleanup23

if.else:                                          ; preds = %entry
  %9 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %mode, label %if.else.cleanup23_crit_edge [
    i32 11, label %if.else.sw.epilog14_crit_edge
    i32 6, label %if.else.sw.epilog14_crit_edge40
    i32 1, label %sw.bb12
  ]

if.else.sw.epilog14_crit_edge40:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog14

if.else.sw.epilog14_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog14

if.else.cleanup23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup23

sw.bb12:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog14

sw.epilog14:                                      ; preds = %sw.bb12, %if.else.sw.epilog14_crit_edge, %if.else.sw.epilog14_crit_edge40
  %addr.0 = phi i8 [ -104, %sw.bb12 ], [ -105, %if.else.sw.epilog14_crit_edge ], [ -105, %if.else.sw.epilog14_crit_edge40 ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call16 = tail call i32 @ulpi_write(ptr noundef %11, i8 noundef zeroext -119, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %sw.epilog14.cleanup23_crit_edge

sw.epilog14.cleanup23_crit_edge:                  ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup23

if.end19:                                         ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call21 = tail call i32 @ulpi_write(ptr noundef %13, i8 noundef zeroext %addr.0, i8 noundef zeroext 2) #4
  br label %cleanup23

cleanup23:                                        ; preds = %if.end19, %sw.epilog14.cleanup23_crit_edge, %if.else.cleanup23_crit_edge, %cleanup.thread, %sw.epilog.cleanup23_crit_edge
  %retval.1 = phi i32 [ -22, %if.else.cleanup23_crit_edge ], [ %call16, %sw.epilog14.cleanup23_crit_edge ], [ %call6, %sw.epilog.cleanup23_crit_edge ], [ %call21, %if.end19 ], [ %call10, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ulpi_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_register_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_unregister_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_phy_qcom_usb_hs__289_287_qcom_usb_hs_phy_driver_init6, !1, !"__initcall__kmod_phy_qcom_usb_hs__289_287_qcom_usb_hs_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs.c", i32 287, i32 1}
!2 = !{ptr @__exitcall_qcom_usb_hs_phy_driver_exit, !1, !"__exitcall_qcom_usb_hs_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs.c", i32 289, i32 1}
!5 = !{ptr @__UNIQUE_ID_file291, !6, !"__UNIQUE_ID_file291", i1 false, i1 false}
!6 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs.c", i32 290, i32 1}
!7 = !{ptr @__UNIQUE_ID_license292, !6, !"__UNIQUE_ID_license292", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs.c", i32 283, i32 11}
!10 = !{ptr @qcom_usb_hs_phy_driver, !11, !"qcom_usb_hs_phy_driver", i1 false, i1 false}
!11 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs.c", i32 280, i32 27}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs.c", i32 218, i32 55}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs.c", i32 232, i32 49}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs.c", i32 236, i32 51}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs.c", i32 240, i32 52}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs.c", i32 244, i32 52}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs.c", i32 248, i32 59}
!24 = !{ptr @qcom_usb_hs_phy_ops, !25, !"qcom_usb_hs_phy_ops", i1 false, i1 false}
!25 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs.c", i32 195, i32 29}
!26 = !{ptr @qcom_usb_hs_phy_match, !27, !"qcom_usb_hs_phy_match", i1 false, i1 false}
!27 = !{!"../drivers/phy/qualcomm/phy-qcom-usb-hs.c", i32 274, i32 34}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
