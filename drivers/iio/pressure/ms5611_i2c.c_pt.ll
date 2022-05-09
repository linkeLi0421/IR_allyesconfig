; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/ms5611_i2c.c_pt.bc'
source_filename = "../drivers/iio/pressure/ms5611_i2c.c"
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ms5611_state = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ms5611_osr = type { i32, i8, i16 }

@__initcall__kmod_ms5611_i2c__288_138_ms5611_driver_init6 = internal global ptr @ms5611_driver_init, section ".initcall6.init", align 4
@ms5611_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ms5611_i2c_probe, ptr @ms5611_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ms5611_i2c_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ms5611_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ms5611_driver_exit = internal global ptr @ms5611_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [56 x i8] c"ms5611_i2c.author=Tomasz Duszynski <tduszyns@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [41 x i8] c"ms5611_i2c.description=MS5611 i2c driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [48 x i8] c"ms5611_i2c.file=drivers/iio/pressure/ms5611_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [26 x i8] c"ms5611_i2c.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ms5611\00", [25 x i8] zeroinitializer }, align 32
@ms5611_i2c_matches = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"meas,ms5611\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"meas,ms5607\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ms5611_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ms5611\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ms5607\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"ms5611_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 129, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 131, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"ms5611_i2c_matches\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 115, i32 34 }
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"ms5611_id\00", align 1
@___asan_gen_.11 = private constant [37 x i8] c"../drivers/iio/pressure/ms5611_i2c.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 122, i32 35 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ms5611_driver_exit, ptr @__initcall__kmod_ms5611_i2c__288_138_ms5611_driver_init6, ptr @ms5611_driver_exit, ptr @ms5611_driver, ptr @.str, ptr @ms5611_i2c_matches, ptr @ms5611_id], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_i2c_matches to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ms5611_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ms5611_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ms5611_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ms5611_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ms5611_i2c_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 69468160
  call void @__sanitizer_cov_trace_const_cmp4(i32 69468160, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 69468160
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 124) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %reset = getelementptr inbounds %struct.ms5611_state, ptr %7, i32 0, i32 4
  %9 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ms5611_i2c_reset, ptr %reset, align 4
  %read_prom_word = getelementptr inbounds %struct.ms5611_state, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %read_prom_word to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ms5611_i2c_read_prom_word, ptr %read_prom_word, align 4
  %read_adc_temp_and_pressure = getelementptr inbounds %struct.ms5611_state, ptr %7, i32 0, i32 6
  %11 = ptrtoint ptr %read_adc_temp_and_pressure to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ms5611_i2c_read_adc_temp_and_pressure, ptr %read_adc_temp_and_pressure, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %client, ptr %7, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_data, align 4
  %call8 = tail call i32 @ms5611_probe(ptr noundef nonnull %call1, ptr noundef %dev, ptr noundef %id, i32 noundef %14) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end4 ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ms5611_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @ms5611_remove(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ms5611_i2c_reset(ptr nocapture noundef readonly %st) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 4
  %call = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext 30) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ms5611_i2c_read_prom_word(ptr nocapture noundef readonly %st, i32 noundef %index, ptr nocapture noundef writeonly %word) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 4
  %index.tr = trunc i32 %index to i8
  %2 = shl i8 %index.tr, 1
  %conv = add i8 %2, -96
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = trunc i32 %call.i to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #5
  %4 = ptrtoint ptr %word to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %word, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ms5611_i2c_read_adc_temp_and_pressure(ptr nocapture noundef readonly %st, ptr nocapture noundef writeonly %temp, ptr nocapture noundef writeonly %pressure) #2 align 64 {
entry:
  %buf.i37 = alloca [3 x i8], align 1
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %temp_osr = getelementptr inbounds %struct.ms5611_state, ptr %st, i32 0, i32 3
  %0 = ptrtoint ptr %temp_osr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %temp_osr, align 4
  %2 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st, align 4
  %cmd = getelementptr inbounds %struct.ms5611_osr, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmd, align 4
  %call = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %div = udiv i32 %7, 10
  %add = add i32 %div, %7
  tail call void @usleep_range_state(i32 noundef %7, i32 noundef %add, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #5
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %buf.i, align 1, !annotation !27
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !27
  %11 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 1, !annotation !27
  %13 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %st, align 4
  %call.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %14, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef nonnull %buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ms5611_i2c_read_adc.exit.thread, label %if.end6

ms5611_i2c_read_adc.exit.thread:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf.i, align 1
  %conv.i.i.i = zext i8 %16 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %9, align 1
  %conv2.i.i.i = zext i8 %18 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %11, align 1
  %conv5.i.i.i = zext i8 %20 to i32
  %or6.i.i.i = or i32 %or.i.i.i, %conv5.i.i.i
  %21 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or6.i.i.i, ptr %temp, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #5
  %pressure_osr = getelementptr inbounds %struct.ms5611_state, ptr %st, i32 0, i32 2
  %22 = ptrtoint ptr %pressure_osr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pressure_osr, align 4
  %24 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %st, align 4
  %cmd8 = getelementptr inbounds %struct.ms5611_osr, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %cmd8 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cmd8, align 4
  %call9 = call i32 @i2c_smbus_write_byte(ptr noundef %25, i8 noundef zeroext %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %23, align 4
  %div16 = udiv i32 %29, 10
  %add17 = add i32 %div16, %29
  call void @usleep_range_state(i32 noundef %29, i32 noundef %add17, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i37) #5
  %30 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %buf.i37, align 1, !annotation !27
  %31 = getelementptr inbounds [3 x i8], ptr %buf.i37, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %31, align 1, !annotation !27
  %33 = getelementptr inbounds [3 x i8], ptr %buf.i37, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %33, align 1, !annotation !27
  %35 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %st, align 4
  %call.i38 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %36, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef nonnull %buf.i37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp.i39 = icmp slt i32 %call.i38, 0
  br i1 %cmp.i39, label %if.end12.ms5611_i2c_read_adc.exit49_crit_edge, label %if.end.i47

if.end12.ms5611_i2c_read_adc.exit49_crit_edge:    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %ms5611_i2c_read_adc.exit49

if.end.i47:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %buf.i37, align 1
  %conv.i.i.i40 = zext i8 %38 to i32
  %shl.i.i.i41 = shl nuw nsw i32 %conv.i.i.i40, 16
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %31, align 1
  %conv2.i.i.i42 = zext i8 %40 to i32
  %shl3.i.i.i43 = shl nuw nsw i32 %conv2.i.i.i42, 8
  %or.i.i.i44 = or i32 %shl3.i.i.i43, %shl.i.i.i41
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %33, align 1
  %conv5.i.i.i45 = zext i8 %42 to i32
  %or6.i.i.i46 = or i32 %or.i.i.i44, %conv5.i.i.i45
  %43 = ptrtoint ptr %pressure to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or6.i.i.i46, ptr %pressure, align 4
  br label %ms5611_i2c_read_adc.exit49

ms5611_i2c_read_adc.exit49:                       ; preds = %if.end.i47, %if.end12.ms5611_i2c_read_adc.exit49_crit_edge
  %retval.0.i48 = phi i32 [ 0, %if.end.i47 ], [ %call.i38, %if.end12.ms5611_i2c_read_adc.exit49_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i37) #5
  br label %cleanup

cleanup:                                          ; preds = %ms5611_i2c_read_adc.exit49, %if.end6.cleanup_crit_edge, %ms5611_i2c_read_adc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i48, %ms5611_i2c_read_adc.exit49 ], [ %call, %entry.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ], [ %call.i, %ms5611_i2c_read_adc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms5611_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ms5611_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_ms5611_i2c__288_138_ms5611_driver_init6, !1, !"__initcall__kmod_ms5611_i2c__288_138_ms5611_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/ms5611_i2c.c", i32 138, i32 1}
!2 = !{ptr @__exitcall_ms5611_driver_exit, !1, !"__exitcall_ms5611_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/pressure/ms5611_i2c.c", i32 140, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/pressure/ms5611_i2c.c", i32 141, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/pressure/ms5611_i2c.c", i32 142, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/pressure/ms5611_i2c.c", i32 131, i32 11}
!12 = !{ptr @ms5611_driver, !13, !"ms5611_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/pressure/ms5611_i2c.c", i32 129, i32 26}
!14 = !{ptr @ms5611_i2c_matches, !15, !"ms5611_i2c_matches", i1 false, i1 false}
!15 = !{!"../drivers/iio/pressure/ms5611_i2c.c", i32 115, i32 34}
!16 = !{ptr @ms5611_id, !17, !"ms5611_id", i1 false, i1 false}
!17 = !{!"../drivers/iio/pressure/ms5611_i2c.c", i32 122, i32 35}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
