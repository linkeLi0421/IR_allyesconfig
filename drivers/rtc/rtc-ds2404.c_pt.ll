; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ds2404.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ds2404.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ds2404_gpio = type { ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ds2404 = type { ptr, ptr }
%struct.ds2404_platform_data = type { i32, i32, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }

@__initcall__kmod_rtc_ds2404__227_251_rtc_device_driver_init6 = internal global ptr @rtc_device_driver_init, section ".initcall6.init", align 4
@rtc_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rtc_device_driver_exit = internal global ptr @rtc_device_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [34 x i8] c"rtc_ds2404.description=DS2404 RTC\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [32 x i8] c"rtc_ds2404.author=Sven Schnelle\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [39 x i8] c"rtc_ds2404.file=drivers/rtc/rtc-ds2404\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [23 x i8] c"rtc_ds2404.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [33 x i8] c"rtc_ds2404.alias=platform:ds2404\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ds2404\00", [25 x i8] zeroinitializer }, align 32
@rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"using GPIOs RST:%d, CLK:%d, DQ:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-ds2404.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtc_probe._entry_ptr = internal global ptr @rtc_probe._entry, section ".printk_index", align 4
@ds2404_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ds2404_read_time, ptr @ds2404_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ds2404_gpio = internal global { [3 x %struct.ds2404_gpio], [40 x i8] } { [3 x %struct.ds2404_gpio] [%struct.ds2404_gpio { ptr @.str.9, i32 0 }, %struct.ds2404_gpio { ptr @.str.10, i32 0 }, %struct.ds2404_gpio { ptr @.str.11, i32 0 }], [40 x i8] zeroinitializer }, align 32
@ds2404_gpio_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 59, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error mapping gpio %s: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ds2404_gpio_map\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ds2404_gpio_map._entry_ptr = internal global ptr @ds2404_gpio_map._entry, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RTC RST\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RTC CLK\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RTC DQ\00", [25 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ds2404_write_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 160, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read invalid data\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ds2404_write_memory\00", [44 x i8] zeroinitializer }, align 32
@ds2404_write_memory._entry_ptr = internal global ptr @ds2404_write_memory._entry, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"rtc_device_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 245, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 248, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 228, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"ds2404_rtc_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 201, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"ds2404_gpio\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 40, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 58, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 41, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 42, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 43, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [28 x i8] c"../drivers/rtc/rtc-ds2404.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 160, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_rtc_device_driver_exit, ptr @__initcall__kmod_rtc_ds2404__227_251_rtc_device_driver_init6, ptr @ds2404_gpio_map._entry, ptr @ds2404_gpio_map._entry_ptr, ptr @ds2404_write_memory._entry, ptr @ds2404_write_memory._entry_ptr, ptr @rtc_device_driver_exit, ptr @rtc_probe._entry, ptr @rtc_probe._entry_ptr, ptr @rtc_device_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ds2404_rtc_ops, ptr @ds2404_gpio, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2404_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2404_gpio to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2404_gpio_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2404_write_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_device_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rtc_device_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtc_device_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rtc_device_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %in.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %rtc = getelementptr inbounds %struct.ds2404, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %rtc, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  store i32 %5, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 0, i32 1), align 4
  %gpio_clk.i = getelementptr inbounds %struct.ds2404_platform_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_clk.i, align 4
  store i32 %7, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 1, i32 1), align 4
  %gpio_dq.i = getelementptr inbounds %struct.ds2404_platform_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %gpio_dq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_dq.i, align 4
  store i32 %9, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2, i32 1), align 4
  %10 = load ptr, ptr @ds2404_gpio, align 4
  %call.i63 = tail call i32 @gpio_request(i32 noundef %5, ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i, label %for.inc.i, label %ds2404_gpio_map.exit.thread68

ds2404_gpio_map.exit.thread68:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %11 = load ptr, ptr @ds2404_gpio, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %11, i32 noundef %call.i63) #9
  br label %cleanup

while.body.preheader.i:                           ; preds = %for.inc.1.i.while.body.preheader.i_crit_edge, %for.inc.i.while.body.preheader.i_crit_edge
  %i.028.lcssa.ph.i = phi i32 [ 1, %for.inc.1.i.while.body.preheader.i_crit_edge ], [ 0, %for.inc.i.while.body.preheader.i_crit_edge ]
  %arrayidx.lcssa.ph.i = phi ptr [ getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2), %for.inc.1.i.while.body.preheader.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 1), %for.inc.i.while.body.preheader.i_crit_edge ]
  %call.lcssa.ph.i = phi i32 [ %call.2.i, %for.inc.1.i.while.body.preheader.i_crit_edge ], [ %call.1.i, %for.inc.i.while.body.preheader.i_crit_edge ]
  %12 = ptrtoint ptr %arrayidx.lcssa.ph.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.lcssa.ph.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %13, i32 noundef %call.lcssa.ph.i) #9
  %gpio13.i = getelementptr [3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 %i.028.lcssa.ph.i, i32 1
  %14 = ptrtoint ptr %gpio13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio13.i, align 4
  tail call void @gpio_free(i32 noundef %15) #6
  br i1 %tobool.not.1.i, label %while.body.i.1, label %while.body.preheader.i.ds2404_gpio_map.exit_crit_edge

while.body.preheader.i.ds2404_gpio_map.exit_crit_edge: ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds2404_gpio_map.exit

for.inc.i:                                        ; preds = %if.end11
  %16 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 0, i32 1), align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %16) #6
  %call1.i.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i.i, i32 noundef 1) #6
  %17 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 1, i32 1), align 4
  %18 = load ptr, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 1), align 4
  %call.1.i = tail call i32 @gpio_request(i32 noundef %17, ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.while.body.preheader.i_crit_edge

for.inc.i.while.body.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.preheader.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %19 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 1, i32 1), align 4
  %call.i.1.i = tail call ptr @gpio_to_desc(i32 noundef %19) #6
  %call1.i.1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i.1.i, i32 noundef 1) #6
  %20 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2, i32 1), align 4
  %21 = load ptr, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2), align 4
  %call.2.i = tail call i32 @gpio_request(i32 noundef %20, ptr noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %ds2404_gpio_map.exit.thread, label %for.inc.1.i.while.body.preheader.i_crit_edge

for.inc.1.i.while.body.preheader.i_crit_edge:     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.preheader.i

ds2404_gpio_map.exit.thread:                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ds2404_gpio, ptr %call.i, align 4
  br label %if.end15

while.body.i.1:                                   ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add nsw i32 %i.028.lcssa.ph.i, -1
  %gpio13.i.1 = getelementptr [3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 %dec.i, i32 1
  %23 = ptrtoint ptr %gpio13.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpio13.i.1, align 4
  tail call void @gpio_free(i32 noundef %24) #6
  br label %ds2404_gpio_map.exit

ds2404_gpio_map.exit:                             ; preds = %while.body.i.1, %while.body.preheader.i.ds2404_gpio_map.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.lcssa.ph.i)
  %tobool13.not = icmp eq i32 %call.lcssa.ph.i, 0
  br i1 %tobool13.not, label %ds2404_gpio_map.exit.if.end15_crit_edge, label %ds2404_gpio_map.exit.cleanup_crit_edge

ds2404_gpio_map.exit.cleanup_crit_edge:           ; preds = %ds2404_gpio_map.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ds2404_gpio_map.exit.if.end15_crit_edge:          ; preds = %ds2404_gpio_map.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end15:                                         ; preds = %ds2404_gpio_map.exit.if.end15_crit_edge, %ds2404_gpio_map.exit.thread
  %call.i64 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ds2404_gpio_unmap, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool.not.i65 = icmp eq i32 %call.i64, 0
  br i1 %tobool.not.i65, label %do.end, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %25 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 0, i32 1), align 4
  tail call void @gpio_free(i32 noundef %25) #6
  %26 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 1, i32 1), align 4
  tail call void @gpio_free(i32 noundef %26) #6
  %27 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2, i32 1), align 4
  tail call void @gpio_free(i32 noundef %27) #6
  br label %cleanup

do.end:                                           ; preds = %if.end15
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %gpio22 = getelementptr inbounds %struct.ds2404_gpio, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %gpio22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gpio22, align 4
  %gpio25 = getelementptr %struct.ds2404_gpio, ptr %29, i32 1, i32 1
  %32 = ptrtoint ptr %gpio25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gpio25, align 4
  %gpio28 = getelementptr %struct.ds2404_gpio, ptr %29, i32 2, i32 1
  %34 = ptrtoint ptr %gpio28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gpio28, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %31, i32 noundef %33, i32 noundef %35) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %37 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rtc, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ds2404_rtc_ops, ptr %ops, align 8
  %40 = load ptr, ptr %rtc, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %40, i32 0, i32 23
  %41 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 4294967295, ptr %range_max, align 8
  %42 = load ptr, ptr %rtc, align 4
  %call32 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %in.i) #6
  %43 = ptrtoint ptr %in.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 16, ptr %in.i, align 1
  call fastcc void @ds2404_write_memory(ptr noundef %dev, i16 noundef zeroext 513, i32 noundef 1, ptr noundef nonnull %in.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %in.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end.cleanup_crit_edge, %devm_add_action_or_reset.exit, %ds2404_gpio_map.exit.cleanup_crit_edge, %ds2404_gpio_map.exit.thread68, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then8 ], [ 0, %if.end35 ], [ -12, %entry.cleanup_crit_edge ], [ %call.lcssa.ph.i, %ds2404_gpio_map.exit.cleanup_crit_edge ], [ %call.i64, %devm_add_action_or_reset.exit ], [ %call32, %do.end.cleanup_crit_edge ], [ %call.i63, %ds2404_gpio_map.exit.thread68 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds2404_gpio_unmap(ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 0, i32 1), align 4
  tail call void @gpio_free(i32 noundef %0) #6
  %1 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 1, i32 1), align 4
  tail call void @gpio_free(i32 noundef %1) #6
  %2 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2, i32 1), align 4
  tail call void @gpio_free(i32 noundef %2) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2404_read_time(ptr nocapture noundef readnone %dev, ptr noundef %dt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 0, i32 1), align 4
  %call.i.i.i = tail call ptr @gpio_to_desc(i32 noundef %0) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i.i, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #6
  %2 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 0, i32 1), align 4
  %call.i1.i.i = tail call ptr @gpio_to_desc(i32 noundef %2) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i1.i.i, i32 noundef 1) #6
  %3 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 1, i32 1), align 4
  %call.i2.i.i = tail call ptr @gpio_to_desc(i32 noundef %3) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i2.i.i, i32 noundef 0) #6
  %4 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2, i32 1), align 4
  %call.i3.i.i = tail call ptr @gpio_to_desc(i32 noundef %4) #6
  %call1.i.i.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i3.i.i, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #6
  tail call fastcc void @ds2404_write_byte(i8 noundef zeroext -16) #6
  tail call fastcc void @ds2404_write_byte(i8 noundef zeroext 3) #6
  tail call fastcc void @ds2404_write_byte(i8 noundef zeroext 2) #6
  %call.i = tail call fastcc zeroext i8 @ds2404_read_byte() #6
  %call.1.i = tail call fastcc zeroext i8 @ds2404_read_byte() #6
  %call.2.i = tail call fastcc zeroext i8 @ds2404_read_byte() #6
  %call.3.i = tail call fastcc zeroext i8 @ds2404_read_byte() #6
  %hw_time.sroa.7.0.insert.ext = zext i8 %call.3.i to i32
  %hw_time.sroa.6.0.insert.ext = zext i8 %call.2.i to i32
  %hw_time.sroa.6.0.insert.shift = shl nuw nsw i32 %hw_time.sroa.6.0.insert.ext, 8
  %hw_time.sroa.6.0.insert.insert = or i32 %hw_time.sroa.6.0.insert.shift, %hw_time.sroa.7.0.insert.ext
  %hw_time.sroa.5.0.insert.ext = zext i8 %call.1.i to i32
  %hw_time.sroa.5.0.insert.shift = shl nuw nsw i32 %hw_time.sroa.5.0.insert.ext, 16
  %hw_time.sroa.5.0.insert.insert = or i32 %hw_time.sroa.6.0.insert.insert, %hw_time.sroa.5.0.insert.shift
  %hw_time.sroa.0.0.insert.ext = zext i8 %call.i to i32
  %hw_time.sroa.0.0.insert.shift = shl nuw i32 %hw_time.sroa.0.0.insert.ext, 24
  %hw_time.sroa.0.0.insert.insert = or i32 %hw_time.sroa.5.0.insert.insert, %hw_time.sroa.0.0.insert.shift
  %6 = tail call i32 @llvm.bswap.i32(i32 %hw_time.sroa.0.0.insert.insert)
  %conv = zext i32 %6 to i64
  tail call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %dt) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2404_set_time(ptr noundef %dev, ptr noundef %dt) #2 align 64 {
entry:
  %time = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time) #6
  %call = tail call i64 @rtc_tm_to_time64(ptr noundef %dt) #6
  %conv = trunc i64 %call to i32
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %1 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %time, align 4
  call fastcc void @ds2404_write_memory(ptr noundef %dev, i16 noundef zeroext 515, i32 noundef 4, ptr noundef nonnull %time)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ds2404_write_byte(i8 noundef zeroext %byte) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2, i32 1), align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %0) #6
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 1) #6
  %conv = zext i8 %byte to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %1 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2, i32 1), align 4
  %shl = shl nuw nsw i32 1, %i.04
  %and = and i32 %shl, %conv
  %call.i1 = tail call ptr @gpio_to_desc(i32 noundef %1) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i1, i32 noundef %and) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #6
  %3 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 1, i32 1), align 4
  %call.i2 = tail call ptr @gpio_to_desc(i32 noundef %3) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i2, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #6
  %5 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 1, i32 1), align 4
  %call.i3 = tail call ptr @gpio_to_desc(i32 noundef %5) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i3, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #6
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ds2404_read_byte() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2, i32 1), align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %0) #6
  %call1.i = tail call i32 @gpiod_direction_input(ptr noundef %call.i) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %ret.06 = phi i8 [ 0, %entry ], [ %ret.1, %for.body.for.body_crit_edge ]
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %1 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 1, i32 1), align 4
  %call.i1 = tail call ptr @gpio_to_desc(i32 noundef %1) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i1, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #6
  %3 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2, i32 1), align 4
  %call.i2 = tail call ptr @gpio_to_desc(i32 noundef %3) #6
  %call1.i3 = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not = icmp eq i32 %call1.i3, 0
  %shl = shl nuw nsw i32 1, %i.05
  %4 = trunc i32 %shl to i8
  %conv2 = select i1 %tobool.not, i8 0, i8 %4
  %ret.1 = or i8 %conv2, %ret.06
  %5 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 1, i32 1), align 4
  %call.i4 = tail call ptr @gpio_to_desc(i32 noundef %5) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i4, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #6
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret i8 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ds2404_write_memory(ptr noundef %dev, i16 noundef zeroext %offset, i32 noundef %length, ptr nocapture noundef readonly %out) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 0, i32 1), align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %0) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #6
  %2 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 0, i32 1), align 4
  %call.i1.i = tail call ptr @gpio_to_desc(i32 noundef %2) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i1.i, i32 noundef 1) #6
  %3 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 1, i32 1), align 4
  %call.i2.i = tail call ptr @gpio_to_desc(i32 noundef %3) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i2.i, i32 noundef 0) #6
  %4 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2, i32 1), align 4
  %call.i3.i = tail call ptr @gpio_to_desc(i32 noundef %4) #6
  %call1.i.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i3.i, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #6
  tail call fastcc void @ds2404_write_byte(i8 noundef zeroext 15)
  %conv1 = trunc i16 %offset to i8
  tail call fastcc void @ds2404_write_byte(i8 noundef zeroext %conv1)
  tail call fastcc void @ds2404_write_byte(i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp62 = icmp sgt i32 %length, 0
  br i1 %cmp62, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %out, i32 %i.063
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  tail call fastcc void @ds2404_write_byte(i8 noundef zeroext %7)
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 0, i32 1), align 4
  %call.i.i50 = tail call ptr @gpio_to_desc(i32 noundef %8) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i50, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #6
  %10 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 0, i32 1), align 4
  %call.i1.i51 = tail call ptr @gpio_to_desc(i32 noundef %10) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i1.i51, i32 noundef 1) #6
  %11 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 1, i32 1), align 4
  %call.i2.i52 = tail call ptr @gpio_to_desc(i32 noundef %11) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i2.i52, i32 noundef 0) #6
  %12 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2, i32 1), align 4
  %call.i3.i53 = tail call ptr @gpio_to_desc(i32 noundef %12) #6
  %call1.i.i54 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i3.i53, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #6
  tail call fastcc void @ds2404_write_byte(i8 noundef zeroext -86)
  %call = tail call fastcc zeroext i8 @ds2404_read_byte()
  %call6 = tail call fastcc zeroext i8 @ds2404_read_byte()
  %call7 = tail call fastcc zeroext i8 @ds2404_read_byte()
  br i1 %cmp62, label %for.end.for.body11_crit_edge, label %for.end.for.end20_crit_edge

for.end.for.end20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end20

for.end.for.body11_crit_edge:                     ; preds = %for.end
  br label %for.body11

for.cond8:                                        ; preds = %for.body11
  %inc19 = add nuw nsw i32 %i.165, 1
  %exitcond66.not = icmp eq i32 %inc19, %length
  br i1 %exitcond66.not, label %for.cond8.for.end20_crit_edge, label %for.cond8.for.body11_crit_edge

for.cond8.for.body11_crit_edge:                   ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11

for.cond8.for.end20_crit_edge:                    ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end20

for.body11:                                       ; preds = %for.cond8.for.body11_crit_edge, %for.end.for.body11_crit_edge
  %i.165 = phi i32 [ %inc19, %for.cond8.for.body11_crit_edge ], [ 0, %for.end.for.body11_crit_edge ]
  %arrayidx12 = getelementptr i8, ptr %out, i32 %i.165
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %call14 = tail call fastcc zeroext i8 @ds2404_read_byte()
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %call14)
  %cmp16.not = icmp eq i8 %15, %call14
  br i1 %cmp16.not, label %for.cond8, label %do.end

do.end:                                           ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %cleanup

for.end20:                                        ; preds = %for.cond8.for.end20_crit_edge, %for.end.for.end20_crit_edge
  %16 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 0, i32 1), align 4
  %call.i.i55 = tail call ptr @gpio_to_desc(i32 noundef %16) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i55, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  %18 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 0, i32 1), align 4
  %call.i1.i56 = tail call ptr @gpio_to_desc(i32 noundef %18) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i1.i56, i32 noundef 1) #6
  %19 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 1, i32 1), align 4
  %call.i2.i57 = tail call ptr @gpio_to_desc(i32 noundef %19) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i2.i57, i32 noundef 0) #6
  %20 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2, i32 1), align 4
  %call.i3.i58 = tail call ptr @gpio_to_desc(i32 noundef %20) #6
  %call1.i.i59 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i3.i58, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #6
  tail call fastcc void @ds2404_write_byte(i8 noundef zeroext 85)
  tail call fastcc void @ds2404_write_byte(i8 noundef zeroext %call)
  tail call fastcc void @ds2404_write_byte(i8 noundef zeroext %call6)
  tail call fastcc void @ds2404_write_byte(i8 noundef zeroext %call7)
  %22 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2, i32 1), align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %22) #6
  %call1.i = tail call i32 @gpiod_direction_input(ptr noundef %call.i) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %for.end20
  %23 = load i32, ptr getelementptr inbounds ([3 x %struct.ds2404_gpio], ptr @ds2404_gpio, i32 0, i32 2, i32 1), align 4
  %call.i60 = tail call ptr @gpio_to_desc(i32 noundef %23) #6
  %call1.i61 = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i60) #6
  %tobool.not = icmp eq i32 %call1.i61, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %while.cond.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_rtc_ds2404__227_251_rtc_device_driver_init6, !1, !"__initcall__kmod_rtc_ds2404__227_251_rtc_device_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ds2404.c", i32 251, i32 1}
!2 = !{ptr @__exitcall_rtc_device_driver_exit, !1, !"__exitcall_rtc_device_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-ds2404.c", i32 253, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-ds2404.c", i32 254, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-ds2404.c", i32 255, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-ds2404.c", i32 256, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-ds2404.c", i32 248, i32 11}
!14 = !{ptr @rtc_device_driver, !15, !"rtc_device_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-ds2404.c", i32 245, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-ds2404.c", i32 228, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-ds2404.c", i32 58, i32 4}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ds2404_gpio_map._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @ds2404_gpio_map._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-ds2404.c", i32 41, i32 4}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-ds2404.c", i32 42, i32 4}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-ds2404.c", i32 43, i32 4}
!36 = !{ptr @ds2404_gpio, !37, !"ds2404_gpio", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-ds2404.c", i32 40, i32 27}
!38 = !{ptr @ds2404_rtc_ops, !39, !"ds2404_rtc_ops", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-ds2404.c", i32 201, i32 35}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-ds2404.c", i32 160, i32 4}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ds2404_write_memory._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ds2404_write_memory._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
