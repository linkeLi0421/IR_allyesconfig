; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/dps310.c_pt.bc'
source_filename = "../drivers/iio/pressure/dps310.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dps310_data = type { ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_dps310__294_822_dps310_driver_init6 = internal global ptr @dps310_driver_init, section ".initcall6.init", align 4
@dps310_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @dps310_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @dps310_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_dps310_driver_exit = internal global ptr @dps310_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [44 x i8] c"dps310.author=Joel Stanley <joel@jms.id.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [67 x i8] c"dps310.description=Infineon DPS310 pressure and temperature sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [40 x i8] c"dps310.file=drivers/iio/pressure/dps310\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [22 x i8] c"dps310.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dps310\00", [25 x i8] zeroinitializer }, align 32
@dps310_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"dps310\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@dps310_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@dps310_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 33558530, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 33558530, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@dps310_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @dps310_read_raw, ptr null, ptr null, ptr @dps310_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@dps310_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dps310_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @dps310_is_writeable_reg, ptr null, ptr @dps310_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 98, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dps310:741:(&dps310_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iio/pressure/dps310.c\00", [34 x i8] zeroinitializer }, align 32
@scale_factors = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 524288, i32 1572864, i32 3670016, i32 7864320, i32 253952, i32 516096, i32 1040384, i32 2088960], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 12, i64 25]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 12, i64 25]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 25]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.9 = internal global [10 x i64] [i64 8, i64 32, i64 6, i64 7, i64 8, i64 9, i64 12, i64 14, i64 15, i64 98]
@__sancov_gen_cov_switch_values.10 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 50]
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"dps310_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 815, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 817, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"dps310_id\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 809, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 733, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"dps310_channels\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 94, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"dps310_info\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 675, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"dps310_regmap_config\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 666, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 741, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 787, i32 7 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"scale_factors\00", align 1
@___asan_gen_.45 = private constant [33 x i8] c"../drivers/iio/pressure/dps310.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 72, i32 18 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_dps310_driver_exit, ptr @__initcall__kmod_dps310__294_822_dps310_driver_init6, ptr @dps310_driver_exit, ptr @dps310_driver, ptr @.str, ptr @dps310_id, ptr @dps310_probe.__key, ptr @.str.1, ptr @dps310_channels, ptr @dps310_info, ptr @dps310_probe._key, ptr @dps310_regmap_config, ptr @.str.2, ptr @.str.3, ptr @scale_factors], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dps310_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dps310_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dps310_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dps310_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dps310_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dps310_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dps310_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scale_factors to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dps310_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @dps310_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dps310_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @dps310_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dps310_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  %ready = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ready) #6
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ready, align 4, !annotation !41
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 144) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %2, align 4
  %lock = getelementptr inbounds %struct.dps310_data, ptr %2, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @dps310_probe.__key) #6
  %name3 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %name3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %id, ptr %name3, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dps310_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dps310_info, ptr %info, align 8
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call, align 8
  %call4 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @dps310_regmap_config, ptr noundef nonnull @dps310_probe._key, ptr noundef nonnull @.str.2) #6
  %regmap = getelementptr inbounds %struct.dps310_data, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @dps310_reset, ptr noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  br i1 %tobool.not.i, label %if.end15, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 12, i32 noundef 9) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call17 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 6, i32 noundef 0) #6
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call19 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 7, i32 noundef 128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i144 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 9, i32 noundef 24, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %cmp24 = icmp slt i32 %call.i144, 0
  br i1 %cmp24, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i145 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 8, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %cmp29 = icmp slt i32 %call.i145, 0
  br i1 %cmp29, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i146 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 8, i32 noundef 7, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp34 = icmp slt i32 %call.i146, 0
  br i1 %cmp34, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %call37 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call37, 40000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 788) #6
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call52159 = call i32 @regmap_read(ptr noundef %22, i32 noundef 8, ptr noundef nonnull %ready) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52159)
  %tobool53.not160 = icmp eq i32 %call52159, 0
  br i1 %tobool53.not160, label %if.end36.lor.lhs.false_crit_edge, label %if.end36.lor.end_crit_edge

if.end36.lor.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

if.end36.lor.lhs.false_crit_edge:                 ; preds = %if.end36
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then66.lor.lhs.false_crit_edge, %if.end36.lor.lhs.false_crit_edge
  %23 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ready, align 4
  %and = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool54.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call58 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call58, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call58, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then66

if.then66:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #6
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call52 = call i32 @regmap_read(ptr noundef %26, i32 noundef 8, ptr noundef nonnull %ready) #6
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then66.lor.lhs.false_crit_edge, label %if.then66.lor.end_crit_edge

if.then66.lor.end_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

if.then66.lor.lhs.false_crit_edge:                ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call63 = call i32 @regmap_read(ptr noundef %28, i32 noundef 8, ptr noundef nonnull %ready) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool69.not = icmp eq i32 %call63, 0
  br i1 %tobool69.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %29 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ready, align 4
  %and70 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.if.end77_crit_edge

lor.rhs.if.end77_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %if.then66.lor.end_crit_edge, %if.end36.lor.end_crit_edge
  %tobool69.not152 = phi i32 [ %call63, %for.end.lor.end_crit_edge ], [ %call52159, %if.end36.lor.end_crit_edge ], [ %call52, %if.then66.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool69.not152)
  %cmp75 = icmp slt i32 %tobool69.not152, 0
  br i1 %cmp75, label %lor.end.cleanup_crit_edge, label %lor.end.if.end77_crit_edge

lor.end.if.end77_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end77:                                         ; preds = %lor.end.if.end77_crit_edge, %lor.rhs.if.end77_crit_edge
  %call78 = call fastcc i32 @dps310_get_coefs(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end77.cleanup_crit_edge, label %if.end81

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end81:                                         ; preds = %if.end77
  %call82 = call fastcc i32 @dps310_temp_workaround(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.end81.cleanup_crit_edge, label %if.end85

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end85:                                         ; preds = %if.end81
  %call87 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end90:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.end85.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %lor.end.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then7 ], [ 0, %if.end90 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call19, %if.end15.cleanup_crit_edge ], [ %call.i144, %if.end21.cleanup_crit_edge ], [ %call.i145, %if.end26.cleanup_crit_edge ], [ %call.i146, %if.end31.cleanup_crit_edge ], [ %tobool69.not152, %lor.end.cleanup_crit_edge ], [ %call78, %if.end77.cleanup_crit_edge ], [ %call82, %if.end81.cleanup_crit_edge ], [ %call87, %if.end85.cleanup_crit_edge ], [ -110, %lor.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ready) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dps310_reset(ptr nocapture noundef readonly %action_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.dps310_data, ptr %action_data, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 12, i32 noundef 9) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dps310_get_coefs(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  %coef = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %coef) #6
  %regmap = getelementptr inbounds %struct.dps310_data, ptr %data, i32 0, i32 1
  %0 = call ptr @memset(ptr %coef, i32 255, i32 18)
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %coef, i32 noundef 18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 17
  %4 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 16
  %5 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 15
  %6 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 14
  %7 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 13
  %8 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 12
  %9 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 11
  %10 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 10
  %11 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 9
  %12 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 8
  %13 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 7
  %14 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 6
  %15 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 5
  %16 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 4
  %17 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 3
  %18 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 2
  %19 = getelementptr inbounds [18 x i8], ptr %coef, i32 0, i32 1
  %20 = ptrtoint ptr %coef to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %coef, align 1
  %conv = zext i8 %21 to i32
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %19, align 1
  %24 = lshr i8 %23, 4
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 %conv, 24
  %27 = shl nuw nsw i32 %25, 20
  %shl.i = or i32 %27, %26
  %shr.i = ashr exact i32 %shl.i, 20
  %c04 = getelementptr inbounds %struct.dps310_data, ptr %data, i32 0, i32 3
  %28 = ptrtoint ptr %c04 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr.i, ptr %c04, align 4
  %and = zext i8 %23 to i32
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %18, align 1
  %conv9 = zext i8 %30 to i32
  %31 = shl i32 %and, 28
  %32 = shl nuw nsw i32 %conv9, 20
  %shl.i99 = or i32 %32, %31
  %shr.i100 = ashr exact i32 %shl.i99, 20
  %c112 = getelementptr inbounds %struct.dps310_data, ptr %data, i32 0, i32 4
  %33 = ptrtoint ptr %c112 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr.i100, ptr %c112, align 4
  %34 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %17, align 1
  %conv14 = zext i8 %35 to i32
  %shl15 = shl nuw nsw i32 %conv14, 12
  %36 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %16, align 1
  %conv17 = zext i8 %37 to i32
  %shl18 = shl nuw nsw i32 %conv17, 4
  %or19 = or i32 %shl15, %shl18
  %38 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %15, align 1
  %40 = lshr i8 %39, 4
  %41 = zext i8 %40 to i32
  %or23 = or i32 %or19, %41
  %shl.i101 = shl nuw i32 %or23, 12
  %shr.i102 = ashr exact i32 %shl.i101, 12
  %c0025 = getelementptr inbounds %struct.dps310_data, ptr %data, i32 0, i32 5
  %42 = ptrtoint ptr %c0025 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr.i102, ptr %c0025, align 4
  %and28 = zext i8 %39 to i32
  %shl29 = shl nuw nsw i32 %and28, 16
  %43 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %14, align 1
  %conv31 = zext i8 %44 to i32
  %shl32 = shl nuw nsw i32 %conv31, 8
  %or33 = or i32 %shl32, %shl29
  %45 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %13, align 1
  %conv35 = zext i8 %46 to i32
  %or36 = or i32 %or33, %conv35
  %shl.i103 = shl i32 %or36, 12
  %shr.i104 = ashr exact i32 %shl.i103, 12
  %c1038 = getelementptr inbounds %struct.dps310_data, ptr %data, i32 0, i32 6
  %47 = ptrtoint ptr %c1038 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shr.i104, ptr %c1038, align 4
  %48 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %12, align 1
  %conv40 = zext i8 %49 to i32
  %50 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %11, align 1
  %conv43 = zext i8 %51 to i32
  %52 = shl nuw i32 %conv40, 24
  %53 = shl nuw nsw i32 %conv43, 16
  %shl.i105 = or i32 %53, %52
  %shr.i106 = ashr exact i32 %shl.i105, 16
  %c0146 = getelementptr inbounds %struct.dps310_data, ptr %data, i32 0, i32 9
  %54 = ptrtoint ptr %c0146 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shr.i106, ptr %c0146, align 4
  %55 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %10, align 1
  %conv48 = zext i8 %56 to i32
  %57 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %9, align 1
  %conv51 = zext i8 %58 to i32
  %59 = shl nuw i32 %conv48, 24
  %60 = shl nuw nsw i32 %conv51, 16
  %shl.i107 = or i32 %60, %59
  %shr.i108 = ashr exact i32 %shl.i107, 16
  %c1154 = getelementptr inbounds %struct.dps310_data, ptr %data, i32 0, i32 10
  %61 = ptrtoint ptr %c1154 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %shr.i108, ptr %c1154, align 4
  %62 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %8, align 1
  %conv56 = zext i8 %63 to i32
  %64 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %7, align 1
  %conv59 = zext i8 %65 to i32
  %66 = shl nuw i32 %conv56, 24
  %67 = shl nuw nsw i32 %conv59, 16
  %shl.i109 = or i32 %67, %66
  %shr.i110 = ashr exact i32 %shl.i109, 16
  %c2062 = getelementptr inbounds %struct.dps310_data, ptr %data, i32 0, i32 7
  %68 = ptrtoint ptr %c2062 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shr.i110, ptr %c2062, align 4
  %69 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %6, align 1
  %conv64 = zext i8 %70 to i32
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %5, align 1
  %conv67 = zext i8 %72 to i32
  %73 = shl nuw i32 %conv64, 24
  %74 = shl nuw nsw i32 %conv67, 16
  %shl.i111 = or i32 %74, %73
  %shr.i112 = ashr exact i32 %shl.i111, 16
  %c2170 = getelementptr inbounds %struct.dps310_data, ptr %data, i32 0, i32 11
  %75 = ptrtoint ptr %c2170 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shr.i112, ptr %c2170, align 4
  %76 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %4, align 1
  %conv72 = zext i8 %77 to i32
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %3, align 1
  %conv75 = zext i8 %79 to i32
  %80 = shl nuw i32 %conv72, 24
  %81 = shl nuw nsw i32 %conv75, 16
  %shl.i113 = or i32 %81, %80
  %shr.i114 = ashr exact i32 %shl.i113, 16
  %c3078 = getelementptr inbounds %struct.dps310_data, ptr %data, i32 0, i32 8
  %82 = ptrtoint ptr %c3078 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %shr.i114, ptr %c3078, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %coef) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dps310_temp_workaround(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !41
  %regmap = getelementptr inbounds %struct.dps310_data, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 50, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_write(ptr noundef %6, i32 noundef 14, i32 noundef 165) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_write(ptr noundef %8, i32 noundef 15, i32 noundef 150) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call14 = call i32 @regmap_write(ptr noundef %10, i32 noundef 98, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call19 = call i32 @regmap_write(ptr noundef %12, i32 noundef 14, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call24 = call i32 @regmap_write(ptr noundef %14, i32 noundef 15, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end22 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call4, %if.end2.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dps310_read_raw(ptr nocapture noundef readonly %iio, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %val.i10.i = alloca i32, align 4
  %remainder.i18.i.i = alloca i32, align 4
  %remainder.i.i.i8 = alloca i32, align 4
  %val.i.i.i.i9 = alloca i32, align 4
  %val.i76.i.i = alloca [3 x i8], align 1
  %val.i.i.i10 = alloca i32, align 4
  %ready.i.i11 = alloca i32, align 4
  %val.i.i12 = alloca i32, align 4
  %val.i49.i = alloca i32, align 4
  %remainder.i.i.i = alloca i32, align 4
  %val.i.i36.i = alloca [3 x i8], align 1
  %val.i.i164.i.i = alloca i32, align 4
  %val.i.i.i.i = alloca i32, align 4
  %t_ready.i.i = alloca i32, align 4
  %denoms.i.i = alloca [7 x i64], align 8
  %nums.i.i = alloca [7 x i64], align 8
  %rems.i.i = alloca [7 x i64], align 8
  %irem.i.i = alloca i64, align 8
  %val.i.i.i = alloca i32, align 4
  %ready.i.i = alloca i32, align 4
  %val.i29.i = alloca [3 x i8], align 1
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 17, label %sw.bb
    i32 9, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %mask, label %sw.bb.cleanup_crit_edge [
    i32 12, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 25, label %sw.bb9.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i, align 4, !annotation !41
  %regmap.i.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 6, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %dps310_get_pres_samp_freq.exit.thread.i, label %dps310_get_pres_samp_freq.exit.i

dps310_get_pres_samp_freq.exit.thread.i:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br label %cleanup

dps310_get_pres_samp_freq.exit.i:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i.i, align 4
  %and.i.i = lshr i32 %10, 4
  %shr.i.i = and i32 %and.i.i, 7
  %shl.i.i = shl nuw nsw i32 1, %shr.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl.i.i, ptr %val, align 4
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ready.i.i) #6
  %12 = ptrtoint ptr %ready.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %ready.i.i, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val.i29.i) #6
  %13 = ptrtoint ptr %val.i29.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %val.i29.i, align 1, !annotation !41
  %14 = getelementptr inbounds [3 x i8], ptr %val.i29.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %14, align 1, !annotation !41
  %16 = getelementptr inbounds [3 x i8], ptr %val.i29.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %16, align 1, !annotation !41
  %lock.i.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 2
  %call.i30.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i.i, label %if.end.i31.i, label %dps310_read_pres_raw.exit.thread.i

dps310_read_pres_raw.exit.thread.i:               ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val.i29.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ready.i.i) #6
  br label %cleanup

if.end.i31.i:                                     ; preds = %sw.bb1.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #6
  %18 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !41
  %regmap.i.i.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 6, ptr noundef nonnull %val.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %dps310_get_pres_samp_freq.exit.thread.i.i, label %dps310_get_pres_samp_freq.exit.i.i

dps310_get_pres_samp_freq.exit.thread.i.i:        ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #6
  br label %cond.end.thread.i.i

dps310_get_pres_samp_freq.exit.i.i:               ; preds = %if.end.i31.i
  %21 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i.i.i, align 4
  %and.i.i.i = lshr i32 %22, 4
  %shr.i90.i.i = and i32 %and.i.i.i, 7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #6
  %div110112.i.i = lshr i32 1000000, %shr.i90.i.i
  %23 = zext i32 %div110112.i.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 160007, i32 %div110112.i.i)
  %cmp3.i.i = icmp ugt i32 %div110112.i.i, 160007
  %div2111113.i.i = lshr i32 %div110112.i.i, 3
  br i1 %cmp3.i.i, label %dps310_get_pres_samp_freq.exit.i.i.cond.end.thread.i.i_crit_edge, label %dps310_get_pres_samp_freq.exit.i.i.do.end20.i.i_crit_edge

dps310_get_pres_samp_freq.exit.i.i.do.end20.i.i_crit_edge: ; preds = %dps310_get_pres_samp_freq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20.i.i

dps310_get_pres_samp_freq.exit.i.i.cond.end.thread.i.i_crit_edge: ; preds = %dps310_get_pres_samp_freq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread.i.i

cond.end.thread.i.i:                              ; preds = %dps310_get_pres_samp_freq.exit.i.i.cond.end.thread.i.i_crit_edge, %dps310_get_pres_samp_freq.exit.thread.i.i
  %24 = phi i64 [ %23, %dps310_get_pres_samp_freq.exit.i.i.cond.end.thread.i.i_crit_edge ], [ 1000000, %dps310_get_pres_samp_freq.exit.thread.i.i ]
  br label %do.end20.i.i

do.end20.i.i:                                     ; preds = %cond.end.thread.i.i, %dps310_get_pres_samp_freq.exit.i.i.do.end20.i.i_crit_edge
  %25 = phi i64 [ %24, %cond.end.thread.i.i ], [ %23, %dps310_get_pres_samp_freq.exit.i.i.do.end20.i.i_crit_edge ]
  %26 = phi i32 [ 20000, %cond.end.thread.i.i ], [ %div2111113.i.i, %dps310_get_pres_samp_freq.exit.i.i.do.end20.i.i_crit_edge ]
  %call9.i.i = call i64 @ktime_get() #6
  %mul.i.i.i = mul nuw nsw i64 %25, 1000
  %add.i.i.i = add i64 %call9.i.i, %mul.i.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 318) #6
  %27 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i.i.i, align 4
  %call21116.i.i = call i32 @regmap_read(ptr noundef %28, i32 noundef 8, ptr noundef nonnull %ready.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21116.i.i)
  %tobool22.not117.i.i = icmp eq i32 %call21116.i.i, 0
  br i1 %tobool22.not117.i.i, label %lor.lhs.false.lr.ph.i.i, label %do.end20.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge

do.end20.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge: ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dps310_read_pres_raw.exit.thread61.i

lor.lhs.false.lr.ph.i.i:                          ; preds = %do.end20.i.i
  %shr.i32.i = lshr i32 %26, 2
  %add.i.i = add nuw nsw i32 %shr.i32.i, 1
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end37.i.i.lor.lhs.false.i.i_crit_edge, %lor.lhs.false.lr.ph.i.i
  %29 = ptrtoint ptr %ready.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ready.i.i, align 4
  %and.i33.i = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33.i)
  %tobool23.not.i.i = icmp eq i32 %and.i33.i, 0
  br i1 %tobool23.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.lor.rhs.i.i_crit_edge

lor.lhs.false.i.i.lor.rhs.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call27.i.i = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call27.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call27.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %if.end37.i.i

if.end37.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @usleep_range_state(i32 noundef %add.i.i, i32 noundef %26, i32 noundef 2) #6
  %31 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i.i.i, align 4
  %call21.i.i = call i32 @regmap_read(ptr noundef %32, i32 noundef 8, ptr noundef nonnull %ready.i.i) #6
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end37.i.i.lor.lhs.false.i.i_crit_edge, label %if.end37.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge

if.end37.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dps310_read_pres_raw.exit.thread61.i

if.end37.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %33 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i.i.i, align 4
  %call33.i.i = call i32 @regmap_read(ptr noundef %34, i32 noundef 8, ptr noundef nonnull %ready.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool39.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool39.not.i.i, label %for.end.i.i.lor.rhs.i.i_crit_edge, label %for.end.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge

for.end.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dps310_read_pres_raw.exit.thread61.i

for.end.i.i.lor.rhs.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %for.end.i.i.lor.rhs.i.i_crit_edge, %lor.lhs.false.i.i.lor.rhs.i.i_crit_edge
  %35 = ptrtoint ptr %ready.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ready.i.i, align 4
  %and40.i.i = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool41.not.i.i, label %lor.rhs.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge, label %if.end51.i.i

lor.rhs.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dps310_read_pres_raw.exit.thread61.i

if.end51.i.i:                                     ; preds = %lor.rhs.i.i
  %37 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i.i.i, align 4
  %call53.i.i = call i32 @regmap_bulk_read(ptr noundef %38, i32 noundef 0, ptr noundef nonnull %val.i29.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %cmp54.i.i = icmp slt i32 %call53.i.i, 0
  br i1 %cmp54.i.i, label %if.end51.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge, label %dps310_read_pres_raw.exit.i

if.end51.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge: ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dps310_read_pres_raw.exit.thread61.i

dps310_read_pres_raw.exit.thread61.i:             ; preds = %if.end51.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge, %lor.rhs.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge, %for.end.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge, %if.end37.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge, %do.end20.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge
  %rc.0.i.ph.i = phi i32 [ -110, %lor.rhs.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge ], [ %call33.i.i, %for.end.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge ], [ %call21116.i.i, %do.end20.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge ], [ %call53.i.i, %if.end51.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge ], [ %call21.i.i, %if.end37.i.i.dps310_read_pres_raw.exit.thread61.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val.i29.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ready.i.i) #6
  br label %cleanup

dps310_read_pres_raw.exit.i:                      ; preds = %if.end51.i.i
  %39 = ptrtoint ptr %val.i29.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %val.i29.i, align 1
  %conv58.i.i = zext i8 %40 to i32
  %shl.i34.i = shl nuw nsw i32 %conv58.i.i, 16
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %14, align 1
  %conv60.i.i = zext i8 %42 to i32
  %shl61.i.i = shl nuw nsw i32 %conv60.i.i, 8
  %or.i.i = or i32 %shl61.i.i, %shl.i34.i
  %43 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %16, align 1
  %conv63.i.i = zext i8 %44 to i32
  %or64.i.i = or i32 %or.i.i, %conv63.i.i
  %shl.i.i.i = shl nuw i32 %or64.i.i, 8
  %shr.i.i.i = ashr exact i32 %shl.i.i.i, 8
  %pressure_raw.i.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 12
  %45 = ptrtoint ptr %pressure_raw.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr.i.i.i, ptr %pressure_raw.i.i, align 4
  call void @mutex_unlock(ptr noundef %lock.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val.i29.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ready.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool.not.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %dps310_read_pres_raw.exit.i.cleanup_crit_edge

dps310_read_pres_raw.exit.i.cleanup_crit_edge:    ; preds = %dps310_read_pres_raw.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %dps310_read_pres_raw.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t_ready.i.i) #6
  %46 = ptrtoint ptr %t_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %t_ready.i.i, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i.i) #6
  %47 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %val.i.i.i.i, align 4, !annotation !41
  %48 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i.i = call i32 @regmap_read(ptr noundef %49, i32 noundef 6, ptr noundef nonnull %val.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %dps310_get_pres_precision.exit.thread.i.i.i, label %dps310_get_pres_precision.exit.i.i.i

dps310_get_pres_precision.exit.thread.i.i.i:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i) #6
  br label %dps310_get_pres_k.exit.i.i

dps310_get_pres_precision.exit.i.i.i:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i) #6
  %and.i.i.i.i = and i32 %51, 7
  %shl.i.i.i.i = shl nuw nsw i32 1, %and.i.i.i.i
  %52 = call i32 @llvm.ctlz.i32(i32 %shl.i.i.i.i, i1 true) #6, !range !42
  %sub.i.op.i.i.i.i = xor i32 %52, 31
  %arrayidx.i.i.i = getelementptr [8 x i32], ptr @scale_factors, i32 0, i32 %sub.i.op.i.i.i.i
  %53 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i.i, align 4
  br label %dps310_get_pres_k.exit.i.i

dps310_get_pres_k.exit.i.i:                       ; preds = %dps310_get_pres_precision.exit.i.i.i, %dps310_get_pres_precision.exit.thread.i.i.i
  %retval.0.i.i.i = phi i32 [ %54, %dps310_get_pres_precision.exit.i.i.i ], [ %call.i.i.i.i, %dps310_get_pres_precision.exit.thread.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i164.i.i) #6
  %55 = ptrtoint ptr %val.i.i164.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %val.i.i164.i.i, align 4, !annotation !41
  %56 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i166.i.i = call i32 @regmap_read(ptr noundef %57, i32 noundef 7, ptr noundef nonnull %val.i.i164.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i166.i.i)
  %cmp.i.i167.i.i = icmp slt i32 %call.i.i166.i.i, 0
  br i1 %cmp.i.i167.i.i, label %dps310_get_temp_precision.exit.thread.i.i.i, label %dps310_get_temp_precision.exit.i.i.i

dps310_get_temp_precision.exit.thread.i.i.i:      ; preds = %dps310_get_pres_k.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i164.i.i) #6
  br label %dps310_get_temp_k.exit.i.i

dps310_get_temp_precision.exit.i.i.i:             ; preds = %dps310_get_pres_k.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %val.i.i164.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val.i.i164.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i164.i.i) #6
  %and.i.i168.i.i = and i32 %59, 7
  %shl.i.i169.i.i = shl nuw nsw i32 1, %and.i.i168.i.i
  %60 = call i32 @llvm.ctlz.i32(i32 %shl.i.i169.i.i, i1 true) #6, !range !42
  %sub.i.op.i.i174.i.i = xor i32 %60, 31
  %arrayidx.i177.i.i = getelementptr [8 x i32], ptr @scale_factors, i32 0, i32 %sub.i.op.i.i174.i.i
  %61 = ptrtoint ptr %arrayidx.i177.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i177.i.i, align 4
  br label %dps310_get_temp_k.exit.i.i

dps310_get_temp_k.exit.i.i:                       ; preds = %dps310_get_temp_precision.exit.i.i.i, %dps310_get_temp_precision.exit.thread.i.i.i
  %retval.0.i179.i.i = phi i32 [ %62, %dps310_get_temp_precision.exit.i.i.i ], [ %call.i.i166.i.i, %dps310_get_temp_precision.exit.thread.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %denoms.i.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %nums.i.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rems.i.i) #6
  %63 = call ptr @memset(ptr %rems.i.i, i32 255, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i37.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp.i37.i, label %dps310_get_temp_k.exit.i.i.dps310_calculate_pressure.exit.thread.i_crit_edge, label %if.end.i38.i

dps310_get_temp_k.exit.i.i.dps310_calculate_pressure.exit.thread.i_crit_edge: ; preds = %dps310_get_temp_k.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dps310_calculate_pressure.exit.thread.i

if.end.i38.i:                                     ; preds = %dps310_get_temp_k.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i179.i.i)
  %cmp2.i.i = icmp slt i32 %retval.0.i179.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i38.i.dps310_calculate_pressure.exit.thread.i_crit_edge, label %if.end4.i.i

if.end.i38.i.dps310_calculate_pressure.exit.thread.i_crit_edge: ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dps310_calculate_pressure.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i38.i
  %conv183.i.i = zext i32 %retval.0.i.i.i to i64
  %conv5184.i.i = zext i32 %retval.0.i179.i.i to i64
  %call6.i.i = call i32 @mutex_trylock(ptr noundef %lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i40.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i40.i, label %if.end4.i.i.if.end16.i.i_crit_edge, label %if.then7.i.i

if.end4.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i.i

if.then7.i.i:                                     ; preds = %if.end4.i.i
  %64 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap.i.i.i, align 4
  %call8.i.i = call i32 @regmap_read(ptr noundef %65, i32 noundef 8, ptr noundef nonnull %t_ready.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i.i)
  %cmp9.i.i = icmp sgt i32 %call8.i.i, -1
  br i1 %cmp9.i.i, label %land.lhs.true.i42.i, label %if.then7.i.i.if.end14.i.i_crit_edge

if.then7.i.i.if.end14.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i

land.lhs.true.i42.i:                              ; preds = %if.then7.i.i
  %66 = ptrtoint ptr %t_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %t_ready.i.i, align 4
  %and.i41.i = and i32 %67, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41.i)
  %tobool11.not.i.i = icmp eq i32 %and.i41.i, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true.i42.i.if.end14.i.i_crit_edge, label %if.then12.i.i

land.lhs.true.i42.i.if.end14.i.i_crit_edge:       ; preds = %land.lhs.true.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true.i42.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val.i.i36.i) #6
  %68 = ptrtoint ptr %val.i.i36.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %val.i.i36.i, align 1, !annotation !41
  %69 = getelementptr inbounds [3 x i8], ptr %val.i.i36.i, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -1, ptr %69, align 1, !annotation !41
  %71 = getelementptr inbounds [3 x i8], ptr %val.i.i36.i, i32 0, i32 2
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %71, align 1, !annotation !41
  %73 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i43.i = call i32 @regmap_bulk_read(ptr noundef %74, i32 noundef 3, ptr noundef nonnull %val.i.i36.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43.i)
  %cmp.i.i44.i = icmp slt i32 %call.i.i43.i, 0
  br i1 %cmp.i.i44.i, label %if.then12.i.i.dps310_read_temp_ready.exit.i.i_crit_edge, label %if.end.i.i.i

if.then12.i.i.dps310_read_temp_ready.exit.i.i_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dps310_read_temp_ready.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %val.i.i36.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %val.i.i36.i, align 1
  %conv.i.i.i = zext i8 %76 to i32
  %shl.i.i45.i = shl nuw nsw i32 %conv.i.i.i, 16
  %77 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %69, align 1
  %conv2.i.i.i = zext i8 %78 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i45.i
  %79 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %71, align 1
  %conv5.i.i.i = zext i8 %80 to i32
  %or6.i.i.i = or i32 %or.i.i.i, %conv5.i.i.i
  %shl.i.i180.i.i = shl nuw i32 %or6.i.i.i, 8
  %shr.i.i.i.i = ashr exact i32 %shl.i.i180.i.i, 8
  %temp_raw.i.i.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 13
  %81 = ptrtoint ptr %temp_raw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %shr.i.i.i.i, ptr %temp_raw.i.i.i, align 4
  br label %dps310_read_temp_ready.exit.i.i

dps310_read_temp_ready.exit.i.i:                  ; preds = %if.end.i.i.i, %if.then12.i.i.dps310_read_temp_ready.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val.i.i36.i) #6
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %dps310_read_temp_ready.exit.i.i, %land.lhs.true.i42.i.if.end14.i.i_crit_edge, %if.then7.i.i.if.end14.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i.i) #6
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.end14.i.i, %if.end4.i.i.if.end16.i.i_crit_edge
  %82 = ptrtoint ptr %pressure_raw.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pressure_raw.i.i, align 4
  %conv17.i.i = sext i32 %83 to i64
  %temp_raw.i.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 13
  %84 = ptrtoint ptr %temp_raw.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %temp_raw.i.i, align 4
  %conv18.i.i = sext i32 %85 to i64
  %c00.i.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 5
  %86 = ptrtoint ptr %c00.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %c00.i.i, align 4
  %conv19.i.i = sext i32 %87 to i64
  %88 = ptrtoint ptr %nums.i.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %conv19.i.i, ptr %nums.i.i, align 8
  %89 = ptrtoint ptr %denoms.i.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 1, ptr %denoms.i.i, align 8
  %c10.i.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 6
  %90 = ptrtoint ptr %c10.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %c10.i.i, align 4
  %conv21.i.i = sext i32 %91 to i64
  %mul.i.i = mul nsw i64 %conv21.i.i, %conv17.i.i
  %arrayidx22.i.i = getelementptr inbounds [7 x i64], ptr %nums.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %mul.i.i, ptr %arrayidx22.i.i, align 8
  %arrayidx23.i.i = getelementptr inbounds [7 x i64], ptr %denoms.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv183.i.i, ptr %arrayidx23.i.i, align 8
  %mul24.i.i = mul nsw i64 %conv17.i.i, %conv17.i.i
  %c20.i.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 7
  %94 = ptrtoint ptr %c20.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %c20.i.i, align 4
  %conv25.i.i = sext i32 %95 to i64
  %mul26.i.i = mul i64 %mul24.i.i, %conv25.i.i
  %arrayidx27.i.i = getelementptr inbounds [7 x i64], ptr %nums.i.i, i32 0, i32 2
  %96 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %mul26.i.i, ptr %arrayidx27.i.i, align 8
  %mul28.i.i = mul nuw nsw i64 %conv183.i.i, %conv183.i.i
  %arrayidx29.i.i = getelementptr inbounds [7 x i64], ptr %denoms.i.i, i32 0, i32 2
  %97 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %mul28.i.i, ptr %arrayidx29.i.i, align 8
  %mul31.i.i = mul i64 %mul24.i.i, %conv17.i.i
  %c30.i.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 8
  %98 = ptrtoint ptr %c30.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %c30.i.i, align 4
  %conv32.i.i = sext i32 %99 to i64
  %mul33.i.i = mul i64 %mul31.i.i, %conv32.i.i
  %arrayidx34.i.i = getelementptr inbounds [7 x i64], ptr %nums.i.i, i32 0, i32 3
  %100 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %mul33.i.i, ptr %arrayidx34.i.i, align 8
  %mul36.i.i = mul i64 %mul28.i.i, %conv183.i.i
  %arrayidx37.i.i = getelementptr inbounds [7 x i64], ptr %denoms.i.i, i32 0, i32 3
  %101 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %mul36.i.i, ptr %arrayidx37.i.i, align 8
  %c01.i.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 9
  %102 = ptrtoint ptr %c01.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %c01.i.i, align 4
  %conv38.i.i = sext i32 %103 to i64
  %mul39.i.i = mul nsw i64 %conv38.i.i, %conv18.i.i
  %arrayidx40.i.i = getelementptr inbounds [7 x i64], ptr %nums.i.i, i32 0, i32 4
  %104 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %mul39.i.i, ptr %arrayidx40.i.i, align 8
  %arrayidx41.i.i = getelementptr inbounds [7 x i64], ptr %denoms.i.i, i32 0, i32 4
  %105 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %conv5184.i.i, ptr %arrayidx41.i.i, align 8
  %mul42.i.i = mul nsw i64 %conv18.i.i, %conv17.i.i
  %c11.i.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 10
  %106 = ptrtoint ptr %c11.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %c11.i.i, align 4
  %conv43.i.i = sext i32 %107 to i64
  %mul44.i.i = mul i64 %mul42.i.i, %conv43.i.i
  %arrayidx45.i.i = getelementptr inbounds [7 x i64], ptr %nums.i.i, i32 0, i32 5
  %108 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %mul44.i.i, ptr %arrayidx45.i.i, align 8
  %mul46.i.i = mul nuw nsw i64 %conv5184.i.i, %conv183.i.i
  %arrayidx47.i.i = getelementptr inbounds [7 x i64], ptr %denoms.i.i, i32 0, i32 5
  %109 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %mul46.i.i, ptr %arrayidx47.i.i, align 8
  %mul49.i.i = mul i64 %mul42.i.i, %conv17.i.i
  %c21.i.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 11
  %110 = ptrtoint ptr %c21.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %c21.i.i, align 4
  %conv50.i.i = sext i32 %111 to i64
  %mul51.i.i = mul i64 %mul49.i.i, %conv50.i.i
  %arrayidx52.i.i = getelementptr inbounds [7 x i64], ptr %nums.i.i, i32 0, i32 6
  %112 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %mul51.i.i, ptr %arrayidx52.i.i, align 8
  %mul54.i.i = mul i64 %mul28.i.i, %conv5184.i.i
  %arrayidx55.i.i = getelementptr inbounds [7 x i64], ptr %denoms.i.i, i32 0, i32 6
  %113 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %mul54.i.i, ptr %arrayidx55.i.i, align 8
  br label %for.body.i.i

for.cond73.preheader.i.i:                         ; preds = %if.end72.i.i
  %114 = ptrtoint ptr %rems.i.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %rems.i.i, align 8
  %mul78.i.i = mul i64 %115, 1000000000
  %call80.i.i = call i64 @div64_s64(i64 noundef %mul78.i.i, i64 noundef 1) #6
  %arrayidx77.1.i.i = getelementptr inbounds [7 x i64], ptr %rems.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %arrayidx77.1.i.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %arrayidx77.1.i.i, align 8
  %mul78.1.i.i = mul i64 %117, 1000000000
  %call80.1.i.i = call i64 @div64_s64(i64 noundef %mul78.1.i.i, i64 noundef %conv183.i.i) #6
  %add81.1.i.i = add i64 %call80.1.i.i, %call80.i.i
  %arrayidx77.2.i.i = getelementptr inbounds [7 x i64], ptr %rems.i.i, i32 0, i32 2
  %118 = ptrtoint ptr %arrayidx77.2.i.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %arrayidx77.2.i.i, align 8
  %mul78.2.i.i = mul i64 %119, 1000000000
  %call80.2.i.i = call i64 @div64_s64(i64 noundef %mul78.2.i.i, i64 noundef %mul28.i.i) #6
  %add81.2.i.i = add i64 %add81.1.i.i, %call80.2.i.i
  %arrayidx77.3.i.i = getelementptr inbounds [7 x i64], ptr %rems.i.i, i32 0, i32 3
  %120 = ptrtoint ptr %arrayidx77.3.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %arrayidx77.3.i.i, align 8
  %mul78.3.i.i = mul i64 %121, 1000000000
  %call80.3.i.i = call i64 @div64_s64(i64 noundef %mul78.3.i.i, i64 noundef %mul36.i.i) #6
  %add81.3.i.i = add i64 %add81.2.i.i, %call80.3.i.i
  %arrayidx77.4.i.i = getelementptr inbounds [7 x i64], ptr %rems.i.i, i32 0, i32 4
  %122 = ptrtoint ptr %arrayidx77.4.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %arrayidx77.4.i.i, align 8
  %mul78.4.i.i = mul i64 %123, 1000000000
  %call80.4.i.i = call i64 @div64_s64(i64 noundef %mul78.4.i.i, i64 noundef %conv5184.i.i) #6
  %add81.4.i.i = add i64 %add81.3.i.i, %call80.4.i.i
  %arrayidx77.5.i.i = getelementptr inbounds [7 x i64], ptr %rems.i.i, i32 0, i32 5
  %124 = ptrtoint ptr %arrayidx77.5.i.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %arrayidx77.5.i.i, align 8
  %mul78.5.i.i = mul i64 %125, 1000000000
  %call80.5.i.i = call i64 @div64_s64(i64 noundef %mul78.5.i.i, i64 noundef %mul46.i.i) #6
  %add81.5.i.i = add i64 %add81.4.i.i, %call80.5.i.i
  %arrayidx77.6.i.i = getelementptr inbounds [7 x i64], ptr %rems.i.i, i32 0, i32 6
  %126 = ptrtoint ptr %arrayidx77.6.i.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %arrayidx77.6.i.i, align 8
  %mul78.6.i.i = mul i64 %127, 1000000000
  %call80.6.i.i = call i64 @div64_s64(i64 noundef %mul78.6.i.i, i64 noundef %mul54.i.i) #6
  %add81.6.i.i = add i64 %add81.5.i.i, %call80.6.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i) #6
  %128 = ptrtoint ptr %remainder.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -1, ptr %remainder.i.i.i, align 4, !annotation !41
  %call.i182.i.i = call i64 @div_s64_rem(i64 noundef %add81.6.i.i, i32 noundef 1000000000, ptr noundef nonnull %remainder.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i) #6
  %add86.i.i = add i64 %call.i182.i.i, %pressure.1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add86.i.i)
  %cmp87.i.i = icmp slt i64 %add86.i.i, 0
  br i1 %cmp87.i.i, label %for.cond73.preheader.i.i.dps310_calculate_pressure.exit.thread.i_crit_edge, label %dps310_calculate_pressure.exit.i

for.cond73.preheader.i.i.dps310_calculate_pressure.exit.thread.i_crit_edge: ; preds = %for.cond73.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dps310_calculate_pressure.exit.thread.i

for.body.i.i:                                     ; preds = %if.end72.i.i.for.body.i.i_crit_edge, %if.end16.i.i
  %pressure.0188.i.i = phi i64 [ 0, %if.end16.i.i ], [ %pressure.1.i.i, %if.end72.i.i.for.body.i.i_crit_edge ]
  %i.0186.i.i = phi i32 [ 0, %if.end16.i.i ], [ %inc.i.i, %if.end72.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %irem.i.i) #6
  %129 = ptrtoint ptr %irem.i.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 -1, ptr %irem.i.i, align 8, !annotation !41
  %arrayidx58.i.i = getelementptr [7 x i64], ptr %nums.i.i, i32 0, i32 %i.0186.i.i
  %130 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %arrayidx58.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %131)
  %cmp59.i.i = icmp slt i64 %131, 0
  br i1 %cmp59.i.i, label %if.then61.i.i, label %if.else.i.i

if.then61.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = sub i64 0, %131
  %arrayidx63.i.i = getelementptr [7 x i64], ptr %denoms.i.i, i32 0, i32 %i.0186.i.i
  %132 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %arrayidx63.i.i, align 8
  %call64.i.i = call i64 @div64_u64_rem(i64 noundef %sub.i.i, i64 noundef %133, ptr noundef nonnull %irem.i.i) #6
  %sub65.i.i = sub i64 %pressure.0188.i.i, %call64.i.i
  %134 = ptrtoint ptr %irem.i.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %irem.i.i, align 8
  %sub66.i.i = sub i64 0, %135
  br label %if.end72.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx69.i.i = getelementptr [7 x i64], ptr %denoms.i.i, i32 0, i32 %i.0186.i.i
  %136 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %arrayidx69.i.i, align 8
  %call70.i.i = call i64 @div64_u64_rem(i64 noundef %131, i64 noundef %137, ptr noundef nonnull %irem.i.i) #6
  %add.i47.i = add i64 %call70.i.i, %pressure.0188.i.i
  %138 = ptrtoint ptr %irem.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %irem.i.i, align 8
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %if.else.i.i, %if.then61.i.i
  %.sink.i.i = phi i64 [ %sub66.i.i, %if.then61.i.i ], [ %139, %if.else.i.i ]
  %pressure.1.i.i = phi i64 [ %sub65.i.i, %if.then61.i.i ], [ %add.i47.i, %if.else.i.i ]
  %140 = getelementptr [7 x i64], ptr %rems.i.i, i32 0, i32 %i.0186.i.i
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %.sink.i.i, ptr %140, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %irem.i.i) #6
  %inc.i.i = add nuw nsw i32 %i.0186.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 7
  br i1 %exitcond.not.i.i, label %for.cond73.preheader.i.i, label %if.end72.i.i.for.body.i.i_crit_edge

if.end72.i.i.for.body.i.i_crit_edge:              ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dps310_calculate_pressure.exit.thread.i:          ; preds = %for.cond73.preheader.i.i.dps310_calculate_pressure.exit.thread.i_crit_edge, %if.end.i38.i.dps310_calculate_pressure.exit.thread.i_crit_edge, %dps310_get_temp_k.exit.i.i.dps310_calculate_pressure.exit.thread.i_crit_edge
  %retval.0.i48.ph.i = phi i32 [ -34, %for.cond73.preheader.i.i.dps310_calculate_pressure.exit.thread.i_crit_edge ], [ %retval.0.i179.i.i, %if.end.i38.i.dps310_calculate_pressure.exit.thread.i_crit_edge ], [ %retval.0.i.i.i, %dps310_get_temp_k.exit.i.i.dps310_calculate_pressure.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rems.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %nums.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %denoms.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_ready.i.i) #6
  br label %cleanup

dps310_calculate_pressure.exit.i:                 ; preds = %for.cond73.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %142 = call i64 @llvm.umin.i64(i64 %add86.i.i, i64 2147483647) #6
  %143 = trunc i64 %142 to i32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rems.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %nums.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %denoms.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_ready.i.i) #6
  %144 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %val, align 4
  %145 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

sw.bb9.i:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i49.i) #6
  %146 = ptrtoint ptr %val.i49.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 -1, ptr %val.i49.i, align 4, !annotation !41
  %regmap.i50.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 1
  %147 = ptrtoint ptr %regmap.i50.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regmap.i50.i, align 4
  %call.i51.i = call i32 @regmap_read(ptr noundef %148, i32 noundef 6, ptr noundef nonnull %val.i49.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %cmp.i52.i = icmp slt i32 %call.i51.i, 0
  br i1 %cmp.i52.i, label %dps310_get_pres_precision.exit.thread.i, label %dps310_get_pres_precision.exit.i

dps310_get_pres_precision.exit.thread.i:          ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i49.i) #6
  br label %cleanup

dps310_get_pres_precision.exit.i:                 ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %val.i49.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %val.i49.i, align 4
  %and.i53.i = and i32 %150, 7
  %shl.i54.i = shl nuw nsw i32 1, %and.i53.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i49.i) #6
  %151 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %shl.i54.i, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %152 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %mask, label %sw.bb2.cleanup_crit_edge [
    i32 12, label %sw.bb.i16
    i32 1, label %sw.bb1.i22
    i32 25, label %sw.bb9.i75
  ]

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i16:                                        ; preds = %sw.bb2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i12) #6
  %153 = ptrtoint ptr %val.i.i12 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 -1, ptr %val.i.i12, align 4, !annotation !41
  %regmap.i.i13 = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 1
  %154 = ptrtoint ptr %regmap.i.i13 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regmap.i.i13, align 4
  %call.i.i14 = call i32 @regmap_read(ptr noundef %155, i32 noundef 7, ptr noundef nonnull %val.i.i12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %cmp.i.i15 = icmp slt i32 %call.i.i14, 0
  br i1 %cmp.i.i15, label %dps310_get_temp_samp_freq.exit.thread.i, label %dps310_get_temp_samp_freq.exit.i

dps310_get_temp_samp_freq.exit.thread.i:          ; preds = %sw.bb.i16
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i12) #6
  br label %cleanup

dps310_get_temp_samp_freq.exit.i:                 ; preds = %sw.bb.i16
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %val.i.i12 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %val.i.i12, align 4
  %and.i.i17 = lshr i32 %157, 4
  %shr.i.i18 = and i32 %and.i.i17, 7
  %shl.i.i19 = shl nuw nsw i32 1, %shr.i.i18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i12) #6
  %158 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %shl.i.i19, ptr %val, align 4
  br label %cleanup

sw.bb1.i22:                                       ; preds = %sw.bb2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ready.i.i11) #6
  %159 = ptrtoint ptr %ready.i.i11 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -1, ptr %ready.i.i11, align 4, !annotation !41
  %lock.i.i20 = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 2
  %call.i1.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i.i20, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i.i21 = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i.i21, label %if.end.i2.i, label %dps310_read_temp_raw.exit.thread.i

dps310_read_temp_raw.exit.thread.i:               ; preds = %sw.bb1.i22
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ready.i.i11) #6
  br label %cleanup

if.end.i2.i:                                      ; preds = %sw.bb1.i22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i10) #6
  %160 = ptrtoint ptr %val.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 -1, ptr %val.i.i.i10, align 4, !annotation !41
  %regmap.i.i.i23 = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 1
  %161 = ptrtoint ptr %regmap.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regmap.i.i.i23, align 4
  %call.i.i.i24 = call i32 @regmap_read(ptr noundef %162, i32 noundef 7, ptr noundef nonnull %val.i.i.i10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i24)
  %cmp.i.i.i25 = icmp slt i32 %call.i.i.i24, 0
  br i1 %cmp.i.i.i25, label %dps310_get_temp_samp_freq.exit.thread.i.i, label %dps310_get_temp_samp_freq.exit.i.i

dps310_get_temp_samp_freq.exit.thread.i.i:        ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i10) #6
  br label %cond.end.thread.i.i29

dps310_get_temp_samp_freq.exit.i.i:               ; preds = %if.end.i2.i
  %163 = ptrtoint ptr %val.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %val.i.i.i10, align 4
  %and.i.i.i26 = lshr i32 %164, 4
  %shr.i.i.i27 = and i32 %and.i.i.i26, 7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i10) #6
  %div99101.i.i = lshr i32 1000000, %shr.i.i.i27
  %165 = zext i32 %div99101.i.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 160007, i32 %div99101.i.i)
  %cmp3.i.i28 = icmp ugt i32 %div99101.i.i, 160007
  %div2100102.i.i = lshr i32 %div99101.i.i, 3
  br i1 %cmp3.i.i28, label %dps310_get_temp_samp_freq.exit.i.i.cond.end.thread.i.i29_crit_edge, label %dps310_get_temp_samp_freq.exit.i.i.do.end20.i.i33_crit_edge

dps310_get_temp_samp_freq.exit.i.i.do.end20.i.i33_crit_edge: ; preds = %dps310_get_temp_samp_freq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20.i.i33

dps310_get_temp_samp_freq.exit.i.i.cond.end.thread.i.i29_crit_edge: ; preds = %dps310_get_temp_samp_freq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread.i.i29

cond.end.thread.i.i29:                            ; preds = %dps310_get_temp_samp_freq.exit.i.i.cond.end.thread.i.i29_crit_edge, %dps310_get_temp_samp_freq.exit.thread.i.i
  %166 = phi i64 [ %165, %dps310_get_temp_samp_freq.exit.i.i.cond.end.thread.i.i29_crit_edge ], [ 1000000, %dps310_get_temp_samp_freq.exit.thread.i.i ]
  br label %do.end20.i.i33

do.end20.i.i33:                                   ; preds = %cond.end.thread.i.i29, %dps310_get_temp_samp_freq.exit.i.i.do.end20.i.i33_crit_edge
  %167 = phi i64 [ %166, %cond.end.thread.i.i29 ], [ %165, %dps310_get_temp_samp_freq.exit.i.i.do.end20.i.i33_crit_edge ]
  %168 = phi i32 [ 20000, %cond.end.thread.i.i29 ], [ %div2100102.i.i, %dps310_get_temp_samp_freq.exit.i.i.do.end20.i.i33_crit_edge ]
  %call9.i.i30 = call i64 @ktime_get() #6
  %mul.i.i.i31 = mul nuw nsw i64 %167, 1000
  %add.i.i.i32 = add i64 %call9.i.i30, %mul.i.i.i31
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 367) #6
  %169 = ptrtoint ptr %regmap.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regmap.i.i.i23, align 4
  %call21105.i.i = call i32 @regmap_read(ptr noundef %170, i32 noundef 8, ptr noundef nonnull %ready.i.i11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21105.i.i)
  %tobool22.not106.i.i = icmp eq i32 %call21105.i.i, 0
  br i1 %tobool22.not106.i.i, label %lor.lhs.false.lr.ph.i.i35, label %do.end20.i.i33.lor.end.i.i_crit_edge

do.end20.i.i33.lor.end.i.i_crit_edge:             ; preds = %do.end20.i.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i.i

lor.lhs.false.lr.ph.i.i35:                        ; preds = %do.end20.i.i33
  %shr.i3.i = lshr i32 %168, 2
  %add.i.i34 = add nuw nsw i32 %shr.i3.i, 1
  br label %lor.lhs.false.i.i37

lor.lhs.false.i.i37:                              ; preds = %if.end37.i.i43.lor.lhs.false.i.i37_crit_edge, %lor.lhs.false.lr.ph.i.i35
  %171 = ptrtoint ptr %ready.i.i11 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %ready.i.i11, align 4
  %and.i4.i = and i32 %172, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i)
  %tobool23.not.i.i36 = icmp eq i32 %and.i4.i, 0
  br i1 %tobool23.not.i.i36, label %land.lhs.true.i.i40, label %lor.lhs.false.i.i37.lor.rhs.i.i49_crit_edge

lor.lhs.false.i.i37.lor.rhs.i.i49_crit_edge:      ; preds = %lor.lhs.false.i.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i.i49

land.lhs.true.i.i40:                              ; preds = %lor.lhs.false.i.i37
  %call27.i.i38 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call27.i.i38, i64 %add.i.i.i32)
  %cmp3.i.i.i39 = icmp sgt i64 %call27.i.i38, %add.i.i.i32
  br i1 %cmp3.i.i.i39, label %for.end.i.i46, label %if.end37.i.i43

if.end37.i.i43:                                   ; preds = %land.lhs.true.i.i40
  call void @usleep_range_state(i32 noundef %add.i.i34, i32 noundef %168, i32 noundef 2) #6
  %173 = ptrtoint ptr %regmap.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regmap.i.i.i23, align 4
  %call21.i.i41 = call i32 @regmap_read(ptr noundef %174, i32 noundef 8, ptr noundef nonnull %ready.i.i11) #6
  %tobool22.not.i.i42 = icmp eq i32 %call21.i.i41, 0
  br i1 %tobool22.not.i.i42, label %if.end37.i.i43.lor.lhs.false.i.i37_crit_edge, label %if.end37.i.i43.lor.end.i.i_crit_edge

if.end37.i.i43.lor.end.i.i_crit_edge:             ; preds = %if.end37.i.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i.i

if.end37.i.i43.lor.lhs.false.i.i37_crit_edge:     ; preds = %if.end37.i.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i.i37

for.end.i.i46:                                    ; preds = %land.lhs.true.i.i40
  %175 = ptrtoint ptr %regmap.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regmap.i.i.i23, align 4
  %call33.i.i44 = call i32 @regmap_read(ptr noundef %176, i32 noundef 8, ptr noundef nonnull %ready.i.i11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i44)
  %tobool39.not.i.i45 = icmp eq i32 %call33.i.i44, 0
  br i1 %tobool39.not.i.i45, label %for.end.i.i46.lor.rhs.i.i49_crit_edge, label %for.end.i.i46.lor.end.i.i_crit_edge

for.end.i.i46.lor.end.i.i_crit_edge:              ; preds = %for.end.i.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i.i

for.end.i.i46.lor.rhs.i.i49_crit_edge:            ; preds = %for.end.i.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i.i49

lor.rhs.i.i49:                                    ; preds = %for.end.i.i46.lor.rhs.i.i49_crit_edge, %lor.lhs.false.i.i37.lor.rhs.i.i49_crit_edge
  %177 = ptrtoint ptr %ready.i.i11 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ready.i.i11, align 4
  %and40.i.i47 = and i32 %178, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i47)
  %tobool41.not.i.i48 = icmp eq i32 %and40.i.i47, 0
  br i1 %tobool41.not.i.i48, label %lor.rhs.i.i49.dps310_read_temp_raw.exit.thread22.i_crit_edge, label %lor.rhs.i.i49.if.end52.i.i_crit_edge

lor.rhs.i.i49.if.end52.i.i_crit_edge:             ; preds = %lor.rhs.i.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i.i

lor.rhs.i.i49.dps310_read_temp_raw.exit.thread22.i_crit_edge: ; preds = %lor.rhs.i.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %dps310_read_temp_raw.exit.thread22.i

lor.end.i.i:                                      ; preds = %for.end.i.i46.lor.end.i.i_crit_edge, %if.end37.i.i43.lor.end.i.i_crit_edge, %do.end20.i.i33.lor.end.i.i_crit_edge
  %tobool39.not94.i.i = phi i32 [ %call33.i.i44, %for.end.i.i46.lor.end.i.i_crit_edge ], [ %call21105.i.i, %do.end20.i.i33.lor.end.i.i_crit_edge ], [ %call21.i.i41, %if.end37.i.i43.lor.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool39.not94.i.i)
  %cmp49.i.i = icmp slt i32 %tobool39.not94.i.i, 0
  br i1 %cmp49.i.i, label %lor.end.i.i.dps310_read_temp_raw.exit.thread22.i_crit_edge, label %lor.end.i.i.if.end52.i.i_crit_edge

lor.end.i.i.if.end52.i.i_crit_edge:               ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i.i

lor.end.i.i.dps310_read_temp_raw.exit.thread22.i_crit_edge: ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dps310_read_temp_raw.exit.thread22.i

if.end52.i.i:                                     ; preds = %lor.end.i.i.if.end52.i.i_crit_edge, %lor.rhs.i.i49.if.end52.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val.i76.i.i) #6
  %179 = ptrtoint ptr %val.i76.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 -1, ptr %val.i76.i.i, align 1, !annotation !41
  %180 = getelementptr inbounds [3 x i8], ptr %val.i76.i.i, i32 0, i32 1
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 -1, ptr %180, align 1, !annotation !41
  %182 = getelementptr inbounds [3 x i8], ptr %val.i76.i.i, i32 0, i32 2
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 -1, ptr %182, align 1, !annotation !41
  %184 = ptrtoint ptr %regmap.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regmap.i.i.i23, align 4
  %call.i78.i.i = call i32 @regmap_bulk_read(ptr noundef %185, i32 noundef 3, ptr noundef nonnull %val.i76.i.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i.i)
  %cmp.i79.i.i = icmp slt i32 %call.i78.i.i, 0
  br i1 %cmp.i79.i.i, label %dps310_read_temp_raw.exit.i, label %if.end4.i62

dps310_read_temp_raw.exit.thread22.i:             ; preds = %lor.end.i.i.dps310_read_temp_raw.exit.thread22.i_crit_edge, %lor.rhs.i.i49.dps310_read_temp_raw.exit.thread22.i_crit_edge
  %rc.0.i.ph.i50 = phi i32 [ -110, %lor.rhs.i.i49.dps310_read_temp_raw.exit.thread22.i_crit_edge ], [ %tobool39.not94.i.i, %lor.end.i.i.dps310_read_temp_raw.exit.thread22.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i.i20) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ready.i.i11) #6
  br label %cleanup

dps310_read_temp_raw.exit.i:                      ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val.i76.i.i) #6
  call void @mutex_unlock(ptr noundef %lock.i.i20) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ready.i.i11) #6
  br label %cleanup

if.end4.i62:                                      ; preds = %if.end52.i.i
  %186 = ptrtoint ptr %val.i76.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %val.i76.i.i, align 1
  %conv.i.i.i51 = zext i8 %187 to i32
  %shl.i80.i.i = shl nuw nsw i32 %conv.i.i.i51, 16
  %188 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %180, align 1
  %conv2.i.i.i52 = zext i8 %189 to i32
  %shl3.i.i.i53 = shl nuw nsw i32 %conv2.i.i.i52, 8
  %or.i.i.i54 = or i32 %shl3.i.i.i53, %shl.i80.i.i
  %190 = ptrtoint ptr %182 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %182, align 1
  %conv5.i.i.i55 = zext i8 %191 to i32
  %or6.i.i.i56 = or i32 %or.i.i.i54, %conv5.i.i.i55
  %shl.i.i.i.i57 = shl nuw i32 %or6.i.i.i56, 8
  %shr.i.i.i.i58 = ashr exact i32 %shl.i.i.i.i57, 8
  %temp_raw.i.i.i59 = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 13
  %192 = ptrtoint ptr %temp_raw.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %shr.i.i.i.i58, ptr %temp_raw.i.i.i59, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val.i76.i.i) #6
  call void @mutex_unlock(ptr noundef %lock.i.i20) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ready.i.i11) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i.i9) #6
  %193 = ptrtoint ptr %val.i.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 -1, ptr %val.i.i.i.i9, align 4, !annotation !41
  %194 = ptrtoint ptr %regmap.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regmap.i.i.i23, align 4
  %call.i.i.i.i60 = call i32 @regmap_read(ptr noundef %195, i32 noundef 7, ptr noundef nonnull %val.i.i.i.i9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i60)
  %cmp.i.i.i.i61 = icmp slt i32 %call.i.i.i.i60, 0
  br i1 %cmp.i.i.i.i61, label %dps310_calculate_temp.exit.thread.i, label %dps310_get_temp_precision.exit.i.i.i64

dps310_calculate_temp.exit.thread.i:              ; preds = %if.end4.i62
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i9) #6
  br label %cleanup

dps310_get_temp_precision.exit.i.i.i64:           ; preds = %if.end4.i62
  %196 = ptrtoint ptr %val.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %val.i.i.i.i9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i9) #6
  %and.i.i.i.i63 = and i32 %197, 7
  %shl.i.i.i6.i = shl nuw nsw i32 1, %and.i.i.i.i63
  %198 = call i32 @llvm.ctlz.i32(i32 %shl.i.i.i6.i, i1 true) #6, !range !42
  %sub.i.op.i.i.i.i69 = xor i32 %198, 31
  %arrayidx.i.i.i72 = getelementptr [8 x i32], ptr @scale_factors, i32 0, i32 %sub.i.op.i.i.i.i69
  %199 = ptrtoint ptr %arrayidx.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx.i.i.i72, align 4
  %conv22.i.i = zext i32 %200 to i64
  %c01.i.i73 = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 3
  %201 = ptrtoint ptr %c01.i.i73 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %c01.i.i73, align 4
  %conv2.i.i = sext i32 %202 to i64
  %mul.i.i74 = mul nsw i64 %conv2.i.i, %conv22.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i8) #6
  %203 = ptrtoint ptr %remainder.i.i.i8 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 -1, ptr %remainder.i.i.i8, align 4, !annotation !41
  %call.i.i7.i = call i64 @div_s64_rem(i64 noundef %mul.i.i74, i32 noundef 2, ptr noundef nonnull %remainder.i.i.i8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i8) #6
  %204 = ptrtoint ptr %temp_raw.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %temp_raw.i.i.i59, align 4
  %conv4.i.i = sext i32 %205 to i64
  %c1.i.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 4
  %206 = ptrtoint ptr %c1.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %c1.i.i, align 4
  %conv5.i.i = sext i32 %207 to i64
  %mul6.i.i = mul nsw i64 %conv5.i.i, %conv4.i.i
  %add.i8.i = add i64 %mul6.i.i, %call.i.i7.i
  %mul7.i.i = mul i64 %add.i8.i, 1000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i18.i.i) #6
  %208 = ptrtoint ptr %remainder.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 -1, ptr %remainder.i18.i.i, align 4, !annotation !41
  %call.i19.i.i = call i64 @div_s64_rem(i64 noundef %mul7.i.i, i32 noundef %200, ptr noundef nonnull %remainder.i18.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i18.i.i) #6
  %conv9.i.i = trunc i64 %call.i19.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9.i.i)
  %cmp6.i = icmp slt i32 %conv9.i.i, 0
  br i1 %cmp6.i, label %dps310_get_temp_precision.exit.i.i.i64.cleanup_crit_edge, label %if.end8.i

dps310_get_temp_precision.exit.i.i.i64.cleanup_crit_edge: ; preds = %dps310_get_temp_precision.exit.i.i.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i:                                        ; preds = %dps310_get_temp_precision.exit.i.i.i64
  call void @__sanitizer_cov_trace_pc() #8
  %209 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %conv9.i.i, ptr %val, align 4
  br label %cleanup

sw.bb9.i75:                                       ; preds = %sw.bb2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i10.i) #6
  %210 = ptrtoint ptr %val.i10.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 -1, ptr %val.i10.i, align 4, !annotation !41
  %regmap.i11.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 1
  %211 = ptrtoint ptr %regmap.i11.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %regmap.i11.i, align 4
  %call.i12.i = call i32 @regmap_read(ptr noundef %212, i32 noundef 7, ptr noundef nonnull %val.i10.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %dps310_get_temp_precision.exit.thread.i, label %dps310_get_temp_precision.exit.i

dps310_get_temp_precision.exit.thread.i:          ; preds = %sw.bb9.i75
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i10.i) #6
  br label %cleanup

dps310_get_temp_precision.exit.i:                 ; preds = %sw.bb9.i75
  call void @__sanitizer_cov_trace_pc() #8
  %213 = ptrtoint ptr %val.i10.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %val.i10.i, align 4
  %and.i14.i = and i32 %214, 7
  %shl.i15.i = shl nuw nsw i32 1, %and.i14.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i10.i) #6
  %215 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %shl.i15.i, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %dps310_get_temp_precision.exit.i, %dps310_get_temp_precision.exit.thread.i, %if.end8.i, %dps310_get_temp_precision.exit.i.i.i64.cleanup_crit_edge, %dps310_calculate_temp.exit.thread.i, %dps310_read_temp_raw.exit.i, %dps310_read_temp_raw.exit.thread22.i, %dps310_read_temp_raw.exit.thread.i, %dps310_get_temp_samp_freq.exit.i, %dps310_get_temp_samp_freq.exit.thread.i, %sw.bb2.cleanup_crit_edge, %dps310_get_pres_precision.exit.i, %dps310_get_pres_precision.exit.thread.i, %dps310_calculate_pressure.exit.i, %dps310_calculate_pressure.exit.thread.i, %dps310_read_pres_raw.exit.i.cleanup_crit_edge, %dps310_read_pres_raw.exit.thread61.i, %dps310_read_pres_raw.exit.thread.i, %dps310_get_pres_samp_freq.exit.i, %dps310_get_pres_samp_freq.exit.thread.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %dps310_get_pres_precision.exit.i ], [ 10, %dps310_calculate_pressure.exit.i ], [ 1, %dps310_get_pres_samp_freq.exit.i ], [ %call53.i.i, %dps310_read_pres_raw.exit.i.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call.i.i, %dps310_get_pres_samp_freq.exit.thread.i ], [ -4, %dps310_read_pres_raw.exit.thread.i ], [ %rc.0.i.ph.i, %dps310_read_pres_raw.exit.thread61.i ], [ %retval.0.i48.ph.i, %dps310_calculate_pressure.exit.thread.i ], [ %call.i51.i, %dps310_get_pres_precision.exit.thread.i ], [ 1, %dps310_get_temp_precision.exit.i ], [ 1, %if.end8.i ], [ 1, %dps310_get_temp_samp_freq.exit.i ], [ %call.i78.i.i, %dps310_read_temp_raw.exit.i ], [ %conv9.i.i, %dps310_get_temp_precision.exit.i.i.i64.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ %call.i.i14, %dps310_get_temp_samp_freq.exit.thread.i ], [ -4, %dps310_read_temp_raw.exit.thread.i ], [ %rc.0.i.ph.i50, %dps310_read_temp_raw.exit.thread22.i ], [ %call.i.i.i.i60, %dps310_calculate_temp.exit.thread.i ], [ %call.i12.i, %dps310_get_temp_precision.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dps310_write_raw(ptr nocapture noundef readonly %iio, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %mask, label %if.end.sw.epilog15_crit_edge [
    i32 12, label %sw.bb
    i32 25, label %sw.bb6
  ]

if.end.sw.epilog15_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog15

sw.bb:                                            ; preds = %if.end
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %4, label %sw.bb.sw.epilog15_crit_edge [
    i32 17, label %sw.bb2
    i32 9, label %sw.bb4
  ]

sw.bb.sw.epilog15_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog15

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %val)
  %6 = icmp ugt i32 %val, 128
  br i1 %6, label %sw.bb2.sw.epilog15_crit_edge, label %cond.end5.i

sw.bb2.sw.epilog15_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog15

cond.end5.i:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i.i.i = icmp eq i32 %val, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %val, i1 true) #6, !range !42
  %sub.i.op.i.i = shl nuw nsw i32 %7, 4
  %regmap.i = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %sub.i.op.i.i.op = and i32 %sub.i.op.i.i, 240
  %sub.i.op.i.i.op.op = xor i32 %sub.i.op.i.i.op, 240
  %conv8.i = select i1 %tobool.not.i.i.i, i32 240, i32 %sub.i.op.i.i.op.op
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 6, i32 noundef 112, i32 noundef %conv8.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog15

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %val)
  %10 = icmp ugt i32 %val, 128
  br i1 %10, label %sw.bb4.sw.epilog15_crit_edge, label %cond.end5.i41

sw.bb4.sw.epilog15_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog15

cond.end5.i41:                                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i.i.i32 = icmp eq i32 %val, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %val, i1 true) #6, !range !42
  %sub.i.op.i.i33 = shl nuw nsw i32 %11, 4
  %regmap.i38 = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %regmap.i38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i38, align 4
  %sub.i.op.i.i33.op = and i32 %sub.i.op.i.i33, 240
  %sub.i.op.i.i33.op.op = xor i32 %sub.i.op.i.i33.op, 240
  %conv8.i39 = select i1 %tobool.not.i.i.i32, i32 240, i32 %sub.i.op.i.i33.op.op
  %call.i.i40 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 7, i32 noundef 112, i32 noundef %conv8.i39, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog15

sw.bb6:                                           ; preds = %if.end
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %15, label %sw.bb6.sw.epilog15_crit_edge [
    i32 17, label %sw.bb8
    i32 9, label %sw.bb10
  ]

sw.bb6.sw.epilog15_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog15

sw.bb8:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %val)
  %17 = icmp ugt i32 %val, 128
  br i1 %17, label %sw.bb8.sw.epilog15_crit_edge, label %if.end.i45

sw.bb8.sw.epilog15_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog15

if.end.i45:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %val)
  %cmp2.inv.i = icmp ult i32 %val, 16
  %regmap.i43 = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i43, align 4
  %conv3.i = select i1 %cmp2.inv.i, i32 0, i32 16
  %call.i.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 9, i32 noundef 16, i32 noundef %conv3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %tobool.not.i = icmp eq i32 %call.i.i44, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i45.sw.epilog15_crit_edge

if.end.i45.sw.epilog15_crit_edge:                 ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog15

if.end5.i:                                        ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %regmap.i43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i.i.i49 = icmp eq i32 %val, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %val, i1 true) #6, !range !42
  %sub.i.op.i.i50 = xor i32 %22, 31
  %sub.i.i51 = select i1 %tobool.not.i.i.i49, i32 -1, i32 %sub.i.op.i.i50
  %call.i26.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 6, i32 noundef 15, i32 noundef %sub.i.i51, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog15

sw.bb10:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %val)
  %23 = icmp ugt i32 %val, 128
  br i1 %23, label %sw.bb10.sw.epilog15_crit_edge, label %if.end.i58

sw.bb10.sw.epilog15_crit_edge:                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog15

if.end.i58:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %val)
  %cmp2.i53 = icmp ugt i32 %val, 15
  %regmap.i54 = getelementptr inbounds %struct.dps310_data, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %regmap.i54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i54, align 4
  %conv3.i55 = select i1 %cmp2.i53, i32 8, i32 0
  %call.i.i56 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 9, i32 noundef 8, i32 noundef %conv3.i55, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %tobool.not.i57 = icmp eq i32 %call.i.i56, 0
  br i1 %tobool.not.i57, label %if.end5.i59, label %if.end.i58.sw.epilog15_crit_edge

if.end.i58.sw.epilog15_crit_edge:                 ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog15

if.end5.i59:                                      ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %regmap.i54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i.i.i64 = icmp eq i32 %val, 0
  %28 = tail call i32 @llvm.ctlz.i32(i32 %val, i1 true) #6, !range !42
  %sub.i.op.i.i65 = xor i32 %28, 31
  %sub.i.i66 = select i1 %tobool.not.i.i.i64, i32 -1, i32 %sub.i.op.i.i65
  %call.i26.i69 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 7, i32 noundef 15, i32 noundef %sub.i.i66, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %if.end5.i59, %if.end.i58.sw.epilog15_crit_edge, %sw.bb10.sw.epilog15_crit_edge, %if.end5.i, %if.end.i45.sw.epilog15_crit_edge, %sw.bb8.sw.epilog15_crit_edge, %sw.bb6.sw.epilog15_crit_edge, %cond.end5.i41, %sw.bb4.sw.epilog15_crit_edge, %cond.end5.i, %sw.bb2.sw.epilog15_crit_edge, %sw.bb.sw.epilog15_crit_edge, %if.end.sw.epilog15_crit_edge
  %rc.0 = phi i32 [ -22, %sw.bb.sw.epilog15_crit_edge ], [ -22, %sw.bb6.sw.epilog15_crit_edge ], [ -22, %if.end.sw.epilog15_crit_edge ], [ %call.i.i, %cond.end5.i ], [ -22, %sw.bb2.sw.epilog15_crit_edge ], [ %call.i.i40, %cond.end5.i41 ], [ -22, %sw.bb4.sw.epilog15_crit_edge ], [ %call.i26.i, %if.end5.i ], [ -22, %sw.bb8.sw.epilog15_crit_edge ], [ %call.i.i44, %if.end.i45.sw.epilog15_crit_edge ], [ %call.i26.i69, %if.end5.i59 ], [ -22, %sw.bb10.sw.epilog15_crit_edge ], [ %call.i.i56, %if.end.i58.sw.epilog15_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %sw.epilog15 ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dps310_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %reg, label %sw.default [
    i32 6, label %entry.return_crit_edge
    i32 7, label %entry.return_crit_edge1
    i32 8, label %entry.return_crit_edge2
    i32 9, label %entry.return_crit_edge3
    i32 12, label %entry.return_crit_edge4
    i32 14, label %entry.return_crit_edge5
    i32 15, label %entry.return_crit_edge6
    i32 98, label %entry.return_crit_edge7
  ]

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dps310_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 2, label %entry.return_crit_edge2
    i32 3, label %entry.return_crit_edge3
    i32 4, label %entry.return_crit_edge4
    i32 5, label %entry.return_crit_edge5
    i32 8, label %entry.return_crit_edge6
    i32 50, label %entry.return_crit_edge7
  ]

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_dps310__294_822_dps310_driver_init6, !1, !"__initcall__kmod_dps310__294_822_dps310_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/dps310.c", i32 822, i32 1}
!2 = !{ptr @__exitcall_dps310_driver_exit, !1, !"__exitcall_dps310_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/iio/pressure/dps310.c", i32 824, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/iio/pressure/dps310.c", i32 825, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/iio/pressure/dps310.c", i32 826, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/pressure/dps310.c", i32 817, i32 11}
!12 = !{ptr @dps310_driver, !13, !"dps310_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/pressure/dps310.c", i32 815, i32 26}
!14 = !{ptr @dps310_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/pressure/dps310.c", i32 733, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dps310_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/iio/pressure/dps310.c", i32 741, i32 17}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/pressure/dps310.c", i32 787, i32 7}
!22 = !{ptr @dps310_channels, !23, !"dps310_channels", i1 false, i1 false}
!23 = !{!"../drivers/iio/pressure/dps310.c", i32 94, i32 35}
!24 = !{ptr @dps310_info, !25, !"dps310_info", i1 false, i1 false}
!25 = !{!"../drivers/iio/pressure/dps310.c", i32 675, i32 30}
!26 = !{ptr @scale_factors, !27, !"scale_factors", i1 false, i1 false}
!27 = !{!"../drivers/iio/pressure/dps310.c", i32 72, i32 18}
!28 = !{ptr @dps310_regmap_config, !29, !"dps310_regmap_config", i1 false, i1 false}
!29 = !{!"../drivers/iio/pressure/dps310.c", i32 666, i32 35}
!30 = !{ptr @dps310_id, !31, !"dps310_id", i1 false, i1 false}
!31 = !{!"../drivers/iio/pressure/dps310.c", i32 809, i32 35}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{i32 0, i32 33}
