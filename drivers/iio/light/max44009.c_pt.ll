; ModuleID = '/llk/IR_all_yes/drivers/iio/light/max44009.c_pt.bc'
source_filename = "../drivers/iio/light/max44009.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
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
%struct.max44009_data = type { ptr, %struct.mutex }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_max44009__288_544_max44009_driver_init6 = internal global ptr @max44009_driver_init, section ".initcall6.init", align 4
@max44009_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max44009_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max44009_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max44009_driver_exit = internal global ptr @max44009_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [58 x i8] c"max44009.author=Robert Eshleman <bobbyeshleman@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [41 x i8] c"max44009.file=drivers/iio/light/max44009\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [24 x i8] c"max44009.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [58 x i8] c"max44009.description=MAX44009 ambient light sensor driver\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max44009\00", [23 x i8] zeroinitializer }, align 32
@max44009_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max44009\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max44009_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @max44009_attribute_group, ptr @max44009_read_raw, ptr null, ptr null, ptr @max44009_write_raw, ptr null, ptr @max44009_write_raw_get_fmt, ptr @max44009_read_event_config, ptr @max44009_write_event_config, ptr @max44009_read_event_value, ptr @max44009_write_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@max44009_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262146, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max44009_event_spec, i32 2, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@max44009_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max44009_event\00", [17 x i8] zeroinitializer }, align 32
@max44009_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @max44009_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@max44009_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_illuminance_integration_time_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_illuminance_integration_time_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @max44009_int_time_str, %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@max44009_int_time_str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"0.8 0.4 0.2 0.1 0.05 0.025 0.0125 0.00625\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"illuminance_integration_time_available\00", [57 x i8] zeroinitializer }, align 32
@max44009_int_time_ns_array = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 800000000, i32 400000000, i32 200000000, i32 100000000, i32 50000000, i32 25000000, i32 12500000, i32 6250000], [32 x i8] zeroinitializer }, align 32
@max44009_event_spec = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 18]
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"max44009_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 537, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 539, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"max44009_id\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 531, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"max44009_info\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 459, i32 30 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"max44009_channels\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 99, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 509, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 522, i32 7 }
@___asan_gen_.28 = private unnamed_addr constant [25 x i8] c"max44009_attribute_group\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 295, i32 37 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"max44009_attributes\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 290, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant [54 x i8] c"iio_const_attr_illuminance_integration_time_available\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"max44009_int_time_str\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 69, i32 19 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 287, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant [27 x i8] c"max44009_int_time_ns_array\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 58, i32 18 }
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"max44009_event_spec\00", align 1
@___asan_gen_.47 = private constant [32 x i8] c"../drivers/iio/light/max44009.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 84, i32 36 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_max44009_driver_exit, ptr @__initcall__kmod_max44009__288_544_max44009_driver_init6, ptr @max44009_driver_exit, ptr @max44009_driver, ptr @.str, ptr @max44009_id, ptr @max44009_info, ptr @max44009_channels, ptr @max44009_probe.__key, ptr @.str.1, ptr @.str.2, ptr @max44009_attribute_group, ptr @max44009_attributes, ptr @iio_const_attr_illuminance_integration_time_available, ptr @max44009_int_time_str, ptr @.str.3, ptr @max44009_int_time_ns_array, ptr @max44009_event_spec], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44009_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44009_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44009_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44009_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44009_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44009_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44009_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_illuminance_integration_time_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44009_int_time_str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44009_int_time_ns_array to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44009_event_spec to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max44009_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max44009_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max44009_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @max44009_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max44009_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 96) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %1, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @max44009_info, ptr %info, align 8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %call, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @max44009_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %num_channels, align 4
  %lock = getelementptr inbounds %struct.max44009_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max44009_probe.__key) #5
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6 = icmp sgt i32 %10, 0
  br i1 %cmp6, label %if.then7, label %if.end5.if.end14_crit_edge

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then7:                                         ; preds = %if.end5
  %call10 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %10, ptr noundef null, ptr noundef nonnull @max44009_threaded_irq_handler, i32 noundef 8322, ptr noundef nonnull @.str.2, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then7.cleanup_crit_edge, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.then7.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %call16 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end14 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call10, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max44009_threaded_irq_handler(i32 noundef %irq, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i64 @iio_get_time_ns(ptr noundef %p) #5
  %call3 = tail call i32 @iio_push_event(ptr noundef %p, i64 noundef 25769803776, i64 noundef %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max44009_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %hireg.i = alloca i8, align 1
  %loreg.i = alloca i8, align 1
  %lo.i = alloca i8, align 1
  %hi.i = alloca i8, align 1
  %msgs.i = alloca [4 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 18, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cond14 = icmp eq i32 %4, 6
  br i1 %cond14, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hireg.i) #5
  %5 = ptrtoint ptr %hireg.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %hireg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %loreg.i) #5
  %6 = ptrtoint ptr %loreg.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %loreg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lo.i) #5
  %7 = ptrtoint ptr %lo.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %lo.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hi.i) #5
  %8 = ptrtoint ptr %hi.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %hi.i, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %msgs.i) #5
  %9 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 40)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr1.i, align 2
  %15 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %9, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %hireg.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %19 = load i16, ptr %addr1.i, align 2
  %20 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %21 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %22 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %23 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %hi.i, ptr %buf7.i, align 4
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 2
  %24 = load i16, ptr %addr1.i, align 2
  %25 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %arrayinit.element8.i, align 4
  %flags12.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 2, i32 1
  %26 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags12.i, align 2
  %len13.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 2, i32 2
  %27 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %len13.i, align 4
  %buf14.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 2, i32 3
  %28 = ptrtoint ptr %buf14.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %loreg.i, ptr %buf14.i, align 4
  %arrayinit.element15.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 3
  %29 = load i16, ptr %addr1.i, align 2
  %30 = ptrtoint ptr %arrayinit.element15.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %arrayinit.element15.i, align 4
  %flags19.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 3, i32 1
  %31 = ptrtoint ptr %flags19.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags19.i, align 2
  %len20.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 3, i32 2
  %32 = ptrtoint ptr %len20.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %len20.i, align 4
  %buf21.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 3, i32 3
  %33 = ptrtoint ptr %buf21.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %lo.i, ptr %buf21.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %34 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msgs.i, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 4
  br i1 %cmp.not.i, label %max44009_read_lux_raw.exit, label %max44009_read_lux_raw.exit.thread

max44009_read_lux_raw.exit.thread:                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %msgs.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hi.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lo.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %loreg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hireg.i) #5
  br label %cleanup

max44009_read_lux_raw.exit:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %hi.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %hi.i, align 1
  %38 = ptrtoint ptr %lo.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %lo.i, align 1
  %conv.i.i = zext i8 %37 to i32
  %and.i.i = shl nuw nsw i32 %conv.i.i, 4
  %shl.i.i = and i32 %and.i.i, 240
  %40 = and i8 %39, 15
  %and2.i.i = zext i8 %40 to i32
  %or.i.i = or i32 %shl.i.i, %and2.i.i
  %41 = lshr i32 %conv.i.i, 4
  %mul.i.i = shl i32 %or.i.i, %41
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %msgs.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hi.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lo.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %loreg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hireg.i) #5
  %mul = mul nuw nsw i32 %mul.i.i, 45
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul, ptr %val, align 4
  %43 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %44 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %45)
  %cond = icmp eq i32 %45, 6
  br i1 %cond, label %sw.bb5, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb3
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %call.i24 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %cmp.i = icmp slt i32 %call.i24, 0
  br i1 %cmp.i, label %sw.bb5.cleanup_crit_edge, label %max44009_read_int_time.exit

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

max44009_read_int_time.exit:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %call.i24, 7
  %arrayidx.i = getelementptr [8 x i32], ptr @max44009_int_time_ns_array, i32 0, i32 %and.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %50 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %val2, align 4
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %max44009_read_int_time.exit, %sw.bb5.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %max44009_read_lux_raw.exit, %max44009_read_lux_raw.exit.thread, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %max44009_read_int_time.exit ], [ 10, %max44009_read_lux_raw.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -5, %max44009_read_lux_raw.exit.thread ], [ %call.i24, %sw.bb5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max44009_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %mask)
  %cmp = icmp eq i32 %mask, 18
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp1 = icmp eq i32 %3, 6
  br i1 %cmp1, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %lock = getelementptr inbounds %struct.max44009_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %mul.i = mul i32 %val, 1000000000
  %add.i = add i32 %mul.i, %val2
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000000, i32 %add.i)
  %cmp9.not.i = icmp slt i32 %add.i, 600000000
  br i1 %cmp9.not.i, label %for.cond.1.i, label %if.then.for.end.i_crit_edge

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.1.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000000, i32 %add.i)
  %cmp9.not.1.i = icmp slt i32 %add.i, 300000000
  br i1 %cmp9.not.1.i, label %for.cond.2.i, label %for.cond.1.i.for.end.i_crit_edge

for.cond.1.i.for.end.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %add.i)
  %cmp9.not.2.i = icmp slt i32 %add.i, 150000000
  br i1 %cmp9.not.2.i, label %for.cond.3.i, label %for.cond.2.i.for.end.i_crit_edge

for.cond.2.i.for.end.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 75000000, i32 %add.i)
  %cmp9.not.3.i = icmp slt i32 %add.i, 75000000
  br i1 %cmp9.not.3.i, label %for.cond.4.i, label %for.cond.3.i.for.end.i_crit_edge

for.cond.3.i.for.end.i_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 37500000, i32 %add.i)
  %cmp9.not.4.i = icmp slt i32 %add.i, 37500000
  br i1 %cmp9.not.4.i, label %for.cond.5.i, label %for.cond.4.i.for.end.i_crit_edge

for.cond.4.i.for.end.i_crit_edge:                 ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18750000, i32 %add.i)
  %cmp9.not.5.i = icmp slt i32 %add.i, 18750000
  br i1 %cmp9.not.5.i, label %for.cond.6.i, label %for.cond.5.i.for.end.i_crit_edge

for.cond.5.i.for.end.i_crit_edge:                 ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 9375000, i32 %add.i)
  %cmp9.not.6.i = icmp slt i32 %add.i, 9375000
  %spec.select.i = select i1 %cmp9.not.6.i, i32 7, i32 6
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.6.i, %for.cond.5.i.for.end.i_crit_edge, %for.cond.4.i.for.end.i_crit_edge, %for.cond.3.i.for.end.i_crit_edge, %for.cond.2.i.for.end.i_crit_edge, %for.cond.1.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %__fc_i.0.lcssa.i = phi i32 [ 0, %if.then.for.end.i_crit_edge ], [ 1, %for.cond.1.i.for.end.i_crit_edge ], [ 2, %for.cond.2.i.for.end.i_crit_edge ], [ 3, %for.cond.3.i.for.end.i_crit_edge ], [ 4, %for.cond.4.i.for.end.i_crit_edge ], [ 5, %for.cond.5.i.for.end.i_crit_edge ], [ %spec.select.i, %for.cond.6.i ]
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12.i = icmp slt i32 %call.i, 0
  br i1 %cmp12.i, label %for.end.i.max44009_write_int_time.exit_crit_edge, label %if.end15.i

for.end.i.max44009_write_int_time.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max44009_write_int_time.exit

if.end15.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %call.i, %__fc_i.0.lcssa.i
  %6 = trunc i32 %and.i to i8
  %conv16.i = or i8 %6, 64
  %call17.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 2, i8 noundef zeroext %conv16.i) #5
  br label %max44009_write_int_time.exit

max44009_write_int_time.exit:                     ; preds = %if.end15.i, %for.end.i.max44009_write_int_time.exit_crit_edge
  %retval.0.i = phi i32 [ %call17.i, %if.end15.i ], [ %call.i, %for.end.i.max44009_write_int_time.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %max44009_write_int_time.exit, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %max44009_write_int_time.exit ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max44009_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max44009_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.not = icmp eq i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp2.not = icmp eq i32 %type, 0
  %or.cond = and i1 %cmp2.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max44009_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.not = icmp eq i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp2.not = icmp eq i32 %type, 0
  %or.cond = and i1 %cmp2.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %conv = trunc i32 %state to i8
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 7, i8 noundef zeroext 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max44009_read_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.not = icmp eq i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp2.not = icmp eq i32 %type, 0
  %or.cond = and i1 %cmp2.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %switch.selectcmp.i.i = icmp eq i32 %dir, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 6, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %switch.selectcmp2.i.i = icmp eq i32 %dir, 1
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 5, i32 %switch.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.select3.i.i)
  %cmp.i = icmp slt i32 %switch.select3.i.i, 0
  br i1 %cmp.i, label %max44009_read_threshold.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %conv.i = trunc i32 %switch.select3.i.i to i8
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %max44009_read_threshold.exit.thread11

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

max44009_read_threshold.exit.thread11:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = shl i32 %call2.i, 4
  %shl.i = and i32 %and.i, 240
  %add.i = or i32 %shl.i, 15
  %spec.select.i = select i1 %switch.selectcmp2.i.i, i32 %add.i, i32 %shl.i
  %and11.i = lshr i32 %call2.i, 4
  %6 = and i32 %and11.i, 15
  %mul.i = shl i32 %spec.select.i, %6
  %phi.bo = mul nuw nsw i32 %mul.i, 45
  br label %if.end5

max44009_read_threshold.exit:                     ; preds = %if.end
  br i1 %switch.selectcmp.i.i, label %max44009_read_threshold.exit.if.end5_crit_edge, label %max44009_read_threshold.exit.cleanup_crit_edge

max44009_read_threshold.exit.cleanup_crit_edge:   ; preds = %max44009_read_threshold.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

max44009_read_threshold.exit.if.end5_crit_edge:   ; preds = %max44009_read_threshold.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end5:                                          ; preds = %max44009_read_threshold.exit.if.end5_crit_edge, %max44009_read_threshold.exit.thread11
  %retval.0.i14 = phi i32 [ %phi.bo, %max44009_read_threshold.exit.thread11 ], [ 270, %max44009_read_threshold.exit.if.end5_crit_edge ]
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i14, ptr %val, align 4
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %max44009_read_threshold.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %max44009_read_threshold.exit.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max44009_write_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %info)
  %cmp.not = icmp eq i32 %info, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp2.not = icmp eq i32 %3, 6
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp.i = icmp slt i32 %val, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val2)
  %cmp1.i = icmp slt i32 %val2, 1
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7520256, i32 %val)
  %cmp2.i = icmp sgt i32 %val, 7520256
  %or.cond25.i = or i1 %cmp2.i, %or.cond.i
  br i1 %or.cond25.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false3.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false3.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7520256, i32 %val)
  %cmp4.i = icmp ne i32 %val, 7520256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp6.not.i = icmp eq i32 %val2, 0
  %or.cond26.i = or i1 %cmp4.i, %cmp6.not.i
  br i1 %or.cond26.i, label %if.end.i, label %lor.lhs.false3.i.cleanup_crit_edge

lor.lhs.false3.i.cleanup_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %mul.i = mul i32 %val, 1000
  %div.i = sdiv i32 %mul.i, 45
  %div7.i = sdiv i32 %val2, 1000000
  %mul8.i = mul nsw i32 %div7.i, 22
  %add.i = add nsw i32 %mul8.i, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.i)
  %cmp928.i = icmp sgt i32 %add.i, 255
  br i1 %cmp928.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.max44009_threshold_byte_from_fraction.exit_crit_edge

if.end.i.max44009_threshold_byte_from_fraction.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max44009_threshold_byte_from_fraction.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %exp.030.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %mantissa.029.i = phi i32 [ %shr27.i, %for.body.i.for.body.i_crit_edge ], [ %add.i, %if.end.i.for.body.i_crit_edge ]
  %shr27.i = lshr i32 %mantissa.029.i, 1
  %inc.i = add nuw nsw i32 %exp.030.i, 1
  %cmp9.i = icmp ugt i32 %mantissa.029.i, 511
  br i1 %cmp9.i, label %for.body.i.for.body.i_crit_edge, label %for.end.loopexit.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.bo.i = shl i32 %inc.i, 4
  br label %max44009_threshold_byte_from_fraction.exit

max44009_threshold_byte_from_fraction.exit:       ; preds = %for.end.loopexit.i, %if.end.i.max44009_threshold_byte_from_fraction.exit_crit_edge
  %mantissa.0.lcssa.i = phi i32 [ %add.i, %if.end.i.max44009_threshold_byte_from_fraction.exit_crit_edge ], [ %shr27.i, %for.end.loopexit.i ]
  %exp.0.lcssa.i = phi i32 [ 0, %if.end.i.max44009_threshold_byte_from_fraction.exit_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %4 = lshr i32 %mantissa.0.lcssa.i, 4
  %and.i = and i32 %4, 15
  %or.i = or i32 %and.i, %exp.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp4 = icmp slt i32 %or.i, 0
  br i1 %cmp4, label %max44009_threshold_byte_from_fraction.exit.cleanup_crit_edge, label %if.end6

max44009_threshold_byte_from_fraction.exit.cleanup_crit_edge: ; preds = %max44009_threshold_byte_from_fraction.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %max44009_threshold_byte_from_fraction.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %switch.selectcmp.i = icmp eq i32 %dir, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 6, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %switch.selectcmp2.i = icmp eq i32 %dir, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 5, i32 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.select3.i)
  %cmp8 = icmp slt i32 %switch.select3.i, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %conv = trunc i32 %switch.select3.i to i8
  %conv11 = trunc i32 %or.i to i8
  %call12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext %conv, i8 noundef zeroext %conv11) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %max44009_threshold_byte_from_fraction.exit.cleanup_crit_edge, %lor.lhs.false3.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end10 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %or.i, %max44009_threshold_byte_from_fraction.exit.cleanup_crit_edge ], [ %switch.select.i, %if.end6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_max44009__288_544_max44009_driver_init6, !1, !"__initcall__kmod_max44009__288_544_max44009_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/max44009.c", i32 544, i32 1}
!2 = !{ptr @__exitcall_max44009_driver_exit, !1, !"__exitcall_max44009_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/max44009.c", i32 552, i32 1}
!5 = !{ptr @__UNIQUE_ID_file290, !6, !"__UNIQUE_ID_file290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/max44009.c", i32 553, i32 1}
!7 = !{ptr @__UNIQUE_ID_license291, !6, !"__UNIQUE_ID_license291", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description292, !9, !"__UNIQUE_ID_description292", i1 false, i1 false}
!9 = !{!"../drivers/iio/light/max44009.c", i32 554, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/max44009.c", i32 539, i32 11}
!12 = !{ptr @max44009_driver, !13, !"max44009_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/max44009.c", i32 537, i32 26}
!14 = !{ptr @max44009_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/max44009.c", i32 509, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/max44009.c", i32 522, i32 7}
!19 = !{ptr @max44009_info, !20, !"max44009_info", i1 false, i1 false}
!20 = !{!"../drivers/iio/light/max44009.c", i32 459, i32 30}
!21 = !{ptr @max44009_attribute_group, !22, !"max44009_attribute_group", i1 false, i1 false}
!22 = !{!"../drivers/iio/light/max44009.c", i32 295, i32 37}
!23 = !{ptr @max44009_attributes, !24, !"max44009_attributes", i1 false, i1 false}
!24 = !{!"../drivers/iio/light/max44009.c", i32 290, i32 26}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/max44009.c", i32 287, i32 8}
!27 = !{ptr @iio_const_attr_illuminance_integration_time_available, !26, !"iio_const_attr_illuminance_integration_time_available", i1 false, i1 false}
!28 = !{ptr @max44009_int_time_str, !29, !"max44009_int_time_str", i1 false, i1 false}
!29 = !{!"../drivers/iio/light/max44009.c", i32 69, i32 19}
!30 = !{ptr @max44009_int_time_ns_array, !31, !"max44009_int_time_ns_array", i1 false, i1 false}
!31 = !{!"../drivers/iio/light/max44009.c", i32 58, i32 18}
!32 = !{ptr @max44009_channels, !33, !"max44009_channels", i1 false, i1 false}
!33 = !{!"../drivers/iio/light/max44009.c", i32 99, i32 35}
!34 = !{ptr @max44009_event_spec, !35, !"max44009_event_spec", i1 false, i1 false}
!35 = !{!"../drivers/iio/light/max44009.c", i32 84, i32 36}
!36 = !{ptr @max44009_id, !37, !"max44009_id", i1 false, i1 false}
!37 = !{!"../drivers/iio/light/max44009.c", i32 531, i32 35}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
