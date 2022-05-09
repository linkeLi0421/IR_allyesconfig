; ModuleID = '/llk/IR_all_yes/drivers/input/misc/ad714x-spi.c_pt.bc'
source_filename = "../drivers/input/misc/ad714x-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.list_head = type { ptr, ptr }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.ad714x_chip = type { i16, i16, i16, [12 x i16], [12 x i16], [12 x i16], ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, i32, i32, [52 x i8], [16 x i16], [96 x i8] }

@__initcall__kmod_ad714x_spi__230_111_ad714x_spi_driver_init6 = internal global ptr @ad714x_spi_driver_init, section ".initcall6.init", align 4
@ad714x_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ad714x_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad714x_spi_pm, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad714x_spi_driver_exit = internal global ptr @ad714x_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description231 = internal constant [85 x i8] c"ad714x_spi.description=Analog Devices AD714X Capacitance Touch Sensor SPI Bus Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [49 x i8] c"ad714x_spi.author=Barry Song <21cnbao@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [46 x i8] c"ad714x_spi.file=drivers/input/misc/ad714x-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [23 x i8] c"ad714x_spi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad714x_captouch\00", [16 x i8] zeroinitializer }, align 32
@ad714x_spi_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ad714x_spi_suspend, ptr @ad714x_spi_resume, ptr @ad714x_spi_suspend, ptr @ad714x_spi_resume, ptr @ad714x_spi_suspend, ptr @ad714x_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ad714x_spi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 54, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SPI read error: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad714x_spi_read\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/misc/ad714x-spi.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad714x_spi_read._entry_ptr = internal global ptr @ad714x_spi_read._entry, section ".printk_index", align 4
@ad714x_spi_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 76, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SPI write error: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ad714x_spi_write\00", [47 x i8] zeroinitializer }, align 32
@ad714x_spi_write._entry_ptr = internal global ptr @ad714x_spi_write._entry, section ".printk_index", align 4
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"ad714x_spi_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 103, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 105, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"ad714x_spi_pm\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 28, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 54, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [35 x i8] c"../drivers/input/misc/ad714x-spi.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 76, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_ad714x_spi_driver_exit, ptr @__initcall__kmod_ad714x_spi__230_111_ad714x_spi_driver_init6, ptr @ad714x_spi_driver_exit, ptr @ad714x_spi_read._entry, ptr @ad714x_spi_read._entry_ptr, ptr @ad714x_spi_write._entry, ptr @ad714x_spi_write._entry_ptr, ptr @ad714x_spi_driver, ptr @.str, ptr @ad714x_spi_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad714x_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad714x_spi_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad714x_spi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad714x_spi_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad714x_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad714x_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad714x_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad714x_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad714x_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %bits_per_word, align 1
  %call = tail call i32 @spi_setup(ptr noundef %spi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @ad714x_probe(ptr noundef %spi, i16 noundef zeroext 28, i32 noundef %2, ptr noundef nonnull @ad714x_spi_read, ptr noundef nonnull @ad714x_spi_write) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then3 ], [ 0, %if.end5 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ad714x_probe(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad714x_spi_read(ptr noundef %chip, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %data, i32 noundef %len) #2 align 64 {
entry:
  %message = alloca %struct.spi_message, align 4
  %xfer = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ad714x_chip, ptr %chip, i32 0, i32 9
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %message) #5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer) #5
  %2 = getelementptr inbounds i8, ptr %message, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %message, ptr %message, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %message, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %message, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10
  %6 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %8 = getelementptr inbounds i8, ptr %xfer, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 188)
  %10 = or i16 %reg, -7168
  %xfer_buf = getelementptr inbounds %struct.ad714x_chip, ptr %chip, i32 0, i32 16
  %11 = ptrtoint ptr %xfer_buf to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %xfer_buf, align 128
  %12 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %xfer_buf, ptr %xfer, align 4
  %len6 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %13 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len6, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %message, ptr noundef nonnull %message) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %message, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %message, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i, ptr %message, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %arrayidx9 = getelementptr %struct.ad714x_chip, ptr %chip, i32 0, i32 16, i32 1
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx9, ptr %rx_buf, align 4
  %mul = shl i32 %len, 1
  %len12 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %len12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %len12, align 4
  %transfer_list.i37 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 18
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i39 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i37, ptr noundef %21, ptr noundef nonnull %message) #5
  br i1 %call.i.i.i39, label %if.end.i.i.i41, label %spi_message_add_tail.exit.spi_message_add_tail.exit42_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit42_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit42

if.end.i.i.i41:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i37, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %message, ptr %transfer_list.i37, align 4
  %prev3.i.i.i40 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i40, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i37, ptr %21, align 4
  br label %spi_message_add_tail.exit42

spi_message_add_tail.exit42:                      ; preds = %if.end.i.i.i41, %spi_message_add_tail.exit.spi_message_add_tail.exit42_crit_edge
  %call14 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %message) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end, !prof !38

for.cond.preheader:                               ; preds = %spi_message_add_tail.exit42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp43.not = icmp eq i32 %len, 0
  br i1 %cmp43.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %spi_message_add_tail.exit42
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.1, i32 noundef %call14) #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.044 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add nuw i32 %i.044, 1
  %arrayidx20 = getelementptr %struct.ad714x_chip, ptr %chip, i32 0, i32 16, i32 %add
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx20, align 2
  %arrayidx21 = getelementptr i16, ptr %data, i32 %i.044
  %30 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %arrayidx21, align 2
  %exitcond.not = icmp eq i32 %add, %len
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %do.end ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %message) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad714x_spi_write(ptr noundef %chip, i16 noundef zeroext %reg, i16 noundef zeroext %data) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ad714x_chip, ptr %chip, i32 0, i32 9
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = or i16 %reg, -8192
  %xfer_buf = getelementptr inbounds %struct.ad714x_chip, ptr %chip, i32 0, i32 16
  %3 = ptrtoint ptr %xfer_buf to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %xfer_buf, align 128
  %arrayidx3 = getelementptr %struct.ad714x_chip, ptr %chip, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %data, ptr %arrayidx3, align 2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %5 = getelementptr inbounds i8, ptr %t.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %xfer_buf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %spi_write.exit.cleanup_crit_edge, label %do.end, !prof !38

spi_write.exit.cleanup_crit_edge:                 ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.6, i32 noundef %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %spi_write.exit.cleanup_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad714x_spi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @ad714x_disable(ptr noundef %1) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad714x_spi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @ad714x_enable(ptr noundef %1) #5
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad714x_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad714x_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_ad714x_spi__230_111_ad714x_spi_driver_init6, !1, !"__initcall__kmod_ad714x_spi__230_111_ad714x_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/ad714x-spi.c", i32 111, i32 1}
!2 = !{ptr @__exitcall_ad714x_spi_driver_exit, !1, !"__exitcall_ad714x_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description231, !4, !"__UNIQUE_ID_description231", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/ad714x-spi.c", i32 113, i32 1}
!5 = !{ptr @__UNIQUE_ID_author232, !6, !"__UNIQUE_ID_author232", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/ad714x-spi.c", i32 114, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/ad714x-spi.c", i32 115, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/ad714x-spi.c", i32 105, i32 11}
!12 = !{ptr @ad714x_spi_driver, !13, !"ad714x_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/ad714x-spi.c", i32 103, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/ad714x-spi.c", i32 54, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ad714x_spi_read._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ad714x_spi_read._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/misc/ad714x-spi.c", i32 76, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ad714x_spi_write._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @ad714x_spi_write._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @ad714x_spi_pm, !28, !"ad714x_spi_pm", i1 false, i1 false}
!28 = !{!"../drivers/input/misc/ad714x-spi.c", i32 28, i32 8}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 2000, i32 1}
