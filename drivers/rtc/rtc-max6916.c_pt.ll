; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-max6916.c_pt.bc'
source_filename = "../drivers/rtc/rtc-max6916.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_max6916__234_156_max6916_driver_init6 = internal global ptr @max6916_driver_init, section ".initcall6.init", align 4
@max6916_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @max6916_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_max6916_driver_exit = internal global ptr @max6916_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description235 = internal constant [47 x i8] c"rtc_max6916.description=MAX6916 SPI RTC DRIVER\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [73 x i8] c"rtc_max6916.author=Venkat Prashanth B U <venkat.prashanth2498@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [41 x i8] c"rtc_max6916.file=drivers/rtc/rtc-max6916\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [27 x i8] c"rtc_max6916.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6916\00", [24 x i8] zeroinitializer }, align 32
@max6916_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MAX6916 RTC CTRL Reg = 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max6916_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-max6916.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max6916_probe._entry_ptr = internal global ptr @max6916_probe._entry, section ".printk_index", align 4
@max6916_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MAX6916 RTC Status Reg = 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@max6916_probe._entry_ptr.8 = internal global ptr @max6916_probe._entry.6, section ".printk_index", align 4
@max6916_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @max6916_read_time, ptr @max6916_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@max6916_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 84, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Year must be between 2000 and 2099. It's %d.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max6916_set_time\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@max6916_set_time._entry_ptr = internal global ptr @max6916_set_time._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"max6916_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 150, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 152, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 135, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 138, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"max6916_rtc_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 102, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [29 x i8] c"../drivers/rtc/rtc-max6916.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 83, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_max6916_driver_exit, ptr @__initcall__kmod_rtc_max6916__234_156_max6916_driver_init6, ptr @max6916_driver_exit, ptr @max6916_probe._entry, ptr @max6916_probe._entry.6, ptr @max6916_probe._entry_ptr, ptr @max6916_probe._entry_ptr.8, ptr @max6916_set_time._entry, ptr @max6916_set_time._entry_ptr, ptr @max6916_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @max6916_rtc_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6916_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6916_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6916_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6916_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6916_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max6916_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @max6916_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max6916_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @max6916_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6916_probe(ptr noundef %spi) #2 align 64 {
entry:
  %buf.i51 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #6
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %mode, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %1 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 8, ptr %bits_per_word, align 1
  %call = tail call i32 @spi_setup(ptr noundef %spi) #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -127, ptr %data, align 1
  %call2.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %data, i32 noundef 1, ptr noundef nonnull %data, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -120, ptr %data, align 1
  %call2.i49 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %data, i32 noundef 1, ptr noundef nonnull %data, i32 noundef 1) #6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  %6 = and i8 %5, 127
  store i8 %6, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %7 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %buf.i, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %7, align 1
  %call3.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %buf.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -116, ptr %data, align 1
  %call2.i50 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %data, i32 noundef 1, ptr noundef nonnull %data, i32 noundef 1) #6
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  %13 = and i8 %12, 27
  store i8 %13, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i51) #6
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i51, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i51 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 12, ptr %buf.i51, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %13, ptr %14, align 1
  %call3.i52 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %buf.i51, i32 noundef 2, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i51) #6
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -120, ptr %data, align 1
  %call2.i53 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %data, i32 noundef 1, ptr noundef nonnull %data, i32 noundef 1) #6
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 1
  %conv17 = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef %conv17) #9
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -116, ptr %data, align 1
  %call2.i54 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %data, i32 noundef 1, ptr noundef nonnull %data, i32 noundef 1) #6
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data, align 1
  %conv24 = zext i8 %22 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.7, i32 noundef %conv24) #9
  %call26 = call ptr @devm_rtc_device_register(ptr noundef %spi, ptr noundef nonnull @.str, ptr noundef nonnull @max6916_rtc_ops, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call26, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %if.then28 ], [ 0, %if.end30 ], [ %call2.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6916_read_time(ptr noundef %dev, ptr nocapture noundef writeonly %dt) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #6
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 7)
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -65, ptr %buf, align 1
  %call2 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cond.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 1
  %call8 = call i32 @_bcd2bin(i8 noundef zeroext %10) #10
  %11 = ptrtoint ptr %dt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call8, ptr %dt, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %8, align 1
  %call21 = call i32 @_bcd2bin(i8 noundef zeroext %13) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 1
  %14 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call21, ptr %tm_min, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %7, align 1
  %17 = and i8 %16, 63
  %call44 = call i32 @_bcd2bin(i8 noundef zeroext %17) #10
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 2
  %18 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call44, ptr %tm_hour, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %6, align 1
  %call59 = call i32 @_bcd2bin(i8 noundef zeroext %20) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 3
  %21 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call59, ptr %tm_mday, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %5, align 1
  %call74 = call i32 @_bcd2bin(i8 noundef zeroext %23) #10
  %sub = add i32 %call74, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 4
  %24 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %tm_mon, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %4, align 1
  %call89 = call i32 @_bcd2bin(i8 noundef zeroext %26) #10
  %sub92 = add i32 %call89, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 6
  %27 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub92, ptr %tm_wday, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %3, align 1
  %call105 = call i32 @_bcd2bin(i8 noundef zeroext %29) #10
  %add108 = add i32 %call105, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 5
  %30 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add108, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6916_set_time(ptr noundef %dev, ptr nocapture noundef readonly %dt) #2 align 64 {
entry:
  %buf = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf) #6
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 5
  %0 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm_year, align 4
  %2 = add i32 %1, -200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %2)
  %3 = icmp ult i32 %2, -100
  br i1 %3, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %1, 1900
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %add) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 8
  %5 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 7
  %6 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 6
  %7 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 5
  %8 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 4
  %9 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 3
  %10 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 2
  %11 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 63, ptr %buf, align 1
  %13 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dt, align 4
  %call9 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #10
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call9, ptr %11, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 1
  %16 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_min, align 4
  %call23 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #10
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call23, ptr %10, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 2
  %19 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_hour, align 4
  %call39 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #10
  %conv43 = and i8 %call39, 63
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv43, ptr %9, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 3
  %22 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_mday, align 4
  %call55 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #10
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call55, ptr %8, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 4
  %25 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mon, align 4
  %add61 = add i32 %26, 1
  %call75 = tail call zeroext i8 @_bin2bcd(i32 noundef %add61) #10
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call75, ptr %7, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 6
  %28 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_wday, align 4
  %add81 = add i32 %29, 1
  %call95 = tail call zeroext i8 @_bin2bcd(i32 noundef %add81) #10
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call95, ptr %6, align 1
  %rem102156.lhs.trunc = trunc i32 %1 to i8
  %rem102156157 = urem i8 %rem102156.lhs.trunc, 100
  %rem102156.zext = zext i8 %rem102156157 to i32
  %call116 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem102156.zext) #10
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call116, ptr %5, align 1
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %4, align 1
  %call123 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf, i32 noundef 9, ptr noundef null, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call123, %if.end ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_rtc_max6916__234_156_max6916_driver_init6, !1, !"__initcall__kmod_rtc_max6916__234_156_max6916_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-max6916.c", i32 156, i32 1}
!2 = !{ptr @__exitcall_max6916_driver_exit, !1, !"__exitcall_max6916_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description235, !4, !"__UNIQUE_ID_description235", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-max6916.c", i32 158, i32 1}
!5 = !{ptr @__UNIQUE_ID_author236, !6, !"__UNIQUE_ID_author236", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-max6916.c", i32 159, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-max6916.c", i32 160, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-max6916.c", i32 152, i32 11}
!12 = !{ptr @max6916_driver, !13, !"max6916_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-max6916.c", i32 150, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-max6916.c", i32 135, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max6916_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @max6916_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-max6916.c", i32 138, i32 2}
!24 = !{ptr @max6916_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @max6916_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @max6916_rtc_ops, !27, !"max6916_rtc_ops", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-max6916.c", i32 102, i32 35}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-max6916.c", i32 83, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @max6916_set_time._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @max6916_set_time._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
