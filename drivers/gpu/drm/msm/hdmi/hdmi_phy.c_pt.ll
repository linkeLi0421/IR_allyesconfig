; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/hdmi/hdmi_phy.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hdmi_phy_cfg = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.hdmi_phy = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.regulator_bulk_data = type { ptr, ptr, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* failed to enable regulators: (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* failed to enable clock: %s (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@msm_hdmi_phy_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @msm_hdmi_phy_probe, ptr @msm_hdmi_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msm_hdmi_phy_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msm_hdmi_phy\00", [19 x i8] zeroinitializer }, align 32
@msm_hdmi_phy_dt_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-phy-8660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_hdmi_phy_8x60_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-phy-8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_hdmi_phy_8960_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-phy-8974\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_hdmi_phy_8x74_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-phy-8084\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_hdmi_phy_8x74_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-phy-8996\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_hdmi_phy_8996_cfg }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_phy\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HDMI_PHY\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* %s: failed to map phy base\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.msm_hdmi_phy_probe = private unnamed_addr constant [19 x i8] c"msm_hdmi_phy_probe\00", align 1
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"*ERROR* couldn't init PLL\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* failed to get phy regulators: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* failed to get phy clock: %s (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@msm_hdmi_phy_8x60_cfg = external dso_local constant %struct.hdmi_phy_cfg, align 4
@msm_hdmi_phy_8960_cfg = external dso_local constant %struct.hdmi_phy_cfg, align 4
@msm_hdmi_phy_8x74_cfg = external dso_local constant %struct.hdmi_phy_cfg, align 4
@msm_hdmi_phy_8996_cfg = external dso_local constant %struct.hdmi_phy_cfg, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 64, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 71, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant [29 x i8] c"msm_hdmi_phy_platform_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 200, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 204, i32 13 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"msm_hdmi_phy_dt_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 186, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 147, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 147, i32 44 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 149, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 167, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 32, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [39 x i8] c"../drivers/gpu/drm/msm/hdmi/hdmi_phy.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 43, i32 4 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @msm_hdmi_phy_driver_unregister, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @msm_hdmi_phy_platform_driver, ptr @.str.3, ptr @msm_hdmi_phy_dt_match, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_phy_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_phy_dt_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_phy_resource_enable(ptr nocapture noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.hdmi_phy, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev2, i32 noundef 4) #4
  %num_regs = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %num_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_regs, align 4
  %regs = getelementptr inbounds %struct.hdmi_phy, ptr %phy, i32 0, i32 4
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %call3 = tail call i32 @regulator_bulk_enable(i32 noundef %5, ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %num_clks = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp32 = icmp sgt i32 %9, 0
  br i1 %cmp32, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %clks = getelementptr inbounds %struct.hdmi_phy, ptr %phy, i32 0, i32 5
  %clk_names = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %1, i32 0, i32 5
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call3) #4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clks, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.033
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call.i27 = tail call i32 @clk_prepare(ptr noundef %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.if.then6_crit_edge

for.body.if.then6_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.then3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %13) #4
  br label %if.then6

if.then6:                                         ; preds = %if.then3.i, %for.body.if.then6_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i27, %for.body.if.then6_crit_edge ]
  %14 = ptrtoint ptr %clk_names to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_names, align 4
  %arrayidx7 = getelementptr ptr, ptr %15, i32 %i.033
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef %17, i32 noundef %retval.0.i.ph) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.end.i.for.inc_crit_edge
  %retval.0.i31 = phi i32 [ %retval.0.i.ph, %if.then6 ], [ 0, %if.end.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.033, 1
  %18 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_clks, align 4
  %cmp = icmp slt i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.i31, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_phy_resource_disable(ptr nocapture noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.hdmi_phy, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %num_clks = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks, align 4
  %i.010 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.010)
  %cmp11 = icmp sgt i32 %i.010, -1
  br i1 %cmp11, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %clks = getelementptr inbounds %struct.hdmi_phy, ptr %phy, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ %i.010, %for.body.lr.ph ], [ %i.0, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clks, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.012
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %9) #4
  tail call void @clk_unprepare(ptr noundef %9) #4
  %i.0 = add nsw i32 %i.012, -1
  %cmp = icmp sgt i32 %i.012, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %num_regs = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %num_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_regs, align 4
  %regs = getelementptr inbounds %struct.hdmi_phy, ptr %phy, i32 0, i32 4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %call = tail call i32 @regulator_bulk_disable(i32 noundef %11, ptr noundef %13) #4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev2, i32 noundef 4) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_phy_powerup(ptr noundef %phy, i32 noundef %pixclock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %cfg = getelementptr inbounds %struct.hdmi_phy, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %powerup = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %powerup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerup, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %3(ptr noundef nonnull %phy, i32 noundef %pixclock) #4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_phy_powerdown(ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %cfg = getelementptr inbounds %struct.hdmi_phy, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %powerdown = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %powerdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerdown, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %3(ptr noundef nonnull %phy) #4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_phy_driver_register() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @msm_hdmi_phy_platform_driver, ptr noundef null) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_phy_driver_unregister() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @msm_hdmi_phy_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_hdmi_phy_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #4
  %cfg = getelementptr inbounds %struct.hdmi_phy, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %cfg, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @msm_ioremap(ptr noundef %pdev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #4
  %mmio = getelementptr inbounds %struct.hdmi_phy, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %mmio, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.msm_hdmi_phy_probe) #4
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %call.i, align 4
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 4
  %num_regs.i = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %num_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_regs.i, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 12) #4
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !33

devm_kcalloc.exit.thread.i:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %regs83.i = getelementptr inbounds %struct.hdmi_phy, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %regs83.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %regs83.i, align 4
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end11
  %10 = extractvalue { i32, i1 } %7, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %10, i32 noundef 3520) #4
  %regs.i = getelementptr inbounds %struct.hdmi_phy, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i.i, ptr %regs.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %if.end.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %devm_kcalloc.exit.i
  %num_clks.i = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %4, i32 0, i32 6
  %12 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_clks.i, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4) #4
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %devm_kcalloc.exit81.thread.i, label %devm_kcalloc.exit81.i, !prof !33

devm_kcalloc.exit81.thread.i:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %clks86.i = getelementptr inbounds %struct.hdmi_phy, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %clks86.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %clks86.i, align 4
  br label %cleanup

devm_kcalloc.exit81.i:                            ; preds = %if.end.i
  %17 = extractvalue { i32, i1 } %14, 0
  %call5.i.i78.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %17, i32 noundef 3520) #4
  %clks.i = getelementptr inbounds %struct.hdmi_phy, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %clks.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i.i78.i, ptr %clks.i, align 4
  %tobool6.not.i = icmp eq ptr %call5.i.i78.i, null
  br i1 %tobool6.not.i, label %devm_kcalloc.exit81.i.cleanup_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit81.i.cleanup_crit_edge:          ; preds = %devm_kcalloc.exit81.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit81.i
  %19 = ptrtoint ptr %num_regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_regs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp90.i = icmp sgt i32 %20, 0
  br i1 %cmp90.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %reg_names.i = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %4, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.091.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %reg_names.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_names.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %22, i32 %i.091.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %arrayidx11.i = getelementptr %struct.regulator_bulk_data, ptr %26, i32 %i.091.i
  %27 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %arrayidx11.i, align 4
  %inc.i = add nuw nsw i32 %i.091.i, 1
  %28 = ptrtoint ptr %num_regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_regs.i, align 4
  %cmp.i53 = icmp slt i32 %inc.i, %29
  br i1 %cmp.i53, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %20, %for.cond.preheader.i.for.end.i_crit_edge ], [ %29, %for.body.i.for.end.i_crit_edge ]
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %call14.i = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef %.lcssa.i, ptr noundef %31) #4
  %32 = zext i32 %call14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call14.i, label %if.then18.i [
    i32 0, label %for.cond21.preheader.i
    i32 -517, label %for.end.i.cleanup_crit_edge
  ]

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond21.preheader.i:                           ; preds = %for.end.i
  %33 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_clks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp2392.i = icmp sgt i32 %34, 0
  br i1 %cmp2392.i, label %for.body24.lr.ph.i, label %for.cond21.preheader.i.if.end16_crit_edge

for.cond21.preheader.i.if.end16_crit_edge:        ; preds = %for.cond21.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

for.body24.lr.ph.i:                               ; preds = %for.cond21.preheader.i
  %clk_names.i = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %4, i32 0, i32 5
  br label %for.body24.i

if.then18.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef %call14.i) #4
  br label %msm_hdmi_phy_resource_init.exit

for.body24.i:                                     ; preds = %for.inc36.i.for.body24.i_crit_edge, %for.body24.lr.ph.i
  %i.193.i = phi i32 [ 0, %for.body24.lr.ph.i ], [ %inc37.i, %for.inc36.i.for.body24.i_crit_edge ]
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %37 = ptrtoint ptr %clk_names.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk_names.i, align 4
  %arrayidx26.i = getelementptr ptr, ptr %38, i32 %i.193.i
  %39 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx26.i, align 4
  %call27.i = tail call ptr @msm_clk_get(ptr noundef %36, ptr noundef %40) #4
  %cmp.i.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.thread.i, label %for.inc36.i

cleanup.thread.i:                                 ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %call27.i to i32
  %42 = ptrtoint ptr %clk_names.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk_names.i, align 4
  %arrayidx32.i = getelementptr ptr, ptr %43, i32 %i.193.i
  %44 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx32.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, ptr noundef %45, i32 noundef %41) #4
  br label %msm_hdmi_phy_resource_init.exit

for.inc36.i:                                      ; preds = %for.body24.i
  %46 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clks.i, align 4
  %arrayidx35.i = getelementptr ptr, ptr %47, i32 %i.193.i
  %48 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call27.i, ptr %arrayidx35.i, align 4
  %inc37.i = add nuw nsw i32 %i.193.i, 1
  %49 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_clks.i, align 4
  %cmp23.i = icmp slt i32 %inc37.i, %50
  br i1 %cmp23.i, label %for.inc36.i.for.body24.i_crit_edge, label %for.inc36.i.if.end16_crit_edge

for.inc36.i.if.end16_crit_edge:                   ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

for.inc36.i.for.body24.i_crit_edge:               ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body24.i

msm_hdmi_phy_resource_init.exit:                  ; preds = %cleanup.thread.i, %if.then18.i
  %retval.2.i = phi i32 [ %call14.i, %if.then18.i ], [ %41, %cleanup.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %tobool14.not = icmp eq i32 %retval.2.i, 0
  br i1 %tobool14.not, label %msm_hdmi_phy_resource_init.exit.if.end16_crit_edge, label %msm_hdmi_phy_resource_init.exit.cleanup_crit_edge

msm_hdmi_phy_resource_init.exit.cleanup_crit_edge: ; preds = %msm_hdmi_phy_resource_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

msm_hdmi_phy_resource_init.exit.if.end16_crit_edge: ; preds = %msm_hdmi_phy_resource_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.end16:                                         ; preds = %msm_hdmi_phy_resource_init.exit.if.end16_crit_edge, %for.inc36.i.if.end16_crit_edge, %for.cond21.preheader.i.if.end16_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev1) #4
  %call18 = tail call i32 @msm_hdmi_phy_resource_enable(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %51 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %54, label %if.end21.if.end26_crit_edge [
    i32 1, label %sw.bb.i
    i32 3, label %sw.bb1.i
  ]

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

sw.bb.i:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %call.i54 = tail call i32 @msm_hdmi_pll_8960_init(ptr noundef %pdev) #4
  br label %msm_hdmi_phy_pll_init.exit

sw.bb1.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i = tail call i32 @msm_hdmi_pll_8996_init(ptr noundef %pdev) #4
  br label %msm_hdmi_phy_pll_init.exit

msm_hdmi_phy_pll_init.exit:                       ; preds = %sw.bb1.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call2.i, %sw.bb1.i ], [ %call.i54, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool24.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool24.not, label %msm_hdmi_phy_pll_init.exit.if.end26_crit_edge, label %if.then25

msm_hdmi_phy_pll_init.exit.if.end26_crit_edge:    ; preds = %msm_hdmi_phy_pll_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then25:                                        ; preds = %msm_hdmi_phy_pll_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #4
  tail call void @msm_hdmi_phy_resource_disable(ptr noundef nonnull %call.i)
  br label %cleanup

if.end26:                                         ; preds = %msm_hdmi_phy_pll_init.exit.if.end26_crit_edge, %if.end21.if.end26_crit_edge
  tail call void @msm_hdmi_phy_resource_disable(ptr noundef nonnull %call.i)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then25, %if.end16.cleanup_crit_edge, %msm_hdmi_phy_resource_init.exit.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %devm_kcalloc.exit81.i.cleanup_crit_edge, %devm_kcalloc.exit81.thread.i, %devm_kcalloc.exit.i.cleanup_crit_edge, %devm_kcalloc.exit.thread.i, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then10 ], [ %ret.0.i, %if.then25 ], [ 0, %if.end26 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %retval.2.i, %msm_hdmi_phy_resource_init.exit.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit81.thread.i ], [ -12, %devm_kcalloc.exit.thread.i ], [ %call14.i, %for.end.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit81.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_hdmi_phy_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_pll_8960_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_pll_8996_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy.c", i32 64, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy.c", i32 71, i32 4}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy.c", i32 204, i32 13}
!7 = !{ptr @msm_hdmi_phy_platform_driver, !8, !"msm_hdmi_phy_platform_driver", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy.c", i32 200, i32 31}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy.c", i32 147, i32 32}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy.c", i32 147, i32 44}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy.c", i32 149, i32 3}
!15 = !{ptr @__func__.msm_hdmi_phy_probe, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy.c", i32 167, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy.c", i32 32, i32 4}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy.c", i32 43, i32 4}
!22 = !{ptr @msm_hdmi_phy_dt_match, !23, !"msm_hdmi_phy_dt_match", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy.c", i32 186, i32 34}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 2000}
