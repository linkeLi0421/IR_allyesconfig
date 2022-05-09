; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-mux.c_pt.bc'
source_filename = "../drivers/spi/spi-mux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_mux_priv = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_spi_mux__231_198_spi_mux_driver_init6 = internal global ptr @spi_mux_driver_init, section ".initcall6.init", align 4
@spi_mux_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @spi_mux_id, ptr @spi_mux_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spi_mux_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_spi_mux_driver_exit = internal global ptr @spi_mux_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description232 = internal constant [36 x i8] c"spi_mux.description=SPI multiplexer\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [33 x i8] c"spi_mux.file=drivers/spi/spi-mux\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [20 x i8] c"spi_mux.license=GPL\00", section ".modinfo", align 1
@spi_mux_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"spi-mux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi-mux\00", [24 x i8] zeroinitializer }, align 32
@spi_mux_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"spi-mux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctlr->io_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctlr->add_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get control-mux\0A\00", [37 x i8] zeroinitializer }, align 32
@spi_mux_select.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 15, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_mux\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_mux_select\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/spi/spi-mux.c\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"setting up the mux for cs %d\0A\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"spi_mux_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 189, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"spi_mux_id\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 177, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 192, i32 13 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"spi_mux_of_match\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 183, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 144, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 145, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 150, i32 9 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [25 x i8] c"../drivers/spi/spi-mux.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 61, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_spi_mux_driver_exit, ptr @__initcall__kmod_spi_mux__231_198_spi_mux_driver_init6, ptr @spi_mux_driver_exit, ptr @spi_mux_driver, ptr @spi_mux_id, ptr @.str, ptr @spi_mux_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_mux_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_mux_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_mux_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_mux_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @spi_mux_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spi_mux_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @spi_mux_driver, i32 0, i32 4)) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_mux_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %spi, i32 noundef 24, i1 noundef zeroext false) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i77 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i77 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i77, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %2, align 4
  %dep_map = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 15, i32 5
  %4 = ptrtoint ptr %dep_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dep_map, align 8
  %wait_type_inner = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 15, i32 5, i32 4
  %6 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.1, ptr noundef %5, i32 noundef 1, i8 noundef zeroext %7, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %dep_map9 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 16, i32 5
  %8 = ptrtoint ptr %dep_map9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dep_map9, align 4
  %wait_type_inner15 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 16, i32 5, i32 4
  %10 = ptrtoint ptr %wait_type_inner15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wait_type_inner15, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map9, ptr noundef nonnull @.str.2, ptr noundef %9, i32 noundef 1, i8 noundef zeroext %11, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %call20 = tail call ptr @devm_mux_control_get(ptr noundef %spi, ptr noundef null) #3
  %mux = getelementptr inbounds %struct.spi_mux_priv, ptr %2, i32 0, i32 5
  %12 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call20, ptr %mux, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %call20 to i32
  %call27 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %13, ptr noundef nonnull @.str.3) #3
  br label %spi_controller_put.exit

if.end28:                                         ; preds = %if.end
  %current_cs = getelementptr inbounds %struct.spi_mux_priv, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %current_cs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %current_cs, align 4
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %15 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %controller, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %mode_bits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode_bits, align 8
  %mode_bits29 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %mode_bits29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %mode_bits29, align 8
  %20 = load ptr, ptr %controller, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags, align 4
  %flags31 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %23 = ptrtoint ptr %flags31 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %flags31, align 4
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 45
  %24 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @spi_mux_transfer_one_message, ptr %transfer_one_message, align 4
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %25 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @spi_mux_setup, ptr %setup, align 4
  %26 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mux, align 4
  %call33 = tail call i32 @mux_control_states(ptr noundef %27) #3
  %conv = trunc i32 %call33 to i16
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %num_chipselect, align 2
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %bus_num, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %of_node36 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %32 = ptrtoint ptr %of_node36 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %of_node36, align 8
  %call38 = tail call i32 @devm_spi_register_controller(ptr noundef %spi, ptr noundef nonnull %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end28.cleanup_crit_edge, label %if.end28.spi_controller_put.exit_crit_edge

if.end28.spi_controller_put.exit_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_controller_put.exit

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

spi_controller_put.exit:                          ; preds = %if.end28.spi_controller_put.exit_crit_edge, %if.then23
  %ret.0 = phi i32 [ %call27, %if.then23 ], [ %call38, %if.end28.spi_controller_put.exit_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i) #3
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %spi_controller_put.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mux_control_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_mux_transfer_one_message(ptr nocapture noundef readonly %ctlr, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %controller.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %mux.i = getelementptr inbounds %struct.spi_mux_priv, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mux.i, align 4
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chip_select.i, align 4
  %conv.i = zext i8 %11 to i32
  %call.i.i = tail call i32 @mux_control_select_delay(ptr noundef %9, i32 noundef %conv.i, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %current_cs.i = getelementptr inbounds %struct.spi_mux_priv, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %current_cs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %current_cs.i, align 4
  %14 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %chip_select.i, align 4
  %conv3.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv3.i)
  %cmp.i = icmp eq i32 %13, %conv3.i
  br i1 %cmp.i, label %if.end.i.if.end_crit_edge, label %do.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_mux_select.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_mux_transfer_one_message, %do.end.i)) #3
          to label %if.then12.i [label %do.end.i], !srcloc !37

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 4
  %18 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chip_select.i, align 4
  %conv15.i = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_mux_select.__UNIQUE_ID_ddebug230, ptr noundef %17, ptr noundef nonnull @.str.7, i32 noundef %conv15.i) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then12.i, %do.body.i
  %max_speed_hz.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_speed_hz.i, align 8
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %7, align 4
  %max_speed_hz18.i = getelementptr inbounds %struct.spi_device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %max_speed_hz18.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %max_speed_hz18.i, align 8
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %25 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode.i, align 8
  %27 = load ptr, ptr %7, align 4
  %mode20.i = getelementptr inbounds %struct.spi_device, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %mode20.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %mode20.i, align 8
  %bits_per_word.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bits_per_word.i, align 1
  %31 = load ptr, ptr %7, align 4
  %bits_per_word22.i = getelementptr inbounds %struct.spi_device, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %bits_per_word22.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %30, ptr %bits_per_word22.i, align 1
  %33 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %chip_select.i, align 4
  %conv24.i = zext i8 %34 to i32
  %35 = ptrtoint ptr %current_cs.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv24.i, ptr %current_cs.i, align 4
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.end.i.if.end_crit_edge
  %complete = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 3
  %36 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %complete, align 4
  %child_msg_complete = getelementptr inbounds %struct.spi_mux_priv, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %child_msg_complete to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %child_msg_complete, align 4
  %context = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 4
  %39 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %context, align 4
  %child_msg_context = getelementptr inbounds %struct.spi_mux_priv, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %child_msg_context to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %child_msg_context, align 4
  %42 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spi1, align 4
  %child_msg_dev = getelementptr inbounds %struct.spi_mux_priv, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %child_msg_dev to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %child_msg_dev, align 4
  store ptr @spi_mux_complete_cb, ptr %complete, align 4
  store ptr %1, ptr %context, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  store ptr %46, ptr %spi1, align 4
  %47 = load ptr, ptr %1, align 4
  %call9 = tail call i32 @spi_async(ptr noundef %47, ptr noundef %m) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_mux_setup(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @spi_setup(ptr noundef %5) #3
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_states(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_mux_complete_cb(ptr nocapture noundef readonly %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_msg, align 4
  %child_msg_complete = getelementptr inbounds %struct.spi_mux_priv, ptr %context, i32 0, i32 2
  %6 = ptrtoint ptr %child_msg_complete to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %child_msg_complete, align 4
  %complete = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %complete, align 4
  %child_msg_context = getelementptr inbounds %struct.spi_mux_priv, ptr %context, i32 0, i32 3
  %9 = ptrtoint ptr %child_msg_context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %child_msg_context, align 4
  %context1 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %context1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %context1, align 4
  %child_msg_dev = getelementptr inbounds %struct.spi_mux_priv, ptr %context, i32 0, i32 4
  %12 = ptrtoint ptr %child_msg_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %child_msg_dev, align 4
  %spi2 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %spi2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %spi2, align 4
  tail call void @spi_finalize_current_message(ptr noundef %3) #3
  %mux = getelementptr inbounds %struct.spi_mux_priv, ptr %context, i32 0, i32 5
  %15 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mux, align 4
  %call3 = tail call i32 @mux_control_deselect(ptr noundef %16) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_async(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_select_delay(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_deselect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_spi_mux__231_198_spi_mux_driver_init6, !1, !"__initcall__kmod_spi_mux__231_198_spi_mux_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-mux.c", i32 198, i32 1}
!2 = !{ptr @__exitcall_spi_mux_driver_exit, !1, !"__exitcall_spi_mux_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description232, !4, !"__UNIQUE_ID_description232", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-mux.c", i32 200, i32 1}
!5 = !{ptr @__UNIQUE_ID_file233, !6, !"__UNIQUE_ID_file233", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-mux.c", i32 201, i32 1}
!7 = !{ptr @__UNIQUE_ID_license234, !6, !"__UNIQUE_ID_license234", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-mux.c", i32 192, i32 13}
!10 = !{ptr @spi_mux_driver, !11, !"spi_mux_driver", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-mux.c", i32 189, i32 26}
!12 = !{ptr @spi_mux_id, !13, !"spi_mux_id", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-mux.c", i32 177, i32 35}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-mux.c", i32 144, i32 2}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-mux.c", i32 145, i32 2}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-mux.c", i32 150, i32 9}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-mux.c", i32 61, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @spi_mux_select.__UNIQUE_ID_ddebug230, !21, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!26 = !{ptr @spi_mux_of_match, !27, !"spi_mux_of_match", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-mux.c", i32 183, i32 34}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2148694903, i64 2148694908, i64 2148694921, i64 2148694965, i64 2148694999, i64 2148695020}
