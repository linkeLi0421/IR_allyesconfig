; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-pcf8583.c_pt.bc'
source_filename = "../drivers/rtc/rtc-pcf8583.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.pcf8583 = type { ptr, i8 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_pcf8583__288_314_pcf8583_driver_init6 = internal global ptr @pcf8583_driver_init, section ".initcall6.init", align 4
@pcf8583_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pcf8583_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pcf8583_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pcf8583_driver_exit = internal global ptr @pcf8583_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [32 x i8] c"rtc_pcf8583.author=Russell King\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [47 x i8] c"rtc_pcf8583.description=PCF8583 I2C RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"rtc_pcf8583.file=drivers/rtc/rtc-pcf8583\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"rtc_pcf8583.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcf8583\00", [24 x i8] zeroinitializer }, align 32
@pcf8583_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pcf8583\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pcf8583_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @pcf8583_rtc_read_time, ptr @pcf8583_rtc_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@pcf8583_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"resetting control %02x -> %02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcf8583_rtc_read_time\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-pcf8583.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcf8583_rtc_read_time._entry_ptr = internal global ptr @pcf8583_rtc_read_time._entry, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"pcf8583_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 306, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 308, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [11 x i8] c"pcf8583_id\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 300, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"pcf8583_rtc_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 273, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [29 x i8] c"../drivers/rtc/rtc-pcf8583.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 190, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pcf8583_driver_exit, ptr @__initcall__kmod_rtc_pcf8583__288_314_pcf8583_driver_init6, ptr @pcf8583_driver_exit, ptr @pcf8583_rtc_read_time._entry, ptr @pcf8583_rtc_read_time._entry_ptr, ptr @pcf8583_driver, ptr @.str, ptr @pcf8583_id, ptr @pcf8583_rtc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8583_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8583_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8583_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8583_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8583_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pcf8583_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcf8583_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @pcf8583_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8583_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.i2c_driver, ptr @pcf8583_driver, i32 0, i32 7), align 4
  %call6 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef %7, ptr noundef nonnull @pcf8583_rtc_ops, ptr noundef null) #6
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %call.i, align 4
  %cmp.i.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call6 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %9, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end4 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8583_rtc_read_time(ptr noundef %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  %addr.i47 = alloca [1 x i8], align 1
  %msgs.i48 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i46 = alloca [8 x i8], align 8
  %addr.i = alloca [1 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %year = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %year) #6
  %0 = ptrtoint ptr %year to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %year, align 1, !annotation !35
  %1 = getelementptr inbounds [2 x i8], ptr %year, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !35
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %ctrl1.i = getelementptr inbounds %struct.pcf8583, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctrl1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %6)
  %tobool.not = icmp ult i8 %6, 64
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %7 = and i8 %6, 63
  %conv4 = zext i8 %6 to i32
  %conv5 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %conv4, i32 noundef %conv5) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %8 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %buf.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %7, ptr %8, align 1
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %ctrl2.i = getelementptr inbounds %struct.pcf8583, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %ctrl2.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.then.cleanup28_crit_edge, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then.cleanup28_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup28

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i46) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i) #6
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %15 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 255, i32 16)
  %addr2.i = getelementptr i8, ptr %dev, i32 -30
  %17 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr2.i, align 2
  %19 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i, align 2
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %15, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %addr.i, ptr %buf3.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %23 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %18, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %24 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %25 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 6, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %26 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf.i46, ptr %buf8.i, align 4
  %27 = ptrtoint ptr %buf.i46 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %buf.i46, align 8
  %adapter.i = getelementptr i8, ptr %dev, i32 -8
  %28 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msgs.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  br i1 %cmp.i, label %if.then.i, label %pcf8583_get_datetime.exit

if.then.i:                                        ; preds = %if.end9
  %30 = getelementptr inbounds [8 x i8], ptr %buf.i46, i32 0, i32 3
  %31 = getelementptr inbounds [8 x i8], ptr %buf.i46, i32 0, i32 2
  %32 = getelementptr inbounds [8 x i8], ptr %buf.i46, i32 0, i32 5
  %33 = getelementptr inbounds [8 x i8], ptr %buf.i46, i32 0, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %36 = lshr i8 %35, 6
  %37 = zext i8 %36 to i32
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %38 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tm_year.i, align 4
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %32, align 1
  %41 = lshr i8 %40, 5
  %42 = zext i8 %41 to i32
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %43 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tm_wday.i, align 4
  %44 = and i8 %35, 63
  %45 = and i8 %40, 31
  %46 = getelementptr inbounds [8 x i8], ptr %buf.i46, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %call30.i = call i32 @_bcd2bin(i8 noundef zeroext %48) #10
  %49 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call30.i, ptr %tm, align 4
  %50 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %31, align 2
  %call43.i = call i32 @_bcd2bin(i8 noundef zeroext %51) #10
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %52 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call43.i, ptr %tm_min.i, align 4
  %53 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %30, align 1
  %call58.i = call i32 @_bcd2bin(i8 noundef zeroext %54) #10
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %55 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call58.i, ptr %tm_hour.i, align 4
  %call73.i = call i32 @_bcd2bin(i8 noundef zeroext %44) #10
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %56 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call73.i, ptr %tm_mday.i, align 4
  %call88.i = call i32 @_bcd2bin(i8 noundef zeroext %45) #10
  %sub.i = add i32 %call88.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %57 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i46) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i47) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i48) #6
  %58 = getelementptr inbounds i8, ptr %msgs.i48, i32 4
  %59 = call ptr @memset(ptr %58, i32 255, i32 16)
  %60 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %addr2.i, align 2
  %62 = ptrtoint ptr %msgs.i48 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %msgs.i48, align 4
  %flags.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i48, i32 0, i32 1
  %63 = ptrtoint ptr %flags.i50 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %flags.i50, align 2
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 1, ptr %58, align 4
  %buf.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i48, i32 0, i32 3
  %65 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %addr.i47, ptr %buf.i52, align 4
  %arrayinit.element.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i48, i32 1
  %66 = ptrtoint ptr %arrayinit.element.i53 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %61, ptr %arrayinit.element.i53, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i48, i32 1, i32 1
  %67 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i48, i32 1, i32 2
  %68 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 2, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i48, i32 1, i32 3
  %69 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %year, ptr %buf7.i, align 4
  %70 = ptrtoint ptr %addr.i47 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -64, ptr %addr.i47, align 1
  %71 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adapter.i, align 8
  %call.i56 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msgs.i48, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i56)
  %cmp12.i = icmp eq i32 %call.i56, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i48) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i47) #6
  br i1 %cmp12.i, label %if.end15, label %if.then.i.cleanup28_crit_edge

if.then.i.cleanup28_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup28

pcf8583_get_datetime.exit:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i46) #6
  br label %cleanup28

if.end15:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %year to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %year, align 1
  %conv16 = zext i8 %74 to i32
  %75 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tm_year.i, align 4
  %and17 = and i32 %conv16, 3
  %sub = sub i32 %76, %and17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp18 = icmp slt i32 %sub, 0
  %add = add i32 %sub, 4
  %spec.select = select i1 %cmp18, i32 %add, i32 %sub
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %1, align 1
  %conv24 = zext i8 %78 to i32
  %mul = mul nuw nsw i32 %conv24, 100
  %add22 = add nuw nsw i32 %conv16, -1900
  %add25 = add nsw i32 %add22, %mul
  %sub26 = add i32 %add25, %spec.select
  %79 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub26, ptr %tm_year.i, align 4
  br label %cleanup28

cleanup28:                                        ; preds = %if.end15, %pcf8583_get_datetime.exit, %if.then.i.cleanup28_crit_edge, %if.then.cleanup28_crit_edge
  %retval.1 = phi i32 [ 0, %if.end15 ], [ %call.i.i, %if.then.cleanup28_crit_edge ], [ -5, %if.then.i.cleanup28_crit_edge ], [ -5, %pcf8583_get_datetime.exit ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %year) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8583_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %buf.i90 = alloca [9 x i8], align 1
  %buf.i80 = alloca [9 x i8], align 1
  %addr.i58 = alloca [1 x i8], align 1
  %msgs.i59 = alloca [2 x %struct.i2c_msg], align 4
  %addr.i = alloca [1 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [8 x i8], align 1
  %year = alloca [2 x i8], align 2
  %chk = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %year) #6
  %0 = ptrtoint ptr %year to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %year, align 2, !annotation !35
  %1 = getelementptr inbounds [2 x i8], ptr %year, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !35
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %chk) #6
  %3 = ptrtoint ptr %chk to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %chk, align 1, !annotation !35
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %4 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_year, align 4
  %add = add i32 %5, 1900
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i) #6
  %6 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 1
  %7 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 2
  %8 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 3
  %9 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 4
  %10 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 5
  %11 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 6
  %12 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 7
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %buf.i, align 1
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  %ctrl.i = getelementptr inbounds %struct.pcf8583, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrl.i, align 4
  %18 = or i8 %17, -128
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %6, align 1
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %7, align 1
  %21 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm, align 4
  %call8.i = tail call zeroext i8 @_bin2bcd(i32 noundef %22) #10
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call8.i, ptr %8, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %24 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_min.i, align 4
  %call22.i = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #10
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call22.i, ptr %9, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %27 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_hour.i, align 4
  %call38.i = tail call zeroext i8 @_bin2bcd(i32 noundef %28) #10
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call38.i, ptr %10, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %30 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tm_mday.i, align 4
  %call54.i = tail call zeroext i8 @_bin2bcd(i32 noundef %31) #10
  %.tr = trunc i32 %5 to i8
  %32 = shl i8 %.tr, 6
  %conv60.i = or i8 %32, %call54.i
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv60.i, ptr %11, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %34 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_mon.i, align 4
  %add62.i = add i32 %35, 1
  %call76.i = tail call zeroext i8 @_bin2bcd(i32 noundef %add62.i) #10
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %36 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tm_wday.i, align 4
  %.tr116 = trunc i32 %37 to i8
  %38 = shl i8 %.tr116, 5
  %conv82.i = or i8 %38, %call76.i
  %39 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv82.i, ptr %12, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %buf.i, i32 noundef 8, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 8
  br i1 %cmp.not.i, label %if.end87.i, label %entry.pcf8583_set_datetime.exit.thread_crit_edge

entry.pcf8583_set_datetime.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcf8583_set_datetime.exit.thread

if.end87.i:                                       ; preds = %entry
  %40 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i.i, align 4
  %ctrl89.i = getelementptr inbounds %struct.pcf8583, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %ctrl89.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ctrl89.i, align 4
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %6, align 1
  %call.i2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i2.i)
  %cmp93.i = icmp eq i32 %call.i2.i, 2
  br i1 %cmp93.i, label %pcf8583_read_mem.exit, label %if.end87.i.pcf8583_set_datetime.exit.thread_crit_edge

if.end87.i.pcf8583_set_datetime.exit.thread_crit_edge: ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcf8583_set_datetime.exit.thread

pcf8583_set_datetime.exit.thread:                 ; preds = %if.end87.i.pcf8583_set_datetime.exit.thread_crit_edge, %entry.pcf8583_set_datetime.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #6
  br label %cleanup

pcf8583_read_mem.exit:                            ; preds = %if.end87.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %45 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %46 = call ptr @memset(ptr %45, i32 255, i32 16)
  %addr2.i = getelementptr i8, ptr %dev, i32 -30
  %47 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %addr2.i, align 2
  %49 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i, align 2
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %45, align 4
  %buf.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %52 = ptrtoint ptr %buf.i54 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %addr.i, ptr %buf.i54, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %53 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %48, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %54 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %55 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %56 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %chk, ptr %buf7.i, align 4
  %57 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 63, ptr %addr.i, align 1
  %adapter.i = getelementptr i8, ptr %dev, i32 -8
  %58 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msgs.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp12.i = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i) #6
  br i1 %cmp12.i, label %pcf8583_read_mem.exit79, label %pcf8583_read_mem.exit.cleanup_crit_edge

pcf8583_read_mem.exit.cleanup_crit_edge:          ; preds = %pcf8583_read_mem.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pcf8583_read_mem.exit79:                          ; preds = %pcf8583_read_mem.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i58) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i59) #6
  %60 = getelementptr inbounds i8, ptr %msgs.i59, i32 4
  %61 = call ptr @memset(ptr %60, i32 255, i32 16)
  %62 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %addr2.i, align 2
  %64 = ptrtoint ptr %msgs.i59 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %msgs.i59, align 4
  %flags.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i59, i32 0, i32 1
  %65 = ptrtoint ptr %flags.i61 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %flags.i61, align 2
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %60, align 4
  %buf.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i59, i32 0, i32 3
  %67 = ptrtoint ptr %buf.i63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %addr.i58, ptr %buf.i63, align 4
  %arrayinit.element.i64 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i59, i32 1
  %68 = ptrtoint ptr %arrayinit.element.i64 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %63, ptr %arrayinit.element.i64, align 4
  %flags5.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i59, i32 1, i32 1
  %69 = ptrtoint ptr %flags5.i65 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 1, ptr %flags5.i65, align 2
  %len6.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i59, i32 1, i32 2
  %70 = ptrtoint ptr %len6.i66 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 2, ptr %len6.i66, align 4
  %buf7.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i59, i32 1, i32 3
  %71 = ptrtoint ptr %buf7.i69 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %year, ptr %buf7.i69, align 4
  %72 = ptrtoint ptr %addr.i58 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -64, ptr %addr.i58, align 1
  %73 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adapter.i, align 8
  %call.i74 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msgs.i59, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i74)
  %cmp12.i75 = icmp eq i32 %call.i74, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i59) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i58) #6
  br i1 %cmp12.i75, label %pcf8583_write_mem.exit, label %pcf8583_read_mem.exit79.cleanup_crit_edge

pcf8583_read_mem.exit79.cleanup_crit_edge:        ; preds = %pcf8583_read_mem.exit79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pcf8583_write_mem.exit:                           ; preds = %pcf8583_read_mem.exit79
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %1, align 1
  %77 = ptrtoint ptr %year to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %year, align 2
  %79 = ptrtoint ptr %chk to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %chk, align 1
  %81 = add i8 %78, %76
  %sub = sub i8 %80, %81
  %add.frozen = freeze i32 %add
  %div = udiv i32 %add.frozen, 100
  %conv17 = trunc i32 %div to i8
  store i8 %conv17, ptr %1, align 1
  %82 = mul i32 %div, 100
  %rem.decomposed = sub i32 %add.frozen, %82
  %conv19 = trunc i32 %rem.decomposed to i8
  store i8 %conv19, ptr %year, align 2
  %add25 = add nuw nsw i32 %div, %rem.decomposed
  %83 = trunc i32 %add25 to i8
  %conv28 = add i8 %sub, %83
  store i8 %conv28, ptr %chk, align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf.i80) #6
  %84 = getelementptr inbounds [9 x i8], ptr %buf.i80, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 8)
  store i64 -1, ptr %84, align 1
  %86 = ptrtoint ptr %buf.i80 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -64, ptr %buf.i80, align 1
  %87 = ptrtoint ptr %year to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %year, align 2
  store i16 %88, ptr %84, align 1
  %call.i.i86 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %buf.i80, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i86)
  %cmp8.i = icmp eq i32 %call.i.i86, 3
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf.i80) #6
  br i1 %cmp8.i, label %pcf8583_write_mem.exit104, label %pcf8583_write_mem.exit.cleanup_crit_edge

pcf8583_write_mem.exit.cleanup_crit_edge:         ; preds = %pcf8583_write_mem.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pcf8583_write_mem.exit104:                        ; preds = %pcf8583_write_mem.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf.i90) #6
  %89 = getelementptr inbounds [9 x i8], ptr %buf.i90, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 8)
  store i64 -1, ptr %89, align 1
  %91 = ptrtoint ptr %buf.i90 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 63, ptr %buf.i90, align 1
  %92 = ptrtoint ptr %chk to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %chk, align 1
  store i8 %93, ptr %89, align 1
  %call.i.i98 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %buf.i90, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i98)
  %cmp8.i100 = icmp eq i32 %call.i.i98, 2
  %cond.i101 = select i1 %cmp8.i100, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf.i90) #6
  br label %cleanup

cleanup:                                          ; preds = %pcf8583_write_mem.exit104, %pcf8583_write_mem.exit.cleanup_crit_edge, %pcf8583_read_mem.exit79.cleanup_crit_edge, %pcf8583_read_mem.exit.cleanup_crit_edge, %pcf8583_set_datetime.exit.thread
  %retval.0 = phi i32 [ %cond.i101, %pcf8583_write_mem.exit104 ], [ -5, %pcf8583_read_mem.exit.cleanup_crit_edge ], [ -5, %pcf8583_read_mem.exit79.cleanup_crit_edge ], [ -5, %pcf8583_write_mem.exit.cleanup_crit_edge ], [ -5, %pcf8583_set_datetime.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %chk) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %year) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_rtc_pcf8583__288_314_pcf8583_driver_init6, !1, !"__initcall__kmod_rtc_pcf8583__288_314_pcf8583_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-pcf8583.c", i32 314, i32 1}
!2 = !{ptr @__exitcall_pcf8583_driver_exit, !1, !"__exitcall_pcf8583_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-pcf8583.c", i32 316, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-pcf8583.c", i32 317, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-pcf8583.c", i32 318, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-pcf8583.c", i32 308, i32 11}
!12 = !{ptr @pcf8583_driver, !13, !"pcf8583_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-pcf8583.c", i32 306, i32 26}
!14 = !{ptr @pcf8583_rtc_ops, !15, !"pcf8583_rtc_ops", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-pcf8583.c", i32 273, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-pcf8583.c", i32 190, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pcf8583_rtc_read_time._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pcf8583_rtc_read_time._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @pcf8583_id, !25, !"pcf8583_id", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-pcf8583.c", i32 300, i32 35}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"auto-init"}
