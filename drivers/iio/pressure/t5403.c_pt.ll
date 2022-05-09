; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/t5403.c_pt.bc'
source_filename = "../drivers/iio/pressure/t5403.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.t5403_data = type { ptr, %struct.mutex, i32, [10 x i16] }

@__initcall__kmod_t5403__288_266_t5403_driver_init6 = internal global ptr @t5403_driver_init, section ".initcall6.init", align 4
@t5403_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @t5403_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @t5403_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_t5403_driver_exit = internal global ptr @t5403_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [48 x i8] c"t5403.author=Peter Meerwald <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [65 x i8] c"t5403.description=EPCOS T5403 pressure/temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [38 x i8] c"t5403.file=drivers/iio/pressure/t5403\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [18 x i8] c"t5403.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"t5403\00", [26 x i8] zeroinitializer }, align 32
@t5403_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"t5403\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@t5403_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@t5403_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @t5403_attribute_group, ptr @t5403_read_raw, ptr null, ptr null, ptr @t5403_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@t5403_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262146, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@t5403_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @t5403_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@t5403_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_integration_time_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_integration_time_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.2, %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0.002 0.008 0.016 0.066\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"integration_time_available\00", [37 x i8] zeroinitializer }, align 32
@t5403_pressure_conv_ms = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 8, i32 16, i32 66], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 18]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 2000, i64 8000, i64 16000, i64 66000]
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"t5403_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 259, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 261, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [9 x i8] c"t5403_id\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 253, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 234, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"t5403_info\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 205, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"t5403_channels\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 182, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"t5403_attribute_group\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 201, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"t5403_attributes\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 196, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant [42 x i8] c"iio_const_attr_integration_time_available\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 194, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant [23 x i8] c"t5403_pressure_conv_ms\00", align 1
@___asan_gen_.43 = private constant [32 x i8] c"../drivers/iio/pressure/t5403.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 36, i32 18 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_t5403_driver_exit, ptr @__initcall__kmod_t5403__288_266_t5403_driver_init6, ptr @t5403_driver_exit, ptr @t5403_driver, ptr @.str, ptr @t5403_id, ptr @t5403_probe.__key, ptr @.str.1, ptr @t5403_info, ptr @t5403_channels, ptr @t5403_attribute_group, ptr @t5403_attributes, ptr @iio_const_attr_integration_time_available, ptr @.str.2, ptr @.str.3, ptr @t5403_pressure_conv_ms], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t5403_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t5403_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t5403_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t5403_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t5403_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t5403_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t5403_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_integration_time_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t5403_pressure_conv_ms to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @t5403_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @t5403_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @t5403_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @t5403_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t5403_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #4
  %and.i = and i32 %call.i.i, 207618048
  call void @__sanitizer_cov_trace_const_cmp4(i32 207618048, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 207618048
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -120) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and = and i32 %call1, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 119, i32 %and)
  %cmp4.not = icmp eq i32 %and, 119
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call7 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 120) #4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %7, align 4
  %lock = getelementptr inbounds %struct.t5403_data, ptr %7, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @t5403_probe.__key) #4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7, ptr %driver_data.i.i, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 17
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @t5403_info, ptr %info, align 8
  %name13 = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 15
  %11 = ptrtoint ptr %name13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %id, ptr %name13, align 8
  %12 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %call7, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 13
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @t5403_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 14
  %14 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %num_channels, align 4
  %mode = getelementptr inbounds %struct.t5403_data, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %mode, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 4
  %c = getelementptr inbounds %struct.t5403_data, ptr %7, i32 0, i32 3
  %call16 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %17, i8 noundef zeroext -114, i8 noundef zeroext 20, ptr noundef %c) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end10.cleanup_crit_edge, label %if.end19

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call7, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end19 ], [ -95, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -19, %if.end3.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %call16, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t5403_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 18, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 17, label %sw.bb1
    i32 9, label %sw.bb3
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %lock.i = getelementptr inbounds %struct.t5403_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call19.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -15, i8 noundef zeroext 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %cmp20.i.i = icmp slt i32 %call19.i.i, 0
  br i1 %cmp20.i.i, label %sw.bb1.t5403_comp_pressure.exit_crit_edge, label %t5403_read.exit.i

sw.bb1.t5403_comp_pressure.exit_crit_edge:        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %t5403_comp_pressure.exit

t5403_read.exit.i:                                ; preds = %sw.bb1
  tail call void @msleep(i32 noundef 5) #4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call10.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %9, i8 noundef zeroext -11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp.i, label %t5403_read.exit.i.t5403_comp_pressure.exit_crit_edge, label %if.end.i

t5403_read.exit.i.t5403_comp_pressure.exit_crit_edge: ; preds = %t5403_read.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %t5403_comp_pressure.exit

if.end.i:                                         ; preds = %t5403_read.exit.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %mode.i.i = getelementptr inbounds %struct.t5403_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode.i.i, align 4
  %.tr.i.i = trunc i32 %13 to i8
  %14 = shl i8 %.tr.i.i, 3
  %phi.cast.i.i = or i8 %14, 1
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -15, i8 noundef zeroext %phi.cast.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.t5403_comp_pressure.exit_crit_edge, label %t5403_read.exit138.i

if.end.i.t5403_comp_pressure.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %t5403_comp_pressure.exit

t5403_read.exit138.i:                             ; preds = %if.end.i
  %15 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @t5403_pressure_conv_ms, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i.i = add i32 %18, 3
  tail call void @msleep(i32 noundef %phi.bo.i.i) #4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call10.i135.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %20, i8 noundef zeroext -11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i135.i)
  %cmp2.i = icmp slt i32 %call10.i135.i, 0
  br i1 %cmp2.i, label %t5403_read.exit138.i.t5403_comp_pressure.exit_crit_edge, label %if.end5.i

t5403_read.exit138.i.t5403_comp_pressure.exit_crit_edge: ; preds = %t5403_read.exit138.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %t5403_comp_pressure.exit

if.end5.i:                                        ; preds = %t5403_read.exit138.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.t5403_data, ptr %1, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #4
  %conv7.i = zext i16 %23 to i32
  %arrayidx9.i = getelementptr %struct.t5403_data, ptr %1, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx9.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #4
  %conv10.i = zext i16 %26 to i32
  %sext.i = shl i32 %call10.i.i, 16
  %conv11.i = ashr exact i32 %sext.i, 16
  %mul.i = mul nsw i32 %conv11.i, %conv10.i
  %div.i = sdiv i32 %mul.i, 131072
  %add.i = add nsw i32 %div.i, %conv7.i
  %arrayidx13.i = getelementptr %struct.t5403_data, ptr %1, i32 0, i32 3, i32 4
  %27 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx13.i, align 4
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #4
  %shr.i.i = sext i16 %29 to i32
  %mul17.i = mul nsw i32 %conv11.i, %shr.i.i
  %div18.i = sdiv i32 %mul17.i, 32768
  %mul20.i = mul nsw i32 %div18.i, %conv11.i
  %div21.i = sdiv i32 %mul20.i, 524288
  %add22.i = add nsw i32 %add.i, %div21.i
  %arrayidx24.i = getelementptr %struct.t5403_data, ptr %1, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx24.i, align 4
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #4
  %shr.i124.i = sext i16 %32 to i32
  %mul28.i = mul nsw i32 %conv11.i, %shr.i124.i
  %div29.i = sdiv i32 %mul28.i, 32768
  %mul31.i = mul nsw i32 %div29.i, %conv11.i
  %div32.i = sdiv i32 %mul31.i, 32768
  %mul34.i = mul nsw i32 %div32.i, %conv11.i
  %div35.i = sdiv i32 %mul34.i, 65536
  %add36.i = add nsw i32 %add22.i, %div35.i
  %arrayidx38.i = getelementptr %struct.t5403_data, ptr %1, i32 0, i32 3, i32 5
  %33 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx38.i, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #4
  %shr.i126.i = sext i16 %35 to i32
  %mul41.i = shl nsw i32 %shr.i126.i, 14
  %arrayidx43.i = getelementptr %struct.t5403_data, ptr %1, i32 0, i32 3, i32 6
  %36 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx43.i, align 4
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #4
  %shr.i128.i = sext i16 %38 to i32
  %mul47.i = mul nsw i32 %conv11.i, %shr.i128.i
  %div48.i = sdiv i32 %mul47.i, 8
  %add49.i = add nsw i32 %div48.i, %mul41.i
  %arrayidx51.i = getelementptr %struct.t5403_data, ptr %1, i32 0, i32 3, i32 7
  %39 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx51.i, align 2
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #4
  %shr.i130.i = sext i16 %41 to i32
  %mul55.i = mul nsw i32 %conv11.i, %shr.i130.i
  %div56.i = sdiv i32 %mul55.i, 32768
  %mul58.i = mul nsw i32 %div56.i, %conv11.i
  %div59.i = sdiv i32 %mul58.i, 16
  %div70.i = sdiv i32 %mul31.i, 65536
  %mul72.i = mul nsw i32 %div70.i, %conv11.i
  %conv74.i = and i32 %call10.i135.i, 65535
  %mul75.i = mul i32 %add36.i, %conv74.i
  %add60.i = add i32 %add49.i, %mul72.i
  %add73.i = add i32 %add60.i, %div59.i
  %add76.i = add i32 %add73.i, %mul75.i
  %div77.i = sdiv i32 %add76.i, 16384
  %sub.i = add nsw i32 %div77.i, -75000
  %mul79.i = mul i32 %sub.i, %sub.i
  %div80.i = sdiv i32 %mul79.i, 65536
  %sub81.i = add nsw i32 %div80.i, -9537
  %arrayidx83.i = getelementptr %struct.t5403_data, ptr %1, i32 0, i32 3, i32 9
  %42 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx83.i, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #4
  %shr.i134.i = sext i16 %44 to i32
  %mul86.i = mul nsw i32 %sub81.i, %shr.i134.i
  %div87.i = sdiv i32 %mul86.i, 65536
  %add88.i = add nsw i32 %div87.i, %div77.i
  %add88.i.frozen = freeze i32 %add88.i
  %div89.i = sdiv i32 %add88.i.frozen, 1000
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div89.i, ptr %val, align 4
  %46 = mul i32 %div89.i, 1000
  %rem.i.decomposed = sub i32 %add88.i.frozen, %46
  %mul90.i = mul nsw i32 %rem.i.decomposed, 1000
  %47 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul90.i, ptr %val2, align 4
  br label %t5403_comp_pressure.exit

t5403_comp_pressure.exit:                         ; preds = %if.end5.i, %t5403_read.exit138.i.t5403_comp_pressure.exit_crit_edge, %if.end.i.t5403_comp_pressure.exit_crit_edge, %t5403_read.exit.i.t5403_comp_pressure.exit_crit_edge, %sw.bb1.t5403_comp_pressure.exit_crit_edge
  %ret.0.i = phi i32 [ %call10.i.i, %t5403_read.exit.i.t5403_comp_pressure.exit_crit_edge ], [ %call10.i135.i, %t5403_read.exit138.i.t5403_comp_pressure.exit_crit_edge ], [ %call10.i135.i, %if.end5.i ], [ %call19.i.i, %sw.bb1.t5403_comp_pressure.exit_crit_edge ], [ %call.i.i, %if.end.i.t5403_comp_pressure.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  %call2. = select i1 %cmp, i32 %ret.0.i, i32 2
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  %lock.i19 = getelementptr inbounds %struct.t5403_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i19, i32 noundef 0) #4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call19.i.i20 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext -15, i8 noundef zeroext 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i20)
  %cmp20.i.i21 = icmp slt i32 %call19.i.i20, 0
  br i1 %cmp20.i.i21, label %sw.bb3.t5403_comp_temp.exit_crit_edge, label %t5403_read.exit.i24

sw.bb3.t5403_comp_temp.exit_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %t5403_comp_temp.exit

t5403_read.exit.i24:                              ; preds = %sw.bb3
  tail call void @msleep(i32 noundef 5) #4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call10.i.i22 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %51, i8 noundef zeroext -11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i22)
  %cmp.i23 = icmp slt i32 %call10.i.i22, 0
  br i1 %cmp.i23, label %t5403_read.exit.i24.t5403_comp_temp.exit_crit_edge, label %if.end.i29

t5403_read.exit.i24.t5403_comp_temp.exit_crit_edge: ; preds = %t5403_read.exit.i24
  call void @__sanitizer_cov_trace_pc() #6
  br label %t5403_comp_temp.exit

if.end.i29:                                       ; preds = %t5403_read.exit.i24
  call void @__sanitizer_cov_trace_pc() #6
  %c.i = getelementptr inbounds %struct.t5403_data, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %c.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %c.i, align 4
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #4
  %conv1.i = zext i16 %54 to i32
  %sext.i25 = shl i32 %call10.i.i22, 16
  %conv2.i = ashr exact i32 %sext.i25, 16
  %mul.i26 = mul nsw i32 %conv2.i, %conv1.i
  %div.i27 = sdiv i32 %mul.i26, 256
  %arrayidx4.i = getelementptr %struct.t5403_data, ptr %1, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx4.i, align 2
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #4
  %conv5.i = zext i16 %57 to i32
  %mul6.i = shl nuw nsw i32 %conv5.i, 6
  %add.i28 = add nsw i32 %div.i27, %mul6.i
  %mul7.i = mul i32 %add.i28, 1000
  %div8.i = sdiv i32 %mul7.i, 65536
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div8.i, ptr %val, align 4
  br label %t5403_comp_temp.exit

t5403_comp_temp.exit:                             ; preds = %if.end.i29, %t5403_read.exit.i24.t5403_comp_temp.exit_crit_edge, %sw.bb3.t5403_comp_temp.exit_crit_edge
  %retval.0.i18.i = phi i32 [ %call10.i.i22, %t5403_read.exit.i24.t5403_comp_temp.exit_crit_edge ], [ %call10.i.i22, %if.end.i29 ], [ %call19.i.i20, %sw.bb3.t5403_comp_temp.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i18.i)
  %cmp5 = icmp slt i32 %retval.0.i18.i, 0
  %call4. = select i1 %cmp5, i32 %retval.0.i18.i, i32 1
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %val, align 4
  %mode = getelementptr inbounds %struct.t5403_data, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mode, align 4
  %arrayidx = getelementptr [4 x i32], ptr @t5403_pressure_conv_ms, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %63, 1000
  %64 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %t5403_comp_temp.exit, %t5403_comp_pressure.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb8 ], [ %call2., %t5403_comp_pressure.exit ], [ %call4., %t5403_comp_temp.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t5403_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %mask)
  %cond = icmp eq i32 %mask, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.not = icmp eq i32 %val, 0
  %or.cond = and i1 %cmp.not, %cond
  br i1 %or.cond, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %val2, label %for.body.preheader.cleanup_crit_edge [
    i32 2000, label %for.body.preheader.if.then3_crit_edge
    i32 8000, label %if.then3.fold.split
    i32 16000, label %if.then3.fold.split15
    i32 66000, label %if.then3.fold.split16
  ]

for.body.preheader.if.then3_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3.fold.split:                              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3.fold.split15:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3.fold.split16:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3:                                         ; preds = %if.then3.fold.split16, %if.then3.fold.split15, %if.then3.fold.split, %for.body.preheader.if.then3_crit_edge
  %i.013.lcssa = phi i32 [ 0, %for.body.preheader.if.then3_crit_edge ], [ 1, %if.then3.fold.split ], [ 2, %if.then3.fold.split15 ], [ 3, %if.then3.fold.split16 ]
  %lock = getelementptr inbounds %struct.t5403_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %mode = getelementptr inbounds %struct.t5403_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %i.013.lcssa, ptr %mode, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_t5403__288_266_t5403_driver_init6, !1, !"__initcall__kmod_t5403__288_266_t5403_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/t5403.c", i32 266, i32 1}
!2 = !{ptr @__exitcall_t5403_driver_exit, !1, !"__exitcall_t5403_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/pressure/t5403.c", i32 268, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/pressure/t5403.c", i32 269, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/pressure/t5403.c", i32 270, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/pressure/t5403.c", i32 261, i32 11}
!12 = !{ptr @t5403_driver, !13, !"t5403_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/pressure/t5403.c", i32 259, i32 26}
!14 = !{ptr @t5403_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/pressure/t5403.c", i32 234, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @t5403_info, !18, !"t5403_info", i1 false, i1 false}
!18 = !{!"../drivers/iio/pressure/t5403.c", i32 205, i32 30}
!19 = !{ptr @t5403_attribute_group, !20, !"t5403_attribute_group", i1 false, i1 false}
!20 = !{!"../drivers/iio/pressure/t5403.c", i32 201, i32 37}
!21 = !{ptr @t5403_attributes, !22, !"t5403_attributes", i1 false, i1 false}
!22 = !{!"../drivers/iio/pressure/t5403.c", i32 196, i32 26}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/pressure/t5403.c", i32 194, i32 8}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @iio_const_attr_integration_time_available, !24, !"iio_const_attr_integration_time_available", i1 false, i1 false}
!27 = !{ptr @t5403_pressure_conv_ms, !28, !"t5403_pressure_conv_ms", i1 false, i1 false}
!28 = !{!"../drivers/iio/pressure/t5403.c", i32 36, i32 18}
!29 = !{ptr @t5403_channels, !30, !"t5403_channels", i1 false, i1 false}
!30 = !{!"../drivers/iio/pressure/t5403.c", i32 182, i32 35}
!31 = !{ptr @t5403_id, !32, !"t5403_id", i1 false, i1 false}
!32 = !{!"../drivers/iio/pressure/t5403.c", i32 253, i32 35}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
