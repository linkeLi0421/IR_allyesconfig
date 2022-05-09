; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-sc18is602.c_pt.bc'
source_filename = "../drivers/spi/spi-sc18is602.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sc18is602 = type { ptr, ptr, i8, i32, i32, ptr, i32, [201 x i8], i32, i32, ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_spi_sc18is602__291_344_sc18is602_driver_init6 = internal global ptr @sc18is602_driver_init, section ".initcall6.init", align 4
@sc18is602_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sc18is602_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sc18is602_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sc18is602_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sc18is602_driver_exit = internal global ptr @sc18is602_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description292 = internal constant [58 x i8] c"spi_sc18is602.description=SC18IS602/603 SPI Master Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [35 x i8] c"spi_sc18is602.author=Guenter Roeck\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [45 x i8] c"spi_sc18is602.file=drivers/spi/spi-sc18is602\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [26 x i8] c"spi_sc18is602.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sc18is602\00", [22 x i8] zeroinitializer }, align 32
@sc18is602_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sc18is602\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sc18is602b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sc18is603\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@sc18is602_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sc18is602\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"sc18is602b\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"sc18is603\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"sc18is602_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 335, i32 26 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 337, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"sc18is602_of_match\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 318, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"sc18is602_id\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 310, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 259, i32 43 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [31 x i8] c"../drivers/spi/spi-sc18is602.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 288, i32 30 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_sc18is602_driver_exit, ptr @__initcall__kmod_spi_sc18is602__291_344_sc18is602_driver_init6, ptr @sc18is602_driver_exit, ptr @sc18is602_driver, ptr @.str, ptr @sc18is602_of_match, ptr @sc18is602_id, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc18is602_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc18is602_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc18is602_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sc18is602_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sc18is602_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sc18is602_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @sc18is602_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc18is602_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %5) #6
  %and.i = and i32 %call.i.i, 1048577
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048577, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1048577
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev1, i32 noundef 244, i1 noundef zeroext false) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i109 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i.i109 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %driver_data.i.i109, align 4
  %call8 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 7) #6
  %reset = getelementptr inbounds %struct.sc18is602, ptr %11, i32 0, i32 10
  %13 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8, ptr %reset, align 4
  %cmp.i110 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  tail call void @gpiod_set_value_cansleep(ptr noundef %call8, i32 noundef 0) #6
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %11, align 4
  %client17 = getelementptr inbounds %struct.sc18is602, ptr %11, i32 0, i32 5
  %16 = ptrtoint ptr %client17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %client, ptr %client17, align 4
  %dev18 = getelementptr inbounds %struct.sc18is602, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev1, ptr %dev18, align 4
  %ctrl = getelementptr inbounds %struct.sc18is602, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %ctrl, align 4
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %tobool21.not = icmp eq ptr %20, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %21 = ptrtoint ptr %call24 to i32
  br label %if.end27

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %22 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %driver_data, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then22
  %.sink = phi i32 [ %23, %if.else ], [ %21, %if.then22 ]
  %24 = getelementptr inbounds %struct.sc18is602, ptr %11, i32 0, i32 6
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %24, align 4
  %26 = zext i32 %.sink to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.sink, label %if.end27.sw.epilog_crit_edge [
    i32 0, label %if.end27.sw.bb_crit_edge
    i32 1, label %if.end27.sw.bb_crit_edge111
    i32 2, label %sw.bb29
  ]

if.end27.sw.bb_crit_edge111:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end27.sw.bb_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end27.sw.bb_crit_edge, %if.end27.sw.bb_crit_edge111
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 4, ptr %num_chipselect, align 2
  %freq = getelementptr inbounds %struct.sc18is602, ptr %11, i32 0, i32 3
  br label %sw.epilog.sink.split

sw.bb29:                                          ; preds = %if.end27
  %num_chipselect30 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %num_chipselect30 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 2, ptr %num_chipselect30, align 2
  %tobool31.not = icmp eq ptr %3, null
  br i1 %tobool31.not, label %if.else34, label %if.then32

if.then32:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 4
  %freq33 = getelementptr inbounds %struct.sc18is602, ptr %11, i32 0, i32 3
  %31 = ptrtoint ptr %freq33 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %freq33, align 4
  br label %if.end41

if.else34:                                        ; preds = %sw.bb29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %32 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %len, align 4, !annotation !31
  %call35 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %len) #6
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.else34.if.end40_crit_edge, label %land.lhs.true

if.else34.if.end40_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

land.lhs.true:                                    ; preds = %if.else34
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp = icmp ugt i32 %34, 3
  br i1 %cmp, label %if.then37, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %call35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call35, align 4
  %freq39 = getelementptr inbounds %struct.sc18is602, ptr %11, i32 0, i32 3
  %37 = ptrtoint ptr %freq39 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %freq39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %land.lhs.true.if.end40_crit_edge, %if.else34.if.end40_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then32
  %freq42 = getelementptr inbounds %struct.sc18is602, ptr %11, i32 0, i32 3
  %38 = ptrtoint ptr %freq42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %freq42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool43.not = icmp eq i32 %39, 0
  br i1 %tobool43.not, label %if.end41.sw.epilog.sink.split_crit_edge, label %if.end41.sw.epilog_crit_edge

if.end41.sw.epilog_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end41.sw.epilog.sink.split_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end41.sw.epilog.sink.split_crit_edge, %sw.bb
  %freq42.sink = phi ptr [ %freq, %sw.bb ], [ %freq42, %if.end41.sw.epilog.sink.split_crit_edge ]
  %40 = ptrtoint ptr %freq42.sink to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 7372000, ptr %freq42.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end41.sw.epilog_crit_edge, %if.end27.sw.epilog_crit_edge
  %tobool47.not = icmp eq ptr %1, null
  br i1 %tobool47.not, label %cond.false, label %sw.epilog.cond.end_crit_edge

sw.epilog.cond.end_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter, align 8
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr, align 4
  %phi.cast = trunc i32 %44 to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.epilog.cond.end_crit_edge
  %cond = phi i16 [ %phi.cast, %cond.false ], [ -1, %sw.epilog.cond.end_crit_edge ]
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %cond, ptr %bus_num, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %46 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 11, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %47 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 128, ptr %bits_per_word_mask, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %48 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @sc18is602_setup, ptr %setup, align 4
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 45
  %49 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @sc18is602_transfer_one, ptr %transfer_one_message, align 4
  %max_transfer_size = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 13
  %50 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @sc18is602_max_transfer_size, ptr %max_transfer_size, align 8
  %max_message_size = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 14
  %51 = ptrtoint ptr %max_message_size to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @sc18is602_max_transfer_size, ptr %max_message_size, align 4
  %of_node50 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %52 = ptrtoint ptr %of_node50 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %1, ptr %of_node50, align 8
  %freq51 = getelementptr inbounds %struct.sc18is602, ptr %11, i32 0, i32 3
  %53 = ptrtoint ptr %freq51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %freq51, align 4
  %div107 = lshr i32 %54, 7
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %55 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div107, ptr %min_speed_hz, align 4
  %56 = load i32, ptr %freq51, align 4
  %div53108 = lshr i32 %56, 2
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %57 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %div53108, ptr %max_speed_hz, align 8
  %call54 = call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then11 ], [ %call54, %cond.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sc18is602_setup(ptr nocapture noundef readonly %spi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.sc18is602, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp1 = icmp eq i8 %7, 2
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -6, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc18is602_transfer_one(ptr noundef %master, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %tlen = getelementptr inbounds %struct.sc18is602, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %tlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tlen, align 4
  %client.i = getelementptr inbounds %struct.sc18is602, ptr %1, i32 0, i32 5
  %rindex54.i = getelementptr inbounds %struct.sc18is602, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn82 = load ptr, ptr %m, align 4
  %cmp.not84 = icmp eq ptr %.pn82, %m
  br i1 %cmp.not84, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mode = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %freq.i = getelementptr inbounds %struct.sc18is602, ptr %1, i32 0, i32 3
  %speed36.i = getelementptr inbounds %struct.sc18is602, ptr %1, i32 0, i32 4
  %ctrl60.i = getelementptr inbounds %struct.sc18is602, ptr %1, i32 0, i32 2
  %buffer.i = getelementptr inbounds %struct.sc18is602, ptr %1, i32 0, i32 7
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn85 = phi ptr [ %.pn82, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %t.086 = getelementptr i8, ptr %.pn85, i32 -84
  %tobool.not.i = icmp eq ptr %t.086, null
  br i1 %tobool.not.i, label %for.body.if.end_crit_edge, label %land.lhs.true.i

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i:                                  ; preds = %for.body
  %6 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tlen, align 4
  %len.i = getelementptr i8, ptr %.pn85, i32 -76
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %add.i = add i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 201, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 201
  br i1 %cmp.i, label %land.lhs.true.i.for.end_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %for.body.if.end_crit_edge
  %speed_hz = getelementptr i8, ptr %.pn85, i32 -24
  %10 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed_hz, align 4
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 8
  %conv = trunc i32 %13 to i8
  %and.i = shl i8 %conv, 2
  %14 = and i8 %and.i, 44
  %15 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %freq.i, align 4
  %div99.i = lshr i32 %16, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div99.i, i32 %11)
  %cmp.not.i = icmp ugt i32 %div99.i, %11
  br i1 %cmp.not.i, label %if.else.i, label %if.end.if.end58.i_crit_edge

if.end.if.end58.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.else.i:                                        ; preds = %if.end
  %div27100.i = lshr i32 %16, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div27100.i, i32 %11)
  %cmp28.not.i = icmp ugt i32 %div27100.i, %11
  br i1 %cmp28.not.i, label %if.else37.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = or i8 %14, 1
  br label %if.end58.i

if.else37.i:                                      ; preds = %if.else.i
  %div39101.i = lshr i32 %16, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %div39101.i, i32 %11)
  %cmp40.not.i = icmp ugt i32 %div39101.i, %11
  br i1 %cmp40.not.i, label %if.else49.i, label %if.then42.i

if.then42.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = or i8 %14, 2
  br label %if.end58.i

if.else49.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = or i8 %14, 3
  %div54102.i = lshr i32 %16, 7
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.else49.i, %if.then42.i, %if.then30.i, %if.end.if.end58.i_crit_edge
  %div27100.sink.i = phi i32 [ %div27100.i, %if.then30.i ], [ %div54102.i, %if.else49.i ], [ %div39101.i, %if.then42.i ], [ %div99.i, %if.end.if.end58.i_crit_edge ]
  %ctrl.3.i = phi i8 [ %17, %if.then30.i ], [ %19, %if.else49.i ], [ %18, %if.then42.i ], [ %14, %if.end.if.end58.i_crit_edge ]
  %20 = ptrtoint ptr %speed36.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div27100.sink.i, ptr %speed36.i, align 4
  %21 = ptrtoint ptr %ctrl60.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ctrl60.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %ctrl.3.i, i8 %22)
  %cmp62.i = icmp eq i8 %ctrl.3.i, %22
  br i1 %cmp62.i, label %if.end58.i.if.end10_crit_edge, label %if.end65.i

if.end58.i.if.end10_crit_edge:                    ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end65.i:                                       ; preds = %if.end58.i
  %23 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext -16, i8 noundef zeroext %ctrl.3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp66.i = icmp slt i32 %call.i, 0
  br i1 %cmp66.i, label %if.end65.i.for.end_crit_edge, label %if.end69.i

if.end65.i.for.end_crit_edge:                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end69.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %ctrl60.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %ctrl.3.i, ptr %ctrl60.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end69.i, %if.end58.i.if.end10_crit_edge
  %cs_change = getelementptr i8, ptr %.pn85, i32 -40
  %26 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %cs_change, align 4
  %27 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %lor.rhs, label %if.end10.lor.end_crit_edge

if.end10.lor.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %.pn85 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %.pn85, align 4
  %cmp.i60 = icmp eq ptr %29, %m
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end10.lor.end_crit_edge
  %30 = phi i1 [ true, %if.end10.lor.end_crit_edge ], [ %cmp.i60, %lor.rhs ]
  %len = getelementptr i8, ptr %.pn85, i32 -76
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool15.not = icmp eq i32 %32, 0
  br i1 %tobool15.not, label %lor.end.cleanup_crit_edge, label %if.then16

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %lor.end
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  %35 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i61 = icmp eq i32 %36, 0
  br i1 %cmp.i61, label %if.then.i, label %if.then16.if.end.i64_crit_edge

if.then16.if.end.i64_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i64

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spi1, align 4
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %chip_select.i, align 4
  %conv.i62 = zext i8 %40 to i32
  %shl.i = shl nuw i32 1, %conv.i62
  %conv2.i = trunc i32 %shl.i to i8
  %41 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv2.i, ptr %buffer.i, align 4
  %42 = ptrtoint ptr %tlen to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %tlen, align 4
  %43 = ptrtoint ptr %rindex54.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %rindex54.i, align 4
  br label %if.end.i64

if.end.i64:                                       ; preds = %if.then.i, %if.then16.if.end.i64_crit_edge
  %44 = ptrtoint ptr %t.086 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %t.086, align 4
  %tobool.not.i63 = icmp eq ptr %45, null
  br i1 %tobool.not.i63, label %if.else15.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i64
  %46 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tlen, align 4
  %arrayidx7.i = getelementptr %struct.sc18is602, ptr %1, i32 0, i32 7, i32 %47
  %48 = call ptr @memcpy(ptr %arrayidx7.i, ptr %45, i32 %34)
  %49 = load i32, ptr %tlen, align 4
  %add.i65 = add i32 %49, %34
  store i32 %add.i65, ptr %tlen, align 4
  %rx_buf.i = getelementptr i8, ptr %.pn85, i32 -80
  %50 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_buf.i, align 4
  %tobool10.not.i = icmp eq ptr %51, null
  br i1 %tobool10.not.i, label %if.else.i66, label %if.then4.i.land.lhs.true.i67_crit_edge

if.then4.i.land.lhs.true.i67_crit_edge:           ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i67

if.else.i66:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %add.i65, -1
  %52 = ptrtoint ptr %rindex54.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub.i, ptr %rindex54.i, align 4
  br label %if.end28.i

if.else15.i:                                      ; preds = %if.end.i64
  %rx_buf16.i = getelementptr i8, ptr %.pn85, i32 -80
  %53 = ptrtoint ptr %rx_buf16.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_buf16.i, align 4
  %tobool17.not.i = icmp eq ptr %54, null
  br i1 %tobool17.not.i, label %if.else15.i.if.end28.i_crit_edge, label %if.then18.i

if.else15.i.if.end28.i_crit_edge:                 ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then18.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tlen, align 4
  %sub20.i = add i32 %56, -1
  %57 = ptrtoint ptr %rindex54.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub20.i, ptr %rindex54.i, align 4
  %arrayidx24.i = getelementptr %struct.sc18is602, ptr %1, i32 0, i32 7, i32 %56
  %58 = call ptr @memset(ptr %arrayidx24.i, i32 0, i32 %34)
  %59 = load i32, ptr %tlen, align 4
  %add26.i = add i32 %59, %34
  store i32 %add26.i, ptr %tlen, align 4
  br label %land.lhs.true.i67

if.end28.i:                                       ; preds = %if.else15.i.if.end28.i_crit_edge, %if.else.i66
  br i1 %30, label %land.lhs.truethread-pre-split.i, label %if.end28.i.sc18is602_txrx.exit_crit_edge

if.end28.i.sc18is602_txrx.exit_crit_edge:         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sc18is602_txrx.exit

land.lhs.truethread-pre-split.i:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr.i = load i32, ptr %tlen, align 4
  br label %land.lhs.true.i67

land.lhs.true.i67:                                ; preds = %land.lhs.truethread-pre-split.i, %if.then18.i, %if.then4.i.land.lhs.true.i67_crit_edge
  %61 = phi i32 [ %.pr.i, %land.lhs.truethread-pre-split.i ], [ %add.i65, %if.then4.i.land.lhs.true.i67_crit_edge ], [ %add26.i, %if.then18.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp32.i = icmp sgt i32 %61, 1
  br i1 %cmp32.i, label %if.then34.i, label %land.lhs.true.i67.sc18is602_txrx.exit_crit_edge

land.lhs.true.i67.sc18is602_txrx.exit_crit_edge:  ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %sc18is602_txrx.exit

if.then34.i:                                      ; preds = %land.lhs.true.i67
  %call.i68 = tail call fastcc i32 @sc18is602_wait_ready(ptr noundef %1, i32 noundef 200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %cmp35.i = icmp slt i32 %call.i68, 0
  br i1 %cmp35.i, label %if.then34.i.for.end_crit_edge, label %if.end38.i

if.then34.i.for.end_crit_edge:                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end38.i:                                       ; preds = %if.then34.i
  %62 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %client.i, align 4
  %64 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tlen, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %63, ptr noundef %buffer.i, i32 noundef %65, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp42.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp42.i, label %if.end38.i.for.end_crit_edge, label %if.end45.i

if.end38.i.for.end_crit_edge:                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end45.i:                                       ; preds = %if.end38.i
  %66 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %67)
  %cmp47.not.i = icmp eq i32 %call.i.i, %67
  br i1 %cmp47.not.i, label %if.end50.i, label %if.end45.i.for.end_crit_edge

if.end45.i.for.end_crit_edge:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end50.i:                                       ; preds = %if.end45.i
  %rx_buf51.i = getelementptr i8, ptr %.pn85, i32 -80
  %68 = ptrtoint ptr %rx_buf51.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_buf51.i, align 4
  %tobool52.not.i = icmp eq ptr %69, null
  br i1 %tobool52.not.i, label %if.end50.i.if.end78.i_crit_edge, label %if.then53.i

if.end50.i.if.end78.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78.i

if.then53.i:                                      ; preds = %if.end50.i
  %70 = ptrtoint ptr %rindex54.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rindex54.i, align 4
  %add55.i = add i32 %71, %34
  %call57.i = tail call fastcc i32 @sc18is602_wait_ready(ptr noundef %1, i32 noundef %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %if.then53.i.for.end_crit_edge, label %if.end61.i

if.then53.i.for.end_crit_edge:                    ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end61.i:                                       ; preds = %if.then53.i
  %72 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %client.i, align 4
  %call.i134.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %73, ptr noundef %buffer.i, i32 noundef %add55.i, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134.i)
  %cmp66.i70 = icmp slt i32 %call.i134.i, 0
  br i1 %cmp66.i70, label %if.end61.i.for.end_crit_edge, label %if.end69.i71

if.end61.i.for.end_crit_edge:                     ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end69.i71:                                     ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i134.i, i32 %add55.i)
  %cmp70.not.i = icmp eq i32 %call.i134.i, %add55.i
  br i1 %cmp70.not.i, label %cleanup.i, label %if.end69.i71.for.end_crit_edge

if.end69.i71.for.end_crit_edge:                   ; preds = %if.end69.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.i:                                        ; preds = %if.end69.i71
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %rx_buf51.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rx_buf51.i, align 4
  %76 = ptrtoint ptr %rindex54.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rindex54.i, align 4
  %arrayidx77.i = getelementptr %struct.sc18is602, ptr %1, i32 0, i32 7, i32 %77
  %78 = call ptr @memcpy(ptr %75, ptr %arrayidx77.i, i32 %34)
  br label %if.end78.i

if.end78.i:                                       ; preds = %cleanup.i, %if.end50.i.if.end78.i_crit_edge
  %79 = ptrtoint ptr %tlen to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %tlen, align 4
  br label %sc18is602_txrx.exit

sc18is602_txrx.exit:                              ; preds = %if.end78.i, %land.lhs.true.i67.sc18is602_txrx.exit_crit_edge, %if.end28.i.sc18is602_txrx.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp19 = icmp slt i32 %34, 0
  br i1 %cmp19, label %sc18is602_txrx.exit.for.end_crit_edge, label %if.end22

sc18is602_txrx.exit.for.end_crit_edge:            ; preds = %sc18is602_txrx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end22:                                         ; preds = %sc18is602_txrx.exit
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %actual_length, align 4
  %add = add i32 %81, %34
  store i32 %add, ptr %actual_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %lor.end.cleanup_crit_edge
  %delay.i = getelementptr i8, ptr %.pn85, i32 -38
  %call.i72 = tail call i32 @spi_delay_exec(ptr noundef %delay.i, ptr noundef %t.086) #6
  %82 = ptrtoint ptr %.pn85 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn = load ptr, ptr %.pn85, align 4
  %cmp.not = icmp eq ptr %.pn, %m
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %sc18is602_txrx.exit.for.end_crit_edge, %if.end69.i71.for.end_crit_edge, %if.end61.i.for.end_crit_edge, %if.then53.i.for.end_crit_edge, %if.end45.i.for.end_crit_edge, %if.end38.i.for.end_crit_edge, %if.then34.i.for.end_crit_edge, %if.end65.i.for.end_crit_edge, %land.lhs.true.i.for.end_crit_edge, %entry.for.end_crit_edge
  %status.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call57.i, %if.then53.i.for.end_crit_edge ], [ %call.i134.i, %if.end61.i.for.end_crit_edge ], [ -5, %if.end69.i71.for.end_crit_edge ], [ -5, %if.end45.i.for.end_crit_edge ], [ %call.i.i, %if.end38.i.for.end_crit_edge ], [ %call.i68, %if.then34.i.for.end_crit_edge ], [ -22, %land.lhs.true.i.for.end_crit_edge ], [ %call.i, %if.end65.i.for.end_crit_edge ], [ %34, %sc18is602_txrx.exit.for.end_crit_edge ], [ 0, %cleanup.for.end_crit_edge ]
  %status30 = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 7
  %83 = ptrtoint ptr %status30 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %status.2, ptr %status30, align 4
  tail call void @spi_finalize_current_message(ptr noundef %master) #6
  ret i32 %status.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sc18is602_max_transfer_size(ptr nocapture noundef readnone %spi) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sc18is602_wait_ready(ptr nocapture noundef readonly %hw, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %dummy = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %len, 1000000
  %speed = getelementptr inbounds %struct.sc18is602, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 4
  %div = udiv i32 %mul, %1
  %add = add i32 %div, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #6
  %2 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %dummy, align 1, !annotation !31
  %client = getelementptr inbounds %struct.sc18is602, ptr %hw, i32 0, i32 5
  %mul2 = shl i32 %add, 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef nonnull %dummy, i32 noundef 1, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1 = icmp sgt i32 %call.i, -1
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @usleep_range_state(i32 noundef %add, i32 noundef %mul2, i32 noundef 2) #6
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %call.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %dummy, i32 noundef 1, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.1)
  %cmp1.1 = icmp sgt i32 %call.i.1, -1
  br i1 %cmp1.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  call void @usleep_range_state(i32 noundef %add, i32 noundef %mul2, i32 noundef 2) #6
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client, align 4
  %call.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %dummy, i32 noundef 1, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.2)
  %cmp1.2 = icmp sgt i32 %call.i.2, -1
  br i1 %cmp1.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  call void @usleep_range_state(i32 noundef %add, i32 noundef %mul2, i32 noundef 2) #6
  %9 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client, align 4
  %call.i.3 = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %dummy, i32 noundef 1, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.3)
  %cmp1.3 = icmp sgt i32 %call.i.3, -1
  br i1 %cmp1.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  call void @usleep_range_state(i32 noundef %add, i32 noundef %mul2, i32 noundef 2) #6
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client, align 4
  %call.i.4 = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %dummy, i32 noundef 1, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.4)
  %cmp1.4 = icmp sgt i32 %call.i.4, -1
  br i1 %cmp1.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  call void @usleep_range_state(i32 noundef %add, i32 noundef %mul2, i32 noundef 2) #6
  %13 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client, align 4
  %call.i.5 = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %dummy, i32 noundef 1, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.5)
  %cmp1.5 = icmp sgt i32 %call.i.5, -1
  br i1 %cmp1.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  call void @usleep_range_state(i32 noundef %add, i32 noundef %mul2, i32 noundef 2) #6
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client, align 4
  %call.i.6 = call i32 @i2c_transfer_buffer_flags(ptr noundef %16, ptr noundef nonnull %dummy, i32 noundef 1, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.6)
  %cmp1.6 = icmp sgt i32 %call.i.6, -1
  br i1 %cmp1.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  call void @usleep_range_state(i32 noundef %add, i32 noundef %mul2, i32 noundef 2) #6
  %17 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client, align 4
  %call.i.7 = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %dummy, i32 noundef 1, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.7)
  %cmp1.7 = icmp sgt i32 %call.i.7, -1
  br i1 %cmp1.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  call void @usleep_range_state(i32 noundef %add, i32 noundef %mul2, i32 noundef 2) #6
  %19 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client, align 4
  %call.i.8 = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %dummy, i32 noundef 1, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.8)
  %cmp1.8 = icmp sgt i32 %call.i.8, -1
  br i1 %cmp1.8, label %if.end.7.cleanup_crit_edge, label %if.end.8

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  call void @usleep_range_state(i32 noundef %add, i32 noundef %mul2, i32 noundef 2) #6
  %21 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client, align 4
  %call.i.9 = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %dummy, i32 noundef 1, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.9)
  %cmp1.9 = icmp sgt i32 %call.i.9, -1
  br i1 %cmp1.9, label %if.end.8.cleanup_crit_edge, label %if.end.9

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef %add, i32 noundef %mul2, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ], [ 0, %if.end.7.cleanup_crit_edge ], [ 0, %if.end.8.cleanup_crit_edge ], [ -110, %if.end.9 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_spi_sc18is602__291_344_sc18is602_driver_init6, !1, !"__initcall__kmod_spi_sc18is602__291_344_sc18is602_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-sc18is602.c", i32 344, i32 1}
!2 = !{ptr @__exitcall_sc18is602_driver_exit, !1, !"__exitcall_sc18is602_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description292, !4, !"__UNIQUE_ID_description292", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-sc18is602.c", i32 346, i32 1}
!5 = !{ptr @__UNIQUE_ID_author293, !6, !"__UNIQUE_ID_author293", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-sc18is602.c", i32 347, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-sc18is602.c", i32 348, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-sc18is602.c", i32 337, i32 11}
!12 = !{ptr @sc18is602_driver, !13, !"sc18is602_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-sc18is602.c", i32 335, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-sc18is602.c", i32 259, i32 43}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-sc18is602.c", i32 288, i32 30}
!18 = !{ptr @sc18is602_of_match, !19, !"sc18is602_of_match", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-sc18is602.c", i32 318, i32 34}
!20 = !{ptr @sc18is602_id, !21, !"sc18is602_id", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-sc18is602.c", i32 310, i32 35}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
