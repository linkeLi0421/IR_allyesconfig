; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-pcf50633.c_pt.bc'
source_filename = "../drivers/rtc/rtc-pcf50633.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pcf50633_rtc = type { i32, i32, ptr, ptr }
%struct.pcf50633_time = type { [7 x i8] }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_pcf50633__292_281_pcf50633_rtc_driver_init6 = internal global ptr @pcf50633_rtc_driver_init, section ".initcall6.init", align 4
@pcf50633_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pcf50633_rtc_probe, ptr @pcf50633_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pcf50633_rtc_driver_exit = internal global ptr @pcf50633_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [45 x i8] c"rtc_pcf50633.description=PCF50633 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [57 x i8] c"rtc_pcf50633.author=Balaji Rao <balajirrao@openmoko.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [43 x i8] c"rtc_pcf50633.file=drivers/rtc/rtc-pcf50633\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [25 x i8] c"rtc_pcf50633.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcf50633-rtc\00", [19 x i8] zeroinitializer }, align 32
@pcf50633_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @pcf50633_rtc_read_time, ptr @pcf50633_rtc_set_time, ptr @pcf50633_rtc_read_alarm, ptr @pcf50633_rtc_set_alarm, ptr null, ptr @pcf50633_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@pcf50633_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to read time\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcf50633_rtc_read_time\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/rtc/rtc-pcf50633.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcf50633_rtc_read_time._entry_ptr = internal global ptr @pcf50633_rtc_read_time._entry, section ".printk_index", align 4
@pcf50633_rtc_read_time.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 31, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc_pcf50633\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PCF_TIME: %02x.%02x.%02x %02x:%02x:%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@pcf50633_rtc_read_time.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RTC_TIME: %ptRr\0A\00", [47 x i8] zeroinitializer }, align 32
@pcf50633_rtc_set_time.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.9, ptr @.str.3, ptr @.str.8, i8 0, i8 35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcf50633_rtc_set_time\00", [42 x i8] zeroinitializer }, align 32
@pcf50633_rtc_set_time.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.9, ptr @.str.3, ptr @.str.7, i8 0, i8 38, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@pcf50633_rtc_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.10, ptr @.str.3, i32 185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcf50633_rtc_read_alarm\00", [40 x i8] zeroinitializer }, align 32
@pcf50633_rtc_read_alarm._entry_ptr = internal global ptr @pcf50633_rtc_read_alarm._entry, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"pcf50633_rtc_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 273, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 275, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"pcf50633_rtc_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 226, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 115, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 119, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 129, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 142, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [30 x i8] c"../drivers/rtc/rtc-pcf50633.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 185, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_pcf50633_rtc_driver_exit, ptr @__initcall__kmod_rtc_pcf50633__292_281_pcf50633_rtc_driver_init6, ptr @pcf50633_rtc_driver_exit, ptr @pcf50633_rtc_read_alarm._entry, ptr @pcf50633_rtc_read_alarm._entry_ptr, ptr @pcf50633_rtc_read_time._entry, ptr @pcf50633_rtc_read_time._entry_ptr, ptr @pcf50633_rtc_driver, ptr @.str, ptr @pcf50633_rtc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_rtc_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pcf50633_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcf50633_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pcf50633_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pcf = getelementptr inbounds %struct.pcf50633_rtc, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %pcf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pcf, align 4
  %driver_data.i.i23 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i23 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i23, align 4
  %call4 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @pcf50633_rtc_ops, ptr noundef null) #6
  %rtc_dev = getelementptr inbounds %struct.pcf50633_rtc, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %rtc_dev, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcf, align 4
  %call12 = tail call i32 @pcf50633_register_irq(ptr noundef %9, i32 noundef 6, ptr noundef nonnull @pcf50633_rtc_irq, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then7 ], [ 0, %if.end10 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_rtc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pcf = getelementptr inbounds %struct.pcf50633_rtc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcf, align 4
  %call1 = tail call i32 @pcf50633_free_irq(ptr noundef %3, i32 noundef 6) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_register_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcf50633_rtc_irq(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc_dev = getelementptr inbounds %struct.pcf50633_rtc, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc_dev, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #6
  %alarm_pending = getelementptr inbounds %struct.pcf50633_rtc, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %alarm_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %alarm_pending, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_rtc_read_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %pcf_tm = alloca %struct.pcf50633_time, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %pcf_tm) #6
  %0 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 6
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = call ptr @memset(ptr %pcf_tm, i32 255, i32 7)
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %pcf = getelementptr inbounds %struct.pcf50633_rtc, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcf, align 4
  %call1 = call i32 @pcf50633_read_block(ptr noundef %10, i8 noundef zeroext 89, i32 noundef 7, ptr noundef nonnull %pcf_tm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 7
  br i1 %cmp.not, label %do.body2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf50633_rtc_read_time.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf50633_rtc_read_time, %cond.end.i)) #6
          to label %if.then7 [label %cond.end.i], !srcloc !49

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %3, align 1
  %conv = zext i8 %12 to i32
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %4, align 1
  %conv12 = zext i8 %14 to i32
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %5, align 1
  %conv15 = zext i8 %16 to i32
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 1
  %conv18 = zext i8 %18 to i32
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %0, align 1
  %conv21 = zext i8 %20 to i32
  %21 = ptrtoint ptr %pcf_tm to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pcf_tm, align 1
  %conv24 = zext i8 %22 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf50633_rtc_read_time.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %conv12, i32 noundef %conv15, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.then7, %do.body2
  %23 = ptrtoint ptr %pcf_tm to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pcf_tm, align 1
  %call.i = call i32 @_bcd2bin(i8 noundef zeroext %24) #10
  %25 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i, ptr %tm, align 4
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %0, align 1
  %call24.i = call i32 @_bcd2bin(i8 noundef zeroext %27) #10
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %28 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call24.i, ptr %tm_min.i, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1
  %call43.i = call i32 @_bcd2bin(i8 noundef zeroext %30) #10
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %31 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call43.i, ptr %tm_hour.i, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %2, align 1
  %call62.i = call i32 @_bcd2bin(i8 noundef zeroext %33) #10
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %34 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call62.i, ptr %tm_wday.i, align 4
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %3, align 1
  %call81.i = call i32 @_bcd2bin(i8 noundef zeroext %36) #10
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %37 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call81.i, ptr %tm_mday.i, align 4
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %4, align 1
  %call100.i = call i32 @_bcd2bin(i8 noundef zeroext %39) #10
  %sub.i = add i32 %call100.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %40 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %5, align 1
  %call119.i = call i32 @_bcd2bin(i8 noundef zeroext %42) #10
  %add122.i = add i32 %call119.i, 100
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %43 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add122.i, ptr %tm_year.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf50633_rtc_read_time.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf50633_rtc_read_time, %cleanup)) #6
          to label %if.then42 [label %cleanup], !srcloc !49

if.then42:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf50633_rtc_read_time.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %tm) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %cond.end.i, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then42 ], [ 0, %cond.end.i ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %pcf_tm) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_rtc_set_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %pcf_tm = alloca %struct.pcf50633_time, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %pcf_tm) #6
  %0 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 6
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf50633_rtc_set_time.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf50633_rtc_set_time, %cond.end.i)) #6
          to label %if.then [label %cond.end.i], !srcloc !49

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf50633_rtc_set_time.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %tm) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.then, %entry
  %8 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm, align 4
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #10
  %10 = ptrtoint ptr %pcf_tm to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call.i, ptr %pcf_tm, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %11 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_min.i, align 4
  %call16.i = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #10
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call16.i, ptr %0, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %14 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_hour.i, align 4
  %call33.i = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call33.i, ptr %1, align 1
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %17 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_wday.i, align 4
  %call50.i = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #10
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call50.i, ptr %2, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %20 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mday.i, align 4
  %call67.i = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #10
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call67.i, ptr %3, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %23 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_mon.i, align 4
  %add74.i = add i32 %24, 1
  %call88.i = tail call zeroext i8 @_bin2bcd(i32 noundef %add74.i) #10
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call88.i, ptr %4, align 1
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %26 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_year.i, align 4
  %rem95.i = srem i32 %27, 100
  %call109.i = tail call zeroext i8 @_bin2bcd(i32 noundef %rem95.i) #10
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call109.i, ptr %5, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf50633_rtc_set_time.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf50633_rtc_set_time, %do.end37)) #6
          to label %if.then19 [label %do.end37], !srcloc !49

if.then19:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %3, align 1
  %conv = zext i8 %30 to i32
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %4, align 1
  %conv22 = zext i8 %32 to i32
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %5, align 1
  %conv25 = zext i8 %34 to i32
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %1, align 1
  %conv28 = zext i8 %36 to i32
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %0, align 1
  %conv31 = zext i8 %38 to i32
  %39 = ptrtoint ptr %pcf_tm to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pcf_tm, align 1
  %conv34 = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf50633_rtc_set_time.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %conv22, i32 noundef %conv25, i32 noundef %conv28, i32 noundef %conv31, i32 noundef %conv34) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then19, %cond.end.i
  %pcf = getelementptr inbounds %struct.pcf50633_rtc, ptr %7, i32 0, i32 2
  %41 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcf, align 4
  %call38 = tail call i32 @pcf50633_irq_mask_get(ptr noundef %42, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  %43 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcf, align 4
  br i1 %tobool39.not, label %if.then49, label %if.end43

if.end43:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = call i32 @pcf50633_write_block(ptr noundef %44, i8 noundef zeroext 89, i32 noundef 7, ptr noundef nonnull %pcf_tm) #6
  br label %if.end52

if.then49:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = tail call i32 @pcf50633_irq_mask(ptr noundef %44, i32 noundef 6) #6
  %45 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcf, align 4
  %call4765 = call i32 @pcf50633_write_block(ptr noundef %46, i8 noundef zeroext 89, i32 noundef 7, ptr noundef nonnull %pcf_tm) #6
  %47 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcf, align 4
  %call51 = call i32 @pcf50633_irq_unmask(ptr noundef %48, i32 noundef 6) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end43
  %call4766 = phi i32 [ %call4765, %if.then49 ], [ %call47, %if.end43 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %pcf_tm) #6
  ret i32 %call4766
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_rtc_read_alarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %pcf_tm = alloca %struct.pcf50633_time, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %pcf_tm) #6
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = call ptr @memset(ptr %pcf_tm, i32 255, i32 7)
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %conv = trunc i32 %4 to i8
  %5 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %alrm, align 4
  %alarm_pending = getelementptr inbounds %struct.pcf50633_rtc, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %alarm_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alarm_pending, align 4
  %conv1 = trunc i32 %7 to i8
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv1, ptr %pending, align 1
  %pcf = getelementptr inbounds %struct.pcf50633_rtc, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcf, align 4
  %call2 = call i32 @pcf50633_read_block(ptr noundef %10, i8 noundef zeroext 96, i32 noundef 7, ptr noundef nonnull %pcf_tm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 7
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 6
  %12 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 5
  %13 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 4
  %14 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 3
  %15 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 2
  %16 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 1
  %time4 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %17 = ptrtoint ptr %pcf_tm to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pcf_tm, align 1
  %call.i = call i32 @_bcd2bin(i8 noundef zeroext %18) #10
  %19 = ptrtoint ptr %time4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i, ptr %time4, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %16, align 1
  %call24.i = call i32 @_bcd2bin(i8 noundef zeroext %21) #10
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call24.i, ptr %tm_min.i, align 4
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %15, align 1
  %call43.i = call i32 @_bcd2bin(i8 noundef zeroext %24) #10
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call43.i, ptr %tm_hour.i, align 4
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %14, align 1
  %call62.i = call i32 @_bcd2bin(i8 noundef zeroext %27) #10
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %28 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call62.i, ptr %tm_wday.i, align 4
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %13, align 1
  %call81.i = call i32 @_bcd2bin(i8 noundef zeroext %30) #10
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call81.i, ptr %tm_mday.i, align 4
  %32 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %12, align 1
  %call100.i = call i32 @_bcd2bin(i8 noundef zeroext %33) #10
  %sub.i = add i32 %call100.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %11, align 1
  %call119.i = call i32 @_bcd2bin(i8 noundef zeroext %36) #10
  %add122.i = add i32 %call119.i, 100
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %37 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add122.i, ptr %tm_year.i, align 4
  %call6 = call i32 @rtc_valid_tm(ptr noundef %time4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call6, %if.end ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %pcf_tm) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  %pcf_tm = alloca %struct.pcf50633_time, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %pcf_tm) #6
  %0 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %pcf_tm, i32 0, i32 6
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %8 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %time, align 4
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #10
  %10 = ptrtoint ptr %pcf_tm to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call.i, ptr %pcf_tm, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_min.i, align 4
  %call16.i = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #10
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call16.i, ptr %0, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_hour.i, align 4
  %call33.i = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call33.i, ptr %1, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_mday.i, align 4
  %call67.i = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #10
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call67.i, ptr %3, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mon.i, align 4
  %add74.i = add i32 %21, 1
  %call88.i = tail call zeroext i8 @_bin2bcd(i32 noundef %add74.i) #10
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call88.i, ptr %4, align 1
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_year.i, align 4
  %rem95.i = srem i32 %24, 100
  %call109.i = tail call zeroext i8 @_bin2bcd(i32 noundef %rem95.i) #10
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call109.i, ptr %5, align 1
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 7, ptr %2, align 1
  %pcf = getelementptr inbounds %struct.pcf50633_rtc, ptr %7, i32 0, i32 2
  %27 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcf, align 4
  %call2 = tail call i32 @pcf50633_irq_mask_get(ptr noundef %28, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcf, align 4
  %call4 = tail call i32 @pcf50633_irq_mask(ptr noundef %30, i32 noundef 6) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %31 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcf, align 4
  %call8 = call i32 @pcf50633_write_block(ptr noundef %32, i8 noundef zeroext 96, i32 noundef 7, ptr noundef nonnull %pcf_tm) #6
  %33 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool9.not = icmp eq i8 %34, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %alarm_pending = getelementptr inbounds %struct.pcf50633_rtc, ptr %7, i32 0, i32 1
  %35 = ptrtoint ptr %alarm_pending to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %alarm_pending, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  br i1 %tobool.not, label %if.end11.if.then15_crit_edge, label %lor.lhs.false

if.end11.if.then15_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end11
  %36 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool14.not = icmp eq i8 %37, 0
  br i1 %tobool14.not, label %lor.lhs.false.if.end18_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end11.if.then15_crit_edge
  %38 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcf, align 4
  %call17 = call i32 @pcf50633_irq_unmask(ptr noundef %39, i32 noundef 6) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %lor.lhs.false.if.end18_crit_edge
  %40 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %alrm, align 4
  %conv20 = zext i8 %41 to i32
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv20, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %pcf_tm) #6
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %pcf2 = getelementptr inbounds %struct.pcf50633_rtc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcf2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @pcf50633_irq_unmask(ptr noundef %3, i32 noundef 6) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @pcf50633_irq_mask(ptr noundef %3, i32 noundef 6) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call1, %if.then ], [ %call3, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %enabled, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %err.0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_read_block(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_irq_mask_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_irq_mask(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_write_block(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_irq_unmask(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_free_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_rtc_pcf50633__292_281_pcf50633_rtc_driver_init6, !1, !"__initcall__kmod_rtc_pcf50633__292_281_pcf50633_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-pcf50633.c", i32 281, i32 1}
!2 = !{ptr @__exitcall_pcf50633_rtc_driver_exit, !1, !"__exitcall_pcf50633_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-pcf50633.c", i32 283, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-pcf50633.c", i32 284, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-pcf50633.c", i32 285, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-pcf50633.c", i32 275, i32 11}
!12 = !{ptr @pcf50633_rtc_driver, !13, !"pcf50633_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-pcf50633.c", i32 273, i32 31}
!14 = !{ptr @pcf50633_rtc_ops, !15, !"pcf50633_rtc_ops", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-pcf50633.c", i32 226, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-pcf50633.c", i32 115, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pcf50633_rtc_read_time._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pcf50633_rtc_read_time._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-pcf50633.c", i32 119, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pcf50633_rtc_read_time.__UNIQUE_ID_ddebug288, !25, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-pcf50633.c", i32 129, i32 2}
!30 = !{ptr @pcf50633_rtc_read_time.__UNIQUE_ID_ddebug289, !29, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-pcf50633.c", i32 142, i32 2}
!33 = !{ptr @pcf50633_rtc_set_time.__UNIQUE_ID_ddebug290, !32, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!34 = !{ptr @pcf50633_rtc_set_time.__UNIQUE_ID_ddebug291, !35, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-pcf50633.c", i32 146, i32 2}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-pcf50633.c", i32 185, i32 3}
!38 = !{ptr @pcf50633_rtc_read_alarm._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pcf50633_rtc_read_alarm._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148696963, i64 2148696968, i64 2148696981, i64 2148697025, i64 2148697059, i64 2148697080}
