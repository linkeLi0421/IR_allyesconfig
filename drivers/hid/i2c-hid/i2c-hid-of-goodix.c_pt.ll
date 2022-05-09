; ModuleID = '/llk/IR_all_yes/drivers/hid/i2c-hid/i2c-hid-of-goodix.c_pt.bc'
source_filename = "../drivers/hid/i2c-hid/i2c-hid-of-goodix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.goodix_i2c_hid_timing_data = type { i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2chid_ops = type { ptr, ptr, ptr }
%struct.i2c_hid_of_goodix = type { %struct.i2chid_ops, ptr, %struct.notifier_block, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_i2c_hid_of_goodix__288_174_goodix_i2c_hid_ts_driver_init6 = internal global ptr @goodix_i2c_hid_ts_driver_init, section ".initcall6.init", align 4
@goodix_i2c_hid_ts_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @i2c_hid_of_goodix_probe, ptr @i2c_hid_core_remove, ptr null, ptr @i2c_hid_core_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @goodix_i2c_hid_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2c_hid_core_pm, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_goodix_i2c_hid_ts_driver_exit = internal global ptr @goodix_i2c_hid_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [66 x i8] c"i2c_hid_of_goodix.author=Douglas Anderson <dianders@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [64 x i8] c"i2c_hid_of_goodix.description=Goodix i2c-hid touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"i2c_hid_of_goodix.file=drivers/hid/i2c-hid/i2c-hid-of-goodix\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [33 x i8] c"i2c_hid_of_goodix.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_hid_of_goodix\00", [46 x i8] zeroinitializer }, align 32
@goodix_i2c_hid_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"goodix,gt7375p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @goodix_gt7375p_timing_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@i2c_hid_core_pm = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"regulator notifier request failed\0A\00", [61 x i8] zeroinitializer }, align 32
@goodix_gt7375p_timing_data = internal constant { %struct.goodix_i2c_hid_timing_data, [24 x i8] } { %struct.goodix_i2c_hid_timing_data { i32 180, i32 10 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1024, i64 2048, i64 4096]
@___asan_gen_.4 = private unnamed_addr constant [25 x i8] c"goodix_i2c_hid_ts_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 163, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 165, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [24 x i8] c"goodix_i2c_hid_of_match\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 157, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 105, i32 41 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 109, i32 54 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 130, i32 4 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"goodix_gt7375p_timing_data\00", align 1
@___asan_gen_.23 = private constant [43 x i8] c"../drivers/hid/i2c-hid/i2c-hid-of-goodix.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 152, i32 48 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_goodix_i2c_hid_ts_driver_exit, ptr @__initcall__kmod_i2c_hid_of_goodix__288_174_goodix_i2c_hid_ts_driver_init6, ptr @goodix_i2c_hid_ts_driver_exit, ptr @goodix_i2c_hid_ts_driver, ptr @.str, ptr @goodix_i2c_hid_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @goodix_gt7375p_timing_data], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_i2c_hid_ts_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_i2c_hid_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_gt7375p_timing_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @goodix_i2c_hid_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @goodix_i2c_hid_ts_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @goodix_i2c_hid_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @i2c_del_driver(ptr noundef nonnull @goodix_i2c_hid_ts_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_hid_of_goodix_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @goodix_i2c_hid_power_up, ptr %call.i, align 4
  %power_down = getelementptr inbounds %struct.i2chid_ops, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %power_down to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @goodix_i2c_hid_power_down, ptr %power_down, align 4
  %call3 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 7) #3
  %reset_gpio = getelementptr inbounds %struct.i2c_hid_of_goodix, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #3
  %vdd = getelementptr inbounds %struct.i2c_hid_of_goodix, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %vdd, align 4
  %cmp.i71 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call19 = tail call ptr @device_get_match_data(ptr noundef %dev) #3
  %timings = getelementptr inbounds %struct.i2c_hid_of_goodix, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call19, ptr %timings, align 4
  %nb = getelementptr inbounds %struct.i2c_hid_of_goodix, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ihid_goodix_vdd_notify, ptr %nb, align 4
  %8 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdd, align 4
  %call22 = tail call i32 @devm_regulator_register_notifier(ptr noundef %9, ptr noundef %nb) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %call26 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call22, ptr noundef nonnull @.str.3) #3
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  %10 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio, align 4
  %tobool29.not = icmp eq ptr %11, null
  br i1 %tobool29.not, label %if.end27.if.end41_crit_edge, label %land.lhs.true

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end27
  %12 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdd, align 4
  %call31 = tail call i32 @regulator_is_enabled(ptr noundef %13) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true.if.end41_crit_edge, label %if.then33

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then33:                                        ; preds = %land.lhs.true
  %14 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdd, align 4
  %call35 = tail call i32 @regulator_enable(ptr noundef %15) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end38:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @goodix_i2c_hid_deassert_reset(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  %16 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdd, align 4
  %call40 = tail call i32 @regulator_disable(ptr noundef %17) #3
  br label %if.end41

if.end41:                                         ; preds = %if.end38, %land.lhs.true.if.end41_crit_edge, %if.end27.if.end41_crit_edge
  %call43 = tail call i32 @i2c_hid_core_probe(ptr noundef %client, ptr noundef nonnull %call.i, i16 noundef zeroext 1, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then33.cleanup_crit_edge, %if.then24, %if.then14, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %5, %if.then14 ], [ %call26, %if.then24 ], [ %call43, %if.end41 ], [ -12, %entry.cleanup_crit_edge ], [ %call35, %if.then33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_hid_core_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_hid_core_shutdown(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goodix_i2c_hid_power_up(ptr nocapture noundef readonly %ops) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd = getelementptr inbounds %struct.i2c_hid_of_goodix, ptr %ops, i32 0, i32 1
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %1) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @goodix_i2c_hid_power_down(ptr nocapture noundef readonly %ops) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd = getelementptr inbounds %struct.i2c_hid_of_goodix, ptr %ops, i32 0, i32 1
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ihid_goodix_vdd_notify(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1024, label %sw.bb
    i32 4096, label %sw.bb1
    i32 2048, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %reset_gpio = getelementptr i8, ptr %nb, i32 12
  %1 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %2, i32 noundef 1) #3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %timings.i = getelementptr i8, ptr %nb, i32 16
  %3 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timings.i, align 4
  %post_power_delay_ms.i = getelementptr inbounds %struct.goodix_i2c_hid_timing_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %post_power_delay_ms.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %post_power_delay_ms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i, label %sw.bb1.if.end.i_crit_edge, label %if.then.i

sw.bb1.if.end.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @msleep(i32 noundef %6) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb1.if.end.i_crit_edge
  %reset_gpio.i = getelementptr i8, ptr %nb, i32 12
  %7 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef 0) #3
  %9 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %timings.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not.i = icmp eq i32 %12, 0
  br i1 %tobool5.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.then6.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @msleep(i32 noundef %12) #3
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %reset_gpio.i5 = getelementptr i8, ptr %nb, i32 12
  %13 = ptrtoint ptr %reset_gpio.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset_gpio.i5, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %14, i32 noundef 0) #3
  %timings4.i6 = getelementptr i8, ptr %nb, i32 16
  %15 = ptrtoint ptr %timings4.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %timings4.i6, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not.i7 = icmp eq i32 %18, 0
  br i1 %tobool5.not.i7, label %sw.bb2.sw.epilog_crit_edge, label %if.then6.i9

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then6.i9:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @msleep(i32 noundef %18) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then6.i9, %sw.bb2.sw.epilog_crit_edge, %if.then6.i, %if.end.i.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 1, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ], [ 1, %if.end.i.sw.epilog_crit_edge ], [ 1, %if.then6.i ], [ 1, %sw.bb2.sw.epilog_crit_edge ], [ 1, %if.then6.i9 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @goodix_i2c_hid_deassert_reset(ptr nocapture noundef readonly %ihid_goodix, i1 noundef zeroext %regulator_just_turned_on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %regulator_just_turned_on, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %timings = getelementptr inbounds %struct.i2c_hid_of_goodix, ptr %ihid_goodix, i32 0, i32 4
  %0 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timings, align 4
  %post_power_delay_ms = getelementptr inbounds %struct.goodix_i2c_hid_timing_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %post_power_delay_ms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %post_power_delay_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @msleep(i32 noundef %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %reset_gpio = getelementptr inbounds %struct.i2c_hid_of_goodix, ptr %ihid_goodix, i32 0, i32 3
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #3
  %timings4 = getelementptr inbounds %struct.i2c_hid_of_goodix, ptr %ihid_goodix, i32 0, i32 4
  %6 = ptrtoint ptr %timings4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timings4, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @msleep(i32 noundef %9) #3
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_hid_core_probe(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_i2c_hid_of_goodix__288_174_goodix_i2c_hid_ts_driver_init6, !1, !"__initcall__kmod_i2c_hid_of_goodix__288_174_goodix_i2c_hid_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/i2c-hid/i2c-hid-of-goodix.c", i32 174, i32 1}
!2 = !{ptr @__exitcall_goodix_i2c_hid_ts_driver_exit, !1, !"__exitcall_goodix_i2c_hid_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hid/i2c-hid/i2c-hid-of-goodix.c", i32 176, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hid/i2c-hid/i2c-hid-of-goodix.c", i32 177, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hid/i2c-hid/i2c-hid-of-goodix.c", i32 178, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hid/i2c-hid/i2c-hid-of-goodix.c", i32 165, i32 11}
!12 = !{ptr @goodix_i2c_hid_ts_driver, !13, !"goodix_i2c_hid_ts_driver", i1 false, i1 false}
!13 = !{!"../drivers/hid/i2c-hid/i2c-hid-of-goodix.c", i32 163, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hid/i2c-hid/i2c-hid-of-goodix.c", i32 105, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hid/i2c-hid/i2c-hid-of-goodix.c", i32 109, i32 54}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hid/i2c-hid/i2c-hid-of-goodix.c", i32 130, i32 4}
!20 = !{ptr @goodix_i2c_hid_of_match, !21, !"goodix_i2c_hid_of_match", i1 false, i1 false}
!21 = !{!"../drivers/hid/i2c-hid/i2c-hid-of-goodix.c", i32 157, i32 34}
!22 = !{ptr @goodix_gt7375p_timing_data, !23, !"goodix_gt7375p_timing_data", i1 false, i1 false}
!23 = !{!"../drivers/hid/i2c-hid/i2c-hid-of-goodix.c", i32 152, i32 48}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
