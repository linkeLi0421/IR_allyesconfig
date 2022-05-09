; ModuleID = '/llk/IR_all_yes/drivers/staging/iio/meter/ade7854-i2c.c_pt.bc'
source_filename = "../drivers/staging/iio/meter/ade7854-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ade7854_state = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, [16 x i8], [7 x i8], [7 x i8], [114 x i8] }

@__initcall__kmod_ade7854_i2c__288_147_ade7854_i2c_driver_init6 = internal global ptr @ade7854_i2c_driver_init, section ".initcall6.init", align 4
@ade7854_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ade7854_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ade7854_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ade7854_i2c_driver_exit = internal global ptr @ade7854_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [50 x i8] c"ade7854_i2c.author=Barry Song <21cnbao@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [110 x i8] c"ade7854_i2c.description=Analog Devices ADE7854/58/68/78 Polyphase Multifunction Energy Metering IC I2C Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [55 x i8] c"ade7854_i2c.file=drivers/staging/iio/meter/ade7854-i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"ade7854_i2c.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ade7854\00", [24 x i8] zeroinitializer }, align 32
@ade7854_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ade7854\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ade7858\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ade7868\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ade7878\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"ade7854_i2c_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 140, i32 26 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 142, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"ade7854_id\00", align 1
@___asan_gen_.9 = private constant [43 x i8] c"../drivers/staging/iio/meter/ade7854-i2c.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 131, i32 35 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ade7854_i2c_driver_exit, ptr @__initcall__kmod_ade7854_i2c__288_147_ade7854_i2c_driver_init6, ptr @ade7854_i2c_driver_exit, ptr @ade7854_i2c_driver, ptr @.str, ptr @ade7854_id], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ade7854_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ade7854_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ade7854_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ade7854_i2c_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ade7854_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @ade7854_i2c_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ade7854_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 256) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %read_reg = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ade7854_i2c_read_reg, ptr %read_reg, align 8
  %write_reg = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ade7854_i2c_write_reg, ptr %write_reg, align 4
  %i2c = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %i2c, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %irq2 = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %irq2, align 16
  %call4 = tail call i32 @ade7854_probe(ptr noundef nonnull %call, ptr noundef %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ade7854_i2c_read_reg(ptr nocapture noundef readonly %dev, i16 noundef zeroext %reg_address, ptr nocapture noundef writeonly %val, i32 noundef %bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %buf_lock = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #4
  %2 = lshr i16 %reg_address, 8
  %conv2 = trunc i16 %2 to i8
  %tx = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %tx, align 128
  %conv5 = trunc i16 %reg_address to i8
  %arrayidx7 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv5, ptr %arrayidx7, align 1
  %i2c = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c, align 4
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef %tx, i32 noundef 2, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c, align 4
  %rx = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 8
  %call.i86 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef %rx, i32 noundef %bits, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp14 = icmp slt i32 %call.i86, 0
  br i1 %cmp14, label %if.end.unlock_crit_edge, label %if.end17

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.end17:                                         ; preds = %if.end
  %9 = add i32 %bits, -8
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 29)
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end17.unlock_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
    i32 2, label %sw.bb28
    i32 3, label %sw.bb42
  ]

if.end17.unlock_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

sw.bb:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rx, align 1
  %conv20 = zext i8 %13 to i32
  br label %unlock.sink.split

sw.bb21:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rx, align 1
  %conv24 = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv24, 8
  %arrayidx26 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %17 to i32
  %or = or i32 %shl, %conv27
  br label %unlock.sink.split

sw.bb28:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rx, align 1
  %conv31 = zext i8 %19 to i32
  %shl32 = shl nuw nsw i32 %conv31, 16
  %arrayidx34 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %21 to i32
  %shl36 = shl nuw nsw i32 %conv35, 8
  %or37 = or i32 %shl36, %shl32
  %arrayidx39 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 8, i32 2
  %22 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %23 to i32
  %or41 = or i32 %or37, %conv40
  br label %unlock.sink.split

sw.bb42:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rx, align 1
  %conv45 = zext i8 %25 to i32
  %shl46 = shl nuw i32 %conv45, 24
  %arrayidx48 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %27 to i32
  %shl50 = shl nuw nsw i32 %conv49, 16
  %or51 = or i32 %shl50, %shl46
  %arrayidx53 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 8, i32 2
  %28 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %29 to i32
  %shl55 = shl nuw nsw i32 %conv54, 8
  %or56 = or i32 %or51, %shl55
  %arrayidx58 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 8, i32 3
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %31 to i32
  %or60 = or i32 %or56, %conv59
  br label %unlock.sink.split

unlock.sink.split:                                ; preds = %sw.bb42, %sw.bb28, %sw.bb21, %sw.bb
  %conv20.sink = phi i32 [ %conv20, %sw.bb ], [ %or, %sw.bb21 ], [ %or41, %sw.bb28 ], [ %or60, %sw.bb42 ]
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv20.sink, ptr %val, align 4
  br label %unlock

unlock:                                           ; preds = %unlock.sink.split, %if.end17.unlock_crit_edge, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.unlock_crit_edge ], [ %call.i86, %if.end.unlock_crit_edge ], [ -22, %if.end17.unlock_crit_edge ], [ %call.i86, %unlock.sink.split ]
  tail call void @mutex_unlock(ptr noundef %buf_lock) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ade7854_i2c_write_reg(ptr nocapture noundef readonly %dev, i16 noundef zeroext %reg_address, i32 noundef %val, i32 noundef %bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %buf_lock = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #4
  %2 = lshr i16 %reg_address, 8
  %conv2 = trunc i16 %2 to i8
  %tx = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %tx, align 128
  %conv5 = trunc i16 %reg_address to i8
  %arrayidx7 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv5, ptr %arrayidx7, align 1
  %5 = add i32 %bits, -8
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 29)
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %6, label %unlock.thread [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb22
    i32 3, label %sw.bb37
  ]

unlock.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %buf_lock) #4
  br label %20

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv9 = trunc i32 %val to i8
  %arrayidx11 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv9, ptr %arrayidx11, align 2
  br label %unlock

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shr13 = lshr i32 %val, 8
  %conv15 = trunc i32 %shr13 to i8
  %arrayidx17 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv15, ptr %arrayidx17, align 2
  %conv19 = trunc i32 %val to i8
  %arrayidx21 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv19, ptr %arrayidx21, align 1
  br label %unlock

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shr23 = lshr i32 %val, 16
  %conv25 = trunc i32 %shr23 to i8
  %arrayidx27 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv25, ptr %arrayidx27, align 2
  %shr28 = lshr i32 %val, 8
  %conv30 = trunc i32 %shr28 to i8
  %arrayidx32 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 3
  %12 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv30, ptr %arrayidx32, align 1
  %conv34 = trunc i32 %val to i8
  %arrayidx36 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 4
  %13 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv34, ptr %arrayidx36, align 4
  br label %unlock

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shr38 = lshr i32 %val, 24
  %conv40 = trunc i32 %shr38 to i8
  %arrayidx42 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv40, ptr %arrayidx42, align 2
  %shr43 = lshr i32 %val, 16
  %conv45 = trunc i32 %shr43 to i8
  %arrayidx47 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 3
  %15 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv45, ptr %arrayidx47, align 1
  %shr48 = lshr i32 %val, 8
  %conv50 = trunc i32 %shr48 to i8
  %arrayidx52 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 4
  %16 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv50, ptr %arrayidx52, align 4
  %conv54 = trunc i32 %val to i8
  %arrayidx56 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 5
  %17 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv54, ptr %arrayidx56, align 1
  br label %unlock

unlock:                                           ; preds = %sw.bb37, %sw.bb22, %sw.bb12, %sw.bb
  %count.0 = phi i32 [ 6, %sw.bb37 ], [ 5, %sw.bb22 ], [ 4, %sw.bb12 ], [ 3, %sw.bb ]
  %i2c = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c, align 4
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %19, ptr noundef %tx, i32 noundef %count.0, i16 noundef zeroext 0) #4
  tail call void @mutex_unlock(ptr noundef %buf_lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %unlock._crit_edge, label %unlock._crit_edge90

unlock._crit_edge90:                              ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #6
  br label %21

unlock._crit_edge:                                ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #6
  br label %20

20:                                               ; preds = %unlock._crit_edge, %unlock.thread
  %ret.089 = phi i32 [ -22, %unlock.thread ], [ %call.i, %unlock._crit_edge ]
  br label %21

21:                                               ; preds = %20, %unlock._crit_edge90
  %22 = phi i32 [ %ret.089, %20 ], [ 0, %unlock._crit_edge90 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ade7854_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_ade7854_i2c__288_147_ade7854_i2c_driver_init6, !1, !"__initcall__kmod_ade7854_i2c__288_147_ade7854_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/iio/meter/ade7854-i2c.c", i32 147, i32 1}
!2 = !{ptr @__exitcall_ade7854_i2c_driver_exit, !1, !"__exitcall_ade7854_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/staging/iio/meter/ade7854-i2c.c", i32 149, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/staging/iio/meter/ade7854-i2c.c", i32 150, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/staging/iio/meter/ade7854-i2c.c", i32 151, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/iio/meter/ade7854-i2c.c", i32 142, i32 11}
!12 = !{ptr @ade7854_i2c_driver, !13, !"ade7854_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/iio/meter/ade7854-i2c.c", i32 140, i32 26}
!14 = !{ptr @ade7854_id, !15, !"ade7854_id", i1 false, i1 false}
!15 = !{!"../drivers/staging/iio/meter/ade7854-i2c.c", i32 131, i32 35}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
