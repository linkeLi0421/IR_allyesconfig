; ModuleID = '/llk/IR_all_yes/drivers/iio/light/veml6070.c_pt.bc'
source_filename = "../drivers/iio/light/veml6070.c"
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
%struct.veml6070_data = type { ptr, ptr, i8, %struct.mutex }

@__initcall__kmod_veml6070__288_209_veml6070_driver_init6 = internal global ptr @veml6070_driver_init, section ".initcall6.init", align 4
@veml6070_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @veml6070_probe, ptr @veml6070_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @veml6070_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_veml6070_driver_exit = internal global ptr @veml6070_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [59 x i8] c"veml6070.author=Peter Meerwald-Stadler <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [62 x i8] c"veml6070.description=Vishay VEML6070 UV A light sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"veml6070.file=drivers/iio/light/veml6070\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"veml6070.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"veml6070\00", [23 x i8] zeroinitializer }, align 32
@veml6070_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"veml6070\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@veml6070_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@veml6070_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @veml6070_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@veml6070_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 0, i32 36, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 27, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@veml6070_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 162, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"i2c device for second chip address failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"veml6070_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/light/veml6070.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@veml6070_probe._entry_ptr = internal global ptr @veml6070_probe._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"veml6070_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 200, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 202, i32 13 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"veml6070_id\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 194, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 152, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"veml6070_info\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 134, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"veml6070_channels\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 77, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [32 x i8] c"../drivers/iio/light/veml6070.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 162, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_veml6070_driver_exit, ptr @__initcall__kmod_veml6070__288_209_veml6070_driver_init6, ptr @veml6070_driver_exit, ptr @veml6070_probe._entry, ptr @veml6070_probe._entry_ptr, ptr @veml6070_driver, ptr @.str, ptr @veml6070_id, ptr @veml6070_probe.__key, ptr @.str.1, ptr @veml6070_info, ptr @veml6070_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6070_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6070_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6070_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6070_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6070_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veml6070_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @veml6070_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @veml6070_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @veml6070_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @veml6070_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veml6070_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %lock = getelementptr inbounds %struct.veml6070_data, ptr %1, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @veml6070_probe.__key) #4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @veml6070_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @veml6070_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %num_channels, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %name, align 8
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 8
  %call2 = tail call ptr @i2c_new_dummy_device(ptr noundef %10, i16 noundef zeroext 57) #4
  %client2 = getelementptr inbounds %struct.veml6070_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call2, ptr %client2, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %if.end12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %12 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client2, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %config = getelementptr inbounds %struct.veml6070_data, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 7, ptr %config, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call15 = tail call i32 @i2c_smbus_write_byte(ptr noundef %17, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end12.fail_crit_edge, label %if.end17

if.end12.fail_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end17:                                         ; preds = %if.end12
  %call18 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.fail_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17.fail_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

fail:                                             ; preds = %if.end17.fail_crit_edge, %if.end12.fail_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end12.fail_crit_edge ], [ %call18, %if.end17.fail_crit_edge ]
  %18 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client2, align 4
  tail call void @i2c_unregister_device(ptr noundef %19) #4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end17.cleanup_crit_edge, %do.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %do.end8 ], [ %ret.0, %fail ], [ -12, %entry.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veml6070_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #4
  %client2 = getelementptr inbounds %struct.veml6070_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client2, align 4
  tail call void @i2c_unregister_device(ptr noundef %5) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veml6070_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %switch = icmp ult i32 %mask, 2
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock.i = getelementptr inbounds %struct.veml6070_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %config.i = getelementptr inbounds %struct.veml6070_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config.i, align 4
  %6 = and i8 %5, -2
  %call.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext %6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.veml6070_read.exit.thread_crit_edge, label %if.end.i

sw.bb.veml6070_read.exit.thread_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %veml6070_read.exit.thread

if.end.i:                                         ; preds = %sw.bb
  tail call void @msleep(i32 noundef 135) #4
  %client2.i = getelementptr inbounds %struct.veml6070_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %client2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client2.i, align 4
  %call3.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.veml6070_read.exit.thread_crit_edge, label %if.end7.i

if.end.i.veml6070_read.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %veml6070_read.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call10.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end7.i.veml6070_read.exit.thread_crit_edge, label %if.end14.i

if.end7.i.veml6070_read.exit.thread_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %veml6070_read.exit.thread

if.end14.i:                                       ; preds = %if.end7.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %config.i, align 4
  %call18.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %12, i8 noundef zeroext %14) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end14.i.veml6070_read.exit.thread_crit_edge, label %veml6070_read.exit

if.end14.i.veml6070_read.exit.thread_crit_edge:   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %veml6070_read.exit.thread

veml6070_read.exit.thread:                        ; preds = %if.end14.i.veml6070_read.exit.thread_crit_edge, %if.end7.i.veml6070_read.exit.thread_crit_edge, %if.end.i.veml6070_read.exit.thread_crit_edge, %sw.bb.veml6070_read.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ %call18.i, %if.end14.i.veml6070_read.exit.thread_crit_edge ], [ %call10.i, %if.end7.i.veml6070_read.exit.thread_crit_edge ], [ %call3.i, %if.end.i.veml6070_read.exit.thread_crit_edge ], [ %call.i, %sw.bb.veml6070_read.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %cleanup

veml6070_read.exit:                               ; preds = %if.end14.i
  %conv23.i = shl i32 %call3.i, 8
  %shl.i = and i32 %conv23.i, 65280
  %conv24.i = and i32 %call10.i, 255
  %or.i = or i32 %conv24.i, %shl.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mask)
  %cmp2 = icmp eq i32 %mask, 1
  br i1 %cmp2, label %if.then3, label %veml6070_read.exit.if.end5_crit_edge

veml6070_read.exit.if.end5_crit_edge:             ; preds = %veml6070_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3:                                         ; preds = %veml6070_read.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 187, i32 %or.i)
  %cmp1.not.i = icmp ugt i32 %or.i, 187
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then3.if.end5_crit_edge

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

for.inc.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 373, i32 %or.i)
  %cmp1.not.1.i = icmp ugt i32 %or.i, 373
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end5_crit_edge

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 560, i32 %or.i)
  %cmp1.not.2.i = icmp ugt i32 %or.i, 560
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end5_crit_edge

for.inc.1.i.if.end5_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 746, i32 %or.i)
  %cmp1.not.3.i = icmp ugt i32 %or.i, 746
  br i1 %cmp1.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.end5_crit_edge

for.inc.2.i.if.end5_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 933, i32 %or.i)
  %cmp1.not.4.i = icmp ugt i32 %or.i, 933
  br i1 %cmp1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.end5_crit_edge

for.inc.3.i.if.end5_crit_edge:                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1120, i32 %or.i)
  %cmp1.not.5.i = icmp ugt i32 %or.i, 1120
  br i1 %cmp1.not.5.i, label %for.inc.5.i, label %for.inc.4.i.if.end5_crit_edge

for.inc.4.i.if.end5_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1308, i32 %or.i)
  %cmp1.not.6.i = icmp ugt i32 %or.i, 1308
  br i1 %cmp1.not.6.i, label %for.inc.6.i, label %for.inc.5.i.if.end5_crit_edge

for.inc.5.i.if.end5_crit_edge:                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1494, i32 %or.i)
  %cmp1.not.7.i = icmp ugt i32 %or.i, 1494
  br i1 %cmp1.not.7.i, label %for.inc.7.i, label %for.inc.6.i.if.end5_crit_edge

for.inc.6.i.if.end5_crit_edge:                    ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1681, i32 %or.i)
  %cmp1.not.8.i = icmp ugt i32 %or.i, 1681
  br i1 %cmp1.not.8.i, label %for.inc.8.i, label %for.inc.7.i.if.end5_crit_edge

for.inc.7.i.if.end5_crit_edge:                    ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1868, i32 %or.i)
  %cmp1.not.9.i = icmp ugt i32 %or.i, 1868
  br i1 %cmp1.not.9.i, label %for.inc.9.i, label %for.inc.8.i.if.end5_crit_edge

for.inc.8.i.if.end5_crit_edge:                    ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2054, i32 %or.i)
  %cmp1.not.10.i = icmp ugt i32 %or.i, 2054
  %spec.select.i = select i1 %cmp1.not.10.i, i32 11, i32 10
  br label %if.end5

if.end5:                                          ; preds = %for.inc.9.i, %for.inc.8.i.if.end5_crit_edge, %for.inc.7.i.if.end5_crit_edge, %for.inc.6.i.if.end5_crit_edge, %for.inc.5.i.if.end5_crit_edge, %for.inc.4.i.if.end5_crit_edge, %for.inc.3.i.if.end5_crit_edge, %for.inc.2.i.if.end5_crit_edge, %for.inc.1.i.if.end5_crit_edge, %for.inc.i.if.end5_crit_edge, %if.then3.if.end5_crit_edge, %veml6070_read.exit.if.end5_crit_edge
  %storemerge = phi i32 [ %or.i, %veml6070_read.exit.if.end5_crit_edge ], [ 0, %if.then3.if.end5_crit_edge ], [ 1, %for.inc.i.if.end5_crit_edge ], [ 2, %for.inc.1.i.if.end5_crit_edge ], [ 3, %for.inc.2.i.if.end5_crit_edge ], [ 4, %for.inc.3.i.if.end5_crit_edge ], [ 5, %for.inc.4.i.if.end5_crit_edge ], [ 6, %for.inc.5.i.if.end5_crit_edge ], [ 7, %for.inc.6.i.if.end5_crit_edge ], [ 8, %for.inc.7.i.if.end5_crit_edge ], [ 9, %for.inc.8.i.if.end5_crit_edge ], [ %spec.select.i, %for.inc.9.i ]
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %veml6070_read.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i.ph, %veml6070_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_veml6070__288_209_veml6070_driver_init6, !1, !"__initcall__kmod_veml6070__288_209_veml6070_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/veml6070.c", i32 209, i32 1}
!2 = !{ptr @__exitcall_veml6070_driver_exit, !1, !"__exitcall_veml6070_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/veml6070.c", i32 211, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/veml6070.c", i32 212, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/veml6070.c", i32 213, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/veml6070.c", i32 202, i32 13}
!12 = !{ptr @veml6070_driver, !13, !"veml6070_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/veml6070.c", i32 200, i32 26}
!14 = !{ptr @veml6070_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/veml6070.c", i32 152, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/veml6070.c", i32 162, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @veml6070_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @veml6070_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @veml6070_info, !26, !"veml6070_info", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/veml6070.c", i32 134, i32 30}
!27 = !{ptr @veml6070_channels, !28, !"veml6070_channels", i1 false, i1 false}
!28 = !{!"../drivers/iio/light/veml6070.c", i32 77, i32 35}
!29 = !{ptr @veml6070_id, !30, !"veml6070_id", i1 false, i1 false}
!30 = !{!"../drivers/iio/light/veml6070.c", i32 194, i32 35}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
