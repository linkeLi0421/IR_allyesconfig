; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/m62332.c_pt.bc'
source_filename = "../drivers/iio/dac/m62332.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.m62332_data = type { ptr, ptr, %struct.mutex, [2 x i8], [2 x i8] }

@__initcall__kmod_m62332__288_255_m62332_driver_init6 = internal global ptr @m62332_driver_init, section ".initcall6.init", align 4
@m62332_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @m62332_probe, ptr @m62332_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m62332_pm_ops, ptr null, ptr null }, ptr @m62332_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_m62332_driver_exit = internal global ptr @m62332_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [38 x i8] c"m62332.author=Dmitry Eremin-Solenikov\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [36 x i8] c"m62332.description=M62332 8-bit DAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [35 x i8] c"m62332.file=drivers/iio/dac/m62332\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"m62332.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m62332\00", [25 x i8] zeroinitializer }, align 32
@m62332_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @m62332_suspend, ptr @m62332_resume, ptr @m62332_suspend, ptr @m62332_resume, ptr @m62332_suspend, ptr @m62332_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@m62332_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"m62332\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@m62332_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCC\00", [28 x i8] zeroinitializer }, align 32
@m62332_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.3, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.4, i8 96 }], [48 x i8] zeroinitializer }, align 32
@m62332_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @m62332_read_raw, ptr null, ptr null, ptr @m62332_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH0\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH1\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"m62332_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 246, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 248, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"m62332_pm_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 159, i32 8 }
@___asan_gen_.14 = private unnamed_addr constant [10 x i8] c"m62332_id\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 240, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 201, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 203, i32 47 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"m62332_channels\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 181, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"m62332_info\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 165, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 182, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [28 x i8] c"../drivers/iio/dac/m62332.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 183, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_m62332_driver_exit, ptr @__initcall__kmod_m62332__288_255_m62332_driver_init6, ptr @m62332_driver_exit, ptr @m62332_driver, ptr @.str, ptr @m62332_pm_ops, ptr @m62332_id, ptr @m62332_probe.__key, ptr @.str.1, ptr @.str.2, ptr @m62332_channels, ptr @m62332_info, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m62332_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m62332_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m62332_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m62332_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m62332_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m62332_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @m62332_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @m62332_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @m62332_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @m62332_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m62332_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 104) #4
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
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.m62332_data, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @m62332_probe.__key) #4
  %call4 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #4
  %vcc = getelementptr inbounds %struct.m62332_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %vcc, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %num_channels, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @m62332_channels, ptr %channels, align 8
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @m62332_info, ptr %info, align 8
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %10 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_data, align 8
  %call12 = tail call i32 @iio_map_array_register(ptr noundef nonnull %call, ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %err, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err:                                              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = tail call i32 @iio_map_array_unregister(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then7 ], [ %call15, %err ], [ -12, %entry.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m62332_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  %outbuf.i7 = alloca [2 x i8], align 1
  %outbuf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @iio_device_unregister(ptr noundef %1) #4
  %call1 = tail call i32 @iio_map_array_unregister(ptr noundef %1) #4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %outbuf.i) #4
  %arrayidx.i = getelementptr %struct.m62332_data, ptr %3, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp eq i8 %7, 0
  br i1 %cmp.i, label %entry.m62332_set_value.exit_crit_edge, label %if.end.i

entry.m62332_set_value.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %m62332_set_value.exit

if.end.i:                                         ; preds = %entry
  %8 = getelementptr inbounds [2 x i8], ptr %outbuf.i, i32 0, i32 1
  %9 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %outbuf.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %8, align 1
  %mutex.i = getelementptr inbounds %struct.m62332_data, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %outbuf.i, i32 noundef 2, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp16.not.i = icmp eq i32 %call.i.i, 2
  %spec.store.select.i = select i1 %cmp16.not.i, i32 2, i32 -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1453.i = icmp slt i32 %call.i.i, 0
  %res.0.i = select i1 %cmp1453.i, i32 %call.i.i, i32 %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i)
  %cmp20.i = icmp slt i32 %res.0.i, 0
  br i1 %cmp20.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end23.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end23.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx.i, align 1
  %vcc28.i = getelementptr inbounds %struct.m62332_data, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %vcc28.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vcc28.i, align 4
  %call29.i = call i32 @regulator_disable(ptr noundef %13) #4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end23.i, %if.end.i.cleanup.sink.split.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #4
  br label %m62332_set_value.exit

m62332_set_value.exit:                            ; preds = %cleanup.sink.split.i, %entry.m62332_set_value.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf.i) #4
  %14 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %outbuf.i7) #4
  %arrayidx.i9 = getelementptr %struct.m62332_data, ptr %15, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i10 = icmp eq i8 %19, 0
  br i1 %cmp.i10, label %m62332_set_value.exit.m62332_set_value.exit25_crit_edge, label %if.end.i12

m62332_set_value.exit.m62332_set_value.exit25_crit_edge: ; preds = %m62332_set_value.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %m62332_set_value.exit25

if.end.i12:                                       ; preds = %m62332_set_value.exit
  %20 = getelementptr inbounds [2 x i8], ptr %outbuf.i7, i32 0, i32 1
  %21 = ptrtoint ptr %outbuf.i7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %outbuf.i7, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %20, align 1
  %mutex.i11 = getelementptr inbounds %struct.m62332_data, ptr %15, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex.i11, i32 noundef 0) #4
  %call.i.i13 = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %outbuf.i7, i32 noundef 2, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i13)
  %cmp16.not.i14 = icmp eq i32 %call.i.i13, 2
  %spec.store.select.i15 = select i1 %cmp16.not.i14, i32 2, i32 -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i13)
  %cmp1453.i16 = icmp slt i32 %call.i.i13, 0
  %res.0.i17 = select i1 %cmp1453.i16, i32 %call.i.i13, i32 %spec.store.select.i15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i17)
  %cmp20.i18 = icmp slt i32 %res.0.i17, 0
  br i1 %cmp20.i18, label %if.end.i12.cleanup.sink.split.i23_crit_edge, label %if.end23.i19

if.end.i12.cleanup.sink.split.i23_crit_edge:      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i23

if.end23.i19:                                     ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx.i9, align 1
  %vcc28.i20 = getelementptr inbounds %struct.m62332_data, ptr %15, i32 0, i32 1
  %24 = ptrtoint ptr %vcc28.i20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vcc28.i20, align 4
  %call29.i21 = call i32 @regulator_disable(ptr noundef %25) #4
  br label %cleanup.sink.split.i23

cleanup.sink.split.i23:                           ; preds = %if.end23.i19, %if.end.i12.cleanup.sink.split.i23_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i11) #4
  br label %m62332_set_value.exit25

m62332_set_value.exit25:                          ; preds = %cleanup.sink.split.i23, %m62332_set_value.exit.m62332_set_value.exit25_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf.i7) #4
  ret i32 0
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
declare dso_local i32 @iio_map_array_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_map_array_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m62332_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
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
    i32 2, label %sw.bb
    i32 0, label %sw.bb2
    i32 3, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %vcc = getelementptr inbounds %struct.m62332_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vcc, align 4
  %call1 = tail call i32 @regulator_get_voltage(ptr noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %div10 = udiv i32 %call1, 1000
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div10, ptr %val, align 4
  %6 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %val2, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.m62332_data, ptr %1, i32 0, i32 3, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb2, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb3 ], [ 1, %sw.bb2 ], [ 11, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m62332_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp ne i32 %mask, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %val)
  %0 = icmp ugt i32 %val, 255
  %or.cond = or i1 %0, %cond
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %val to i8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %channel, align 4
  %call = tail call fastcc i32 @m62332_set_value(ptr noundef %indio_dev, i8 noundef zeroext %conv, i32 noundef %2)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m62332_set_value(ptr nocapture noundef readonly %indio_dev, i8 noundef zeroext %val, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  %outbuf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %outbuf) #4
  %arrayidx = getelementptr %struct.m62332_data, ptr %1, i32 0, i32 3, i32 %channel
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %val)
  %cmp = icmp eq i8 %5, %val
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds [2 x i8], ptr %outbuf, i32 0, i32 1
  %conv4 = trunc i32 %channel to i8
  %7 = ptrtoint ptr %outbuf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %outbuf, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %val, ptr %6, align 1
  %mutex = getelementptr inbounds %struct.m62332_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val)
  %tobool.not = icmp eq i8 %val, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then7:                                         ; preds = %if.end
  %vcc = getelementptr inbounds %struct.m62332_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vcc, align 4
  %call8 = tail call i32 @regulator_enable(ptr noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then7.cleanup.sink.split_crit_edge

if.then7.cleanup.sink.split_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %outbuf, i32 noundef 2, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp16.not = icmp eq i32 %call.i, 2
  %spec.store.select = select i1 %cmp16.not, i32 2, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1453 = icmp slt i32 %call.i, 0
  %res.0 = select i1 %cmp1453, i32 %call.i, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0)
  %cmp20 = icmp slt i32 %res.0, 0
  br i1 %cmp20, label %if.end12.cleanup.sink.split_crit_edge, label %if.end23

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.end12
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %val, ptr %arrayidx, align 1
  br i1 %tobool.not, label %if.then27, label %if.end23.cleanup.sink.split_crit_edge

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %vcc28 = getelementptr inbounds %struct.m62332_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %vcc28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vcc28, align 4
  %call29 = call i32 @regulator_disable(ptr noundef %13) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then27, %if.end23.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %if.then7.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.then27 ], [ 0, %if.end23.cleanup.sink.split_crit_edge ], [ %call8, %if.then7.cleanup.sink.split_crit_edge ], [ %res.0, %if.end12.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m62332_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %outbuf.i18 = alloca [2 x i8], align 1
  %outbuf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %raw = getelementptr inbounds %struct.m62332_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %raw to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %raw, align 4
  %save = getelementptr inbounds %struct.m62332_data, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %save to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %save, align 2
  %arrayidx4 = getelementptr %struct.m62332_data, ptr %3, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr %struct.m62332_data, ptr %3, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx6, align 1
  %10 = load ptr, ptr %priv.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %outbuf.i) #4
  %arrayidx.i = getelementptr %struct.m62332_data, ptr %10, i32 0, i32 3, i32 0
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.i = icmp eq i8 %14, 0
  br i1 %cmp.i, label %m62332_set_value.exit.thread, label %if.end.i

m62332_set_value.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf.i) #4
  br label %if.end

if.end.i:                                         ; preds = %entry
  %15 = getelementptr inbounds [2 x i8], ptr %outbuf.i, i32 0, i32 1
  %16 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %outbuf.i, align 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %15, align 1
  %mutex.i = getelementptr inbounds %struct.m62332_data, ptr %10, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %outbuf.i, i32 noundef 2, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp16.not.i = icmp eq i32 %call.i.i, 2
  %spec.store.select.i = select i1 %cmp16.not.i, i32 2, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1453.i = icmp slt i32 %call.i.i, 0
  %res.0.i = select i1 %cmp1453.i, i32 %call.i.i, i32 %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i)
  %cmp20.i = icmp slt i32 %res.0.i, 0
  br i1 %cmp20.i, label %m62332_set_value.exit.thread39, label %m62332_set_value.exit

m62332_set_value.exit.thread39:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %mutex.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf.i) #4
  br label %cleanup

m62332_set_value.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx.i, align 1
  %vcc28.i = getelementptr inbounds %struct.m62332_data, ptr %10, i32 0, i32 1
  %19 = ptrtoint ptr %vcc28.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vcc28.i, align 4
  %call29.i = call i32 @regulator_disable(ptr noundef %20) #4
  call void @mutex_unlock(ptr noundef %mutex.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf.i) #4
  br label %if.end

if.end:                                           ; preds = %m62332_set_value.exit, %m62332_set_value.exit.thread
  %21 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %outbuf.i18) #4
  %arrayidx.i20 = getelementptr %struct.m62332_data, ptr %22, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.i21 = icmp eq i8 %26, 0
  br i1 %cmp.i21, label %if.end.m62332_set_value.exit36_crit_edge, label %if.end.i23

if.end.m62332_set_value.exit36_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %m62332_set_value.exit36

if.end.i23:                                       ; preds = %if.end
  %27 = getelementptr inbounds [2 x i8], ptr %outbuf.i18, i32 0, i32 1
  %28 = ptrtoint ptr %outbuf.i18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %outbuf.i18, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %27, align 1
  %mutex.i22 = getelementptr inbounds %struct.m62332_data, ptr %22, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex.i22, i32 noundef 0) #4
  %call.i.i24 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %outbuf.i18, i32 noundef 2, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i24)
  %cmp16.not.i25 = icmp eq i32 %call.i.i24, 2
  %spec.store.select.i26 = select i1 %cmp16.not.i25, i32 2, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %cmp1453.i27 = icmp slt i32 %call.i.i24, 0
  %res.0.i28 = select i1 %cmp1453.i27, i32 %call.i.i24, i32 %spec.store.select.i26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i28)
  %cmp20.i29 = icmp slt i32 %res.0.i28, 0
  br i1 %cmp20.i29, label %if.end.i23.cleanup.sink.split.i34_crit_edge, label %if.end23.i30

if.end.i23.cleanup.sink.split.i34_crit_edge:      ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i34

if.end23.i30:                                     ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx.i20, align 1
  %vcc28.i31 = getelementptr inbounds %struct.m62332_data, ptr %22, i32 0, i32 1
  %31 = ptrtoint ptr %vcc28.i31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vcc28.i31, align 4
  %call29.i32 = call i32 @regulator_disable(ptr noundef %32) #4
  br label %cleanup.sink.split.i34

cleanup.sink.split.i34:                           ; preds = %if.end23.i30, %if.end.i23.cleanup.sink.split.i34_crit_edge
  %retval.0.ph.i33 = phi i32 [ 0, %if.end23.i30 ], [ %res.0.i28, %if.end.i23.cleanup.sink.split.i34_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i22) #4
  br label %m62332_set_value.exit36

m62332_set_value.exit36:                          ; preds = %cleanup.sink.split.i34, %if.end.m62332_set_value.exit36_crit_edge
  %retval.0.i35 = phi i32 [ 0, %if.end.m62332_set_value.exit36_crit_edge ], [ %retval.0.ph.i33, %cleanup.sink.split.i34 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf.i18) #4
  br label %cleanup

cleanup:                                          ; preds = %m62332_set_value.exit36, %m62332_set_value.exit.thread39
  %retval.0 = phi i32 [ %retval.0.i35, %m62332_set_value.exit36 ], [ %res.0.i, %m62332_set_value.exit.thread39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m62332_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %save = getelementptr inbounds %struct.m62332_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %save to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %save, align 2
  %call2 = tail call fastcc i32 @m62332_set_value(ptr noundef %1, i8 noundef zeroext %5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx4 = getelementptr %struct.m62332_data, ptr %3, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %call5 = tail call fastcc i32 @m62332_set_value(ptr noundef %1, i8 noundef zeroext %7, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_m62332__288_255_m62332_driver_init6, !1, !"__initcall__kmod_m62332__288_255_m62332_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/m62332.c", i32 255, i32 1}
!2 = !{ptr @__exitcall_m62332_driver_exit, !1, !"__exitcall_m62332_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/m62332.c", i32 257, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/m62332.c", i32 258, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/m62332.c", i32 259, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/m62332.c", i32 248, i32 11}
!12 = !{ptr @m62332_driver, !13, !"m62332_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/m62332.c", i32 246, i32 26}
!14 = !{ptr @m62332_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/m62332.c", i32 201, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/dac/m62332.c", i32 203, i32 47}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/dac/m62332.c", i32 182, i32 2}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/dac/m62332.c", i32 183, i32 2}
!23 = !{ptr @m62332_channels, !24, !"m62332_channels", i1 false, i1 false}
!24 = !{!"../drivers/iio/dac/m62332.c", i32 181, i32 35}
!25 = !{ptr @m62332_info, !26, !"m62332_info", i1 false, i1 false}
!26 = !{!"../drivers/iio/dac/m62332.c", i32 165, i32 30}
!27 = !{ptr @m62332_pm_ops, !28, !"m62332_pm_ops", i1 false, i1 false}
!28 = !{!"../drivers/iio/dac/m62332.c", i32 159, i32 8}
!29 = !{ptr @m62332_id, !30, !"m62332_id", i1 false, i1 false}
!30 = !{!"../drivers/iio/dac/m62332.c", i32 240, i32 35}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
