; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ds1511.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ds1511.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.rtc_plat_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__UNIQUE_ID_alias227 = internal constant [33 x i8] c"rtc_ds1511.alias=platform:ds1511\00", section ".modinfo", align 1
@__initcall__kmod_rtc_ds1511__228_496_ds1511_rtc_driver_init6 = internal global ptr @ds1511_rtc_driver_init, section ".initcall6.init", align 4
@ds1511_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ds1511_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ds1511_rtc_driver_exit = internal global ptr @ds1511_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [52 x i8] c"rtc_ds1511.author=Andrew Sharp <andy.sharp@lsi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [48 x i8] c"rtc_ds1511.description=Dallas DS1511 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [39 x i8] c"rtc_ds1511.file=drivers/rtc/rtc-ds1511\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [23 x i8] c"rtc_ds1511.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ds1511\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds1511_nvram\00", [19 x i8] zeroinitializer }, align 32
@ds1511_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ds1511_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 452, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"voltage-low detected.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ds1511_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-ds1511.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ds1511_rtc_probe._entry_ptr = internal global ptr @ds1511_rtc_probe._entry, section ".printk_index", align 4
@ds1511_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&pdata->lock\00", [19 x i8] zeroinitializer }, align 32
@ds1511_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ds1511_rtc_read_time, ptr @ds1511_rtc_set_time, ptr @ds1511_rtc_read_alarm, ptr @ds1511_rtc_set_alarm, ptr null, ptr @ds1511_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ds1511_rtc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 478, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"interrupt not available.\0A\00", [38 x i8] zeroinitializer }, align 32
@ds1511_rtc_probe._entry_ptr.10 = internal global ptr @ds1511_rtc_probe._entry.8, section ".printk_index", align 4
@ds1511_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ds1511_lock\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"ds1511_rtc_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 489, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 492, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 414, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"ds1511_base\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 98, i32 22 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 452, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 454, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"ds1511_rtc_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 377, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 478, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"ds1511_lock\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [28 x i8] c"../drivers/rtc/rtc-ds1511.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 96, i32 8 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias227, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_ds1511_rtc_driver_exit, ptr @__initcall__kmod_rtc_ds1511__228_496_ds1511_rtc_driver_init6, ptr @ds1511_rtc_driver_exit, ptr @ds1511_rtc_probe._entry, ptr @ds1511_rtc_probe._entry.8, ptr @ds1511_rtc_probe._entry_ptr, ptr @ds1511_rtc_probe._entry_ptr.10, ptr @ds1511_rtc_driver, ptr @.str, ptr @.str.1, ptr @ds1511_base, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ds1511_rtc_probe.__key, ptr @.str.7, ptr @ds1511_rtc_ops, ptr @.str.9, ptr @ds1511_lock, ptr @.str.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1511_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1511_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1511_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1511_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1511_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1511_rtc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1511_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1511_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ds1511_rtc_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds1511_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @ds1511_rtc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1511_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ds1511_nvmem_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ds1511_nvmem_cfg) #10
  %0 = getelementptr inbounds i8, ptr %ds1511_nvmem_cfg, i32 40
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %ds1511_nvmem_cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ds1511_nvmem_cfg, align 4
  %name = getelementptr inbounds %struct.nvmem_config, ptr %ds1511_nvmem_cfg, i32 0, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.1, ptr %name, align 4
  %id = getelementptr inbounds %struct.nvmem_config, ptr %ds1511_nvmem_cfg, i32 0, i32 2
  %of_node = getelementptr inbounds %struct.nvmem_config, ptr %ds1511_nvmem_cfg, i32 0, i32 13
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %of_node, align 4
  %no_of_node = getelementptr inbounds %struct.nvmem_config, ptr %ds1511_nvmem_cfg, i32 0, i32 14
  %5 = ptrtoint ptr %no_of_node to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %no_of_node, align 4
  %reg_read = getelementptr inbounds %struct.nvmem_config, ptr %ds1511_nvmem_cfg, i32 0, i32 15
  %6 = call ptr @memset(ptr %id, i32 0, i32 35)
  %7 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ds1511_nvram_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.nvmem_config, ptr %ds1511_nvmem_cfg, i32 0, i32 16
  %8 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ds1511_nvram_write, ptr %reg_write, align 4
  %cell_post_process = getelementptr inbounds %struct.nvmem_config, ptr %ds1511_nvmem_cfg, i32 0, i32 17
  %9 = ptrtoint ptr %cell_post_process to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cell_post_process, align 4
  %size = getelementptr inbounds %struct.nvmem_config, ptr %ds1511_nvmem_cfg, i32 0, i32 18
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 256, ptr %size, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %ds1511_nvmem_cfg, i32 0, i32 19
  %11 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %word_size, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %ds1511_nvmem_cfg, i32 0, i32 20
  %12 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %stride, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %ds1511_nvmem_cfg, i32 0, i32 21
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev1, ptr %priv, align 4
  %compat = getelementptr inbounds %struct.nvmem_config, ptr %ds1511_nvmem_cfg, i32 0, i32 22
  %14 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %compat, align 4
  %base_dev = getelementptr inbounds %struct.nvmem_config, ptr %ds1511_nvmem_cfg, i32 0, i32 23
  %15 = ptrtoint ptr %base_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %base_dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 76, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  store ptr %call3, ptr @ds1511_base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %ioaddr = getelementptr inbounds %struct.rtc_plat_data, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call3, ptr %ioaddr, align 4
  %call8 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %irq = getelementptr inbounds %struct.rtc_plat_data, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call8, ptr %irq, align 4
  tail call fastcc void @rtc_write(i8 noundef zeroext 32, i32 noundef 15)
  tail call fastcc void @rtc_write(i8 noundef zeroext 0, i32 noundef 14)
  tail call fastcc void @rtc_write(i8 noundef zeroext 0, i32 noundef 12)
  tail call fastcc void @rtc_write(i8 noundef zeroext 0, i32 noundef 13)
  %call.i78 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 15) #10
  %19 = or i8 %call.i78, -128
  tail call fastcc void @rtc_write(i8 noundef zeroext %19, i32 noundef 15) #10
  %call9 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 14)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call9)
  %tobool10.not = icmp sgt i8 %call9, -1
  br i1 %tobool10.not, label %if.end7.do.body14_crit_edge, label %do.end

if.end7.do.body14_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.2) #13
  br label %do.body14

do.body14:                                        ; preds = %do.end, %if.end7.do.body14_crit_edge
  %lock = getelementptr inbounds %struct.rtc_plat_data, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @ds1511_rtc_probe.__key, i16 noundef signext 3) #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call19 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #10
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call19, ptr %call.i, align 4
  %cmp.i79 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then22, label %if.end25

if.then22:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end25:                                         ; preds = %do.body14
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call19, i32 0, i32 3
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ds1511_rtc_ops, ptr %ops, align 8
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %call28 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %call33 = call i32 @devm_rtc_nvmem_register(ptr noundef %27, ptr noundef nonnull %ds1511_nvmem_cfg) #10
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp sgt i32 %29, 0
  br i1 %cmp, label %if.then36, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then36:                                        ; preds = %if.end31
  %call37 = call fastcc zeroext i8 @rtc_read(i32 noundef 14)
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 8
  %call.i80 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %31, ptr noundef nonnull @ds1511_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %33, ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %cmp42 = icmp slt i32 %call.i80, 0
  br i1 %cmp42, label %do.end47, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end47:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.9) #13
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %irq, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.then36.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then22, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then5 ], [ %22, %if.then22 ], [ -12, %entry.cleanup_crit_edge ], [ %call28, %if.end25.cleanup_crit_edge ], [ 0, %if.then36.cleanup_crit_edge ], [ 0, %do.end47 ], [ 0, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ds1511_nvmem_cfg) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1511_nvram_read(ptr nocapture noundef readnone %priv, i32 noundef %pos, ptr nocapture noundef writeonly %buf, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %pos to i8
  tail call fastcc void @rtc_write(i8 noundef zeroext %conv, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp3.not = icmp eq i32 %size, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %buf.addr.04 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %call = tail call fastcc zeroext i8 @rtc_read(i32 noundef 19)
  %incdec.ptr = getelementptr i8, ptr %buf.addr.04, i32 1
  %0 = ptrtoint ptr %buf.addr.04 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %call, ptr %buf.addr.04, align 1
  %inc = add nuw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1511_nvram_write(ptr nocapture noundef readnone %priv, i32 noundef %pos, ptr nocapture noundef readonly %buf, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %pos to i8
  tail call fastcc void @rtc_write(i8 noundef zeroext %conv, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp3.not = icmp eq i32 %size, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %buf.addr.04 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %buf.addr.04, i32 1
  %0 = ptrtoint ptr %buf.addr.04 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf.addr.04, align 1
  tail call fastcc void @rtc_write(i8 noundef zeroext %1, i32 noundef 19)
  %inc = add nuw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtc_write(i8 noundef zeroext %val, i32 noundef %reg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !51
  tail call void @arm_heavy_mb() #10
  %0 = load ptr, ptr @ds1511_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 %reg
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #10, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtc_enable_update() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i8 @rtc_read(i32 noundef 15)
  %0 = or i8 %call, -128
  tail call fastcc void @rtc_write(i8 noundef zeroext %0, i32 noundef 15)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @rtc_read(i32 noundef %reg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ds1511_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 %reg
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  ret i8 %1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1511_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev_id, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %call1 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 14)
  %2 = and i8 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call2)
  %tobool5.not = icmp sgt i8 %call2, -1
  %. = select i1 %tobool5.not, i32 160, i32 144
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %4, i32 noundef 1, i32 noundef %.) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry.if.end8_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1511_rtc_read_time(ptr nocapture noundef readnone %dev, ptr nocapture noundef %rtc_tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ds1511_lock) #10
  %call.i = tail call fastcc zeroext i8 @rtc_read(i32 noundef 15) #10
  %0 = and i8 %call.i, 127
  tail call fastcc void @rtc_write(i8 noundef zeroext %0, i32 noundef 15) #10
  %call5 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 0)
  %1 = and i8 %call5, 127
  %and = zext i8 %1 to i32
  %2 = ptrtoint ptr %rtc_tm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %rtc_tm, align 4
  %call7 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 1)
  %3 = and i8 %call7, 127
  %and9 = zext i8 %3 to i32
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 1
  %4 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and9, ptr %tm_min, align 4
  %call10 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 2)
  %5 = and i8 %call10, 63
  %and12 = zext i8 %5 to i32
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 2
  %6 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and12, ptr %tm_hour, align 4
  %call13 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 4)
  %7 = and i8 %call13, 63
  %and15 = zext i8 %7 to i32
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 3
  %8 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and15, ptr %tm_mday, align 4
  %call16 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 3)
  %9 = and i8 %call16, 7
  %and18 = zext i8 %9 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 6
  %10 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and18, ptr %tm_wday, align 4
  %call19 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 5)
  %11 = and i8 %call19, 31
  %and21 = zext i8 %11 to i32
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 4
  %12 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and21, ptr %tm_mon, align 4
  %call22 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 6)
  %13 = and i8 %call22, 127
  %and24 = zext i8 %13 to i32
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 5
  %14 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and24, ptr %tm_year, align 4
  %call25 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 7)
  %call.i197 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 15) #10
  %15 = or i8 %call.i197, -128
  tail call fastcc void @rtc_write(i8 noundef zeroext %15, i32 noundef 15) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ds1511_lock, i32 noundef %call2) #10
  %16 = ptrtoint ptr %rtc_tm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rtc_tm, align 4
  %conv28 = trunc i32 %17 to i8
  %call34 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv28) #14
  %18 = ptrtoint ptr %rtc_tm to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call34, ptr %rtc_tm, align 4
  %19 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_min, align 4
  %conv37 = trunc i32 %20 to i8
  %call48 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv37) #14
  %21 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call48, ptr %tm_min, align 4
  %22 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_hour, align 4
  %conv53 = trunc i32 %23 to i8
  %call64 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv53) #14
  %24 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call64, ptr %tm_hour, align 4
  %25 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mday, align 4
  %conv69 = trunc i32 %26 to i8
  %call80 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv69) #14
  %27 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call80, ptr %tm_mday, align 4
  %28 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_wday, align 4
  %conv85 = trunc i32 %29 to i8
  %call96 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv85) #14
  %30 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call96, ptr %tm_wday, align 4
  %31 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_mon, align 4
  %33 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tm_year, align 4
  %call140 = tail call i32 @_bcd2bin(i8 noundef zeroext %call25) #14
  %conv117 = trunc i32 %34 to i8
  %call128 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv117) #14
  %conv101 = trunc i32 %32 to i8
  %call112 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv101) #14
  %mul143 = mul i32 %call140, 100
  %add145 = add i32 %call128, -1900
  %sub = add i32 %add145, %mul143
  %35 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %tm_year, align 4
  %dec = add i32 %call112, -1
  %36 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %dec, ptr %tm_mon, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1511_rtc_set_time(ptr nocapture noundef readnone %dev, ptr nocapture noundef %rtc_tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 5
  %0 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1900, i32 %1)
  %cmp = icmp slt i32 %1, 1900
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add = add nsw i32 %1, 1900
  %2 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %tm_year, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = phi i32 [ %add, %if.then ], [ %1, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1970, i32 %3)
  %cmp3 = icmp slt i32 %3, 1970
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %.frozen = freeze i32 %3
  %div212 = udiv i32 %.frozen, 100
  %4 = mul i32 %div212, 100
  %rem211.decomposed = sub i32 %.frozen, %4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 4
  %5 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm_mon, align 4
  %7 = trunc i32 %6 to i8
  %conv10 = add i8 %7, 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 6
  %8 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_wday, align 4
  %10 = trunc i32 %9 to i8
  %conv12 = and i8 %10, 7
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 2
  %11 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_hour, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  %15 = ptrtoint ptr %rtc_tm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rtc_tm, align 4
  %conv16 = zext i8 %conv10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %conv10)
  %cmp17 = icmp ugt i8 %conv10, 12
  br i1 %cmp17, label %if.end5.cleanup_crit_edge, label %lor.lhs.false

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 3
  %17 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_mday, align 4
  %conv19 = and i32 %18, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv19)
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %lor.lhs.false.cleanup_crit_edge, label %if.end23

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false
  %call = tail call i32 @rtc_month_days(i32 noundef %6, i32 noundef %3) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %conv19, i32 %call)
  %cmp27 = icmp sgt i32 %conv19, %call
  br i1 %cmp27, label %if.end23.cleanup_crit_edge, label %if.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %conv31 = and i32 %12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %conv31)
  %cmp32 = icmp ugt i32 %conv31, 23
  br i1 %cmp32, label %if.end30.cleanup_crit_edge, label %lor.lhs.false34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false34:                                  ; preds = %if.end30
  %conv35 = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %conv35)
  %cmp36 = icmp ugt i32 %conv35, 59
  br i1 %cmp36, label %lor.lhs.false34.cleanup_crit_edge, label %lor.lhs.false38

lor.lhs.false34.cleanup_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false38:                                  ; preds = %lor.lhs.false34
  %conv39 = and i32 %16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %conv39)
  %cmp40 = icmp ugt i32 %conv39, 59
  br i1 %cmp40, label %lor.lhs.false38.cleanup_crit_edge, label %cond.end

lor.lhs.false38.cleanup_crit_edge:                ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end:                                         ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv39) #14
  %conv53 = and i8 %call50, 127
  %call63 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv35) #14
  %conv68 = and i8 %call63, 127
  %call78 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv31) #14
  %conv83 = and i8 %call78, 63
  %call93 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv19) #14
  %conv98 = and i8 %call93, 63
  %call108 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv16) #14
  %call123 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem211.decomposed) #14
  %conv137 = and i32 %div212, 255
  %call138 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv137) #14
  %call148 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ds1511_lock) #10
  tail call fastcc void @rtc_disable_update()
  tail call fastcc void @rtc_write(i8 noundef zeroext %call138, i32 noundef 7)
  tail call fastcc void @rtc_write(i8 noundef zeroext %call123, i32 noundef 6)
  %call151 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 5)
  %19 = and i8 %call151, -32
  %20 = and i8 %call108, 31
  %conv155 = or i8 %19, %20
  tail call fastcc void @rtc_write(i8 noundef zeroext %conv155, i32 noundef 5)
  tail call fastcc void @rtc_write(i8 noundef zeroext %conv98, i32 noundef 4)
  tail call fastcc void @rtc_write(i8 noundef zeroext %conv83, i32 noundef 2)
  tail call fastcc void @rtc_write(i8 noundef zeroext %conv68, i32 noundef 1)
  tail call fastcc void @rtc_write(i8 noundef zeroext %conv53, i32 noundef 0)
  tail call fastcc void @rtc_write(i8 noundef zeroext %conv12, i32 noundef 3)
  tail call fastcc void @rtc_enable_update()
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ds1511_lock, i32 noundef %call148) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %lor.lhs.false38.cleanup_crit_edge, %lor.lhs.false34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ -22, %lor.lhs.false38.cleanup_crit_edge ], [ -22, %lor.lhs.false34.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ds1511_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alrm) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %alrm_mday = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %alrm_mday to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alrm_mday, align 4
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tm_mday, align 4
  %alrm_hour = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %alrm_hour to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alrm_hour, align 4
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tm_hour, align 4
  %alrm_min = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %alrm_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %alrm_min, align 4
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tm_min, align 4
  %alrm_sec = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %alrm_sec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alrm_sec, align 4
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 0)
  %19 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %time, align 4
  %irqen = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %irqen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irqen, align 4
  %22 = trunc i32 %21 to i8
  %23 = lshr i8 %22, 5
  %24 = and i8 %23, 1
  %25 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %alrm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1511_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_mday, align 4
  %alrm_mday = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %alrm_mday to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %alrm_mday, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_hour, align 4
  %alrm_hour = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %alrm_hour to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %alrm_hour, align 4
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_min, align 4
  %alrm_min = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %alrm_min to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %alrm_min, align 4
  %13 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %time, align 4
  %alrm_sec = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %alrm_sec to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %alrm_sec, align 4
  %16 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %irqen = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %irqen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irqen, align 4
  %or = or i32 %19, 32
  store i32 %or, ptr %irqen, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call fastcc void @ds1511_rtc_update_alarm(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1511_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %irqen2 = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irqen2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqen2, align 4
  %and = and i32 %5, -33
  %masksel = select i1 %tobool.not, i32 0, i32 32
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %irqen2, align 4
  tail call fastcc void @ds1511_rtc_update_alarm(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtc_disable_update() unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc zeroext i8 @rtc_read(i32 noundef 15)
  %0 = and i8 %call, 127
  tail call fastcc void @rtc_write(i8 noundef zeroext %0, i32 noundef 15)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_month_days(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ds1511_rtc_update_alarm(ptr noundef %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %alrm_mday = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 7
  %0 = ptrtoint ptr %alrm_mday to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alrm_mday, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp slt i32 %1, 0
  br i1 %cmp5, label %entry.cond.end17_crit_edge, label %lor.lhs.false

entry.cond.end17_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end17

lor.lhs.false:                                    ; preds = %entry
  %irqen = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 3
  %2 = ptrtoint ptr %irqen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irqen, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.end, label %lor.lhs.false.cond.end17_crit_edge

lor.lhs.false.cond.end17_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end17

cond.end:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call zeroext i8 @_bin2bcd(i32 noundef %1) #14
  %phi.cast = and i8 %call14, 63
  br label %cond.end17

cond.end17:                                       ; preds = %cond.end, %lor.lhs.false.cond.end17_crit_edge, %entry.cond.end17_crit_edge
  %cond18 = phi i8 [ %phi.cast, %cond.end ], [ -128, %lor.lhs.false.cond.end17_crit_edge ], [ -128, %entry.cond.end17_crit_edge ]
  tail call fastcc void @rtc_write(i8 noundef zeroext %cond18, i32 noundef 11)
  %alrm_hour = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 6
  %4 = ptrtoint ptr %alrm_hour to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alrm_hour, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20 = icmp slt i32 %5, 0
  br i1 %cmp20, label %cond.end17.cond.end44_crit_edge, label %lor.lhs.false22

cond.end17.cond.end44_crit_edge:                  ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end44

lor.lhs.false22:                                  ; preds = %cond.end17
  %irqen23 = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 3
  %6 = ptrtoint ptr %irqen23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irqen23, align 4
  %and24 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %cond.end41, label %lor.lhs.false22.cond.end44_crit_edge

lor.lhs.false22.cond.end44_crit_edge:             ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end44

cond.end41:                                       ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = tail call zeroext i8 @_bin2bcd(i32 noundef %5) #14
  %phi.cast138 = and i8 %call39, 63
  br label %cond.end44

cond.end44:                                       ; preds = %cond.end41, %lor.lhs.false22.cond.end44_crit_edge, %cond.end17.cond.end44_crit_edge
  %cond45 = phi i8 [ %phi.cast138, %cond.end41 ], [ -128, %lor.lhs.false22.cond.end44_crit_edge ], [ -128, %cond.end17.cond.end44_crit_edge ]
  tail call fastcc void @rtc_write(i8 noundef zeroext %cond45, i32 noundef 10)
  %alrm_min = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 5
  %8 = ptrtoint ptr %alrm_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alrm_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp47 = icmp slt i32 %9, 0
  br i1 %cmp47, label %cond.end44.cond.end71_crit_edge, label %lor.lhs.false49

cond.end44.cond.end71_crit_edge:                  ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end71

lor.lhs.false49:                                  ; preds = %cond.end44
  %irqen50 = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 3
  %10 = ptrtoint ptr %irqen50 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irqen50, align 4
  %and51 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %cond.end68, label %lor.lhs.false49.cond.end71_crit_edge

lor.lhs.false49.cond.end71_crit_edge:             ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end71

cond.end68:                                       ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #14
  %phi.cast139 = and i8 %call66, 127
  br label %cond.end71

cond.end71:                                       ; preds = %cond.end68, %lor.lhs.false49.cond.end71_crit_edge, %cond.end44.cond.end71_crit_edge
  %cond72 = phi i8 [ %phi.cast139, %cond.end68 ], [ -128, %lor.lhs.false49.cond.end71_crit_edge ], [ -128, %cond.end44.cond.end71_crit_edge ]
  tail call fastcc void @rtc_write(i8 noundef zeroext %cond72, i32 noundef 9)
  %alrm_sec = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 4
  %12 = ptrtoint ptr %alrm_sec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %alrm_sec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp74 = icmp slt i32 %13, 0
  br i1 %cmp74, label %cond.end71.cond.end98_crit_edge, label %lor.lhs.false76

cond.end71.cond.end98_crit_edge:                  ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end98

lor.lhs.false76:                                  ; preds = %cond.end71
  %irqen77 = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 3
  %14 = ptrtoint ptr %irqen77 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irqen77, align 4
  %and78 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %cond.end95, label %lor.lhs.false76.cond.end98_crit_edge

lor.lhs.false76.cond.end98_crit_edge:             ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end98

cond.end95:                                       ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #12
  %call93 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #14
  %phi.cast140 = and i8 %call93, 127
  br label %cond.end98

cond.end98:                                       ; preds = %cond.end95, %lor.lhs.false76.cond.end98_crit_edge, %cond.end71.cond.end98_crit_edge
  %cond99 = phi i8 [ %phi.cast140, %cond.end95 ], [ -128, %lor.lhs.false76.cond.end98_crit_edge ], [ -128, %cond.end71.cond.end98_crit_edge ]
  tail call fastcc void @rtc_write(i8 noundef zeroext %cond99, i32 noundef 8)
  %call101 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 15)
  %irqen103 = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 3
  %16 = ptrtoint ptr %irqen103 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irqen103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool104.not = icmp eq i32 %17, 0
  %cond105 = select i1 %tobool104.not, i8 0, i8 8
  %or = or i8 %cond105, %call101
  tail call fastcc void @rtc_write(i8 noundef zeroext %or, i32 noundef 15)
  %call107 = tail call fastcc zeroext i8 @rtc_read(i32 noundef 14)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__UNIQUE_ID_alias227, !1, !"__UNIQUE_ID_alias227", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ds1511.c", i32 487, i32 1}
!2 = !{ptr @__initcall__kmod_rtc_ds1511__228_496_ds1511_rtc_driver_init6, !3, !"__initcall__kmod_rtc_ds1511__228_496_ds1511_rtc_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-ds1511.c", i32 496, i32 1}
!4 = !{ptr @__exitcall_ds1511_rtc_driver_exit, !3, !"__exitcall_ds1511_rtc_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-ds1511.c", i32 498, i32 1}
!7 = !{ptr @__UNIQUE_ID_description230, !8, !"__UNIQUE_ID_description230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-ds1511.c", i32 499, i32 1}
!9 = !{ptr @__UNIQUE_ID_file231, !10, !"__UNIQUE_ID_file231", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-ds1511.c", i32 500, i32 1}
!11 = !{ptr @__UNIQUE_ID_license232, !10, !"__UNIQUE_ID_license232", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-ds1511.c", i32 492, i32 11}
!14 = !{ptr @ds1511_rtc_driver, !15, !"ds1511_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-ds1511.c", i32 489, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-ds1511.c", i32 414, i32 11}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-ds1511.c", i32 452, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ds1511_rtc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ds1511_rtc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ds1511_rtc_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-ds1511.c", i32 454, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-ds1511.c", i32 478, i32 4}
!31 = !{ptr @ds1511_rtc_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ds1511_rtc_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ds1511_base, !34, !"ds1511_base", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-ds1511.c", i32 98, i32 22}
!35 = distinct !{null, !36, !"reg_spacing", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-ds1511.c", i32 99, i32 12}
!37 = !{ptr @ds1511_rtc_ops, !38, !"ds1511_rtc_ops", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-ds1511.c", i32 377, i32 35}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-ds1511.c", i32 96, i32 8}
!41 = !{ptr @ds1511_lock, !40, !"ds1511_lock", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2153813257}
!52 = !{i64 4264191}
!53 = !{i64 4264586}
!54 = !{i64 2153813620}
