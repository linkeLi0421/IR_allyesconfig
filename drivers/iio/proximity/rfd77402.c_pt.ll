; ModuleID = '/llk/IR_all_yes/drivers/iio/proximity/rfd77402.c_pt.bc'
source_filename = "../drivers/iio/proximity/rfd77402.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.rfd77402_data = type { ptr, %struct.mutex }

@__initcall__kmod_rfd77402__288_327_rfd77402_driver_init6 = internal global ptr @rfd77402_driver_init, section ".initcall6.init", align 4
@rfd77402_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rfd77402_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rfd77402_pm_ops, ptr null, ptr null }, ptr @rfd77402_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rfd77402_driver_exit = internal global ptr @rfd77402_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [59 x i8] c"rfd77402.author=Peter Meerwald-Stadler <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [59 x i8] c"rfd77402.description=RFD77402 Time-of-Flight sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [45 x i8] c"rfd77402.file=drivers/iio/proximity/rfd77402\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"rfd77402.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rfd77402\00", [23 x i8] zeroinitializer }, align 32
@rfd77402_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rfd77402_suspend, ptr @rfd77402_resume, ptr @rfd77402_suspend, ptr @rfd77402_resume, ptr @rfd77402_suspend, ptr @rfd77402_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rfd77402_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rfd77402\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rfd77402_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@rfd77402_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @rfd77402_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@rfd77402_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 22, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"rfd77402_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 318, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 320, i32 13 }
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"rfd77402_pm_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 310, i32 8 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"rfd77402_id\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 312, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 279, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"rfd77402_info\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 187, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"rfd77402_channels\00", align 1
@___asan_gen_.24 = private constant [36 x i8] c"../drivers/iio/proximity/rfd77402.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 85, i32 35 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_rfd77402_driver_exit, ptr @__initcall__kmod_rfd77402__288_327_rfd77402_driver_init6, ptr @rfd77402_driver_exit, ptr @rfd77402_driver, ptr @.str, ptr @rfd77402_pm_ops, ptr @rfd77402_id, ptr @rfd77402_probe.__key, ptr @.str.1, ptr @rfd77402_info, ptr @rfd77402_channels], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfd77402_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfd77402_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfd77402_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfd77402_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfd77402_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfd77402_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rfd77402_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rfd77402_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rfd77402_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @i2c_del_driver(ptr noundef nonnull @rfd77402_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfd77402_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 40) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.off = add nsw i32 %call, -44289
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off)
  %switch = icmp ult i32 %call.off, 2
  br i1 %switch, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call5 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 96) #3
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %1, align 4
  %lock = getelementptr inbounds %struct.rfd77402_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rfd77402_probe.__key) #3
  %info = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 17
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rfd77402_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 13
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rfd77402_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 14
  %5 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_channels, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 15
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str, ptr %name, align 8
  %7 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %call5, align 8
  %call10 = tail call fastcc i32 @rfd77402_init(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @rfd77402_disable, ptr noundef %client) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end18, label %if.then.i

if.then.i:                                        ; preds = %if.end13
  %call.i.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext -112) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.end.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #3
  %call3.i.i.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 6) #3
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %call20 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call5, ptr noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.i.i.i.i, %if.then.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end18 ], [ %call, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call10, %if.end7.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %if.end.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rfd77402_init(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext -112) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #3
  %call3.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %and.i = and i32 %call3.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp9.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp9.not.i, label %if.end, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 28, i16 noundef zeroext 101) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 20, i16 noundef zeroext 1280) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call.i60 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext -111) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp.i61 = icmp slt i32 %call.i60, 0
  br i1 %cmp.i61, label %if.end12.cleanup_crit_edge, label %if.end.i64

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i64:                                       ; preds = %if.end12
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #3
  %call3.i62 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i62)
  %cmp4.i63 = icmp slt i32 %call3.i62, 0
  br i1 %cmp4.i63, label %if.end.i64.cleanup_crit_edge, label %if.end7.i68

if.end.i64.cleanup_crit_edge:                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7.i68:                                      ; preds = %if.end.i64
  %and.i65 = and i32 %call3.i62, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i65)
  %cmp9.not.i66 = icmp eq i32 %and.i65, 16
  br i1 %cmp9.not.i66, label %if.end16, label %if.end7.i68.cleanup_crit_edge

if.end7.i68.cleanup_crit_edge:                    ; preds = %if.end7.i68
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end16:                                         ; preds = %if.end7.i68
  %call17 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 20, i16 noundef zeroext 1536) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call.i71 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext -110) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp.i72 = icmp slt i32 %call.i71, 0
  br i1 %cmp.i72, label %if.end20.cleanup_crit_edge, label %if.end.i75

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i75:                                       ; preds = %if.end20
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #3
  %call3.i73 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i73)
  %cmp4.i74 = icmp slt i32 %call3.i73, 0
  br i1 %cmp4.i74, label %if.end.i75.cleanup_crit_edge, label %if.end7.i79

if.end.i75.cleanup_crit_edge:                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7.i79:                                      ; preds = %if.end.i75
  %and.i76 = and i32 %call3.i73, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and.i76)
  %cmp9.not.i77 = icmp eq i32 %and.i76, 24
  br i1 %cmp9.not.i77, label %for.body.preheader, label %if.end7.i79.cleanup_crit_edge

if.end7.i79.cleanup_crit_edge:                    ; preds = %if.end7.i79
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.preheader:                               ; preds = %if.end7.i79
  %call27 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 12, i16 noundef zeroext -7936) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %for.body.preheader.cleanup_crit_edge, label %for.cond

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %call27.1 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 14, i16 noundef zeroext 4351) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.1)
  %cmp28.1 = icmp slt i32 %call27.1, 0
  br i1 %cmp28.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call27.2 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 32, i16 noundef zeroext 2000) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.2)
  %cmp28.2 = icmp slt i32 %call27.2, 0
  br i1 %cmp28.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %call27.3 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 34, i16 noundef zeroext 20488) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.3)
  %cmp28.3 = icmp slt i32 %call27.3, 0
  br i1 %cmp28.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %call27.4 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 36, i16 noundef zeroext -24511) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.4)
  %cmp28.4 = icmp slt i32 %call27.4, 0
  br i1 %cmp28.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %call27.5 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 38, i16 noundef zeroext 17876) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.5)
  %cmp28.5 = icmp slt i32 %call27.5, 0
  br i1 %cmp28.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #5
  %call31 = tail call fastcc i32 @rfd77402_set_state(ptr noundef %client, i8 noundef zeroext 16, i16 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.5, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end7.i79.cleanup_crit_edge, %if.end.i75.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end7.i68.cleanup_crit_edge, %if.end.i64.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %for.cond.5 ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ -19, %if.end7.i.cleanup_crit_edge ], [ %call3.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ -19, %if.end7.i68.cleanup_crit_edge ], [ %call3.i62, %if.end.i64.cleanup_crit_edge ], [ %call.i60, %if.end12.cleanup_crit_edge ], [ -19, %if.end7.i79.cleanup_crit_edge ], [ %call3.i73, %if.end.i75.cleanup_crit_edge ], [ %call.i71, %if.end20.cleanup_crit_edge ], [ %call27, %for.body.preheader.cleanup_crit_edge ], [ %call27.1, %for.cond.cleanup_crit_edge ], [ %call27.2, %for.cond.1.cleanup_crit_edge ], [ %call27.3, %for.cond.2.cleanup_crit_edge ], [ %call27.4, %for.cond.3.cleanup_crit_edge ], [ %call27.5, %for.cond.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfd77402_disable(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext -112) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.rfd77402_powerdown.exit_crit_edge, label %if.end.i.i

entry.rfd77402_powerdown.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rfd77402_powerdown.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #3
  %call3.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 6) #3
  br label %rfd77402_powerdown.exit

rfd77402_powerdown.exit:                          ; preds = %if.end.i.i, %entry.rfd77402_powerdown.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfd77402_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.rfd77402_data, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 4, i8 noundef zeroext -110) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.rfd77402_measure.exit.thread_crit_edge, label %if.end.i.i

sw.bb.rfd77402_measure.exit.thread_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %rfd77402_measure.exit.thread

if.end.i.i:                                       ; preds = %sw.bb
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #3
  %call3.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext 6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.i.rfd77402_measure.exit.thread_crit_edge, label %if.end7.i.i

if.end.i.i.rfd77402_measure.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rfd77402_measure.exit.thread

if.end7.i.i:                                      ; preds = %if.end.i.i
  %and.i.i = and i32 %call3.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and.i.i)
  %cmp9.not.i.i = icmp eq i32 %and.i.i, 24
  br i1 %cmp9.not.i.i, label %if.end.i, label %if.end7.i.i.rfd77402_measure.exit.thread_crit_edge

if.end7.i.i.rfd77402_measure.exit.thread_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rfd77402_measure.exit.thread

if.end.i:                                         ; preds = %if.end7.i.i
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 4, i8 noundef zeroext -127) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.err.i_crit_edge, label %while.body.preheader.i

if.end.i.err.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err.i

while.body.preheader.i:                           ; preds = %if.end.i
  %call6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %while.body.preheader.i.err.i_crit_edge, label %if.end9.i

while.body.preheader.i.err.i_crit_edge:           ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err.i

if.end9.i:                                        ; preds = %while.body.preheader.i
  %and.i = and i32 %call6.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end11.i, label %if.end9.i.if.end14.i_crit_edge

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14.i

if.end11.i:                                       ; preds = %if.end9.i
  tail call void @msleep(i32 noundef 20) #3
  %call6.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1.i)
  %cmp7.1.i = icmp slt i32 %call6.1.i, 0
  br i1 %cmp7.1.i, label %if.end11.i.err.i_crit_edge, label %if.end9.1.i

if.end11.i.err.i_crit_edge:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err.i

if.end9.1.i:                                      ; preds = %if.end11.i
  %and.1.i = and i32 %call6.1.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %if.end11.1.i, label %if.end9.1.i.if.end14.i_crit_edge

if.end9.1.i.if.end14.i_crit_edge:                 ; preds = %if.end9.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14.i

if.end11.1.i:                                     ; preds = %if.end9.1.i
  tail call void @msleep(i32 noundef 20) #3
  %call6.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.2.i)
  %cmp7.2.i = icmp slt i32 %call6.2.i, 0
  br i1 %cmp7.2.i, label %if.end11.1.i.err.i_crit_edge, label %if.end9.2.i

if.end11.1.i.err.i_crit_edge:                     ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err.i

if.end9.2.i:                                      ; preds = %if.end11.1.i
  %and.2.i = and i32 %call6.2.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %if.end11.2.i, label %if.end9.2.i.if.end14.i_crit_edge

if.end9.2.i.if.end14.i_crit_edge:                 ; preds = %if.end9.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14.i

if.end11.2.i:                                     ; preds = %if.end9.2.i
  tail call void @msleep(i32 noundef 20) #3
  %call6.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.3.i)
  %cmp7.3.i = icmp slt i32 %call6.3.i, 0
  br i1 %cmp7.3.i, label %if.end11.2.i.err.i_crit_edge, label %if.end9.3.i

if.end11.2.i.err.i_crit_edge:                     ; preds = %if.end11.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err.i

if.end9.3.i:                                      ; preds = %if.end11.2.i
  %and.3.i = and i32 %call6.3.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %if.end11.3.i, label %if.end9.3.i.if.end14.i_crit_edge

if.end9.3.i.if.end14.i_crit_edge:                 ; preds = %if.end9.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14.i

if.end11.3.i:                                     ; preds = %if.end9.3.i
  tail call void @msleep(i32 noundef 20) #3
  %call6.4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.4.i)
  %cmp7.4.i = icmp slt i32 %call6.4.i, 0
  br i1 %cmp7.4.i, label %if.end11.3.i.err.i_crit_edge, label %if.end9.4.i

if.end11.3.i.err.i_crit_edge:                     ; preds = %if.end11.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err.i

if.end9.4.i:                                      ; preds = %if.end11.3.i
  %and.4.i = and i32 %call6.4.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %if.end11.4.i, label %if.end9.4.i.if.end14.i_crit_edge

if.end9.4.i.if.end14.i_crit_edge:                 ; preds = %if.end9.4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14.i

if.end11.4.i:                                     ; preds = %if.end9.4.i
  tail call void @msleep(i32 noundef 20) #3
  %call6.5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.5.i)
  %cmp7.5.i = icmp slt i32 %call6.5.i, 0
  br i1 %cmp7.5.i, label %if.end11.4.i.err.i_crit_edge, label %if.end9.5.i

if.end11.4.i.err.i_crit_edge:                     ; preds = %if.end11.4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err.i

if.end9.5.i:                                      ; preds = %if.end11.4.i
  %and.5.i = and i32 %call6.5.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool.not.5.i, label %if.end11.5.i, label %if.end9.5.i.if.end14.i_crit_edge

if.end9.5.i.if.end14.i_crit_edge:                 ; preds = %if.end9.5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14.i

if.end11.5.i:                                     ; preds = %if.end9.5.i
  tail call void @msleep(i32 noundef 20) #3
  %call6.6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.6.i)
  %cmp7.6.i = icmp slt i32 %call6.6.i, 0
  br i1 %cmp7.6.i, label %if.end11.5.i.err.i_crit_edge, label %if.end9.6.i

if.end11.5.i.err.i_crit_edge:                     ; preds = %if.end11.5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err.i

if.end9.6.i:                                      ; preds = %if.end11.5.i
  %and.6.i = and i32 %call6.6.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool.not.6.i, label %if.end11.6.i, label %if.end9.6.i.if.end14.i_crit_edge

if.end9.6.i.if.end14.i_crit_edge:                 ; preds = %if.end9.6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14.i

if.end11.6.i:                                     ; preds = %if.end9.6.i
  tail call void @msleep(i32 noundef 20) #3
  %call6.7.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.7.i)
  %cmp7.7.i = icmp slt i32 %call6.7.i, 0
  br i1 %cmp7.7.i, label %if.end11.6.i.err.i_crit_edge, label %if.end9.7.i

if.end11.6.i.err.i_crit_edge:                     ; preds = %if.end11.6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err.i

if.end9.7.i:                                      ; preds = %if.end11.6.i
  %and.7.i = and i32 %call6.7.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool.not.7.i = icmp eq i32 %and.7.i, 0
  br i1 %tobool.not.7.i, label %if.end11.7.i, label %if.end9.7.i.if.end14.i_crit_edge

if.end9.7.i.if.end14.i_crit_edge:                 ; preds = %if.end9.7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14.i

if.end11.7.i:                                     ; preds = %if.end9.7.i
  tail call void @msleep(i32 noundef 20) #3
  %call6.8.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.8.i)
  %cmp7.8.i = icmp slt i32 %call6.8.i, 0
  br i1 %cmp7.8.i, label %if.end11.7.i.err.i_crit_edge, label %if.end9.8.i

if.end11.7.i.err.i_crit_edge:                     ; preds = %if.end11.7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err.i

if.end9.8.i:                                      ; preds = %if.end11.7.i
  %and.8.i = and i32 %call6.8.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i)
  %tobool.not.8.i = icmp eq i32 %and.8.i, 0
  br i1 %tobool.not.8.i, label %if.end11.8.i, label %if.end9.8.i.if.end14.i_crit_edge

if.end9.8.i.if.end14.i_crit_edge:                 ; preds = %if.end9.8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14.i

if.end11.8.i:                                     ; preds = %if.end9.8.i
  tail call void @msleep(i32 noundef 20) #3
  %call6.9.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.9.i)
  %cmp7.9.i = icmp slt i32 %call6.9.i, 0
  br i1 %cmp7.9.i, label %if.end11.8.i.err.i_crit_edge, label %if.end9.9.i

if.end11.8.i.err.i_crit_edge:                     ; preds = %if.end11.8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err.i

if.end9.9.i:                                      ; preds = %if.end11.8.i
  %and.9.i = and i32 %call6.9.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9.i)
  %tobool.not.9.i = icmp eq i32 %and.9.i, 0
  br i1 %tobool.not.9.i, label %if.end11.9.i, label %if.end9.9.i.if.end14.i_crit_edge

if.end9.9.i.if.end14.i_crit_edge:                 ; preds = %if.end9.9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14.i

if.end11.9.i:                                     ; preds = %if.end9.9.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @msleep(i32 noundef 20) #3
  br label %err.i

if.end14.i:                                       ; preds = %if.end9.9.i.if.end14.i_crit_edge, %if.end9.8.i.if.end14.i_crit_edge, %if.end9.7.i.if.end14.i_crit_edge, %if.end9.6.i.if.end14.i_crit_edge, %if.end9.5.i.if.end14.i_crit_edge, %if.end9.4.i.if.end14.i_crit_edge, %if.end9.3.i.if.end14.i_crit_edge, %if.end9.2.i.if.end14.i_crit_edge, %if.end9.1.i.if.end14.i_crit_edge, %if.end9.i.if.end14.i_crit_edge
  %call15.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext 8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.end14.i.err.i_crit_edge, label %if.end18.i

if.end14.i.err.i_crit_edge:                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err.i

if.end18.i:                                       ; preds = %if.end14.i
  %5 = and i32 %call15.i, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %5)
  %.not.i = icmp eq i32 %5, 32768
  br i1 %.not.i, label %rfd77402_measure.exit, label %if.end18.i.err.i_crit_edge

if.end18.i.err.i_crit_edge:                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err.i

err.i:                                            ; preds = %if.end18.i.err.i_crit_edge, %if.end14.i.err.i_crit_edge, %if.end11.9.i, %if.end11.8.i.err.i_crit_edge, %if.end11.7.i.err.i_crit_edge, %if.end11.6.i.err.i_crit_edge, %if.end11.5.i.err.i_crit_edge, %if.end11.4.i.err.i_crit_edge, %if.end11.3.i.err.i_crit_edge, %if.end11.2.i.err.i_crit_edge, %if.end11.1.i.err.i_crit_edge, %if.end11.i.err.i_crit_edge, %while.body.preheader.i.err.i_crit_edge, %if.end.i.err.i_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.end.i.err.i_crit_edge ], [ %call15.i, %if.end14.i.err.i_crit_edge ], [ -110, %if.end11.9.i ], [ -5, %if.end18.i.err.i_crit_edge ], [ %call6.i, %while.body.preheader.i.err.i_crit_edge ], [ %call6.1.i, %if.end11.i.err.i_crit_edge ], [ %call6.2.i, %if.end11.1.i.err.i_crit_edge ], [ %call6.3.i, %if.end11.2.i.err.i_crit_edge ], [ %call6.4.i, %if.end11.3.i.err.i_crit_edge ], [ %call6.5.i, %if.end11.4.i.err.i_crit_edge ], [ %call6.6.i, %if.end11.5.i.err.i_crit_edge ], [ %call6.7.i, %if.end11.6.i.err.i_crit_edge ], [ %call6.8.i, %if.end11.7.i.err.i_crit_edge ], [ %call6.9.i, %if.end11.8.i.err.i_crit_edge ]
  %call.i42.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 4, i8 noundef zeroext -111) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %cmp.i43.i = icmp slt i32 %call.i42.i, 0
  br i1 %cmp.i43.i, label %err.i.rfd77402_measure.exit.thread_crit_edge, label %if.end.i46.i

err.i.rfd77402_measure.exit.thread_crit_edge:     ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rfd77402_measure.exit.thread

if.end.i46.i:                                     ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #3
  %call3.i44.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext 6) #3
  br label %rfd77402_measure.exit.thread

rfd77402_measure.exit.thread:                     ; preds = %if.end.i46.i, %err.i.rfd77402_measure.exit.thread_crit_edge, %if.end7.i.i.rfd77402_measure.exit.thread_crit_edge, %if.end.i.i.rfd77402_measure.exit.thread_crit_edge, %sw.bb.rfd77402_measure.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %ret.0.i, %if.end.i46.i ], [ %call.i.i, %sw.bb.rfd77402_measure.exit.thread_crit_edge ], [ %call3.i.i, %if.end.i.i.rfd77402_measure.exit.thread_crit_edge ], [ -19, %if.end7.i.i.rfd77402_measure.exit.thread_crit_edge ], [ %ret.0.i, %err.i.rfd77402_measure.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #3
  br label %cleanup

rfd77402_measure.exit:                            ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #5
  %and25.i = lshr i32 %call15.i, 2
  %shr.i = and i32 %and25.i, 2047
  tail call void @mutex_unlock(ptr noundef %lock) #3
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %val, align 4
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %rfd77402_measure.exit, %rfd77402_measure.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb3 ], [ 1, %rfd77402_measure.exit ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %rfd77402_measure.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rfd77402_set_state(ptr noundef %client, i8 noundef zeroext %state, i16 noundef zeroext %check) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i8 %state, -128
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext %0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #3
  %call3 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %call3, 31
  %conv8 = zext i16 %check to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv8)
  %cmp9.not = icmp eq i32 %and, %conv8
  %. = select i1 %cmp9.not, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %., %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfd77402_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 4, i8 noundef zeroext -112) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.rfd77402_powerdown.exit_crit_edge, label %if.end.i.i

entry.rfd77402_powerdown.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rfd77402_powerdown.exit

if.end.i.i:                                       ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #3
  %call3.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %add.ptr, i8 noundef zeroext 6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.i.rfd77402_powerdown.exit_crit_edge, label %if.end7.i.i

if.end.i.i.rfd77402_powerdown.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rfd77402_powerdown.exit

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %and.i.i = and i32 %call3.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp9.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %cmp9.not.i.i, i32 0, i32 -19
  br label %rfd77402_powerdown.exit

rfd77402_powerdown.exit:                          ; preds = %if.end7.i.i, %if.end.i.i.rfd77402_powerdown.exit_crit_edge, %entry.rfd77402_powerdown.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %entry.rfd77402_powerdown.exit_crit_edge ], [ %call3.i.i, %if.end.i.i.rfd77402_powerdown.exit_crit_edge ], [ %..i.i, %if.end7.i.i ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfd77402_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call fastcc i32 @rfd77402_init(ptr noundef %add.ptr)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__initcall__kmod_rfd77402__288_327_rfd77402_driver_init6, !1, !"__initcall__kmod_rfd77402__288_327_rfd77402_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/proximity/rfd77402.c", i32 327, i32 1}
!2 = !{ptr @__exitcall_rfd77402_driver_exit, !1, !"__exitcall_rfd77402_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/proximity/rfd77402.c", i32 329, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/proximity/rfd77402.c", i32 330, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/proximity/rfd77402.c", i32 331, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/proximity/rfd77402.c", i32 320, i32 13}
!12 = !{ptr @rfd77402_driver, !13, !"rfd77402_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/proximity/rfd77402.c", i32 318, i32 26}
!14 = !{ptr @rfd77402_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/proximity/rfd77402.c", i32 279, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rfd77402_info, !18, !"rfd77402_info", i1 false, i1 false}
!18 = !{!"../drivers/iio/proximity/rfd77402.c", i32 187, i32 30}
!19 = !{ptr @rfd77402_channels, !20, !"rfd77402_channels", i1 false, i1 false}
!20 = !{!"../drivers/iio/proximity/rfd77402.c", i32 85, i32 35}
!21 = distinct !{null, !22, !"rf77402_tof_config", i1 false, i1 false}
!22 = !{!"../drivers/iio/proximity/rfd77402.c", i32 70, i32 3}
!23 = !{ptr @rfd77402_pm_ops, !24, !"rfd77402_pm_ops", i1 false, i1 false}
!24 = !{!"../drivers/iio/proximity/rfd77402.c", i32 310, i32 8}
!25 = !{ptr @rfd77402_id, !26, !"rfd77402_id", i1 false, i1 false}
!26 = !{!"../drivers/iio/proximity/rfd77402.c", i32 312, i32 35}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
