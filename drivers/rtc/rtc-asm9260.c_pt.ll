; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-asm9260.c_pt.bc'
source_filename = "../drivers/rtc/rtc-asm9260.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.asm9260_rtc_priv = type { ptr, ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_asm9260__227_336_asm9260_rtc_driver_init6 = internal global ptr @asm9260_rtc_driver_init, section ".initcall6.init", align 4
@asm9260_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @asm9260_rtc_probe, ptr @asm9260_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @asm9260_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_asm9260_rtc_driver_exit = internal global ptr @asm9260_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [59 x i8] c"rtc_asm9260.author=Oleksij Rempel <linux@rempel-privat.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [75 x i8] c"rtc_asm9260.description=Alphascale asm9260 SoC Realtime Clock Driver (RTC)\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [41 x i8] c"rtc_asm9260.file=drivers/rtc/rtc-asm9260\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [24 x i8] c"rtc_asm9260.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"asm9260-rtc\00", [20 x i8] zeroinitializer }, align 32
@asm9260_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"alphascale,asm9260-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@asm9260_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 272, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to enable clk!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"asm9260_rtc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-asm9260.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@asm9260_rtc_probe._entry_ptr = internal global ptr @asm9260_rtc_probe._entry, section ".printk_index", align 4
@asm9260_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @asm9260_rtc_read_time, ptr @asm9260_rtc_set_time, ptr @asm9260_rtc_read_alarm, ptr @asm9260_rtc_set_alarm, ptr null, ptr @asm9260_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@asm9260_rtc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 291, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register RTC device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@asm9260_rtc_probe._entry_ptr.9 = internal global ptr @asm9260_rtc_probe._entry.7, section ".printk_index", align 4
@asm9260_rtc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 300, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get irq %i, err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@asm9260_rtc_probe._entry_ptr.12 = internal global ptr @asm9260_rtc_probe._entry.10, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"asm9260_rtc_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 327, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 331, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"asm9260_dt_ids\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 321, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 266, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 272, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"asm9260_rtc_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 236, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 291, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [29 x i8] c"../drivers/rtc/rtc-asm9260.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 299, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_asm9260_rtc_driver_exit, ptr @__initcall__kmod_rtc_asm9260__227_336_asm9260_rtc_driver_init6, ptr @asm9260_rtc_driver_exit, ptr @asm9260_rtc_probe._entry, ptr @asm9260_rtc_probe._entry.10, ptr @asm9260_rtc_probe._entry.7, ptr @asm9260_rtc_probe._entry_ptr, ptr @asm9260_rtc_probe._entry_ptr.12, ptr @asm9260_rtc_probe._entry_ptr.9, ptr @asm9260_rtc_driver, ptr @.str, ptr @asm9260_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @asm9260_rtc_ops, ptr @.str.8, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_rtc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm9260_rtc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @asm9260_rtc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @asm9260_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @asm9260_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %iobase = getelementptr inbounds %struct.asm9260_rtc_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %iobase, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %clk = getelementptr inbounds %struct.asm9260_rtc_priv, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call14, ptr %clk, align 4
  %cmp.i103 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %call.i104 = tail call i32 @clk_prepare(ptr noundef %call14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool.not.i = icmp eq i32 %call.i104, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.do.end_crit_edge

if.end20.do.end_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.end20
  %call1.i = tail call i32 @clk_enable(ptr noundef %call14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end25, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call14) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end20.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i104, %if.end20.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end.i
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !45
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %and = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp28.not = icmp eq i32 %and, 1
  br i1 %cmp28.not, label %if.end25.if.end32_crit_edge, label %if.then29

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase, align 4
  %add.ptr31 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 33554432) #5, !srcloc !48
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end25.if.end32_crit_edge
  %ccr.0 = phi i32 [ 0, %if.then29 ], [ %9, %if.end25.if.end32_crit_edge ]
  %or = or i32 %ccr.0, 1
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase, align 4
  %add.ptr34 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %14) #5, !srcloc !48
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase, align 4
  %add.ptr36 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #5, !srcloc !48
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase, align 4
  %add.ptr38 = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 -16777216) #5, !srcloc !48
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i105 = icmp eq ptr %20, null
  br i1 %tobool.not.i105, label %if.end.i106, label %if.end32.dev_name.exit_crit_edge

if.end32.dev_name.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i106:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i106, %if.end32.dev_name.exit_crit_edge
  %retval.0.i107 = phi ptr [ %22, %if.end.i106 ], [ %20, %if.end32.dev_name.exit_crit_edge ]
  %call40 = tail call ptr @devm_rtc_device_register(ptr noundef %dev1, ptr noundef %retval.0.i107, ptr noundef nonnull @asm9260_rtc_ops, ptr noundef null) #5
  %rtc = getelementptr inbounds %struct.asm9260_rtc_priv, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call40, ptr %rtc, align 4
  %cmp.i108 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %if.then43, label %if.end49

if.then43:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %call40 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %24) #8
  br label %err_return

if.end49:                                         ; preds = %dev_name.exit
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i110 = icmp eq ptr %26, null
  br i1 %tobool.not.i110, label %if.end.i111, label %if.end49.dev_name.exit113_crit_edge

if.end49.dev_name.exit113_crit_edge:              ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit113

if.end.i111:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit113

dev_name.exit113:                                 ; preds = %if.end.i111, %if.end49.dev_name.exit113_crit_edge
  %retval.0.i112 = phi ptr [ %28, %if.end.i111 ], [ %26, %if.end49.dev_name.exit113_crit_edge ]
  %call51 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call4, ptr noundef null, ptr noundef nonnull @asm9260_rtc_irq, i32 noundef 8192, ptr noundef %retval.0.i112, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.end56, label %dev_name.exit113.cleanup_crit_edge

dev_name.exit113.cleanup_crit_edge:               ; preds = %dev_name.exit113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end56:                                         ; preds = %dev_name.exit113
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call4, i32 noundef %call51) #8
  br label %err_return

err_return:                                       ; preds = %do.end56, %if.then43
  %ret.0 = phi i32 [ %24, %if.then43 ], [ %call51, %do.end56 ]
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %30) #5
  tail call void @clk_unprepare(ptr noundef %30) #5
  br label %cleanup

cleanup:                                          ; preds = %err_return, %dev_name.exit113.cleanup_crit_edge, %do.end, %if.then17, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then10 ], [ %5, %if.then17 ], [ %retval.0.i.ph, %do.end ], [ %ret.0, %err_return ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %dev_name.exit113.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_rtc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iobase = getelementptr inbounds %struct.asm9260_rtc_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16777216) #5, !srcloc !48
  %clk = getelementptr inbounds %struct.asm9260_rtc_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_rtc_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc = getelementptr inbounds %struct.asm9260_rtc_priv, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #5
  %iobase = getelementptr inbounds %struct.asm9260_rtc_priv, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtc, align 4
  %ops_lock2 = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %ops_lock2) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #5, !srcloc !48
  %9 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtc, align 4
  %ops_lock6 = getelementptr inbounds %struct.rtc_device, ptr %10, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %ops_lock6) #5
  %11 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtc, align 4
  tail call void @rtc_update_irq(ptr noundef %12, i32 noundef 1, i32 noundef 160) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %iobase = getelementptr inbounds %struct.asm9260_rtc_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !45
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !45
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 28
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !45
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase, align 4
  %add.ptr9 = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %16)
  %cmp.not = icmp eq i32 %8, %16
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase, align 4
  %add.ptr12 = getelementptr i8, ptr %18, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !45
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase, align 4
  %add.ptr15 = getelementptr i8, ptr %22, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #5, !srcloc !45
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iobase, align 4
  %add.ptr18 = getelementptr i8, ptr %26, i32 28
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #5, !srcloc !45
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ctime0.0 = phi i32 [ %20, %if.then ], [ %5, %entry.if.end_crit_edge ]
  %ctime1.0 = phi i32 [ %24, %if.then ], [ %9, %entry.if.end_crit_edge ]
  %ctime2.0 = phi i32 [ %28, %if.then ], [ %13, %entry.if.end_crit_edge ]
  %and = and i32 %ctime0.0, 63
  %29 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and, ptr %tm, align 4
  %shr20 = lshr i32 %ctime0.0, 8
  %and21 = and i32 %shr20, 63
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %30 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and21, ptr %tm_min, align 4
  %shr22 = lshr i32 %ctime0.0, 16
  %and23 = and i32 %shr22, 31
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %31 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and23, ptr %tm_hour, align 4
  %shr24 = lshr i32 %ctime0.0, 24
  %and25 = and i32 %shr24, 7
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %32 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and25, ptr %tm_wday, align 4
  %and27 = and i32 %ctime1.0, 31
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %33 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and27, ptr %tm_mday, align 4
  %shr28 = lshr i32 %ctime1.0, 8
  %and29 = and i32 %shr28, 15
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %34 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and29, ptr %tm_mon, align 4
  %shr30 = lshr i32 %ctime1.0, 16
  %and31 = and i32 %shr30, 4095
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %35 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and31, ptr %tm_year, align 4
  %and33 = and i32 %ctime2.0, 4095
  %tm_yday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 7
  %36 = ptrtoint ptr %tm_yday to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and33, ptr %tm_yday, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %iobase = getelementptr inbounds %struct.asm9260_rtc_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !48
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %4 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_year, align 4
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %8) #5, !srcloc !48
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %9 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_mon, align 4
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase, align 4
  %add.ptr4 = getelementptr i8, ptr %12, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %13) #5, !srcloc !48
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %14 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mday, align 4
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase, align 4
  %add.ptr6 = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %18) #5, !srcloc !48
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %19 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_wday, align 4
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase, align 4
  %add.ptr8 = getelementptr i8, ptr %22, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %23) #5, !srcloc !48
  %tm_yday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 7
  %24 = ptrtoint ptr %tm_yday to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_yday, align 4
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase, align 4
  %add.ptr10 = getelementptr i8, ptr %27, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %28) #5, !srcloc !48
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %29 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_hour, align 4
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iobase, align 4
  %add.ptr12 = getelementptr i8, ptr %32, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %33) #5, !srcloc !48
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %34 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_min, align 4
  %36 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iobase, align 4
  %add.ptr14 = getelementptr i8, ptr %37, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %38 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %38) #5, !srcloc !48
  %39 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tm, align 4
  %41 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iobase, align 4
  %add.ptr16 = getelementptr i8, ptr %42, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %43) #5, !srcloc !48
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %iobase = getelementptr inbounds %struct.asm9260_rtc_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 124
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !45
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tm_year, align 4
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 120
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !45
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tm_mon, align 4
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase, align 4
  %add.ptr7 = getelementptr i8, ptr %13, i32 108
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !45
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tm_mday, align 4
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase, align 4
  %add.ptr11 = getelementptr i8, ptr %18, i32 112
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !45
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %21 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tm_wday, align 4
  %22 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iobase, align 4
  %add.ptr15 = getelementptr i8, ptr %23, i32 116
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #5, !srcloc !45
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %tm_yday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 7
  %26 = ptrtoint ptr %tm_yday to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %tm_yday, align 4
  %27 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase, align 4
  %add.ptr19 = getelementptr i8, ptr %28, i32 104
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #5, !srcloc !45
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tm_hour, align 4
  %32 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase, align 4
  %add.ptr23 = getelementptr i8, ptr %33, i32 100
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #5, !srcloc !45
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %tm_min, align 4
  %37 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iobase, align 4
  %add.ptr27 = getelementptr i8, ptr %38, i32 96
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #5, !srcloc !45
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %41 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %time, align 4
  %42 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase, align 4
  %add.ptr31 = getelementptr i8, ptr %43, i32 16
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not = icmp ne i32 %44, 0
  %conv = zext i1 %tobool.not to i8
  %45 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv, ptr %alrm, align 4
  %46 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iobase, align 4
  %add.ptr34 = getelementptr i8, ptr %47, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool36.not = icmp ne i32 %48, 0
  %conv38 = zext i1 %tobool36.not to i8
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %49 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv38, ptr %pending, align 1
  %call40 = tail call i32 @rtc_valid_tm(ptr noundef %time) #5
  ret i32 %call40
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_year, align 4
  %iobase = getelementptr inbounds %struct.asm9260_rtc_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #5, !srcloc !48
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_mon, align 4
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %11) #5, !srcloc !48
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_mday, align 4
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase, align 4
  %add.ptr6 = getelementptr i8, ptr %15, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %16) #5, !srcloc !48
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %17 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_wday, align 4
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase, align 4
  %add.ptr9 = getelementptr i8, ptr %20, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %21) #5, !srcloc !48
  %tm_yday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 7
  %22 = ptrtoint ptr %tm_yday to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_yday, align 4
  %24 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase, align 4
  %add.ptr12 = getelementptr i8, ptr %25, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %26) #5, !srcloc !48
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_hour, align 4
  %29 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iobase, align 4
  %add.ptr15 = getelementptr i8, ptr %30, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %31) #5, !srcloc !48
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm_min, align 4
  %34 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iobase, align 4
  %add.ptr18 = getelementptr i8, ptr %35, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %36 = tail call i32 @llvm.bswap.i32(i32 %33) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %36) #5, !srcloc !48
  %37 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %time, align 4
  %39 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase, align 4
  %add.ptr21 = getelementptr i8, ptr %40, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %41) #5, !srcloc !48
  %42 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not = icmp eq i8 %43, 0
  %cond = select i1 %tobool.not, i32 -16777216, i32 0
  %44 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iobase, align 4
  %add.ptr23 = getelementptr i8, ptr %45, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %cond) #5, !srcloc !48
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm9260_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %cond = select i1 %tobool.not, i32 -16777216, i32 0
  %iobase = getelementptr inbounds %struct.asm9260_rtc_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %cond) #5, !srcloc !48
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_rtc_asm9260__227_336_asm9260_rtc_driver_init6, !1, !"__initcall__kmod_rtc_asm9260__227_336_asm9260_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-asm9260.c", i32 336, i32 1}
!2 = !{ptr @__exitcall_asm9260_rtc_driver_exit, !1, !"__exitcall_asm9260_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-asm9260.c", i32 338, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-asm9260.c", i32 339, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-asm9260.c", i32 340, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-asm9260.c", i32 331, i32 11}
!12 = !{ptr @asm9260_rtc_driver, !13, !"asm9260_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-asm9260.c", i32 327, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-asm9260.c", i32 266, i32 32}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-asm9260.c", i32 272, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @asm9260_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @asm9260_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-asm9260.c", i32 291, i32 3}
!26 = !{ptr @asm9260_rtc_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @asm9260_rtc_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-asm9260.c", i32 299, i32 3}
!30 = !{ptr @asm9260_rtc_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @asm9260_rtc_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @asm9260_rtc_ops, !33, !"asm9260_rtc_ops", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-asm9260.c", i32 236, i32 35}
!34 = !{ptr @asm9260_dt_ids, !35, !"asm9260_dt_ids", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-asm9260.c", i32 321, i32 34}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 4237189}
!46 = !{i64 2151777538}
!47 = !{i64 2151778893}
!48 = !{i64 4236771}
