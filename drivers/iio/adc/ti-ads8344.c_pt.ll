; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ti-ads8344.c_pt.bc'
source_filename = "../drivers/iio/adc/ti-ads8344.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ads8344 = type { ptr, ptr, %struct.mutex, [28 x i8], i8, [3 x i8], [124 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_ti_ads8344__290_189_ads8344_driver_init6 = internal global ptr @ads8344_driver_init, section ".initcall6.init", align 4
@ads8344_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ads8344_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ads8344_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ads8344_driver_exit = internal global ptr @ads8344_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [64 x i8] c"ti_ads8344.author=Gregory CLEMENT <gregory.clement@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [38 x i8] c"ti_ads8344.description=ADS8344 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [43 x i8] c"ti_ads8344.file=drivers/iio/adc/ti-ads8344\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [23 x i8] c"ti_ads8344.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ads8344\00", [24 x i8] zeroinitializer }, align 32
@ads8344_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads8344\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ads8344_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adc->lock\00", [21 x i8] zeroinitializer }, align 32
@ads8344_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ads8344_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ads8344_channels = internal constant { [16 x %struct.iio_chan_spec], [352 x i8] } { [16 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 4, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 1, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 5, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 2, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 6, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 3, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 8, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 9, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 4, i32 5, i32 10, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 6, i32 7, i32 11, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 12, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 2, i32 13, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 5, i32 4, i32 14, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 7, i32 6, i32 15, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }], [352 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.3 = private unnamed_addr constant [15 x i8] c"ads8344_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 182, i32 26 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 184, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"ads8344_of_match\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 176, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 153, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"ads8344_info\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 132, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"ads8344_channels\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 57, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [32 x i8] c"../drivers/iio/adc/ti-ads8344.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 161, i32 43 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ads8344_driver_exit, ptr @__initcall__kmod_ti_ads8344__290_189_ads8344_driver_init6, ptr @ads8344_driver_exit, ptr @ads8344_driver, ptr @.str, ptr @ads8344_of_match, ptr @ads8344_probe.__key, ptr @.str.1, ptr @ads8344_info, ptr @ads8344_channels, ptr @.str.2], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8344_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8344_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8344_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8344_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8344_channels to i32), i32 1408, i32 1760, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ads8344_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ads8344_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ads8344_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ads8344_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads8344_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 128
  %lock = getelementptr inbounds %struct.ads8344, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ads8344_probe.__key) #4
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %if.end.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %retval.0.i, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ads8344_info, ptr %info, align 8
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ads8344_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %11 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %num_channels, align 4
  %call6 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.2) #4
  %reg = getelementptr inbounds %struct.ads8344, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call6, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %dev_name.exit
  %call14 = tail call i32 @regulator_enable(ptr noundef %call6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ads8344_reg_disable, ptr noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i49 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i49, label %if.end23, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %15) #4
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %call25 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %devm_add_action_or_reset.exit, %if.end12.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then9 ], [ %call25, %if.end23 ], [ -12, %entry.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ads8344_reg_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads8344_read_raw(ptr nocapture noundef readonly %iio, ptr nocapture noundef readonly %channel, ptr nocapture noundef %value, ptr nocapture noundef writeonly %shift, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i46.i = alloca %struct.spi_message, align 4
  %t.i47.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.ads8344, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %differential = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 19
  %5 = ptrtoint ptr %differential to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %differential, align 4
  %6 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  %tx_buf.i = getelementptr inbounds %struct.ads8344, ptr %1, i32 0, i32 4
  %channel.tr.i = trunc i32 %4 to i8
  %9 = shl i8 %channel.tr.i, 4
  %conv7.i = select i1 %tobool.not, i8 -122, i8 -126
  %10 = or i8 %conv7.i, %9
  %11 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tx_buf.i, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #4
  %12 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 92)
  %14 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tx_buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  %16 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #4
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %sw.bb.spi_write.exit.i_crit_edge

sw.bb.spi_write.exit.i_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %sw.bb.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool13.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %spi_write.exit.i.ads8344_adc_conversion.exit_crit_edge

spi_write.exit.i.ads8344_adc_conversion.exit_crit_edge: ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ads8344_adc_conversion.exit

if.end15.i:                                       ; preds = %spi_write.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 1932732) #4
  %rx_buf.i = getelementptr inbounds %struct.ads8344, ptr %1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i47.i) #4
  %27 = call ptr @memset(ptr %t.i47.i, i32 0, i32 96)
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i47.i, i32 0, i32 1
  %28 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %rx_buf.i, ptr %rx_buf.i.i, align 4
  %len1.i48.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i47.i, i32 0, i32 2
  %29 = ptrtoint ptr %len1.i48.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %len1.i48.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i46.i) #4
  %30 = getelementptr inbounds i8, ptr %msg.i.i46.i, i32 8
  %31 = call ptr @memset(ptr %30, i32 0, i32 40)
  %32 = ptrtoint ptr %msg.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %msg.i.i46.i, ptr %msg.i.i46.i, align 4
  %prev.i.i.i.i.i.i49.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i46.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i.i.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i46.i, ptr %prev.i.i.i.i.i.i49.i, align 4
  %resources.i.i.i.i.i50.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i46.i, i32 0, i32 10
  %34 = ptrtoint ptr %resources.i.i.i.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %resources.i.i.i.i.i50.i, ptr %resources.i.i.i.i.i50.i, align 4
  %prev.i2.i.i.i.i.i51.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i46.i, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %prev.i2.i.i.i.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %resources.i.i.i.i.i50.i, ptr %prev.i2.i.i.i.i.i51.i, align 4
  %transfer_list.i.i.i.i52.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i47.i, i32 0, i32 18
  %call.i.i.i.i.i.i53.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i52.i, ptr noundef nonnull %msg.i.i46.i, ptr noundef nonnull %msg.i.i46.i) #4
  br i1 %call.i.i.i.i.i.i53.i, label %if.end.i.i.i.i.i.i55.i, label %if.end15.i.spi_read.exit.i_crit_edge

if.end15.i.spi_read.exit.i_crit_edge:             ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_read.exit.i

if.end.i.i.i.i.i.i55.i:                           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %prev.i.i.i.i.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transfer_list.i.i.i.i52.i, ptr %prev.i.i.i.i.i.i49.i, align 4
  %37 = ptrtoint ptr %transfer_list.i.i.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i46.i, ptr %transfer_list.i.i.i.i52.i, align 4
  %prev3.i.i.i.i.i.i54.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i47.i, i32 0, i32 18, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i46.i, ptr %prev3.i.i.i.i.i.i54.i, align 4
  %39 = ptrtoint ptr %msg.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %transfer_list.i.i.i.i52.i, ptr %msg.i.i46.i, align 4
  br label %spi_read.exit.i

spi_read.exit.i:                                  ; preds = %if.end.i.i.i.i.i.i55.i, %if.end15.i.spi_read.exit.i_crit_edge
  %call.i.i56.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i.i46.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i46.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i47.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56.i)
  %tobool17.not.i = icmp eq i32 %call.i.i56.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %spi_read.exit.i.ads8344_adc_conversion.exit_crit_edge

spi_read.exit.i.ads8344_adc_conversion.exit_crit_edge: ; preds = %spi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ads8344_adc_conversion.exit

if.end19.i:                                       ; preds = %spi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rx_buf.i, align 1
  %conv21.i = zext i8 %41 to i32
  %shl22.i = shl nuw nsw i32 %conv21.i, 9
  %arrayidx24.i = getelementptr %struct.ads8344, ptr %1, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %43 to i32
  %shl26.i = shl nuw nsw i32 %conv25.i, 1
  %or27.i = or i32 %shl26.i, %shl22.i
  %arrayidx29.i = getelementptr %struct.ads8344, ptr %1, i32 0, i32 5, i32 2
  %44 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx29.i, align 1
  %46 = lshr i8 %45, 7
  %47 = zext i8 %46 to i32
  %or31.i = or i32 %or27.i, %47
  br label %ads8344_adc_conversion.exit

ads8344_adc_conversion.exit:                      ; preds = %if.end19.i, %spi_read.exit.i.ads8344_adc_conversion.exit_crit_edge, %spi_write.exit.i.ads8344_adc_conversion.exit_crit_edge
  %retval.0.i = phi i32 [ %or31.i, %if.end19.i ], [ %call.i.i.i, %spi_write.exit.i.ads8344_adc_conversion.exit_crit_edge ], [ %call.i.i56.i, %spi_read.exit.i.ads8344_adc_conversion.exit_crit_edge ]
  %48 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i, ptr %value, align 4
  call void @mutex_unlock(ptr noundef %lock) #4
  %49 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp = icmp slt i32 %50, 0
  %. = select i1 %cmp, i32 %50, i32 1
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.ads8344, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg, align 4
  %call4 = tail call i32 @regulator_get_voltage(ptr noundef %52) #4
  %53 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call4, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %sw.bb3.cleanup_crit_edge, label %if.end7

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  %div18 = udiv i32 %call4, 1000
  %54 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div18, ptr %value, align 4
  %55 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 16, ptr %shift, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %sw.bb3.cleanup_crit_edge, %ads8344_adc_conversion.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.end7 ], [ %., %ads8344_adc_conversion.exit ], [ %call4, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_ti_ads8344__290_189_ads8344_driver_init6, !1, !"__initcall__kmod_ti_ads8344__290_189_ads8344_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ti-ads8344.c", i32 189, i32 1}
!2 = !{ptr @__exitcall_ads8344_driver_exit, !1, !"__exitcall_ads8344_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ti-ads8344.c", i32 191, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ti-ads8344.c", i32 192, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ti-ads8344.c", i32 193, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ti-ads8344.c", i32 184, i32 11}
!12 = !{ptr @ads8344_driver, !13, !"ads8344_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ti-ads8344.c", i32 182, i32 26}
!14 = !{ptr @ads8344_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ti-ads8344.c", i32 153, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/adc/ti-ads8344.c", i32 161, i32 43}
!19 = !{ptr @ads8344_info, !20, !"ads8344_info", i1 false, i1 false}
!20 = !{!"../drivers/iio/adc/ti-ads8344.c", i32 132, i32 30}
!21 = !{ptr @ads8344_channels, !22, !"ads8344_channels", i1 false, i1 false}
!22 = !{!"../drivers/iio/adc/ti-ads8344.c", i32 57, i32 35}
!23 = !{ptr @ads8344_of_match, !24, !"ads8344_of_match", i1 false, i1 false}
!24 = !{!"../drivers/iio/adc/ti-ads8344.c", i32 176, i32 34}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
