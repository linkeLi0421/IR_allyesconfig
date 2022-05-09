; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-spear.c_pt.bc'
source_filename = "../drivers/rtc/rtc-spear.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spear_rtc_config = type { ptr, ptr, %struct.spinlock, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_spear__227_486_spear_rtc_driver_init6 = internal global ptr @spear_rtc_driver_init, section ".initcall6.init", align 4
@spear_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spear_rtc_probe, ptr @spear_rtc_remove, ptr @spear_rtc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spear_rtc_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spear_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spear_rtc_driver_exit = internal global ptr @spear_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias228 = internal constant [35 x i8] c"rtc_spear.alias=platform:rtc-spear\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [56 x i8] c"rtc_spear.author=Rajeev Kumar <rajeev-dlh.kumar@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [59 x i8] c"rtc_spear.description=ST SPEAr Realtime Clock Driver (RTC)\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [37 x i8] c"rtc_spear.file=drivers/rtc/rtc-spear\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [22 x i8] c"rtc_spear.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc-spear\00", [22 x i8] zeroinitializer }, align 32
@spear_rtc_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear600-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@spear_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @spear_rtc_suspend, ptr @spear_rtc_resume, ptr @spear_rtc_suspend, ptr @spear_rtc_resume, ptr @spear_rtc_suspend, ptr @spear_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@spear_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 364, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Alarm interrupt IRQ%d already claimed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spear_rtc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/rtc-spear.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spear_rtc_probe._entry_ptr = internal global ptr @spear_rtc_probe._entry, section ".printk_index", align 4
@spear_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&config->lock\00", [18 x i8] zeroinitializer }, align 32
@spear_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @spear_rtc_read_time, ptr @spear_rtc_set_time, ptr @spear_rtc_read_alarm, ptr @spear_rtc_set_alarm, ptr null, ptr @spear_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@spear_rtc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't register RTC device, err %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@spear_rtc_probe._entry_ptr.9 = internal global ptr @spear_rtc_probe._entry.7, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"spear_rtc_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 475, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 480, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"spear_rtc_id_table\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 468, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"spear_rtc_pm_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 457, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 363, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 380, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"spear_rtc_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 337, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [27 x i8] c"../drivers/rtc/rtc-spear.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 386, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_spear_rtc_driver_exit, ptr @__initcall__kmod_rtc_spear__227_486_spear_rtc_driver_init6, ptr @spear_rtc_driver_exit, ptr @spear_rtc_probe._entry, ptr @spear_rtc_probe._entry.7, ptr @spear_rtc_probe._entry_ptr, ptr @spear_rtc_probe._entry_ptr.9, ptr @spear_rtc_driver, ptr @.str, ptr @spear_rtc_id_table, ptr @spear_rtc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @spear_rtc_probe.__key, ptr @.str.6, ptr @spear_rtc_ops, ptr @.str.8], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_rtc_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_rtc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spear_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spear_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @spear_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call.i94 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call1, ptr noundef nonnull @spear_rtc_irq, ptr noundef null, i32 noundef 0, ptr noundef %1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool6.not = icmp eq i32 %call.i94, 0
  br i1 %tobool6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call1) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %ioaddr = getelementptr inbounds %struct.spear_rtc_config, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %ioaddr, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.spear_rtc_config, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call18, ptr %clk, align 4
  %cmp.i95 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %call.i96 = tail call i32 @clk_prepare(ptr noundef %call18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.clk_prepare_enable.exit_crit_edge

if.end24.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end24
  %call1.i = tail call i32 @clk_enable(ptr noundef %call18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.do.body30_crit_edge, label %if.then3.i

if.end.i.do.body30_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call18) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end24.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i96, %if.end24.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp27 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp27, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.do.body30_crit_edge

clk_prepare_enable.exit.do.body30_crit_edge:      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body30:                                        ; preds = %clk_prepare_enable.exit.do.body30_crit_edge, %if.end.i.do.body30_crit_edge
  %lock = getelementptr inbounds %struct.spear_rtc_config, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @spear_rtc_probe.__key, i16 noundef signext 3) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %call36 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef %8, ptr noundef nonnull @spear_rtc_ops, ptr noundef null) #6
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call36, ptr %call.i, align 4
  %cmp.i97 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %do.end42, label %if.end48

do.end42:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call36 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %10) #9
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %cleanup

if.end48:                                         ; preds = %do.body30
  %uie_unsupported = getelementptr inbounds %struct.rtc_device, ptr %call36, i32 0, i32 19
  %16 = ptrtoint ptr %uie_unsupported to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %uie_unsupported, align 8
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %17 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end48.cleanup_crit_edge, label %if.then52

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end48.cleanup_crit_edge, %do.end42, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then21, %if.then13, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i94, %do.end ], [ %3, %if.then13 ], [ %5, %if.then21 ], [ %13, %do.end42 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.then52 ], [ 0, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_rtc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr.i = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !46
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not.i = icmp sgt i32 %5, -1
  br i1 %tobool.not.i, label %entry.spear_rtc_disable_interrupt.exit_crit_edge, label %if.then.i

entry.spear_rtc_disable_interrupt.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spear_rtc_disable_interrupt.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and2.i = and i32 %5, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #6
  %7 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %6) #6, !srcloc !49
  br label %spear_rtc_disable_interrupt.exit

spear_rtc_disable_interrupt.exit:                 ; preds = %if.then.i, %entry.spear_rtc_disable_interrupt.exit_crit_edge
  %clk = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spear_rtc_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr.i = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !46
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not.i = icmp sgt i32 %5, -1
  br i1 %tobool.not.i, label %entry.spear_rtc_disable_interrupt.exit_crit_edge, label %if.then.i

entry.spear_rtc_disable_interrupt.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spear_rtc_disable_interrupt.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and2.i = and i32 %5, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #6
  %7 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %6) #6, !srcloc !49
  br label %spear_rtc_disable_interrupt.exit

spear_rtc_disable_interrupt.exit:                 ; preds = %if.then.i, %entry.spear_rtc_disable_interrupt.exit_crit_edge
  %clk = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %10) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_rtc_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.spear_rtc_config, ptr %dev_id, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %ioaddr = getelementptr inbounds %struct.spear_rtc_config, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %.mask = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %3 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  %6 = or i32 %5, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 4
  %add.ptr12.i = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %6) #6, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #6
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 4
  tail call void @rtc_update_irq(ptr noundef %10, i32 noundef 1, i32 noundef 160) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 2
  %ioaddr.i = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 3
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end.i.do.body1.i_crit_edge, %entry
  %count.015.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.do.body1.i_crit_edge ]
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %2 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  %5 = and i32 %4, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10.i = icmp eq i32 %5, 0
  br i1 %cmp10.i, label %do.body1.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i

do.body1.i.rtc_wait_not_busy.exit_crit_edge:      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtc_wait_not_busy.exit

if.end.i:                                         ; preds = %do.body1.i
  tail call void @msleep(i32 noundef 1) #6
  %inc.i = add nuw nsw i32 %count.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 80
  br i1 %exitcond.not.i, label %if.end.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i.do.body1.i_crit_edge

if.end.i.do.body1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i

if.end.i.rtc_wait_not_busy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtc_wait_not_busy.exit

rtc_wait_not_busy.exit:                           ; preds = %if.end.i.rtc_wait_not_busy.exit_crit_edge, %do.body1.i.rtc_wait_not_busy.exit_crit_edge
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !46
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !46
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %shr10 = lshr i32 %9, 8
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %shr12 = lshr i32 %9, 16
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %shr16 = lshr i32 %13, 8
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %14 = trunc i32 %9 to i8
  %conv.i = and i8 %14, 127
  %call.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv.i) #10
  %15 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i, ptr %tm, align 4
  %16 = trunc i32 %shr10 to i8
  %conv6.i = and i8 %16, 127
  %call17.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv6.i) #10
  %17 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call17.i, ptr %tm_min, align 4
  %18 = trunc i32 %shr12 to i8
  %conv21.i = and i8 %18, 63
  %call32.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv21.i) #10
  %19 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call32.i, ptr %tm_hour, align 4
  %20 = trunc i32 %13 to i8
  %conv36.i = and i8 %20, 63
  %call47.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv36.i) #10
  %21 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call47.i, ptr %tm_mday, align 4
  %22 = trunc i32 %shr16 to i8
  %conv51.i = and i8 %22, 127
  %call62.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv51.i) #10
  %sub.i = add i32 %call62.i, -1
  %23 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i, ptr %tm_mon, align 4
  %shr18 = lshr i32 %13, 16
  %conv66.i = trunc i32 %shr18 to i8
  %call77.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv66.i) #10
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %24 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call77.i, ptr %tm_year, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm, align 4
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %3) #10
  %conv4.i = zext i8 %call.i to i32
  %4 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv4.i, ptr %tm, align 4
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %5 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm_min.i, align 4
  %call16.i = tail call zeroext i8 @_bin2bcd(i32 noundef %6) #10
  %conv17.i = zext i8 %call16.i to i32
  %7 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv17.i, ptr %tm_min.i, align 4
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %8 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_hour.i, align 4
  %call31.i = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #10
  %conv32.i = zext i8 %call31.i to i32
  %10 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv32.i, ptr %tm_hour.i, align 4
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %11 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_mday.i, align 4
  %call46.i = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #10
  %conv47.i = zext i8 %call46.i to i32
  %13 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv47.i, ptr %tm_mday.i, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %14 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mon.i, align 4
  %add51.i = add i32 %15, 1
  %call65.i = tail call zeroext i8 @_bin2bcd(i32 noundef %add51.i) #10
  %conv66.i = zext i8 %call65.i to i32
  %16 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv66.i, ptr %tm_mon.i, align 4
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %17 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_year.i, align 4
  %call80.i = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #10
  %conv81.i = zext i8 %call80.i to i32
  %19 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv81.i, ptr %tm_year.i, align 4
  %lock.i = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 2
  %ioaddr.i = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 3
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end.i.do.body1.i_crit_edge, %entry
  %count.015.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.do.body1.i_crit_edge ]
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %20 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  %23 = and i32 %22, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp10.i = icmp eq i32 %23, 0
  br i1 %cmp10.i, label %do.body1.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i

do.body1.i.rtc_wait_not_busy.exit_crit_edge:      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtc_wait_not_busy.exit

if.end.i:                                         ; preds = %do.body1.i
  tail call void @msleep(i32 noundef 1) #6
  %inc.i = add nuw nsw i32 %count.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 80
  br i1 %exitcond.not.i, label %if.end.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i.do.body1.i_crit_edge

if.end.i.do.body1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i

if.end.i.rtc_wait_not_busy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtc_wait_not_busy.exit

rtc_wait_not_busy.exit:                           ; preds = %if.end.i.rtc_wait_not_busy.exit_crit_edge, %do.body1.i.rtc_wait_not_busy.exit_crit_edge
  %24 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm, align 4
  %26 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_min.i, align 4
  %shl1 = shl i32 %27, 8
  %or = or i32 %shl1, %25
  %28 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_hour.i, align 4
  %shl2 = shl i32 %29, 16
  %or3 = or i32 %or, %shl2
  %30 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tm_mday.i, align 4
  %32 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm_mon.i, align 4
  %shl5 = shl i32 %33, 8
  %or6 = or i32 %shl5, %31
  %34 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_year.i, align 4
  %shl7 = shl i32 %35, 16
  %or8 = or i32 %or6, %shl7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %37 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %or8)
  %40 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr13 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %39) #6, !srcloc !49
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %42 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %43, i32 20
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %45 = and i32 %44, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef %alm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 2
  %ioaddr.i = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 3
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end.i.do.body1.i_crit_edge, %entry
  %count.015.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.do.body1.i_crit_edge ]
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %2 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  %5 = and i32 %4, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10.i = icmp eq i32 %5, 0
  br i1 %cmp10.i, label %do.body1.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i

do.body1.i.rtc_wait_not_busy.exit_crit_edge:      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtc_wait_not_busy.exit

if.end.i:                                         ; preds = %do.body1.i
  tail call void @msleep(i32 noundef 1) #6
  %inc.i = add nuw nsw i32 %count.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 80
  br i1 %exitcond.not.i, label %if.end.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i.do.body1.i_crit_edge

if.end.i.do.body1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i

if.end.i.rtc_wait_not_busy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtc_wait_not_busy.exit

rtc_wait_not_busy.exit:                           ; preds = %if.end.i.rtc_wait_not_busy.exit_crit_edge, %do.body1.i.rtc_wait_not_busy.exit_crit_edge
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !46
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !46
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %time10 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %shr11 = lshr i32 %9, 8
  %and12 = and i32 %shr11, 127
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and12, ptr %tm_min, align 4
  %shr14 = lshr i32 %9, 16
  %and15 = and i32 %shr14, 63
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and15, ptr %tm_hour, align 4
  %and18 = and i32 %13, 63
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and18, ptr %tm_mday, align 4
  %shr20 = lshr i32 %13, 8
  %and21 = and i32 %shr20, 127
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and21, ptr %tm_mon, align 4
  %shr23 = lshr i32 %13, 16
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr23, ptr %tm_year, align 4
  %19 = trunc i32 %9 to i8
  %conv.i = and i8 %19, 127
  %call.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv.i) #10
  %20 = ptrtoint ptr %time10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i, ptr %time10, align 4
  %21 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_min, align 4
  %conv6.i = trunc i32 %22 to i8
  %call17.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv6.i) #10
  %23 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call17.i, ptr %tm_min, align 4
  %24 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_hour, align 4
  %conv21.i = trunc i32 %25 to i8
  %call32.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv21.i) #10
  %26 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call32.i, ptr %tm_hour, align 4
  %27 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_mday, align 4
  %conv36.i = trunc i32 %28 to i8
  %call47.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv36.i) #10
  %29 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call47.i, ptr %tm_mday, align 4
  %30 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tm_mon, align 4
  %conv51.i = trunc i32 %31 to i8
  %call62.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv51.i) #10
  %sub.i = add i32 %call62.i, -1
  %32 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub.i, ptr %tm_mon, align 4
  %33 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tm_year, align 4
  %conv66.i = trunc i32 %34 to i8
  %call77.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv66.i) #10
  %35 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call77.i, ptr %tm_year, align 4
  %36 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr30 = getelementptr i8, ptr %37, i32 16
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %39 = ptrtoint ptr %alm to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %alm, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef %alm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time1 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %2 = ptrtoint ptr %time1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %time1, align 4
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %3) #10
  %conv4.i = zext i8 %call.i to i32
  %4 = ptrtoint ptr %time1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv4.i, ptr %time1, align 4
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm_min.i, align 4
  %call16.i = tail call zeroext i8 @_bin2bcd(i32 noundef %6) #10
  %conv17.i = zext i8 %call16.i to i32
  %7 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv17.i, ptr %tm_min.i, align 4
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_hour.i, align 4
  %call31.i = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #10
  %conv32.i = zext i8 %call31.i to i32
  %10 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv32.i, ptr %tm_hour.i, align 4
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_mday.i, align 4
  %call46.i = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #10
  %conv47.i = zext i8 %call46.i to i32
  %13 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv47.i, ptr %tm_mday.i, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mon.i, align 4
  %add51.i = add i32 %15, 1
  %call65.i = tail call zeroext i8 @_bin2bcd(i32 noundef %add51.i) #10
  %conv66.i = zext i8 %call65.i to i32
  %16 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv66.i, ptr %tm_mon.i, align 4
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_year.i, align 4
  %call80.i = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #10
  %conv81.i = zext i8 %call80.i to i32
  %19 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv81.i, ptr %tm_year.i, align 4
  %lock.i = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 2
  %ioaddr.i = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 3
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end.i.do.body1.i_crit_edge, %entry
  %count.015.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.do.body1.i_crit_edge ]
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %20 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  %23 = and i32 %22, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp10.i = icmp eq i32 %23, 0
  br i1 %cmp10.i, label %do.body1.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i

do.body1.i.rtc_wait_not_busy.exit_crit_edge:      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtc_wait_not_busy.exit

if.end.i:                                         ; preds = %do.body1.i
  tail call void @msleep(i32 noundef 1) #6
  %inc.i = add nuw nsw i32 %count.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 80
  br i1 %exitcond.not.i, label %if.end.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i.do.body1.i_crit_edge

if.end.i.do.body1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i

if.end.i.rtc_wait_not_busy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtc_wait_not_busy.exit

rtc_wait_not_busy.exit:                           ; preds = %if.end.i.rtc_wait_not_busy.exit_crit_edge, %do.body1.i.rtc_wait_not_busy.exit_crit_edge
  %24 = ptrtoint ptr %time1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %time1, align 4
  %26 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_min.i, align 4
  %shl4 = shl i32 %27, 8
  %or = or i32 %shl4, %25
  %28 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_hour.i, align 4
  %shl6 = shl i32 %29, 16
  %or7 = or i32 %or, %shl6
  %30 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tm_mday.i, align 4
  %32 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm_mon.i, align 4
  %shl11 = shl i32 %33, 8
  %or12 = or i32 %shl11, %31
  %34 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_year.i, align 4
  %shl14 = shl i32 %35, 16
  %or15 = or i32 %or12, %shl14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %37 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %36) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %or15)
  %40 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr20 = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %39) #6, !srcloc !49
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %42 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %43, i32 20
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %45 = and i32 %44, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  br i1 %tobool.not.i, label %if.end, label %rtc_wait_not_busy.exit.cleanup_crit_edge

rtc_wait_not_busy.exit.cleanup_crit_edge:         ; preds = %rtc_wait_not_busy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %rtc_wait_not_busy.exit
  %46 = ptrtoint ptr %alm to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %alm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not = icmp eq i8 %47, 0
  %48 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %49, i32 16
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #6
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %tobool.not.i49 = icmp sgt i32 %51, -1
  br i1 %tobool.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  br i1 %tobool.not.i49, label %if.then.i, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %52 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 20
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  %55 = or i32 %54, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %56 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %57, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %55) #6, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.i) #6
  %or.i = or i32 %51, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %59 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %60, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %58) #6, !srcloc !49
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool.not.i49, label %if.else.cleanup_crit_edge, label %if.then.i50

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i50:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and2.i = and i32 %51, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #6
  %62 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %63, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %61) #6, !srcloc !49
  br label %cleanup

cleanup:                                          ; preds = %if.then.i50, %if.else.cleanup_crit_edge, %if.then.i, %if.then22.cleanup_crit_edge, %rtc_wait_not_busy.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %rtc_wait_not_busy.exit.cleanup_crit_edge ], [ 0, %if.then22.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then.i50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %ioaddr.i = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  %5 = or i32 %4, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %5) #6, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %8 = zext i32 %enabled to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %enabled, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #6, !srcloc !46
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool.not.i = icmp sgt i32 %12, -1
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %and2.i = and i32 %12, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #6
  %14 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %13) #6, !srcloc !49
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %16 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #6, !srcloc !46
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool.not.i8 = icmp sgt i32 %19, -1
  br i1 %tobool.not.i8, label %if.then.i9, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i9:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %20 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  %23 = or i32 %22, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %25, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %23) #6, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.i) #6
  %or.i = or i32 %19, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %27 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %26) #6, !srcloc !49
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i9, %sw.bb1.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.then.i ], [ 0, %sw.bb1.sw.epilog_crit_edge ], [ 0, %if.then.i9 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_rtc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #6
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %call1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then5, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %irq_wake = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %irq_wake to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %irq_wake, align 4
  br label %if.end6

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %ioaddr.i = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !46
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not.i11 = icmp sgt i32 %9, -1
  br i1 %tobool.not.i11, label %if.else.spear_rtc_disable_interrupt.exit_crit_edge, label %if.then.i

if.else.spear_rtc_disable_interrupt.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %spear_rtc_disable_interrupt.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and2.i = and i32 %9, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #6
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %10) #6, !srcloc !49
  br label %spear_rtc_disable_interrupt.exit

spear_rtc_disable_interrupt.exit:                 ; preds = %if.then.i, %if.else.spear_rtc_disable_interrupt.exit_crit_edge
  %clk = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  br label %if.end6

if.end6:                                          ; preds = %spear_rtc_disable_interrupt.exit, %if.then5, %if.then.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_rtc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #6
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  %irq_wake = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %irq_wake to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_wake, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then.if.end8_crit_edge, label %if.then4

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %call1, i32 noundef 0) #6
  %7 = ptrtoint ptr %irq_wake to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %irq_wake, align 4
  br label %if.end8

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %clk = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call7 = tail call i32 @clk_enable(ptr noundef %9) #6
  %ioaddr.i = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !46
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool.not.i14 = icmp sgt i32 %13, -1
  br i1 %tobool.not.i14, label %if.then.i, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i.i = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 2
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #6
  %14 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  %17 = or i32 %16, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %17) #6, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #6
  %or.i = or i32 %13, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %21 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %20) #6, !srcloc !49
  br label %if.end8

if.end8:                                          ; preds = %if.then.i, %if.else.if.end8_crit_edge, %if.then4, %if.then.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_rtc_spear__227_486_spear_rtc_driver_init6, !1, !"__initcall__kmod_rtc_spear__227_486_spear_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-spear.c", i32 486, i32 1}
!2 = !{ptr @__exitcall_spear_rtc_driver_exit, !1, !"__exitcall_spear_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias228, !4, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-spear.c", i32 488, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-spear.c", i32 489, i32 1}
!7 = !{ptr @__UNIQUE_ID_description230, !8, !"__UNIQUE_ID_description230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-spear.c", i32 490, i32 1}
!9 = !{ptr @__UNIQUE_ID_file231, !10, !"__UNIQUE_ID_file231", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-spear.c", i32 491, i32 1}
!11 = !{ptr @__UNIQUE_ID_license232, !10, !"__UNIQUE_ID_license232", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-spear.c", i32 480, i32 11}
!14 = !{ptr @spear_rtc_driver, !15, !"spear_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-spear.c", i32 475, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-spear.c", i32 363, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @spear_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @spear_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @spear_rtc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-spear.c", i32 380, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-spear.c", i32 386, i32 3}
!29 = !{ptr @spear_rtc_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @spear_rtc_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @spear_rtc_ops, !32, !"spear_rtc_ops", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-spear.c", i32 337, i32 35}
!33 = !{ptr @spear_rtc_id_table, !34, !"spear_rtc_id_table", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-spear.c", i32 468, i32 34}
!35 = !{ptr @spear_rtc_pm_ops, !36, !"spear_rtc_pm_ops", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-spear.c", i32 457, i32 8}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 3081193}
!47 = !{i64 2153949288}
!48 = !{i64 2153949527}
!49 = !{i64 3080775}
!50 = !{i64 2153952202}
!51 = !{i64 2153947108}
!52 = !{i64 2153947339}
!53 = !{i64 2153951651}
!54 = !{i64 2153954733}
!55 = !{i64 2153955240}
!56 = !{i64 2153955556}
!57 = !{i64 2153955962}
!58 = !{i64 2153950740}
!59 = !{i64 2153956651}
!60 = !{i64 2153957158}
!61 = !{i64 2153957727}
!62 = !{i64 2153957989}
!63 = !{i64 2153958395}
!64 = !{i64 2153948433}
!65 = !{i64 2153948194}
