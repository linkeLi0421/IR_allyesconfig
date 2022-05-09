; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-tps68470.c_pt.bc'
source_filename = "../drivers/clk/clk-tps68470.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tps68470_clkout_freqs = type { i32, i32, i32, i32, i32, i32 }
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
%struct.tps68470_clkdata = type { %struct.clk_hw, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.tps68470_clk_platform_data = type { ptr, ptr }

@__initcall__kmod_clk_tps68470__183_251_tps68470_clk_init4 = internal global ptr @tps68470_clk_init, section ".initcall4.init", align 4
@tps68470_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tps68470_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tps68470_clk_exit = internal global ptr @tps68470_clk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias184 = internal constant [41 x i8] c"clk_tps68470.alias=platform:tps68470-clk\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [56 x i8] c"clk_tps68470.description=clock driver for TPS68470 pmic\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [43 x i8] c"clk_tps68470.file=drivers/clk/clk-tps68470\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [25 x i8] c"clk_tps68470.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tps68470-clk\00", [19 x i8] zeroinitializer }, align 32
@tps68470_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @tps68470_clk_prepare, ptr @tps68470_clk_unprepare, ptr @tps68470_clk_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps68470_clk_recalc_rate, ptr @tps68470_clk_round_rate, ptr null, ptr null, ptr null, ptr @tps68470_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.tps68470_clk_probe.tps68470_clk_initdata = private unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32 } { ptr @.str, ptr @tps68470_clk_ops, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1 }, align 4
@clk_freqs = internal constant { [3 x %struct.tps68470_clkout_freqs], [56 x i8] } { [3 x %struct.tps68470_clkout_freqs] [%struct.tps68470_clkout_freqs { i32 19200000, i32 170, i32 32, i32 1, i32 2, i32 3 }, %struct.tps68470_clkout_freqs { i32 20000000, i32 170, i32 40, i32 1, i32 3, i32 4 }, %struct.tps68470_clkout_freqs { i32 24000000, i32 170, i32 80, i32 1, i32 4, i32 8 }], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 19200000, i64 20000000, i64 24000000]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 19200000, i64 20000000, i64 24000000]
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"tps68470_clk_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 235, i32 31 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 237, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"tps68470_clk_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 184, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [10 x i8] c"clk_freqs\00", align 1
@___asan_gen_.12 = private constant [30 x i8] c"../drivers/clk/clk-tps68470.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 38, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_tps68470_clk_exit, ptr @__initcall__kmod_clk_tps68470__183_251_tps68470_clk_init4, ptr @tps68470_clk_exit, ptr @tps68470_clk_driver, ptr @.str, ptr @tps68470_clk_ops, ptr @clk_freqs], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps68470_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps68470_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_freqs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps68470_clk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps68470_clk_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps68470_clk_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps68470_clk_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps68470_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %tps68470_clk_initdata = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tps68470_clk_initdata) #7
  %2 = call ptr @memcpy(ptr %tps68470_clk_initdata, ptr @__const.tps68470_clk_probe.tps68470_clk_initdata, i32 28)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.tps68470_clkdata, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %regmap, align 4
  %init = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tps68470_clk_initdata, ptr %init, align 4
  %call5 = call i32 @tps68470_clk_set_rate(ptr noundef nonnull %call.i, i32 noundef 19200000, i32 noundef 0)
  %call8 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call14 = call i32 @devm_clk_hw_register_clkdev(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @.str, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %tobool18.not = icmp eq ptr %1, null
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %consumer_con_id = getelementptr inbounds %struct.tps68470_clk_platform_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %consumer_con_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %consumer_con_id, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call22 = call i32 @devm_clk_hw_register_clkdev(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef %10, ptr noundef %12) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ], [ %call14, %if.end11.cleanup_crit_edge ], [ %call22, %if.then19 ], [ 0, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tps68470_clk_initdata) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps68470_clk_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %if.end.2.i [
    i32 19200000, label %entry.tps68470_clk_cfg_lookup.exit_crit_edge
    i32 20000000, label %cleanup.fold.split.i
    i32 24000000, label %cleanup.fold.split22.i
  ]

entry.tps68470_clk_cfg_lookup.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps68470_clk_cfg_lookup.exit

if.end.2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.1.i = sub i32 20000000, %rate
  %1 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #7
  %sub.i = sub i32 19200000, %rate
  %2 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp4.1.i = icmp slt i32 %1, %2
  %best_idx.1.1.i = zext i1 %cmp4.1.i to i32
  %3 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2) #7
  %sub.2.i = sub i32 24000000, %rate
  %4 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp4.2.i = icmp slt i32 %4, %3
  %best_idx.1.2.i = select i1 %cmp4.2.i, i32 2, i32 %best_idx.1.1.i
  br label %tps68470_clk_cfg_lookup.exit

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps68470_clk_cfg_lookup.exit

cleanup.fold.split22.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps68470_clk_cfg_lookup.exit

tps68470_clk_cfg_lookup.exit:                     ; preds = %cleanup.fold.split22.i, %cleanup.fold.split.i, %if.end.2.i, %entry.tps68470_clk_cfg_lookup.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.tps68470_clk_cfg_lookup.exit_crit_edge ], [ %best_idx.1.2.i, %if.end.2.i ], [ 1, %cleanup.fold.split.i ], [ 2, %cleanup.fold.split22.i ]
  %arrayidx = getelementptr [3 x %struct.tps68470_clkout_freqs], ptr @clk_freqs, i32 0, i32 %retval.0.i
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %rate)
  %cmp.not = icmp eq i32 %6, %rate
  br i1 %cmp.not, label %if.end, label %tps68470_clk_cfg_lookup.exit.cleanup_crit_edge

tps68470_clk_cfg_lookup.exit.cleanup_crit_edge:   ; preds = %tps68470_clk_cfg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %tps68470_clk_cfg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.tps68470_clkdata, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %boostdiv = getelementptr [3 x %struct.tps68470_clkout_freqs], ptr @clk_freqs, i32 0, i32 %retval.0.i, i32 5
  %9 = ptrtoint ptr %boostdiv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %boostdiv, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 7, i32 noundef %10) #7
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %buckdiv = getelementptr [3 x %struct.tps68470_clkout_freqs], ptr @clk_freqs, i32 0, i32 %retval.0.i, i32 4
  %13 = ptrtoint ptr %buckdiv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buckdiv, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 8, i32 noundef %14) #7
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 9, i32 noundef 3) #7
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %xtaldiv = getelementptr [3 x %struct.tps68470_clkout_freqs], ptr @clk_freqs, i32 0, i32 %retval.0.i, i32 1
  %19 = ptrtoint ptr %xtaldiv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xtaldiv, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 10, i32 noundef %20) #7
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %plldiv = getelementptr [3 x %struct.tps68470_clkout_freqs], ptr @clk_freqs, i32 0, i32 %retval.0.i, i32 2
  %23 = ptrtoint ptr %plldiv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %plldiv, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 11, i32 noundef %24) #7
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %postdiv = getelementptr [3 x %struct.tps68470_clkout_freqs], ptr @clk_freqs, i32 0, i32 %retval.0.i, i32 3
  %27 = ptrtoint ptr %postdiv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %postdiv, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 12, i32 noundef %28) #7
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 6, i32 noundef %28) #7
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call22 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 16, i32 noundef 5) #7
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 13, i32 noundef 208) #7
  %rate25 = getelementptr inbounds %struct.tps68470_clkdata, ptr %hw, i32 0, i32 2
  %35 = ptrtoint ptr %rate25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %rate, ptr %rate25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %tps68470_clk_cfg_lookup.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %tps68470_clk_cfg_lookup.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps68470_clk_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.tps68470_clkdata, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 15, i32 noundef 10) #7
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 13, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 5000, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tps68470_clk_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.tps68470_clkdata, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 13, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 15, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps68470_clk_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !28
  %regmap = getelementptr inbounds %struct.tps68470_clkdata, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 13, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tps68470_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rate = getelementptr inbounds %struct.tps68470_clkdata, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tps68470_clk_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %rate, label %if.end.2.i [
    i32 19200000, label %entry.tps68470_clk_cfg_lookup.exit_crit_edge
    i32 20000000, label %cleanup.fold.split.i
    i32 24000000, label %cleanup.fold.split22.i
  ]

entry.tps68470_clk_cfg_lookup.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps68470_clk_cfg_lookup.exit

if.end.2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.1.i = sub i32 20000000, %rate
  %1 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #7
  %sub.i = sub i32 19200000, %rate
  %2 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp4.1.i = icmp slt i32 %1, %2
  %best_idx.1.1.i = zext i1 %cmp4.1.i to i32
  %3 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2) #7
  %sub.2.i = sub i32 24000000, %rate
  %4 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp4.2.i = icmp slt i32 %4, %3
  %best_idx.1.2.i = select i1 %cmp4.2.i, i32 2, i32 %best_idx.1.1.i
  br label %tps68470_clk_cfg_lookup.exit

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps68470_clk_cfg_lookup.exit

cleanup.fold.split22.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps68470_clk_cfg_lookup.exit

tps68470_clk_cfg_lookup.exit:                     ; preds = %cleanup.fold.split22.i, %cleanup.fold.split.i, %if.end.2.i, %entry.tps68470_clk_cfg_lookup.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.tps68470_clk_cfg_lookup.exit_crit_edge ], [ %best_idx.1.2.i, %if.end.2.i ], [ 1, %cleanup.fold.split.i ], [ 2, %cleanup.fold.split22.i ]
  %arrayidx = getelementptr [3 x %struct.tps68470_clkout_freqs], ptr @clk_freqs, i32 0, i32 %retval.0.i
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__initcall__kmod_clk_tps68470__183_251_tps68470_clk_init4, !1, !"__initcall__kmod_clk_tps68470__183_251_tps68470_clk_init4", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-tps68470.c", i32 251, i32 1}
!2 = !{ptr @__exitcall_tps68470_clk_exit, !3, !"__exitcall_tps68470_clk_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-tps68470.c", i32 257, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias184, !5, !"__UNIQUE_ID_alias184", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-tps68470.c", i32 259, i32 1}
!6 = !{ptr @__UNIQUE_ID_description185, !7, !"__UNIQUE_ID_description185", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-tps68470.c", i32 260, i32 1}
!8 = !{ptr @__UNIQUE_ID_file186, !9, !"__UNIQUE_ID_file186", i1 false, i1 false}
!9 = !{!"../drivers/clk/clk-tps68470.c", i32 261, i32 1}
!10 = !{ptr @__UNIQUE_ID_license187, !9, !"__UNIQUE_ID_license187", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/clk-tps68470.c", i32 237, i32 11}
!13 = !{ptr @tps68470_clk_driver, !14, !"tps68470_clk_driver", i1 false, i1 false}
!14 = !{!"../drivers/clk/clk-tps68470.c", i32 235, i32 31}
!15 = !{ptr @tps68470_clk_ops, !16, !"tps68470_clk_ops", i1 false, i1 false}
!16 = !{!"../drivers/clk/clk-tps68470.c", i32 184, i32 29}
!17 = !{ptr @clk_freqs, !18, !"clk_freqs", i1 false, i1 false}
!18 = !{!"../drivers/clk/clk-tps68470.c", i32 38, i32 3}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
