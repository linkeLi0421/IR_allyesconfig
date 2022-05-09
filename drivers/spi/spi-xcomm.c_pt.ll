; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-xcomm.c_pt.bc'
source_filename = "../drivers/spi/spi-xcomm.c"
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_xcomm = type { ptr, i16, i16, i32, [63 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_spi_xcomm__290_247_spi_xcomm_driver_init6 = internal global ptr @spi_xcomm_driver_init, section ".initcall6.init", align 4
@spi_xcomm_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @spi_xcomm_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @spi_xcomm_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_spi_xcomm_driver_exit = internal global ptr @spi_xcomm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"spi_xcomm.file=drivers/spi/spi-xcomm\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"spi_xcomm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [54 x i8] c"spi_xcomm.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [81 x i8] c"spi_xcomm.description=Analog Devices AD-FMCOMMS1-EBZ board I2C-SPI bridge driver\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi-xcomm\00", [22 x i8] zeroinitializer }, align 32
@spi_xcomm_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"spi-xcomm\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"spi_xcomm_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 240, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 242, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"spi_xcomm_ids\00", align 1
@___asan_gen_.8 = private constant [27 x i8] c"../drivers/spi/spi-xcomm.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 234, i32 35 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_spi_xcomm_driver_exit, ptr @__initcall__kmod_spi_xcomm__290_247_spi_xcomm_driver_init6, ptr @spi_xcomm_driver_exit, ptr @spi_xcomm_driver, ptr @.str, ptr @spi_xcomm_ids], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_xcomm_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_xcomm_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_xcomm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @spi_xcomm_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spi_xcomm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @i2c_del_driver(ptr noundef nonnull @spi_xcomm_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_xcomm_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 76, i1 noundef zeroext false) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %1, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 16, ptr %num_chipselect, align 2
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 19, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 128, ptr %bits_per_word_mask, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %flags, align 4
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 45
  %7 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @spi_xcomm_transfer_one, ptr %transfer_one_message, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %of_node5 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %10 = ptrtoint ptr %of_node5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %of_node5, align 8
  %driver_data.i.i27 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i27 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i27, align 4
  %call7 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %spi_controller_put.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

spi_controller_put.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @put_device(ptr noundef nonnull %call.i) #3
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call7, %spi_controller_put.exit ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_xcomm_transfer_one(ptr noundef %master, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %settings1 = getelementptr inbounds %struct.spi_xcomm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %settings1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %settings1, align 4
  %spi2 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %spi2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi2, align 4
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select.i, align 4
  %conv.i = zext i8 %7 to i32
  %chipselect1.i = getelementptr inbounds %struct.spi_xcomm, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %chipselect1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %chipselect1.i, align 2
  %shl4.i = shl nuw i32 1, %conv.i
  %10 = trunc i32 %shl4.i to i16
  %conv3.i = or i16 %9, %10
  store i16 %conv3.i, ptr %chipselect1.i, align 2
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn155 = load ptr, ptr %msg, align 4
  %cmp.not157 = icmp eq ptr %.pn155, %msg
  br i1 %cmp.not157, label %entry.if.then74_crit_edge, label %for.body.lr.ph

entry.if.then74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i16 %3 to i32
  %current_speed.i = getelementptr inbounds %struct.spi_xcomm, ptr %1, i32 0, i32 3
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 7
  %buf1.i = getelementptr inbounds %struct.spi_xcomm, ptr %1, i32 0, i32 4
  %arrayidx4.i = getelementptr %struct.spi_xcomm, ptr %1, i32 0, i32 4, i32 1
  %arrayidx5.i = getelementptr %struct.spi_xcomm, ptr %1, i32 0, i32 4, i32 3
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end63.for.body_crit_edge, %for.body.lr.ph
  %.pn161 = phi ptr [ %.pn155, %for.body.lr.ph ], [ %.pn, %if.end63.for.body_crit_edge ]
  %is_first.0.off0160 = phi i1 [ true, %for.body.lr.ph ], [ false, %if.end63.for.body_crit_edge ]
  %settings.0158 = phi i32 [ %conv, %for.body.lr.ph ], [ %storemerge, %if.end63.for.body_crit_edge ]
  %t.0162 = getelementptr i8, ptr %.pn161, i32 -84
  %12 = ptrtoint ptr %t.0162 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t.0162, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %rx_buf = getelementptr i8, ptr %.pn161, i32 -80
  %14 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_buf, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %len = getelementptr i8, ptr %.pn161, i32 -76
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end_crit_edge, label %land.lhs.true6.if.then74_crit_edge

land.lhs.true6.if.then74_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %len.i = getelementptr i8, ptr %.pn161, i32 -76
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %19)
  %cmp.i = icmp ugt i32 %19, 62
  br i1 %cmp.i, label %if.end.if.then74_crit_edge, label %if.end.i

if.end.if.then74_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74

if.end.i:                                         ; preds = %if.end
  %speed_hz.i = getelementptr i8, ptr %.pn161, i32 -24
  %20 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %speed_hz.i, align 4
  %22 = ptrtoint ptr %current_speed.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %current_speed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp1.not.i = icmp eq i32 %21, %23
  br i1 %cmp1.not.i, label %if.end.i.if.end12_crit_edge, label %if.then2.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then2.i:                                       ; preds = %if.end.i
  %sub.i = add i32 %21, 47999999
  %div.i = udiv i32 %sub.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %div.i)
  %cmp5.i = icmp ugt i32 %div.i, 63
  br i1 %cmp5.i, label %if.then2.i.if.end13.sink.split.i_crit_edge, label %if.else.i

if.then2.i.if.end13.sink.split.i_crit_edge:       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13.sink.split.i

if.else.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div.i)
  %cmp7.i = icmp ugt i32 %div.i, 15
  br i1 %cmp7.i, label %if.else.i.if.end13.sink.split.i_crit_edge, label %if.else.i.if.end13.i_crit_edge

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13.i

if.else.i.if.end13.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13.sink.split.i

if.end13.sink.split.i:                            ; preds = %if.else.i.if.end13.sink.split.i_crit_edge, %if.then2.i.if.end13.sink.split.i_crit_edge
  %.sink56.i = phi i32 [ 2, %if.then2.i.if.end13.sink.split.i_crit_edge ], [ 1, %if.else.i.if.end13.sink.split.i_crit_edge ]
  %or9.i = or i32 %.sink56.i, %settings.0158
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end13.sink.split.i, %if.else.i.if.end13.i_crit_edge
  %settings.1 = phi i32 [ %or9.i, %if.end13.sink.split.i ], [ %settings.0158, %if.else.i.if.end13.i_crit_edge ]
  %24 = ptrtoint ptr %current_speed.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %current_speed.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end13.i, %if.end.i.if.end12_crit_edge
  %settings.2 = phi i32 [ %settings.0158, %if.end.i.if.end12_crit_edge ], [ %settings.1, %if.end13.i ]
  %25 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode.i, align 8
  %and20.i = and i32 %settings.2, -109
  %and.i = shl i32 %26, 1
  %27 = and i32 %and.i, 4
  %storemerge.i = or i32 %27, %and20.i
  %and23.i = shl i32 %26, 3
  %28 = and i32 %and23.i, 8
  %29 = or i32 %storemerge.i, %28
  %and31.i = shl i32 %26, 2
  %30 = and i32 %and31.i, 64
  %31 = or i32 %29, %30
  %32 = ptrtoint ptr %.pn161 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %.pn161, align 4
  %cmp.i116 = icmp ne ptr %33, %msg
  %cs_change17 = getelementptr i8, ptr %.pn161, i32 -40
  %34 = ptrtoint ptr %cs_change17 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %cs_change17, align 4
  %35 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %36 = icmp ne i8 %35, 0
  %tobool20.not = xor i1 %cmp.i116, %36
  %masksel = select i1 %tobool20.not, i32 0, i32 32
  %37 = or i32 %31, %masksel
  %storemerge = xor i32 %37, 8
  %rx_buf23 = getelementptr i8, ptr %.pn161, i32 -80
  %38 = ptrtoint ptr %rx_buf23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_buf23, align 4
  %tobool24.not = icmp eq ptr %39, null
  br i1 %tobool24.not, label %if.else34, label %if.then25

if.then25:                                        ; preds = %if.end12
  %conv26 = trunc i32 %storemerge to i16
  %40 = ptrtoint ptr %settings1 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv26, ptr %settings1, align 4
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  %len.tr.i = trunc i32 %42 to i16
  %43 = shl i16 %len.tr.i, 10
  %conv3.i118 = or i16 %43, %conv26
  %44 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 3, ptr %buf1.i, align 1
  %45 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %conv3.i118, ptr %arrayidx4.i, align 1
  %46 = ptrtoint ptr %chipselect1.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %chipselect1.i, align 2
  %48 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %arrayidx5.i, align 1
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %50, ptr noundef %buf1.i, i32 noundef 5, i16 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp30 = icmp slt i32 %call.i.i, 0
  br i1 %cmp30, label %if.then25.if.then74_crit_edge, label %if.then25.if.end50_crit_edge

if.then25.if.end50_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50

if.then25.if.then74_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74

if.else34:                                        ; preds = %if.end12
  %51 = ptrtoint ptr %settings1 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %settings1, align 4
  %conv36 = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %conv36)
  %cmp37.not = icmp ne i32 %storemerge, %conv36
  %brmerge = or i1 %is_first.0.off0160, %cmp37.not
  br i1 %brmerge, label %if.then41, label %if.else34.if.end50_crit_edge

if.else34.if.end50_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50

if.then41:                                        ; preds = %if.else34
  %conv42 = trunc i32 %storemerge to i16
  %53 = ptrtoint ptr %settings1 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv42, ptr %settings1, align 4
  %54 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 3, ptr %buf1.i, align 1
  %55 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %conv42, ptr %arrayidx4.i, align 1
  %56 = ptrtoint ptr %chipselect1.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %chipselect1.i, align 2
  %58 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 %57, ptr %arrayidx5.i, align 1
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %call.i.i124 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %60, ptr noundef %buf1.i, i32 noundef 5, i16 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i124)
  %cmp45 = icmp slt i32 %call.i.i124, 0
  br i1 %cmp45, label %if.then41.if.then74_crit_edge, label %if.then41.if.end50_crit_edge

if.then41.if.end50_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50

if.then41.if.then74_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74

if.end50:                                         ; preds = %if.then41.if.end50_crit_edge, %if.else34.if.end50_crit_edge, %if.then25.if.end50_crit_edge
  %61 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool52.not = icmp eq i32 %62, 0
  br i1 %tobool52.not, label %if.end50.if.end63_crit_edge, label %if.then53

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end63

if.then53:                                        ; preds = %if.end50
  %63 = ptrtoint ptr %t.0162 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %t.0162, align 4
  %tobool.not.i = icmp eq ptr %64, null
  br i1 %tobool.not.i, label %if.else12.i, label %if.then.i

if.then.i:                                        ; preds = %if.then53
  %65 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 4, ptr %buf1.i, align 4
  %66 = ptrtoint ptr %t.0162 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %t.0162, align 4
  %68 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len.i, align 4
  %70 = call ptr @memcpy(ptr %arrayidx4.i, ptr %67, i32 %69)
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %73 = load i32, ptr %len.i, align 4
  %add.i = add i32 %73, 1
  %call.i.i126 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %72, ptr noundef %buf1.i, i32 noundef %add.i, i16 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i126)
  %cmp.i127 = icmp slt i32 %call.i.i126, 0
  br i1 %cmp.i127, label %if.then.i.if.then74_crit_edge, label %if.else.i128

if.then.i.if.then74_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74

if.else.i128:                                     ; preds = %if.then.i
  %74 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i, align 4
  %add8.i = add i32 %75, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i126, i32 %add8.i)
  %cmp9.not.i = icmp eq i32 %call.i.i126, %add8.i
  br i1 %cmp9.not.i, label %if.else.i128.spi_xcomm_txrx_bufs.exit_crit_edge, label %if.else.i128.if.then74_crit_edge

if.else.i128.if.then74_crit_edge:                 ; preds = %if.else.i128
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74

if.else.i128.spi_xcomm_txrx_bufs.exit_crit_edge:  ; preds = %if.else.i128
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_xcomm_txrx_bufs.exit

if.else12.i:                                      ; preds = %if.then53
  %76 = ptrtoint ptr %rx_buf23 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_buf23, align 4
  %tobool13.not.i = icmp eq ptr %77, null
  br i1 %tobool13.not.i, label %spi_xcomm_txrx_bufs.exitthread-pre-split, label %if.then14.i

if.then14.i:                                      ; preds = %if.else12.i
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i, align 4
  %call.i1.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %79, ptr noundef nonnull %77, i32 noundef %81, i16 noundef zeroext 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp19.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp19.i, label %if.then14.i.if.then74_crit_edge, label %if.else21.i

if.then14.i.if.then74_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74

if.else21.i:                                      ; preds = %if.then14.i
  %82 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i1.i, i32 %83)
  %cmp23.not.i = icmp eq i32 %call.i1.i, %83
  br i1 %cmp23.not.i, label %if.else21.i.if.end58_crit_edge, label %if.else21.i.if.then74_crit_edge

if.else21.i.if.then74_crit_edge:                  ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74

if.else21.i.if.end58_crit_edge:                   ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end58

spi_xcomm_txrx_bufs.exitthread-pre-split:         ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #5
  %84 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr = load i32, ptr %len.i, align 4
  br label %spi_xcomm_txrx_bufs.exit

spi_xcomm_txrx_bufs.exit:                         ; preds = %spi_xcomm_txrx_bufs.exitthread-pre-split, %if.else.i128.spi_xcomm_txrx_bufs.exit_crit_edge
  %85 = phi i32 [ %.pr, %spi_xcomm_txrx_bufs.exitthread-pre-split ], [ %75, %if.else.i128.spi_xcomm_txrx_bufs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp55 = icmp slt i32 %85, 0
  br i1 %cmp55, label %spi_xcomm_txrx_bufs.exit.if.then74_crit_edge, label %spi_xcomm_txrx_bufs.exit.if.end58_crit_edge

spi_xcomm_txrx_bufs.exit.if.end58_crit_edge:      ; preds = %spi_xcomm_txrx_bufs.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end58

spi_xcomm_txrx_bufs.exit.if.then74_crit_edge:     ; preds = %spi_xcomm_txrx_bufs.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74

if.end58:                                         ; preds = %spi_xcomm_txrx_bufs.exit.if.end58_crit_edge, %if.else21.i.if.end58_crit_edge
  %86 = phi i32 [ %85, %spi_xcomm_txrx_bufs.exit.if.end58_crit_edge ], [ %call.i1.i, %if.else21.i.if.end58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp59.not = icmp eq i32 %86, 0
  br i1 %cmp59.not, label %if.end58.if.end63_crit_edge, label %if.then61

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end63

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #5
  %87 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %actual_length, align 4
  %add = add i32 %88, %86
  store i32 %add, ptr %actual_length, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end58.if.end63_crit_edge, %if.end50.if.end63_crit_edge
  %delay.i = getelementptr i8, ptr %.pn161, i32 -38
  %call.i = tail call i32 @spi_delay_exec(ptr noundef %delay.i, ptr noundef %t.0162) #3
  %89 = ptrtoint ptr %.pn161 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn = load ptr, ptr %.pn161, align 4
  %cmp.not = icmp eq ptr %.pn, %msg
  br i1 %cmp.not, label %for.end, label %if.end63.for.body_crit_edge

if.end63.for.body_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %phi.cmp = icmp eq i8 %35, 0
  br i1 %phi.cmp, label %for.end.if.then74_crit_edge, label %for.end.if.end75_crit_edge

for.end.if.end75_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end75

for.end.if.then74_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74

if.then74:                                        ; preds = %for.end.if.then74_crit_edge, %spi_xcomm_txrx_bufs.exit.if.then74_crit_edge, %if.else21.i.if.then74_crit_edge, %if.then14.i.if.then74_crit_edge, %if.else.i128.if.then74_crit_edge, %if.then.i.if.then74_crit_edge, %if.then41.if.then74_crit_edge, %if.then25.if.then74_crit_edge, %if.end.if.then74_crit_edge, %land.lhs.true6.if.then74_crit_edge, %entry.if.then74_crit_edge
  %status.1153 = phi i32 [ 0, %for.end.if.then74_crit_edge ], [ 0, %entry.if.then74_crit_edge ], [ %call.i.i126, %if.then.i.if.then74_crit_edge ], [ -5, %if.else.i128.if.then74_crit_edge ], [ %call.i1.i, %if.then14.i.if.then74_crit_edge ], [ -5, %if.else21.i.if.then74_crit_edge ], [ -22, %if.end.if.then74_crit_edge ], [ %call.i.i, %if.then25.if.then74_crit_edge ], [ %85, %spi_xcomm_txrx_bufs.exit.if.then74_crit_edge ], [ %call.i.i124, %if.then41.if.then74_crit_edge ], [ -22, %land.lhs.true6.if.then74_crit_edge ]
  %90 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %chip_select.i, align 4
  %conv.i131 = zext i8 %91 to i32
  %92 = ptrtoint ptr %chipselect1.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %chipselect1.i, align 2
  %shl4.i133 = shl nuw i32 1, %conv.i131
  %94 = trunc i32 %shl4.i133 to i16
  %95 = xor i16 %94, -1
  %conv6.i135 = and i16 %93, %95
  store i16 %conv6.i135, ptr %chipselect1.i, align 2
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %for.end.if.end75_crit_edge
  %status.1152 = phi i32 [ 0, %for.end.if.end75_crit_edge ], [ %status.1153, %if.then74 ]
  %status76 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %96 = ptrtoint ptr %status76 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %status.1152, ptr %status76, align 4
  tail call void @spi_finalize_current_message(ptr noundef %master) #3
  ret i32 %status.1152
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_spi_xcomm__290_247_spi_xcomm_driver_init6, !1, !"__initcall__kmod_spi_xcomm__290_247_spi_xcomm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-xcomm.c", i32 247, i32 1}
!2 = !{ptr @__exitcall_spi_xcomm_driver_exit, !1, !"__exitcall_spi_xcomm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file291, !4, !"__UNIQUE_ID_file291", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-xcomm.c", i32 249, i32 1}
!5 = !{ptr @__UNIQUE_ID_license292, !4, !"__UNIQUE_ID_license292", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author293, !7, !"__UNIQUE_ID_author293", i1 false, i1 false}
!7 = !{!"../drivers/spi/spi-xcomm.c", i32 250, i32 1}
!8 = !{ptr @__UNIQUE_ID_description294, !9, !"__UNIQUE_ID_description294", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-xcomm.c", i32 251, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-xcomm.c", i32 242, i32 11}
!12 = !{ptr @spi_xcomm_driver, !13, !"spi_xcomm_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-xcomm.c", i32 240, i32 26}
!14 = !{ptr @spi_xcomm_ids, !15, !"spi_xcomm_ids", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-xcomm.c", i32 234, i32 35}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
