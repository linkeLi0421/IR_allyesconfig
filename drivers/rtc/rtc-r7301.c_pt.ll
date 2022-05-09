; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-r7301.c_pt.bc'
source_filename = "../drivers/rtc/rtc-r7301.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rtc7301_priv = type { ptr, i32, %struct.spinlock, i8 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_r7301__227_444_rtc7301_rtc_driver_init6 = internal global ptr @rtc7301_rtc_driver_init, section ".initcall6.init", align 4
@rtc7301_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rtc7301_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtc7301_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rtc7301_rtc_driver_exit = internal global ptr @rtc7301_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [55 x i8] c"rtc_r7301.author=Akinobu Mita <akinobu.mita@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [37 x i8] c"rtc_r7301.file=drivers/rtc/rtc-r7301\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [22 x i8] c"rtc_r7301.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [57 x i8] c"rtc_r7301.description=EPSON TOYOCOM RTC-7301SF/DG Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [35 x i8] c"rtc_r7301.alias=platform:rtc-r7301\00", section ".modinfo", align 1
@rtc7301_rtc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rtc7301_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rtc_r7301:370:(&rtc7301_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@rtc7301_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc-r7301\00", [22 x i8] zeroinitializer }, align 32
@rtc7301_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @rtc7301_read_time, ptr @rtc7301_set_time, ptr @rtc7301_read_alarm, ptr @rtc7301_set_alarm, ptr null, ptr @rtc7301_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rtc7301_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 394, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtc7301_rtc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/rtc-r7301.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtc7301_rtc_probe._entry_ptr = internal global ptr @rtc7301_rtc_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtc7301_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epson,rtc7301sf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epson,rtc7301dg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rtc7301_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rtc7301_suspend, ptr @rtc7301_resume, ptr @rtc7301_suspend, ptr @rtc7301_resume, ptr @rtc7301_suspend, ptr @rtc7301_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"rtc7301_rtc_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 436, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"rtc7301_regmap_config\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 58, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 369, i32 17 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 376, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 383, i32 44 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"rtc7301_rtc_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 311, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 394, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"rtc7301_dt_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 429, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"rtc7301_pm_ops\00", align 1
@___asan_gen_.54 = private constant [27 x i8] c"../drivers/rtc/rtc-r7301.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 427, i32 8 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_rtc7301_rtc_driver_exit, ptr @__initcall__kmod_rtc_r7301__227_444_rtc7301_rtc_driver_init6, ptr @rtc7301_rtc_driver_exit, ptr @rtc7301_rtc_probe._entry, ptr @rtc7301_rtc_probe._entry_ptr, ptr @rtc7301_rtc_driver, ptr @rtc7301_rtc_probe._key, ptr @rtc7301_regmap_config, ptr @.str, ptr @rtc7301_rtc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @rtc7301_rtc_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rtc7301_dt_match, ptr @rtc7301_pm_ops], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc7301_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc7301_rtc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc7301_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc7301_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc7301_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc7301_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc7301_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc7301_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc7301_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @rtc7301_rtc_driver, ptr noundef nonnull @rtc7301_rtc_probe, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtc7301_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rtc7301_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc7301_rtc_probe(ptr noundef %dev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %dev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @rtc7301_regmap_config, ptr noundef nonnull @rtc7301_rtc_probe._key, ptr noundef nonnull @.str) #5
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %call.i, align 4
  %cmp.i67 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %call15 = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.rtc7301_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call15, ptr %irq, align 4
  %lock = getelementptr inbounds %struct.rtc7301_priv, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rtc7301_rtc_probe.__key, i16 noundef signext 3) #5
  %bank = getelementptr inbounds %struct.rtc7301_priv, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %bank, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %5 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bank, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.i.i = icmp eq i8 %6, 2
  br i1 %cmp.i.i, label %if.end14.rtc7301_init.exit_crit_edge, label %if.end.i.i

if.end14.rtc7301_init.exit_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc7301_init.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %call.i.i.i = tail call i32 @regmap_get_reg_stride(ptr noundef %8) #5
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %mul.i.i.i = mul i32 %call.i.i.i, 15
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %mul.i.i.i, i32 noundef 12, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %11 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %bank, align 4
  br label %rtc7301_init.exit

rtc7301_init.exit:                                ; preds = %if.end.i.i, %if.end14.rtc7301_init.exit_crit_edge
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call i32 @regmap_get_reg_stride(ptr noundef %13) #5
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %mul.i.i = mul i32 %call.i.i, 14
  %call2.i.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %mul.i.i, i32 noundef 0) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call18 = tail call ptr @devm_rtc_device_register(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtc7301_rtc_ops, ptr noundef null) #5
  %cmp.i68 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %if.then20, label %if.end22

if.then20:                                        ; preds = %rtc7301_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end22:                                         ; preds = %rtc7301_init.exit
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp sgt i32 %19, 0
  br i1 %cmp, label %if.then24, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then24.dev_name.exit_crit_edge

if.then24.dev_name.exit_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then24.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end.i ], [ %21, %if.then24.dev_name.exit_crit_edge ]
  %call.i69 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %19, ptr noundef nonnull @rtc7301_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef %call18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool30.not = icmp eq i32 %call.i69, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.else:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then31, %if.end22.cleanup_crit_edge, %if.then20, %if.then11, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then4 ], [ %2, %if.then11 ], [ %17, %if.then20 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %if.else ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc7301_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.rtc7301_priv, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %bank1.i = getelementptr inbounds %struct.rtc7301_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bank1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i = icmp eq i8 %5, 1
  br i1 %cmp.i, label %entry.rtc7301_select_bank.exit_crit_edge, label %if.end.i

entry.rtc7301_select_bank.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc7301_select_bank.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @regmap_get_reg_stride(ptr noundef %7) #5
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %mul.i.i = mul i32 %call.i.i, 15
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %mul.i.i, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %10 = ptrtoint ptr %bank1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bank1.i, align 4
  br label %rtc7301_select_bank.exit

rtc7301_select_bank.exit:                         ; preds = %if.end.i, %entry.rtc7301_select_bank.exit_crit_edge
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @regmap_get_reg_stride(ptr noundef %12) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i, align 4, !annotation !47
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %mul.i = mul i32 %call.i, 14
  %call2.i = call i32 @regmap_read(ptr noundef %15, i32 noundef %mul.i, ptr noundef nonnull %val.i) #5
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %rtc7301_select_bank.exit.if.end_crit_edge, label %if.then

rtc7301_select_bank.exit.if.end_crit_edge:        ; preds = %rtc7301_select_bank.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %rtc7301_select_bank.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %call.i.i8 = call i32 @regmap_get_reg_stride(ptr noundef %20) #5
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %mul.i.i9 = mul i32 %call.i.i8, 14
  %call.i.i.i10 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %mul.i.i9, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @rtc_update_irq(ptr noundef %dev_id, i32 noundef 1, i32 noundef 160) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %rtc7301_select_bank.exit.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %rtc7301_select_bank.exit.if.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_get_reg_stride(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc7301_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #3 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.rtc7301_priv, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %bank1.i = getelementptr inbounds %struct.rtc7301_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %entry.while.body.i.preheader_crit_edge, label %if.end.i

entry.while.body.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.preheader

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_get_reg_stride(ptr noundef %5) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %mul.i.i = mul i32 %call.i.i, 15
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %mul.i.i, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %8 = ptrtoint ptr %bank1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %bank1.i, align 4
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.end.i, %entry.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i15.while.body.i_crit_edge, %while.body.i.preheader
  %dec2.i = phi i32 [ %dec.i, %if.end.i15.while.body.i_crit_edge ], [ 99, %while.body.i.preheader ]
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i.i13 = call i32 @regmap_get_reg_stride(ptr noundef %10) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i.i, align 4, !annotation !47
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %mul.i.i14 = mul i32 %call.i.i13, 15
  %call2.i.i = call i32 @regmap_read(ptr noundef %13, i32 noundef %mul.i.i14, ptr noundef nonnull %val.i.i) #5
  %14 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  %16 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.then, label %if.end.i15

if.end.i15:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 64424400) #5
  %dec.i = add nsw i32 %dec2.i, -1
  %cmp.not.i = icmp eq i32 %dec2.i, 0
  br i1 %cmp.not.i, label %if.end.i15.if.end_crit_edge, label %if.end.i15.while.body.i_crit_edge

if.end.i15.while.body.i_crit_edge:                ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end.i15.if.end_crit_edge:                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @rtc7301_get_time(ptr noundef %1, ptr noundef %tm, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i15.if.end_crit_edge
  %retval.2.i18 = phi i32 [ 0, %if.then ], [ -110, %if.end.i15.if.end_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  ret i32 %retval.2.i18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc7301_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.rtc7301_priv, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_get_reg_stride(ptr noundef %3) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %mul.i.i = mul i32 %call.i.i, 15
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %mul.i.i, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 64424400) #5
  %bank1.i = getelementptr inbounds %struct.rtc7301_priv, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bank1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i = icmp eq i8 %8, 0
  br i1 %cmp.i, label %entry.rtc7301_select_bank.exit_crit_edge, label %if.end.i

entry.rtc7301_select_bank.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc7301_select_bank.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i.i12 = tail call i32 @regmap_get_reg_stride(ptr noundef %10) #5
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %mul.i.i13 = mul i32 %call.i.i12, 15
  %call.i.i.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %mul.i.i13, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %13 = ptrtoint ptr %bank1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bank1.i, align 4
  br label %rtc7301_select_bank.exit

rtc7301_select_bank.exit:                         ; preds = %if.end.i, %entry.rtc7301_select_bank.exit_crit_edge
  tail call fastcc void @rtc7301_write_time(ptr noundef %1, ptr noundef %tm, i1 noundef zeroext false)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i.i15 = tail call i32 @regmap_get_reg_stride(ptr noundef %15) #5
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %mul.i.i16 = mul i32 %call.i.i15, 15
  %call.i.i.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %mul.i.i16, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc7301_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef %alarm) #3 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.rtc7301_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.rtc7301_priv, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %bank1.i = getelementptr inbounds %struct.rtc7301_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bank1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i = icmp eq i8 %5, 1
  br i1 %cmp.i, label %do.body1.rtc7301_select_bank.exit_crit_edge, label %if.end.i

do.body1.rtc7301_select_bank.exit_crit_edge:      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc7301_select_bank.exit

if.end.i:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_get_reg_stride(ptr noundef %7) #5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %mul.i.i = mul i32 %call.i.i, 15
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %mul.i.i, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %10 = ptrtoint ptr %bank1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bank1.i, align 4
  br label %rtc7301_select_bank.exit

rtc7301_select_bank.exit:                         ; preds = %if.end.i, %do.body1.rtc7301_select_bank.exit_crit_edge
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  tail call fastcc void @rtc7301_get_time(ptr noundef %1, ptr noundef %time, i1 noundef zeroext true)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_get_reg_stride(ptr noundef %12) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i, align 4, !annotation !47
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %mul.i = mul i32 %call.i, 14
  %call2.i = call i32 @regmap_read(ptr noundef %15, i32 noundef %mul.i, ptr noundef nonnull %val.i) #5
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %18 = trunc i32 %17 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %and = and i8 %18, 1
  %19 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %and, ptr %alarm, align 4
  %conv.i = lshr i8 %18, 1
  %.lobit = and i8 %conv.i, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 1
  %20 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.lobit, ptr %pending, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %rtc7301_select_bank.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rtc7301_select_bank.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc7301_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alarm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.rtc7301_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.rtc7301_priv, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %bank1.i = getelementptr inbounds %struct.rtc7301_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bank1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i = icmp eq i8 %5, 1
  br i1 %cmp.i, label %do.body1.rtc7301_select_bank.exit_crit_edge, label %if.end.i

do.body1.rtc7301_select_bank.exit_crit_edge:      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc7301_select_bank.exit

if.end.i:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_get_reg_stride(ptr noundef %7) #5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %mul.i.i = mul i32 %call.i.i, 15
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %mul.i.i, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %10 = ptrtoint ptr %bank1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bank1.i, align 4
  br label %rtc7301_select_bank.exit

rtc7301_select_bank.exit:                         ; preds = %if.end.i, %do.body1.rtc7301_select_bank.exit_crit_edge
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  tail call fastcc void @rtc7301_write_time(ptr noundef %1, ptr noundef %time, i1 noundef zeroext true)
  %11 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp ne i8 %12, 0
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i.i16 = tail call i32 @regmap_get_reg_stride(ptr noundef %14) #5
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %mul.i.i17 = mul i32 %call.i.i16, 14
  %conv2.i.i = zext i1 %tobool.not.i to i32
  %call.i.i.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %mul.i.i17, i32 noundef 3, i32 noundef %conv2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %rtc7301_select_bank.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rtc7301_select_bank.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc7301_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.rtc7301_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.rtc7301_priv, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %bank1.i = getelementptr inbounds %struct.rtc7301_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bank1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i = icmp eq i8 %5, 1
  br i1 %cmp.i, label %do.body1.rtc7301_select_bank.exit_crit_edge, label %if.end.i

do.body1.rtc7301_select_bank.exit_crit_edge:      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc7301_select_bank.exit

if.end.i:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_get_reg_stride(ptr noundef %7) #5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %mul.i.i = mul i32 %call.i.i, 15
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %mul.i.i, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %10 = ptrtoint ptr %bank1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bank1.i, align 4
  br label %rtc7301_select_bank.exit

rtc7301_select_bank.exit:                         ; preds = %if.end.i, %do.body1.rtc7301_select_bank.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not.i = icmp ne i32 %enabled, 0
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i.i13 = tail call i32 @regmap_get_reg_stride(ptr noundef %12) #5
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %mul.i.i14 = mul i32 %call.i.i13, 14
  %conv2.i.i = zext i1 %tobool.not.i to i32
  %call.i.i.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %mul.i.i14, i32 noundef 3, i32 noundef %conv2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %rtc7301_select_bank.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rtc7301_select_bank.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtc7301_get_time(ptr noundef readonly %priv, ptr nocapture noundef %tm, i1 noundef zeroext %alarm) unnamed_addr #3 align 64 {
entry:
  %val.i147 = alloca i32, align 4
  %val.i142 = alloca i32, align 4
  %val.i137 = alloca i32, align 4
  %val.i132 = alloca i32, align 4
  %val.i127 = alloca i32, align 4
  %val.i122 = alloca i32, align 4
  %val.i117 = alloca i32, align 4
  %val.i112 = alloca i32, align 4
  %val.i107 = alloca i32, align 4
  %val.i102 = alloca i32, align 4
  %val.i97 = alloca i32, align 4
  %val.i92 = alloca i32, align 4
  %val.i88 = alloca i32, align 4
  %val.i84 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call.i = tail call i32 @regmap_get_reg_stride(ptr noundef %1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !47
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %val.i) #5
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv.i = and i32 %6, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %7 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.i, ptr %tm, align 4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %call.i85 = call i32 @regmap_get_reg_stride(ptr noundef %9) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i84) #5
  %10 = ptrtoint ptr %val.i84 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i84, align 4, !annotation !47
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %call2.i86 = call i32 @regmap_read(ptr noundef %12, i32 noundef %call.i85, ptr noundef nonnull %val.i84) #5
  %13 = ptrtoint ptr %val.i84 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i84, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i84) #5
  %15 = and i32 %14, 7
  %mul = mul nuw nsw i32 %15, 10
  %16 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm, align 4
  %add = add i32 %17, %mul
  store i32 %add, ptr %tm, align 4
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  %call.i89 = call i32 @regmap_get_reg_stride(ptr noundef %19) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i88) #5
  %20 = ptrtoint ptr %val.i88 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %val.i88, align 4, !annotation !47
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %mul.i = shl i32 %call.i89, 1
  %call2.i90 = call i32 @regmap_read(ptr noundef %22, i32 noundef %mul.i, ptr noundef nonnull %val.i88) #5
  %23 = ptrtoint ptr %val.i88 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i88, align 4
  %conv.i91 = and i32 %24, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i88) #5
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %25 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i91, ptr %tm_min, align 4
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %call.i93 = call i32 @regmap_get_reg_stride(ptr noundef %27) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i92) #5
  %28 = ptrtoint ptr %val.i92 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %val.i92, align 4, !annotation !47
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 4
  %mul.i94 = mul i32 %call.i93, 3
  %call2.i95 = call i32 @regmap_read(ptr noundef %30, i32 noundef %mul.i94, ptr noundef nonnull %val.i92) #5
  %31 = ptrtoint ptr %val.i92 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i92, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i92) #5
  %33 = and i32 %32, 7
  %mul9 = mul nuw nsw i32 %33, 10
  %34 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_min, align 4
  %add11 = add i32 %35, %mul9
  store i32 %add11, ptr %tm_min, align 4
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 4
  %call.i98 = call i32 @regmap_get_reg_stride(ptr noundef %37) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i97) #5
  %38 = ptrtoint ptr %val.i97 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %val.i97, align 4, !annotation !47
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 4
  %mul.i99 = shl i32 %call.i98, 2
  %call2.i100 = call i32 @regmap_read(ptr noundef %40, i32 noundef %mul.i99, ptr noundef nonnull %val.i97) #5
  %41 = ptrtoint ptr %val.i97 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i97, align 4
  %conv.i101 = and i32 %42, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i97) #5
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %43 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv.i101, ptr %tm_hour, align 4
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 4
  %call.i103 = call i32 @regmap_get_reg_stride(ptr noundef %45) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i102) #5
  %46 = ptrtoint ptr %val.i102 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %val.i102, align 4, !annotation !47
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 4
  %mul.i104 = mul i32 %call.i103, 5
  %call2.i105 = call i32 @regmap_read(ptr noundef %48, i32 noundef %mul.i104, ptr noundef nonnull %val.i102) #5
  %49 = ptrtoint ptr %val.i102 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i102, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i102) #5
  %51 = and i32 %50, 7
  %mul17 = mul nuw nsw i32 %51, 10
  %52 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tm_hour, align 4
  %add19 = add i32 %53, %mul17
  store i32 %add19, ptr %tm_hour, align 4
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 4
  %call.i108 = call i32 @regmap_get_reg_stride(ptr noundef %55) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i107) #5
  %56 = ptrtoint ptr %val.i107 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %val.i107, align 4, !annotation !47
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv, align 4
  %mul.i109 = mul i32 %call.i108, 7
  %call2.i110 = call i32 @regmap_read(ptr noundef %58, i32 noundef %mul.i109, ptr noundef nonnull %val.i107) #5
  %59 = ptrtoint ptr %val.i107 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i107, align 4
  %conv.i111 = and i32 %60, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i107) #5
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %61 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv.i111, ptr %tm_mday, align 4
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 4
  %call.i113 = call i32 @regmap_get_reg_stride(ptr noundef %63) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i112) #5
  %64 = ptrtoint ptr %val.i112 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %val.i112, align 4, !annotation !47
  %65 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv, align 4
  %mul.i114 = shl i32 %call.i113, 3
  %call2.i115 = call i32 @regmap_read(ptr noundef %66, i32 noundef %mul.i114, ptr noundef nonnull %val.i112) #5
  %67 = ptrtoint ptr %val.i112 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val.i112, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i112) #5
  %69 = and i32 %68, 7
  %mul25 = mul nuw nsw i32 %69, 10
  %70 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tm_mday, align 4
  %add27 = add i32 %71, %mul25
  store i32 %add27, ptr %tm_mday, align 4
  br i1 %alarm, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %72 = call ptr @memset(ptr %tm_mon, i32 255, i32 20)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv, align 4
  %call.i118 = call i32 @regmap_get_reg_stride(ptr noundef %74) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i117) #5
  %75 = ptrtoint ptr %val.i117 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %val.i117, align 4, !annotation !47
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv, align 4
  %mul.i119 = mul i32 %call.i118, 6
  %call2.i120 = call i32 @regmap_read(ptr noundef %77, i32 noundef %mul.i119, ptr noundef nonnull %val.i117) #5
  %78 = ptrtoint ptr %val.i117 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i117, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i117) #5
  %80 = and i32 %79, 7
  %tm_wday31 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %81 = ptrtoint ptr %tm_wday31 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %tm_wday31, align 4
  %82 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %priv, align 4
  %call.i123 = call i32 @regmap_get_reg_stride(ptr noundef %83) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i122) #5
  %84 = ptrtoint ptr %val.i122 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %val.i122, align 4, !annotation !47
  %85 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv, align 4
  %mul.i124 = mul i32 %call.i123, 10
  %call2.i125 = call i32 @regmap_read(ptr noundef %86, i32 noundef %mul.i124, ptr noundef nonnull %val.i122) #5
  %87 = ptrtoint ptr %val.i122 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val.i122, align 4
  %conv.i126 = and i32 %88, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i122) #5
  %mul34 = mul nuw nsw i32 %conv.i126, 10
  %89 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv, align 4
  %call.i128 = call i32 @regmap_get_reg_stride(ptr noundef %90) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i127) #5
  %91 = ptrtoint ptr %val.i127 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %val.i127, align 4, !annotation !47
  %92 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv, align 4
  %mul.i129 = mul i32 %call.i128, 9
  %call2.i130 = call i32 @regmap_read(ptr noundef %93, i32 noundef %mul.i129, ptr noundef nonnull %val.i127) #5
  %94 = ptrtoint ptr %val.i127 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %val.i127, align 4
  %conv.i131 = and i32 %95, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i127) #5
  %add37 = add nsw i32 %mul34, -1
  %sub = add nsw i32 %add37, %conv.i131
  %tm_mon38 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %96 = ptrtoint ptr %tm_mon38 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %sub, ptr %tm_mon38, align 4
  %97 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %priv, align 4
  %call.i133 = call i32 @regmap_get_reg_stride(ptr noundef %98) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i132) #5
  %99 = ptrtoint ptr %val.i132 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %val.i132, align 4, !annotation !47
  %100 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %priv, align 4
  %mul.i134 = mul i32 %call.i133, 14
  %call2.i135 = call i32 @regmap_read(ptr noundef %101, i32 noundef %mul.i134, ptr noundef nonnull %val.i132) #5
  %102 = ptrtoint ptr %val.i132 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %val.i132, align 4
  %conv.i136 = and i32 %103, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i132) #5
  %mul41 = mul nuw nsw i32 %conv.i136, 1000
  %104 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %priv, align 4
  %call.i138 = call i32 @regmap_get_reg_stride(ptr noundef %105) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i137) #5
  %106 = ptrtoint ptr %val.i137 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %val.i137, align 4, !annotation !47
  %107 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %priv, align 4
  %mul.i139 = mul i32 %call.i138, 13
  %call2.i140 = call i32 @regmap_read(ptr noundef %108, i32 noundef %mul.i139, ptr noundef nonnull %val.i137) #5
  %109 = ptrtoint ptr %val.i137 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %val.i137, align 4
  %conv.i141 = and i32 %110, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i137) #5
  %mul44 = mul nuw nsw i32 %conv.i141, 100
  %111 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %priv, align 4
  %call.i143 = call i32 @regmap_get_reg_stride(ptr noundef %112) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i142) #5
  %113 = ptrtoint ptr %val.i142 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %val.i142, align 4, !annotation !47
  %114 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %priv, align 4
  %mul.i144 = mul i32 %call.i143, 12
  %call2.i145 = call i32 @regmap_read(ptr noundef %115, i32 noundef %mul.i144, ptr noundef nonnull %val.i142) #5
  %116 = ptrtoint ptr %val.i142 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %val.i142, align 4
  %conv.i146 = and i32 %117, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i142) #5
  %mul48 = mul nuw nsw i32 %conv.i146, 10
  %118 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %priv, align 4
  %call.i148 = call i32 @regmap_get_reg_stride(ptr noundef %119) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i147) #5
  %120 = ptrtoint ptr %val.i147 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %val.i147, align 4, !annotation !47
  %121 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %priv, align 4
  %mul.i149 = mul i32 %call.i148, 11
  %call2.i150 = call i32 @regmap_read(ptr noundef %122, i32 noundef %mul.i149, ptr noundef nonnull %val.i147) #5
  %123 = ptrtoint ptr %val.i147 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %val.i147, align 4
  %conv.i151 = and i32 %124, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i147) #5
  %add45 = add nsw i32 %mul41, -1900
  %add49 = add nsw i32 %add45, %mul44
  %add52 = add nsw i32 %add49, %mul48
  %sub53 = add nsw i32 %add52, %conv.i151
  %tm_year54 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %125 = ptrtoint ptr %tm_year54 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %sub53, ptr %tm_year54, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtc7301_write_time(ptr noundef readonly %priv, ptr nocapture noundef readonly %tm, i1 noundef zeroext %alarm) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm, align 4
  %rem = srem i32 %1, 10
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call.i = tail call i32 @regmap_get_reg_stride(ptr noundef %3) #5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %conv.i = and i32 %rem, 255
  %call2.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef %conv.i) #5
  %6 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm, align 4
  %div = sdiv i32 %7, 10
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %call.i67 = tail call i32 @regmap_get_reg_stride(ptr noundef %9) #5
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %conv.i68 = and i32 %div, 255
  %call2.i69 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %call.i67, i32 noundef %conv.i68) #5
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %12 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_min, align 4
  %rem3 = srem i32 %13, 10
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %call.i70 = tail call i32 @regmap_get_reg_stride(ptr noundef %15) #5
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %mul.i = shl i32 %call.i70, 1
  %conv.i71 = and i32 %rem3, 255
  %call2.i72 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef %mul.i, i32 noundef %conv.i71) #5
  %18 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_min, align 4
  %div6 = sdiv i32 %19, 10
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %call.i73 = tail call i32 @regmap_get_reg_stride(ptr noundef %21) #5
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %mul.i74 = mul i32 %call.i73, 3
  %conv.i75 = and i32 %div6, 255
  %call2.i76 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %mul.i74, i32 noundef %conv.i75) #5
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %24 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_hour, align 4
  %rem8 = srem i32 %25, 10
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %call.i77 = tail call i32 @regmap_get_reg_stride(ptr noundef %27) #5
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 4
  %mul.i78 = shl i32 %call.i77, 2
  %conv.i79 = and i32 %rem8, 255
  %call2.i80 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %mul.i78, i32 noundef %conv.i79) #5
  %30 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tm_hour, align 4
  %div11 = sdiv i32 %31, 10
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  %call.i81 = tail call i32 @regmap_get_reg_stride(ptr noundef %33) #5
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 4
  %mul.i82 = mul i32 %call.i81, 5
  %conv.i83 = and i32 %div11, 255
  %call2.i84 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %mul.i82, i32 noundef %conv.i83) #5
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %36 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tm_mday, align 4
  %rem13 = srem i32 %37, 10
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 4
  %call.i85 = tail call i32 @regmap_get_reg_stride(ptr noundef %39) #5
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 4
  %mul.i86 = mul i32 %call.i85, 7
  %conv.i87 = and i32 %rem13, 255
  %call2.i88 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef %mul.i86, i32 noundef %conv.i87) #5
  %42 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tm_mday, align 4
  %div16 = sdiv i32 %43, 10
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 4
  %call.i89 = tail call i32 @regmap_get_reg_stride(ptr noundef %45) #5
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 4
  %mul.i90 = shl i32 %call.i89, 3
  %conv.i91 = and i32 %div16, 255
  %call2.i92 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef %mul.i90, i32 noundef %conv.i91) #5
  br i1 %alarm, label %if.then.critedge, label %cond.false

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %48 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tm_wday, align 4
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 4
  %call.i93 = tail call i32 @regmap_get_reg_stride(ptr noundef %51) #5
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 4
  %mul.i94 = mul i32 %call.i93, 6
  %conv.i95 = and i32 %49, 255
  %call2.i96 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef %mul.i94, i32 noundef %conv.i95) #5
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %54 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tm_mon, align 4
  %add = add i32 %55, 1
  %rem21 = srem i32 %add, 10
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 4
  %call.i97 = tail call i32 @regmap_get_reg_stride(ptr noundef %57) #5
  %58 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv, align 4
  %mul.i98 = mul i32 %call.i97, 9
  %conv.i99 = and i32 %rem21, 255
  %call2.i100 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef %mul.i98, i32 noundef %conv.i99) #5
  %60 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tm_mon, align 4
  %add24 = add i32 %61, 1
  %div25 = sdiv i32 %add24, 10
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 4
  %call.i101 = tail call i32 @regmap_get_reg_stride(ptr noundef %63) #5
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 4
  %mul.i102 = mul i32 %call.i101, 10
  %conv.i103 = and i32 %div25, 255
  %call2.i104 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef %mul.i102, i32 noundef %conv.i103) #5
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %66 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tm_year, align 4
  %add27 = add i32 %67, 1900
  %add27.frozen = freeze i32 %add27
  %div30 = sdiv i32 %add27.frozen, 10
  %68 = mul i32 %div30, 10
  %rem28.decomposed = sub i32 %add27.frozen, %68
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 4
  %call.i105 = tail call i32 @regmap_get_reg_stride(ptr noundef %70) #5
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv, align 4
  %mul.i106 = mul i32 %call.i105, 11
  %conv.i107 = and i32 %rem28.decomposed, 255
  %call2.i108 = tail call i32 @regmap_write(ptr noundef %72, i32 noundef %mul.i106, i32 noundef %conv.i107) #5
  %rem31 = srem i32 %div30, 10
  %73 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv, align 4
  %call.i109 = tail call i32 @regmap_get_reg_stride(ptr noundef %74) #5
  %75 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv, align 4
  %mul.i110 = mul i32 %call.i109, 12
  %conv.i111 = and i32 %rem31, 255
  %call2.i112 = tail call i32 @regmap_write(ptr noundef %76, i32 noundef %mul.i110, i32 noundef %conv.i111) #5
  %div33 = sdiv i32 %add27, 100
  %rem34 = srem i32 %div33, 10
  %77 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv, align 4
  %call.i113 = tail call i32 @regmap_get_reg_stride(ptr noundef %78) #5
  %79 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv, align 4
  %mul.i114 = mul i32 %call.i113, 13
  %conv.i115 = and i32 %rem34, 255
  %call2.i116 = tail call i32 @regmap_write(ptr noundef %80, i32 noundef %mul.i114, i32 noundef %conv.i115) #5
  %div36 = sdiv i32 %add27, 1000
  %81 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %priv, align 4
  %call.i117 = tail call i32 @regmap_get_reg_stride(ptr noundef %82) #5
  %83 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %priv, align 4
  %mul.i118 = mul i32 %call.i117, 14
  %conv.i119 = and i32 %div36, 255
  %call2.i120 = tail call i32 @regmap_write(ptr noundef %84, i32 noundef %mul.i118, i32 noundef %conv.i119) #5
  br label %cleanup

if.then.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv, align 4
  %call.i121 = tail call i32 @regmap_get_reg_stride(ptr noundef %86) #5
  %87 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %priv, align 4
  %mul.i122 = mul i32 %call.i121, 6
  %call2.i123 = tail call i32 @regmap_write(ptr noundef %88, i32 noundef %mul.i122, i32 noundef 8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.critedge, %cond.false
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc7301_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.rtc7301_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc7301_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.rtc7301_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_rtc_r7301__227_444_rtc7301_rtc_driver_init6, !1, !"__initcall__kmod_rtc_r7301__227_444_rtc7301_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-r7301.c", i32 444, i32 1}
!2 = !{ptr @__exitcall_rtc7301_rtc_driver_exit, !1, !"__exitcall_rtc7301_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-r7301.c", i32 446, i32 1}
!5 = !{ptr @__UNIQUE_ID_file229, !6, !"__UNIQUE_ID_file229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-r7301.c", i32 447, i32 1}
!7 = !{ptr @__UNIQUE_ID_license230, !6, !"__UNIQUE_ID_license230", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description231, !9, !"__UNIQUE_ID_description231", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-r7301.c", i32 448, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-r7301.c", i32 449, i32 1}
!12 = !{ptr @rtc7301_rtc_probe._key, !13, !"_key", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-r7301.c", i32 369, i32 17}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rtc7301_rtc_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/rtc/rtc-r7301.c", i32 376, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-r7301.c", i32 383, i32 44}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-r7301.c", i32 394, i32 4}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rtc7301_rtc_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @rtc7301_rtc_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @rtc7301_regmap_config, !29, !"rtc7301_regmap_config", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-r7301.c", i32 58, i32 35}
!30 = !{ptr @rtc7301_rtc_ops, !31, !"rtc7301_rtc_ops", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-r7301.c", i32 311, i32 35}
!32 = !{ptr @rtc7301_rtc_driver, !33, !"rtc7301_rtc_driver", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-r7301.c", i32 436, i32 31}
!34 = !{ptr @rtc7301_dt_match, !35, !"rtc7301_dt_match", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-r7301.c", i32 429, i32 34}
!36 = !{ptr @rtc7301_pm_ops, !37, !"rtc7301_pm_ops", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-r7301.c", i32 427, i32 8}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
