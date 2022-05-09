; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-m48t86.c_pt.bc'
source_filename = "../drivers/rtc/rtc-m48t86.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
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
%struct.m48t86_rtc_info = type { ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_m48t86__227_279_m48t86_rtc_platform_driver_init6 = internal global ptr @m48t86_rtc_platform_driver_init, section ".initcall6.init", align 4
@m48t86_rtc_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @m48t86_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_m48t86_rtc_platform_driver_exit = internal global ptr @m48t86_rtc_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [58 x i8] c"rtc_m48t86.author=Alessandro Zummo <a.zummo@towertech.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [41 x i8] c"rtc_m48t86.description=M48T86 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [39 x i8] c"rtc_m48t86.file=drivers/rtc/rtc-m48t86\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [23 x i8] c"rtc_m48t86.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [37 x i8] c"rtc_m48t86.alias=platform:rtc-m48t86\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-m48t86\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"m48t86_nvram\00", [19 x i8] zeroinitializer }, align 32
@m48t86_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 248, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RTC not present\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m48t86_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-m48t86.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@m48t86_rtc_probe._entry_ptr = internal global ptr @m48t86_rtc_probe._entry, section ".printk_index", align 4
@m48t86_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @m48t86_rtc_read_time, ptr @m48t86_rtc_set_time, ptr null, ptr null, ptr @m48t86_rtc_proc, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@m48t86_rtc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 267, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"battery %s\0A\00", [20 x i8] zeroinitializer }, align 32
@m48t86_rtc_probe._entry_ptr.9 = internal global ptr @m48t86_rtc_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exhausted\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mode\09\09: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"binary\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bcd\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"battery\09\09: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [27 x i8] c"m48t86_rtc_platform_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 272, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 274, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 224, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 248, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"m48t86_rtc_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 157, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 266, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 146, i32 18 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 147, i32 28 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 147, i32 39 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [28 x i8] c"../drivers/rtc/rtc-m48t86.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 151, i32 18 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_m48t86_rtc_platform_driver_exit, ptr @__initcall__kmod_rtc_m48t86__227_279_m48t86_rtc_platform_driver_init6, ptr @m48t86_rtc_platform_driver_exit, ptr @m48t86_rtc_probe._entry, ptr @m48t86_rtc_probe._entry.7, ptr @m48t86_rtc_probe._entry_ptr, ptr @m48t86_rtc_probe._entry_ptr.9, ptr @m48t86_rtc_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @m48t86_rtc_ops, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m48t86_rtc_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m48t86_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m48t86_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m48t86_rtc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t86_rtc_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @m48t86_rtc_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @m48t86_rtc_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @m48t86_rtc_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t86_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %m48t86_nvmem_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %m48t86_nvmem_cfg) #6
  %0 = getelementptr inbounds i8, ptr %m48t86_nvmem_cfg, i32 40
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %m48t86_nvmem_cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %m48t86_nvmem_cfg, align 4
  %name = getelementptr inbounds %struct.nvmem_config, ptr %m48t86_nvmem_cfg, i32 0, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.1, ptr %name, align 4
  %id = getelementptr inbounds %struct.nvmem_config, ptr %m48t86_nvmem_cfg, i32 0, i32 2
  %of_node = getelementptr inbounds %struct.nvmem_config, ptr %m48t86_nvmem_cfg, i32 0, i32 13
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %of_node, align 4
  %no_of_node = getelementptr inbounds %struct.nvmem_config, ptr %m48t86_nvmem_cfg, i32 0, i32 14
  %5 = ptrtoint ptr %no_of_node to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %no_of_node, align 4
  %reg_read = getelementptr inbounds %struct.nvmem_config, ptr %m48t86_nvmem_cfg, i32 0, i32 15
  %6 = call ptr @memset(ptr %id, i32 0, i32 35)
  %7 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @m48t86_nvram_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.nvmem_config, ptr %m48t86_nvmem_cfg, i32 0, i32 16
  %8 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @m48t86_nvram_write, ptr %reg_write, align 4
  %cell_post_process = getelementptr inbounds %struct.nvmem_config, ptr %m48t86_nvmem_cfg, i32 0, i32 17
  %9 = ptrtoint ptr %cell_post_process to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cell_post_process, align 4
  %size = getelementptr inbounds %struct.nvmem_config, ptr %m48t86_nvmem_cfg, i32 0, i32 18
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 114, ptr %size, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %m48t86_nvmem_cfg, i32 0, i32 19
  %11 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %word_size, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %m48t86_nvmem_cfg, i32 0, i32 20
  %12 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %stride, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %m48t86_nvmem_cfg, i32 0, i32 21
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev1, ptr %priv, align 4
  %compat = getelementptr inbounds %struct.nvmem_config, ptr %m48t86_nvmem_cfg, i32 0, i32 22
  %14 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %compat, align 4
  %base_dev = getelementptr inbounds %struct.nvmem_config, ptr %m48t86_nvmem_cfg, i32 0, i32 23
  %15 = ptrtoint ptr %base_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %base_dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #6
  %data_reg = getelementptr inbounds %struct.m48t86_rtc_info, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %data_reg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call10, ptr %data_reg, align 4
  %cmp.i71 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 126) #6, !srcloc !52
  %23 = ptrtoint ptr %data_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_reg, align 4
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %26 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 127) #6, !srcloc !52
  %data_reg.i44.i = getelementptr inbounds %struct.m48t86_rtc_info, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %data_reg.i44.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data_reg.i44.i, align 4
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %31) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %33 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 126) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i46.i = getelementptr inbounds %struct.m48t86_rtc_info, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %data_reg.i46.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data_reg.i46.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 0) #6, !srcloc !52
  %39 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %42, i8 127) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i48.i = getelementptr inbounds %struct.m48t86_rtc_info, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %data_reg.i48.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data_reg.i48.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 85) #6, !srcloc !52
  %45 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %48, i8 127) #6, !srcloc !52
  %data_reg.i50.i = getelementptr inbounds %struct.m48t86_rtc_info, ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %data_reg.i50.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data_reg.i50.i, align 4
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %50) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %51)
  %cmp.i72 = icmp eq i8 %51, 85
  br i1 %cmp.i72, label %if.then.i, label %if.end16.do.end_crit_edge

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then.i:                                        ; preds = %if.end16
  %52 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %55, i8 127) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i52.i = getelementptr inbounds %struct.m48t86_rtc_info, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %data_reg.i52.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data_reg.i52.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %57, i8 -86) #6, !srcloc !52
  %58 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %61, i8 127) #6, !srcloc !52
  %data_reg.i54.i = getelementptr inbounds %struct.m48t86_rtc_info, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %data_reg.i54.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data_reg.i54.i, align 4
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %63) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %64)
  %cmp12.i = icmp eq i8 %64, -86
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.then.i.do.end_crit_edge

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true.i:                                  ; preds = %if.then.i
  %65 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %68, i8 126) #6, !srcloc !52
  %data_reg.i56.i = getelementptr inbounds %struct.m48t86_rtc_info, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %data_reg.i56.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data_reg.i56.i, align 4
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %70) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp17.i = icmp eq i8 %71, 0
  br i1 %cmp17.i, label %if.end21, label %land.lhs.true.i.do.end_crit_edge

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.i.do.end_crit_edge, %if.then.i.do.end_crit_edge, %if.end16.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true.i
  %72 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %75, i8 126) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i58.i = getelementptr inbounds %struct.m48t86_rtc_info, ptr %73, i32 0, i32 1
  %76 = ptrtoint ptr %data_reg.i58.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data_reg.i58.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %77, i8 %25) #6, !srcloc !52
  %78 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %81, i8 127) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i60.i = getelementptr inbounds %struct.m48t86_rtc_info, ptr %79, i32 0, i32 1
  %82 = ptrtoint ptr %data_reg.i60.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data_reg.i60.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %83, i8 %32) #6, !srcloc !52
  %call23 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #6
  %rtc = getelementptr inbounds %struct.m48t86_rtc_info, ptr %call.i, i32 0, i32 2
  %84 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call23, ptr %rtc, align 4
  %cmp.i73 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call23, i32 0, i32 3
  %86 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @m48t86_rtc_ops, ptr %ops, align 8
  %87 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rtc, align 4
  %call32 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %88) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rtc, align 4
  %call37 = call i32 @devm_rtc_nvmem_register(ptr noundef %90, ptr noundef nonnull %m48t86_nvmem_cfg) #6
  %call39 = call fastcc zeroext i8 @m48t86_readb(ptr noundef %dev1, i32 noundef 13)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call39)
  %tobool44.not = icmp sgt i8 %call39, -1
  %cond = select i1 %tobool44.not, ptr @.str.11, ptr @.str.10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end29.cleanup_crit_edge, %if.then26, %do.end, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then6 ], [ %19, %if.then13 ], [ %85, %if.then26 ], [ 0, %if.end35 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call32, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %m48t86_nvmem_cfg) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t86_nvram_read(ptr nocapture noundef readonly %priv, i32 noundef %off, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp5.not = icmp eq i32 %count, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %priv, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add i32 %i.06, %off
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %2 = trunc i32 %add to i8
  %conv.i = add i8 %2, 14
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 %conv.i) #6, !srcloc !52
  %data_reg.i = getelementptr inbounds %struct.m48t86_rtc_info, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data_reg.i, align 4
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.06
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t86_nvram_write(ptr nocapture noundef readonly %priv, i32 noundef %off, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp5.not = icmp eq i32 %count, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %priv, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %add = add i32 %i.06, %off
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %4 = trunc i32 %add to i8
  %conv.i = add i8 %4, 14
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %conv.i) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i = getelementptr inbounds %struct.m48t86_rtc_info, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data_reg.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %1) #6, !srcloc !52
  %inc = add nuw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @m48t86_readb(ptr nocapture noundef readonly %dev, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %addr to i8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 %conv) #6, !srcloc !52
  %data_reg = getelementptr inbounds %struct.m48t86_rtc_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %data_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_reg, align 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  ret i8 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t86_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 11) #6, !srcloc !52
  %data_reg.i = getelementptr inbounds %struct.m48t86_rtc_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_reg.i, align 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 0) #6
  %data_reg.i100 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %data_reg.i100 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_reg.i100, align 4
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv2 = zext i8 %13 to i32
  %14 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv2, ptr %tm, align 4
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 2) #6, !srcloc !52
  %data_reg.i88 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %data_reg.i88 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data_reg.i88, align 4
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %20) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %conv4 = zext i8 %21 to i32
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %22 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv4, ptr %tm_min, align 4
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 4) #6, !srcloc !52
  %data_reg.i90 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %data_reg.i90 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data_reg.i90, align 4
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %28) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %30 = and i8 %29, 63
  %and7 = zext i8 %30 to i32
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %31 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and7, ptr %tm_hour, align 4
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 7) #6, !srcloc !52
  %data_reg.i92 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %data_reg.i92 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data_reg.i92, align 4
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %37) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %conv9 = zext i8 %38 to i32
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %39 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv9, ptr %tm_mday, align 4
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %43, i8 8) #6, !srcloc !52
  %data_reg.i94 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %data_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data_reg.i94, align 4
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %45) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %conv11 = zext i8 %46 to i32
  %sub = add nsw i32 %conv11, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %47 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub, ptr %tm_mon, align 4
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 9) #6, !srcloc !52
  %data_reg.i96 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %data_reg.i96 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data_reg.i96, align 4
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %53) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %conv13 = zext i8 %54 to i32
  %add = add nuw nsw i32 %conv13, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %55 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add, ptr %tm_year, align 4
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 6) #6, !srcloc !52
  %data_reg.i98 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %data_reg.i98 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data_reg.i98, align 4
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %61) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %conv15 = zext i8 %62 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 @_bcd2bin(i8 noundef zeroext %13) #10
  %63 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call17, ptr %tm, align 4
  %64 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %67, i8 2) #6, !srcloc !52
  %data_reg.i102 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %65, i32 0, i32 1
  %68 = ptrtoint ptr %data_reg.i102 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data_reg.i102, align 4
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %69) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %call20 = tail call i32 @_bcd2bin(i8 noundef zeroext %70) #10
  %tm_min21 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %71 = ptrtoint ptr %tm_min21 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call20, ptr %tm_min21, align 4
  %72 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %75, i8 4) #6, !srcloc !52
  %data_reg.i104 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %73, i32 0, i32 1
  %76 = ptrtoint ptr %data_reg.i104 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data_reg.i104, align 4
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %77) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %79 = and i8 %78, 63
  %call26 = tail call i32 @_bcd2bin(i8 noundef zeroext %79) #10
  %tm_hour27 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %80 = ptrtoint ptr %tm_hour27 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call26, ptr %tm_hour27, align 4
  %81 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %84, i8 7) #6, !srcloc !52
  %data_reg.i106 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %82, i32 0, i32 1
  %85 = ptrtoint ptr %data_reg.i106 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data_reg.i106, align 4
  %87 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %86) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %call29 = tail call i32 @_bcd2bin(i8 noundef zeroext %87) #10
  %tm_mday30 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %88 = ptrtoint ptr %tm_mday30 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call29, ptr %tm_mday30, align 4
  %89 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %92, i8 8) #6, !srcloc !52
  %data_reg.i108 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %90, i32 0, i32 1
  %93 = ptrtoint ptr %data_reg.i108 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data_reg.i108, align 4
  %95 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %94) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %call32 = tail call i32 @_bcd2bin(i8 noundef zeroext %95) #10
  %sub33 = add i32 %call32, -1
  %tm_mon34 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %96 = ptrtoint ptr %tm_mon34 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %sub33, ptr %tm_mon34, align 4
  %97 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %100, i8 9) #6, !srcloc !52
  %data_reg.i110 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %98, i32 0, i32 1
  %101 = ptrtoint ptr %data_reg.i110 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data_reg.i110, align 4
  %103 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %102) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %call36 = tail call i32 @_bcd2bin(i8 noundef zeroext %103) #10
  %add37 = add i32 %call36, 100
  %tm_year38 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %104 = ptrtoint ptr %tm_year38 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add37, ptr %tm_year38, align 4
  %105 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %108, i8 6) #6, !srcloc !52
  %data_reg.i112 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %106, i32 0, i32 1
  %109 = ptrtoint ptr %data_reg.i112 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data_reg.i112, align 4
  %111 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %110) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %call40 = tail call i32 @_bcd2bin(i8 noundef zeroext %111) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv15.sink = phi i32 [ %call40, %if.else ], [ %conv15, %if.then ]
  %112 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv15.sink, ptr %112, align 4
  %and43 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end.if.end54_crit_edge

if.end.if.end54_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then45:                                        ; preds = %if.end
  %114 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %117, i8 4) #6, !srcloc !52
  %data_reg.i114 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %115, i32 0, i32 1
  %118 = ptrtoint ptr %data_reg.i114 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data_reg.i114, align 4
  %120 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %119) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %120)
  %tobool49.not = icmp sgt i8 %120, -1
  br i1 %tobool49.not, label %if.then45.if.end54_crit_edge, label %if.then50

if.then45.if.end54_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then50:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %tm_hour51 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %121 = ptrtoint ptr %tm_hour51 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tm_hour51, align 4
  %add52 = add i32 %122, 12
  store i32 %add52, ptr %tm_hour51, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.then45.if.end54_crit_edge, %if.end.if.end54_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t86_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 11) #6, !srcloc !52
  %data_reg.i = getelementptr inbounds %struct.m48t86_rtc_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_reg.i, align 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %7 = or i8 %6, -126
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 11) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i182 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %data_reg.i182 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data_reg.i182, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %7) #6, !srcloc !52
  %14 = and i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm, align 4
  br i1 %tobool.not, label %cond.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv11 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 0) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i184 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %data_reg.i184 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data_reg.i184, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 %conv11) #6, !srcloc !52
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %23 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_min, align 4
  %conv4 = trunc i32 %24 to i8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 2) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i186 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %data_reg.i186 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data_reg.i186, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 %conv4) #6, !srcloc !52
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %31 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_hour, align 4
  %conv5 = trunc i32 %32 to i8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 4) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i188 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %data_reg.i188 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data_reg.i188, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 %conv5) #6, !srcloc !52
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %39 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tm_mday, align 4
  %conv6 = trunc i32 %40 to i8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 7) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i190 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %data_reg.i190 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data_reg.i190, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %46, i8 %conv6) #6, !srcloc !52
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %47 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tm_mon, align 4
  %49 = trunc i32 %48 to i8
  %conv7 = add i8 %49, 1
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 8) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i192 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %data_reg.i192 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data_reg.i192, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %55, i8 %conv7) #6, !srcloc !52
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %56 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tm_year, align 4
  %rem = srem i32 %57, 100
  %conv8 = trunc i32 %rem to i8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %61, i8 9) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i194 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %data_reg.i194 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data_reg.i194, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %63, i8 %conv8) #6, !srcloc !52
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %64 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tm_wday, align 4
  %conv9 = trunc i32 %65 to i8
  %66 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %69, i8 6) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i196 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %67, i32 0, i32 1
  %70 = ptrtoint ptr %data_reg.i196 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data_reg.i196, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %71, i8 %conv9) #6, !srcloc !52
  br label %if.end

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #10
  %72 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %75, i8 0) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i198 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %73, i32 0, i32 1
  %76 = ptrtoint ptr %data_reg.i198 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data_reg.i198, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %77, i8 %call17) #6, !srcloc !52
  %tm_min20 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %78 = ptrtoint ptr %tm_min20 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tm_min20, align 4
  %call31 = tail call zeroext i8 @_bin2bcd(i32 noundef %79) #10
  %80 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %83, i8 2) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i200 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %81, i32 0, i32 1
  %84 = ptrtoint ptr %data_reg.i200 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data_reg.i200, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %85, i8 %call31) #6, !srcloc !52
  %tm_hour36 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %86 = ptrtoint ptr %tm_hour36 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tm_hour36, align 4
  %call47 = tail call zeroext i8 @_bin2bcd(i32 noundef %87) #10
  %88 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %91, i8 4) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i202 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %89, i32 0, i32 1
  %92 = ptrtoint ptr %data_reg.i202 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data_reg.i202, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %93, i8 %call47) #6, !srcloc !52
  %tm_mday52 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %94 = ptrtoint ptr %tm_mday52 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tm_mday52, align 4
  %call63 = tail call zeroext i8 @_bin2bcd(i32 noundef %95) #10
  %96 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %99, i8 7) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i204 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %97, i32 0, i32 1
  %100 = ptrtoint ptr %data_reg.i204 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data_reg.i204, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %101, i8 %call63) #6, !srcloc !52
  %tm_mon68 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %102 = ptrtoint ptr %tm_mon68 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tm_mon68, align 4
  %add69 = add i32 %103, 1
  %call83 = tail call zeroext i8 @_bin2bcd(i32 noundef %add69) #10
  %104 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %107, i8 8) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i206 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %105, i32 0, i32 1
  %108 = ptrtoint ptr %data_reg.i206 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data_reg.i206, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %109, i8 %call83) #6, !srcloc !52
  %tm_year88 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %110 = ptrtoint ptr %tm_year88 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tm_year88, align 4
  %rem89 = srem i32 %111, 100
  %call103 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem89) #10
  %112 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %115, i8 9) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i208 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %113, i32 0, i32 1
  %116 = ptrtoint ptr %data_reg.i208 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data_reg.i208, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %117, i8 %call103) #6, !srcloc !52
  %tm_wday108 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %118 = ptrtoint ptr %tm_wday108 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tm_wday108, align 4
  %call119 = tail call zeroext i8 @_bin2bcd(i32 noundef %119) #10
  %120 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %123, i8 6) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i210 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %121, i32 0, i32 1
  %124 = ptrtoint ptr %data_reg.i210 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data_reg.i210, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %125, i8 %call119) #6, !srcloc !52
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %and125 = and i8 %7, 127
  %126 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %129, i8 11) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %data_reg.i212 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %127, i32 0, i32 1
  %130 = ptrtoint ptr %data_reg.i212 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %data_reg.i212, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %131, i8 %and125) #6, !srcloc !52
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t86_rtc_proc(ptr nocapture noundef readonly %dev, ptr noundef %seq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 11) #6, !srcloc !52
  %data_reg.i = getelementptr inbounds %struct.m48t86_rtc_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %data_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_reg.i, align 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %7 = and i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond) #6
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 13) #6, !srcloc !52
  %data_reg.i10 = getelementptr inbounds %struct.m48t86_rtc_info, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %data_reg.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data_reg.i10, align 4
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool4.not = icmp sgt i8 %14, -1
  %cond5 = select i1 %tobool4.not, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond5) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_rtc_m48t86__227_279_m48t86_rtc_platform_driver_init6, !1, !"__initcall__kmod_rtc_m48t86__227_279_m48t86_rtc_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-m48t86.c", i32 279, i32 1}
!2 = !{ptr @__exitcall_m48t86_rtc_platform_driver_exit, !1, !"__exitcall_m48t86_rtc_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-m48t86.c", i32 281, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-m48t86.c", i32 282, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-m48t86.c", i32 283, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-m48t86.c", i32 284, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-m48t86.c", i32 274, i32 11}
!14 = !{ptr @m48t86_rtc_platform_driver, !15, !"m48t86_rtc_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-m48t86.c", i32 272, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-m48t86.c", i32 224, i32 11}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-m48t86.c", i32 248, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @m48t86_rtc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @m48t86_rtc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-m48t86.c", i32 266, i32 2}
!28 = !{ptr @m48t86_rtc_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @m48t86_rtc_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @m48t86_rtc_ops, !33, !"m48t86_rtc_ops", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-m48t86.c", i32 157, i32 35}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-m48t86.c", i32 146, i32 18}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-m48t86.c", i32 147, i32 28}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-m48t86.c", i32 147, i32 39}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-m48t86.c", i32 151, i32 18}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2153800418}
!52 = !{i64 4630353}
!53 = !{i64 4630748}
!54 = !{i64 2153800696}
!55 = !{i64 2153800909}
!56 = !{i64 2153801174}
