; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ds1553.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ds1553.c"
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
%struct.rtc_plat_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__UNIQUE_ID_alias227 = internal constant [37 x i8] c"rtc_ds1553.alias=platform:rtc-ds1553\00", section ".modinfo", align 1
@__initcall__kmod_rtc_ds1553__228_327_ds1553_rtc_driver_init6 = internal global ptr @ds1553_rtc_driver_init, section ".initcall6.init", align 4
@ds1553_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ds1553_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ds1553_rtc_driver_exit = internal global ptr @ds1553_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [55 x i8] c"rtc_ds1553.author=Atsushi Nemoto <anemo@mba.ocn.ne.jp>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [48 x i8] c"rtc_ds1553.description=Dallas DS1553 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [39 x i8] c"rtc_ds1553.file=drivers/rtc/rtc-ds1553\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [23 x i8] c"rtc_ds1553.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-ds1553\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds1553_nvram\00", [19 x i8] zeroinitializer }, align 32
@ds1553_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"voltage-low detected.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ds1553_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-ds1553.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ds1553_rtc_probe._entry_ptr = internal global ptr @ds1553_rtc_probe._entry, section ".printk_index", align 4
@ds1553_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&pdata->lock\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ds1553_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ds1553_rtc_read_time, ptr @ds1553_rtc_set_time, ptr @ds1553_rtc_read_alarm, ptr @ds1553_rtc_set_alarm, ptr null, ptr @ds1553_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ds1553_rtc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 307, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"interrupt not available.\0A\00", [38 x i8] zeroinitializer }, align 32
@ds1553_rtc_probe._entry_ptr.10 = internal global ptr @ds1553_rtc_probe._entry.8, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"ds1553_rtc_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 320, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 323, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 257, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 286, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 288, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"ds1553_rtc_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 216, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [28 x i8] c"../drivers/rtc/rtc-ds1553.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 307, i32 4 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_alias227, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_ds1553_rtc_driver_exit, ptr @__initcall__kmod_rtc_ds1553__228_327_ds1553_rtc_driver_init6, ptr @ds1553_rtc_driver_exit, ptr @ds1553_rtc_probe._entry, ptr @ds1553_rtc_probe._entry.8, ptr @ds1553_rtc_probe._entry_ptr, ptr @ds1553_rtc_probe._entry_ptr.10, ptr @ds1553_rtc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ds1553_rtc_probe.__key, ptr @.str.7, ptr @ds1553_rtc_ops, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1553_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1553_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1553_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1553_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1553_rtc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1553_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ds1553_rtc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds1553_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @ds1553_rtc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1553_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %nvmem_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem_cfg) #8
  %0 = getelementptr inbounds i8, ptr %nvmem_cfg, i32 40
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %nvmem_cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %nvmem_cfg, align 4
  %name = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.1, ptr %name, align 4
  %id = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 2
  %of_node = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 13
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %of_node, align 4
  %no_of_node = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 14
  %5 = ptrtoint ptr %no_of_node to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %no_of_node, align 4
  %reg_read = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 15
  %6 = call ptr @memset(ptr %id, i32 0, i32 35)
  %7 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ds1553_nvram_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 16
  %8 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ds1553_nvram_write, ptr %reg_write, align 4
  %cell_post_process = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 17
  %9 = ptrtoint ptr %cell_post_process to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cell_post_process, align 4
  %size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 18
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8176, ptr %size, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 19
  %11 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %word_size, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 20
  %12 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %stride, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 21
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pdev, ptr %priv, align 4
  %compat = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 22
  %14 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %compat, align 4
  %base_dev = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 23
  %15 = ptrtoint ptr %base_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %base_dev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 80, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ioaddr7 = getelementptr inbounds %struct.rtc_plat_data, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %ioaddr7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call2, ptr %ioaddr7, align 4
  %call8 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.rtc_plat_data, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call8, ptr %irq, align 4
  %add.ptr = getelementptr i8, ptr %call2, i32 8185
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %tobool11.not = icmp sgt i8 %19, -1
  br i1 %tobool11.not, label %if.end6.if.end34_crit_edge, label %if.then12

if.end6.if.end34_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %and13 = and i8 %19, 127
  %add.ptr16 = getelementptr i8, ptr %call2, i32 8184
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  %21 = and i8 %20, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 -128) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %and13) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 %21) #8, !srcloc !48
  br label %if.end34

if.end34:                                         ; preds = %if.then12, %if.end6.if.end34_crit_edge
  %add.ptr37 = getelementptr i8, ptr %call2, i32 8176
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr37) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %23 = and i8 %22, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool43.not = icmp eq i8 %23, 0
  br i1 %tobool43.not, label %if.end34.do.body50_crit_edge, label %do.end47

if.end34.do.body50_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

do.end47:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %do.body50

do.body50:                                        ; preds = %do.end47, %if.end34.do.body50_crit_edge
  %lock = getelementptr inbounds %struct.rtc_plat_data, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @ds1553_rtc_probe.__key, i16 noundef signext 3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %last_jiffies = getelementptr inbounds %struct.rtc_plat_data, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %last_jiffies to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %last_jiffies, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call55 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #8
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call55, ptr %call.i, align 4
  %cmp.i132 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then58, label %if.end61

if.then58:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call55 to i32
  br label %cleanup

if.end61:                                         ; preds = %do.body50
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call55, i32 0, i32 3
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ds1553_rtc_ops, ptr %ops, align 8
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %call64 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67:                                         ; preds = %if.end61
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp = icmp sgt i32 %33, 0
  br i1 %cmp, label %do.body71, label %if.end67.if.end88_crit_edge

if.end67.if.end88_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

do.body71:                                        ; preds = %if.end67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %add.ptr74 = getelementptr i8, ptr %call2, i32 8182
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr74, i8 0) #8, !srcloc !48
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %call.i133 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %35, ptr noundef nonnull @ds1553_rtc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %37, ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %cmp79 = icmp slt i32 %call.i133, 0
  br i1 %cmp79, label %do.end84, label %do.body71.if.end88_crit_edge

do.body71.if.end88_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

do.end84:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.9) #11
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %irq, align 4
  br label %if.end88

if.end88:                                         ; preds = %do.end84, %do.body71.if.end88_crit_edge, %if.end67.if.end88_crit_edge
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %call90 = call i32 @devm_rtc_nvmem_register(ptr noundef %40, ptr noundef nonnull %nvmem_cfg) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %if.end61.cleanup_crit_edge, %if.then58, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then4 ], [ %28, %if.then58 ], [ 0, %if.end88 ], [ -12, %entry.cleanup_crit_edge ], [ %call64, %if.end61.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1553_nvram_read(ptr nocapture noundef readonly %priv, i32 noundef %pos, ptr nocapture noundef writeonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr1 = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not5 = icmp eq i32 %bytes, 0
  br i1 %tobool.not5, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %pos.addr.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %pos, %entry.for.body_crit_edge ]
  %bytes.addr.07 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %bytes, %entry.for.body_crit_edge ]
  %buf.06 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %val, %entry.for.body_crit_edge ]
  %inc = add i32 %pos.addr.08, 1
  %add.ptr = getelementptr i8, ptr %3, i32 %pos.addr.08
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  %incdec.ptr = getelementptr i8, ptr %buf.06, i32 1
  %5 = ptrtoint ptr %buf.06 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %buf.06, align 1
  %dec = add i32 %bytes.addr.07, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1553_nvram_write(ptr nocapture noundef readonly %priv, i32 noundef %pos, ptr nocapture noundef readonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr1 = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not3 = icmp eq i32 %bytes, 0
  br i1 %tobool.not3, label %entry.for.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %buf.06 = phi ptr [ %incdec.ptr, %do.body.do.body_crit_edge ], [ %val, %entry.do.body_crit_edge ]
  %pos.addr.05 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ %pos, %entry.do.body_crit_edge ]
  %bytes.addr.04 = phi i32 [ %dec, %do.body.do.body_crit_edge ], [ %bytes, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @arm_heavy_mb() #8
  %incdec.ptr = getelementptr i8, ptr %buf.06, i32 1
  %4 = ptrtoint ptr %buf.06 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf.06, align 1
  %inc = add i32 %pos.addr.05, 1
  %add.ptr = getelementptr i8, ptr %3, i32 %pos.addr.05
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %5) #8, !srcloc !48
  %dec = add i32 %bytes.addr.04, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body.for.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1553_rtc_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev_id, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr1 = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1, align 4
  %lock = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %add.ptr = getelementptr i8, ptr %3, i32 8176
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr6 = getelementptr i8, ptr %3, i32 8178
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %tobool12.not = icmp sgt i8 %6, -1
  %. = select i1 %tobool12.not, i32 160, i32 144
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %8, i32 noundef 1, i32 noundef %.) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then, %entry.if.end15_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1553_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr1 = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1, align 4
  %last_jiffies = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %last_jiffies to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_jiffies, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %8 = ptrtoint ptr %last_jiffies to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %last_jiffies, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %add.ptr = getelementptr i8, ptr %3, i32 8184
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 64) #8, !srcloc !48
  %add.ptr3 = getelementptr i8, ptr %3, i32 8185
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  %add.ptr8 = getelementptr i8, ptr %3, i32 8186
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  %add.ptr15 = getelementptr i8, ptr %3, i32 8187
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %add.ptr22 = getelementptr i8, ptr %3, i32 8189
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %add.ptr29 = getelementptr i8, ptr %3, i32 8188
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  %14 = and i8 %13, 7
  %add.ptr37 = getelementptr i8, ptr %3, i32 8190
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr37) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %add.ptr44 = getelementptr i8, ptr %3, i32 8191
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr44) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #8, !srcloc !48
  %18 = and i8 %9, 127
  %call64 = tail call i32 @_bcd2bin(i8 noundef zeroext %18) #12
  %19 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call64, ptr %tm, align 4
  %call73 = tail call i32 @_bcd2bin(i8 noundef zeroext %10) #12
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %20 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call73, ptr %tm_min, align 4
  %call84 = tail call i32 @_bcd2bin(i8 noundef zeroext %11) #12
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %21 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call84, ptr %tm_hour, align 4
  %call95 = tail call i32 @_bcd2bin(i8 noundef zeroext %12) #12
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %22 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call95, ptr %tm_mday, align 4
  %call106 = tail call i32 @_bcd2bin(i8 noundef zeroext %14) #12
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %23 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call106, ptr %tm_wday, align 4
  %call117 = tail call i32 @_bcd2bin(i8 noundef zeroext %15) #12
  %sub = add i32 %call117, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %24 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %tm_mon, align 4
  %25 = and i8 %17, 63
  %call139 = tail call i32 @_bcd2bin(i8 noundef zeroext %25) #12
  %call128 = tail call i32 @_bcd2bin(i8 noundef zeroext %16) #12
  %mul142 = mul i32 %call139, 100
  %add143 = add i32 %call128, -1900
  %sub144 = add i32 %add143, %mul142
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %26 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub144, ptr %tm_year, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1553_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr1 = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %4 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_year, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr1, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8184
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -128) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_year, align 4
  %rem21 = srem i32 %9, 100
  %call35 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem21) #12
  %add.ptr40 = getelementptr i8, ptr %3, i32 8191
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40, i8 %call35) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %10 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_mon, align 4
  %add44 = add i32 %11, 1
  %call58 = tail call zeroext i8 @_bin2bcd(i32 noundef %add44) #12
  %add.ptr63 = getelementptr i8, ptr %3, i32 8190
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63, i8 %call58) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %12 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_wday, align 4
  %call77 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #12
  %conv81 = and i8 %call77, 7
  %add.ptr82 = getelementptr i8, ptr %3, i32 8188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr82, i8 %conv81) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  tail call void @arm_heavy_mb() #8
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %14 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mday, align 4
  %call96 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #12
  %add.ptr101 = getelementptr i8, ptr %3, i32 8189
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr101, i8 %call96) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %16 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_hour, align 4
  %call115 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #12
  %add.ptr120 = getelementptr i8, ptr %3, i32 8187
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr120, i8 %call115) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %18 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_min, align 4
  %call134 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #12
  %add.ptr139 = getelementptr i8, ptr %3, i32 8186
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr139, i8 %call134) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm, align 4
  %call153 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #12
  %add = add i32 %5, 1900
  %div = sdiv i32 %add, 100
  %call13 = tail call zeroext i8 @_bin2bcd(i32 noundef %div) #12
  %conv158 = and i8 %call153, 127
  %add.ptr159 = getelementptr i8, ptr %3, i32 8185
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr159, i8 %conv158) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %22 = and i8 %call13, 63
  %conv165 = or i8 %22, -128
  %add.ptr166 = getelementptr i8, ptr %3, i32 8184
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr166, i8 %conv165) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr166, i8 %22) #8, !srcloc !48
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ds1553_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alrm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %alrm_mday = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %alrm_mday to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alrm_mday, align 4
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tm_mday, align 4
  %alrm_hour = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %alrm_hour to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alrm_hour, align 4
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tm_hour, align 4
  %alrm_min = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %alrm_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %alrm_min, align 4
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tm_min, align 4
  %alrm_sec = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %alrm_sec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alrm_sec, align 4
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 0)
  %19 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %time, align 4
  %irqen = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 4
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
define internal i32 @ds1553_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_mday, align 4
  %alrm_mday = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %alrm_mday to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %alrm_mday, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_hour, align 4
  %alrm_hour = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %alrm_hour to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %alrm_hour, align 4
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_min, align 4
  %alrm_min = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %alrm_min to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %alrm_min, align 4
  %13 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %time, align 4
  %alrm_sec = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 5
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %irqen = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %irqen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irqen, align 4
  %or = or i32 %19, 32
  store i32 %or, ptr %irqen, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call fastcc void @ds1553_rtc_update_alarm(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1553_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %irqen2 = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %irqen2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqen2, align 4
  %and = and i32 %5, -33
  %masksel = select i1 %tobool.not, i32 0, i32 32
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %irqen2, align 4
  tail call fastcc void @ds1553_rtc_update_alarm(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ds1553_rtc_update_alarm(ptr noundef %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 1
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %lock = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %alrm_mday = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 8
  %2 = ptrtoint ptr %alrm_mday to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alrm_mday, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9 = icmp slt i32 %3, 0
  br i1 %cmp9, label %entry.cond.end20_crit_edge, label %lor.lhs.false

entry.cond.end20_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end20

lor.lhs.false:                                    ; preds = %entry
  %irqen = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 4
  %4 = ptrtoint ptr %irqen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqen, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false16, label %lor.lhs.false.cond.end20_crit_edge

lor.lhs.false.cond.end20_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end20

cond.false16:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call zeroext i8 @_bin2bcd(i32 noundef %3) #12
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false16, %lor.lhs.false.cond.end20_crit_edge, %entry.cond.end20_crit_edge
  %cond21 = phi i8 [ -128, %lor.lhs.false.cond.end20_crit_edge ], [ -128, %entry.cond.end20_crit_edge ], [ %call18, %cond.false16 ]
  %add.ptr = getelementptr i8, ptr %1, i32 8181
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %cond21) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %alrm_hour = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 7
  %6 = ptrtoint ptr %alrm_hour to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alrm_hour, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp26 = icmp slt i32 %7, 0
  br i1 %cmp26, label %cond.end20.cond.end49_crit_edge, label %lor.lhs.false28

cond.end20.cond.end49_crit_edge:                  ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end49

lor.lhs.false28:                                  ; preds = %cond.end20
  %irqen29 = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 4
  %8 = ptrtoint ptr %irqen29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irqen29, align 4
  %and30 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %cond.false43, label %lor.lhs.false28.cond.end49_crit_edge

lor.lhs.false28.cond.end49_crit_edge:             ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end49

cond.false43:                                     ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call zeroext i8 @_bin2bcd(i32 noundef %7) #12
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false43, %lor.lhs.false28.cond.end49_crit_edge, %cond.end20.cond.end49_crit_edge
  %cond50 = phi i8 [ -128, %lor.lhs.false28.cond.end49_crit_edge ], [ -128, %cond.end20.cond.end49_crit_edge ], [ %call45, %cond.false43 ]
  %add.ptr52 = getelementptr i8, ptr %1, i32 8180
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr52, i8 %cond50) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  %alrm_min = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 6
  %10 = ptrtoint ptr %alrm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alrm_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp56 = icmp slt i32 %11, 0
  br i1 %cmp56, label %cond.end49.cond.end79_crit_edge, label %lor.lhs.false58

cond.end49.cond.end79_crit_edge:                  ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end79

lor.lhs.false58:                                  ; preds = %cond.end49
  %irqen59 = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 4
  %12 = ptrtoint ptr %irqen59 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irqen59, align 4
  %and60 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %cond.false73, label %lor.lhs.false58.cond.end79_crit_edge

lor.lhs.false58.cond.end79_crit_edge:             ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end79

cond.false73:                                     ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #10
  %call75 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #12
  br label %cond.end79

cond.end79:                                       ; preds = %cond.false73, %lor.lhs.false58.cond.end79_crit_edge, %cond.end49.cond.end79_crit_edge
  %cond80 = phi i8 [ -128, %lor.lhs.false58.cond.end79_crit_edge ], [ -128, %cond.end49.cond.end79_crit_edge ], [ %call75, %cond.false73 ]
  %add.ptr82 = getelementptr i8, ptr %1, i32 8179
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr82, i8 %cond80) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %alrm_sec = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 5
  %14 = ptrtoint ptr %alrm_sec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %alrm_sec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp86 = icmp slt i32 %15, 0
  br i1 %cmp86, label %cond.end79.cond.end109_crit_edge, label %lor.lhs.false88

cond.end79.cond.end109_crit_edge:                 ; preds = %cond.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end109

lor.lhs.false88:                                  ; preds = %cond.end79
  %irqen89 = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 4
  %16 = ptrtoint ptr %irqen89 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irqen89, align 4
  %and90 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %cond.false103, label %lor.lhs.false88.cond.end109_crit_edge

lor.lhs.false88.cond.end109_crit_edge:            ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end109

cond.false103:                                    ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #10
  %call105 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #12
  br label %cond.end109

cond.end109:                                      ; preds = %cond.false103, %lor.lhs.false88.cond.end109_crit_edge, %cond.end79.cond.end109_crit_edge
  %cond110 = phi i8 [ -128, %lor.lhs.false88.cond.end109_crit_edge ], [ -128, %cond.end79.cond.end109_crit_edge ], [ %call105, %cond.false103 ]
  %add.ptr112 = getelementptr i8, ptr %1, i32 8178
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr112, i8 %cond110) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %irqen116 = getelementptr inbounds %struct.rtc_plat_data, ptr %pdata, i32 0, i32 4
  %18 = ptrtoint ptr %irqen116 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irqen116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool117.not = icmp eq i32 %19, 0
  %conv119 = select i1 %tobool117.not, i8 0, i8 -128
  %add.ptr120 = getelementptr i8, ptr %1, i32 8182
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr120, i8 %conv119) #8, !srcloc !48
  %add.ptr121 = getelementptr i8, ptr %1, i32 8176
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr121) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__UNIQUE_ID_alias227, !1, !"__UNIQUE_ID_alias227", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ds1553.c", i32 318, i32 1}
!2 = !{ptr @__initcall__kmod_rtc_ds1553__228_327_ds1553_rtc_driver_init6, !3, !"__initcall__kmod_rtc_ds1553__228_327_ds1553_rtc_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-ds1553.c", i32 327, i32 1}
!4 = !{ptr @__exitcall_ds1553_rtc_driver_exit, !3, !"__exitcall_ds1553_rtc_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-ds1553.c", i32 329, i32 1}
!7 = !{ptr @__UNIQUE_ID_description230, !8, !"__UNIQUE_ID_description230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-ds1553.c", i32 330, i32 1}
!9 = !{ptr @__UNIQUE_ID_file231, !10, !"__UNIQUE_ID_file231", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-ds1553.c", i32 331, i32 1}
!11 = !{ptr @__UNIQUE_ID_license232, !10, !"__UNIQUE_ID_license232", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-ds1553.c", i32 323, i32 11}
!14 = !{ptr @ds1553_rtc_driver, !15, !"ds1553_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-ds1553.c", i32 320, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-ds1553.c", i32 257, i32 11}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-ds1553.c", i32 286, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ds1553_rtc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ds1553_rtc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ds1553_rtc_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-ds1553.c", i32 288, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-ds1553.c", i32 307, i32 4}
!31 = !{ptr @ds1553_rtc_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ds1553_rtc_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ds1553_rtc_ops, !34, !"ds1553_rtc_ops", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-ds1553.c", i32 216, i32 35}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 4261832}
!45 = !{i64 2153826240}
!46 = !{i64 2153826516}
!47 = !{i64 2153826770}
!48 = !{i64 4261437}
!49 = !{i64 2153827072}
!50 = !{i64 2153827385}
!51 = !{i64 2153827716}
!52 = !{i64 2153829827}
!53 = !{i64 2153825516}
!54 = !{i64 2153825730}
!55 = !{i64 2153824991}
!56 = !{i64 2153825267}
!57 = !{i64 2153816443}
!58 = !{i64 2153816768}
!59 = !{i64 2153817042}
!60 = !{i64 2153817311}
!61 = !{i64 2153817580}
!62 = !{i64 2153817849}
!63 = !{i64 2153818123}
!64 = !{i64 2153818392}
!65 = !{i64 2153818658}
!66 = !{i64 2153818904}
!67 = !{i64 2153810204}
!68 = !{i64 2153810866}
!69 = !{i64 2153811648}
!70 = !{i64 2153812403}
!71 = !{i64 2153813141}
!72 = !{i64 2153813872}
!73 = !{i64 2153814594}
!74 = !{i64 2153815322}
!75 = !{i64 2153815787}
!76 = !{i64 2153816125}
!77 = !{i64 2153821077}
!78 = !{i64 2153822003}
!79 = !{i64 2153822919}
!80 = !{i64 2153823830}
!81 = !{i64 2153824365}
!82 = !{i64 2153824709}
