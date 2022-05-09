; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-davinci.c_pt.bc'
source_filename = "../drivers/rtc/rtc-davinci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.davinci_rtc = type { ptr, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_davinci__227_508_davinci_rtc_driver_init6 = internal global ptr @davinci_rtc_driver_init, section ".initcall6.init", align 4
@davinci_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_davinci_rtc_driver_exit = internal global ptr @davinci_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [64 x i8] c"rtc_davinci.author=Miguel Aguilar <miguel.aguilar@ridgerun.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [62 x i8] c"rtc_davinci.description=Texas Instruments DaVinci PRTC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [41 x i8] c"rtc_davinci.file=drivers/rtc/rtc-davinci\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [24 x i8] c"rtc_davinci.license=GPL\00", section ".modinfo", align 1
@davinci_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr @davinci_rtc_ioctl, ptr @davinci_rtc_read_time, ptr @davinci_rtc_set_time, ptr @davinci_rtc_read_alarm, ptr @davinci_rtc_set_alarm, ptr null, ptr @davinci_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"davinci_rtc\00", [20 x i8] zeroinitializer }, align 32
@davinci_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 474, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to register davinci RTC interrupt\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"davinci_rtc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-davinci.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@davinci_rtc_probe._entry_ptr = internal global ptr @davinci_rtc_probe._entry, section ".printk_index", align 4
@davinci_rtc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"davinci_rtc_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc_davinci\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 28687, i64 28688]
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"davinci_rtc_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 501, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"davinci_rtc_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 427, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 472, i32 9 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 474, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"davinci_rtc_lock\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 104, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [29 x i8] c"../drivers/rtc/rtc-davinci.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 504, i32 11 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_davinci_rtc_driver_exit, ptr @__initcall__kmod_rtc_davinci__227_508_davinci_rtc_driver_init6, ptr @davinci_rtc_driver_exit, ptr @davinci_rtc_probe._entry, ptr @davinci_rtc_probe._entry_ptr, ptr @davinci_rtc_remove, ptr @davinci_rtc_driver, ptr @davinci_rtc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @davinci_rtc_lock, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_rtc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_rtc_remove(ptr noundef %pdev) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %base.i = getelementptr inbounds %struct.davinci_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !39
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @davinci_rtc_driver, ptr noundef nonnull @davinci_rtc_probe, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @davinci_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @davinci_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_rtc_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.davinci_rtc, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call3, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.davinci_rtc, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call16 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #5
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call16, ptr %call.i, align 4
  %cmp.i69 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call16, i32 0, i32 3
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @davinci_rtc_ops, ptr %ops, align 8
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 946684800, ptr %range_min, align 8
  %10 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 6608995199, ptr %range_max, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr.i71 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 0) #5, !srcloc !39
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i)
  %tobool.not7.i.i = icmp eq i32 %.mask6.i.i, 0
  br i1 %tobool.not7.i.i, label %if.end22.rtcif_wait.exit.i_crit_edge, label %if.end22.do.end.i.i_crit_edge

if.end22.do.end.i.i_crit_edge:                    ; preds = %if.end22
  br label %do.end.i.i

if.end22.rtcif_wait.exit.i_crit_edge:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %if.end22.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i = and i32 %21, 128
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.rtcif_wait.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

do.end.i.i.rtcif_wait.exit.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

rtcif_wait.exit.i:                                ; preds = %do.end.i.i.rtcif_wait.exit.i_crit_edge, %if.end22.rtcif_wait.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 201326848) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #5, !srcloc !39
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr.i5.i7.i = getelementptr i8, ptr %27, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i)
  %tobool.not7.i9.i = icmp eq i32 %.mask6.i8.i, 0
  br i1 %tobool.not7.i9.i, label %rtcif_wait.exit.i.rtcss_write.exit_crit_edge, label %rtcif_wait.exit.i.do.end.i13.i_crit_edge

rtcif_wait.exit.i.do.end.i13.i_crit_edge:         ; preds = %rtcif_wait.exit.i
  br label %do.end.i13.i

rtcif_wait.exit.i.rtcss_write.exit_crit_edge:     ; preds = %rtcif_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit

do.end.i13.i:                                     ; preds = %do.end.i13.i.do.end.i13.i_crit_edge, %rtcif_wait.exit.i.do.end.i13.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i = and i32 %31, 128
  %tobool.not.i12.i = icmp eq i32 %.mask.i11.i, 0
  br i1 %tobool.not.i12.i, label %do.end.i13.i.rtcss_write.exit_crit_edge, label %do.end.i13.i.do.end.i13.i_crit_edge

do.end.i13.i.do.end.i13.i_crit_edge:              ; preds = %do.end.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i

do.end.i13.i.rtcss_write.exit_crit_edge:          ; preds = %do.end.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit

rtcss_write.exit:                                 ; preds = %do.end.i13.i.rtcss_write.exit_crit_edge, %rtcif_wait.exit.i.rtcss_write.exit_crit_edge
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr.i5.i.i73 = getelementptr i8, ptr %33, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i73) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i74 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i74)
  %tobool.not7.i.i75 = icmp eq i32 %.mask6.i.i74, 0
  br i1 %tobool.not7.i.i75, label %rtcss_write.exit.rtcif_wait.exit.i85_crit_edge, label %rtcss_write.exit.do.end.i.i79_crit_edge

rtcss_write.exit.do.end.i.i79_crit_edge:          ; preds = %rtcss_write.exit
  br label %do.end.i.i79

rtcss_write.exit.rtcif_wait.exit.i85_crit_edge:   ; preds = %rtcss_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i85

do.end.i.i79:                                     ; preds = %do.end.i.i79.do.end.i.i79_crit_edge, %rtcss_write.exit.do.end.i.i79_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i76 = getelementptr i8, ptr %36, i32 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i76) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i77 = and i32 %37, 128
  %tobool.not.i.i78 = icmp eq i32 %.mask.i.i77, 0
  br i1 %tobool.not.i.i78, label %do.end.i.i79.rtcif_wait.exit.i85_crit_edge, label %do.end.i.i79.do.end.i.i79_crit_edge

do.end.i.i79.do.end.i.i79_crit_edge:              ; preds = %do.end.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i79

do.end.i.i79.rtcif_wait.exit.i85_crit_edge:       ; preds = %do.end.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i85

rtcif_wait.exit.i85:                              ; preds = %do.end.i.i79.rtcif_wait.exit.i85_crit_edge, %rtcss_write.exit.rtcif_wait.exit.i85_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80, i32 268435712) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr.i5.i81 = getelementptr i8, ptr %41, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i81, i32 0) #5, !srcloc !39
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr.i5.i7.i82 = getelementptr i8, ptr %43, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i82) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i83 = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i83)
  %tobool.not7.i9.i84 = icmp eq i32 %.mask6.i8.i83, 0
  br i1 %tobool.not7.i9.i84, label %rtcif_wait.exit.i85.rtcss_write.exit90_crit_edge, label %rtcif_wait.exit.i85.do.end.i13.i89_crit_edge

rtcif_wait.exit.i85.do.end.i13.i89_crit_edge:     ; preds = %rtcif_wait.exit.i85
  br label %do.end.i13.i89

rtcif_wait.exit.i85.rtcss_write.exit90_crit_edge: ; preds = %rtcif_wait.exit.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit90

do.end.i13.i89:                                   ; preds = %do.end.i13.i89.do.end.i13.i89_crit_edge, %rtcif_wait.exit.i85.do.end.i13.i89_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr.i.i10.i86 = getelementptr i8, ptr %46, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i86) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i87 = and i32 %47, 128
  %tobool.not.i12.i88 = icmp eq i32 %.mask.i11.i87, 0
  br i1 %tobool.not.i12.i88, label %do.end.i13.i89.rtcss_write.exit90_crit_edge, label %do.end.i13.i89.do.end.i13.i89_crit_edge

do.end.i13.i89.do.end.i13.i89_crit_edge:          ; preds = %do.end.i13.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i89

do.end.i13.i89.rtcss_write.exit90_crit_edge:      ; preds = %do.end.i13.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit90

rtcss_write.exit90:                               ; preds = %do.end.i13.i89.rtcss_write.exit90_crit_edge, %rtcif_wait.exit.i85.rtcss_write.exit90_crit_edge
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr.i5.i.i92 = getelementptr i8, ptr %49, i32 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i92) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i93 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i93)
  %tobool.not7.i.i94 = icmp eq i32 %.mask6.i.i93, 0
  br i1 %tobool.not7.i.i94, label %rtcss_write.exit90.rtcif_wait.exit.i104_crit_edge, label %rtcss_write.exit90.do.end.i.i98_crit_edge

rtcss_write.exit90.do.end.i.i98_crit_edge:        ; preds = %rtcss_write.exit90
  br label %do.end.i.i98

rtcss_write.exit90.rtcif_wait.exit.i104_crit_edge: ; preds = %rtcss_write.exit90
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i104

do.end.i.i98:                                     ; preds = %do.end.i.i98.do.end.i.i98_crit_edge, %rtcss_write.exit90.do.end.i.i98_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i95 = getelementptr i8, ptr %52, i32 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i95) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i96 = and i32 %53, 128
  %tobool.not.i.i97 = icmp eq i32 %.mask.i.i96, 0
  br i1 %tobool.not.i.i97, label %do.end.i.i98.rtcif_wait.exit.i104_crit_edge, label %do.end.i.i98.do.end.i.i98_crit_edge

do.end.i.i98.do.end.i.i98_crit_edge:              ; preds = %do.end.i.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i98

do.end.i.i98.rtcif_wait.exit.i104_crit_edge:      ; preds = %do.end.i.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i104

rtcif_wait.exit.i104:                             ; preds = %do.end.i.i98.rtcif_wait.exit.i104_crit_edge, %rtcss_write.exit90.rtcif_wait.exit.i104_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr.i.i99 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i99, i32 335544576) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr.i5.i100 = getelementptr i8, ptr %57, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i100, i32 0) #5, !srcloc !39
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %add.ptr.i5.i7.i101 = getelementptr i8, ptr %59, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i101) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i102 = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i102)
  %tobool.not7.i9.i103 = icmp eq i32 %.mask6.i8.i102, 0
  br i1 %tobool.not7.i9.i103, label %rtcif_wait.exit.i104.rtcss_write.exit109_crit_edge, label %rtcif_wait.exit.i104.do.end.i13.i108_crit_edge

rtcif_wait.exit.i104.do.end.i13.i108_crit_edge:   ; preds = %rtcif_wait.exit.i104
  br label %do.end.i13.i108

rtcif_wait.exit.i104.rtcss_write.exit109_crit_edge: ; preds = %rtcif_wait.exit.i104
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit109

do.end.i13.i108:                                  ; preds = %do.end.i13.i108.do.end.i13.i108_crit_edge, %rtcif_wait.exit.i104.do.end.i13.i108_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %add.ptr.i.i10.i105 = getelementptr i8, ptr %62, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i105) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i106 = and i32 %63, 128
  %tobool.not.i12.i107 = icmp eq i32 %.mask.i11.i106, 0
  br i1 %tobool.not.i12.i107, label %do.end.i13.i108.rtcss_write.exit109_crit_edge, label %do.end.i13.i108.do.end.i13.i108_crit_edge

do.end.i13.i108.do.end.i13.i108_crit_edge:        ; preds = %do.end.i13.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i108

do.end.i13.i108.rtcss_write.exit109_crit_edge:    ; preds = %do.end.i13.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit109

rtcss_write.exit109:                              ; preds = %do.end.i13.i108.rtcss_write.exit109_crit_edge, %rtcif_wait.exit.i104.rtcss_write.exit109_crit_edge
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 4
  %call.i110 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %65, ptr noundef nonnull @davinci_rtc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp28 = icmp slt i32 %call.i110, 0
  br i1 %cmp28, label %do.end, label %if.end30

do.end:                                           ; preds = %rtcss_write.exit109
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end30:                                         ; preds = %rtcss_write.exit109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %66 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base, align 4
  %add.ptr.i112 = getelementptr i8, ptr %67, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 33554432) #5, !srcloc !39
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr.i5.i.i114 = getelementptr i8, ptr %69, i32 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i114) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i115 = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i115)
  %tobool.not7.i.i116 = icmp eq i32 %.mask6.i.i115, 0
  br i1 %tobool.not7.i.i116, label %if.end30.rtcif_wait.exit.i126_crit_edge, label %if.end30.do.end.i.i120_crit_edge

if.end30.do.end.i.i120_crit_edge:                 ; preds = %if.end30
  br label %do.end.i.i120

if.end30.rtcif_wait.exit.i126_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i126

do.end.i.i120:                                    ; preds = %do.end.i.i120.do.end.i.i120_crit_edge, %if.end30.do.end.i.i120_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i117 = getelementptr i8, ptr %72, i32 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i117) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i118 = and i32 %73, 128
  %tobool.not.i.i119 = icmp eq i32 %.mask.i.i118, 0
  br i1 %tobool.not.i.i119, label %do.end.i.i120.rtcif_wait.exit.i126_crit_edge, label %do.end.i.i120.do.end.i.i120_crit_edge

do.end.i.i120.do.end.i.i120_crit_edge:            ; preds = %do.end.i.i120
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i120

do.end.i.i120.rtcif_wait.exit.i126_crit_edge:     ; preds = %do.end.i.i120
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i126

rtcif_wait.exit.i126:                             ; preds = %do.end.i.i120.rtcif_wait.exit.i126_crit_edge, %if.end30.rtcif_wait.exit.i126_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base, align 4
  %add.ptr.i.i121 = getelementptr i8, ptr %75, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i121, i32 201326848) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %add.ptr.i5.i122 = getelementptr i8, ptr %77, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i122, i32 117440512) #5, !srcloc !39
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base, align 4
  %add.ptr.i5.i7.i123 = getelementptr i8, ptr %79, i32 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i123) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i124 = and i32 %80, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i124)
  %tobool.not7.i9.i125 = icmp eq i32 %.mask6.i8.i124, 0
  br i1 %tobool.not7.i9.i125, label %rtcif_wait.exit.i126.rtcss_write.exit131_crit_edge, label %rtcif_wait.exit.i126.do.end.i13.i130_crit_edge

rtcif_wait.exit.i126.do.end.i13.i130_crit_edge:   ; preds = %rtcif_wait.exit.i126
  br label %do.end.i13.i130

rtcif_wait.exit.i126.rtcss_write.exit131_crit_edge: ; preds = %rtcif_wait.exit.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit131

do.end.i13.i130:                                  ; preds = %do.end.i13.i130.do.end.i13.i130_crit_edge, %rtcif_wait.exit.i126.do.end.i13.i130_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %81 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base, align 4
  %add.ptr.i.i10.i127 = getelementptr i8, ptr %82, i32 4
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i127) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i128 = and i32 %83, 128
  %tobool.not.i12.i129 = icmp eq i32 %.mask.i11.i128, 0
  br i1 %tobool.not.i12.i129, label %do.end.i13.i130.rtcss_write.exit131_crit_edge, label %do.end.i13.i130.do.end.i13.i130_crit_edge

do.end.i13.i130.do.end.i13.i130_crit_edge:        ; preds = %do.end.i13.i130
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i130

do.end.i13.i130.rtcss_write.exit131_crit_edge:    ; preds = %do.end.i13.i130
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit131

rtcss_write.exit131:                              ; preds = %do.end.i13.i130.rtcss_write.exit131_crit_edge, %rtcif_wait.exit.i126.rtcss_write.exit131_crit_edge
  %84 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base, align 4
  %add.ptr.i5.i.i133 = getelementptr i8, ptr %85, i32 4
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i133) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i134 = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i134)
  %tobool.not7.i.i135 = icmp eq i32 %.mask6.i.i134, 0
  br i1 %tobool.not7.i.i135, label %rtcss_write.exit131.rtcif_wait.exit.i145_crit_edge, label %rtcss_write.exit131.do.end.i.i139_crit_edge

rtcss_write.exit131.do.end.i.i139_crit_edge:      ; preds = %rtcss_write.exit131
  br label %do.end.i.i139

rtcss_write.exit131.rtcif_wait.exit.i145_crit_edge: ; preds = %rtcss_write.exit131
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i145

do.end.i.i139:                                    ; preds = %do.end.i.i139.do.end.i.i139_crit_edge, %rtcss_write.exit131.do.end.i.i139_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i136 = getelementptr i8, ptr %88, i32 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i136) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i137 = and i32 %89, 128
  %tobool.not.i.i138 = icmp eq i32 %.mask.i.i137, 0
  br i1 %tobool.not.i.i138, label %do.end.i.i139.rtcif_wait.exit.i145_crit_edge, label %do.end.i.i139.do.end.i.i139_crit_edge

do.end.i.i139.do.end.i.i139_crit_edge:            ; preds = %do.end.i.i139
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i139

do.end.i.i139.rtcif_wait.exit.i145_crit_edge:     ; preds = %do.end.i.i139
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i145

rtcif_wait.exit.i145:                             ; preds = %do.end.i.i139.rtcif_wait.exit.i145_crit_edge, %rtcss_write.exit131.rtcif_wait.exit.i145_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base, align 4
  %add.ptr.i.i140 = getelementptr i8, ptr %91, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i140, i32 335544576) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base, align 4
  %add.ptr.i5.i141 = getelementptr i8, ptr %93, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i141, i32 16777216) #5, !srcloc !39
  %94 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base, align 4
  %add.ptr.i5.i7.i142 = getelementptr i8, ptr %95, i32 4
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i142) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i143 = and i32 %96, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i143)
  %tobool.not7.i9.i144 = icmp eq i32 %.mask6.i8.i143, 0
  br i1 %tobool.not7.i9.i144, label %rtcif_wait.exit.i145.rtcss_write.exit150_crit_edge, label %rtcif_wait.exit.i145.do.end.i13.i149_crit_edge

rtcif_wait.exit.i145.do.end.i13.i149_crit_edge:   ; preds = %rtcif_wait.exit.i145
  br label %do.end.i13.i149

rtcif_wait.exit.i145.rtcss_write.exit150_crit_edge: ; preds = %rtcif_wait.exit.i145
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit150

do.end.i13.i149:                                  ; preds = %do.end.i13.i149.do.end.i13.i149_crit_edge, %rtcif_wait.exit.i145.do.end.i13.i149_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 4
  %add.ptr.i.i10.i146 = getelementptr i8, ptr %98, i32 4
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i146) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i147 = and i32 %99, 128
  %tobool.not.i12.i148 = icmp eq i32 %.mask.i11.i147, 0
  br i1 %tobool.not.i12.i148, label %do.end.i13.i149.rtcss_write.exit150_crit_edge, label %do.end.i13.i149.do.end.i13.i149_crit_edge

do.end.i13.i149.do.end.i13.i149_crit_edge:        ; preds = %do.end.i13.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i149

do.end.i13.i149.rtcss_write.exit150_crit_edge:    ; preds = %do.end.i13.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit150

rtcss_write.exit150:                              ; preds = %do.end.i13.i149.rtcss_write.exit150_crit_edge, %rtcif_wait.exit.i145.rtcss_write.exit150_crit_edge
  %call32 = tail call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext false) #5
  %100 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call.i, align 4
  %call34 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %101) #5
  br label %cleanup

cleanup:                                          ; preds = %rtcss_write.exit150, %do.end, %if.then19, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then11 ], [ %5, %if.then19 ], [ %call.i110, %do.end ], [ %call34, %rtcss_write.exit150 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_rtc_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %class_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.davinci_rtc, ptr %class_dev, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i)
  %tobool.not7.i.i = icmp eq i32 %.mask6.i.i, 0
  br i1 %tobool.not7.i.i, label %entry.rtcif_wait.exit.i_crit_edge, label %entry.do.end.i.i_crit_edge

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  br label %do.end.i.i

entry.rtcif_wait.exit.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i = and i32 %8, 128
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.rtcif_wait.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

do.end.i.i.rtcif_wait.exit.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

rtcif_wait.exit.i:                                ; preds = %do.end.i.i.rtcif_wait.exit.i_crit_edge, %entry.rtcif_wait.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 335544577) #5, !srcloc !39
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i6.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i)
  %tobool.not7.i8.i = icmp eq i32 %.mask6.i7.i, 0
  br i1 %tobool.not7.i8.i, label %rtcif_wait.exit.i.rtcss_read.exit_crit_edge, label %rtcif_wait.exit.i.do.end.i12.i_crit_edge

rtcif_wait.exit.i.do.end.i12.i_crit_edge:         ; preds = %rtcif_wait.exit.i
  br label %do.end.i12.i

rtcif_wait.exit.i.rtcss_read.exit_crit_edge:      ; preds = %rtcif_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit

do.end.i12.i:                                     ; preds = %do.end.i12.i.do.end.i12.i_crit_edge, %rtcif_wait.exit.i.do.end.i12.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i9.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i = and i32 %16, 128
  %tobool.not.i11.i = icmp eq i32 %.mask.i10.i, 0
  br i1 %tobool.not.i11.i, label %do.end.i12.i.rtcss_read.exit_crit_edge, label %do.end.i12.i.do.end.i12.i_crit_edge

do.end.i12.i.do.end.i12.i_crit_edge:              ; preds = %do.end.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i

do.end.i12.i.rtcss_read.exit_crit_edge:           ; preds = %do.end.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit

rtcss_read.exit:                                  ; preds = %do.end.i12.i.rtcss_read.exit_crit_edge, %rtcif_wait.exit.i.rtcss_read.exit_crit_edge
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i.i38 = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i38) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i39 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i39)
  %tobool.not7.i.i40 = icmp eq i32 %.mask6.i.i39, 0
  br i1 %tobool.not7.i.i40, label %rtcss_read.exit.rtcif_wait.exit.i49_crit_edge, label %rtcss_read.exit.do.end.i.i44_crit_edge

rtcss_read.exit.do.end.i.i44_crit_edge:           ; preds = %rtcss_read.exit
  br label %do.end.i.i44

rtcss_read.exit.rtcif_wait.exit.i49_crit_edge:    ; preds = %rtcss_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i49

do.end.i.i44:                                     ; preds = %do.end.i.i44.do.end.i.i44_crit_edge, %rtcss_read.exit.do.end.i.i44_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i41 = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i41) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i42 = and i32 %25, 128
  %tobool.not.i.i43 = icmp eq i32 %.mask.i.i42, 0
  br i1 %tobool.not.i.i43, label %do.end.i.i44.rtcif_wait.exit.i49_crit_edge, label %do.end.i.i44.do.end.i.i44_crit_edge

do.end.i.i44.do.end.i.i44_crit_edge:              ; preds = %do.end.i.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i44

do.end.i.i44.rtcif_wait.exit.i49_crit_edge:       ; preds = %do.end.i.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i49

rtcif_wait.exit.i49:                              ; preds = %do.end.i.i44.rtcif_wait.exit.i49_crit_edge, %rtcss_read.exit.rtcif_wait.exit.i49_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i45, i32 268435713) #5, !srcloc !39
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i6.i46 = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i46) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i47 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i47)
  %tobool.not7.i8.i48 = icmp eq i32 %.mask6.i7.i47, 0
  br i1 %tobool.not7.i8.i48, label %rtcif_wait.exit.i49.rtcss_read.exit56_crit_edge, label %rtcif_wait.exit.i49.do.end.i12.i53_crit_edge

rtcif_wait.exit.i49.do.end.i12.i53_crit_edge:     ; preds = %rtcif_wait.exit.i49
  br label %do.end.i12.i53

rtcif_wait.exit.i49.rtcss_read.exit56_crit_edge:  ; preds = %rtcif_wait.exit.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit56

do.end.i12.i53:                                   ; preds = %do.end.i12.i53.do.end.i12.i53_crit_edge, %rtcif_wait.exit.i49.do.end.i12.i53_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i9.i50 = getelementptr i8, ptr %32, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i50) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i51 = and i32 %33, 128
  %tobool.not.i11.i52 = icmp eq i32 %.mask.i10.i51, 0
  br i1 %tobool.not.i11.i52, label %do.end.i12.i53.rtcss_read.exit56_crit_edge, label %do.end.i12.i53.do.end.i12.i53_crit_edge

do.end.i12.i53.do.end.i12.i53_crit_edge:          ; preds = %do.end.i12.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i53

do.end.i12.i53.rtcss_read.exit56_crit_edge:       ; preds = %do.end.i12.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit56

rtcss_read.exit56:                                ; preds = %do.end.i12.i53.rtcss_read.exit56_crit_edge, %rtcif_wait.exit.i49.rtcss_read.exit56_crit_edge
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i15.i54 = getelementptr i8, ptr %35, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i54) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %37 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %rtcss_read.exit56.if.end24_crit_edge, label %if.then

rtcss_read.exit56.if.end24_crit_edge:             ; preds = %rtcss_read.exit56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then:                                          ; preds = %rtcss_read.exit56
  %38 = and i32 %19, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool8.not = icmp eq i32 %38, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i.i58 = getelementptr i8, ptr %40, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i58) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i59 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i59)
  %tobool.not7.i.i60 = icmp eq i32 %.mask6.i.i59, 0
  br i1 %tobool.not7.i.i60, label %if.then9.rtcif_wait.exit.i69_crit_edge, label %if.then9.do.end.i.i64_crit_edge

if.then9.do.end.i.i64_crit_edge:                  ; preds = %if.then9
  br label %do.end.i.i64

if.then9.rtcif_wait.exit.i69_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i69

do.end.i.i64:                                     ; preds = %do.end.i.i64.do.end.i.i64_crit_edge, %if.then9.do.end.i.i64_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i61 = getelementptr i8, ptr %43, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i61) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i62 = and i32 %44, 128
  %tobool.not.i.i63 = icmp eq i32 %.mask.i.i62, 0
  br i1 %tobool.not.i.i63, label %do.end.i.i64.rtcif_wait.exit.i69_crit_edge, label %do.end.i.i64.do.end.i.i64_crit_edge

do.end.i.i64.do.end.i.i64_crit_edge:              ; preds = %do.end.i.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i64

do.end.i.i64.rtcif_wait.exit.i69_crit_edge:       ; preds = %do.end.i.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i69

rtcif_wait.exit.i69:                              ; preds = %do.end.i.i64.rtcif_wait.exit.i69_crit_edge, %if.then9.rtcif_wait.exit.i69_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %46, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i65, i32 335544577) #5, !srcloc !39
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i6.i66 = getelementptr i8, ptr %48, i32 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i66) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i67 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i67)
  %tobool.not7.i8.i68 = icmp eq i32 %.mask6.i7.i67, 0
  br i1 %tobool.not7.i8.i68, label %rtcif_wait.exit.i69.rtcss_read.exit76_crit_edge, label %rtcif_wait.exit.i69.do.end.i12.i73_crit_edge

rtcif_wait.exit.i69.do.end.i12.i73_crit_edge:     ; preds = %rtcif_wait.exit.i69
  br label %do.end.i12.i73

rtcif_wait.exit.i69.rtcss_read.exit76_crit_edge:  ; preds = %rtcif_wait.exit.i69
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit76

do.end.i12.i73:                                   ; preds = %do.end.i12.i73.do.end.i12.i73_crit_edge, %rtcif_wait.exit.i69.do.end.i12.i73_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i9.i70 = getelementptr i8, ptr %51, i32 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i70) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i71 = and i32 %52, 128
  %tobool.not.i11.i72 = icmp eq i32 %.mask.i10.i71, 0
  br i1 %tobool.not.i11.i72, label %do.end.i12.i73.rtcss_read.exit76_crit_edge, label %do.end.i12.i73.do.end.i12.i73_crit_edge

do.end.i12.i73.do.end.i12.i73_crit_edge:          ; preds = %do.end.i12.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i73

do.end.i12.i73.rtcss_read.exit76_crit_edge:       ; preds = %do.end.i12.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit76

rtcss_read.exit76:                                ; preds = %do.end.i12.i73.rtcss_read.exit76_crit_edge, %rtcif_wait.exit.i69.rtcss_read.exit76_crit_edge
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr.i15.i74 = getelementptr i8, ptr %54, i32 8
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i74) #5, !srcloc !40
  %56 = and i32 %55, -83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %57 = or i32 %56, 67108864
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i.i78 = getelementptr i8, ptr %59, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i78) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i79 = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i79)
  %tobool.not7.i.i80 = icmp eq i32 %.mask6.i.i79, 0
  br i1 %tobool.not7.i.i80, label %rtcss_read.exit76.rtcif_wait.exit.i86_crit_edge, label %rtcss_read.exit76.do.end.i.i84_crit_edge

rtcss_read.exit76.do.end.i.i84_crit_edge:         ; preds = %rtcss_read.exit76
  br label %do.end.i.i84

rtcss_read.exit76.rtcif_wait.exit.i86_crit_edge:  ; preds = %rtcss_read.exit76
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i86

do.end.i.i84:                                     ; preds = %do.end.i.i84.do.end.i.i84_crit_edge, %rtcss_read.exit76.do.end.i.i84_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i81 = getelementptr i8, ptr %62, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i81) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i82 = and i32 %63, 128
  %tobool.not.i.i83 = icmp eq i32 %.mask.i.i82, 0
  br i1 %tobool.not.i.i83, label %do.end.i.i84.rtcif_wait.exit.i86_crit_edge, label %do.end.i.i84.do.end.i.i84_crit_edge

do.end.i.i84.do.end.i.i84_crit_edge:              ; preds = %do.end.i.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i84

do.end.i.i84.rtcif_wait.exit.i86_crit_edge:       ; preds = %do.end.i.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i86

rtcif_wait.exit.i86:                              ; preds = %do.end.i.i84.rtcif_wait.exit.i86_crit_edge, %rtcss_read.exit76.rtcif_wait.exit.i86_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i85 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i85, i32 335544576) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %67, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %57) #5, !srcloc !39
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i7.i = getelementptr i8, ptr %69, i32 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i)
  %tobool.not7.i9.i = icmp eq i32 %.mask6.i8.i, 0
  br i1 %tobool.not7.i9.i, label %rtcif_wait.exit.i86.if.end23_crit_edge, label %rtcif_wait.exit.i86.do.end.i13.i_crit_edge

rtcif_wait.exit.i86.do.end.i13.i_crit_edge:       ; preds = %rtcif_wait.exit.i86
  br label %do.end.i13.i

rtcif_wait.exit.i86.if.end23_crit_edge:           ; preds = %rtcif_wait.exit.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end.i13.i:                                     ; preds = %do.end.i13.i.do.end.i13.i_crit_edge, %rtcif_wait.exit.i86.do.end.i13.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %72, i32 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i = and i32 %73, 128
  %tobool.not.i12.i = icmp eq i32 %.mask.i11.i, 0
  br i1 %tobool.not.i12.i, label %do.end.i13.i.if.end23_crit_edge, label %do.end.i13.i.do.end.i13.i_crit_edge

do.end.i13.i.do.end.i13.i_crit_edge:              ; preds = %do.end.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i

do.end.i13.i.if.end23_crit_edge:                  ; preds = %do.end.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.else:                                          ; preds = %if.then
  %74 = and i32 %36, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool15.not = icmp eq i32 %74, 0
  br i1 %tobool15.not, label %if.else.if.end23_crit_edge, label %if.then16

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then16:                                        ; preds = %if.else
  %75 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i.i88 = getelementptr i8, ptr %76, i32 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i88) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i89 = and i32 %77, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i89)
  %tobool.not7.i.i90 = icmp eq i32 %.mask6.i.i89, 0
  br i1 %tobool.not7.i.i90, label %if.then16.rtcif_wait.exit.i99_crit_edge, label %if.then16.do.end.i.i94_crit_edge

if.then16.do.end.i.i94_crit_edge:                 ; preds = %if.then16
  br label %do.end.i.i94

if.then16.rtcif_wait.exit.i99_crit_edge:          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i99

do.end.i.i94:                                     ; preds = %do.end.i.i94.do.end.i.i94_crit_edge, %if.then16.do.end.i.i94_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i91 = getelementptr i8, ptr %79, i32 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i91) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i92 = and i32 %80, 128
  %tobool.not.i.i93 = icmp eq i32 %.mask.i.i92, 0
  br i1 %tobool.not.i.i93, label %do.end.i.i94.rtcif_wait.exit.i99_crit_edge, label %do.end.i.i94.do.end.i.i94_crit_edge

do.end.i.i94.do.end.i.i94_crit_edge:              ; preds = %do.end.i.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i94

do.end.i.i94.rtcif_wait.exit.i99_crit_edge:       ; preds = %do.end.i.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i99

rtcif_wait.exit.i99:                              ; preds = %do.end.i.i94.rtcif_wait.exit.i99_crit_edge, %if.then16.rtcif_wait.exit.i99_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %82, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i95, i32 268435713) #5, !srcloc !39
  %83 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i6.i96 = getelementptr i8, ptr %84, i32 4
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i96) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i97 = and i32 %85, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i97)
  %tobool.not7.i8.i98 = icmp eq i32 %.mask6.i7.i97, 0
  br i1 %tobool.not7.i8.i98, label %rtcif_wait.exit.i99.rtcss_read.exit106_crit_edge, label %rtcif_wait.exit.i99.do.end.i12.i103_crit_edge

rtcif_wait.exit.i99.do.end.i12.i103_crit_edge:    ; preds = %rtcif_wait.exit.i99
  br label %do.end.i12.i103

rtcif_wait.exit.i99.rtcss_read.exit106_crit_edge: ; preds = %rtcif_wait.exit.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit106

do.end.i12.i103:                                  ; preds = %do.end.i12.i103.do.end.i12.i103_crit_edge, %rtcif_wait.exit.i99.do.end.i12.i103_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i9.i100 = getelementptr i8, ptr %87, i32 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i100) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i101 = and i32 %88, 128
  %tobool.not.i11.i102 = icmp eq i32 %.mask.i10.i101, 0
  br i1 %tobool.not.i11.i102, label %do.end.i12.i103.rtcss_read.exit106_crit_edge, label %do.end.i12.i103.do.end.i12.i103_crit_edge

do.end.i12.i103.do.end.i12.i103_crit_edge:        ; preds = %do.end.i12.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i103

do.end.i12.i103.rtcss_read.exit106_crit_edge:     ; preds = %do.end.i12.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit106

rtcss_read.exit106:                               ; preds = %do.end.i12.i103.rtcss_read.exit106_crit_edge, %rtcif_wait.exit.i99.rtcss_read.exit106_crit_edge
  %89 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i, align 4
  %add.ptr.i15.i104 = getelementptr i8, ptr %90, i32 8
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i104) #5, !srcloc !40
  %92 = and i32 %91, -50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %93 = or i32 %92, 33554432
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i.i108 = getelementptr i8, ptr %95, i32 4
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i108) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i109 = and i32 %96, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i109)
  %tobool.not7.i.i110 = icmp eq i32 %.mask6.i.i109, 0
  br i1 %tobool.not7.i.i110, label %rtcss_read.exit106.rtcif_wait.exit.i120_crit_edge, label %rtcss_read.exit106.do.end.i.i114_crit_edge

rtcss_read.exit106.do.end.i.i114_crit_edge:       ; preds = %rtcss_read.exit106
  br label %do.end.i.i114

rtcss_read.exit106.rtcif_wait.exit.i120_crit_edge: ; preds = %rtcss_read.exit106
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i120

do.end.i.i114:                                    ; preds = %do.end.i.i114.do.end.i.i114_crit_edge, %rtcss_read.exit106.do.end.i.i114_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %97 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i111 = getelementptr i8, ptr %98, i32 4
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i111) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i112 = and i32 %99, 128
  %tobool.not.i.i113 = icmp eq i32 %.mask.i.i112, 0
  br i1 %tobool.not.i.i113, label %do.end.i.i114.rtcif_wait.exit.i120_crit_edge, label %do.end.i.i114.do.end.i.i114_crit_edge

do.end.i.i114.do.end.i.i114_crit_edge:            ; preds = %do.end.i.i114
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i114

do.end.i.i114.rtcif_wait.exit.i120_crit_edge:     ; preds = %do.end.i.i114
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i120

rtcif_wait.exit.i120:                             ; preds = %do.end.i.i114.rtcif_wait.exit.i120_crit_edge, %rtcss_read.exit106.rtcif_wait.exit.i120_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %100 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i115 = getelementptr i8, ptr %101, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i115, i32 268435712) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %102 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i116 = getelementptr i8, ptr %103, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i116, i32 %93) #5, !srcloc !39
  %104 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i7.i117 = getelementptr i8, ptr %105, i32 4
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i117) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i118 = and i32 %106, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i118)
  %tobool.not7.i9.i119 = icmp eq i32 %.mask6.i8.i118, 0
  br i1 %tobool.not7.i9.i119, label %rtcif_wait.exit.i120.if.end23_crit_edge, label %rtcif_wait.exit.i120.do.end.i13.i124_crit_edge

rtcif_wait.exit.i120.do.end.i13.i124_crit_edge:   ; preds = %rtcif_wait.exit.i120
  br label %do.end.i13.i124

rtcif_wait.exit.i120.if.end23_crit_edge:          ; preds = %rtcif_wait.exit.i120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end.i13.i124:                                  ; preds = %do.end.i13.i124.do.end.i13.i124_crit_edge, %rtcif_wait.exit.i120.do.end.i13.i124_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %107 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i10.i121 = getelementptr i8, ptr %108, i32 4
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i121) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i122 = and i32 %109, 128
  %tobool.not.i12.i123 = icmp eq i32 %.mask.i11.i122, 0
  br i1 %tobool.not.i12.i123, label %do.end.i13.i124.if.end23_crit_edge, label %do.end.i13.i124.do.end.i13.i124_crit_edge

do.end.i13.i124.do.end.i13.i124_crit_edge:        ; preds = %do.end.i13.i124
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i124

do.end.i13.i124.if.end23_crit_edge:               ; preds = %do.end.i13.i124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.end23:                                         ; preds = %do.end.i13.i124.if.end23_crit_edge, %rtcif_wait.exit.i120.if.end23_crit_edge, %if.else.if.end23_crit_edge, %do.end.i13.i.if.end23_crit_edge, %rtcif_wait.exit.i86.if.end23_crit_edge
  %events.0 = phi i32 [ 0, %if.else.if.end23_crit_edge ], [ 160, %rtcif_wait.exit.i86.if.end23_crit_edge ], [ 192, %rtcif_wait.exit.i120.if.end23_crit_edge ], [ 192, %do.end.i13.i124.if.end23_crit_edge ], [ 160, %do.end.i13.i.if.end23_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %110 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %111, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 33554432) #5, !srcloc !39
  %112 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %class_dev, align 4
  tail call void @rtc_update_irq(ptr noundef %113, i32 noundef 1, i32 noundef %events.0) #5
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %rtcss_read.exit56.if.end24_crit_edge
  %ret.0 = phi i32 [ 1, %if.end23 ], [ 0, %rtcss_read.exit56.if.end24_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_rtc_ioctl(ptr nocapture noundef readonly %dev, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @davinci_rtc_lock) #5
  %base.i.i.i = getelementptr inbounds %struct.davinci_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i)
  %tobool.not7.i.i = icmp eq i32 %.mask6.i.i, 0
  br i1 %tobool.not7.i.i, label %entry.rtcif_wait.exit.i_crit_edge, label %entry.do.end.i.i_crit_edge

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  br label %do.end.i.i

entry.rtcif_wait.exit.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %5 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i = and i32 %7, 128
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.rtcif_wait.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

do.end.i.i.rtcif_wait.exit.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

rtcif_wait.exit.i:                                ; preds = %do.end.i.i.rtcif_wait.exit.i_crit_edge, %entry.rtcif_wait.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 268435713) #5, !srcloc !39
  %10 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i6.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i)
  %tobool.not7.i8.i = icmp eq i32 %.mask6.i7.i, 0
  br i1 %tobool.not7.i8.i, label %rtcif_wait.exit.i.rtcss_read.exit_crit_edge, label %rtcif_wait.exit.i.do.end.i12.i_crit_edge

rtcif_wait.exit.i.do.end.i12.i_crit_edge:         ; preds = %rtcif_wait.exit.i
  br label %do.end.i12.i

rtcif_wait.exit.i.rtcss_read.exit_crit_edge:      ; preds = %rtcif_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit

do.end.i12.i:                                     ; preds = %do.end.i12.i.do.end.i12.i_crit_edge, %rtcif_wait.exit.i.do.end.i12.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %13 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i9.i = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i = and i32 %15, 128
  %tobool.not.i11.i = icmp eq i32 %.mask.i10.i, 0
  br i1 %tobool.not.i11.i, label %do.end.i12.i.rtcss_read.exit_crit_edge, label %do.end.i12.i.do.end.i12.i_crit_edge

do.end.i12.i.do.end.i12.i_crit_edge:              ; preds = %do.end.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i

do.end.i12.i.rtcss_read.exit_crit_edge:           ; preds = %do.end.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit

rtcss_read.exit:                                  ; preds = %do.end.i12.i.rtcss_read.exit_crit_edge, %rtcif_wait.exit.i.rtcss_read.exit_crit_edge
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #5, !srcloc !40
  %19 = lshr i32 %18, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %20 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %rtcss_read.exit.sw.epilog_crit_edge [
    i32 28687, label %sw.bb
    i32 28688, label %sw.bb9
  ]

rtcss_read.exit.sw.epilog_crit_edge:              ; preds = %rtcss_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %rtcss_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %21 = or i32 %19, 80
  br label %sw.epilog

sw.bb9:                                           ; preds = %rtcss_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %22 = and i32 %19, 191
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb, %rtcss_read.exit.sw.epilog_crit_edge
  %rtc_ctrl.0 = phi i32 [ %22, %sw.bb9 ], [ %21, %sw.bb ], [ %19, %rtcss_read.exit.sw.epilog_crit_edge ]
  %ret.0 = phi i32 [ 0, %sw.bb9 ], [ 0, %sw.bb ], [ -515, %rtcss_read.exit.sw.epilog_crit_edge ]
  %23 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i.i17 = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i17) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i18 = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i18)
  %tobool.not7.i.i19 = icmp eq i32 %.mask6.i.i18, 0
  br i1 %tobool.not7.i.i19, label %sw.epilog.rtcif_wait.exit.i25_crit_edge, label %sw.epilog.do.end.i.i23_crit_edge

sw.epilog.do.end.i.i23_crit_edge:                 ; preds = %sw.epilog
  br label %do.end.i.i23

sw.epilog.rtcif_wait.exit.i25_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i25

do.end.i.i23:                                     ; preds = %do.end.i.i23.do.end.i.i23_crit_edge, %sw.epilog.do.end.i.i23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %26 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i20 = getelementptr i8, ptr %27, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i20) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i21 = and i32 %28, 128
  %tobool.not.i.i22 = icmp eq i32 %.mask.i.i21, 0
  br i1 %tobool.not.i.i22, label %do.end.i.i23.rtcif_wait.exit.i25_crit_edge, label %do.end.i.i23.do.end.i.i23_crit_edge

do.end.i.i23.do.end.i.i23_crit_edge:              ; preds = %do.end.i.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i23

do.end.i.i23.rtcif_wait.exit.i25_crit_edge:       ; preds = %do.end.i.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i25

rtcif_wait.exit.i25:                              ; preds = %do.end.i.i23.rtcif_wait.exit.i25_crit_edge, %sw.epilog.rtcif_wait.exit.i25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24, i32 268435712) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %conv12 = shl i32 %rtc_ctrl.0, 24
  %31 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %conv12) #5, !srcloc !39
  %33 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i7.i = getelementptr i8, ptr %34, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i)
  %tobool.not7.i9.i = icmp eq i32 %.mask6.i8.i, 0
  br i1 %tobool.not7.i9.i, label %rtcif_wait.exit.i25.rtcss_write.exit_crit_edge, label %rtcif_wait.exit.i25.do.end.i13.i_crit_edge

rtcif_wait.exit.i25.do.end.i13.i_crit_edge:       ; preds = %rtcif_wait.exit.i25
  br label %do.end.i13.i

rtcif_wait.exit.i25.rtcss_write.exit_crit_edge:   ; preds = %rtcif_wait.exit.i25
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit

do.end.i13.i:                                     ; preds = %do.end.i13.i.do.end.i13.i_crit_edge, %rtcif_wait.exit.i25.do.end.i13.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %36 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i = and i32 %38, 128
  %tobool.not.i12.i = icmp eq i32 %.mask.i11.i, 0
  br i1 %tobool.not.i12.i, label %do.end.i13.i.rtcss_write.exit_crit_edge, label %do.end.i13.i.do.end.i13.i_crit_edge

do.end.i13.i.do.end.i13.i_crit_edge:              ; preds = %do.end.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i

do.end.i13.i.rtcss_write.exit_crit_edge:          ; preds = %do.end.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit

rtcss_write.exit:                                 ; preds = %do.end.i13.i.rtcss_write.exit_crit_edge, %rtcif_wait.exit.i25.rtcss_write.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @davinci_rtc_lock, i32 noundef %call3) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @davinci_rtc_lock) #5
  %base.i.i.i.i = getelementptr inbounds %struct.davinci_rtc, ptr %1, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %entry
  %2 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i)
  %tobool.not7.i.i.i = icmp eq i32 %.mask6.i.i.i, 0
  br i1 %tobool.not7.i.i.i, label %while.cond.i.rtcif_wait.exit.i.i_crit_edge, label %while.cond.i.do.end.i.i.i_crit_edge

while.cond.i.do.end.i.i.i_crit_edge:              ; preds = %while.cond.i
  br label %do.end.i.i.i

while.cond.i.rtcif_wait.exit.i.i_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %while.cond.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %5 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i = and i32 %7, 128
  %tobool.not.i.i.i = icmp eq i32 %.mask.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.rtcif_wait.exit.i.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i

do.end.i.i.i.rtcif_wait.exit.i.i_crit_edge:       ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i

rtcif_wait.exit.i.i:                              ; preds = %do.end.i.i.i.rtcif_wait.exit.i.i_crit_edge, %while.cond.i.rtcif_wait.exit.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 335544577) #5, !srcloc !39
  %10 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i)
  %tobool.not7.i8.i.i = icmp eq i32 %.mask6.i7.i.i, 0
  br i1 %tobool.not7.i8.i.i, label %rtcif_wait.exit.i.i.rtcss_read.exit.i_crit_edge, label %rtcif_wait.exit.i.i.do.end.i12.i.i_crit_edge

rtcif_wait.exit.i.i.do.end.i12.i.i_crit_edge:     ; preds = %rtcif_wait.exit.i.i
  br label %do.end.i12.i.i

rtcif_wait.exit.i.i.rtcss_read.exit.i_crit_edge:  ; preds = %rtcif_wait.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i

do.end.i12.i.i:                                   ; preds = %do.end.i12.i.i.do.end.i12.i.i_crit_edge, %rtcif_wait.exit.i.i.do.end.i12.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %13 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i = and i32 %15, 128
  %tobool.not.i11.i.i = icmp eq i32 %.mask.i10.i.i, 0
  br i1 %tobool.not.i11.i.i, label %do.end.i12.i.i.rtcss_read.exit.i_crit_edge, label %do.end.i12.i.i.do.end.i12.i.i_crit_edge

do.end.i12.i.i.do.end.i12.i.i_crit_edge:          ; preds = %do.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i

do.end.i12.i.i.rtcss_read.exit.i_crit_edge:       ; preds = %do.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i

rtcss_read.exit.i:                                ; preds = %do.end.i12.i.i.rtcss_read.exit.i_crit_edge, %rtcif_wait.exit.i.i.rtcss_read.exit.i_crit_edge
  %16 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i = icmp sgt i32 %18, -1
  br i1 %tobool.not.i, label %davinci_rtcss_calendar_wait.exit, label %do.end.i

do.end.i:                                         ; preds = %rtcss_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i

davinci_rtcss_calendar_wait.exit:                 ; preds = %rtcss_read.exit.i
  %19 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i)
  %tobool.not7.i.i = icmp eq i32 %.mask6.i.i, 0
  br i1 %tobool.not7.i.i, label %davinci_rtcss_calendar_wait.exit.rtcif_wait.exit.i_crit_edge, label %davinci_rtcss_calendar_wait.exit.do.end.i.i_crit_edge

davinci_rtcss_calendar_wait.exit.do.end.i.i_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit
  br label %do.end.i.i

davinci_rtcss_calendar_wait.exit.rtcif_wait.exit.i_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %davinci_rtcss_calendar_wait.exit.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %22 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i38 = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i38) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i = and i32 %24, 128
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.rtcif_wait.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

do.end.i.i.rtcif_wait.exit.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

rtcif_wait.exit.i:                                ; preds = %do.end.i.i.rtcif_wait.exit.i_crit_edge, %davinci_rtcss_calendar_wait.exit.rtcif_wait.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 352321793) #5, !srcloc !39
  %27 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i)
  %tobool.not7.i8.i = icmp eq i32 %.mask6.i7.i, 0
  br i1 %tobool.not7.i8.i, label %rtcif_wait.exit.i.rtcss_read.exit_crit_edge, label %rtcif_wait.exit.i.do.end.i12.i_crit_edge

rtcif_wait.exit.i.do.end.i12.i_crit_edge:         ; preds = %rtcif_wait.exit.i
  br label %do.end.i12.i

rtcif_wait.exit.i.rtcss_read.exit_crit_edge:      ; preds = %rtcif_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit

do.end.i12.i:                                     ; preds = %do.end.i12.i.do.end.i12.i_crit_edge, %rtcif_wait.exit.i.do.end.i12.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %30 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i = and i32 %32, 128
  %tobool.not.i11.i = icmp eq i32 %.mask.i10.i, 0
  br i1 %tobool.not.i11.i, label %do.end.i12.i.rtcss_read.exit_crit_edge, label %do.end.i12.i.do.end.i12.i_crit_edge

do.end.i12.i.do.end.i12.i_crit_edge:              ; preds = %do.end.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i

do.end.i12.i.rtcss_read.exit_crit_edge:           ; preds = %do.end.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit

rtcss_read.exit:                                  ; preds = %do.end.i12.i.rtcss_read.exit_crit_edge, %rtcif_wait.exit.i.rtcss_read.exit_crit_edge
  %33 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %34, i32 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #5, !srcloc !40
  %36 = lshr i32 %35, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %conv1.i = trunc i32 %36 to i8
  %call7 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv1.i) #9
  %37 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call7, ptr %tm, align 4
  br label %while.cond.i43

while.cond.i43:                                   ; preds = %do.end.i60, %rtcss_read.exit
  %38 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i40 = getelementptr i8, ptr %39, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i40) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i41 = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i41)
  %tobool.not7.i.i.i42 = icmp eq i32 %.mask6.i.i.i41, 0
  br i1 %tobool.not7.i.i.i42, label %while.cond.i43.rtcif_wait.exit.i.i52_crit_edge, label %while.cond.i43.do.end.i.i.i47_crit_edge

while.cond.i43.do.end.i.i.i47_crit_edge:          ; preds = %while.cond.i43
  br label %do.end.i.i.i47

while.cond.i43.rtcif_wait.exit.i.i52_crit_edge:   ; preds = %while.cond.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i52

do.end.i.i.i47:                                   ; preds = %do.end.i.i.i47.do.end.i.i.i47_crit_edge, %while.cond.i43.do.end.i.i.i47_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %41 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i44 = getelementptr i8, ptr %42, i32 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i44) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i45 = and i32 %43, 128
  %tobool.not.i.i.i46 = icmp eq i32 %.mask.i.i.i45, 0
  br i1 %tobool.not.i.i.i46, label %do.end.i.i.i47.rtcif_wait.exit.i.i52_crit_edge, label %do.end.i.i.i47.do.end.i.i.i47_crit_edge

do.end.i.i.i47.do.end.i.i.i47_crit_edge:          ; preds = %do.end.i.i.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i47

do.end.i.i.i47.rtcif_wait.exit.i.i52_crit_edge:   ; preds = %do.end.i.i.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i52

rtcif_wait.exit.i.i52:                            ; preds = %do.end.i.i.i47.rtcif_wait.exit.i.i52_crit_edge, %while.cond.i43.rtcif_wait.exit.i.i52_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i48 = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i48, i32 335544577) #5, !srcloc !39
  %46 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i49 = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i49) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i50 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i50)
  %tobool.not7.i8.i.i51 = icmp eq i32 %.mask6.i7.i.i50, 0
  br i1 %tobool.not7.i8.i.i51, label %rtcif_wait.exit.i.i52.rtcss_read.exit.i59_crit_edge, label %rtcif_wait.exit.i.i52.do.end.i12.i.i56_crit_edge

rtcif_wait.exit.i.i52.do.end.i12.i.i56_crit_edge: ; preds = %rtcif_wait.exit.i.i52
  br label %do.end.i12.i.i56

rtcif_wait.exit.i.i52.rtcss_read.exit.i59_crit_edge: ; preds = %rtcif_wait.exit.i.i52
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i59

do.end.i12.i.i56:                                 ; preds = %do.end.i12.i.i56.do.end.i12.i.i56_crit_edge, %rtcif_wait.exit.i.i52.do.end.i12.i.i56_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %49 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i53 = getelementptr i8, ptr %50, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i53) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i54 = and i32 %51, 128
  %tobool.not.i11.i.i55 = icmp eq i32 %.mask.i10.i.i54, 0
  br i1 %tobool.not.i11.i.i55, label %do.end.i12.i.i56.rtcss_read.exit.i59_crit_edge, label %do.end.i12.i.i56.do.end.i12.i.i56_crit_edge

do.end.i12.i.i56.do.end.i12.i.i56_crit_edge:      ; preds = %do.end.i12.i.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i56

do.end.i12.i.i56.rtcss_read.exit.i59_crit_edge:   ; preds = %do.end.i12.i.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i59

rtcss_read.exit.i59:                              ; preds = %do.end.i12.i.i56.rtcss_read.exit.i59_crit_edge, %rtcif_wait.exit.i.i52.rtcss_read.exit.i59_crit_edge
  %52 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i57 = getelementptr i8, ptr %53, i32 8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i57) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i58 = icmp sgt i32 %54, -1
  br i1 %tobool.not.i58, label %davinci_rtcss_calendar_wait.exit61, label %do.end.i60

do.end.i60:                                       ; preds = %rtcss_read.exit.i59
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i43

davinci_rtcss_calendar_wait.exit61:               ; preds = %rtcss_read.exit.i59
  %55 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i63 = getelementptr i8, ptr %56, i32 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i63) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i64 = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i64)
  %tobool.not7.i.i65 = icmp eq i32 %.mask6.i.i64, 0
  br i1 %tobool.not7.i.i65, label %davinci_rtcss_calendar_wait.exit61.rtcif_wait.exit.i74_crit_edge, label %davinci_rtcss_calendar_wait.exit61.do.end.i.i69_crit_edge

davinci_rtcss_calendar_wait.exit61.do.end.i.i69_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit61
  br label %do.end.i.i69

davinci_rtcss_calendar_wait.exit61.rtcif_wait.exit.i74_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit61
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i74

do.end.i.i69:                                     ; preds = %do.end.i.i69.do.end.i.i69_crit_edge, %davinci_rtcss_calendar_wait.exit61.do.end.i.i69_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %58 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i66 = getelementptr i8, ptr %59, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i66) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i67 = and i32 %60, 128
  %tobool.not.i.i68 = icmp eq i32 %.mask.i.i67, 0
  br i1 %tobool.not.i.i68, label %do.end.i.i69.rtcif_wait.exit.i74_crit_edge, label %do.end.i.i69.do.end.i.i69_crit_edge

do.end.i.i69.do.end.i.i69_crit_edge:              ; preds = %do.end.i.i69
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i69

do.end.i.i69.rtcif_wait.exit.i74_crit_edge:       ; preds = %do.end.i.i69
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i74

rtcif_wait.exit.i74:                              ; preds = %do.end.i.i69.rtcif_wait.exit.i74_crit_edge, %davinci_rtcss_calendar_wait.exit61.rtcif_wait.exit.i74_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %61 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i70 = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70, i32 369099009) #5, !srcloc !39
  %63 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i71 = getelementptr i8, ptr %64, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i71) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i72 = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i72)
  %tobool.not7.i8.i73 = icmp eq i32 %.mask6.i7.i72, 0
  br i1 %tobool.not7.i8.i73, label %rtcif_wait.exit.i74.rtcss_read.exit81_crit_edge, label %rtcif_wait.exit.i74.do.end.i12.i78_crit_edge

rtcif_wait.exit.i74.do.end.i12.i78_crit_edge:     ; preds = %rtcif_wait.exit.i74
  br label %do.end.i12.i78

rtcif_wait.exit.i74.rtcss_read.exit81_crit_edge:  ; preds = %rtcif_wait.exit.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit81

do.end.i12.i78:                                   ; preds = %do.end.i12.i78.do.end.i12.i78_crit_edge, %rtcif_wait.exit.i74.do.end.i12.i78_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %66 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i75 = getelementptr i8, ptr %67, i32 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i75) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i76 = and i32 %68, 128
  %tobool.not.i11.i77 = icmp eq i32 %.mask.i10.i76, 0
  br i1 %tobool.not.i11.i77, label %do.end.i12.i78.rtcss_read.exit81_crit_edge, label %do.end.i12.i78.do.end.i12.i78_crit_edge

do.end.i12.i78.do.end.i12.i78_crit_edge:          ; preds = %do.end.i12.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i78

do.end.i12.i78.rtcss_read.exit81_crit_edge:       ; preds = %do.end.i12.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit81

rtcss_read.exit81:                                ; preds = %do.end.i12.i78.rtcss_read.exit81_crit_edge, %rtcif_wait.exit.i74.rtcss_read.exit81_crit_edge
  %69 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i79 = getelementptr i8, ptr %70, i32 8
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i79) #5, !srcloc !40
  %72 = lshr i32 %71, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %conv1.i80 = trunc i32 %72 to i8
  %call9 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv1.i80) #9
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %73 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call9, ptr %tm_min, align 4
  br label %while.cond.i86

while.cond.i86:                                   ; preds = %do.end.i103, %rtcss_read.exit81
  %74 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i83 = getelementptr i8, ptr %75, i32 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i83) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i84 = and i32 %76, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i84)
  %tobool.not7.i.i.i85 = icmp eq i32 %.mask6.i.i.i84, 0
  br i1 %tobool.not7.i.i.i85, label %while.cond.i86.rtcif_wait.exit.i.i95_crit_edge, label %while.cond.i86.do.end.i.i.i90_crit_edge

while.cond.i86.do.end.i.i.i90_crit_edge:          ; preds = %while.cond.i86
  br label %do.end.i.i.i90

while.cond.i86.rtcif_wait.exit.i.i95_crit_edge:   ; preds = %while.cond.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i95

do.end.i.i.i90:                                   ; preds = %do.end.i.i.i90.do.end.i.i.i90_crit_edge, %while.cond.i86.do.end.i.i.i90_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %77 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i87 = getelementptr i8, ptr %78, i32 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i87) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i88 = and i32 %79, 128
  %tobool.not.i.i.i89 = icmp eq i32 %.mask.i.i.i88, 0
  br i1 %tobool.not.i.i.i89, label %do.end.i.i.i90.rtcif_wait.exit.i.i95_crit_edge, label %do.end.i.i.i90.do.end.i.i.i90_crit_edge

do.end.i.i.i90.do.end.i.i.i90_crit_edge:          ; preds = %do.end.i.i.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i90

do.end.i.i.i90.rtcif_wait.exit.i.i95_crit_edge:   ; preds = %do.end.i.i.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i95

rtcif_wait.exit.i.i95:                            ; preds = %do.end.i.i.i90.rtcif_wait.exit.i.i95_crit_edge, %while.cond.i86.rtcif_wait.exit.i.i95_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %80 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i91 = getelementptr i8, ptr %81, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i91, i32 335544577) #5, !srcloc !39
  %82 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i92 = getelementptr i8, ptr %83, i32 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i92) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i93 = and i32 %84, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i93)
  %tobool.not7.i8.i.i94 = icmp eq i32 %.mask6.i7.i.i93, 0
  br i1 %tobool.not7.i8.i.i94, label %rtcif_wait.exit.i.i95.rtcss_read.exit.i102_crit_edge, label %rtcif_wait.exit.i.i95.do.end.i12.i.i99_crit_edge

rtcif_wait.exit.i.i95.do.end.i12.i.i99_crit_edge: ; preds = %rtcif_wait.exit.i.i95
  br label %do.end.i12.i.i99

rtcif_wait.exit.i.i95.rtcss_read.exit.i102_crit_edge: ; preds = %rtcif_wait.exit.i.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i102

do.end.i12.i.i99:                                 ; preds = %do.end.i12.i.i99.do.end.i12.i.i99_crit_edge, %rtcif_wait.exit.i.i95.do.end.i12.i.i99_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %85 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i96 = getelementptr i8, ptr %86, i32 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i96) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i97 = and i32 %87, 128
  %tobool.not.i11.i.i98 = icmp eq i32 %.mask.i10.i.i97, 0
  br i1 %tobool.not.i11.i.i98, label %do.end.i12.i.i99.rtcss_read.exit.i102_crit_edge, label %do.end.i12.i.i99.do.end.i12.i.i99_crit_edge

do.end.i12.i.i99.do.end.i12.i.i99_crit_edge:      ; preds = %do.end.i12.i.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i99

do.end.i12.i.i99.rtcss_read.exit.i102_crit_edge:  ; preds = %do.end.i12.i.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i102

rtcss_read.exit.i102:                             ; preds = %do.end.i12.i.i99.rtcss_read.exit.i102_crit_edge, %rtcif_wait.exit.i.i95.rtcss_read.exit.i102_crit_edge
  %88 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i100 = getelementptr i8, ptr %89, i32 8
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i100) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i101 = icmp sgt i32 %90, -1
  br i1 %tobool.not.i101, label %davinci_rtcss_calendar_wait.exit104, label %do.end.i103

do.end.i103:                                      ; preds = %rtcss_read.exit.i102
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i86

davinci_rtcss_calendar_wait.exit104:              ; preds = %rtcss_read.exit.i102
  %91 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i106 = getelementptr i8, ptr %92, i32 4
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i106) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i107 = and i32 %93, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i107)
  %tobool.not7.i.i108 = icmp eq i32 %.mask6.i.i107, 0
  br i1 %tobool.not7.i.i108, label %davinci_rtcss_calendar_wait.exit104.rtcif_wait.exit.i117_crit_edge, label %davinci_rtcss_calendar_wait.exit104.do.end.i.i112_crit_edge

davinci_rtcss_calendar_wait.exit104.do.end.i.i112_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit104
  br label %do.end.i.i112

davinci_rtcss_calendar_wait.exit104.rtcif_wait.exit.i117_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit104
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i117

do.end.i.i112:                                    ; preds = %do.end.i.i112.do.end.i.i112_crit_edge, %davinci_rtcss_calendar_wait.exit104.do.end.i.i112_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %94 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i109 = getelementptr i8, ptr %95, i32 4
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i109) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i110 = and i32 %96, 128
  %tobool.not.i.i111 = icmp eq i32 %.mask.i.i110, 0
  br i1 %tobool.not.i.i111, label %do.end.i.i112.rtcif_wait.exit.i117_crit_edge, label %do.end.i.i112.do.end.i.i112_crit_edge

do.end.i.i112.do.end.i.i112_crit_edge:            ; preds = %do.end.i.i112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i112

do.end.i.i112.rtcif_wait.exit.i117_crit_edge:     ; preds = %do.end.i.i112
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i117

rtcif_wait.exit.i117:                             ; preds = %do.end.i.i112.rtcif_wait.exit.i117_crit_edge, %davinci_rtcss_calendar_wait.exit104.rtcif_wait.exit.i117_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %97 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i113 = getelementptr i8, ptr %98, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i113, i32 385876225) #5, !srcloc !39
  %99 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i114 = getelementptr i8, ptr %100, i32 4
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i114) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i115 = and i32 %101, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i115)
  %tobool.not7.i8.i116 = icmp eq i32 %.mask6.i7.i115, 0
  br i1 %tobool.not7.i8.i116, label %rtcif_wait.exit.i117.rtcss_read.exit124_crit_edge, label %rtcif_wait.exit.i117.do.end.i12.i121_crit_edge

rtcif_wait.exit.i117.do.end.i12.i121_crit_edge:   ; preds = %rtcif_wait.exit.i117
  br label %do.end.i12.i121

rtcif_wait.exit.i117.rtcss_read.exit124_crit_edge: ; preds = %rtcif_wait.exit.i117
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit124

do.end.i12.i121:                                  ; preds = %do.end.i12.i121.do.end.i12.i121_crit_edge, %rtcif_wait.exit.i117.do.end.i12.i121_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %102 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i118 = getelementptr i8, ptr %103, i32 4
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i118) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i119 = and i32 %104, 128
  %tobool.not.i11.i120 = icmp eq i32 %.mask.i10.i119, 0
  br i1 %tobool.not.i11.i120, label %do.end.i12.i121.rtcss_read.exit124_crit_edge, label %do.end.i12.i121.do.end.i12.i121_crit_edge

do.end.i12.i121.do.end.i12.i121_crit_edge:        ; preds = %do.end.i12.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i121

do.end.i12.i121.rtcss_read.exit124_crit_edge:     ; preds = %do.end.i12.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit124

rtcss_read.exit124:                               ; preds = %do.end.i12.i121.rtcss_read.exit124_crit_edge, %rtcif_wait.exit.i117.rtcss_read.exit124_crit_edge
  %105 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i122 = getelementptr i8, ptr %106, i32 8
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i122) #5, !srcloc !40
  %108 = lshr i32 %107, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %conv1.i123 = trunc i32 %108 to i8
  %call11 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv1.i123) #9
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %109 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call11, ptr %tm_hour, align 4
  br label %while.cond.i129

while.cond.i129:                                  ; preds = %do.end.i146, %rtcss_read.exit124
  %110 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i126 = getelementptr i8, ptr %111, i32 4
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i126) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i127 = and i32 %112, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i127)
  %tobool.not7.i.i.i128 = icmp eq i32 %.mask6.i.i.i127, 0
  br i1 %tobool.not7.i.i.i128, label %while.cond.i129.rtcif_wait.exit.i.i138_crit_edge, label %while.cond.i129.do.end.i.i.i133_crit_edge

while.cond.i129.do.end.i.i.i133_crit_edge:        ; preds = %while.cond.i129
  br label %do.end.i.i.i133

while.cond.i129.rtcif_wait.exit.i.i138_crit_edge: ; preds = %while.cond.i129
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i138

do.end.i.i.i133:                                  ; preds = %do.end.i.i.i133.do.end.i.i.i133_crit_edge, %while.cond.i129.do.end.i.i.i133_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %113 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i130 = getelementptr i8, ptr %114, i32 4
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i130) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i131 = and i32 %115, 128
  %tobool.not.i.i.i132 = icmp eq i32 %.mask.i.i.i131, 0
  br i1 %tobool.not.i.i.i132, label %do.end.i.i.i133.rtcif_wait.exit.i.i138_crit_edge, label %do.end.i.i.i133.do.end.i.i.i133_crit_edge

do.end.i.i.i133.do.end.i.i.i133_crit_edge:        ; preds = %do.end.i.i.i133
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i133

do.end.i.i.i133.rtcif_wait.exit.i.i138_crit_edge: ; preds = %do.end.i.i.i133
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i138

rtcif_wait.exit.i.i138:                           ; preds = %do.end.i.i.i133.rtcif_wait.exit.i.i138_crit_edge, %while.cond.i129.rtcif_wait.exit.i.i138_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %116 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i134 = getelementptr i8, ptr %117, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i134, i32 335544577) #5, !srcloc !39
  %118 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i135 = getelementptr i8, ptr %119, i32 4
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i135) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i136 = and i32 %120, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i136)
  %tobool.not7.i8.i.i137 = icmp eq i32 %.mask6.i7.i.i136, 0
  br i1 %tobool.not7.i8.i.i137, label %rtcif_wait.exit.i.i138.rtcss_read.exit.i145_crit_edge, label %rtcif_wait.exit.i.i138.do.end.i12.i.i142_crit_edge

rtcif_wait.exit.i.i138.do.end.i12.i.i142_crit_edge: ; preds = %rtcif_wait.exit.i.i138
  br label %do.end.i12.i.i142

rtcif_wait.exit.i.i138.rtcss_read.exit.i145_crit_edge: ; preds = %rtcif_wait.exit.i.i138
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i145

do.end.i12.i.i142:                                ; preds = %do.end.i12.i.i142.do.end.i12.i.i142_crit_edge, %rtcif_wait.exit.i.i138.do.end.i12.i.i142_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %121 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i139 = getelementptr i8, ptr %122, i32 4
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i139) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i140 = and i32 %123, 128
  %tobool.not.i11.i.i141 = icmp eq i32 %.mask.i10.i.i140, 0
  br i1 %tobool.not.i11.i.i141, label %do.end.i12.i.i142.rtcss_read.exit.i145_crit_edge, label %do.end.i12.i.i142.do.end.i12.i.i142_crit_edge

do.end.i12.i.i142.do.end.i12.i.i142_crit_edge:    ; preds = %do.end.i12.i.i142
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i142

do.end.i12.i.i142.rtcss_read.exit.i145_crit_edge: ; preds = %do.end.i12.i.i142
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i145

rtcss_read.exit.i145:                             ; preds = %do.end.i12.i.i142.rtcss_read.exit.i145_crit_edge, %rtcif_wait.exit.i.i138.rtcss_read.exit.i145_crit_edge
  %124 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i143 = getelementptr i8, ptr %125, i32 8
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i143) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i144 = icmp sgt i32 %126, -1
  br i1 %tobool.not.i144, label %davinci_rtcss_calendar_wait.exit147, label %do.end.i146

do.end.i146:                                      ; preds = %rtcss_read.exit.i145
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i129

davinci_rtcss_calendar_wait.exit147:              ; preds = %rtcss_read.exit.i145
  %127 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i149 = getelementptr i8, ptr %128, i32 4
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i149) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i150 = and i32 %129, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i150)
  %tobool.not7.i.i151 = icmp eq i32 %.mask6.i.i150, 0
  br i1 %tobool.not7.i.i151, label %davinci_rtcss_calendar_wait.exit147.rtcif_wait.exit.i160_crit_edge, label %davinci_rtcss_calendar_wait.exit147.do.end.i.i155_crit_edge

davinci_rtcss_calendar_wait.exit147.do.end.i.i155_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit147
  br label %do.end.i.i155

davinci_rtcss_calendar_wait.exit147.rtcif_wait.exit.i160_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit147
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i160

do.end.i.i155:                                    ; preds = %do.end.i.i155.do.end.i.i155_crit_edge, %davinci_rtcss_calendar_wait.exit147.do.end.i.i155_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %130 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i152 = getelementptr i8, ptr %131, i32 4
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i152) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i153 = and i32 %132, 128
  %tobool.not.i.i154 = icmp eq i32 %.mask.i.i153, 0
  br i1 %tobool.not.i.i154, label %do.end.i.i155.rtcif_wait.exit.i160_crit_edge, label %do.end.i.i155.do.end.i.i155_crit_edge

do.end.i.i155.do.end.i.i155_crit_edge:            ; preds = %do.end.i.i155
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i155

do.end.i.i155.rtcif_wait.exit.i160_crit_edge:     ; preds = %do.end.i.i155
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i160

rtcif_wait.exit.i160:                             ; preds = %do.end.i.i155.rtcif_wait.exit.i160_crit_edge, %davinci_rtcss_calendar_wait.exit147.rtcif_wait.exit.i160_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %133 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i156 = getelementptr i8, ptr %134, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i156, i32 402653441) #5, !srcloc !39
  %135 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i157 = getelementptr i8, ptr %136, i32 4
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i157) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i158 = and i32 %137, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i158)
  %tobool.not7.i8.i159 = icmp eq i32 %.mask6.i7.i158, 0
  br i1 %tobool.not7.i8.i159, label %rtcif_wait.exit.i160.rtcss_read.exit167_crit_edge, label %rtcif_wait.exit.i160.do.end.i12.i164_crit_edge

rtcif_wait.exit.i160.do.end.i12.i164_crit_edge:   ; preds = %rtcif_wait.exit.i160
  br label %do.end.i12.i164

rtcif_wait.exit.i160.rtcss_read.exit167_crit_edge: ; preds = %rtcif_wait.exit.i160
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit167

do.end.i12.i164:                                  ; preds = %do.end.i12.i164.do.end.i12.i164_crit_edge, %rtcif_wait.exit.i160.do.end.i12.i164_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %138 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i161 = getelementptr i8, ptr %139, i32 4
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i161) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i162 = and i32 %140, 128
  %tobool.not.i11.i163 = icmp eq i32 %.mask.i10.i162, 0
  br i1 %tobool.not.i11.i163, label %do.end.i12.i164.rtcss_read.exit167_crit_edge, label %do.end.i12.i164.do.end.i12.i164_crit_edge

do.end.i12.i164.do.end.i12.i164_crit_edge:        ; preds = %do.end.i12.i164
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i164

do.end.i12.i164.rtcss_read.exit167_crit_edge:     ; preds = %do.end.i12.i164
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit167

rtcss_read.exit167:                               ; preds = %do.end.i12.i164.rtcss_read.exit167_crit_edge, %rtcif_wait.exit.i160.rtcss_read.exit167_crit_edge
  %141 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i165 = getelementptr i8, ptr %142, i32 8
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i165) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  br label %while.cond.i172

while.cond.i172:                                  ; preds = %do.end.i189, %rtcss_read.exit167
  %144 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i169 = getelementptr i8, ptr %145, i32 4
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i169) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i170 = and i32 %146, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i170)
  %tobool.not7.i.i.i171 = icmp eq i32 %.mask6.i.i.i170, 0
  br i1 %tobool.not7.i.i.i171, label %while.cond.i172.rtcif_wait.exit.i.i181_crit_edge, label %while.cond.i172.do.end.i.i.i176_crit_edge

while.cond.i172.do.end.i.i.i176_crit_edge:        ; preds = %while.cond.i172
  br label %do.end.i.i.i176

while.cond.i172.rtcif_wait.exit.i.i181_crit_edge: ; preds = %while.cond.i172
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i181

do.end.i.i.i176:                                  ; preds = %do.end.i.i.i176.do.end.i.i.i176_crit_edge, %while.cond.i172.do.end.i.i.i176_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %147 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i173 = getelementptr i8, ptr %148, i32 4
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i173) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i174 = and i32 %149, 128
  %tobool.not.i.i.i175 = icmp eq i32 %.mask.i.i.i174, 0
  br i1 %tobool.not.i.i.i175, label %do.end.i.i.i176.rtcif_wait.exit.i.i181_crit_edge, label %do.end.i.i.i176.do.end.i.i.i176_crit_edge

do.end.i.i.i176.do.end.i.i.i176_crit_edge:        ; preds = %do.end.i.i.i176
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i176

do.end.i.i.i176.rtcif_wait.exit.i.i181_crit_edge: ; preds = %do.end.i.i.i176
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i181

rtcif_wait.exit.i.i181:                           ; preds = %do.end.i.i.i176.rtcif_wait.exit.i.i181_crit_edge, %while.cond.i172.rtcif_wait.exit.i.i181_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %150 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i177 = getelementptr i8, ptr %151, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i177, i32 335544577) #5, !srcloc !39
  %152 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i178 = getelementptr i8, ptr %153, i32 4
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i178) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i179 = and i32 %154, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i179)
  %tobool.not7.i8.i.i180 = icmp eq i32 %.mask6.i7.i.i179, 0
  br i1 %tobool.not7.i8.i.i180, label %rtcif_wait.exit.i.i181.rtcss_read.exit.i188_crit_edge, label %rtcif_wait.exit.i.i181.do.end.i12.i.i185_crit_edge

rtcif_wait.exit.i.i181.do.end.i12.i.i185_crit_edge: ; preds = %rtcif_wait.exit.i.i181
  br label %do.end.i12.i.i185

rtcif_wait.exit.i.i181.rtcss_read.exit.i188_crit_edge: ; preds = %rtcif_wait.exit.i.i181
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i188

do.end.i12.i.i185:                                ; preds = %do.end.i12.i.i185.do.end.i12.i.i185_crit_edge, %rtcif_wait.exit.i.i181.do.end.i12.i.i185_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %155 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i182 = getelementptr i8, ptr %156, i32 4
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i182) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i183 = and i32 %157, 128
  %tobool.not.i11.i.i184 = icmp eq i32 %.mask.i10.i.i183, 0
  br i1 %tobool.not.i11.i.i184, label %do.end.i12.i.i185.rtcss_read.exit.i188_crit_edge, label %do.end.i12.i.i185.do.end.i12.i.i185_crit_edge

do.end.i12.i.i185.do.end.i12.i.i185_crit_edge:    ; preds = %do.end.i12.i.i185
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i185

do.end.i12.i.i185.rtcss_read.exit.i188_crit_edge: ; preds = %do.end.i12.i.i185
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i188

rtcss_read.exit.i188:                             ; preds = %do.end.i12.i.i185.rtcss_read.exit.i188_crit_edge, %rtcif_wait.exit.i.i181.rtcss_read.exit.i188_crit_edge
  %158 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i186 = getelementptr i8, ptr %159, i32 8
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i186) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i187 = icmp sgt i32 %160, -1
  br i1 %tobool.not.i187, label %davinci_rtcss_calendar_wait.exit190, label %do.end.i189

do.end.i189:                                      ; preds = %rtcss_read.exit.i188
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i172

davinci_rtcss_calendar_wait.exit190:              ; preds = %rtcss_read.exit.i188
  %161 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i192 = getelementptr i8, ptr %162, i32 4
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i192) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i193 = and i32 %163, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i193)
  %tobool.not7.i.i194 = icmp eq i32 %.mask6.i.i193, 0
  br i1 %tobool.not7.i.i194, label %davinci_rtcss_calendar_wait.exit190.rtcif_wait.exit.i203_crit_edge, label %davinci_rtcss_calendar_wait.exit190.do.end.i.i198_crit_edge

davinci_rtcss_calendar_wait.exit190.do.end.i.i198_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit190
  br label %do.end.i.i198

davinci_rtcss_calendar_wait.exit190.rtcif_wait.exit.i203_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit190
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i203

do.end.i.i198:                                    ; preds = %do.end.i.i198.do.end.i.i198_crit_edge, %davinci_rtcss_calendar_wait.exit190.do.end.i.i198_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %164 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i195 = getelementptr i8, ptr %165, i32 4
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i195) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i196 = and i32 %166, 128
  %tobool.not.i.i197 = icmp eq i32 %.mask.i.i196, 0
  br i1 %tobool.not.i.i197, label %do.end.i.i198.rtcif_wait.exit.i203_crit_edge, label %do.end.i.i198.do.end.i.i198_crit_edge

do.end.i.i198.do.end.i.i198_crit_edge:            ; preds = %do.end.i.i198
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i198

do.end.i.i198.rtcif_wait.exit.i203_crit_edge:     ; preds = %do.end.i.i198
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i203

rtcif_wait.exit.i203:                             ; preds = %do.end.i.i198.rtcif_wait.exit.i203_crit_edge, %davinci_rtcss_calendar_wait.exit190.rtcif_wait.exit.i203_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %167 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i199 = getelementptr i8, ptr %168, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i199, i32 419430657) #5, !srcloc !39
  %169 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i200 = getelementptr i8, ptr %170, i32 4
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i200) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i201 = and i32 %171, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i201)
  %tobool.not7.i8.i202 = icmp eq i32 %.mask6.i7.i201, 0
  br i1 %tobool.not7.i8.i202, label %rtcif_wait.exit.i203.rtcss_read.exit210_crit_edge, label %rtcif_wait.exit.i203.do.end.i12.i207_crit_edge

rtcif_wait.exit.i203.do.end.i12.i207_crit_edge:   ; preds = %rtcif_wait.exit.i203
  br label %do.end.i12.i207

rtcif_wait.exit.i203.rtcss_read.exit210_crit_edge: ; preds = %rtcif_wait.exit.i203
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit210

do.end.i12.i207:                                  ; preds = %do.end.i12.i207.do.end.i12.i207_crit_edge, %rtcif_wait.exit.i203.do.end.i12.i207_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %172 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i204 = getelementptr i8, ptr %173, i32 4
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i204) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i205 = and i32 %174, 128
  %tobool.not.i11.i206 = icmp eq i32 %.mask.i10.i205, 0
  br i1 %tobool.not.i11.i206, label %do.end.i12.i207.rtcss_read.exit210_crit_edge, label %do.end.i12.i207.do.end.i12.i207_crit_edge

do.end.i12.i207.do.end.i12.i207_crit_edge:        ; preds = %do.end.i12.i207
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i207

do.end.i12.i207.rtcss_read.exit210_crit_edge:     ; preds = %do.end.i12.i207
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit210

rtcss_read.exit210:                               ; preds = %do.end.i12.i207.rtcss_read.exit210_crit_edge, %rtcif_wait.exit.i203.rtcss_read.exit210_crit_edge
  %175 = lshr i32 %143, 24
  %176 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i208 = getelementptr i8, ptr %177, i32 8
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i208) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @davinci_rtc_lock, i32 noundef %call3) #5
  %sh.diff = lshr i32 %178, 16
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %shl = and i16 %tr.sh.diff, -256
  %179 = trunc i32 %175 to i16
  %or21 = or i16 %shl, %179
  tail call fastcc void @convertfromdays(i16 noundef zeroext %or21, ptr noundef %tm)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %2 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_year.i, align 4
  %add16.i = add i32 %3, 1900
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %add16.i)
  %cmp17.i = icmp sgt i32 %add16.i, 2000
  br i1 %cmp17.i, label %entry.for.body.i_crit_edge, label %entry.convert2days.exit_crit_edge

entry.convert2days.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert2days.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %days.0 = phi i16 [ %conv2.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.018.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 2000, %entry.for.body.i_crit_edge ]
  %call.i = tail call i32 @rtc_year_days(i32 noundef 1, i32 noundef 12, i32 noundef %i.018.i) #5
  %4 = trunc i32 %call.i to i16
  %conv2.i = add i16 %days.0, %4
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %5 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm_year.i, align 4
  %add.i = add i32 %6, 1900
  %cmp.i = icmp slt i32 %inc.i, %add.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.convert2days.exit_crit_edge

for.body.i.convert2days.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert2days.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

convert2days.exit:                                ; preds = %for.body.i.convert2days.exit_crit_edge, %entry.convert2days.exit_crit_edge
  %days.1 = phi i16 [ 0, %entry.convert2days.exit_crit_edge ], [ %conv2.i, %for.body.i.convert2days.exit_crit_edge ]
  %add.lcssa.i = phi i32 [ %add16.i, %entry.convert2days.exit_crit_edge ], [ %add.i, %for.body.i.convert2days.exit_crit_edge ]
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %7 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_mday.i, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %9 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_mon.i, align 4
  %call5.i = tail call i32 @rtc_year_days(i32 noundef %8, i32 noundef %10, i32 noundef %add.lcssa.i) #5
  %11 = trunc i32 %call5.i to i16
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @davinci_rtc_lock) #5
  %base.i.i.i.i = getelementptr inbounds %struct.davinci_rtc, ptr %1, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %convert2days.exit
  %12 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i)
  %tobool.not7.i.i.i = icmp eq i32 %.mask6.i.i.i, 0
  br i1 %tobool.not7.i.i.i, label %while.cond.i.rtcif_wait.exit.i.i_crit_edge, label %while.cond.i.do.end.i.i.i_crit_edge

while.cond.i.do.end.i.i.i_crit_edge:              ; preds = %while.cond.i
  br label %do.end.i.i.i

while.cond.i.rtcif_wait.exit.i.i_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %while.cond.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %15 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i = and i32 %17, 128
  %tobool.not.i.i.i = icmp eq i32 %.mask.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.rtcif_wait.exit.i.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i

do.end.i.i.i.rtcif_wait.exit.i.i_crit_edge:       ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i

rtcif_wait.exit.i.i:                              ; preds = %do.end.i.i.i.rtcif_wait.exit.i.i_crit_edge, %while.cond.i.rtcif_wait.exit.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 335544577) #5, !srcloc !39
  %20 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i)
  %tobool.not7.i8.i.i = icmp eq i32 %.mask6.i7.i.i, 0
  br i1 %tobool.not7.i8.i.i, label %rtcif_wait.exit.i.i.rtcss_read.exit.i_crit_edge, label %rtcif_wait.exit.i.i.do.end.i12.i.i_crit_edge

rtcif_wait.exit.i.i.do.end.i12.i.i_crit_edge:     ; preds = %rtcif_wait.exit.i.i
  br label %do.end.i12.i.i

rtcif_wait.exit.i.i.rtcss_read.exit.i_crit_edge:  ; preds = %rtcif_wait.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i

do.end.i12.i.i:                                   ; preds = %do.end.i12.i.i.do.end.i12.i.i_crit_edge, %rtcif_wait.exit.i.i.do.end.i12.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %23 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i = and i32 %25, 128
  %tobool.not.i11.i.i = icmp eq i32 %.mask.i10.i.i, 0
  br i1 %tobool.not.i11.i.i, label %do.end.i12.i.i.rtcss_read.exit.i_crit_edge, label %do.end.i12.i.i.do.end.i12.i.i_crit_edge

do.end.i12.i.i.do.end.i12.i.i_crit_edge:          ; preds = %do.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i

do.end.i12.i.i.rtcss_read.exit.i_crit_edge:       ; preds = %do.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i

rtcss_read.exit.i:                                ; preds = %do.end.i12.i.i.rtcss_read.exit.i_crit_edge, %rtcif_wait.exit.i.i.rtcss_read.exit.i_crit_edge
  %26 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i = icmp sgt i32 %28, -1
  br i1 %tobool.not.i, label %davinci_rtcss_calendar_wait.exit, label %do.end.i

do.end.i:                                         ; preds = %rtcss_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i

davinci_rtcss_calendar_wait.exit:                 ; preds = %rtcss_read.exit.i
  %conv8.i = add i16 %days.1, %11
  %29 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm, align 4
  %call10 = tail call zeroext i8 @_bin2bcd(i32 noundef %30) #9
  %conv11 = zext i8 %call10 to i32
  %31 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %32, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i)
  %tobool.not7.i.i = icmp eq i32 %.mask6.i.i, 0
  br i1 %tobool.not7.i.i, label %davinci_rtcss_calendar_wait.exit.rtcif_wait.exit.i_crit_edge, label %davinci_rtcss_calendar_wait.exit.do.end.i.i_crit_edge

davinci_rtcss_calendar_wait.exit.do.end.i.i_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit
  br label %do.end.i.i

davinci_rtcss_calendar_wait.exit.rtcif_wait.exit.i_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %davinci_rtcss_calendar_wait.exit.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %34 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i71 = getelementptr i8, ptr %35, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i71) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i = and i32 %36, 128
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.rtcif_wait.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

do.end.i.i.rtcif_wait.exit.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

rtcif_wait.exit.i:                                ; preds = %do.end.i.i.rtcif_wait.exit.i_crit_edge, %davinci_rtcss_calendar_wait.exit.rtcif_wait.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 352321792) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %39 = shl nuw i32 %conv11, 24
  %40 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %41, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %39) #5, !srcloc !39
  %42 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i7.i = getelementptr i8, ptr %43, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i)
  %tobool.not7.i9.i = icmp eq i32 %.mask6.i8.i, 0
  br i1 %tobool.not7.i9.i, label %rtcif_wait.exit.i.while.cond.i76.preheader_crit_edge, label %rtcif_wait.exit.i.do.end.i13.i_crit_edge

rtcif_wait.exit.i.do.end.i13.i_crit_edge:         ; preds = %rtcif_wait.exit.i
  br label %do.end.i13.i

rtcif_wait.exit.i.while.cond.i76.preheader_crit_edge: ; preds = %rtcif_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i76.preheader

do.end.i13.i:                                     ; preds = %do.end.i13.i.do.end.i13.i_crit_edge, %rtcif_wait.exit.i.do.end.i13.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %45 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %46, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i = and i32 %47, 128
  %tobool.not.i12.i = icmp eq i32 %.mask.i11.i, 0
  br i1 %tobool.not.i12.i, label %do.end.i13.i.while.cond.i76.preheader_crit_edge, label %do.end.i13.i.do.end.i13.i_crit_edge

do.end.i13.i.do.end.i13.i_crit_edge:              ; preds = %do.end.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i

do.end.i13.i.while.cond.i76.preheader_crit_edge:  ; preds = %do.end.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i76.preheader

while.cond.i76.preheader:                         ; preds = %do.end.i13.i.while.cond.i76.preheader_crit_edge, %rtcif_wait.exit.i.while.cond.i76.preheader_crit_edge
  br label %while.cond.i76

while.cond.i76:                                   ; preds = %do.end.i93, %while.cond.i76.preheader
  %48 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i73 = getelementptr i8, ptr %49, i32 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i73) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i74 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i74)
  %tobool.not7.i.i.i75 = icmp eq i32 %.mask6.i.i.i74, 0
  br i1 %tobool.not7.i.i.i75, label %while.cond.i76.rtcif_wait.exit.i.i85_crit_edge, label %while.cond.i76.do.end.i.i.i80_crit_edge

while.cond.i76.do.end.i.i.i80_crit_edge:          ; preds = %while.cond.i76
  br label %do.end.i.i.i80

while.cond.i76.rtcif_wait.exit.i.i85_crit_edge:   ; preds = %while.cond.i76
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i85

do.end.i.i.i80:                                   ; preds = %do.end.i.i.i80.do.end.i.i.i80_crit_edge, %while.cond.i76.do.end.i.i.i80_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %51 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i77 = getelementptr i8, ptr %52, i32 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i77) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i78 = and i32 %53, 128
  %tobool.not.i.i.i79 = icmp eq i32 %.mask.i.i.i78, 0
  br i1 %tobool.not.i.i.i79, label %do.end.i.i.i80.rtcif_wait.exit.i.i85_crit_edge, label %do.end.i.i.i80.do.end.i.i.i80_crit_edge

do.end.i.i.i80.do.end.i.i.i80_crit_edge:          ; preds = %do.end.i.i.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i80

do.end.i.i.i80.rtcif_wait.exit.i.i85_crit_edge:   ; preds = %do.end.i.i.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i85

rtcif_wait.exit.i.i85:                            ; preds = %do.end.i.i.i80.rtcif_wait.exit.i.i85_crit_edge, %while.cond.i76.rtcif_wait.exit.i.i85_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i81 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i81, i32 335544577) #5, !srcloc !39
  %56 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i82 = getelementptr i8, ptr %57, i32 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i82) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i83 = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i83)
  %tobool.not7.i8.i.i84 = icmp eq i32 %.mask6.i7.i.i83, 0
  br i1 %tobool.not7.i8.i.i84, label %rtcif_wait.exit.i.i85.rtcss_read.exit.i92_crit_edge, label %rtcif_wait.exit.i.i85.do.end.i12.i.i89_crit_edge

rtcif_wait.exit.i.i85.do.end.i12.i.i89_crit_edge: ; preds = %rtcif_wait.exit.i.i85
  br label %do.end.i12.i.i89

rtcif_wait.exit.i.i85.rtcss_read.exit.i92_crit_edge: ; preds = %rtcif_wait.exit.i.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i92

do.end.i12.i.i89:                                 ; preds = %do.end.i12.i.i89.do.end.i12.i.i89_crit_edge, %rtcif_wait.exit.i.i85.do.end.i12.i.i89_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %59 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i86 = getelementptr i8, ptr %60, i32 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i86) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i87 = and i32 %61, 128
  %tobool.not.i11.i.i88 = icmp eq i32 %.mask.i10.i.i87, 0
  br i1 %tobool.not.i11.i.i88, label %do.end.i12.i.i89.rtcss_read.exit.i92_crit_edge, label %do.end.i12.i.i89.do.end.i12.i.i89_crit_edge

do.end.i12.i.i89.do.end.i12.i.i89_crit_edge:      ; preds = %do.end.i12.i.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i89

do.end.i12.i.i89.rtcss_read.exit.i92_crit_edge:   ; preds = %do.end.i12.i.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i92

rtcss_read.exit.i92:                              ; preds = %do.end.i12.i.i89.rtcss_read.exit.i92_crit_edge, %rtcif_wait.exit.i.i85.rtcss_read.exit.i92_crit_edge
  %62 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i90 = getelementptr i8, ptr %63, i32 8
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i90) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i91 = icmp sgt i32 %64, -1
  br i1 %tobool.not.i91, label %cond.false20, label %do.end.i93

do.end.i93:                                       ; preds = %rtcss_read.exit.i92
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i76

cond.false20:                                     ; preds = %rtcss_read.exit.i92
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %65 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tm_min, align 4
  %call22 = tail call zeroext i8 @_bin2bcd(i32 noundef %66) #9
  %conv23 = zext i8 %call22 to i32
  %67 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i96 = getelementptr i8, ptr %68, i32 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i96) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i97 = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i97)
  %tobool.not7.i.i98 = icmp eq i32 %.mask6.i.i97, 0
  br i1 %tobool.not7.i.i98, label %cond.false20.rtcif_wait.exit.i108_crit_edge, label %cond.false20.do.end.i.i102_crit_edge

cond.false20.do.end.i.i102_crit_edge:             ; preds = %cond.false20
  br label %do.end.i.i102

cond.false20.rtcif_wait.exit.i108_crit_edge:      ; preds = %cond.false20
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i108

do.end.i.i102:                                    ; preds = %do.end.i.i102.do.end.i.i102_crit_edge, %cond.false20.do.end.i.i102_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %70 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i99 = getelementptr i8, ptr %71, i32 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i99) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i100 = and i32 %72, 128
  %tobool.not.i.i101 = icmp eq i32 %.mask.i.i100, 0
  br i1 %tobool.not.i.i101, label %do.end.i.i102.rtcif_wait.exit.i108_crit_edge, label %do.end.i.i102.do.end.i.i102_crit_edge

do.end.i.i102.do.end.i.i102_crit_edge:            ; preds = %do.end.i.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i102

do.end.i.i102.rtcif_wait.exit.i108_crit_edge:     ; preds = %do.end.i.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i108

rtcif_wait.exit.i108:                             ; preds = %do.end.i.i102.rtcif_wait.exit.i108_crit_edge, %cond.false20.rtcif_wait.exit.i108_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %73 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i103 = getelementptr i8, ptr %74, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i103, i32 369099008) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %75 = shl nuw i32 %conv23, 24
  %76 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i104 = getelementptr i8, ptr %77, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i104, i32 %75) #5, !srcloc !39
  %78 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i7.i105 = getelementptr i8, ptr %79, i32 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i105) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i106 = and i32 %80, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i106)
  %tobool.not7.i9.i107 = icmp eq i32 %.mask6.i8.i106, 0
  br i1 %tobool.not7.i9.i107, label %rtcif_wait.exit.i108.while.cond.i118.preheader_crit_edge, label %rtcif_wait.exit.i108.do.end.i13.i112_crit_edge

rtcif_wait.exit.i108.do.end.i13.i112_crit_edge:   ; preds = %rtcif_wait.exit.i108
  br label %do.end.i13.i112

rtcif_wait.exit.i108.while.cond.i118.preheader_crit_edge: ; preds = %rtcif_wait.exit.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i118.preheader

do.end.i13.i112:                                  ; preds = %do.end.i13.i112.do.end.i13.i112_crit_edge, %rtcif_wait.exit.i108.do.end.i13.i112_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %81 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i10.i109 = getelementptr i8, ptr %82, i32 4
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i109) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i110 = and i32 %83, 128
  %tobool.not.i12.i111 = icmp eq i32 %.mask.i11.i110, 0
  br i1 %tobool.not.i12.i111, label %do.end.i13.i112.while.cond.i118.preheader_crit_edge, label %do.end.i13.i112.do.end.i13.i112_crit_edge

do.end.i13.i112.do.end.i13.i112_crit_edge:        ; preds = %do.end.i13.i112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i112

do.end.i13.i112.while.cond.i118.preheader_crit_edge: ; preds = %do.end.i13.i112
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i118.preheader

while.cond.i118.preheader:                        ; preds = %do.end.i13.i112.while.cond.i118.preheader_crit_edge, %rtcif_wait.exit.i108.while.cond.i118.preheader_crit_edge
  br label %while.cond.i118

while.cond.i118:                                  ; preds = %do.end.i135, %while.cond.i118.preheader
  %84 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i115 = getelementptr i8, ptr %85, i32 4
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i115) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i116 = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i116)
  %tobool.not7.i.i.i117 = icmp eq i32 %.mask6.i.i.i116, 0
  br i1 %tobool.not7.i.i.i117, label %while.cond.i118.rtcif_wait.exit.i.i127_crit_edge, label %while.cond.i118.do.end.i.i.i122_crit_edge

while.cond.i118.do.end.i.i.i122_crit_edge:        ; preds = %while.cond.i118
  br label %do.end.i.i.i122

while.cond.i118.rtcif_wait.exit.i.i127_crit_edge: ; preds = %while.cond.i118
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i127

do.end.i.i.i122:                                  ; preds = %do.end.i.i.i122.do.end.i.i.i122_crit_edge, %while.cond.i118.do.end.i.i.i122_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %87 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i119 = getelementptr i8, ptr %88, i32 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i119) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i120 = and i32 %89, 128
  %tobool.not.i.i.i121 = icmp eq i32 %.mask.i.i.i120, 0
  br i1 %tobool.not.i.i.i121, label %do.end.i.i.i122.rtcif_wait.exit.i.i127_crit_edge, label %do.end.i.i.i122.do.end.i.i.i122_crit_edge

do.end.i.i.i122.do.end.i.i.i122_crit_edge:        ; preds = %do.end.i.i.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i122

do.end.i.i.i122.rtcif_wait.exit.i.i127_crit_edge: ; preds = %do.end.i.i.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i127

rtcif_wait.exit.i.i127:                           ; preds = %do.end.i.i.i122.rtcif_wait.exit.i.i127_crit_edge, %while.cond.i118.rtcif_wait.exit.i.i127_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i123 = getelementptr i8, ptr %91, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i123, i32 335544577) #5, !srcloc !39
  %92 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i124 = getelementptr i8, ptr %93, i32 4
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i124) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i125 = and i32 %94, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i125)
  %tobool.not7.i8.i.i126 = icmp eq i32 %.mask6.i7.i.i125, 0
  br i1 %tobool.not7.i8.i.i126, label %rtcif_wait.exit.i.i127.rtcss_read.exit.i134_crit_edge, label %rtcif_wait.exit.i.i127.do.end.i12.i.i131_crit_edge

rtcif_wait.exit.i.i127.do.end.i12.i.i131_crit_edge: ; preds = %rtcif_wait.exit.i.i127
  br label %do.end.i12.i.i131

rtcif_wait.exit.i.i127.rtcss_read.exit.i134_crit_edge: ; preds = %rtcif_wait.exit.i.i127
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i134

do.end.i12.i.i131:                                ; preds = %do.end.i12.i.i131.do.end.i12.i.i131_crit_edge, %rtcif_wait.exit.i.i127.do.end.i12.i.i131_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %95 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i128 = getelementptr i8, ptr %96, i32 4
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i128) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i129 = and i32 %97, 128
  %tobool.not.i11.i.i130 = icmp eq i32 %.mask.i10.i.i129, 0
  br i1 %tobool.not.i11.i.i130, label %do.end.i12.i.i131.rtcss_read.exit.i134_crit_edge, label %do.end.i12.i.i131.do.end.i12.i.i131_crit_edge

do.end.i12.i.i131.do.end.i12.i.i131_crit_edge:    ; preds = %do.end.i12.i.i131
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i131

do.end.i12.i.i131.rtcss_read.exit.i134_crit_edge: ; preds = %do.end.i12.i.i131
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i134

rtcss_read.exit.i134:                             ; preds = %do.end.i12.i.i131.rtcss_read.exit.i134_crit_edge, %rtcif_wait.exit.i.i127.rtcss_read.exit.i134_crit_edge
  %98 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i132 = getelementptr i8, ptr %99, i32 8
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i132) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i133 = icmp sgt i32 %100, -1
  br i1 %tobool.not.i133, label %cond.false34, label %do.end.i135

do.end.i135:                                      ; preds = %rtcss_read.exit.i134
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i118

cond.false34:                                     ; preds = %rtcss_read.exit.i134
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %101 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tm_hour, align 4
  %call36 = tail call zeroext i8 @_bin2bcd(i32 noundef %102) #9
  %conv37 = zext i8 %call36 to i32
  %103 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i138 = getelementptr i8, ptr %104, i32 4
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i138) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i139 = and i32 %105, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i139)
  %tobool.not7.i.i140 = icmp eq i32 %.mask6.i.i139, 0
  br i1 %tobool.not7.i.i140, label %cond.false34.rtcif_wait.exit.i150_crit_edge, label %cond.false34.do.end.i.i144_crit_edge

cond.false34.do.end.i.i144_crit_edge:             ; preds = %cond.false34
  br label %do.end.i.i144

cond.false34.rtcif_wait.exit.i150_crit_edge:      ; preds = %cond.false34
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i150

do.end.i.i144:                                    ; preds = %do.end.i.i144.do.end.i.i144_crit_edge, %cond.false34.do.end.i.i144_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %106 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i141 = getelementptr i8, ptr %107, i32 4
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i141) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i142 = and i32 %108, 128
  %tobool.not.i.i143 = icmp eq i32 %.mask.i.i142, 0
  br i1 %tobool.not.i.i143, label %do.end.i.i144.rtcif_wait.exit.i150_crit_edge, label %do.end.i.i144.do.end.i.i144_crit_edge

do.end.i.i144.do.end.i.i144_crit_edge:            ; preds = %do.end.i.i144
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i144

do.end.i.i144.rtcif_wait.exit.i150_crit_edge:     ; preds = %do.end.i.i144
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i150

rtcif_wait.exit.i150:                             ; preds = %do.end.i.i144.rtcif_wait.exit.i150_crit_edge, %cond.false34.rtcif_wait.exit.i150_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %109 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i145 = getelementptr i8, ptr %110, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145, i32 385876224) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %111 = shl nuw i32 %conv37, 24
  %112 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i146 = getelementptr i8, ptr %113, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i146, i32 %111) #5, !srcloc !39
  %114 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i7.i147 = getelementptr i8, ptr %115, i32 4
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i147) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i148 = and i32 %116, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i148)
  %tobool.not7.i9.i149 = icmp eq i32 %.mask6.i8.i148, 0
  br i1 %tobool.not7.i9.i149, label %rtcif_wait.exit.i150.while.cond.i160.preheader_crit_edge, label %rtcif_wait.exit.i150.do.end.i13.i154_crit_edge

rtcif_wait.exit.i150.do.end.i13.i154_crit_edge:   ; preds = %rtcif_wait.exit.i150
  br label %do.end.i13.i154

rtcif_wait.exit.i150.while.cond.i160.preheader_crit_edge: ; preds = %rtcif_wait.exit.i150
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i160.preheader

do.end.i13.i154:                                  ; preds = %do.end.i13.i154.do.end.i13.i154_crit_edge, %rtcif_wait.exit.i150.do.end.i13.i154_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %117 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i10.i151 = getelementptr i8, ptr %118, i32 4
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i151) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i152 = and i32 %119, 128
  %tobool.not.i12.i153 = icmp eq i32 %.mask.i11.i152, 0
  br i1 %tobool.not.i12.i153, label %do.end.i13.i154.while.cond.i160.preheader_crit_edge, label %do.end.i13.i154.do.end.i13.i154_crit_edge

do.end.i13.i154.do.end.i13.i154_crit_edge:        ; preds = %do.end.i13.i154
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i154

do.end.i13.i154.while.cond.i160.preheader_crit_edge: ; preds = %do.end.i13.i154
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i160.preheader

while.cond.i160.preheader:                        ; preds = %do.end.i13.i154.while.cond.i160.preheader_crit_edge, %rtcif_wait.exit.i150.while.cond.i160.preheader_crit_edge
  br label %while.cond.i160

while.cond.i160:                                  ; preds = %do.end.i177, %while.cond.i160.preheader
  %120 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i157 = getelementptr i8, ptr %121, i32 4
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i157) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i158 = and i32 %122, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i158)
  %tobool.not7.i.i.i159 = icmp eq i32 %.mask6.i.i.i158, 0
  br i1 %tobool.not7.i.i.i159, label %while.cond.i160.rtcif_wait.exit.i.i169_crit_edge, label %while.cond.i160.do.end.i.i.i164_crit_edge

while.cond.i160.do.end.i.i.i164_crit_edge:        ; preds = %while.cond.i160
  br label %do.end.i.i.i164

while.cond.i160.rtcif_wait.exit.i.i169_crit_edge: ; preds = %while.cond.i160
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i169

do.end.i.i.i164:                                  ; preds = %do.end.i.i.i164.do.end.i.i.i164_crit_edge, %while.cond.i160.do.end.i.i.i164_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %123 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i161 = getelementptr i8, ptr %124, i32 4
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i161) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i162 = and i32 %125, 128
  %tobool.not.i.i.i163 = icmp eq i32 %.mask.i.i.i162, 0
  br i1 %tobool.not.i.i.i163, label %do.end.i.i.i164.rtcif_wait.exit.i.i169_crit_edge, label %do.end.i.i.i164.do.end.i.i.i164_crit_edge

do.end.i.i.i164.do.end.i.i.i164_crit_edge:        ; preds = %do.end.i.i.i164
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i164

do.end.i.i.i164.rtcif_wait.exit.i.i169_crit_edge: ; preds = %do.end.i.i.i164
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i169

rtcif_wait.exit.i.i169:                           ; preds = %do.end.i.i.i164.rtcif_wait.exit.i.i169_crit_edge, %while.cond.i160.rtcif_wait.exit.i.i169_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %126 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i165 = getelementptr i8, ptr %127, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i165, i32 335544577) #5, !srcloc !39
  %128 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i166 = getelementptr i8, ptr %129, i32 4
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i166) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i167 = and i32 %130, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i167)
  %tobool.not7.i8.i.i168 = icmp eq i32 %.mask6.i7.i.i167, 0
  br i1 %tobool.not7.i8.i.i168, label %rtcif_wait.exit.i.i169.rtcss_read.exit.i176_crit_edge, label %rtcif_wait.exit.i.i169.do.end.i12.i.i173_crit_edge

rtcif_wait.exit.i.i169.do.end.i12.i.i173_crit_edge: ; preds = %rtcif_wait.exit.i.i169
  br label %do.end.i12.i.i173

rtcif_wait.exit.i.i169.rtcss_read.exit.i176_crit_edge: ; preds = %rtcif_wait.exit.i.i169
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i176

do.end.i12.i.i173:                                ; preds = %do.end.i12.i.i173.do.end.i12.i.i173_crit_edge, %rtcif_wait.exit.i.i169.do.end.i12.i.i173_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %131 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i170 = getelementptr i8, ptr %132, i32 4
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i170) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i171 = and i32 %133, 128
  %tobool.not.i11.i.i172 = icmp eq i32 %.mask.i10.i.i171, 0
  br i1 %tobool.not.i11.i.i172, label %do.end.i12.i.i173.rtcss_read.exit.i176_crit_edge, label %do.end.i12.i.i173.do.end.i12.i.i173_crit_edge

do.end.i12.i.i173.do.end.i12.i.i173_crit_edge:    ; preds = %do.end.i12.i.i173
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i173

do.end.i12.i.i173.rtcss_read.exit.i176_crit_edge: ; preds = %do.end.i12.i.i173
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i176

rtcss_read.exit.i176:                             ; preds = %do.end.i12.i.i173.rtcss_read.exit.i176_crit_edge, %rtcif_wait.exit.i.i169.rtcss_read.exit.i176_crit_edge
  %134 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i174 = getelementptr i8, ptr %135, i32 8
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i174) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i175 = icmp sgt i32 %136, -1
  br i1 %tobool.not.i175, label %davinci_rtcss_calendar_wait.exit178, label %do.end.i177

do.end.i177:                                      ; preds = %rtcss_read.exit.i176
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i160

davinci_rtcss_calendar_wait.exit178:              ; preds = %rtcss_read.exit.i176
  %137 = and i16 %conv8.i, 255
  %and = zext i16 %137 to i32
  %138 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i180 = getelementptr i8, ptr %139, i32 4
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i180) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i181 = and i32 %140, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i181)
  %tobool.not7.i.i182 = icmp eq i32 %.mask6.i.i181, 0
  br i1 %tobool.not7.i.i182, label %davinci_rtcss_calendar_wait.exit178.rtcif_wait.exit.i192_crit_edge, label %davinci_rtcss_calendar_wait.exit178.do.end.i.i186_crit_edge

davinci_rtcss_calendar_wait.exit178.do.end.i.i186_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit178
  br label %do.end.i.i186

davinci_rtcss_calendar_wait.exit178.rtcif_wait.exit.i192_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit178
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i192

do.end.i.i186:                                    ; preds = %do.end.i.i186.do.end.i.i186_crit_edge, %davinci_rtcss_calendar_wait.exit178.do.end.i.i186_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %141 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i183 = getelementptr i8, ptr %142, i32 4
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i183) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i184 = and i32 %143, 128
  %tobool.not.i.i185 = icmp eq i32 %.mask.i.i184, 0
  br i1 %tobool.not.i.i185, label %do.end.i.i186.rtcif_wait.exit.i192_crit_edge, label %do.end.i.i186.do.end.i.i186_crit_edge

do.end.i.i186.do.end.i.i186_crit_edge:            ; preds = %do.end.i.i186
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i186

do.end.i.i186.rtcif_wait.exit.i192_crit_edge:     ; preds = %do.end.i.i186
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i192

rtcif_wait.exit.i192:                             ; preds = %do.end.i.i186.rtcif_wait.exit.i192_crit_edge, %davinci_rtcss_calendar_wait.exit178.rtcif_wait.exit.i192_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %144 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i187 = getelementptr i8, ptr %145, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i187, i32 402653440) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %146 = shl nuw i32 %and, 24
  %147 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i188 = getelementptr i8, ptr %148, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i188, i32 %146) #5, !srcloc !39
  %149 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i7.i189 = getelementptr i8, ptr %150, i32 4
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i189) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i190 = and i32 %151, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i190)
  %tobool.not7.i9.i191 = icmp eq i32 %.mask6.i8.i190, 0
  br i1 %tobool.not7.i9.i191, label %rtcif_wait.exit.i192.while.cond.i202.preheader_crit_edge, label %rtcif_wait.exit.i192.do.end.i13.i196_crit_edge

rtcif_wait.exit.i192.do.end.i13.i196_crit_edge:   ; preds = %rtcif_wait.exit.i192
  br label %do.end.i13.i196

rtcif_wait.exit.i192.while.cond.i202.preheader_crit_edge: ; preds = %rtcif_wait.exit.i192
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i202.preheader

do.end.i13.i196:                                  ; preds = %do.end.i13.i196.do.end.i13.i196_crit_edge, %rtcif_wait.exit.i192.do.end.i13.i196_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %152 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i10.i193 = getelementptr i8, ptr %153, i32 4
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i193) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i194 = and i32 %154, 128
  %tobool.not.i12.i195 = icmp eq i32 %.mask.i11.i194, 0
  br i1 %tobool.not.i12.i195, label %do.end.i13.i196.while.cond.i202.preheader_crit_edge, label %do.end.i13.i196.do.end.i13.i196_crit_edge

do.end.i13.i196.do.end.i13.i196_crit_edge:        ; preds = %do.end.i13.i196
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i196

do.end.i13.i196.while.cond.i202.preheader_crit_edge: ; preds = %do.end.i13.i196
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i202.preheader

while.cond.i202.preheader:                        ; preds = %do.end.i13.i196.while.cond.i202.preheader_crit_edge, %rtcif_wait.exit.i192.while.cond.i202.preheader_crit_edge
  br label %while.cond.i202

while.cond.i202:                                  ; preds = %do.end.i219, %while.cond.i202.preheader
  %155 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i199 = getelementptr i8, ptr %156, i32 4
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i199) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i200 = and i32 %157, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i200)
  %tobool.not7.i.i.i201 = icmp eq i32 %.mask6.i.i.i200, 0
  br i1 %tobool.not7.i.i.i201, label %while.cond.i202.rtcif_wait.exit.i.i211_crit_edge, label %while.cond.i202.do.end.i.i.i206_crit_edge

while.cond.i202.do.end.i.i.i206_crit_edge:        ; preds = %while.cond.i202
  br label %do.end.i.i.i206

while.cond.i202.rtcif_wait.exit.i.i211_crit_edge: ; preds = %while.cond.i202
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i211

do.end.i.i.i206:                                  ; preds = %do.end.i.i.i206.do.end.i.i.i206_crit_edge, %while.cond.i202.do.end.i.i.i206_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %158 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i203 = getelementptr i8, ptr %159, i32 4
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i203) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i204 = and i32 %160, 128
  %tobool.not.i.i.i205 = icmp eq i32 %.mask.i.i.i204, 0
  br i1 %tobool.not.i.i.i205, label %do.end.i.i.i206.rtcif_wait.exit.i.i211_crit_edge, label %do.end.i.i.i206.do.end.i.i.i206_crit_edge

do.end.i.i.i206.do.end.i.i.i206_crit_edge:        ; preds = %do.end.i.i.i206
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i206

do.end.i.i.i206.rtcif_wait.exit.i.i211_crit_edge: ; preds = %do.end.i.i.i206
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i211

rtcif_wait.exit.i.i211:                           ; preds = %do.end.i.i.i206.rtcif_wait.exit.i.i211_crit_edge, %while.cond.i202.rtcif_wait.exit.i.i211_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %161 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i207 = getelementptr i8, ptr %162, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i207, i32 335544577) #5, !srcloc !39
  %163 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i208 = getelementptr i8, ptr %164, i32 4
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i208) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i209 = and i32 %165, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i209)
  %tobool.not7.i8.i.i210 = icmp eq i32 %.mask6.i7.i.i209, 0
  br i1 %tobool.not7.i8.i.i210, label %rtcif_wait.exit.i.i211.rtcss_read.exit.i218_crit_edge, label %rtcif_wait.exit.i.i211.do.end.i12.i.i215_crit_edge

rtcif_wait.exit.i.i211.do.end.i12.i.i215_crit_edge: ; preds = %rtcif_wait.exit.i.i211
  br label %do.end.i12.i.i215

rtcif_wait.exit.i.i211.rtcss_read.exit.i218_crit_edge: ; preds = %rtcif_wait.exit.i.i211
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i218

do.end.i12.i.i215:                                ; preds = %do.end.i12.i.i215.do.end.i12.i.i215_crit_edge, %rtcif_wait.exit.i.i211.do.end.i12.i.i215_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %166 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i212 = getelementptr i8, ptr %167, i32 4
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i212) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i213 = and i32 %168, 128
  %tobool.not.i11.i.i214 = icmp eq i32 %.mask.i10.i.i213, 0
  br i1 %tobool.not.i11.i.i214, label %do.end.i12.i.i215.rtcss_read.exit.i218_crit_edge, label %do.end.i12.i.i215.do.end.i12.i.i215_crit_edge

do.end.i12.i.i215.do.end.i12.i.i215_crit_edge:    ; preds = %do.end.i12.i.i215
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i215

do.end.i12.i.i215.rtcss_read.exit.i218_crit_edge: ; preds = %do.end.i12.i.i215
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i218

rtcss_read.exit.i218:                             ; preds = %do.end.i12.i.i215.rtcss_read.exit.i218_crit_edge, %rtcif_wait.exit.i.i211.rtcss_read.exit.i218_crit_edge
  %169 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i216 = getelementptr i8, ptr %170, i32 8
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i216) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i217 = icmp sgt i32 %171, -1
  br i1 %tobool.not.i217, label %davinci_rtcss_calendar_wait.exit220, label %do.end.i219

do.end.i219:                                      ; preds = %rtcss_read.exit.i218
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i202

davinci_rtcss_calendar_wait.exit220:              ; preds = %rtcss_read.exit.i218
  %172 = lshr i16 %conv8.i, 8
  %173 = zext i16 %172 to i32
  %174 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i222 = getelementptr i8, ptr %175, i32 4
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i222) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i223 = and i32 %176, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i223)
  %tobool.not7.i.i224 = icmp eq i32 %.mask6.i.i223, 0
  br i1 %tobool.not7.i.i224, label %davinci_rtcss_calendar_wait.exit220.rtcif_wait.exit.i234_crit_edge, label %davinci_rtcss_calendar_wait.exit220.do.end.i.i228_crit_edge

davinci_rtcss_calendar_wait.exit220.do.end.i.i228_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit220
  br label %do.end.i.i228

davinci_rtcss_calendar_wait.exit220.rtcif_wait.exit.i234_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit220
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i234

do.end.i.i228:                                    ; preds = %do.end.i.i228.do.end.i.i228_crit_edge, %davinci_rtcss_calendar_wait.exit220.do.end.i.i228_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %177 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i225 = getelementptr i8, ptr %178, i32 4
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i225) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i226 = and i32 %179, 128
  %tobool.not.i.i227 = icmp eq i32 %.mask.i.i226, 0
  br i1 %tobool.not.i.i227, label %do.end.i.i228.rtcif_wait.exit.i234_crit_edge, label %do.end.i.i228.do.end.i.i228_crit_edge

do.end.i.i228.do.end.i.i228_crit_edge:            ; preds = %do.end.i.i228
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i228

do.end.i.i228.rtcif_wait.exit.i234_crit_edge:     ; preds = %do.end.i.i228
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i234

rtcif_wait.exit.i234:                             ; preds = %do.end.i.i228.rtcif_wait.exit.i234_crit_edge, %davinci_rtcss_calendar_wait.exit220.rtcif_wait.exit.i234_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %180 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i229 = getelementptr i8, ptr %181, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i229, i32 419430656) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %182 = shl nuw i32 %173, 24
  %183 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i230 = getelementptr i8, ptr %184, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i230, i32 %182) #5, !srcloc !39
  %185 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i7.i231 = getelementptr i8, ptr %186, i32 4
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i231) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i232 = and i32 %187, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i232)
  %tobool.not7.i9.i233 = icmp eq i32 %.mask6.i8.i232, 0
  br i1 %tobool.not7.i9.i233, label %rtcif_wait.exit.i234.rtcss_write.exit239_crit_edge, label %rtcif_wait.exit.i234.do.end.i13.i238_crit_edge

rtcif_wait.exit.i234.do.end.i13.i238_crit_edge:   ; preds = %rtcif_wait.exit.i234
  br label %do.end.i13.i238

rtcif_wait.exit.i234.rtcss_write.exit239_crit_edge: ; preds = %rtcif_wait.exit.i234
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit239

do.end.i13.i238:                                  ; preds = %do.end.i13.i238.do.end.i13.i238_crit_edge, %rtcif_wait.exit.i234.do.end.i13.i238_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %188 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i10.i235 = getelementptr i8, ptr %189, i32 4
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i235) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i236 = and i32 %190, 128
  %tobool.not.i12.i237 = icmp eq i32 %.mask.i11.i236, 0
  br i1 %tobool.not.i12.i237, label %do.end.i13.i238.rtcss_write.exit239_crit_edge, label %do.end.i13.i238.do.end.i13.i238_crit_edge

do.end.i13.i238.do.end.i13.i238_crit_edge:        ; preds = %do.end.i13.i238
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i238

do.end.i13.i238.rtcss_write.exit239_crit_edge:    ; preds = %do.end.i13.i238
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit239

rtcss_write.exit239:                              ; preds = %do.end.i13.i238.rtcss_write.exit239_crit_edge, %rtcif_wait.exit.i234.rtcss_write.exit239_crit_edge
  %191 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i241 = getelementptr i8, ptr %192, i32 4
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i241) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i242 = and i32 %193, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i242)
  %tobool.not7.i.i243 = icmp eq i32 %.mask6.i.i242, 0
  br i1 %tobool.not7.i.i243, label %rtcss_write.exit239.rtcif_wait.exit.i249_crit_edge, label %rtcss_write.exit239.do.end.i.i247_crit_edge

rtcss_write.exit239.do.end.i.i247_crit_edge:      ; preds = %rtcss_write.exit239
  br label %do.end.i.i247

rtcss_write.exit239.rtcif_wait.exit.i249_crit_edge: ; preds = %rtcss_write.exit239
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i249

do.end.i.i247:                                    ; preds = %do.end.i.i247.do.end.i.i247_crit_edge, %rtcss_write.exit239.do.end.i.i247_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %194 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i244 = getelementptr i8, ptr %195, i32 4
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i244) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i245 = and i32 %196, 128
  %tobool.not.i.i246 = icmp eq i32 %.mask.i.i245, 0
  br i1 %tobool.not.i.i246, label %do.end.i.i247.rtcif_wait.exit.i249_crit_edge, label %do.end.i.i247.do.end.i.i247_crit_edge

do.end.i.i247.do.end.i.i247_crit_edge:            ; preds = %do.end.i.i247
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i247

do.end.i.i247.rtcif_wait.exit.i249_crit_edge:     ; preds = %do.end.i.i247
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i249

rtcif_wait.exit.i249:                             ; preds = %do.end.i.i247.rtcif_wait.exit.i249_crit_edge, %rtcss_write.exit239.rtcif_wait.exit.i249_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %197 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i248 = getelementptr i8, ptr %198, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i248, i32 335544577) #5, !srcloc !39
  %199 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i = getelementptr i8, ptr %200, i32 4
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i = and i32 %201, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i)
  %tobool.not7.i8.i = icmp eq i32 %.mask6.i7.i, 0
  br i1 %tobool.not7.i8.i, label %rtcif_wait.exit.i249.rtcss_read.exit_crit_edge, label %rtcif_wait.exit.i249.do.end.i12.i_crit_edge

rtcif_wait.exit.i249.do.end.i12.i_crit_edge:      ; preds = %rtcif_wait.exit.i249
  br label %do.end.i12.i

rtcif_wait.exit.i249.rtcss_read.exit_crit_edge:   ; preds = %rtcif_wait.exit.i249
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit

do.end.i12.i:                                     ; preds = %do.end.i12.i.do.end.i12.i_crit_edge, %rtcif_wait.exit.i249.do.end.i12.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %202 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i = getelementptr i8, ptr %203, i32 4
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i = and i32 %204, 128
  %tobool.not.i11.i = icmp eq i32 %.mask.i10.i, 0
  br i1 %tobool.not.i11.i, label %do.end.i12.i.rtcss_read.exit_crit_edge, label %do.end.i12.i.do.end.i12.i_crit_edge

do.end.i12.i.do.end.i12.i_crit_edge:              ; preds = %do.end.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i

do.end.i12.i.rtcss_read.exit_crit_edge:           ; preds = %do.end.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit

rtcss_read.exit:                                  ; preds = %do.end.i12.i.rtcss_read.exit_crit_edge, %rtcif_wait.exit.i249.rtcss_read.exit_crit_edge
  %205 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %206, i32 8
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #5, !srcloc !40
  %208 = and i32 %207, -33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %209 = or i32 %208, 16777216
  %210 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i251 = getelementptr i8, ptr %211, i32 4
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i251) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i252 = and i32 %212, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i252)
  %tobool.not7.i.i253 = icmp eq i32 %.mask6.i.i252, 0
  br i1 %tobool.not7.i.i253, label %rtcss_read.exit.rtcif_wait.exit.i263_crit_edge, label %rtcss_read.exit.do.end.i.i257_crit_edge

rtcss_read.exit.do.end.i.i257_crit_edge:          ; preds = %rtcss_read.exit
  br label %do.end.i.i257

rtcss_read.exit.rtcif_wait.exit.i263_crit_edge:   ; preds = %rtcss_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i263

do.end.i.i257:                                    ; preds = %do.end.i.i257.do.end.i.i257_crit_edge, %rtcss_read.exit.do.end.i.i257_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %213 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i254 = getelementptr i8, ptr %214, i32 4
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i254) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i255 = and i32 %215, 128
  %tobool.not.i.i256 = icmp eq i32 %.mask.i.i255, 0
  br i1 %tobool.not.i.i256, label %do.end.i.i257.rtcif_wait.exit.i263_crit_edge, label %do.end.i.i257.do.end.i.i257_crit_edge

do.end.i.i257.do.end.i.i257_crit_edge:            ; preds = %do.end.i.i257
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i257

do.end.i.i257.rtcif_wait.exit.i263_crit_edge:     ; preds = %do.end.i.i257
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i263

rtcif_wait.exit.i263:                             ; preds = %do.end.i.i257.rtcif_wait.exit.i263_crit_edge, %rtcss_read.exit.rtcif_wait.exit.i263_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %216 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i258 = getelementptr i8, ptr %217, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i258, i32 335544576) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %218 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i259 = getelementptr i8, ptr %219, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i259, i32 %209) #5, !srcloc !39
  %220 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i7.i260 = getelementptr i8, ptr %221, i32 4
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i260) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i261 = and i32 %222, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i261)
  %tobool.not7.i9.i262 = icmp eq i32 %.mask6.i8.i261, 0
  br i1 %tobool.not7.i9.i262, label %rtcif_wait.exit.i263.rtcss_write.exit268_crit_edge, label %rtcif_wait.exit.i263.do.end.i13.i267_crit_edge

rtcif_wait.exit.i263.do.end.i13.i267_crit_edge:   ; preds = %rtcif_wait.exit.i263
  br label %do.end.i13.i267

rtcif_wait.exit.i263.rtcss_write.exit268_crit_edge: ; preds = %rtcif_wait.exit.i263
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit268

do.end.i13.i267:                                  ; preds = %do.end.i13.i267.do.end.i13.i267_crit_edge, %rtcif_wait.exit.i263.do.end.i13.i267_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %223 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i10.i264 = getelementptr i8, ptr %224, i32 4
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i264) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i265 = and i32 %225, 128
  %tobool.not.i12.i266 = icmp eq i32 %.mask.i11.i265, 0
  br i1 %tobool.not.i12.i266, label %do.end.i13.i267.rtcss_write.exit268_crit_edge, label %do.end.i13.i267.do.end.i13.i267_crit_edge

do.end.i13.i267.do.end.i13.i267_crit_edge:        ; preds = %do.end.i13.i267
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i267

do.end.i13.i267.rtcss_write.exit268_crit_edge:    ; preds = %do.end.i13.i267
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit268

rtcss_write.exit268:                              ; preds = %do.end.i13.i267.rtcss_write.exit268_crit_edge, %rtcif_wait.exit.i263.rtcss_write.exit268_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @davinci_rtc_lock, i32 noundef %call3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %2 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %time, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @davinci_rtc_lock) #5
  %base.i.i.i.i = getelementptr inbounds %struct.davinci_rtc, ptr %1, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %entry
  %3 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i)
  %tobool.not7.i.i.i = icmp eq i32 %.mask6.i.i.i, 0
  br i1 %tobool.not7.i.i.i, label %while.cond.i.rtcif_wait.exit.i.i_crit_edge, label %while.cond.i.do.end.i.i.i_crit_edge

while.cond.i.do.end.i.i.i_crit_edge:              ; preds = %while.cond.i
  br label %do.end.i.i.i

while.cond.i.rtcif_wait.exit.i.i_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %while.cond.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %6 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i = and i32 %8, 128
  %tobool.not.i.i.i = icmp eq i32 %.mask.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.rtcif_wait.exit.i.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i

do.end.i.i.i.rtcif_wait.exit.i.i_crit_edge:       ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i

rtcif_wait.exit.i.i:                              ; preds = %do.end.i.i.i.rtcif_wait.exit.i.i_crit_edge, %while.cond.i.rtcif_wait.exit.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 335544577) #5, !srcloc !39
  %11 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i)
  %tobool.not7.i8.i.i = icmp eq i32 %.mask6.i7.i.i, 0
  br i1 %tobool.not7.i8.i.i, label %rtcif_wait.exit.i.i.rtcss_read.exit.i_crit_edge, label %rtcif_wait.exit.i.i.do.end.i12.i.i_crit_edge

rtcif_wait.exit.i.i.do.end.i12.i.i_crit_edge:     ; preds = %rtcif_wait.exit.i.i
  br label %do.end.i12.i.i

rtcif_wait.exit.i.i.rtcss_read.exit.i_crit_edge:  ; preds = %rtcif_wait.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i

do.end.i12.i.i:                                   ; preds = %do.end.i12.i.i.do.end.i12.i.i_crit_edge, %rtcif_wait.exit.i.i.do.end.i12.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %14 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i = and i32 %16, 128
  %tobool.not.i11.i.i = icmp eq i32 %.mask.i10.i.i, 0
  br i1 %tobool.not.i11.i.i, label %do.end.i12.i.i.rtcss_read.exit.i_crit_edge, label %do.end.i12.i.i.do.end.i12.i.i_crit_edge

do.end.i12.i.i.do.end.i12.i.i_crit_edge:          ; preds = %do.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i

do.end.i12.i.i.rtcss_read.exit.i_crit_edge:       ; preds = %do.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i

rtcss_read.exit.i:                                ; preds = %do.end.i12.i.i.rtcss_read.exit.i_crit_edge, %rtcif_wait.exit.i.i.rtcss_read.exit.i_crit_edge
  %17 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i = icmp sgt i32 %19, -1
  br i1 %tobool.not.i, label %davinci_rtcss_calendar_wait.exit, label %do.end.i

do.end.i:                                         ; preds = %rtcss_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i

davinci_rtcss_calendar_wait.exit:                 ; preds = %rtcss_read.exit.i
  %20 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i)
  %tobool.not7.i.i = icmp eq i32 %.mask6.i.i, 0
  br i1 %tobool.not7.i.i, label %davinci_rtcss_calendar_wait.exit.rtcif_wait.exit.i_crit_edge, label %davinci_rtcss_calendar_wait.exit.do.end.i.i_crit_edge

davinci_rtcss_calendar_wait.exit.do.end.i.i_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit
  br label %do.end.i.i

davinci_rtcss_calendar_wait.exit.rtcif_wait.exit.i_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %davinci_rtcss_calendar_wait.exit.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %23 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i52 = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i52) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i = and i32 %25, 128
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.rtcif_wait.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

do.end.i.i.rtcif_wait.exit.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

rtcif_wait.exit.i:                                ; preds = %do.end.i.i.rtcif_wait.exit.i_crit_edge, %davinci_rtcss_calendar_wait.exit.rtcif_wait.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 436207873) #5, !srcloc !39
  %28 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i)
  %tobool.not7.i8.i = icmp eq i32 %.mask6.i7.i, 0
  br i1 %tobool.not7.i8.i, label %rtcif_wait.exit.i.rtcss_read.exit_crit_edge, label %rtcif_wait.exit.i.do.end.i12.i_crit_edge

rtcif_wait.exit.i.do.end.i12.i_crit_edge:         ; preds = %rtcif_wait.exit.i
  br label %do.end.i12.i

rtcif_wait.exit.i.rtcss_read.exit_crit_edge:      ; preds = %rtcif_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit

do.end.i12.i:                                     ; preds = %do.end.i12.i.do.end.i12.i_crit_edge, %rtcif_wait.exit.i.do.end.i12.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %31 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i = getelementptr i8, ptr %32, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i = and i32 %33, 128
  %tobool.not.i11.i = icmp eq i32 %.mask.i10.i, 0
  br i1 %tobool.not.i11.i, label %do.end.i12.i.rtcss_read.exit_crit_edge, label %do.end.i12.i.do.end.i12.i_crit_edge

do.end.i12.i.do.end.i12.i_crit_edge:              ; preds = %do.end.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i

do.end.i12.i.rtcss_read.exit_crit_edge:           ; preds = %do.end.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit

rtcss_read.exit:                                  ; preds = %do.end.i12.i.rtcss_read.exit_crit_edge, %rtcif_wait.exit.i.rtcss_read.exit_crit_edge
  %34 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %35, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #5, !srcloc !40
  %37 = lshr i32 %36, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %conv1.i = trunc i32 %37 to i8
  %call7 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv1.i) #9
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call7, ptr %tm_min, align 4
  br label %while.cond.i57

while.cond.i57:                                   ; preds = %do.end.i74, %rtcss_read.exit
  %39 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i54 = getelementptr i8, ptr %40, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i54) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i55 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i55)
  %tobool.not7.i.i.i56 = icmp eq i32 %.mask6.i.i.i55, 0
  br i1 %tobool.not7.i.i.i56, label %while.cond.i57.rtcif_wait.exit.i.i66_crit_edge, label %while.cond.i57.do.end.i.i.i61_crit_edge

while.cond.i57.do.end.i.i.i61_crit_edge:          ; preds = %while.cond.i57
  br label %do.end.i.i.i61

while.cond.i57.rtcif_wait.exit.i.i66_crit_edge:   ; preds = %while.cond.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i66

do.end.i.i.i61:                                   ; preds = %do.end.i.i.i61.do.end.i.i.i61_crit_edge, %while.cond.i57.do.end.i.i.i61_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %42 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i58 = getelementptr i8, ptr %43, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i58) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i59 = and i32 %44, 128
  %tobool.not.i.i.i60 = icmp eq i32 %.mask.i.i.i59, 0
  br i1 %tobool.not.i.i.i60, label %do.end.i.i.i61.rtcif_wait.exit.i.i66_crit_edge, label %do.end.i.i.i61.do.end.i.i.i61_crit_edge

do.end.i.i.i61.do.end.i.i.i61_crit_edge:          ; preds = %do.end.i.i.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i61

do.end.i.i.i61.rtcif_wait.exit.i.i66_crit_edge:   ; preds = %do.end.i.i.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i66

rtcif_wait.exit.i.i66:                            ; preds = %do.end.i.i.i61.rtcif_wait.exit.i.i66_crit_edge, %while.cond.i57.rtcif_wait.exit.i.i66_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i62 = getelementptr i8, ptr %46, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i62, i32 335544577) #5, !srcloc !39
  %47 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i63 = getelementptr i8, ptr %48, i32 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i63) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i64 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i64)
  %tobool.not7.i8.i.i65 = icmp eq i32 %.mask6.i7.i.i64, 0
  br i1 %tobool.not7.i8.i.i65, label %rtcif_wait.exit.i.i66.rtcss_read.exit.i73_crit_edge, label %rtcif_wait.exit.i.i66.do.end.i12.i.i70_crit_edge

rtcif_wait.exit.i.i66.do.end.i12.i.i70_crit_edge: ; preds = %rtcif_wait.exit.i.i66
  br label %do.end.i12.i.i70

rtcif_wait.exit.i.i66.rtcss_read.exit.i73_crit_edge: ; preds = %rtcif_wait.exit.i.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i73

do.end.i12.i.i70:                                 ; preds = %do.end.i12.i.i70.do.end.i12.i.i70_crit_edge, %rtcif_wait.exit.i.i66.do.end.i12.i.i70_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %50 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i67 = getelementptr i8, ptr %51, i32 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i67) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i68 = and i32 %52, 128
  %tobool.not.i11.i.i69 = icmp eq i32 %.mask.i10.i.i68, 0
  br i1 %tobool.not.i11.i.i69, label %do.end.i12.i.i70.rtcss_read.exit.i73_crit_edge, label %do.end.i12.i.i70.do.end.i12.i.i70_crit_edge

do.end.i12.i.i70.do.end.i12.i.i70_crit_edge:      ; preds = %do.end.i12.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i70

do.end.i12.i.i70.rtcss_read.exit.i73_crit_edge:   ; preds = %do.end.i12.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i73

rtcss_read.exit.i73:                              ; preds = %do.end.i12.i.i70.rtcss_read.exit.i73_crit_edge, %rtcif_wait.exit.i.i66.rtcss_read.exit.i73_crit_edge
  %53 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i71 = getelementptr i8, ptr %54, i32 8
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i71) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i72 = icmp sgt i32 %55, -1
  br i1 %tobool.not.i72, label %davinci_rtcss_calendar_wait.exit75, label %do.end.i74

do.end.i74:                                       ; preds = %rtcss_read.exit.i73
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i57

davinci_rtcss_calendar_wait.exit75:               ; preds = %rtcss_read.exit.i73
  %56 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i77 = getelementptr i8, ptr %57, i32 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i77) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i78 = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i78)
  %tobool.not7.i.i79 = icmp eq i32 %.mask6.i.i78, 0
  br i1 %tobool.not7.i.i79, label %davinci_rtcss_calendar_wait.exit75.rtcif_wait.exit.i88_crit_edge, label %davinci_rtcss_calendar_wait.exit75.do.end.i.i83_crit_edge

davinci_rtcss_calendar_wait.exit75.do.end.i.i83_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit75
  br label %do.end.i.i83

davinci_rtcss_calendar_wait.exit75.rtcif_wait.exit.i88_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit75
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i88

do.end.i.i83:                                     ; preds = %do.end.i.i83.do.end.i.i83_crit_edge, %davinci_rtcss_calendar_wait.exit75.do.end.i.i83_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %59 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i80 = getelementptr i8, ptr %60, i32 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i80) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i81 = and i32 %61, 128
  %tobool.not.i.i82 = icmp eq i32 %.mask.i.i81, 0
  br i1 %tobool.not.i.i82, label %do.end.i.i83.rtcif_wait.exit.i88_crit_edge, label %do.end.i.i83.do.end.i.i83_crit_edge

do.end.i.i83.do.end.i.i83_crit_edge:              ; preds = %do.end.i.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i83

do.end.i.i83.rtcif_wait.exit.i88_crit_edge:       ; preds = %do.end.i.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i88

rtcif_wait.exit.i88:                              ; preds = %do.end.i.i83.rtcif_wait.exit.i88_crit_edge, %davinci_rtcss_calendar_wait.exit75.rtcif_wait.exit.i88_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i84 = getelementptr i8, ptr %63, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84, i32 452985089) #5, !srcloc !39
  %64 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i85 = getelementptr i8, ptr %65, i32 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i85) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i86 = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i86)
  %tobool.not7.i8.i87 = icmp eq i32 %.mask6.i7.i86, 0
  br i1 %tobool.not7.i8.i87, label %rtcif_wait.exit.i88.rtcss_read.exit95_crit_edge, label %rtcif_wait.exit.i88.do.end.i12.i92_crit_edge

rtcif_wait.exit.i88.do.end.i12.i92_crit_edge:     ; preds = %rtcif_wait.exit.i88
  br label %do.end.i12.i92

rtcif_wait.exit.i88.rtcss_read.exit95_crit_edge:  ; preds = %rtcif_wait.exit.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit95

do.end.i12.i92:                                   ; preds = %do.end.i12.i92.do.end.i12.i92_crit_edge, %rtcif_wait.exit.i88.do.end.i12.i92_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %67 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i89 = getelementptr i8, ptr %68, i32 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i89) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i90 = and i32 %69, 128
  %tobool.not.i11.i91 = icmp eq i32 %.mask.i10.i90, 0
  br i1 %tobool.not.i11.i91, label %do.end.i12.i92.rtcss_read.exit95_crit_edge, label %do.end.i12.i92.do.end.i12.i92_crit_edge

do.end.i12.i92.do.end.i12.i92_crit_edge:          ; preds = %do.end.i12.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i92

do.end.i12.i92.rtcss_read.exit95_crit_edge:       ; preds = %do.end.i12.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit95

rtcss_read.exit95:                                ; preds = %do.end.i12.i92.rtcss_read.exit95_crit_edge, %rtcif_wait.exit.i88.rtcss_read.exit95_crit_edge
  %70 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i93 = getelementptr i8, ptr %71, i32 8
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i93) #5, !srcloc !40
  %73 = lshr i32 %72, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %conv1.i94 = trunc i32 %73 to i8
  %call10 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv1.i94) #9
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %74 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call10, ptr %tm_hour, align 4
  br label %while.cond.i100

while.cond.i100:                                  ; preds = %do.end.i117, %rtcss_read.exit95
  %75 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i97 = getelementptr i8, ptr %76, i32 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i97) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i98 = and i32 %77, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i98)
  %tobool.not7.i.i.i99 = icmp eq i32 %.mask6.i.i.i98, 0
  br i1 %tobool.not7.i.i.i99, label %while.cond.i100.rtcif_wait.exit.i.i109_crit_edge, label %while.cond.i100.do.end.i.i.i104_crit_edge

while.cond.i100.do.end.i.i.i104_crit_edge:        ; preds = %while.cond.i100
  br label %do.end.i.i.i104

while.cond.i100.rtcif_wait.exit.i.i109_crit_edge: ; preds = %while.cond.i100
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i109

do.end.i.i.i104:                                  ; preds = %do.end.i.i.i104.do.end.i.i.i104_crit_edge, %while.cond.i100.do.end.i.i.i104_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %78 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i101 = getelementptr i8, ptr %79, i32 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i101) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i102 = and i32 %80, 128
  %tobool.not.i.i.i103 = icmp eq i32 %.mask.i.i.i102, 0
  br i1 %tobool.not.i.i.i103, label %do.end.i.i.i104.rtcif_wait.exit.i.i109_crit_edge, label %do.end.i.i.i104.do.end.i.i.i104_crit_edge

do.end.i.i.i104.do.end.i.i.i104_crit_edge:        ; preds = %do.end.i.i.i104
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i104

do.end.i.i.i104.rtcif_wait.exit.i.i109_crit_edge: ; preds = %do.end.i.i.i104
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i109

rtcif_wait.exit.i.i109:                           ; preds = %do.end.i.i.i104.rtcif_wait.exit.i.i109_crit_edge, %while.cond.i100.rtcif_wait.exit.i.i109_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i105 = getelementptr i8, ptr %82, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i105, i32 335544577) #5, !srcloc !39
  %83 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i106 = getelementptr i8, ptr %84, i32 4
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i106) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i107 = and i32 %85, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i107)
  %tobool.not7.i8.i.i108 = icmp eq i32 %.mask6.i7.i.i107, 0
  br i1 %tobool.not7.i8.i.i108, label %rtcif_wait.exit.i.i109.rtcss_read.exit.i116_crit_edge, label %rtcif_wait.exit.i.i109.do.end.i12.i.i113_crit_edge

rtcif_wait.exit.i.i109.do.end.i12.i.i113_crit_edge: ; preds = %rtcif_wait.exit.i.i109
  br label %do.end.i12.i.i113

rtcif_wait.exit.i.i109.rtcss_read.exit.i116_crit_edge: ; preds = %rtcif_wait.exit.i.i109
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i116

do.end.i12.i.i113:                                ; preds = %do.end.i12.i.i113.do.end.i12.i.i113_crit_edge, %rtcif_wait.exit.i.i109.do.end.i12.i.i113_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %86 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i110 = getelementptr i8, ptr %87, i32 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i110) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i111 = and i32 %88, 128
  %tobool.not.i11.i.i112 = icmp eq i32 %.mask.i10.i.i111, 0
  br i1 %tobool.not.i11.i.i112, label %do.end.i12.i.i113.rtcss_read.exit.i116_crit_edge, label %do.end.i12.i.i113.do.end.i12.i.i113_crit_edge

do.end.i12.i.i113.do.end.i12.i.i113_crit_edge:    ; preds = %do.end.i12.i.i113
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i113

do.end.i12.i.i113.rtcss_read.exit.i116_crit_edge: ; preds = %do.end.i12.i.i113
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i116

rtcss_read.exit.i116:                             ; preds = %do.end.i12.i.i113.rtcss_read.exit.i116_crit_edge, %rtcif_wait.exit.i.i109.rtcss_read.exit.i116_crit_edge
  %89 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i114 = getelementptr i8, ptr %90, i32 8
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i114) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i115 = icmp sgt i32 %91, -1
  br i1 %tobool.not.i115, label %davinci_rtcss_calendar_wait.exit118, label %do.end.i117

do.end.i117:                                      ; preds = %rtcss_read.exit.i116
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i100

davinci_rtcss_calendar_wait.exit118:              ; preds = %rtcss_read.exit.i116
  %92 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i120 = getelementptr i8, ptr %93, i32 4
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i120) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i121 = and i32 %94, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i121)
  %tobool.not7.i.i122 = icmp eq i32 %.mask6.i.i121, 0
  br i1 %tobool.not7.i.i122, label %davinci_rtcss_calendar_wait.exit118.rtcif_wait.exit.i131_crit_edge, label %davinci_rtcss_calendar_wait.exit118.do.end.i.i126_crit_edge

davinci_rtcss_calendar_wait.exit118.do.end.i.i126_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit118
  br label %do.end.i.i126

davinci_rtcss_calendar_wait.exit118.rtcif_wait.exit.i131_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit118
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i131

do.end.i.i126:                                    ; preds = %do.end.i.i126.do.end.i.i126_crit_edge, %davinci_rtcss_calendar_wait.exit118.do.end.i.i126_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %95 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i123 = getelementptr i8, ptr %96, i32 4
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i123) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i124 = and i32 %97, 128
  %tobool.not.i.i125 = icmp eq i32 %.mask.i.i124, 0
  br i1 %tobool.not.i.i125, label %do.end.i.i126.rtcif_wait.exit.i131_crit_edge, label %do.end.i.i126.do.end.i.i126_crit_edge

do.end.i.i126.do.end.i.i126_crit_edge:            ; preds = %do.end.i.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i126

do.end.i.i126.rtcif_wait.exit.i131_crit_edge:     ; preds = %do.end.i.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i131

rtcif_wait.exit.i131:                             ; preds = %do.end.i.i126.rtcif_wait.exit.i131_crit_edge, %davinci_rtcss_calendar_wait.exit118.rtcif_wait.exit.i131_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i127 = getelementptr i8, ptr %99, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i127, i32 469762305) #5, !srcloc !39
  %100 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i128 = getelementptr i8, ptr %101, i32 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i128) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i129 = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i129)
  %tobool.not7.i8.i130 = icmp eq i32 %.mask6.i7.i129, 0
  br i1 %tobool.not7.i8.i130, label %rtcif_wait.exit.i131.rtcss_read.exit138_crit_edge, label %rtcif_wait.exit.i131.do.end.i12.i135_crit_edge

rtcif_wait.exit.i131.do.end.i12.i135_crit_edge:   ; preds = %rtcif_wait.exit.i131
  br label %do.end.i12.i135

rtcif_wait.exit.i131.rtcss_read.exit138_crit_edge: ; preds = %rtcif_wait.exit.i131
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit138

do.end.i12.i135:                                  ; preds = %do.end.i12.i135.do.end.i12.i135_crit_edge, %rtcif_wait.exit.i131.do.end.i12.i135_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %103 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i132 = getelementptr i8, ptr %104, i32 4
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i132) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i133 = and i32 %105, 128
  %tobool.not.i11.i134 = icmp eq i32 %.mask.i10.i133, 0
  br i1 %tobool.not.i11.i134, label %do.end.i12.i135.rtcss_read.exit138_crit_edge, label %do.end.i12.i135.do.end.i12.i135_crit_edge

do.end.i12.i135.do.end.i12.i135_crit_edge:        ; preds = %do.end.i12.i135
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i135

do.end.i12.i135.rtcss_read.exit138_crit_edge:     ; preds = %do.end.i12.i135
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit138

rtcss_read.exit138:                               ; preds = %do.end.i12.i135.rtcss_read.exit138_crit_edge, %rtcif_wait.exit.i131.rtcss_read.exit138_crit_edge
  %106 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i136 = getelementptr i8, ptr %107, i32 8
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i136) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  br label %while.cond.i143

while.cond.i143:                                  ; preds = %do.end.i160, %rtcss_read.exit138
  %109 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i140 = getelementptr i8, ptr %110, i32 4
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i140) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i141 = and i32 %111, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i141)
  %tobool.not7.i.i.i142 = icmp eq i32 %.mask6.i.i.i141, 0
  br i1 %tobool.not7.i.i.i142, label %while.cond.i143.rtcif_wait.exit.i.i152_crit_edge, label %while.cond.i143.do.end.i.i.i147_crit_edge

while.cond.i143.do.end.i.i.i147_crit_edge:        ; preds = %while.cond.i143
  br label %do.end.i.i.i147

while.cond.i143.rtcif_wait.exit.i.i152_crit_edge: ; preds = %while.cond.i143
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i152

do.end.i.i.i147:                                  ; preds = %do.end.i.i.i147.do.end.i.i.i147_crit_edge, %while.cond.i143.do.end.i.i.i147_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %112 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i144 = getelementptr i8, ptr %113, i32 4
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i144) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i145 = and i32 %114, 128
  %tobool.not.i.i.i146 = icmp eq i32 %.mask.i.i.i145, 0
  br i1 %tobool.not.i.i.i146, label %do.end.i.i.i147.rtcif_wait.exit.i.i152_crit_edge, label %do.end.i.i.i147.do.end.i.i.i147_crit_edge

do.end.i.i.i147.do.end.i.i.i147_crit_edge:        ; preds = %do.end.i.i.i147
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i147

do.end.i.i.i147.rtcif_wait.exit.i.i152_crit_edge: ; preds = %do.end.i.i.i147
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i152

rtcif_wait.exit.i.i152:                           ; preds = %do.end.i.i.i147.rtcif_wait.exit.i.i152_crit_edge, %while.cond.i143.rtcif_wait.exit.i.i152_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %115 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i148 = getelementptr i8, ptr %116, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i148, i32 335544577) #5, !srcloc !39
  %117 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i149 = getelementptr i8, ptr %118, i32 4
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i149) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i150 = and i32 %119, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i150)
  %tobool.not7.i8.i.i151 = icmp eq i32 %.mask6.i7.i.i150, 0
  br i1 %tobool.not7.i8.i.i151, label %rtcif_wait.exit.i.i152.rtcss_read.exit.i159_crit_edge, label %rtcif_wait.exit.i.i152.do.end.i12.i.i156_crit_edge

rtcif_wait.exit.i.i152.do.end.i12.i.i156_crit_edge: ; preds = %rtcif_wait.exit.i.i152
  br label %do.end.i12.i.i156

rtcif_wait.exit.i.i152.rtcss_read.exit.i159_crit_edge: ; preds = %rtcif_wait.exit.i.i152
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i159

do.end.i12.i.i156:                                ; preds = %do.end.i12.i.i156.do.end.i12.i.i156_crit_edge, %rtcif_wait.exit.i.i152.do.end.i12.i.i156_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %120 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i153 = getelementptr i8, ptr %121, i32 4
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i153) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i154 = and i32 %122, 128
  %tobool.not.i11.i.i155 = icmp eq i32 %.mask.i10.i.i154, 0
  br i1 %tobool.not.i11.i.i155, label %do.end.i12.i.i156.rtcss_read.exit.i159_crit_edge, label %do.end.i12.i.i156.do.end.i12.i.i156_crit_edge

do.end.i12.i.i156.do.end.i12.i.i156_crit_edge:    ; preds = %do.end.i12.i.i156
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i156

do.end.i12.i.i156.rtcss_read.exit.i159_crit_edge: ; preds = %do.end.i12.i.i156
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i159

rtcss_read.exit.i159:                             ; preds = %do.end.i12.i.i156.rtcss_read.exit.i159_crit_edge, %rtcif_wait.exit.i.i152.rtcss_read.exit.i159_crit_edge
  %123 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i157 = getelementptr i8, ptr %124, i32 8
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i157) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i158 = icmp sgt i32 %125, -1
  br i1 %tobool.not.i158, label %davinci_rtcss_calendar_wait.exit161, label %do.end.i160

do.end.i160:                                      ; preds = %rtcss_read.exit.i159
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i143

davinci_rtcss_calendar_wait.exit161:              ; preds = %rtcss_read.exit.i159
  %126 = lshr i32 %108, 24
  %127 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i163 = getelementptr i8, ptr %128, i32 4
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i163) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i164 = and i32 %129, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i164)
  %tobool.not7.i.i165 = icmp eq i32 %.mask6.i.i164, 0
  br i1 %tobool.not7.i.i165, label %davinci_rtcss_calendar_wait.exit161.rtcif_wait.exit.i174_crit_edge, label %davinci_rtcss_calendar_wait.exit161.do.end.i.i169_crit_edge

davinci_rtcss_calendar_wait.exit161.do.end.i.i169_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit161
  br label %do.end.i.i169

davinci_rtcss_calendar_wait.exit161.rtcif_wait.exit.i174_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit161
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i174

do.end.i.i169:                                    ; preds = %do.end.i.i169.do.end.i.i169_crit_edge, %davinci_rtcss_calendar_wait.exit161.do.end.i.i169_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %130 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i166 = getelementptr i8, ptr %131, i32 4
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i166) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i167 = and i32 %132, 128
  %tobool.not.i.i168 = icmp eq i32 %.mask.i.i167, 0
  br i1 %tobool.not.i.i168, label %do.end.i.i169.rtcif_wait.exit.i174_crit_edge, label %do.end.i.i169.do.end.i.i169_crit_edge

do.end.i.i169.do.end.i.i169_crit_edge:            ; preds = %do.end.i.i169
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i169

do.end.i.i169.rtcif_wait.exit.i174_crit_edge:     ; preds = %do.end.i.i169
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i174

rtcif_wait.exit.i174:                             ; preds = %do.end.i.i169.rtcif_wait.exit.i174_crit_edge, %davinci_rtcss_calendar_wait.exit161.rtcif_wait.exit.i174_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %133 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i170 = getelementptr i8, ptr %134, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i170, i32 486539521) #5, !srcloc !39
  %135 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i171 = getelementptr i8, ptr %136, i32 4
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i171) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i172 = and i32 %137, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i172)
  %tobool.not7.i8.i173 = icmp eq i32 %.mask6.i7.i172, 0
  br i1 %tobool.not7.i8.i173, label %rtcif_wait.exit.i174.rtcss_read.exit181_crit_edge, label %rtcif_wait.exit.i174.do.end.i12.i178_crit_edge

rtcif_wait.exit.i174.do.end.i12.i178_crit_edge:   ; preds = %rtcif_wait.exit.i174
  br label %do.end.i12.i178

rtcif_wait.exit.i174.rtcss_read.exit181_crit_edge: ; preds = %rtcif_wait.exit.i174
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit181

do.end.i12.i178:                                  ; preds = %do.end.i12.i178.do.end.i12.i178_crit_edge, %rtcif_wait.exit.i174.do.end.i12.i178_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %138 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i175 = getelementptr i8, ptr %139, i32 4
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i175) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i176 = and i32 %140, 128
  %tobool.not.i11.i177 = icmp eq i32 %.mask.i10.i176, 0
  br i1 %tobool.not.i11.i177, label %do.end.i12.i178.rtcss_read.exit181_crit_edge, label %do.end.i12.i178.do.end.i12.i178_crit_edge

do.end.i12.i178.do.end.i12.i178_crit_edge:        ; preds = %do.end.i12.i178
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i178

do.end.i12.i178.rtcss_read.exit181_crit_edge:     ; preds = %do.end.i12.i178
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit181

rtcss_read.exit181:                               ; preds = %do.end.i12.i178.rtcss_read.exit181_crit_edge, %rtcif_wait.exit.i174.rtcss_read.exit181_crit_edge
  %141 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i179 = getelementptr i8, ptr %142, i32 8
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i179) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @davinci_rtc_lock, i32 noundef %call3) #5
  %sh.diff = lshr i32 %143, 16
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %shl = and i16 %tr.sh.diff, -256
  %144 = trunc i32 %126 to i16
  %or21 = or i16 %shl, %144
  tail call fastcc void @convertfromdays(i16 noundef zeroext %or21, ptr noundef %time)
  %145 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i183 = getelementptr i8, ptr %146, i32 4
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i183) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i184 = and i32 %147, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i184)
  %tobool.not7.i.i185 = icmp eq i32 %.mask6.i.i184, 0
  br i1 %tobool.not7.i.i185, label %rtcss_read.exit181.rtcif_wait.exit.i194_crit_edge, label %rtcss_read.exit181.do.end.i.i189_crit_edge

rtcss_read.exit181.do.end.i.i189_crit_edge:       ; preds = %rtcss_read.exit181
  br label %do.end.i.i189

rtcss_read.exit181.rtcif_wait.exit.i194_crit_edge: ; preds = %rtcss_read.exit181
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i194

do.end.i.i189:                                    ; preds = %do.end.i.i189.do.end.i.i189_crit_edge, %rtcss_read.exit181.do.end.i.i189_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %148 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i186 = getelementptr i8, ptr %149, i32 4
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i186) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i187 = and i32 %150, 128
  %tobool.not.i.i188 = icmp eq i32 %.mask.i.i187, 0
  br i1 %tobool.not.i.i188, label %do.end.i.i189.rtcif_wait.exit.i194_crit_edge, label %do.end.i.i189.do.end.i.i189_crit_edge

do.end.i.i189.do.end.i.i189_crit_edge:            ; preds = %do.end.i.i189
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i189

do.end.i.i189.rtcif_wait.exit.i194_crit_edge:     ; preds = %do.end.i.i189
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i194

rtcif_wait.exit.i194:                             ; preds = %do.end.i.i189.rtcif_wait.exit.i194_crit_edge, %rtcss_read.exit181.rtcif_wait.exit.i194_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %151 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i190 = getelementptr i8, ptr %152, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i190, i32 335544577) #5, !srcloc !39
  %153 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i191 = getelementptr i8, ptr %154, i32 4
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i191) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i192 = and i32 %155, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i192)
  %tobool.not7.i8.i193 = icmp eq i32 %.mask6.i7.i192, 0
  br i1 %tobool.not7.i8.i193, label %rtcif_wait.exit.i194.rtcss_read.exit201_crit_edge, label %rtcif_wait.exit.i194.do.end.i12.i198_crit_edge

rtcif_wait.exit.i194.do.end.i12.i198_crit_edge:   ; preds = %rtcif_wait.exit.i194
  br label %do.end.i12.i198

rtcif_wait.exit.i194.rtcss_read.exit201_crit_edge: ; preds = %rtcif_wait.exit.i194
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit201

do.end.i12.i198:                                  ; preds = %do.end.i12.i198.do.end.i12.i198_crit_edge, %rtcif_wait.exit.i194.do.end.i12.i198_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %156 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i195 = getelementptr i8, ptr %157, i32 4
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i195) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i196 = and i32 %158, 128
  %tobool.not.i11.i197 = icmp eq i32 %.mask.i10.i196, 0
  br i1 %tobool.not.i11.i197, label %do.end.i12.i198.rtcss_read.exit201_crit_edge, label %do.end.i12.i198.do.end.i12.i198_crit_edge

do.end.i12.i198.do.end.i12.i198_crit_edge:        ; preds = %do.end.i12.i198
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i198

do.end.i12.i198.rtcss_read.exit201_crit_edge:     ; preds = %do.end.i12.i198
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit201

rtcss_read.exit201:                               ; preds = %do.end.i12.i198.rtcss_read.exit201_crit_edge, %rtcif_wait.exit.i194.rtcss_read.exit201_crit_edge
  %159 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i199 = getelementptr i8, ptr %160, i32 8
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i199) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %sum.shift = lshr i32 %161, 25
  %162 = trunc i32 %sum.shift to i8
  %.lobit = and i8 %162, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 1
  %163 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %.lobit, ptr %pending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit)
  %tobool30.not = icmp eq i8 %.lobit, 0
  br i1 %tobool30.not, label %rtcss_read.exit201.land.end_crit_edge, label %land.rhs

rtcss_read.exit201.land.end_crit_edge:            ; preds = %rtcss_read.exit201
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %rtcss_read.exit201
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %164 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i202 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i202, label %land.rhs.land.end_crit_edge, label %land.rhs.i

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs.i:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %165 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %166, null
  br label %land.end

land.end:                                         ; preds = %land.rhs.i, %land.rhs.land.end_crit_edge, %rtcss_read.exit201.land.end_crit_edge
  %167 = phi i1 [ false, %rtcss_read.exit201.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %conv33 = zext i1 %167 to i8
  %168 = ptrtoint ptr %alm to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv33, ptr %alm, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_year.i, align 4
  %add16.i = add i32 %3, 1900
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %add16.i)
  %cmp17.i = icmp sgt i32 %add16.i, 2000
  br i1 %cmp17.i, label %entry.for.body.i_crit_edge, label %entry.convert2days.exit_crit_edge

entry.convert2days.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert2days.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %days.0 = phi i16 [ %conv2.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.018.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 2000, %entry.for.body.i_crit_edge ]
  %call.i = tail call i32 @rtc_year_days(i32 noundef 1, i32 noundef 12, i32 noundef %i.018.i) #5
  %4 = trunc i32 %call.i to i16
  %conv2.i = add i16 %days.0, %4
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %5 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm_year.i, align 4
  %add.i = add i32 %6, 1900
  %cmp.i = icmp slt i32 %inc.i, %add.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.convert2days.exit_crit_edge

for.body.i.convert2days.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert2days.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

convert2days.exit:                                ; preds = %for.body.i.convert2days.exit_crit_edge, %entry.convert2days.exit_crit_edge
  %days.1 = phi i16 [ 0, %entry.convert2days.exit_crit_edge ], [ %conv2.i, %for.body.i.convert2days.exit_crit_edge ]
  %add.lcssa.i = phi i32 [ %add16.i, %entry.convert2days.exit_crit_edge ], [ %add.i, %for.body.i.convert2days.exit_crit_edge ]
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_mday.i, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_mon.i, align 4
  %call5.i = tail call i32 @rtc_year_days(i32 noundef %8, i32 noundef %10, i32 noundef %add.lcssa.i) #5
  %11 = trunc i32 %call5.i to i16
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @davinci_rtc_lock) #5
  %base.i.i.i.i = getelementptr inbounds %struct.davinci_rtc, ptr %1, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %convert2days.exit
  %12 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i)
  %tobool.not7.i.i.i = icmp eq i32 %.mask6.i.i.i, 0
  br i1 %tobool.not7.i.i.i, label %while.cond.i.rtcif_wait.exit.i.i_crit_edge, label %while.cond.i.do.end.i.i.i_crit_edge

while.cond.i.do.end.i.i.i_crit_edge:              ; preds = %while.cond.i
  br label %do.end.i.i.i

while.cond.i.rtcif_wait.exit.i.i_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %while.cond.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %15 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i = and i32 %17, 128
  %tobool.not.i.i.i = icmp eq i32 %.mask.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.rtcif_wait.exit.i.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i

do.end.i.i.i.rtcif_wait.exit.i.i_crit_edge:       ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i

rtcif_wait.exit.i.i:                              ; preds = %do.end.i.i.i.rtcif_wait.exit.i.i_crit_edge, %while.cond.i.rtcif_wait.exit.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 335544577) #5, !srcloc !39
  %20 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i)
  %tobool.not7.i8.i.i = icmp eq i32 %.mask6.i7.i.i, 0
  br i1 %tobool.not7.i8.i.i, label %rtcif_wait.exit.i.i.rtcss_read.exit.i_crit_edge, label %rtcif_wait.exit.i.i.do.end.i12.i.i_crit_edge

rtcif_wait.exit.i.i.do.end.i12.i.i_crit_edge:     ; preds = %rtcif_wait.exit.i.i
  br label %do.end.i12.i.i

rtcif_wait.exit.i.i.rtcss_read.exit.i_crit_edge:  ; preds = %rtcif_wait.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i

do.end.i12.i.i:                                   ; preds = %do.end.i12.i.i.do.end.i12.i.i_crit_edge, %rtcif_wait.exit.i.i.do.end.i12.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %23 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i = and i32 %25, 128
  %tobool.not.i11.i.i = icmp eq i32 %.mask.i10.i.i, 0
  br i1 %tobool.not.i11.i.i, label %do.end.i12.i.i.rtcss_read.exit.i_crit_edge, label %do.end.i12.i.i.do.end.i12.i.i_crit_edge

do.end.i12.i.i.do.end.i12.i.i_crit_edge:          ; preds = %do.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i

do.end.i12.i.i.rtcss_read.exit.i_crit_edge:       ; preds = %do.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i

rtcss_read.exit.i:                                ; preds = %do.end.i12.i.i.rtcss_read.exit.i_crit_edge, %rtcif_wait.exit.i.i.rtcss_read.exit.i_crit_edge
  %26 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i = icmp sgt i32 %28, -1
  br i1 %tobool.not.i, label %davinci_rtcss_calendar_wait.exit, label %do.end.i

do.end.i:                                         ; preds = %rtcss_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i

davinci_rtcss_calendar_wait.exit:                 ; preds = %rtcss_read.exit.i
  %conv8.i = add i16 %days.1, %11
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_min, align 4
  %call14 = tail call zeroext i8 @_bin2bcd(i32 noundef %30) #9
  %conv15 = zext i8 %call14 to i32
  %31 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %32, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i)
  %tobool.not7.i.i = icmp eq i32 %.mask6.i.i, 0
  br i1 %tobool.not7.i.i, label %davinci_rtcss_calendar_wait.exit.rtcif_wait.exit.i_crit_edge, label %davinci_rtcss_calendar_wait.exit.do.end.i.i_crit_edge

davinci_rtcss_calendar_wait.exit.do.end.i.i_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit
  br label %do.end.i.i

davinci_rtcss_calendar_wait.exit.rtcif_wait.exit.i_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %davinci_rtcss_calendar_wait.exit.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %34 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i52 = getelementptr i8, ptr %35, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i52) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i = and i32 %36, 128
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.rtcif_wait.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

do.end.i.i.rtcif_wait.exit.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

rtcif_wait.exit.i:                                ; preds = %do.end.i.i.rtcif_wait.exit.i_crit_edge, %davinci_rtcss_calendar_wait.exit.rtcif_wait.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 436207872) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %39 = shl nuw i32 %conv15, 24
  %40 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %41, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %39) #5, !srcloc !39
  %42 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i7.i = getelementptr i8, ptr %43, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i)
  %tobool.not7.i9.i = icmp eq i32 %.mask6.i8.i, 0
  br i1 %tobool.not7.i9.i, label %rtcif_wait.exit.i.while.cond.i57.preheader_crit_edge, label %rtcif_wait.exit.i.do.end.i13.i_crit_edge

rtcif_wait.exit.i.do.end.i13.i_crit_edge:         ; preds = %rtcif_wait.exit.i
  br label %do.end.i13.i

rtcif_wait.exit.i.while.cond.i57.preheader_crit_edge: ; preds = %rtcif_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i57.preheader

do.end.i13.i:                                     ; preds = %do.end.i13.i.do.end.i13.i_crit_edge, %rtcif_wait.exit.i.do.end.i13.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %45 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %46, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i = and i32 %47, 128
  %tobool.not.i12.i = icmp eq i32 %.mask.i11.i, 0
  br i1 %tobool.not.i12.i, label %do.end.i13.i.while.cond.i57.preheader_crit_edge, label %do.end.i13.i.do.end.i13.i_crit_edge

do.end.i13.i.do.end.i13.i_crit_edge:              ; preds = %do.end.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i

do.end.i13.i.while.cond.i57.preheader_crit_edge:  ; preds = %do.end.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i57.preheader

while.cond.i57.preheader:                         ; preds = %do.end.i13.i.while.cond.i57.preheader_crit_edge, %rtcif_wait.exit.i.while.cond.i57.preheader_crit_edge
  br label %while.cond.i57

while.cond.i57:                                   ; preds = %do.end.i74, %while.cond.i57.preheader
  %48 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i54 = getelementptr i8, ptr %49, i32 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i54) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i55 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i55)
  %tobool.not7.i.i.i56 = icmp eq i32 %.mask6.i.i.i55, 0
  br i1 %tobool.not7.i.i.i56, label %while.cond.i57.rtcif_wait.exit.i.i66_crit_edge, label %while.cond.i57.do.end.i.i.i61_crit_edge

while.cond.i57.do.end.i.i.i61_crit_edge:          ; preds = %while.cond.i57
  br label %do.end.i.i.i61

while.cond.i57.rtcif_wait.exit.i.i66_crit_edge:   ; preds = %while.cond.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i66

do.end.i.i.i61:                                   ; preds = %do.end.i.i.i61.do.end.i.i.i61_crit_edge, %while.cond.i57.do.end.i.i.i61_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %51 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i58 = getelementptr i8, ptr %52, i32 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i58) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i59 = and i32 %53, 128
  %tobool.not.i.i.i60 = icmp eq i32 %.mask.i.i.i59, 0
  br i1 %tobool.not.i.i.i60, label %do.end.i.i.i61.rtcif_wait.exit.i.i66_crit_edge, label %do.end.i.i.i61.do.end.i.i.i61_crit_edge

do.end.i.i.i61.do.end.i.i.i61_crit_edge:          ; preds = %do.end.i.i.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i61

do.end.i.i.i61.rtcif_wait.exit.i.i66_crit_edge:   ; preds = %do.end.i.i.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i66

rtcif_wait.exit.i.i66:                            ; preds = %do.end.i.i.i61.rtcif_wait.exit.i.i66_crit_edge, %while.cond.i57.rtcif_wait.exit.i.i66_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i62 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i62, i32 335544577) #5, !srcloc !39
  %56 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i63 = getelementptr i8, ptr %57, i32 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i63) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i64 = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i64)
  %tobool.not7.i8.i.i65 = icmp eq i32 %.mask6.i7.i.i64, 0
  br i1 %tobool.not7.i8.i.i65, label %rtcif_wait.exit.i.i66.rtcss_read.exit.i73_crit_edge, label %rtcif_wait.exit.i.i66.do.end.i12.i.i70_crit_edge

rtcif_wait.exit.i.i66.do.end.i12.i.i70_crit_edge: ; preds = %rtcif_wait.exit.i.i66
  br label %do.end.i12.i.i70

rtcif_wait.exit.i.i66.rtcss_read.exit.i73_crit_edge: ; preds = %rtcif_wait.exit.i.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i73

do.end.i12.i.i70:                                 ; preds = %do.end.i12.i.i70.do.end.i12.i.i70_crit_edge, %rtcif_wait.exit.i.i66.do.end.i12.i.i70_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %59 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i67 = getelementptr i8, ptr %60, i32 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i67) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i68 = and i32 %61, 128
  %tobool.not.i11.i.i69 = icmp eq i32 %.mask.i10.i.i68, 0
  br i1 %tobool.not.i11.i.i69, label %do.end.i12.i.i70.rtcss_read.exit.i73_crit_edge, label %do.end.i12.i.i70.do.end.i12.i.i70_crit_edge

do.end.i12.i.i70.do.end.i12.i.i70_crit_edge:      ; preds = %do.end.i12.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i70

do.end.i12.i.i70.rtcss_read.exit.i73_crit_edge:   ; preds = %do.end.i12.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i73

rtcss_read.exit.i73:                              ; preds = %do.end.i12.i.i70.rtcss_read.exit.i73_crit_edge, %rtcif_wait.exit.i.i66.rtcss_read.exit.i73_crit_edge
  %62 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i71 = getelementptr i8, ptr %63, i32 8
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i71) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i72 = icmp sgt i32 %64, -1
  br i1 %tobool.not.i72, label %cond.false27, label %do.end.i74

do.end.i74:                                       ; preds = %rtcss_read.exit.i73
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i57

cond.false27:                                     ; preds = %rtcss_read.exit.i73
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %65 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tm_hour, align 4
  %call30 = tail call zeroext i8 @_bin2bcd(i32 noundef %66) #9
  %conv31 = zext i8 %call30 to i32
  %67 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i77 = getelementptr i8, ptr %68, i32 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i77) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i78 = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i78)
  %tobool.not7.i.i79 = icmp eq i32 %.mask6.i.i78, 0
  br i1 %tobool.not7.i.i79, label %cond.false27.rtcif_wait.exit.i89_crit_edge, label %cond.false27.do.end.i.i83_crit_edge

cond.false27.do.end.i.i83_crit_edge:              ; preds = %cond.false27
  br label %do.end.i.i83

cond.false27.rtcif_wait.exit.i89_crit_edge:       ; preds = %cond.false27
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i89

do.end.i.i83:                                     ; preds = %do.end.i.i83.do.end.i.i83_crit_edge, %cond.false27.do.end.i.i83_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %70 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i80 = getelementptr i8, ptr %71, i32 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i80) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i81 = and i32 %72, 128
  %tobool.not.i.i82 = icmp eq i32 %.mask.i.i81, 0
  br i1 %tobool.not.i.i82, label %do.end.i.i83.rtcif_wait.exit.i89_crit_edge, label %do.end.i.i83.do.end.i.i83_crit_edge

do.end.i.i83.do.end.i.i83_crit_edge:              ; preds = %do.end.i.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i83

do.end.i.i83.rtcif_wait.exit.i89_crit_edge:       ; preds = %do.end.i.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i89

rtcif_wait.exit.i89:                              ; preds = %do.end.i.i83.rtcif_wait.exit.i89_crit_edge, %cond.false27.rtcif_wait.exit.i89_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %73 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i84 = getelementptr i8, ptr %74, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84, i32 452985088) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %75 = shl nuw i32 %conv31, 24
  %76 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i85 = getelementptr i8, ptr %77, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i85, i32 %75) #5, !srcloc !39
  %78 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i7.i86 = getelementptr i8, ptr %79, i32 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i86) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i87 = and i32 %80, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i87)
  %tobool.not7.i9.i88 = icmp eq i32 %.mask6.i8.i87, 0
  br i1 %tobool.not7.i9.i88, label %rtcif_wait.exit.i89.while.cond.i99.preheader_crit_edge, label %rtcif_wait.exit.i89.do.end.i13.i93_crit_edge

rtcif_wait.exit.i89.do.end.i13.i93_crit_edge:     ; preds = %rtcif_wait.exit.i89
  br label %do.end.i13.i93

rtcif_wait.exit.i89.while.cond.i99.preheader_crit_edge: ; preds = %rtcif_wait.exit.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i99.preheader

do.end.i13.i93:                                   ; preds = %do.end.i13.i93.do.end.i13.i93_crit_edge, %rtcif_wait.exit.i89.do.end.i13.i93_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %81 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i10.i90 = getelementptr i8, ptr %82, i32 4
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i90) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i91 = and i32 %83, 128
  %tobool.not.i12.i92 = icmp eq i32 %.mask.i11.i91, 0
  br i1 %tobool.not.i12.i92, label %do.end.i13.i93.while.cond.i99.preheader_crit_edge, label %do.end.i13.i93.do.end.i13.i93_crit_edge

do.end.i13.i93.do.end.i13.i93_crit_edge:          ; preds = %do.end.i13.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i93

do.end.i13.i93.while.cond.i99.preheader_crit_edge: ; preds = %do.end.i13.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i99.preheader

while.cond.i99.preheader:                         ; preds = %do.end.i13.i93.while.cond.i99.preheader_crit_edge, %rtcif_wait.exit.i89.while.cond.i99.preheader_crit_edge
  br label %while.cond.i99

while.cond.i99:                                   ; preds = %do.end.i116, %while.cond.i99.preheader
  %84 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i96 = getelementptr i8, ptr %85, i32 4
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i96) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i97 = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i97)
  %tobool.not7.i.i.i98 = icmp eq i32 %.mask6.i.i.i97, 0
  br i1 %tobool.not7.i.i.i98, label %while.cond.i99.rtcif_wait.exit.i.i108_crit_edge, label %while.cond.i99.do.end.i.i.i103_crit_edge

while.cond.i99.do.end.i.i.i103_crit_edge:         ; preds = %while.cond.i99
  br label %do.end.i.i.i103

while.cond.i99.rtcif_wait.exit.i.i108_crit_edge:  ; preds = %while.cond.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i108

do.end.i.i.i103:                                  ; preds = %do.end.i.i.i103.do.end.i.i.i103_crit_edge, %while.cond.i99.do.end.i.i.i103_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %87 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i100 = getelementptr i8, ptr %88, i32 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i100) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i101 = and i32 %89, 128
  %tobool.not.i.i.i102 = icmp eq i32 %.mask.i.i.i101, 0
  br i1 %tobool.not.i.i.i102, label %do.end.i.i.i103.rtcif_wait.exit.i.i108_crit_edge, label %do.end.i.i.i103.do.end.i.i.i103_crit_edge

do.end.i.i.i103.do.end.i.i.i103_crit_edge:        ; preds = %do.end.i.i.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i103

do.end.i.i.i103.rtcif_wait.exit.i.i108_crit_edge: ; preds = %do.end.i.i.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i108

rtcif_wait.exit.i.i108:                           ; preds = %do.end.i.i.i103.rtcif_wait.exit.i.i108_crit_edge, %while.cond.i99.rtcif_wait.exit.i.i108_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i104 = getelementptr i8, ptr %91, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i104, i32 335544577) #5, !srcloc !39
  %92 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i105 = getelementptr i8, ptr %93, i32 4
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i105) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i106 = and i32 %94, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i106)
  %tobool.not7.i8.i.i107 = icmp eq i32 %.mask6.i7.i.i106, 0
  br i1 %tobool.not7.i8.i.i107, label %rtcif_wait.exit.i.i108.rtcss_read.exit.i115_crit_edge, label %rtcif_wait.exit.i.i108.do.end.i12.i.i112_crit_edge

rtcif_wait.exit.i.i108.do.end.i12.i.i112_crit_edge: ; preds = %rtcif_wait.exit.i.i108
  br label %do.end.i12.i.i112

rtcif_wait.exit.i.i108.rtcss_read.exit.i115_crit_edge: ; preds = %rtcif_wait.exit.i.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i115

do.end.i12.i.i112:                                ; preds = %do.end.i12.i.i112.do.end.i12.i.i112_crit_edge, %rtcif_wait.exit.i.i108.do.end.i12.i.i112_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %95 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i109 = getelementptr i8, ptr %96, i32 4
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i109) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i110 = and i32 %97, 128
  %tobool.not.i11.i.i111 = icmp eq i32 %.mask.i10.i.i110, 0
  br i1 %tobool.not.i11.i.i111, label %do.end.i12.i.i112.rtcss_read.exit.i115_crit_edge, label %do.end.i12.i.i112.do.end.i12.i.i112_crit_edge

do.end.i12.i.i112.do.end.i12.i.i112_crit_edge:    ; preds = %do.end.i12.i.i112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i112

do.end.i12.i.i112.rtcss_read.exit.i115_crit_edge: ; preds = %do.end.i12.i.i112
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i115

rtcss_read.exit.i115:                             ; preds = %do.end.i12.i.i112.rtcss_read.exit.i115_crit_edge, %rtcif_wait.exit.i.i108.rtcss_read.exit.i115_crit_edge
  %98 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i113 = getelementptr i8, ptr %99, i32 8
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i113) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i114 = icmp sgt i32 %100, -1
  br i1 %tobool.not.i114, label %davinci_rtcss_calendar_wait.exit117, label %do.end.i116

do.end.i116:                                      ; preds = %rtcss_read.exit.i115
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i99

davinci_rtcss_calendar_wait.exit117:              ; preds = %rtcss_read.exit.i115
  %101 = and i16 %conv8.i, 255
  %and = zext i16 %101 to i32
  %102 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i119 = getelementptr i8, ptr %103, i32 4
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i119) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i120 = and i32 %104, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i120)
  %tobool.not7.i.i121 = icmp eq i32 %.mask6.i.i120, 0
  br i1 %tobool.not7.i.i121, label %davinci_rtcss_calendar_wait.exit117.rtcif_wait.exit.i131_crit_edge, label %davinci_rtcss_calendar_wait.exit117.do.end.i.i125_crit_edge

davinci_rtcss_calendar_wait.exit117.do.end.i.i125_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit117
  br label %do.end.i.i125

davinci_rtcss_calendar_wait.exit117.rtcif_wait.exit.i131_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit117
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i131

do.end.i.i125:                                    ; preds = %do.end.i.i125.do.end.i.i125_crit_edge, %davinci_rtcss_calendar_wait.exit117.do.end.i.i125_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %105 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i122 = getelementptr i8, ptr %106, i32 4
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i122) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i123 = and i32 %107, 128
  %tobool.not.i.i124 = icmp eq i32 %.mask.i.i123, 0
  br i1 %tobool.not.i.i124, label %do.end.i.i125.rtcif_wait.exit.i131_crit_edge, label %do.end.i.i125.do.end.i.i125_crit_edge

do.end.i.i125.do.end.i.i125_crit_edge:            ; preds = %do.end.i.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i125

do.end.i.i125.rtcif_wait.exit.i131_crit_edge:     ; preds = %do.end.i.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i131

rtcif_wait.exit.i131:                             ; preds = %do.end.i.i125.rtcif_wait.exit.i131_crit_edge, %davinci_rtcss_calendar_wait.exit117.rtcif_wait.exit.i131_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i126 = getelementptr i8, ptr %109, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i126, i32 469762304) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %110 = shl nuw i32 %and, 24
  %111 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i127 = getelementptr i8, ptr %112, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i127, i32 %110) #5, !srcloc !39
  %113 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i7.i128 = getelementptr i8, ptr %114, i32 4
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i128) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i129 = and i32 %115, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i129)
  %tobool.not7.i9.i130 = icmp eq i32 %.mask6.i8.i129, 0
  br i1 %tobool.not7.i9.i130, label %rtcif_wait.exit.i131.while.cond.i141.preheader_crit_edge, label %rtcif_wait.exit.i131.do.end.i13.i135_crit_edge

rtcif_wait.exit.i131.do.end.i13.i135_crit_edge:   ; preds = %rtcif_wait.exit.i131
  br label %do.end.i13.i135

rtcif_wait.exit.i131.while.cond.i141.preheader_crit_edge: ; preds = %rtcif_wait.exit.i131
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i141.preheader

do.end.i13.i135:                                  ; preds = %do.end.i13.i135.do.end.i13.i135_crit_edge, %rtcif_wait.exit.i131.do.end.i13.i135_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %116 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i10.i132 = getelementptr i8, ptr %117, i32 4
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i132) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i133 = and i32 %118, 128
  %tobool.not.i12.i134 = icmp eq i32 %.mask.i11.i133, 0
  br i1 %tobool.not.i12.i134, label %do.end.i13.i135.while.cond.i141.preheader_crit_edge, label %do.end.i13.i135.do.end.i13.i135_crit_edge

do.end.i13.i135.do.end.i13.i135_crit_edge:        ; preds = %do.end.i13.i135
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i135

do.end.i13.i135.while.cond.i141.preheader_crit_edge: ; preds = %do.end.i13.i135
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i141.preheader

while.cond.i141.preheader:                        ; preds = %do.end.i13.i135.while.cond.i141.preheader_crit_edge, %rtcif_wait.exit.i131.while.cond.i141.preheader_crit_edge
  br label %while.cond.i141

while.cond.i141:                                  ; preds = %do.end.i158, %while.cond.i141.preheader
  %119 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i138 = getelementptr i8, ptr %120, i32 4
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i138) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i139 = and i32 %121, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i139)
  %tobool.not7.i.i.i140 = icmp eq i32 %.mask6.i.i.i139, 0
  br i1 %tobool.not7.i.i.i140, label %while.cond.i141.rtcif_wait.exit.i.i150_crit_edge, label %while.cond.i141.do.end.i.i.i145_crit_edge

while.cond.i141.do.end.i.i.i145_crit_edge:        ; preds = %while.cond.i141
  br label %do.end.i.i.i145

while.cond.i141.rtcif_wait.exit.i.i150_crit_edge: ; preds = %while.cond.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i150

do.end.i.i.i145:                                  ; preds = %do.end.i.i.i145.do.end.i.i.i145_crit_edge, %while.cond.i141.do.end.i.i.i145_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %122 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i142 = getelementptr i8, ptr %123, i32 4
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i142) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i143 = and i32 %124, 128
  %tobool.not.i.i.i144 = icmp eq i32 %.mask.i.i.i143, 0
  br i1 %tobool.not.i.i.i144, label %do.end.i.i.i145.rtcif_wait.exit.i.i150_crit_edge, label %do.end.i.i.i145.do.end.i.i.i145_crit_edge

do.end.i.i.i145.do.end.i.i.i145_crit_edge:        ; preds = %do.end.i.i.i145
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i145

do.end.i.i.i145.rtcif_wait.exit.i.i150_crit_edge: ; preds = %do.end.i.i.i145
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i150

rtcif_wait.exit.i.i150:                           ; preds = %do.end.i.i.i145.rtcif_wait.exit.i.i150_crit_edge, %while.cond.i141.rtcif_wait.exit.i.i150_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %125 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i146 = getelementptr i8, ptr %126, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i146, i32 335544577) #5, !srcloc !39
  %127 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i6.i.i147 = getelementptr i8, ptr %128, i32 4
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i147) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i148 = and i32 %129, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i148)
  %tobool.not7.i8.i.i149 = icmp eq i32 %.mask6.i7.i.i148, 0
  br i1 %tobool.not7.i8.i.i149, label %rtcif_wait.exit.i.i150.rtcss_read.exit.i157_crit_edge, label %rtcif_wait.exit.i.i150.do.end.i12.i.i154_crit_edge

rtcif_wait.exit.i.i150.do.end.i12.i.i154_crit_edge: ; preds = %rtcif_wait.exit.i.i150
  br label %do.end.i12.i.i154

rtcif_wait.exit.i.i150.rtcss_read.exit.i157_crit_edge: ; preds = %rtcif_wait.exit.i.i150
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i157

do.end.i12.i.i154:                                ; preds = %do.end.i12.i.i154.do.end.i12.i.i154_crit_edge, %rtcif_wait.exit.i.i150.do.end.i12.i.i154_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %130 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i9.i.i151 = getelementptr i8, ptr %131, i32 4
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i151) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i152 = and i32 %132, 128
  %tobool.not.i11.i.i153 = icmp eq i32 %.mask.i10.i.i152, 0
  br i1 %tobool.not.i11.i.i153, label %do.end.i12.i.i154.rtcss_read.exit.i157_crit_edge, label %do.end.i12.i.i154.do.end.i12.i.i154_crit_edge

do.end.i12.i.i154.do.end.i12.i.i154_crit_edge:    ; preds = %do.end.i12.i.i154
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i154

do.end.i12.i.i154.rtcss_read.exit.i157_crit_edge: ; preds = %do.end.i12.i.i154
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i157

rtcss_read.exit.i157:                             ; preds = %do.end.i12.i.i154.rtcss_read.exit.i157_crit_edge, %rtcif_wait.exit.i.i150.rtcss_read.exit.i157_crit_edge
  %133 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i15.i.i155 = getelementptr i8, ptr %134, i32 8
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i155) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i156 = icmp sgt i32 %135, -1
  br i1 %tobool.not.i156, label %davinci_rtcss_calendar_wait.exit159, label %do.end.i158

do.end.i158:                                      ; preds = %rtcss_read.exit.i157
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i141

davinci_rtcss_calendar_wait.exit159:              ; preds = %rtcss_read.exit.i157
  %136 = lshr i16 %conv8.i, 8
  %137 = zext i16 %136 to i32
  %138 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i.i161 = getelementptr i8, ptr %139, i32 4
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i161) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i162 = and i32 %140, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i162)
  %tobool.not7.i.i163 = icmp eq i32 %.mask6.i.i162, 0
  br i1 %tobool.not7.i.i163, label %davinci_rtcss_calendar_wait.exit159.rtcif_wait.exit.i173_crit_edge, label %davinci_rtcss_calendar_wait.exit159.do.end.i.i167_crit_edge

davinci_rtcss_calendar_wait.exit159.do.end.i.i167_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit159
  br label %do.end.i.i167

davinci_rtcss_calendar_wait.exit159.rtcif_wait.exit.i173_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit159
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i173

do.end.i.i167:                                    ; preds = %do.end.i.i167.do.end.i.i167_crit_edge, %davinci_rtcss_calendar_wait.exit159.do.end.i.i167_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %141 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i164 = getelementptr i8, ptr %142, i32 4
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i164) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i165 = and i32 %143, 128
  %tobool.not.i.i166 = icmp eq i32 %.mask.i.i165, 0
  br i1 %tobool.not.i.i166, label %do.end.i.i167.rtcif_wait.exit.i173_crit_edge, label %do.end.i.i167.do.end.i.i167_crit_edge

do.end.i.i167.do.end.i.i167_crit_edge:            ; preds = %do.end.i.i167
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i167

do.end.i.i167.rtcif_wait.exit.i173_crit_edge:     ; preds = %do.end.i.i167
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i173

rtcif_wait.exit.i173:                             ; preds = %do.end.i.i167.rtcif_wait.exit.i173_crit_edge, %davinci_rtcss_calendar_wait.exit159.rtcif_wait.exit.i173_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %144 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i168 = getelementptr i8, ptr %145, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i168, i32 486539520) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %146 = shl nuw i32 %137, 24
  %147 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i169 = getelementptr i8, ptr %148, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i169, i32 %146) #5, !srcloc !39
  %149 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i5.i7.i170 = getelementptr i8, ptr %150, i32 4
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i170) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i171 = and i32 %151, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i171)
  %tobool.not7.i9.i172 = icmp eq i32 %.mask6.i8.i171, 0
  br i1 %tobool.not7.i9.i172, label %rtcif_wait.exit.i173.rtcss_write.exit178_crit_edge, label %rtcif_wait.exit.i173.do.end.i13.i177_crit_edge

rtcif_wait.exit.i173.do.end.i13.i177_crit_edge:   ; preds = %rtcif_wait.exit.i173
  br label %do.end.i13.i177

rtcif_wait.exit.i173.rtcss_write.exit178_crit_edge: ; preds = %rtcif_wait.exit.i173
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit178

do.end.i13.i177:                                  ; preds = %do.end.i13.i177.do.end.i13.i177_crit_edge, %rtcif_wait.exit.i173.do.end.i13.i177_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %152 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i10.i174 = getelementptr i8, ptr %153, i32 4
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i174) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i175 = and i32 %154, 128
  %tobool.not.i12.i176 = icmp eq i32 %.mask.i11.i175, 0
  br i1 %tobool.not.i12.i176, label %do.end.i13.i177.rtcss_write.exit178_crit_edge, label %do.end.i13.i177.do.end.i13.i177_crit_edge

do.end.i13.i177.do.end.i13.i177_crit_edge:        ; preds = %do.end.i13.i177
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i177

do.end.i13.i177.rtcss_write.exit178_crit_edge:    ; preds = %do.end.i13.i177
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit178

rtcss_write.exit178:                              ; preds = %do.end.i13.i177.rtcss_write.exit178_crit_edge, %rtcif_wait.exit.i173.rtcss_write.exit178_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @davinci_rtc_lock, i32 noundef %call3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.davinci_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i)
  %tobool.not7.i.i = icmp eq i32 %.mask6.i.i, 0
  br i1 %tobool.not7.i.i, label %entry.rtcif_wait.exit.i_crit_edge, label %entry.do.end.i.i_crit_edge

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  br label %do.end.i.i

entry.rtcif_wait.exit.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %5 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i = and i32 %7, 128
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.rtcif_wait.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

do.end.i.i.rtcif_wait.exit.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i

rtcif_wait.exit.i:                                ; preds = %do.end.i.i.rtcif_wait.exit.i_crit_edge, %entry.rtcif_wait.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 335544577) #5, !srcloc !39
  %10 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i6.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i)
  %tobool.not7.i8.i = icmp eq i32 %.mask6.i7.i, 0
  br i1 %tobool.not7.i8.i, label %rtcif_wait.exit.i.rtcss_read.exit_crit_edge, label %rtcif_wait.exit.i.do.end.i12.i_crit_edge

rtcif_wait.exit.i.do.end.i12.i_crit_edge:         ; preds = %rtcif_wait.exit.i
  br label %do.end.i12.i

rtcif_wait.exit.i.rtcss_read.exit_crit_edge:      ; preds = %rtcif_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit

do.end.i12.i:                                     ; preds = %do.end.i12.i.do.end.i12.i_crit_edge, %rtcif_wait.exit.i.do.end.i12.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %13 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i9.i = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i = and i32 %15, 128
  %tobool.not.i11.i = icmp eq i32 %.mask.i10.i, 0
  br i1 %tobool.not.i11.i, label %do.end.i12.i.rtcss_read.exit_crit_edge, label %do.end.i12.i.do.end.i12.i_crit_edge

do.end.i12.i.do.end.i12.i_crit_edge:              ; preds = %do.end.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i

do.end.i12.i.rtcss_read.exit_crit_edge:           ; preds = %do.end.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit

rtcss_read.exit:                                  ; preds = %do.end.i12.i.rtcss_read.exit_crit_edge, %rtcif_wait.exit.i.rtcss_read.exit_crit_edge
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #5, !srcloc !40
  %19 = lshr i32 %18, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @davinci_rtc_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %20 = and i32 %19, 253
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %rtcss_read.exit
  %21 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i.i)
  %tobool.not7.i.i.i = icmp eq i32 %.mask6.i.i.i, 0
  br i1 %tobool.not7.i.i.i, label %while.cond.i.rtcif_wait.exit.i.i_crit_edge, label %while.cond.i.do.end.i.i.i_crit_edge

while.cond.i.do.end.i.i.i_crit_edge:              ; preds = %while.cond.i
  br label %do.end.i.i.i

while.cond.i.rtcif_wait.exit.i.i_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %while.cond.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %24 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i.i = and i32 %26, 128
  %tobool.not.i.i.i = icmp eq i32 %.mask.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.rtcif_wait.exit.i.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i

do.end.i.i.i.rtcif_wait.exit.i.i_crit_edge:       ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i.i

rtcif_wait.exit.i.i:                              ; preds = %do.end.i.i.i.rtcif_wait.exit.i.i_crit_edge, %while.cond.i.rtcif_wait.exit.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i16 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i16, i32 335544577) #5, !srcloc !39
  %29 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i6.i.i = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i6.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i7.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i7.i.i)
  %tobool.not7.i8.i.i = icmp eq i32 %.mask6.i7.i.i, 0
  br i1 %tobool.not7.i8.i.i, label %rtcif_wait.exit.i.i.rtcss_read.exit.i_crit_edge, label %rtcif_wait.exit.i.i.do.end.i12.i.i_crit_edge

rtcif_wait.exit.i.i.do.end.i12.i.i_crit_edge:     ; preds = %rtcif_wait.exit.i.i
  br label %do.end.i12.i.i

rtcif_wait.exit.i.i.rtcss_read.exit.i_crit_edge:  ; preds = %rtcif_wait.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i

do.end.i12.i.i:                                   ; preds = %do.end.i12.i.i.do.end.i12.i.i_crit_edge, %rtcif_wait.exit.i.i.do.end.i12.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %32 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i9.i.i = getelementptr i8, ptr %33, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i10.i.i = and i32 %34, 128
  %tobool.not.i11.i.i = icmp eq i32 %.mask.i10.i.i, 0
  br i1 %tobool.not.i11.i.i, label %do.end.i12.i.i.rtcss_read.exit.i_crit_edge, label %do.end.i12.i.i.do.end.i12.i.i_crit_edge

do.end.i12.i.i.do.end.i12.i.i_crit_edge:          ; preds = %do.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i12.i.i

do.end.i12.i.i.rtcss_read.exit.i_crit_edge:       ; preds = %do.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_read.exit.i

rtcss_read.exit.i:                                ; preds = %do.end.i12.i.i.rtcss_read.exit.i_crit_edge, %rtcif_wait.exit.i.i.rtcss_read.exit.i_crit_edge
  %35 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %36, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %tobool.not.i = icmp sgt i32 %37, -1
  br i1 %tobool.not.i, label %davinci_rtcss_calendar_wait.exit, label %do.end.i

do.end.i:                                         ; preds = %rtcss_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !45
  br label %while.cond.i

davinci_rtcss_calendar_wait.exit:                 ; preds = %rtcss_read.exit.i
  %38 = or i32 %19, 62
  %rtc_cctrl.0 = select i1 %tobool.not, i32 %20, i32 %38
  %39 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i.i18 = getelementptr i8, ptr %40, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i18) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i.i19 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i.i19)
  %tobool.not7.i.i20 = icmp eq i32 %.mask6.i.i19, 0
  br i1 %tobool.not7.i.i20, label %davinci_rtcss_calendar_wait.exit.rtcif_wait.exit.i26_crit_edge, label %davinci_rtcss_calendar_wait.exit.do.end.i.i24_crit_edge

davinci_rtcss_calendar_wait.exit.do.end.i.i24_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit
  br label %do.end.i.i24

davinci_rtcss_calendar_wait.exit.rtcif_wait.exit.i26_crit_edge: ; preds = %davinci_rtcss_calendar_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i26

do.end.i.i24:                                     ; preds = %do.end.i.i24.do.end.i.i24_crit_edge, %davinci_rtcss_calendar_wait.exit.do.end.i.i24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %42 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i21 = getelementptr i8, ptr %43, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i21) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i.i22 = and i32 %44, 128
  %tobool.not.i.i23 = icmp eq i32 %.mask.i.i22, 0
  br i1 %tobool.not.i.i23, label %do.end.i.i24.rtcif_wait.exit.i26_crit_edge, label %do.end.i.i24.do.end.i.i24_crit_edge

do.end.i.i24.do.end.i.i24_crit_edge:              ; preds = %do.end.i.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i24

do.end.i.i24.rtcif_wait.exit.i26_crit_edge:       ; preds = %do.end.i.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcif_wait.exit.i26

rtcif_wait.exit.i26:                              ; preds = %do.end.i.i24.rtcif_wait.exit.i26_crit_edge, %davinci_rtcss_calendar_wait.exit.rtcif_wait.exit.i26_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %46, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25, i32 335544576) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %47 = shl nuw i32 %rtc_cctrl.0, 24
  %48 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %49, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %47) #5, !srcloc !39
  %50 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i7.i = getelementptr i8, ptr %51, i32 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i7.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask6.i8.i = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask6.i8.i)
  %tobool.not7.i9.i = icmp eq i32 %.mask6.i8.i, 0
  br i1 %tobool.not7.i9.i, label %rtcif_wait.exit.i26.rtcss_write.exit_crit_edge, label %rtcif_wait.exit.i26.do.end.i13.i_crit_edge

rtcif_wait.exit.i26.do.end.i13.i_crit_edge:       ; preds = %rtcif_wait.exit.i26
  br label %do.end.i13.i

rtcif_wait.exit.i26.rtcss_write.exit_crit_edge:   ; preds = %rtcif_wait.exit.i26
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit

do.end.i13.i:                                     ; preds = %do.end.i13.i.do.end.i13.i_crit_edge, %rtcif_wait.exit.i26.do.end.i13.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !43
  %53 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %54, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %.mask.i11.i = and i32 %55, 128
  %tobool.not.i12.i = icmp eq i32 %.mask.i11.i, 0
  br i1 %tobool.not.i12.i, label %do.end.i13.i.rtcss_write.exit_crit_edge, label %do.end.i13.i.do.end.i13.i_crit_edge

do.end.i13.i.do.end.i13.i_crit_edge:              ; preds = %do.end.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i13.i

do.end.i13.i.rtcss_write.exit_crit_edge:          ; preds = %do.end.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtcss_write.exit

rtcss_write.exit:                                 ; preds = %do.end.i13.i.rtcss_write.exit_crit_edge, %rtcif_wait.exit.i26.rtcss_write.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @davinci_rtc_lock, i32 noundef %call4) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @convertfromdays(i16 noundef zeroext %days, ptr nocapture noundef writeonly %tm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call34 = tail call i32 @rtc_year_days(i32 noundef 1, i32 noundef 12, i32 noundef 2000) #5
  %conv35 = zext i16 %days to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call34, i32 %conv35)
  %cmp.not36 = icmp sgt i32 %call34, %conv35
  br i1 %cmp.not36, label %entry.for.cond4.preheader_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  br label %if.then

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %if.then.for.cond4.preheader_crit_edge, %entry.for.cond4.preheader_crit_edge
  %conv642.pre-phi = phi i32 [ %conv35, %entry.for.cond4.preheader_crit_edge ], [ %conv, %if.then.for.cond4.preheader_crit_edge ]
  %days.addr.0.lcssa = phi i16 [ %days, %entry.for.cond4.preheader_crit_edge ], [ %conv3, %if.then.for.cond4.preheader_crit_edge ]
  %year.0.lcssa = phi i32 [ 2000, %entry.for.cond4.preheader_crit_edge ], [ %inc18, %if.then.for.cond4.preheader_crit_edge ]
  %call541 = tail call i32 @rtc_month_days(i32 noundef 0, i32 noundef %year.0.lcssa) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call541, i32 %conv642.pre-phi)
  %cmp7.not43 = icmp sgt i32 %call541, %conv642.pre-phi
  br i1 %cmp7.not43, label %for.cond4.preheader.if.else13_crit_edge, label %for.cond4.preheader.if.then9_crit_edge

for.cond4.preheader.if.then9_crit_edge:           ; preds = %for.cond4.preheader
  br label %if.then9

for.cond4.preheader.if.else13_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else13

if.then:                                          ; preds = %if.then.if.then_crit_edge, %entry.if.then_crit_edge
  %call39 = phi i32 [ %call, %if.then.if.then_crit_edge ], [ %call34, %entry.if.then_crit_edge ]
  %year.038 = phi i32 [ %inc18, %if.then.if.then_crit_edge ], [ 2000, %entry.if.then_crit_edge ]
  %days.addr.037 = phi i16 [ %conv3, %if.then.if.then_crit_edge ], [ %days, %entry.if.then_crit_edge ]
  %0 = trunc i32 %call39 to i16
  %conv3 = sub i16 %days.addr.037, %0
  %inc18 = add i32 %year.038, 1
  %call = tail call i32 @rtc_year_days(i32 noundef 1, i32 noundef 12, i32 noundef %inc18) #5
  %conv = zext i16 %conv3 to i32
  %cmp.not = icmp sgt i32 %call, %conv
  br i1 %cmp.not, label %if.then.for.cond4.preheader_crit_edge, label %if.then.if.then_crit_edge

if.then.if.then_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.for.cond4.preheader_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond4.preheader

if.then9:                                         ; preds = %if.then9.if.then9_crit_edge, %for.cond4.preheader.if.then9_crit_edge
  %call546 = phi i32 [ %call5, %if.then9.if.then9_crit_edge ], [ %call541, %for.cond4.preheader.if.then9_crit_edge ]
  %mon.045 = phi i32 [ %inc, %if.then9.if.then9_crit_edge ], [ 0, %for.cond4.preheader.if.then9_crit_edge ]
  %days.addr.144 = phi i16 [ %conv12, %if.then9.if.then9_crit_edge ], [ %days.addr.0.lcssa, %for.cond4.preheader.if.then9_crit_edge ]
  %1 = trunc i32 %call546 to i16
  %conv12 = sub i16 %days.addr.144, %1
  %inc = add i32 %mon.045, 1
  %call5 = tail call i32 @rtc_month_days(i32 noundef %inc, i32 noundef %year.0.lcssa) #5
  %conv6 = zext i16 %conv12 to i32
  %cmp7.not = icmp sgt i32 %call5, %conv6
  br i1 %cmp7.not, label %if.then9.if.else13_crit_edge, label %if.then9.if.then9_crit_edge

if.then9.if.then9_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

if.then9.if.else13_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else13

if.else13:                                        ; preds = %if.then9.if.else13_crit_edge, %for.cond4.preheader.if.else13_crit_edge
  %mon.0.lcssa = phi i32 [ 0, %for.cond4.preheader.if.else13_crit_edge ], [ %inc, %if.then9.if.else13_crit_edge ]
  %conv6.lcssa = phi i32 [ %conv642.pre-phi, %for.cond4.preheader.if.else13_crit_edge ], [ %conv6, %if.then9.if.else13_crit_edge ]
  %sub14 = add i32 %year.0.lcssa, -1900
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %2 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub14, ptr %tm_year, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %3 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mon.0.lcssa, ptr %tm_mon, align 4
  %add = add nuw nsw i32 %conv6.lcssa, 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %4 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %tm_mday, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_year_days(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_month_days(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_rtc_davinci__227_508_davinci_rtc_driver_init6, !1, !"__initcall__kmod_rtc_davinci__227_508_davinci_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-davinci.c", i32 508, i32 1}
!2 = !{ptr @__exitcall_davinci_rtc_driver_exit, !1, !"__exitcall_davinci_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-davinci.c", i32 510, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-davinci.c", i32 511, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-davinci.c", i32 512, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-davinci.c", i32 472, i32 9}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-davinci.c", i32 474, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @davinci_rtc_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @davinci_rtc_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @davinci_rtc_ops, !21, !"davinci_rtc_ops", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-davinci.c", i32 427, i32 35}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-davinci.c", i32 104, i32 8}
!24 = !{ptr @davinci_rtc_lock, !23, !"davinci_rtc_lock", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-davinci.c", i32 504, i32 11}
!27 = !{ptr @davinci_rtc_driver, !28, !"davinci_rtc_driver", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-davinci.c", i32 501, i32 31}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2153814979}
!39 = !{i64 4663929}
!40 = !{i64 4664347}
!41 = !{i64 2153815844}
!42 = !{i64 2153816377}
!43 = !{i64 2153816219}
!44 = !{i64 2153817520}
!45 = !{i64 2153817362}
