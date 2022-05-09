; ModuleID = '/llk/IR_all_yes/drivers/power/supply/twl4030_madc_battery.c_pt.bc'
source_filename = "../drivers/power/supply/twl4030_madc_battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.twl4030_madc_battery = type { ptr, ptr, ptr, ptr, ptr }
%struct.twl4030_madc_bat_platform_data = type { i32, ptr, i32, ptr, i32 }
%struct.twl4030_madc_bat_calibration = type { i16, i16 }

@__initcall__kmod_twl4030_madc_battery__183_273_twl4030_madc_battery_driver_init6 = internal global ptr @twl4030_madc_battery_driver_init, section ".initcall6.init", align 4
@twl4030_madc_battery_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl4030_madc_battery_probe, ptr @twl4030_madc_battery_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl4030_madc_battery_driver_exit = internal global ptr @twl4030_madc_battery_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [68 x i8] c"twl4030_madc_battery.file=drivers/power/supply/twl4030_madc_battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [33 x i8] c"twl4030_madc_battery.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author186 = internal constant [65 x i8] c"twl4030_madc_battery.author=Lukas M\C3\A4rdian <lukas@goldelico.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description187 = internal constant [61 x i8] c"twl4030_madc_battery.description=twl4030_madc battery driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [57 x i8] c"twl4030_madc_battery.alias=platform:twl4030_madc_battery\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"twl4030_madc_battery\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"temp\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ichg\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbat\00", [27 x i8] zeroinitializer }, align 32
@twl4030_madc_bat_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.4, i32 1, ptr null, i32 0, ptr @twl4030_madc_bat_props, i32 10, ptr @twl4030_madc_bat_get_property, ptr null, ptr null, ptr @twl4030_madc_bat_ext_changed, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"twl4030_battery\00", [16 x i8] zeroinitializer }, align 32
@twl4030_madc_bat_props = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 3, i32 0, i32 6, i32 12, i32 17, i32 47, i32 24, i32 26, i32 52, i32 60], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 3, i64 6, i64 12, i64 17, i64 24, i64 26, i64 47, i64 52, i64 60]
@___asan_gen_.5 = private unnamed_addr constant [28 x i8] c"twl4030_madc_battery_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 266, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 268, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 204, i32 63 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 210, i32 63 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 216, i32 63 }
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"twl4030_madc_bat_desc\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 176, i32 39 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 177, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"twl4030_madc_bat_props\00", align 1
@___asan_gen_.27 = private constant [47 x i8] c"../drivers/power/supply/twl4030_madc_battery.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 32, i32 35 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_description187, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_twl4030_madc_battery_driver_exit, ptr @__initcall__kmod_twl4030_madc_battery__183_273_twl4030_madc_battery_driver_init6, ptr @twl4030_madc_battery_driver_exit, ptr @twl4030_madc_battery_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @twl4030_madc_bat_desc, ptr @.str.4, ptr @twl4030_madc_bat_props], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_battery_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_bat_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_bat_props to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_madc_battery_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl4030_madc_battery_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_madc_battery_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl4030_madc_battery_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_madc_battery_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #5
  %2 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %channel_temp = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %channel_temp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %channel_temp, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #5
  %channel_ichg = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %channel_ichg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %channel_ichg, align 4
  %cmp.i69 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.end9.err_temp_crit_edge, label %if.end17

if.end9.err_temp_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_temp

if.end17:                                         ; preds = %if.end9
  %call19 = tail call ptr @iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #5
  %channel_vbat = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %channel_vbat to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call19, ptr %channel_vbat, align 4
  %cmp.i70 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.end17.err_ichg_crit_edge, label %if.end25

if.end17.err_ichg_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_ichg

if.end25:                                         ; preds = %if.end17
  %charging = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %charging to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %charging, align 4
  %charging_size = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %charging_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %charging_size, align 4
  tail call void @sort(ptr noundef %8, i32 noundef %10, i32 noundef 4, ptr noundef nonnull @twl4030_cmp, ptr noundef null) #5
  %discharging = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %discharging to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %discharging, align 4
  %discharging_size = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %discharging_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %discharging_size, align 4
  tail call void @sort(ptr noundef %12, i32 noundef %14, i32 noundef 4, ptr noundef nonnull @twl4030_cmp, ptr noundef null) #5
  %pdata26 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %pdata26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %pdata26, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %17 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %drv_data, align 4
  %call28 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @twl4030_madc_bat_desc, ptr noundef nonnull %psy_cfg) #5
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call28, ptr %call.i, align 4
  %cmp.i71 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then31, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %channel_vbat to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %channel_vbat, align 4
  call void @iio_channel_release(ptr noundef %20) #5
  br label %err_ichg

err_ichg:                                         ; preds = %if.then31, %if.end17.err_ichg_crit_edge
  %ret.0.in = phi ptr [ %call28, %if.then31 ], [ %call19, %if.end17.err_ichg_crit_edge ]
  %21 = ptrtoint ptr %channel_ichg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channel_ichg, align 4
  call void @iio_channel_release(ptr noundef %22) #5
  br label %err_temp

err_temp:                                         ; preds = %err_ichg, %if.end9.err_temp_crit_edge
  %ret.1.in = phi ptr [ %ret.0.in, %err_ichg ], [ %call11, %if.end9.err_temp_crit_edge ]
  %ret.1 = ptrtoint ptr %ret.1.in to i32
  %23 = ptrtoint ptr %channel_temp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channel_temp, align 4
  call void @iio_channel_release(ptr noundef %24) #5
  br label %cleanup

cleanup:                                          ; preds = %err_temp, %if.end25.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ %4, %if.then6 ], [ %ret.1, %err_temp ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_madc_battery_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @power_supply_unregister(ptr noundef %3) #5
  %channel_vbat = getelementptr inbounds %struct.twl4030_madc_battery, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %channel_vbat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_vbat, align 4
  tail call void @iio_channel_release(ptr noundef %5) #5
  %channel_ichg = getelementptr inbounds %struct.twl4030_madc_battery, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %channel_ichg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel_ichg, align 4
  tail call void @iio_channel_release(ptr noundef %7) #5
  %channel_temp = getelementptr inbounds %struct.twl4030_madc_battery, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %channel_temp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel_temp, align 4
  tail call void @iio_channel_release(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @twl4030_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %b, align 2
  %conv = sext i16 %1 to i32
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %a, align 2
  %conv2 = sext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv2
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_madc_bat_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %val.i.i.i205 = alloca i32, align 4
  %val.i.i198 = alloca i32, align 4
  %val.i.i192 = alloca i32, align 4
  %val.i.i.i144 = alloca i32, align 4
  %val.i.i137 = alloca i32, align 4
  %val.i.i.i89 = alloca i32, align 4
  %val.i.i82 = alloca i32, align 4
  %val.i.i75 = alloca i32, align 4
  %val.i.i68 = alloca i32, align 4
  %val.i.i62 = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #5
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 12, label %sw.bb7
    i32 6, label %entry.cleanup.sink.split_crit_edge
    i32 17, label %sw.bb10
    i32 3, label %sw.bb12
    i32 26, label %sw.bb13
    i32 47, label %sw.bb17
    i32 24, label %sw.bb20
    i32 52, label %sw.bb23
    i32 60, label %sw.bb25
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel_vbat.i = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %channel_vbat.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %channel_vbat.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %3 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i.i, align 4, !annotation !37
  %call.i.i = call i32 @iio_read_channel_processed(ptr noundef %2, ptr noundef nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.twl4030_madc_bat_get_voltage.exit_crit_edge, label %if.end.i.i

sw.bb.twl4030_madc_bat_get_voltage.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_madc_bat_get_voltage.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.i.i, align 4
  br label %twl4030_madc_bat_get_voltage.exit

twl4030_madc_bat_get_voltage.exit:                ; preds = %if.end.i.i, %sw.bb.twl4030_madc_bat_get_voltage.exit_crit_edge
  %retval.0.i.i = phi i32 [ %5, %if.end.i.i ], [ %call.i.i, %sw.bb.twl4030_madc_bat_get_voltage.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  %channel_ichg.i.i = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %channel_ichg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel_ichg.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #5
  %8 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !37
  %call.i.i.i = call i32 @iio_read_channel_processed(ptr noundef %7, ptr noundef nonnull %val.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %twl4030_madc_bat_get_charging_status.exit.thread.i, label %twl4030_madc_bat_get_charging_status.exit.i

twl4030_madc_bat_get_charging_status.exit.thread.i: ; preds = %twl4030_madc_bat_get_voltage.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #5
  br label %if.else.i

twl4030_madc_bat_get_charging_status.exit.i:      ; preds = %twl4030_madc_bat_get_voltage.exit
  %9 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i.i61 = icmp slt i32 %10, 1
  br i1 %cmp.i.i61, label %twl4030_madc_bat_get_charging_status.exit.i.if.else.i_crit_edge, label %if.then.i

twl4030_madc_bat_get_charging_status.exit.i.if.else.i_crit_edge: ; preds = %twl4030_madc_bat_get_charging_status.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.i:                                        ; preds = %twl4030_madc_bat_get_charging_status.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %pdata.i = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata.i, align 4
  %charging.i = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, ptr %12, i32 0, i32 1
  br label %if.end.i

if.else.i:                                        ; preds = %twl4030_madc_bat_get_charging_status.exit.i.if.else.i_crit_edge, %twl4030_madc_bat_get_charging_status.exit.thread.i
  %pdata1.i = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata1.i, align 4
  %discharging.i = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, ptr %14, i32 0, i32 3
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %calibration.0.in.i = phi ptr [ %charging.i, %if.then.i ], [ %discharging.i, %if.else.i ]
  %15 = ptrtoint ptr %calibration.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %calibration.0.i = load ptr, ptr %calibration.0.in.i, align 4
  %16 = ptrtoint ptr %calibration.0.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %calibration.0.i, align 2
  %conv.i = sext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv.i)
  %cmp.i = icmp sgt i32 %retval.0.i.i, %conv.i
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  br label %for.cond.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %level.i = getelementptr inbounds %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i, i32 0, i32 1
  %18 = ptrtoint ptr %level.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %level.i, align 2
  %conv5.i = sext i16 %19 to i32
  br label %twl4030_madc_bat_voltscale.exit

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i.for.cond.i_crit_edge
  %i.0.i = phi i32 [ %add.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %if.end.i.for.cond.i_crit_edge ]
  %add.i = add i32 %i.0.i, 1
  %arrayidx7.i = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i, i32 %add.i
  %20 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %cmp10.i = icmp sgt i16 %21, -1
  br i1 %cmp10.i, label %for.body.i, label %for.cond.i.if.else_crit_edge

for.cond.i.if.else_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

for.body.i:                                       ; preds = %for.cond.i
  %conv985.i = zext i16 %21 to i32
  %arrayidx12.i = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i, i32 %i.0.i
  %22 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx12.i, align 2
  %conv14.i = sext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv14.i)
  %cmp15.not.i = icmp sgt i32 %retval.0.i.i, %conv14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv985.i)
  %cmp21.not.i = icmp slt i32 %retval.0.i.i, %conv985.i
  %or.cond.i = select i1 %cmp15.not.i, i1 true, i1 %cmp21.not.i
  br i1 %or.cond.i, label %for.body.i.for.cond.i_crit_edge, label %if.then23.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.then23.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv985.i.le = zext i16 %21 to i32
  %conv14.i.le = sext i16 %23 to i32
  %level25.i = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i, i32 %i.0.i, i32 1
  %24 = ptrtoint ptr %level25.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %level25.i, align 2
  %conv26.i = sext i16 %25 to i32
  %sub.i = sub i32 %conv14.i.le, %retval.0.i.i
  %level35.i = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i, i32 %add.i, i32 1
  %26 = ptrtoint ptr %level35.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %level35.i, align 2
  %conv36.i = sext i16 %27 to i32
  %sub37.i = sub nsw i32 %conv26.i, %conv36.i
  %mul.i = mul i32 %sub37.i, %sub.i
  %sub45.i = sub nsw i32 %conv14.i.le, %conv985.i.le
  %div.i = sdiv i32 %mul.i, %sub45.i
  %sub46.i = sub i32 %conv26.i, %div.i
  br label %twl4030_madc_bat_voltscale.exit

twl4030_madc_bat_voltscale.exit:                  ; preds = %if.then23.i, %if.then3.i
  %res.0.i = phi i32 [ %conv5.i, %if.then3.i ], [ %sub46.i, %if.then23.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %res.0.i)
  %cmp = icmp sgt i32 %res.0.i, 95
  br i1 %cmp, label %twl4030_madc_bat_voltscale.exit.cleanup.sink.split_crit_edge, label %twl4030_madc_bat_voltscale.exit.if.else_crit_edge

twl4030_madc_bat_voltscale.exit.if.else_crit_edge: ; preds = %twl4030_madc_bat_voltscale.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

twl4030_madc_bat_voltscale.exit.cleanup.sink.split_crit_edge: ; preds = %twl4030_madc_bat_voltscale.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.else:                                          ; preds = %twl4030_madc_bat_voltscale.exit.if.else_crit_edge, %for.cond.i.if.else_crit_edge
  %28 = ptrtoint ptr %channel_ichg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %channel_ichg.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i62) #5
  %30 = ptrtoint ptr %val.i.i62 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %val.i.i62, align 4, !annotation !37
  %call.i.i63 = call i32 @iio_read_channel_processed(ptr noundef %29, ptr noundef nonnull %val.i.i62) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63)
  %cmp.i.i64 = icmp slt i32 %call.i.i63, 0
  br i1 %cmp.i.i64, label %twl4030_madc_bat_get_charging_status.exit.thread, label %twl4030_madc_bat_get_charging_status.exit

twl4030_madc_bat_get_charging_status.exit.thread: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i62) #5
  br label %if.else5

twl4030_madc_bat_get_charging_status.exit:        ; preds = %if.else
  %31 = ptrtoint ptr %val.i.i62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i.i62, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i62) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i67 = icmp slt i32 %32, 1
  br i1 %cmp.i67, label %twl4030_madc_bat_get_charging_status.exit.if.else5_crit_edge, label %twl4030_madc_bat_get_charging_status.exit.cleanup.sink.split_crit_edge

twl4030_madc_bat_get_charging_status.exit.cleanup.sink.split_crit_edge: ; preds = %twl4030_madc_bat_get_charging_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

twl4030_madc_bat_get_charging_status.exit.if.else5_crit_edge: ; preds = %twl4030_madc_bat_get_charging_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else5

if.else5:                                         ; preds = %twl4030_madc_bat_get_charging_status.exit.if.else5_crit_edge, %twl4030_madc_bat_get_charging_status.exit.thread
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %entry
  %channel_vbat.i69 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 4
  %33 = ptrtoint ptr %channel_vbat.i69 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %channel_vbat.i69, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i68) #5
  %35 = ptrtoint ptr %val.i.i68 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %val.i.i68, align 4, !annotation !37
  %call.i.i70 = call i32 @iio_read_channel_processed(ptr noundef %34, ptr noundef nonnull %val.i.i68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %cmp.i.i71 = icmp slt i32 %call.i.i70, 0
  br i1 %cmp.i.i71, label %sw.bb7.twl4030_madc_bat_get_voltage.exit74_crit_edge, label %if.end.i.i72

sw.bb7.twl4030_madc_bat_get_voltage.exit74_crit_edge: ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_madc_bat_get_voltage.exit74

if.end.i.i72:                                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %val.i.i68 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i.i68, align 4
  br label %twl4030_madc_bat_get_voltage.exit74

twl4030_madc_bat_get_voltage.exit74:              ; preds = %if.end.i.i72, %sw.bb7.twl4030_madc_bat_get_voltage.exit74_crit_edge
  %retval.0.i.i73 = phi i32 [ %37, %if.end.i.i72 ], [ %call.i.i70, %sw.bb7.twl4030_madc_bat_get_voltage.exit74_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i68) #5
  %mul = mul i32 %retval.0.i.i73, 1000
  br label %cleanup.sink.split

sw.bb10:                                          ; preds = %entry
  %channel_ichg.i76 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 3
  %38 = ptrtoint ptr %channel_ichg.i76 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %channel_ichg.i76, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i75) #5
  %40 = ptrtoint ptr %val.i.i75 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %val.i.i75, align 4, !annotation !37
  %call.i.i77 = call i32 @iio_read_channel_processed(ptr noundef %39, ptr noundef nonnull %val.i.i75) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %cmp.i.i78 = icmp slt i32 %call.i.i77, 0
  br i1 %cmp.i.i78, label %sw.bb10.twl4030_madc_bat_get_current.exit_crit_edge, label %if.end.i.i79

sw.bb10.twl4030_madc_bat_get_current.exit_crit_edge: ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_madc_bat_get_current.exit

if.end.i.i79:                                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %val.i.i75 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i.i75, align 4
  br label %twl4030_madc_bat_get_current.exit

twl4030_madc_bat_get_current.exit:                ; preds = %if.end.i.i79, %sw.bb10.twl4030_madc_bat_get_current.exit_crit_edge
  %retval.0.i.i80 = phi i32 [ %42, %if.end.i.i79 ], [ %call.i.i77, %sw.bb10.twl4030_madc_bat_get_current.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i75) #5
  %mul.i81 = mul i32 %retval.0.i.i80, 1000
  br label %cleanup.sink.split

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb13:                                          ; preds = %entry
  %channel_vbat.i83 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 4
  %43 = ptrtoint ptr %channel_vbat.i83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %channel_vbat.i83, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i82) #5
  %45 = ptrtoint ptr %val.i.i82 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %val.i.i82, align 4, !annotation !37
  %call.i.i84 = call i32 @iio_read_channel_processed(ptr noundef %44, ptr noundef nonnull %val.i.i82) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i84)
  %cmp.i.i85 = icmp slt i32 %call.i.i84, 0
  br i1 %cmp.i.i85, label %sw.bb13.twl4030_madc_bat_get_voltage.exit88_crit_edge, label %if.end.i.i86

sw.bb13.twl4030_madc_bat_get_voltage.exit88_crit_edge: ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_madc_bat_get_voltage.exit88

if.end.i.i86:                                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %val.i.i82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i.i82, align 4
  br label %twl4030_madc_bat_get_voltage.exit88

twl4030_madc_bat_get_voltage.exit88:              ; preds = %if.end.i.i86, %sw.bb13.twl4030_madc_bat_get_voltage.exit88_crit_edge
  %retval.0.i.i87 = phi i32 [ %47, %if.end.i.i86 ], [ %call.i.i84, %sw.bb13.twl4030_madc_bat_get_voltage.exit88_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i82) #5
  %channel_ichg.i.i90 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 3
  %48 = ptrtoint ptr %channel_ichg.i.i90 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %channel_ichg.i.i90, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i89) #5
  %50 = ptrtoint ptr %val.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %val.i.i.i89, align 4, !annotation !37
  %call.i.i.i91 = call i32 @iio_read_channel_processed(ptr noundef %49, ptr noundef nonnull %val.i.i.i89) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i91)
  %cmp.i.i.i92 = icmp slt i32 %call.i.i.i91, 0
  br i1 %cmp.i.i.i92, label %twl4030_madc_bat_get_charging_status.exit.thread.i93, label %twl4030_madc_bat_get_charging_status.exit.i95

twl4030_madc_bat_get_charging_status.exit.thread.i93: ; preds = %twl4030_madc_bat_get_voltage.exit88
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i89) #5
  br label %if.else.i101

twl4030_madc_bat_get_charging_status.exit.i95:    ; preds = %twl4030_madc_bat_get_voltage.exit88
  %51 = ptrtoint ptr %val.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i.i.i89, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i89) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.i.i94 = icmp slt i32 %52, 1
  br i1 %cmp.i.i94, label %twl4030_madc_bat_get_charging_status.exit.i95.if.else.i101_crit_edge, label %if.then.i98

twl4030_madc_bat_get_charging_status.exit.i95.if.else.i101_crit_edge: ; preds = %twl4030_madc_bat_get_charging_status.exit.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i101

if.then.i98:                                      ; preds = %twl4030_madc_bat_get_charging_status.exit.i95
  call void @__sanitizer_cov_trace_pc() #7
  %pdata.i96 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 1
  %53 = ptrtoint ptr %pdata.i96 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdata.i96, align 4
  %charging.i97 = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, ptr %54, i32 0, i32 1
  br label %if.end.i106

if.else.i101:                                     ; preds = %twl4030_madc_bat_get_charging_status.exit.i95.if.else.i101_crit_edge, %twl4030_madc_bat_get_charging_status.exit.thread.i93
  %pdata1.i99 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 1
  %55 = ptrtoint ptr %pdata1.i99 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdata1.i99, align 4
  %discharging.i100 = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, ptr %56, i32 0, i32 3
  br label %if.end.i106

if.end.i106:                                      ; preds = %if.else.i101, %if.then.i98
  %calibration.0.in.i102 = phi ptr [ %charging.i97, %if.then.i98 ], [ %discharging.i100, %if.else.i101 ]
  %57 = ptrtoint ptr %calibration.0.in.i102 to i32
  call void @__asan_load4_noabort(i32 %57)
  %calibration.0.i103 = load ptr, ptr %calibration.0.in.i102, align 4
  %58 = ptrtoint ptr %calibration.0.i103 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %calibration.0.i103, align 2
  %conv.i104 = sext i16 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i87, i32 %conv.i104)
  %cmp.i105 = icmp sgt i32 %retval.0.i.i87, %conv.i104
  br i1 %cmp.i105, label %if.then3.i109, label %if.end.i106.for.cond.i114_crit_edge

if.end.i106.for.cond.i114_crit_edge:              ; preds = %if.end.i106
  br label %for.cond.i114

if.then3.i109:                                    ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #7
  %level.i107 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i103, i32 0, i32 1
  %60 = ptrtoint ptr %level.i107 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %level.i107, align 2
  %conv5.i108 = sext i16 %61 to i32
  br label %twl4030_madc_bat_voltscale.exit136

for.cond.i114:                                    ; preds = %for.body.i121.for.cond.i114_crit_edge, %if.end.i106.for.cond.i114_crit_edge
  %i.0.i110 = phi i32 [ %add.i111, %for.body.i121.for.cond.i114_crit_edge ], [ 0, %if.end.i106.for.cond.i114_crit_edge ]
  %add.i111 = add i32 %i.0.i110, 1
  %arrayidx7.i112 = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i103, i32 %add.i111
  %62 = ptrtoint ptr %arrayidx7.i112 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx7.i112, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %63)
  %cmp10.i113 = icmp sgt i16 %63, -1
  br i1 %cmp10.i113, label %for.body.i121, label %for.cond.i114.twl4030_madc_bat_voltscale.exit136_crit_edge

for.cond.i114.twl4030_madc_bat_voltscale.exit136_crit_edge: ; preds = %for.cond.i114
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_madc_bat_voltscale.exit136

for.body.i121:                                    ; preds = %for.cond.i114
  %conv985.i115 = zext i16 %63 to i32
  %arrayidx12.i116 = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i103, i32 %i.0.i110
  %64 = ptrtoint ptr %arrayidx12.i116 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx12.i116, align 2
  %conv14.i117 = sext i16 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i87, i32 %conv14.i117)
  %cmp15.not.i118 = icmp sgt i32 %retval.0.i.i87, %conv14.i117
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i87, i32 %conv985.i115)
  %cmp21.not.i119 = icmp slt i32 %retval.0.i.i87, %conv985.i115
  %or.cond.i120 = select i1 %cmp15.not.i118, i1 true, i1 %cmp21.not.i119
  br i1 %or.cond.i120, label %for.body.i121.for.cond.i114_crit_edge, label %if.then23.i134

for.body.i121.for.cond.i114_crit_edge:            ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i114

if.then23.i134:                                   ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #7
  %conv985.i115.le = zext i16 %63 to i32
  %conv14.i117.le = sext i16 %65 to i32
  %level25.i124 = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i103, i32 %i.0.i110, i32 1
  %66 = ptrtoint ptr %level25.i124 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %level25.i124, align 2
  %conv26.i125 = sext i16 %67 to i32
  %sub.i126 = sub i32 %conv14.i117.le, %retval.0.i.i87
  %level35.i127 = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i103, i32 %add.i111, i32 1
  %68 = ptrtoint ptr %level35.i127 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %level35.i127, align 2
  %conv36.i128 = sext i16 %69 to i32
  %sub37.i129 = sub nsw i32 %conv26.i125, %conv36.i128
  %mul.i130 = mul i32 %sub37.i129, %sub.i126
  %sub45.i131 = sub nsw i32 %conv14.i117.le, %conv985.i115.le
  %div.i132 = sdiv i32 %mul.i130, %sub45.i131
  %sub46.i133 = sub i32 %conv26.i125, %div.i132
  br label %twl4030_madc_bat_voltscale.exit136

twl4030_madc_bat_voltscale.exit136:               ; preds = %if.then23.i134, %for.cond.i114.twl4030_madc_bat_voltscale.exit136_crit_edge, %if.then3.i109
  %res.0.i135 = phi i32 [ %conv5.i108, %if.then3.i109 ], [ %sub46.i133, %if.then23.i134 ], [ 0, %for.cond.i114.twl4030_madc_bat_voltscale.exit136_crit_edge ]
  %pdata = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 1
  %70 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdata, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %mul16 = mul i32 %73, %res.0.i135
  %div = udiv i32 %mul16, 100
  br label %cleanup.sink.split

sw.bb17:                                          ; preds = %entry
  %channel_vbat.i138 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 4
  %74 = ptrtoint ptr %channel_vbat.i138 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %channel_vbat.i138, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i137) #5
  %76 = ptrtoint ptr %val.i.i137 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %val.i.i137, align 4, !annotation !37
  %call.i.i139 = call i32 @iio_read_channel_processed(ptr noundef %75, ptr noundef nonnull %val.i.i137) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i139)
  %cmp.i.i140 = icmp slt i32 %call.i.i139, 0
  br i1 %cmp.i.i140, label %sw.bb17.twl4030_madc_bat_get_voltage.exit143_crit_edge, label %if.end.i.i141

sw.bb17.twl4030_madc_bat_get_voltage.exit143_crit_edge: ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_madc_bat_get_voltage.exit143

if.end.i.i141:                                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %val.i.i137 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val.i.i137, align 4
  br label %twl4030_madc_bat_get_voltage.exit143

twl4030_madc_bat_get_voltage.exit143:             ; preds = %if.end.i.i141, %sw.bb17.twl4030_madc_bat_get_voltage.exit143_crit_edge
  %retval.0.i.i142 = phi i32 [ %78, %if.end.i.i141 ], [ %call.i.i139, %sw.bb17.twl4030_madc_bat_get_voltage.exit143_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i137) #5
  %channel_ichg.i.i145 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 3
  %79 = ptrtoint ptr %channel_ichg.i.i145 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %channel_ichg.i.i145, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i144) #5
  %81 = ptrtoint ptr %val.i.i.i144 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %val.i.i.i144, align 4, !annotation !37
  %call.i.i.i146 = call i32 @iio_read_channel_processed(ptr noundef %80, ptr noundef nonnull %val.i.i.i144) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i146)
  %cmp.i.i.i147 = icmp slt i32 %call.i.i.i146, 0
  br i1 %cmp.i.i.i147, label %twl4030_madc_bat_get_charging_status.exit.thread.i148, label %twl4030_madc_bat_get_charging_status.exit.i150

twl4030_madc_bat_get_charging_status.exit.thread.i148: ; preds = %twl4030_madc_bat_get_voltage.exit143
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i144) #5
  br label %if.else.i156

twl4030_madc_bat_get_charging_status.exit.i150:   ; preds = %twl4030_madc_bat_get_voltage.exit143
  %82 = ptrtoint ptr %val.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %val.i.i.i144, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i144) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp.i.i149 = icmp slt i32 %83, 1
  br i1 %cmp.i.i149, label %twl4030_madc_bat_get_charging_status.exit.i150.if.else.i156_crit_edge, label %if.then.i153

twl4030_madc_bat_get_charging_status.exit.i150.if.else.i156_crit_edge: ; preds = %twl4030_madc_bat_get_charging_status.exit.i150
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i156

if.then.i153:                                     ; preds = %twl4030_madc_bat_get_charging_status.exit.i150
  call void @__sanitizer_cov_trace_pc() #7
  %pdata.i151 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 1
  %84 = ptrtoint ptr %pdata.i151 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdata.i151, align 4
  %charging.i152 = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, ptr %85, i32 0, i32 1
  br label %if.end.i161

if.else.i156:                                     ; preds = %twl4030_madc_bat_get_charging_status.exit.i150.if.else.i156_crit_edge, %twl4030_madc_bat_get_charging_status.exit.thread.i148
  %pdata1.i154 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 1
  %86 = ptrtoint ptr %pdata1.i154 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdata1.i154, align 4
  %discharging.i155 = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, ptr %87, i32 0, i32 3
  br label %if.end.i161

if.end.i161:                                      ; preds = %if.else.i156, %if.then.i153
  %calibration.0.in.i157 = phi ptr [ %charging.i152, %if.then.i153 ], [ %discharging.i155, %if.else.i156 ]
  %88 = ptrtoint ptr %calibration.0.in.i157 to i32
  call void @__asan_load4_noabort(i32 %88)
  %calibration.0.i158 = load ptr, ptr %calibration.0.in.i157, align 4
  %89 = ptrtoint ptr %calibration.0.i158 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %calibration.0.i158, align 2
  %conv.i159 = sext i16 %90 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i142, i32 %conv.i159)
  %cmp.i160 = icmp sgt i32 %retval.0.i.i142, %conv.i159
  br i1 %cmp.i160, label %if.then3.i164, label %if.end.i161.for.cond.i169_crit_edge

if.end.i161.for.cond.i169_crit_edge:              ; preds = %if.end.i161
  br label %for.cond.i169

if.then3.i164:                                    ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #7
  %level.i162 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i158, i32 0, i32 1
  %91 = ptrtoint ptr %level.i162 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %level.i162, align 2
  %conv5.i163 = sext i16 %92 to i32
  br label %cleanup.sink.split

for.cond.i169:                                    ; preds = %for.body.i176.for.cond.i169_crit_edge, %if.end.i161.for.cond.i169_crit_edge
  %i.0.i165 = phi i32 [ %add.i166, %for.body.i176.for.cond.i169_crit_edge ], [ 0, %if.end.i161.for.cond.i169_crit_edge ]
  %add.i166 = add i32 %i.0.i165, 1
  %arrayidx7.i167 = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i158, i32 %add.i166
  %93 = ptrtoint ptr %arrayidx7.i167 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx7.i167, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %94)
  %cmp10.i168 = icmp sgt i16 %94, -1
  br i1 %cmp10.i168, label %for.body.i176, label %for.cond.i169.cleanup.sink.split_crit_edge

for.cond.i169.cleanup.sink.split_crit_edge:       ; preds = %for.cond.i169
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.body.i176:                                    ; preds = %for.cond.i169
  %conv985.i170 = zext i16 %94 to i32
  %arrayidx12.i171 = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i158, i32 %i.0.i165
  %95 = ptrtoint ptr %arrayidx12.i171 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx12.i171, align 2
  %conv14.i172 = sext i16 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i142, i32 %conv14.i172)
  %cmp15.not.i173 = icmp sgt i32 %retval.0.i.i142, %conv14.i172
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i142, i32 %conv985.i170)
  %cmp21.not.i174 = icmp slt i32 %retval.0.i.i142, %conv985.i170
  %or.cond.i175 = select i1 %cmp15.not.i173, i1 true, i1 %cmp21.not.i174
  br i1 %or.cond.i175, label %for.body.i176.for.cond.i169_crit_edge, label %if.then23.i189

for.body.i176.for.cond.i169_crit_edge:            ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i169

if.then23.i189:                                   ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #7
  %conv985.i170.le = zext i16 %94 to i32
  %conv14.i172.le = sext i16 %96 to i32
  %level25.i179 = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i158, i32 %i.0.i165, i32 1
  %97 = ptrtoint ptr %level25.i179 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %level25.i179, align 2
  %conv26.i180 = sext i16 %98 to i32
  %sub.i181 = sub i32 %conv14.i172.le, %retval.0.i.i142
  %level35.i182 = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i158, i32 %add.i166, i32 1
  %99 = ptrtoint ptr %level35.i182 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %level35.i182, align 2
  %conv36.i183 = sext i16 %100 to i32
  %sub37.i184 = sub nsw i32 %conv26.i180, %conv36.i183
  %mul.i185 = mul i32 %sub37.i184, %sub.i181
  %sub45.i186 = sub nsw i32 %conv14.i172.le, %conv985.i170.le
  %div.i187 = sdiv i32 %mul.i185, %sub45.i186
  %sub46.i188 = sub i32 %conv26.i180, %div.i187
  br label %cleanup.sink.split

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdata21 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 1
  %101 = ptrtoint ptr %pdata21 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdata21, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 4
  br label %cleanup.sink.split

sw.bb23:                                          ; preds = %entry
  %channel_temp.i = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 2
  %105 = ptrtoint ptr %channel_temp.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %channel_temp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i192) #5
  %107 = ptrtoint ptr %val.i.i192 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %val.i.i192, align 4, !annotation !37
  %call.i.i193 = call i32 @iio_read_channel_processed(ptr noundef %106, ptr noundef nonnull %val.i.i192) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i193)
  %cmp.i.i194 = icmp slt i32 %call.i.i193, 0
  br i1 %cmp.i.i194, label %sw.bb23.twl4030_madc_bat_get_temp.exit_crit_edge, label %if.end.i.i195

sw.bb23.twl4030_madc_bat_get_temp.exit_crit_edge: ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_madc_bat_get_temp.exit

if.end.i.i195:                                    ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %val.i.i192 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val.i.i192, align 4
  br label %twl4030_madc_bat_get_temp.exit

twl4030_madc_bat_get_temp.exit:                   ; preds = %if.end.i.i195, %sw.bb23.twl4030_madc_bat_get_temp.exit_crit_edge
  %retval.0.i.i196 = phi i32 [ %109, %if.end.i.i195 ], [ %call.i.i193, %sw.bb23.twl4030_madc_bat_get_temp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i192) #5
  %mul.i197 = mul i32 %retval.0.i.i196, 10
  br label %cleanup.sink.split

sw.bb25:                                          ; preds = %entry
  %channel_vbat.i199 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 4
  %110 = ptrtoint ptr %channel_vbat.i199 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %channel_vbat.i199, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i198) #5
  %112 = ptrtoint ptr %val.i.i198 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %val.i.i198, align 4, !annotation !37
  %call.i.i200 = call i32 @iio_read_channel_processed(ptr noundef %111, ptr noundef nonnull %val.i.i198) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i200)
  %cmp.i.i201 = icmp slt i32 %call.i.i200, 0
  br i1 %cmp.i.i201, label %sw.bb25.twl4030_madc_bat_get_voltage.exit204_crit_edge, label %if.end.i.i202

sw.bb25.twl4030_madc_bat_get_voltage.exit204_crit_edge: ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_madc_bat_get_voltage.exit204

if.end.i.i202:                                    ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  %113 = ptrtoint ptr %val.i.i198 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val.i.i198, align 4
  br label %twl4030_madc_bat_get_voltage.exit204

twl4030_madc_bat_get_voltage.exit204:             ; preds = %if.end.i.i202, %sw.bb25.twl4030_madc_bat_get_voltage.exit204_crit_edge
  %retval.0.i.i203 = phi i32 [ %114, %if.end.i.i202 ], [ %call.i.i200, %sw.bb25.twl4030_madc_bat_get_voltage.exit204_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i198) #5
  %channel_ichg.i.i206 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 3
  %115 = ptrtoint ptr %channel_ichg.i.i206 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %channel_ichg.i.i206, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i205) #5
  %117 = ptrtoint ptr %val.i.i.i205 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -1, ptr %val.i.i.i205, align 4, !annotation !37
  %call.i.i.i207 = call i32 @iio_read_channel_processed(ptr noundef %116, ptr noundef nonnull %val.i.i.i205) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i207)
  %cmp.i.i.i208 = icmp slt i32 %call.i.i.i207, 0
  br i1 %cmp.i.i.i208, label %twl4030_madc_bat_get_charging_status.exit.thread.i209, label %twl4030_madc_bat_get_charging_status.exit.i211

twl4030_madc_bat_get_charging_status.exit.thread.i209: ; preds = %twl4030_madc_bat_get_voltage.exit204
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i205) #5
  br label %if.else.i217

twl4030_madc_bat_get_charging_status.exit.i211:   ; preds = %twl4030_madc_bat_get_voltage.exit204
  %118 = ptrtoint ptr %val.i.i.i205 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %val.i.i.i205, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i205) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %119)
  %cmp.i.i210 = icmp slt i32 %119, 1
  br i1 %cmp.i.i210, label %twl4030_madc_bat_get_charging_status.exit.i211.if.else.i217_crit_edge, label %if.then.i214

twl4030_madc_bat_get_charging_status.exit.i211.if.else.i217_crit_edge: ; preds = %twl4030_madc_bat_get_charging_status.exit.i211
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i217

if.then.i214:                                     ; preds = %twl4030_madc_bat_get_charging_status.exit.i211
  call void @__sanitizer_cov_trace_pc() #7
  %pdata.i212 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 1
  %120 = ptrtoint ptr %pdata.i212 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pdata.i212, align 4
  %charging.i213 = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, ptr %121, i32 0, i32 1
  br label %if.end.i222

if.else.i217:                                     ; preds = %twl4030_madc_bat_get_charging_status.exit.i211.if.else.i217_crit_edge, %twl4030_madc_bat_get_charging_status.exit.thread.i209
  %pdata1.i215 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 1
  %122 = ptrtoint ptr %pdata1.i215 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdata1.i215, align 4
  %discharging.i216 = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, ptr %123, i32 0, i32 3
  br label %if.end.i222

if.end.i222:                                      ; preds = %if.else.i217, %if.then.i214
  %calibration.0.in.i218 = phi ptr [ %charging.i213, %if.then.i214 ], [ %discharging.i216, %if.else.i217 ]
  %124 = ptrtoint ptr %calibration.0.in.i218 to i32
  call void @__asan_load4_noabort(i32 %124)
  %calibration.0.i219 = load ptr, ptr %calibration.0.in.i218, align 4
  %125 = ptrtoint ptr %calibration.0.i219 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %calibration.0.i219, align 2
  %conv.i220 = sext i16 %126 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i203, i32 %conv.i220)
  %cmp.i221 = icmp sgt i32 %retval.0.i.i203, %conv.i220
  br i1 %cmp.i221, label %if.then3.i225, label %if.end.i222.for.cond.i230_crit_edge

if.end.i222.for.cond.i230_crit_edge:              ; preds = %if.end.i222
  br label %for.cond.i230

if.then3.i225:                                    ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #7
  %level.i223 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i219, i32 0, i32 1
  %127 = ptrtoint ptr %level.i223 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %level.i223, align 2
  %conv5.i224 = sext i16 %128 to i32
  br label %twl4030_madc_bat_voltscale.exit252

for.cond.i230:                                    ; preds = %for.body.i237.for.cond.i230_crit_edge, %if.end.i222.for.cond.i230_crit_edge
  %i.0.i226 = phi i32 [ %add.i227, %for.body.i237.for.cond.i230_crit_edge ], [ 0, %if.end.i222.for.cond.i230_crit_edge ]
  %add.i227 = add i32 %i.0.i226, 1
  %arrayidx7.i228 = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i219, i32 %add.i227
  %129 = ptrtoint ptr %arrayidx7.i228 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx7.i228, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %130)
  %cmp10.i229 = icmp sgt i16 %130, -1
  br i1 %cmp10.i229, label %for.body.i237, label %for.cond.i230.twl4030_madc_bat_voltscale.exit252_crit_edge

for.cond.i230.twl4030_madc_bat_voltscale.exit252_crit_edge: ; preds = %for.cond.i230
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_madc_bat_voltscale.exit252

for.body.i237:                                    ; preds = %for.cond.i230
  %conv985.i231 = zext i16 %130 to i32
  %arrayidx12.i232 = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i219, i32 %i.0.i226
  %131 = ptrtoint ptr %arrayidx12.i232 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx12.i232, align 2
  %conv14.i233 = sext i16 %132 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i203, i32 %conv14.i233)
  %cmp15.not.i234 = icmp sgt i32 %retval.0.i.i203, %conv14.i233
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i203, i32 %conv985.i231)
  %cmp21.not.i235 = icmp slt i32 %retval.0.i.i203, %conv985.i231
  %or.cond.i236 = select i1 %cmp15.not.i234, i1 true, i1 %cmp21.not.i235
  br i1 %or.cond.i236, label %for.body.i237.for.cond.i230_crit_edge, label %if.then23.i250

for.body.i237.for.cond.i230_crit_edge:            ; preds = %for.body.i237
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i230

if.then23.i250:                                   ; preds = %for.body.i237
  call void @__sanitizer_cov_trace_pc() #7
  %conv985.i231.le = zext i16 %130 to i32
  %conv14.i233.le = sext i16 %132 to i32
  %level25.i240 = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i219, i32 %i.0.i226, i32 1
  %133 = ptrtoint ptr %level25.i240 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %level25.i240, align 2
  %conv26.i241 = sext i16 %134 to i32
  %sub.i242 = sub i32 %conv14.i233.le, %retval.0.i.i203
  %level35.i243 = getelementptr %struct.twl4030_madc_bat_calibration, ptr %calibration.0.i219, i32 %add.i227, i32 1
  %135 = ptrtoint ptr %level35.i243 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %level35.i243, align 2
  %conv36.i244 = sext i16 %136 to i32
  %sub37.i245 = sub nsw i32 %conv26.i241, %conv36.i244
  %mul.i246 = mul i32 %sub37.i245, %sub.i242
  %sub45.i247 = sub nsw i32 %conv14.i233.le, %conv985.i231.le
  %div.i248 = sdiv i32 %mul.i246, %sub45.i247
  %sub46.i249 = sub i32 %conv26.i241, %div.i248
  br label %twl4030_madc_bat_voltscale.exit252

twl4030_madc_bat_voltscale.exit252:               ; preds = %if.then23.i250, %for.cond.i230.twl4030_madc_bat_voltscale.exit252_crit_edge, %if.then3.i225
  %res.0.i251 = phi i32 [ %conv5.i224, %if.then3.i225 ], [ %sub46.i249, %if.then23.i250 ], [ 0, %for.cond.i230.twl4030_madc_bat_voltscale.exit252_crit_edge ]
  %pdata29 = getelementptr inbounds %struct.twl4030_madc_battery, ptr %call, i32 0, i32 1
  %137 = ptrtoint ptr %pdata29 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pdata29, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 4
  %div31 = udiv i32 %140, 1000
  %mul32 = mul i32 %div31, %res.0.i251
  %div33 = udiv i32 %mul32, 100
  %mul34 = mul i32 %div33, 3600
  %div35 = sdiv i32 %mul34, 400
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %twl4030_madc_bat_voltscale.exit252, %twl4030_madc_bat_get_temp.exit, %sw.bb20, %if.then23.i189, %for.cond.i169.cleanup.sink.split_crit_edge, %if.then3.i164, %twl4030_madc_bat_voltscale.exit136, %sw.bb12, %twl4030_madc_bat_get_current.exit, %twl4030_madc_bat_get_voltage.exit74, %if.else5, %twl4030_madc_bat_get_charging_status.exit.cleanup.sink.split_crit_edge, %twl4030_madc_bat_voltscale.exit.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %mul.sink = phi i32 [ %mul, %twl4030_madc_bat_get_voltage.exit74 ], [ %mul.i81, %twl4030_madc_bat_get_current.exit ], [ 1, %sw.bb12 ], [ %div, %twl4030_madc_bat_voltscale.exit136 ], [ %104, %sw.bb20 ], [ %mul.i197, %twl4030_madc_bat_get_temp.exit ], [ %div35, %twl4030_madc_bat_voltscale.exit252 ], [ 2, %if.else5 ], [ 4, %twl4030_madc_bat_voltscale.exit.cleanup.sink.split_crit_edge ], [ 1, %twl4030_madc_bat_get_charging_status.exit.cleanup.sink.split_crit_edge ], [ 2, %entry.cleanup.sink.split_crit_edge ], [ %conv5.i163, %if.then3.i164 ], [ %sub46.i188, %if.then23.i189 ], [ 0, %for.cond.i169.cleanup.sink.split_crit_edge ]
  %141 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %mul.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_madc_bat_ext_changed(ptr noundef %psy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @power_supply_changed(ptr noundef %psy) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_twl4030_madc_battery__183_273_twl4030_madc_battery_driver_init6, !1, !"__initcall__kmod_twl4030_madc_battery__183_273_twl4030_madc_battery_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/twl4030_madc_battery.c", i32 273, i32 1}
!2 = !{ptr @__exitcall_twl4030_madc_battery_driver_exit, !1, !"__exitcall_twl4030_madc_battery_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file184, !4, !"__UNIQUE_ID_file184", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/twl4030_madc_battery.c", i32 275, i32 1}
!5 = !{ptr @__UNIQUE_ID_license185, !4, !"__UNIQUE_ID_license185", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author186, !7, !"__UNIQUE_ID_author186", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/twl4030_madc_battery.c", i32 276, i32 1}
!8 = !{ptr @__UNIQUE_ID_description187, !9, !"__UNIQUE_ID_description187", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/twl4030_madc_battery.c", i32 277, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias188, !11, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/twl4030_madc_battery.c", i32 278, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/twl4030_madc_battery.c", i32 268, i32 11}
!14 = !{ptr @twl4030_madc_battery_driver, !15, !"twl4030_madc_battery_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/twl4030_madc_battery.c", i32 266, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/twl4030_madc_battery.c", i32 204, i32 63}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/twl4030_madc_battery.c", i32 210, i32 63}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/twl4030_madc_battery.c", i32 216, i32 63}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/twl4030_madc_battery.c", i32 177, i32 12}
!24 = !{ptr @twl4030_madc_bat_desc, !25, !"twl4030_madc_bat_desc", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/twl4030_madc_battery.c", i32 176, i32 39}
!26 = !{ptr @twl4030_madc_bat_props, !27, !"twl4030_madc_bat_props", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/twl4030_madc_battery.c", i32 32, i32 35}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
