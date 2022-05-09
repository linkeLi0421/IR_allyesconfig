; ModuleID = '/llk/IR_all_yes/drivers/iio/potentiometer/max5481.c_pt.bc'
source_filename = "../drivers/iio/potentiometer/max5481.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.max5481_cfg = type { i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.max5481_data = type { ptr, ptr, [120 x i8], [3 x i8], [125 x i8] }

@__initcall__kmod_max5481__230_190_max5481_driver_init6 = internal global ptr @max5481_driver_init, section ".initcall6.init", align 4
@max5481_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @max5481_id_table, ptr @max5481_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max5481_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_max5481_driver_exit = internal global ptr @max5481_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [67 x i8] c"max5481.author=Maury Anderson <maury.anderson@rockwellcollins.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [39 x i8] c"max5481.description=max5481 SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [47 x i8] c"max5481.file=drivers/iio/potentiometer/max5481\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [23 x i8] c"max5481.license=GPL v2\00", section ".modinfo", align 1
@max5481_id_table = internal constant { [5 x %struct.spi_device_id], [44 x i8] } { [5 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"max5481\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"max5482\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"max5483\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"max5484\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max5481\00", [24 x i8] zeroinitializer }, align 32
@max5481_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max5481\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @max5481_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max5482\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max5481_cfg, i64 4) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max5483\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max5481_cfg, i64 8) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max5484\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max5481_cfg, i64 12) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@max5481_cfg = internal constant { [4 x %struct.max5481_cfg], [16 x i8] } { [4 x %struct.max5481_cfg] [%struct.max5481_cfg { i32 10 }, %struct.max5481_cfg { i32 50 }, %struct.max5481_cfg { i32 10 }, %struct.max5481_cfg { i32 50 }], [16 x i8] zeroinitializer }, align 32
@max5481_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @max5481_read_raw, ptr null, ptr null, ptr @max5481_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@max5481_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 25, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"max5481_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 181, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"max5481_id_table\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 172, i32 35 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 183, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"max5481_match\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 119, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"max5481_cfg\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 37, i32 33 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"max5481_info\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 114, i32 30 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"max5481_channels\00", align 1
@___asan_gen_.20 = private constant [39 x i8] c"../drivers/iio/potentiometer/max5481.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 59, i32 35 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_max5481_driver_exit, ptr @__initcall__kmod_max5481__230_190_max5481_driver_init6, ptr @max5481_driver_exit, ptr @max5481_driver, ptr @max5481_id_table, ptr @.str, ptr @max5481_match, ptr @max5481_cfg, ptr @max5481_info, ptr @max5481_channels], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5481_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5481_id_table to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5481_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5481_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5481_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5481_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max5481_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @max5481_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max5481_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @max5481_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max5481_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i23.i = alloca %struct.spi_message, align 4
  %t.i24.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 128
  %call5 = tail call ptr @device_get_match_data(ptr noundef %spi) #5
  %cfg = getelementptr inbounds %struct.max5481_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %cfg, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [4 x %struct.max5481_cfg], ptr @max5481_cfg, i32 0, i32 %5
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx, ptr %cfg, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %name11 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %7 = ptrtoint ptr %name11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %name11, align 8
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call1, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @max5481_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @max5481_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %11 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %num_channels, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  %msg.i = getelementptr inbounds %struct.max5481_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 48, ptr %msg.i, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i24.i) #5
  %15 = getelementptr inbounds i8, ptr %t.i24.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 92)
  %17 = ptrtoint ptr %t.i24.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %t.i24.i, align 4
  %len1.i25.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i24.i, i32 0, i32 2
  %18 = ptrtoint ptr %len1.i25.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %len1.i25.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i23.i) #5
  %19 = getelementptr inbounds i8, ptr %msg.i.i23.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i.i23.i, ptr %msg.i.i23.i, align 4
  %prev.i.i.i.i.i.i26.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i23.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i23.i, ptr %prev.i.i.i.i.i.i26.i, align 4
  %resources.i.i.i.i.i27.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i23.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i.i27.i, ptr %resources.i.i.i.i.i27.i, align 4
  %prev.i2.i.i.i.i.i28.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i23.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i.i27.i, ptr %prev.i2.i.i.i.i.i28.i, align 4
  %transfer_list.i.i.i.i29.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i24.i, i32 0, i32 18
  %call.i.i.i.i.i.i30.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i29.i, ptr noundef nonnull %msg.i.i23.i, ptr noundef nonnull %msg.i.i23.i) #5
  br i1 %call.i.i.i.i.i.i30.i, label %if.end.i.i.i.i.i.i32.i, label %if.end10.max5481_write_cmd.exit_crit_edge

if.end10.max5481_write_cmd.exit_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %max5481_write_cmd.exit

if.end.i.i.i.i.i.i32.i:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i29.i, ptr %prev.i.i.i.i.i.i26.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i23.i, ptr %transfer_list.i.i.i.i29.i, align 4
  %prev3.i.i.i.i.i.i31.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i24.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i23.i, ptr %prev3.i.i.i.i.i.i31.i, align 4
  %28 = ptrtoint ptr %msg.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i29.i, ptr %msg.i.i23.i, align 4
  br label %max5481_write_cmd.exit

max5481_write_cmd.exit:                           ; preds = %if.end.i.i.i.i.i.i32.i, %if.end10.max5481_write_cmd.exit_crit_edge
  %call.i.i33.i = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %msg.i.i23.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i23.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i24.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33.i)
  %cmp = icmp slt i32 %call.i.i33.i, 0
  br i1 %cmp, label %max5481_write_cmd.exit.cleanup_crit_edge, label %if.end14

max5481_write_cmd.exit.cleanup_crit_edge:         ; preds = %max5481_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %max5481_write_cmd.exit
  %call16 = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @max5481_wiper_save, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end14.cleanup_crit_edge, %max5481_write_cmd.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end19 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i.i33.i, %max5481_write_cmd.exit.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max5481_wiper_save(ptr noundef %data) #2 align 64 {
entry:
  %msg.i.i23.i = alloca %struct.spi_message, align 4
  %t.i24.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 128
  %msg.i = getelementptr inbounds %struct.max5481_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 32, ptr %msg.i, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i24.i) #5
  %3 = getelementptr inbounds i8, ptr %t.i24.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i24.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %msg.i, ptr %t.i24.i, align 4
  %len1.i25.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i24.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i25.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %len1.i25.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i23.i) #5
  %7 = getelementptr inbounds i8, ptr %msg.i.i23.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i23.i, ptr %msg.i.i23.i, align 4
  %prev.i.i.i.i.i.i26.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i23.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i23.i, ptr %prev.i.i.i.i.i.i26.i, align 4
  %resources.i.i.i.i.i27.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i23.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i27.i, ptr %resources.i.i.i.i.i27.i, align 4
  %prev.i2.i.i.i.i.i28.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i23.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i27.i, ptr %prev.i2.i.i.i.i.i28.i, align 4
  %transfer_list.i.i.i.i29.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i24.i, i32 0, i32 18
  %call.i.i.i.i.i.i30.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i29.i, ptr noundef nonnull %msg.i.i23.i, ptr noundef nonnull %msg.i.i23.i) #5
  br i1 %call.i.i.i.i.i.i30.i, label %if.end.i.i.i.i.i.i32.i, label %entry.max5481_write_cmd.exit_crit_edge

entry.max5481_write_cmd.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max5481_write_cmd.exit

if.end.i.i.i.i.i.i32.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i29.i, ptr %prev.i.i.i.i.i.i26.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i23.i, ptr %transfer_list.i.i.i.i29.i, align 4
  %prev3.i.i.i.i.i.i31.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i24.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i23.i, ptr %prev3.i.i.i.i.i.i31.i, align 4
  %16 = ptrtoint ptr %msg.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i29.i, ptr %msg.i.i23.i, align 4
  br label %max5481_write_cmd.exit

max5481_write_cmd.exit:                           ; preds = %if.end.i.i.i.i.i.i32.i, %entry.max5481_write_cmd.exit_crit_edge
  %call.i.i33.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i23.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i23.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i24.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max5481_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %cmp.not = icmp eq i32 %mask, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cfg = getelementptr inbounds %struct.max5481_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %mul = mul i32 %5, 1000
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %val, align 4
  %7 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1023, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max5481_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cmp.not = icmp ne i32 %mask, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %val)
  %0 = icmp ugt i32 %val, 1023
  %or.cond = or i1 %0, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 128
  %msg.i = getelementptr inbounds %struct.max5481_data, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %msg.i, align 128
  %6 = lshr i32 %val, 2
  %conv3.i = trunc i32 %6 to i8
  %arrayidx5.i = getelementptr %struct.max5481_data, ptr %2, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3.i, ptr %arrayidx5.i, align 1
  %val.tr.i = trunc i32 %val to i8
  %conv7.i = shl i8 %val.tr.i, 6
  %arrayidx9.i = getelementptr %struct.max5481_data, ptr %2, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv7.i, ptr %arrayidx9.i, align 2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %9 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end4.max5481_write_cmd.exit_crit_edge

if.end4.max5481_write_cmd.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %max5481_write_cmd.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %max5481_write_cmd.exit

max5481_write_cmd.exit:                           ; preds = %if.end.i.i.i.i.i.i.i, %if.end4.max5481_write_cmd.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %4, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %max5481_write_cmd.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %max5481_write_cmd.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_max5481__230_190_max5481_driver_init6, !1, !"__initcall__kmod_max5481__230_190_max5481_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/potentiometer/max5481.c", i32 190, i32 1}
!2 = !{ptr @__exitcall_max5481_driver_exit, !1, !"__exitcall_max5481_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/iio/potentiometer/max5481.c", i32 192, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/iio/potentiometer/max5481.c", i32 193, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/iio/potentiometer/max5481.c", i32 194, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/potentiometer/max5481.c", i32 183, i32 12}
!12 = !{ptr @max5481_driver, !13, !"max5481_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/potentiometer/max5481.c", i32 181, i32 26}
!14 = !{ptr @max5481_id_table, !15, !"max5481_id_table", i1 false, i1 false}
!15 = !{!"../drivers/iio/potentiometer/max5481.c", i32 172, i32 35}
!16 = !{ptr @max5481_cfg, !17, !"max5481_cfg", i1 false, i1 false}
!17 = !{!"../drivers/iio/potentiometer/max5481.c", i32 37, i32 33}
!18 = !{ptr @max5481_info, !19, !"max5481_info", i1 false, i1 false}
!19 = !{!"../drivers/iio/potentiometer/max5481.c", i32 114, i32 30}
!20 = !{ptr @max5481_channels, !21, !"max5481_channels", i1 false, i1 false}
!21 = !{!"../drivers/iio/potentiometer/max5481.c", i32 59, i32 35}
!22 = !{ptr @max5481_match, !23, !"max5481_match", i1 false, i1 false}
!23 = !{!"../drivers/iio/potentiometer/max5481.c", i32 119, i32 34}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
