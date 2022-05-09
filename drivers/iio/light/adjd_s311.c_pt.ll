; ModuleID = '/llk/IR_all_yes/drivers/iio/light/adjd_s311.c_pt.bc'
source_filename = "../drivers/iio/light/adjd_s311.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.87, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.87 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.adjd_s311_data = type { ptr, %struct.anon.86 }
%struct.anon.86 = type { [4 x i16], i64 }

@__initcall__kmod_adjd_s311__288_277_adjd_s311_driver_init6 = internal global ptr @adjd_s311_driver_init, section ".initcall6.init", align 4
@adjd_s311_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adjd_s311_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adjd_s311_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adjd_s311_driver_exit = internal global ptr @adjd_s311_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [52 x i8] c"adjd_s311.author=Peter Meerwald <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [45 x i8] c"adjd_s311.description=ADJD-S311 color sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [43 x i8] c"adjd_s311.file=drivers/iio/light/adjd_s311\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"adjd_s311.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adjd_s311\00", [22 x i8] zeroinitializer }, align 32
@adjd_s311_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adjd_s311\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@adjd_s311_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adjd_s311_read_raw, ptr null, ptr null, ptr @adjd_s311_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adjd_s311_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 0, i32 17, i32 0, i32 0, %struct.anon.87 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 294913, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 18, i32 1, i32 1, %struct.anon.87 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 294913, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 19, i32 2, i32 2, %struct.anon.87 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 294913, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 16, i32 3, i32 3, %struct.anon.87 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 294913, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.87 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@adjd_s311_req_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 92, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"adjd_s311_req_data() failed, data not ready\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adjd_s311_req_data\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iio/light/adjd_s311.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adjd_s311_req_data._entry_ptr = internal global ptr @adjd_s311_req_data._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 15, i64 18]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 18]
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"adjd_s311_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 270, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 272, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"adjd_s311_id\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 264, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"adjd_s311_info\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 231, i32 30 }
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c"adjd_s311_channels\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 163, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [33 x i8] c"../drivers/iio/light/adjd_s311.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 91, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_adjd_s311_driver_exit, ptr @__initcall__kmod_adjd_s311__288_277_adjd_s311_driver_init6, ptr @adjd_s311_driver_exit, ptr @adjd_s311_req_data._entry, ptr @adjd_s311_req_data._entry_ptr, ptr @adjd_s311_driver, ptr @.str, ptr @adjd_s311_id, ptr @adjd_s311_info, ptr @adjd_s311_channels, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adjd_s311_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adjd_s311_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adjd_s311_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adjd_s311_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adjd_s311_req_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adjd_s311_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adjd_s311_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adjd_s311_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @adjd_s311_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adjd_s311_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 24) #4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

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
  store ptr %client, ptr %1, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @adjd_s311_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @adjd_s311_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %num_channels, align 4
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %call, align 8
  %call4 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @adjd_s311_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adjd_s311_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call2 = tail call i64 @iio_get_time_ns(ptr noundef %1) #4
  %call3 = tail call fastcc i32 @adjd_s311_req_data(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end:                                           ; preds = %entry
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %masklength, align 8
  %call4 = tail call i32 @_find_next_bit_be(ptr noundef %5, i32 noundef %7, i32 noundef 0) #4
  %8 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %9)
  %cmp634 = icmp ult i32 %call4, %9
  br i1 %cmp634, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %scan = getelementptr inbounds %struct.adjd_s311_data, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %j.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end11.for.body_crit_edge ]
  %i.035 = phi i32 [ %call4, %for.body.lr.ph ], [ %call16, %if.end11.for.body_crit_edge ]
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %i.0.tr = trunc i32 %i.035 to i8
  %12 = shl i8 %i.0.tr, 1
  %conv = add i8 %12, 64
  %call7 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %11, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %for.body.done_crit_edge, label %if.end11

for.body.done_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end11:                                         ; preds = %for.body
  %13 = trunc i32 %call7 to i16
  %conv12 = and i16 %13, 1023
  %inc = add i32 %j.036, 1
  %arrayidx = getelementptr [4 x i16], ptr %scan, i32 0, i32 %j.036
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv12, ptr %arrayidx, align 2
  %15 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %active_scan_mask, align 4
  %17 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %masklength, align 8
  %add15 = add nuw i32 %i.035, 1
  %call16 = tail call i32 @_find_next_bit_be(ptr noundef %16, i32 noundef %18, i32 noundef %add15) #4
  %19 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %masklength, align 8
  %cmp6 = icmp ult i32 %call16, %20
  br i1 %cmp6, label %if.end11.for.body_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %if.end.for.end_crit_edge
  %scan17 = getelementptr inbounds %struct.adjd_s311_data, ptr %3, i32 0, i32 1
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %scan_timestamp.i, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %24, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan17, i32 %sub.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %call2, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan17) #4
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %for.body.done_crit_edge, %entry.done_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %27) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adjd_s311_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
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
    i32 0, label %sw.bb
    i32 15, label %sw.bb3
    i32 18, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %call1.i = tail call fastcc i32 @adjd_s311_req_data(ptr noundef %indio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %.tr38 = trunc i32 %4 to i8
  %5 = shl i8 %.tr38, 1
  %conv = add i8 %5, 64
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call2.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %7, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %adjd_s311_read_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

adjd_s311_read_data.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %and.i = and i32 %call2.i, 1023
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %address4 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %11 = ptrtoint ptr %address4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %address4, align 4
  %13 = trunc i32 %12 to i8
  %conv6 = add i8 %13, 6
  %call7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext %conv6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %sw.bb3.cleanup_crit_edge, label %if.end11

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %call7, 15
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %address14 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %17 = ptrtoint ptr %address14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %address14, align 4
  %.tr = trunc i32 %18 to i8
  %19 = shl i8 %.tr, 1
  %conv17 = add i8 %19, 10
  %call18 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %16, i8 noundef zeroext %conv17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %sw.bb12.cleanup_crit_edge, label %if.end22

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %val, align 4
  %and23 = and i32 %call18, 4095
  %21 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and23, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %sw.bb12.cleanup_crit_edge, %if.end11, %sw.bb3.cleanup_crit_edge, %adjd_s311_read_data.exit, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end22 ], [ 1, %if.end11 ], [ %call7, %sw.bb3.cleanup_crit_edge ], [ %call18, %sw.bb12.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 1, %adjd_s311_read_data.exit ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call1.i, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adjd_s311_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 15, label %sw.bb
    i32 18, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %val)
  %3 = icmp ugt i32 %val, 15
  br i1 %3, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address, align 4
  %8 = trunc i32 %7 to i8
  %conv = add i8 %8, 6
  %conv2 = trunc i32 %val to i8
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv2) #4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp5.not = icmp ne i32 %val, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %val2)
  %9 = icmp ugt i32 %val2, 4095
  %10 = or i1 %cmp5.not, %9
  br i1 %10, label %sw.bb4.cleanup_crit_edge, label %if.end14

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %address16 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %13 = ptrtoint ptr %address16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %address16, align 4
  %.tr = trunc i32 %14 to i8
  %15 = shl i8 %.tr, 1
  %conv18 = add i8 %15, 10
  %conv19 = trunc i32 %val2 to i16
  %call20 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %12, i8 noundef zeroext %conv18, i16 noundef zeroext %conv19) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %sw.bb4.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end14 ], [ %call3, %if.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adjd_s311_req_data(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %while.body.preheader.cleanup_crit_edge, label %if.end6

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %while.body.preheader
  %and = and i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  tail call void @msleep(i32 noundef 20) #4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call3.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %cmp4.1 = icmp slt i32 %call3.1, 0
  br i1 %cmp4.1, label %if.end9.cleanup_crit_edge, label %if.end6.1

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.1:                                        ; preds = %if.end9
  %and.1 = and i32 %call3.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool7.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool7.not.1, label %if.end6.1.cleanup_crit_edge, label %if.end9.1

if.end6.1.cleanup_crit_edge:                      ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9.1:                                        ; preds = %if.end6.1
  tail call void @msleep(i32 noundef 20) #4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call3.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %cmp4.2 = icmp slt i32 %call3.2, 0
  br i1 %cmp4.2, label %if.end9.1.cleanup_crit_edge, label %if.end6.2

if.end9.1.cleanup_crit_edge:                      ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.2:                                        ; preds = %if.end9.1
  %and.2 = and i32 %call3.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool7.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool7.not.2, label %if.end6.2.cleanup_crit_edge, label %if.end9.2

if.end6.2.cleanup_crit_edge:                      ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9.2:                                        ; preds = %if.end6.2
  tail call void @msleep(i32 noundef 20) #4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call3.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3)
  %cmp4.3 = icmp slt i32 %call3.3, 0
  br i1 %cmp4.3, label %if.end9.2.cleanup_crit_edge, label %if.end6.3

if.end9.2.cleanup_crit_edge:                      ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.3:                                        ; preds = %if.end9.2
  %and.3 = and i32 %call3.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool7.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool7.not.3, label %if.end6.3.cleanup_crit_edge, label %if.end9.3

if.end6.3.cleanup_crit_edge:                      ; preds = %if.end6.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9.3:                                        ; preds = %if.end6.3
  tail call void @msleep(i32 noundef 20) #4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call3.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4)
  %cmp4.4 = icmp slt i32 %call3.4, 0
  br i1 %cmp4.4, label %if.end9.3.cleanup_crit_edge, label %if.end6.4

if.end9.3.cleanup_crit_edge:                      ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.4:                                        ; preds = %if.end9.3
  %and.4 = and i32 %call3.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool7.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool7.not.4, label %if.end6.4.cleanup_crit_edge, label %if.end9.4

if.end6.4.cleanup_crit_edge:                      ; preds = %if.end6.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9.4:                                        ; preds = %if.end6.4
  tail call void @msleep(i32 noundef 20) #4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %call3.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.5)
  %cmp4.5 = icmp slt i32 %call3.5, 0
  br i1 %cmp4.5, label %if.end9.4.cleanup_crit_edge, label %if.end6.5

if.end9.4.cleanup_crit_edge:                      ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.5:                                        ; preds = %if.end9.4
  %and.5 = and i32 %call3.5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool7.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool7.not.5, label %if.end6.5.cleanup_crit_edge, label %if.end9.5

if.end6.5.cleanup_crit_edge:                      ; preds = %if.end6.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9.5:                                        ; preds = %if.end6.5
  tail call void @msleep(i32 noundef 20) #4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %call3.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.6)
  %cmp4.6 = icmp slt i32 %call3.6, 0
  br i1 %cmp4.6, label %if.end9.5.cleanup_crit_edge, label %if.end6.6

if.end9.5.cleanup_crit_edge:                      ; preds = %if.end9.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.6:                                        ; preds = %if.end9.5
  %and.6 = and i32 %call3.6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool7.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool7.not.6, label %if.end6.6.cleanup_crit_edge, label %if.end9.6

if.end6.6.cleanup_crit_edge:                      ; preds = %if.end6.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9.6:                                        ; preds = %if.end6.6
  tail call void @msleep(i32 noundef 20) #4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call3.7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.7)
  %cmp4.7 = icmp slt i32 %call3.7, 0
  br i1 %cmp4.7, label %if.end9.6.cleanup_crit_edge, label %if.end6.7

if.end9.6.cleanup_crit_edge:                      ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.7:                                        ; preds = %if.end9.6
  %and.7 = and i32 %call3.7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool7.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool7.not.7, label %if.end6.7.cleanup_crit_edge, label %if.end9.7

if.end6.7.cleanup_crit_edge:                      ; preds = %if.end6.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9.7:                                        ; preds = %if.end6.7
  tail call void @msleep(i32 noundef 20) #4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %call3.8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.8)
  %cmp4.8 = icmp slt i32 %call3.8, 0
  br i1 %cmp4.8, label %if.end9.7.cleanup_crit_edge, label %if.end6.8

if.end9.7.cleanup_crit_edge:                      ; preds = %if.end9.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.8:                                        ; preds = %if.end9.7
  %and.8 = and i32 %call3.8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool7.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool7.not.8, label %if.end6.8.cleanup_crit_edge, label %if.end9.8

if.end6.8.cleanup_crit_edge:                      ; preds = %if.end6.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9.8:                                        ; preds = %if.end6.8
  tail call void @msleep(i32 noundef 20) #4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %call3.9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.9)
  %cmp4.9 = icmp slt i32 %call3.9, 0
  br i1 %cmp4.9, label %if.end9.8.cleanup_crit_edge, label %if.end6.9

if.end9.8.cleanup_crit_edge:                      ; preds = %if.end9.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.9:                                        ; preds = %if.end9.8
  %and.9 = and i32 %call3.9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool7.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool7.not.9, label %if.end6.9.cleanup_crit_edge, label %do.end

if.end6.9.cleanup_crit_edge:                      ; preds = %if.end6.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end6.9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 20) #4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end6.9.cleanup_crit_edge, %if.end9.8.cleanup_crit_edge, %if.end6.8.cleanup_crit_edge, %if.end9.7.cleanup_crit_edge, %if.end6.7.cleanup_crit_edge, %if.end9.6.cleanup_crit_edge, %if.end6.6.cleanup_crit_edge, %if.end9.5.cleanup_crit_edge, %if.end6.5.cleanup_crit_edge, %if.end9.4.cleanup_crit_edge, %if.end6.4.cleanup_crit_edge, %if.end9.3.cleanup_crit_edge, %if.end6.3.cleanup_crit_edge, %if.end9.2.cleanup_crit_edge, %if.end6.2.cleanup_crit_edge, %if.end9.1.cleanup_crit_edge, %if.end6.1.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %while.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end6.9.cleanup_crit_edge ], [ 0, %if.end6.8.cleanup_crit_edge ], [ 0, %if.end6.7.cleanup_crit_edge ], [ 0, %if.end6.6.cleanup_crit_edge ], [ 0, %if.end6.5.cleanup_crit_edge ], [ 0, %if.end6.4.cleanup_crit_edge ], [ 0, %if.end6.3.cleanup_crit_edge ], [ 0, %if.end6.2.cleanup_crit_edge ], [ 0, %if.end6.1.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %call3, %while.body.preheader.cleanup_crit_edge ], [ %call3.1, %if.end9.cleanup_crit_edge ], [ %call3.2, %if.end9.1.cleanup_crit_edge ], [ %call3.3, %if.end9.2.cleanup_crit_edge ], [ %call3.4, %if.end9.3.cleanup_crit_edge ], [ %call3.5, %if.end9.4.cleanup_crit_edge ], [ %call3.6, %if.end9.5.cleanup_crit_edge ], [ %call3.7, %if.end9.6.cleanup_crit_edge ], [ %call3.8, %if.end9.7.cleanup_crit_edge ], [ %call3.9, %if.end9.8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_adjd_s311__288_277_adjd_s311_driver_init6, !1, !"__initcall__kmod_adjd_s311__288_277_adjd_s311_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/adjd_s311.c", i32 277, i32 1}
!2 = !{ptr @__exitcall_adjd_s311_driver_exit, !1, !"__exitcall_adjd_s311_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/adjd_s311.c", i32 279, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/adjd_s311.c", i32 280, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/adjd_s311.c", i32 281, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/adjd_s311.c", i32 272, i32 11}
!12 = !{ptr @adjd_s311_driver, !13, !"adjd_s311_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/adjd_s311.c", i32 270, i32 26}
!14 = !{ptr @adjd_s311_info, !15, !"adjd_s311_info", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/adjd_s311.c", i32 231, i32 30}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/light/adjd_s311.c", i32 91, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @adjd_s311_req_data._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @adjd_s311_req_data._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @adjd_s311_channels, !25, !"adjd_s311_channels", i1 false, i1 false}
!25 = !{!"../drivers/iio/light/adjd_s311.c", i32 163, i32 35}
!26 = !{ptr @adjd_s311_id, !27, !"adjd_s311_id", i1 false, i1 false}
!27 = !{!"../drivers/iio/light/adjd_s311.c", i32 264, i32 35}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
