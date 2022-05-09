; ModuleID = '/llk/IR_all_yes/drivers/iio/dummy/iio_simple_dummy.c_pt.bc'
source_filename = "../drivers/iio/dummy/iio_simple_dummy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iio_sw_device_type = type { ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.iio_sw_device_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dummy_accel_calibscale = type { i32, i32, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iio_dummy_state = type { i32, i32, [2 x i32], i32, i32, i32, i32, ptr, %struct.mutex, ptr, i32, i32, i32, i32, i32, i8, i64 }
%struct.iio_sw_device = type { ptr, ptr, %struct.config_group }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }

@__initcall__kmod_iio_dummy__183_714_iio_dummy_device_init6 = internal global ptr @iio_dummy_device_init, section ".initcall6.init", align 4
@iio_dummy_device = internal global { %struct.iio_sw_device_type, [40 x i8] } { %struct.iio_sw_device_type { ptr @.str, ptr null, ptr @iio_dummy_device_ops, %struct.list_head zeroinitializer, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_iio_dummy_device_exit = internal global ptr @iio_dummy_device_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [53 x i8] c"iio_dummy.author=Jonathan Cameron <jic23@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [39 x i8] c"iio_dummy.description=IIO dummy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [43 x i8] c"iio_dummy.file=drivers/iio/dummy/iio_dummy\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [25 x i8] c"iio_dummy.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@iio_dummy_device_ops = internal constant { %struct.iio_sw_device_ops, [24 x i8] } { %struct.iio_sw_device_ops { ptr @iio_dummy_probe, ptr @iio_dummy_remove }, [24 x i8] zeroinitializer }, align 32
@iio_dummy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@iio_dummy_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 { i8 117, i8 13, i8 16, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 4096, i32 0, i32 0, i32 0, ptr @iio_dummy_event, i32 1, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 2, i32 0, i32 1, %struct.anon.43 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 4, i32 0, i32 2, %struct.anon.43 { i8 115, i8 11, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 4096, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 3, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 49, i32 0, i32 0, i32 0, i32 4096, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.43 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 -1, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 20, i32 0, i32 0, i32 0, i32 -1, %struct.anon.43 zeroinitializer, i32 2, i32 0, i32 1572864, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @step_detect_event, i32 1, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 19, i32 0, i32 27, i32 0, i32 -1, %struct.anon.43 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @iio_running_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 19, i32 0, i32 29, i32 0, i32 -1, %struct.anon.43 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @iio_walking_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }], [200 x i8] zeroinitializer }, align 32
@iio_dummy_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @iio_dummy_read_raw, ptr null, ptr null, ptr @iio_dummy_write_raw, ptr null, ptr null, ptr @iio_simple_dummy_read_event_config, ptr @iio_simple_dummy_write_event_config, ptr @iio_simple_dummy_read_event_value, ptr @iio_simple_dummy_write_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@iio_dummy_type = internal constant { %struct.config_item_type, [44 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dummy_scales = internal constant { [3 x %struct.iio_dummy_accel_calibscale], [60 x i8] } { [3 x %struct.iio_dummy_accel_calibscale] [%struct.iio_dummy_accel_calibscale { i32 0, i32 100, i32 8 }, %struct.iio_dummy_accel_calibscale { i32 0, i32 133, i32 7 }, %struct.iio_dummy_accel_calibscale { i32 733, i32 13, i32 9 }], [60 x i8] zeroinitializer }, align 32
@iio_dummy_event = internal constant { %struct.iio_event_spec, [40 x i8] } { %struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@step_detect_event = internal constant { %struct.iio_event_spec, [40 x i8] } { %struct.iio_event_spec { i32 5, i32 3, i32 1, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@iio_running_event = internal constant { %struct.iio_event_spec, [40 x i8] } { %struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@iio_walking_event = internal constant { %struct.iio_event_spec, [40 x i8] } { %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 12, i64 19, i64 20]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 20]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 27, i64 29]
@__sancov_gen_cov_switch_values.5 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 4, i64 5, i64 19, i64 20]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 20]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 27, i64 29]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 733]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 133]
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"iio_dummy_device\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 708, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 709, i32 10 }
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"iio_dummy_device_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 703, i32 39 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 597, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"iio_dummy_channels\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 96, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"iio_dummy_info\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 518, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"iio_dummy_type\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 26, i32 38 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"dummy_scales\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 42, i32 48 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"iio_dummy_event\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 54, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"step_detect_event\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 63, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"iio_running_event\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 73, i32 36 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"iio_walking_event\00", align 1
@___asan_gen_.47 = private constant [40 x i8] c"../drivers/iio/dummy/iio_simple_dummy.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 83, i32 36 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_iio_dummy_device_exit, ptr @__initcall__kmod_iio_dummy__183_714_iio_dummy_device_init6, ptr @iio_dummy_device_exit, ptr @iio_dummy_device, ptr @.str, ptr @iio_dummy_device_ops, ptr @iio_dummy_probe.__key, ptr @.str.1, ptr @iio_dummy_channels, ptr @iio_dummy_info, ptr @iio_dummy_type, ptr @dummy_scales, ptr @iio_dummy_event, ptr @step_detect_event, ptr @iio_running_event, ptr @iio_walking_event], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dummy_device to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dummy_device_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dummy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dummy_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dummy_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dummy_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_scales to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dummy_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @step_detect_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_running_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_walking_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_dummy_device_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iio_register_sw_device_type(ptr noundef nonnull @iio_dummy_device) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iio_dummy_device_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iio_unregister_sw_device_type(ptr noundef nonnull @iio_dummy_device) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_unregister_sw_device_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_register_sw_device_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iio_dummy_probe(ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.error_kzalloc_crit_edge, label %if.end

entry.error_kzalloc_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_kzalloc

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @iio_device_alloc(ptr noundef null, i32 noundef 168) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.error_ret_crit_edge, label %if.end4

if.end.error_ret_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_ret

if.end4:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.iio_dummy_state, ptr %2, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @iio_dummy_probe.__key) #5
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 8
  %single_ended_adc_val.i = getelementptr inbounds %struct.iio_dummy_state, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %single_ended_adc_val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 73, ptr %single_ended_adc_val.i, align 4
  %differential_adc_val.i = getelementptr inbounds %struct.iio_dummy_state, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %differential_adc_val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 33, ptr %differential_adc_val.i, align 8
  %arrayidx2.i = getelementptr %struct.iio_dummy_state, ptr %4, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -34, ptr %arrayidx2.i, align 4
  %accel_val.i = getelementptr inbounds %struct.iio_dummy_state, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %accel_val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 34, ptr %accel_val.i, align 8
  %accel_calibbias.i = getelementptr inbounds %struct.iio_dummy_state, ptr %4, i32 0, i32 4
  %10 = ptrtoint ptr %accel_calibbias.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -7, ptr %accel_calibbias.i, align 4
  %accel_calibscale.i = getelementptr inbounds %struct.iio_dummy_state, ptr %4, i32 0, i32 7
  %11 = ptrtoint ptr %accel_calibscale.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dummy_scales, ptr %accel_calibscale.i, align 8
  %steps.i = getelementptr inbounds %struct.iio_dummy_state, ptr %4, i32 0, i32 11
  %12 = ptrtoint ptr %steps.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 47, ptr %steps.i, align 8
  %activity_running.i = getelementptr inbounds %struct.iio_dummy_state, ptr %4, i32 0, i32 5
  %13 = ptrtoint ptr %activity_running.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 98, ptr %activity_running.i, align 8
  %activity_walking.i = getelementptr inbounds %struct.iio_dummy_state, ptr %4, i32 0, i32 6
  %14 = ptrtoint ptr %activity_walking.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %activity_walking.i, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1, ptr %call7.i.i, align 8
  %call7 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #5
  %name8 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %16 = ptrtoint ptr %name8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7, ptr %name8, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @iio_dummy_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %18 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 9, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %19 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @iio_dummy_info, ptr %info, align 8
  %20 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %call1, align 8
  %call9 = tail call i32 @iio_simple_dummy_events_register(ptr noundef nonnull %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end4.error_free_device_crit_edge, label %if.end11

if.end4.error_free_device_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_free_device

if.end11:                                         ; preds = %if.end4
  %call12 = tail call i32 @iio_simple_dummy_configure_buffer(ptr noundef nonnull %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.error_unregister_events_crit_edge, label %if.end15

if.end11.error_unregister_events_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_unregister_events

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @__iio_device_register(ptr noundef nonnull %call1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %error_unconfigure_buffer, label %if.end19

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %group.i = getelementptr inbounds %struct.iio_sw_device, ptr %call7.i.i, i32 0, i32 2
  tail call void @config_group_init_type_name(ptr noundef %group.i, ptr noundef %name, ptr noundef nonnull @iio_dummy_type) #5
  br label %cleanup

error_unconfigure_buffer:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iio_simple_dummy_unconfigure_buffer(ptr noundef nonnull %call1) #5
  br label %error_unregister_events

error_unregister_events:                          ; preds = %error_unconfigure_buffer, %if.end11.error_unregister_events_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11.error_unregister_events_crit_edge ], [ %call16, %error_unconfigure_buffer ]
  tail call void @iio_simple_dummy_events_unregister(ptr noundef nonnull %call1) #5
  br label %error_free_device

error_free_device:                                ; preds = %error_unregister_events, %if.end4.error_free_device_crit_edge
  %ret.1 = phi i32 [ %call9, %if.end4.error_free_device_crit_edge ], [ %ret.0, %error_unregister_events ]
  tail call void @iio_device_free(ptr noundef nonnull %call1) #5
  br label %error_ret

error_ret:                                        ; preds = %error_free_device, %if.end.error_ret_crit_edge
  %ret.2 = phi i32 [ %ret.1, %error_free_device ], [ -12, %if.end.error_ret_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %error_kzalloc

error_kzalloc:                                    ; preds = %error_ret, %entry.error_kzalloc_crit_edge
  %ret.3 = phi i32 [ %ret.2, %error_ret ], [ -12, %entry.error_kzalloc_crit_edge ]
  %21 = inttoptr i32 %ret.3 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error_kzalloc, %if.end19
  %retval.0 = phi ptr [ %21, %error_kzalloc ], [ %call7.i.i, %if.end19 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_dummy_remove(ptr nocapture noundef readonly %swd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %swd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %swd, align 4
  tail call void @iio_device_unregister(ptr noundef %1) #5
  tail call void @iio_simple_dummy_unconfigure_buffer(ptr noundef %1) #5
  tail call void @iio_simple_dummy_events_unregister(ptr noundef %1) #5
  %name = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  tail call void @kfree(ptr noundef %3) #5
  tail call void @iio_device_free(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_simple_dummy_events_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_simple_dummy_configure_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_simple_dummy_unconfigure_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_simple_dummy_events_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_dummy_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.sw.epilog57_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 3, label %sw.bb26
    i32 2, label %sw.bb27
    i32 5, label %sw.bb40
    i32 4, label %sw.bb41
    i32 12, label %sw.bb45
    i32 19, label %sw.bb46
    i32 20, label %sw.bb51
  ]

entry.sw.epilog57_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog57

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %4, label %sw.bb.sw.epilog57_crit_edge [
    i32 0, label %sw.bb1
    i32 3, label %sw.bb15
  ]

sw.bb.sw.epilog57_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog57

sw.bb1:                                           ; preds = %sw.bb
  %output = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %6 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %output, align 4
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  br label %sw.epilog57

if.else:                                          ; preds = %sw.bb1
  %11 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.else12, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  %arrayidx11 = getelementptr %struct.iio_dummy_state, ptr %1, i32 0, i32 2, i32 1
  %differential_adc_val = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 2
  %storemerge.in = select i1 %cmp, ptr %differential_adc_val, ptr %arrayidx11
  %14 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %val, align 4
  br label %sw.epilog57

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %single_ended_adc_val = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %single_ended_adc_val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %single_ended_adc_val, align 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val, align 4
  br label %sw.epilog57

sw.bb15:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %accel_val = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %accel_val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %accel_val, align 8
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val, align 4
  br label %sw.epilog57

sw.bb16:                                          ; preds = %entry
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chan, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %23, label %sw.bb16.sw.epilog57_crit_edge [
    i32 20, label %sw.bb18
    i32 19, label %sw.bb19
  ]

sw.bb16.sw.epilog57_crit_edge:                    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog57

sw.bb18:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  %steps = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %steps, align 8
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %val, align 4
  br label %sw.epilog57

sw.bb19:                                          ; preds = %sw.bb16
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %28 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel2, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %29, label %sw.bb19.sw.epilog57_crit_edge [
    i32 27, label %sw.bb20
    i32 29, label %sw.bb21
  ]

sw.bb19.sw.epilog57_crit_edge:                    ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog57

sw.bb20:                                          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  %activity_running = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %activity_running to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %activity_running, align 8
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %val, align 4
  br label %sw.epilog57

sw.bb21:                                          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  %activity_walking = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %activity_walking to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %activity_walking, align 4
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %val, align 4
  br label %sw.epilog57

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 7, ptr %val, align 4
  br label %sw.epilog57

sw.bb27:                                          ; preds = %entry
  %38 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cond60 = icmp eq i32 %39, 0
  br i1 %cond60, label %sw.bb29, label %sw.bb27.sw.epilog57_crit_edge

sw.bb27.sw.epilog57_crit_edge:                    ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog57

sw.bb29:                                          ; preds = %sw.bb27
  %differential30 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %40 = ptrtoint ptr %differential30 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load31 = load i8, ptr %differential30, align 4
  %41 = and i8 %bf.load31, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %trunc.not = icmp eq i8 %41, 0
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %val, align 4
  br i1 %trunc.not, label %sw.bb35, label %sw.bb36

sw.bb35:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1333, ptr %val2, align 4
  br label %sw.epilog57

sw.bb36:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1344, ptr %val2, align 4
  br label %sw.epilog57

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %accel_calibbias = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %accel_calibbias to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %accel_calibbias, align 4
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %val, align 4
  br label %sw.epilog57

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %accel_calibscale = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %accel_calibscale to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %accel_calibscale, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %52 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %val, align 4
  %53 = load ptr, ptr %accel_calibscale, align 8
  %val244 = getelementptr inbounds %struct.iio_dummy_accel_calibscale, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %val244 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val244, align 4
  %56 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %val2, align 4
  br label %sw.epilog57

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %val, align 4
  %58 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 33, ptr %val2, align 4
  br label %sw.epilog57

sw.bb46:                                          ; preds = %entry
  %59 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %60)
  %cond59 = icmp eq i32 %60, 20
  br i1 %cond59, label %sw.bb48, label %sw.bb46.sw.epilog57_crit_edge

sw.bb46.sw.epilog57_crit_edge:                    ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog57

sw.bb48:                                          ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #7
  %steps_enabled = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 10
  %61 = ptrtoint ptr %steps_enabled to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %steps_enabled, align 4
  %63 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %val, align 4
  br label %sw.epilog57

sw.bb51:                                          ; preds = %entry
  %64 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %65)
  %cond = icmp eq i32 %65, 20
  br i1 %cond, label %sw.bb53, label %sw.bb51.sw.epilog57_crit_edge

sw.bb51.sw.epilog57_crit_edge:                    ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog57

sw.bb53:                                          ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #7
  %height = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 12
  %66 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %height, align 4
  %68 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %val, align 4
  br label %sw.epilog57

sw.epilog57:                                      ; preds = %sw.bb53, %sw.bb51.sw.epilog57_crit_edge, %sw.bb48, %sw.bb46.sw.epilog57_crit_edge, %sw.bb45, %sw.bb41, %sw.bb40, %sw.bb36, %sw.bb35, %sw.bb27.sw.epilog57_crit_edge, %sw.bb26, %sw.bb21, %sw.bb20, %sw.bb19.sw.epilog57_crit_edge, %sw.bb18, %sw.bb16.sw.epilog57_crit_edge, %sw.bb15, %if.else12, %if.then7, %if.then, %sw.bb.sw.epilog57_crit_edge, %entry.sw.epilog57_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog57_crit_edge ], [ 1, %sw.bb53 ], [ -22, %sw.bb51.sw.epilog57_crit_edge ], [ 1, %sw.bb48 ], [ -22, %sw.bb46.sw.epilog57_crit_edge ], [ 3, %sw.bb45 ], [ 2, %sw.bb41 ], [ 1, %sw.bb40 ], [ 3, %sw.bb36 ], [ 2, %sw.bb35 ], [ -22, %sw.bb27.sw.epilog57_crit_edge ], [ 1, %sw.bb26 ], [ -22, %sw.bb16.sw.epilog57_crit_edge ], [ -22, %sw.bb19.sw.epilog57_crit_edge ], [ 1, %sw.bb21 ], [ 1, %sw.bb20 ], [ 1, %sw.bb18 ], [ -22, %sw.bb.sw.epilog57_crit_edge ], [ 1, %sw.bb15 ], [ 1, %if.then ], [ 1, %if.then7 ], [ 1, %if.else12 ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_dummy_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 4, label %sw.bb19
    i32 5, label %sw.bb34
    i32 19, label %sw.bb37
    i32 20, label %sw.bb43
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cond51 = icmp eq i32 %4, 0
  br i1 %cond51, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %output = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %5 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %output, align 4
  %6 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %sw.bb1.cleanup_crit_edge, label %if.end

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %val, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %9, label %sw.bb3.cleanup_crit_edge [
    i32 20, label %sw.bb5
    i32 19, label %sw.bb8
  ]

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %lock6 = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock6, i32 noundef 0) #5
  %steps = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %steps to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %val, ptr %steps, align 8
  tail call void @mutex_unlock(ptr noundef %lock6) #5
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb3
  %12 = tail call i32 @llvm.smax.i32(i32 %val, i32 0)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 100)
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %14 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel2, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %15, label %sw.bb8.cleanup_crit_edge [
    i32 27, label %sw.bb15
    i32 29, label %sw.bb16
  ]

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb15:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %activity_running = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %activity_running to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %13, ptr %activity_running, align 8
  br label %cleanup

sw.bb16:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %activity_walking = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %activity_walking to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %13, ptr %activity_walking, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %lock20 = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock20, i32 noundef 0) #5
  %19 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %val, label %sw.bb19.if.end32_crit_edge [
    i32 0, label %land.lhs.true
    i32 733, label %land.lhs.true.2
  ]

sw.bb19.if.end32_crit_edge:                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

land.lhs.true:                                    ; preds = %sw.bb19
  %20 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %val2, label %land.lhs.true.if.end32_crit_edge [
    i32 100, label %land.lhs.true.if.else_crit_edge
    i32 133, label %if.else.fold.split
  ]

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

land.lhs.true.2:                                  ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %val2)
  %cmp26.2 = icmp eq i32 %val2, 13
  br i1 %cmp26.2, label %land.lhs.true.2.if.else_crit_edge, label %land.lhs.true.2.if.end32_crit_edge

land.lhs.true.2.if.end32_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

land.lhs.true.2.if.else_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else.fold.split:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else:                                          ; preds = %if.else.fold.split, %land.lhs.true.2.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %i.092.lcssa = phi i32 [ 0, %land.lhs.true.if.else_crit_edge ], [ 2, %land.lhs.true.2.if.else_crit_edge ], [ 1, %if.else.fold.split ]
  %arrayidx31 = getelementptr [3 x %struct.iio_dummy_accel_calibscale], ptr @dummy_scales, i32 0, i32 %i.092.lcssa
  %accel_calibscale = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %accel_calibscale to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx31, ptr %accel_calibscale, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else, %land.lhs.true.2.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %sw.bb19.if.end32_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -22, %land.lhs.true.2.if.end32_crit_edge ], [ -22, %land.lhs.true.if.end32_crit_edge ], [ -22, %sw.bb19.if.end32_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock20) #5
  br label %cleanup

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock35 = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock35, i32 noundef 0) #5
  %accel_calibbias = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %accel_calibbias to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %val, ptr %accel_calibbias, align 4
  tail call void @mutex_unlock(ptr noundef %lock35) #5
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  %23 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %24)
  %cond50 = icmp eq i32 %24, 20
  br i1 %cond50, label %sw.bb39, label %sw.bb37.cleanup_crit_edge

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb39:                                          ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #7
  %lock40 = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock40, i32 noundef 0) #5
  %steps_enabled = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %steps_enabled to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %val, ptr %steps_enabled, align 4
  tail call void @mutex_unlock(ptr noundef %lock40) #5
  br label %cleanup

sw.bb43:                                          ; preds = %entry
  %26 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %27)
  %cond = icmp eq i32 %27, 20
  br i1 %cond, label %sw.bb45, label %sw.bb43.cleanup_crit_edge

sw.bb43.cleanup_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb45:                                          ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #7
  %height = getelementptr inbounds %struct.iio_dummy_state, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %val, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb45, %sw.bb43.cleanup_crit_edge, %sw.bb39, %sw.bb37.cleanup_crit_edge, %sw.bb34, %if.end32, %sw.bb16, %sw.bb15, %sw.bb8.cleanup_crit_edge, %sw.bb5, %sw.bb3.cleanup_crit_edge, %if.end, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb45 ], [ 0, %sw.bb39 ], [ 0, %sw.bb34 ], [ %ret.0, %if.end32 ], [ 0, %sw.bb16 ], [ 0, %sw.bb15 ], [ 0, %sw.bb5 ], [ 0, %if.end ], [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %sw.bb37.cleanup_crit_edge ], [ -22, %sw.bb43.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_simple_dummy_read_event_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_simple_dummy_write_event_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_simple_dummy_read_event_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_simple_dummy_write_event_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_iio_dummy__183_714_iio_dummy_device_init6, !1, !"__initcall__kmod_iio_dummy__183_714_iio_dummy_device_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 714, i32 1}
!2 = !{ptr @__exitcall_iio_dummy_device_exit, !1, !"__exitcall_iio_dummy_device_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 716, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 717, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 718, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 709, i32 10}
!12 = !{ptr @iio_dummy_device, !13, !"iio_dummy_device", i1 false, i1 false}
!13 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 708, i32 34}
!14 = !{ptr @iio_dummy_device_ops, !15, !"iio_dummy_device_ops", i1 false, i1 false}
!15 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 703, i32 39}
!16 = !{ptr @iio_dummy_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 597, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @dummy_scales, !20, !"dummy_scales", i1 false, i1 false}
!20 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 42, i32 48}
!21 = !{ptr @iio_dummy_channels, !22, !"iio_dummy_channels", i1 false, i1 false}
!22 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 96, i32 35}
!23 = !{ptr @iio_dummy_event, !24, !"iio_dummy_event", i1 false, i1 false}
!24 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 54, i32 36}
!25 = !{ptr @step_detect_event, !26, !"step_detect_event", i1 false, i1 false}
!26 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 63, i32 36}
!27 = !{ptr @iio_running_event, !28, !"iio_running_event", i1 false, i1 false}
!28 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 73, i32 36}
!29 = !{ptr @iio_walking_event, !30, !"iio_walking_event", i1 false, i1 false}
!30 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 83, i32 36}
!31 = !{ptr @iio_dummy_info, !32, !"iio_dummy_info", i1 false, i1 false}
!32 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 518, i32 30}
!33 = !{ptr @iio_dummy_type, !34, !"iio_dummy_type", i1 false, i1 false}
!34 = !{!"../drivers/iio/dummy/iio_simple_dummy.c", i32 26, i32 38}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
