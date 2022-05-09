; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-msc313.c_pt.bc'
source_filename = "../drivers/rtc/rtc-msc313.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.msc313_rtc = type { ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_msc313__227_254_msc313_rtc_driver_init6 = internal global ptr @msc313_rtc_driver_init, section ".initcall6.init", align 4
@msc313_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @msc313_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msc313_rtc_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_msc313_rtc_driver_exit = internal global ptr @msc313_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [51 x i8] c"rtc_msc313.author=Daniel Palmer <daniel@thingy.jp>\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [58 x i8] c"rtc_msc313.author=Romain Perier <romain.perier@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [40 x i8] c"rtc_msc313.description=MStar RTC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [39 x i8] c"rtc_msc313.file=drivers/rtc/rtc-msc313\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [26 x i8] c"rtc_msc313.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msc313-rtc\00", [21 x i8] zeroinitializer }, align 32
@msc313_rtc_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mstar,msc313-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@msc313_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @msc313_rtc_read_time, ptr @msc313_rtc_set_time, ptr @msc313_rtc_read_alarm, ptr @msc313_rtc_set_alarm, ptr null, ptr @msc313_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msc313_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 211, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msc313_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-msc313.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msc313_rtc_probe._entry_ptr = internal global ptr @msc313_rtc_probe._entry, section ".printk_index", align 4
@msc313_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No input reference clock\0A\00", [38 x i8] zeroinitializer }, align 32
@msc313_rtc_probe._entry_ptr.8 = internal global ptr @msc313_rtc_probe._entry.6, section ".printk_index", align 4
@msc313_rtc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to enable the reference clock, %d\0A\00", [54 x i8] zeroinitializer }, align 32
@msc313_rtc_probe._entry_ptr.11 = internal global ptr @msc313_rtc_probe._entry.9, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"msc313_rtc_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 246, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 249, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [26 x i8] c"msc313_rtc_of_match_table\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 240, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"msc313_rtc_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 153, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 211, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 217, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [28 x i8] c"../drivers/rtc/rtc-msc313.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 223, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_msc313_rtc_driver_exit, ptr @__initcall__kmod_rtc_msc313__227_254_msc313_rtc_driver_init6, ptr @msc313_rtc_driver_exit, ptr @msc313_rtc_probe._entry, ptr @msc313_rtc_probe._entry.6, ptr @msc313_rtc_probe._entry.9, ptr @msc313_rtc_probe._entry_ptr, ptr @msc313_rtc_probe._entry_ptr.11, ptr @msc313_rtc_probe._entry_ptr.8, ptr @msc313_rtc_driver, ptr @.str, ptr @msc313_rtc_of_match_table, ptr @msc313_rtc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313_rtc_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313_rtc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @msc313_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @msc313_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @msc313_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %rtc_base = getelementptr inbounds %struct.msc313_rtc, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %rtc_base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %rtc_base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call13 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call13, ptr %call.i, align 4
  %cmp.i103 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call13, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @msc313_rtc_ops, ptr %ops, align 8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 4294967295, ptr %range_max, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.dev_name.exit_crit_edge

if.end19.dev_name.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end19.dev_name.exit_crit_edge ]
  %call.i104 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call10, ptr noundef nonnull @msc313_rtc_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool26.not = icmp eq i32 %call.i104, 0
  br i1 %tobool26.not, label %if.end28, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end28:                                         ; preds = %dev_name.exit
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %cmp.i105 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  %12 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %call.i106 = tail call i32 @clk_prepare(ptr noundef %call29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool.not.i107 = icmp eq i32 %call.i106, 0
  br i1 %tobool.not.i107, label %if.end.i108, label %if.end36.do.end42_crit_edge

if.end36.do.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

if.end.i108:                                      ; preds = %if.end36
  %call1.i = tail call i32 @clk_enable(ptr noundef %call29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end43, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call29) #6
  br label %do.end42

do.end42:                                         ; preds = %if.then3.i, %if.end36.do.end42_crit_edge
  %retval.0.i109.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i106, %if.end36.do.end42_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i109.ph) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end.i108
  %call.i110 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %call29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool.not.i111 = icmp eq i32 %call.i110, 0
  br i1 %tobool.not.i111, label %if.end47, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %call29) #6
  tail call void @clk_unprepare(ptr noundef %call29) #6
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = tail call i32 @clk_get_rate(ptr noundef %call29) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %call48 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %14 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtc_base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %13) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %shr = lshr i32 %call48, 16
  %conv57 = trunc i32 %shr to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv57)
  %add.ptr59 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr59, i16 %16) #6, !srcloc !46
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call61 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %19) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %devm_add_action_or_reset.exit, %do.end42, %do.end34, %do.end, %if.then16, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %3, %if.then16 ], [ %call.i104, %do.end ], [ %12, %do.end34 ], [ %retval.0.i109.ph, %do.end42 ], [ %call61, %if.end47 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %call.i110, %devm_add_action_or_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313_rtc_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rtc_base = getelementptr inbounds %struct.msc313_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 28
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %5 = and i16 %4, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc_base, align 4
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %9 = and i16 %8, 16383
  %10 = or i16 %9, -32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtc_base, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %10) #6, !srcloc !46
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %14, i32 noundef 1, i32 noundef 160) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_disable_unprepare(ptr noundef %clk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %clk) #6
  tail call void @clk_unprepare(ptr noundef %clk) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313_rtc_read_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rtc_base.i = getelementptr inbounds %struct.msc313_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rtc_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_base.i, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %5 = and i16 %4, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not = icmp eq i16 %5, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %rtc_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc_base.i, align 4
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %9 = or i16 %8, 4096
  %10 = ptrtoint ptr %rtc_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtc_base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %9) #6, !srcloc !46
  %12 = ptrtoint ptr %rtc_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtc_base.i, align 4
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %15 = and i16 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not40 = icmp eq i16 %15, 0
  br i1 %tobool.not40, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #6
  %17 = ptrtoint ptr %rtc_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rtc_base.i, align 4
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %20 = and i16 %19, 4096
  %tobool.not = icmp eq i16 %20, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %21 = ptrtoint ptr %rtc_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rtc_base.i, align 4
  %add.ptr18 = getelementptr i8, ptr %22, i32 32
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %24 = ptrtoint ptr %rtc_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rtc_base.i, align 4
  %add.ptr26 = getelementptr i8, ptr %25, i32 36
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr26) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %27 = zext i16 %26 to i32
  %28 = zext i16 %23 to i32
  %29 = shl nuw i32 %28, 16
  %30 = or i32 %29, %27
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %conv32 = zext i32 %31 to i64
  tail call void @rtc_time64_to_tm(i64 noundef %conv32, ptr noundef %tm) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313_rtc_set_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %conv2 = trunc i64 %call1 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %rtc_base = getelementptr inbounds %struct.msc313_rtc, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtc_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %shr36 = lshr i64 %call1, 16
  %conv7 = trunc i64 %shr36 to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %6 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc_base, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 %5) #6, !srcloc !46
  %8 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtc_base, align 4
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %11 = or i16 %10, 2048
  %12 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtc_base, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %13, i16 %11) #6, !srcloc !46
  %14 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtc_base, align 4
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %17 = and i16 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not37 = icmp eq i16 %17, 0
  br i1 %tobool.not37, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #6
  %19 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rtc_base, align 4
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %22 = and i16 %21, 2048
  %tobool.not = icmp eq i16 %22, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %23 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rtc_base, align 4
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %24) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %26 = or i16 %25, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rtc_base, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 %26) #6, !srcloc !46
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alarm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rtc_base = getelementptr inbounds %struct.msc313_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  %5 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtc_base, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 24
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %8 = zext i16 %7 to i32
  %9 = zext i16 %4 to i32
  %10 = shl nuw i32 %9, 16
  %11 = or i32 %10, %8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %conv11 = zext i32 %12 to i64
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  tail call void @rtc_time64_to_tm(i64 noundef %conv11, ptr noundef %time) #6
  %13 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtc_base, align 4
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %16 = and i16 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %alarm, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alarm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %conv2 = trunc i64 %call1 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %rtc_base = getelementptr inbounds %struct.msc313_rtc, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtc_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %shr16 = lshr i64 %call1, 16
  %conv7 = trunc i64 %shr16 to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %6 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc_base, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 %5) #6, !srcloc !46
  %8 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %alarm, align 4
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %rtc_base.i = getelementptr inbounds %struct.msc313_rtc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %rtc_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtc_base.i, align 4
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %15 = and i16 %14, -8193
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #6
  %masksel.i = select i1 %tobool.not.i, i16 32, i16 0
  %reg.0.i = or i16 %16, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %17 = tail call i16 @llvm.bswap.i16(i16 %reg.0.i) #6
  %18 = ptrtoint ptr %rtc_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtc_base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 %17) #6, !srcloc !46
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rtc_base = getelementptr inbounds %struct.msc313_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_base, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %5 = and i16 %4, -8193
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %masksel = select i1 %tobool.not, i16 32, i16 0
  %reg.0 = or i16 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %7 = tail call i16 @llvm.bswap.i16(i16 %reg.0)
  %8 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtc_base, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 %7) #6, !srcloc !46
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_rtc_msc313__227_254_msc313_rtc_driver_init6, !1, !"__initcall__kmod_rtc_msc313__227_254_msc313_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-msc313.c", i32 254, i32 1}
!2 = !{ptr @__exitcall_msc313_rtc_driver_exit, !1, !"__exitcall_msc313_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-msc313.c", i32 256, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-msc313.c", i32 257, i32 1}
!7 = !{ptr @__UNIQUE_ID_description230, !8, !"__UNIQUE_ID_description230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-msc313.c", i32 258, i32 1}
!9 = !{ptr @__UNIQUE_ID_file231, !10, !"__UNIQUE_ID_file231", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-msc313.c", i32 259, i32 1}
!11 = !{ptr @__UNIQUE_ID_license232, !10, !"__UNIQUE_ID_license232", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-msc313.c", i32 249, i32 11}
!14 = !{ptr @msc313_rtc_driver, !15, !"msc313_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-msc313.c", i32 246, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-msc313.c", i32 211, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @msc313_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @msc313_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-msc313.c", i32 217, i32 3}
!26 = !{ptr @msc313_rtc_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @msc313_rtc_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-msc313.c", i32 223, i32 3}
!30 = !{ptr @msc313_rtc_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @msc313_rtc_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @msc313_rtc_ops, !33, !"msc313_rtc_ops", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-msc313.c", i32 153, i32 35}
!34 = !{ptr @msc313_rtc_of_match_table, !35, !"msc313_rtc_of_match_table", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-msc313.c", i32 240, i32 34}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2153881052}
!46 = !{i64 3073493}
!47 = !{i64 2153881502}
!48 = !{i64 3073693}
!49 = !{i64 2153874520}
!50 = !{i64 2153875109}
!51 = !{i64 2153875496}
!52 = !{i64 2153866511}
!53 = !{i64 2153868094}
!54 = !{i64 2153868429}
!55 = !{i64 2153869205}
!56 = !{i64 2153870330}
!57 = !{i64 2153870837}
!58 = !{i64 2153871073}
!59 = !{i64 2153871535}
!60 = !{i64 2153872284}
!61 = !{i64 2153872619}
!62 = !{i64 2153873395}
!63 = !{i64 2153867100}
!64 = !{i64 2153867405}
!65 = !{i64 2153862887}
!66 = !{i64 2153863394}
!67 = !{i64 2153863901}
!68 = !{i64 2153865294}
!69 = !{i64 2153865762}
!70 = !{i64 2153864490}
!71 = !{i64 2153864877}
