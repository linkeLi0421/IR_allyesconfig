; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dsi/phy/dsi_phy_20nm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/phy/dsi_phy_20nm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_dsi_phy_cfg = type { %struct.dsi_reg_config, %struct.msm_dsi_phy_ops, i32, i32, [2 x i32], i32, i32, i8, i8 }
%struct.dsi_reg_config = type { i32, [8 x %struct.dsi_reg_entry] }
%struct.dsi_reg_entry = type { [32 x i8], i32, i32 }
%struct.msm_dsi_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msm_dsi_phy = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, [8 x %struct.regulator_bulk_data], %struct.msm_dsi_dphy_timing, ptr, i32, i8, i8, ptr, i8, ptr, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.msm_dsi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.msm_dsi_phy_shared_timings, i32, i32, i32, i8, i8 }
%struct.msm_dsi_phy_shared_timings = type { i32, i32, i8 }
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

@dsi_phy_20nm_cfgs = dso_local constant { %struct.msm_dsi_phy_cfg, [72 x i8] } { %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 2, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vcca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr null, ptr @dsi_20nm_phy_enable, ptr @dsi_20nm_phy_disable, ptr null, ptr null, ptr null }, i32 0, i32 0, [2 x i32] [i32 -40270592, i32 -40237824], i32 2, i32 0, i8 1, i8 0 }, [72 x i8] zeroinitializer }, align 32
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* %s: D-PHY timing calculation failed\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.dsi_20nm_phy_enable = private unnamed_addr constant [20 x i8] c"dsi_20nm_phy_enable\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"dsi_phy_20nm_cfgs\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 132, i32 30 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 76, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [46 x i8] c"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_20nm.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 79, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @dsi_phy_20nm_cfgs, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_phy_20nm_cfgs to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_20nm_phy_enable(ptr noundef %phy, ptr noundef %clk_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %timing1 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12
  %base2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #2
  %call = tail call i32 @msm_dsi_dphy_timing_calc(ptr noundef %timing1, ptr noundef %clk_req) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dsi_20nm_phy_enable) #2
  br label %cleanup

if.end:                                           ; preds = %entry
  %regulator_ldo_mode.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 15
  %4 = ptrtoint ptr %regulator_ldo_mode.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %regulator_ldo_mode.i, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.end5.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %6 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base2, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 476
  tail call void @msm_writel(i32 noundef 29, ptr noundef %add.ptr4.i) #2
  br label %dsi_20nm_phy_regulator_ctrl.exit

if.end5.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %reg_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 3
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 4
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr6.i) #2
  %add.ptr7.i = getelementptr i8, ptr %9, i32 8
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr7.i) #2
  %add.ptr8.i = getelementptr i8, ptr %9, i32 12
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr8.i) #2
  %add.ptr9.i = getelementptr i8, ptr %9, i32 16
  tail call void @msm_writel(i32 noundef 32, ptr noundef %add.ptr9.i) #2
  %add.ptr10.i = getelementptr i8, ptr %9, i32 24
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr10.i) #2
  %10 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base2, align 4
  %add.ptr12.i = getelementptr i8, ptr %11, i32 476
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr12.i) #2
  tail call void @msm_writel(i32 noundef 3, ptr noundef %9) #2
  br label %dsi_20nm_phy_regulator_ctrl.exit

dsi_20nm_phy_regulator_ctrl.exit:                 ; preds = %if.end5.i, %if.then2.i
  %add.ptr = getelementptr i8, ptr %1, i32 388
  tail call void @msm_writel(i32 noundef 255, ptr noundef %add.ptr) #2
  %add.ptr3 = getelementptr i8, ptr %1, i32 468
  %call4 = tail call i32 @msm_readl(ptr noundef %add.ptr3) #2
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 9
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %land.lhs.true, label %dsi_20nm_phy_regulator_ctrl.exit.if.else_crit_edge

dsi_20nm_phy_regulator_ctrl.exit.if.else_crit_edge: ; preds = %dsi_20nm_phy_regulator_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

land.lhs.true:                                    ; preds = %dsi_20nm_phy_regulator_ctrl.exit
  %usecase = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 14
  %14 = ptrtoint ptr %usecase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usecase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5 = icmp eq i32 %15, 0
  br i1 %cmp5, label %if.then6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %or = or i32 %call4, 1
  br label %if.end7

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %dsi_20nm_phy_regulator_ctrl.exit.if.else_crit_edge
  %and = and i32 %call4, -2
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %val.0 = phi i32 [ %or, %if.then6 ], [ %and, %if.else ]
  tail call void @msm_writel(i32 noundef %val.0, ptr noundef %add.ptr3) #2
  %add.ptr11 = getelementptr i8, ptr %1, i32 12
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr11) #2
  %add.ptr13 = getelementptr i8, ptr %1, i32 28
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr13) #2
  %add.ptr15 = getelementptr i8, ptr %1, i32 32
  tail call void @msm_writel(i32 noundef 70, ptr noundef %add.ptr15) #2
  tail call void @msm_writel(i32 noundef 2, ptr noundef %1) #2
  %add.ptr19 = getelementptr i8, ptr %1, i32 4
  tail call void @msm_writel(i32 noundef 160, ptr noundef %add.ptr19) #2
  %add.ptr21 = getelementptr i8, ptr %1, i32 16
  tail call void @msm_writel(i32 noundef 32, ptr noundef %add.ptr21) #2
  %add.ptr11.1 = getelementptr i8, ptr %1, i32 76
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr11.1) #2
  %add.ptr13.1 = getelementptr i8, ptr %1, i32 92
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr13.1) #2
  %add.ptr15.1 = getelementptr i8, ptr %1, i32 96
  tail call void @msm_writel(i32 noundef 70, ptr noundef %add.ptr15.1) #2
  %add.ptr17.1 = getelementptr i8, ptr %1, i32 64
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr17.1) #2
  %add.ptr19.1 = getelementptr i8, ptr %1, i32 68
  tail call void @msm_writel(i32 noundef 160, ptr noundef %add.ptr19.1) #2
  %add.ptr21.1 = getelementptr i8, ptr %1, i32 80
  tail call void @msm_writel(i32 noundef 64, ptr noundef %add.ptr21.1) #2
  %add.ptr11.2 = getelementptr i8, ptr %1, i32 140
  tail call void @msm_writel(i32 noundef 64, ptr noundef %add.ptr11.2) #2
  %add.ptr13.2 = getelementptr i8, ptr %1, i32 156
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr13.2) #2
  %add.ptr15.2 = getelementptr i8, ptr %1, i32 160
  tail call void @msm_writel(i32 noundef 70, ptr noundef %add.ptr15.2) #2
  %add.ptr17.2 = getelementptr i8, ptr %1, i32 128
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr17.2) #2
  %add.ptr19.2 = getelementptr i8, ptr %1, i32 132
  tail call void @msm_writel(i32 noundef 160, ptr noundef %add.ptr19.2) #2
  %add.ptr21.2 = getelementptr i8, ptr %1, i32 144
  tail call void @msm_writel(i32 noundef 32, ptr noundef %add.ptr21.2) #2
  %add.ptr11.3 = getelementptr i8, ptr %1, i32 204
  tail call void @msm_writel(i32 noundef 64, ptr noundef %add.ptr11.3) #2
  %add.ptr13.3 = getelementptr i8, ptr %1, i32 220
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr13.3) #2
  %add.ptr15.3 = getelementptr i8, ptr %1, i32 224
  tail call void @msm_writel(i32 noundef 70, ptr noundef %add.ptr15.3) #2
  %add.ptr17.3 = getelementptr i8, ptr %1, i32 192
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr17.3) #2
  %add.ptr19.3 = getelementptr i8, ptr %1, i32 196
  tail call void @msm_writel(i32 noundef 160, ptr noundef %add.ptr19.3) #2
  %add.ptr21.3 = getelementptr i8, ptr %1, i32 208
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr21.3) #2
  %add.ptr22 = getelementptr i8, ptr %1, i32 268
  tail call void @msm_writel(i32 noundef 128, ptr noundef %add.ptr22) #2
  %add.ptr23 = getelementptr i8, ptr %1, i32 284
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr23) #2
  %add.ptr24 = getelementptr i8, ptr %1, i32 288
  tail call void @msm_writel(i32 noundef 70, ptr noundef %add.ptr24) #2
  %add.ptr25 = getelementptr i8, ptr %1, i32 256
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr25) #2
  %add.ptr26 = getelementptr i8, ptr %1, i32 260
  tail call void @msm_writel(i32 noundef 160, ptr noundef %add.ptr26) #2
  %add.ptr27 = getelementptr i8, ptr %1, i32 264
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr27) #2
  %add.ptr28 = getelementptr i8, ptr %1, i32 272
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr28) #2
  %16 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base2, align 4
  %18 = ptrtoint ptr %timing1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timing1, align 4
  %and.i.i = and i32 %19, 255
  %add.ptr.i = getelementptr i8, ptr %17, i32 320
  tail call void @msm_writel(i32 noundef %and.i.i, ptr noundef %add.ptr.i) #2
  %clk_trail.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %clk_trail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clk_trail.i, align 4
  %and.i47.i = and i32 %21, 255
  %add.ptr3.i = getelementptr i8, ptr %17, i32 324
  tail call void @msm_writel(i32 noundef %and.i47.i, ptr noundef %add.ptr3.i) #2
  %clk_prepare.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 2
  %22 = ptrtoint ptr %clk_prepare.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clk_prepare.i, align 4
  %and.i48.i = and i32 %23, 255
  %add.ptr5.i = getelementptr i8, ptr %17, i32 328
  tail call void @msm_writel(i32 noundef %and.i48.i, ptr noundef %add.ptr5.i) #2
  %24 = ptrtoint ptr %timing1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timing1, align 4
  %and.i = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end7.dsi_20nm_dphy_set_timing.exit_crit_edge, label %if.then.i

if.end7.dsi_20nm_dphy_set_timing.exit_crit_edge:  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  br label %dsi_20nm_dphy_set_timing.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr7.i81 = getelementptr i8, ptr %17, i32 332
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr7.i81) #2
  br label %dsi_20nm_dphy_set_timing.exit

dsi_20nm_dphy_set_timing.exit:                    ; preds = %if.then.i, %if.end7.dsi_20nm_dphy_set_timing.exit_crit_edge
  %hs_exit.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 3
  %26 = ptrtoint ptr %hs_exit.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hs_exit.i, align 4
  %and.i49.i = and i32 %27, 255
  %add.ptr9.i82 = getelementptr i8, ptr %17, i32 336
  tail call void @msm_writel(i32 noundef %and.i49.i, ptr noundef %add.ptr9.i82) #2
  %hs_zero.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 4
  %28 = ptrtoint ptr %hs_zero.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hs_zero.i, align 4
  %and.i50.i = and i32 %29, 255
  %add.ptr11.i = getelementptr i8, ptr %17, i32 340
  tail call void @msm_writel(i32 noundef %and.i50.i, ptr noundef %add.ptr11.i) #2
  %hs_prepare.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 5
  %30 = ptrtoint ptr %hs_prepare.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hs_prepare.i, align 4
  %and.i51.i = and i32 %31, 255
  %add.ptr13.i = getelementptr i8, ptr %17, i32 344
  tail call void @msm_writel(i32 noundef %and.i51.i, ptr noundef %add.ptr13.i) #2
  %hs_trail.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 6
  %32 = ptrtoint ptr %hs_trail.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hs_trail.i, align 4
  %and.i52.i = and i32 %33, 255
  %add.ptr15.i = getelementptr i8, ptr %17, i32 348
  tail call void @msm_writel(i32 noundef %and.i52.i, ptr noundef %add.ptr15.i) #2
  %hs_rqst.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 7
  %34 = ptrtoint ptr %hs_rqst.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hs_rqst.i, align 4
  %and.i53.i = and i32 %35, 255
  %add.ptr17.i = getelementptr i8, ptr %17, i32 352
  tail call void @msm_writel(i32 noundef %and.i53.i, ptr noundef %add.ptr17.i) #2
  %ta_go.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 8
  %36 = ptrtoint ptr %ta_go.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ta_go.i, align 4
  %and.i54.i = and i32 %37, 7
  %ta_sure.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 9
  %38 = ptrtoint ptr %ta_sure.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ta_sure.i, align 4
  %shl.i.i = shl i32 %39, 4
  %and.i55.i = and i32 %shl.i.i, 112
  %or.i = or i32 %and.i55.i, %and.i54.i
  %add.ptr20.i = getelementptr i8, ptr %17, i32 356
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr20.i) #2
  %ta_get.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 10
  %40 = ptrtoint ptr %ta_get.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ta_get.i, align 4
  %and.i56.i = and i32 %41, 7
  %add.ptr22.i = getelementptr i8, ptr %17, i32 360
  tail call void @msm_writel(i32 noundef %and.i56.i, ptr noundef %add.ptr22.i) #2
  %add.ptr24.i = getelementptr i8, ptr %17, i32 364
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr24.i) #2
  %add.ptr29 = getelementptr i8, ptr %1, i32 372
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr29) #2
  %add.ptr30 = getelementptr i8, ptr %1, i32 392
  tail call void @msm_writel(i32 noundef 6, ptr noundef %add.ptr30) #2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !18
  tail call void @arm_heavy_mb() #2
  %add.ptr31 = getelementptr i8, ptr %1, i32 368
  tail call void @msm_writel(i32 noundef 127, ptr noundef %add.ptr31) #2
  br label %cleanup

cleanup:                                          ; preds = %dsi_20nm_dphy_set_timing.exit, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %dsi_20nm_dphy_set_timing.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_20nm_phy_disable(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 368
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr) #2
  %reg_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 3
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_dphy_timing_calc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @dsi_phy_20nm_cfgs, !1, !"dsi_phy_20nm_cfgs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_20nm.c", i32 132, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_20nm.c", i32 76, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_20nm.c", i32 79, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__func__.dsi_20nm_phy_enable, !5, !"<string literal>", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
!18 = !{i64 2157329374}
