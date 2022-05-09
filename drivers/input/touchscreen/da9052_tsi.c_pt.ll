; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/da9052_tsi.c_pt.bc'
source_filename = "../drivers/input/touchscreen/da9052_tsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.da9052_tsi = type { ptr, ptr, %struct.delayed_work, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.da9052 = type { ptr, ptr, %struct.mutex, %struct.completion, i32, ptr, i8, i32, ptr }

@__initcall__kmod_da9052_tsi__227_337_da9052_tsi_driver_init6 = internal global ptr @da9052_tsi_driver_init, section ".initcall6.init", align 4
@da9052_tsi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9052_ts_probe, ptr @da9052_ts_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9052_tsi_driver_exit = internal global ptr @da9052_tsi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [74 x i8] c"da9052_tsi.description=Touchscreen driver for Dialog Semiconductor DA9052\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [60 x i8] c"da9052_tsi.author=Anthony Olech <Anthony.Olech@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [53 x i8] c"da9052_tsi.file=drivers/input/touchscreen/da9052_tsi\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [23 x i8] c"da9052_tsi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [37 x i8] c"da9052_tsi.alias=platform:da9052-tsi\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da9052-tsi\00", [21 x i8] zeroinitializer }, align 32
@da9052_ts_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&tsi->ts_pen_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@da9052_ts_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&tsi->ts_pen_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Dialog DA9052 TouchScreen Driver\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pendown-irq\00", [20 x i8] zeroinitializer }, align 32
@da9052_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 275, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register PENDWN IRQ: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da9052_ts_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/touchscreen/da9052_tsi.c\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9052_ts_probe._entry_ptr = internal global ptr @da9052_ts_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsiready-irq\00", [19 x i8] zeroinitializer }, align 32
@da9052_ts_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.8, i32 283, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register TSIRDY IRQ :%d\0A\00", [61 x i8] zeroinitializer }, align 32
@da9052_ts_probe._entry_ptr.14 = internal global ptr @da9052_ts_probe._entry.12, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"da9052_tsi_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 329, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 333, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 245, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 250, i32 20 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 272, i32 5 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 274, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 280, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [42 x i8] c"../drivers/input/touchscreen/da9052_tsi.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 282, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_da9052_tsi_driver_exit, ptr @__initcall__kmod_da9052_tsi__227_337_da9052_tsi_driver_init6, ptr @da9052_ts_probe._entry, ptr @da9052_ts_probe._entry.12, ptr @da9052_ts_probe._entry_ptr, ptr @da9052_ts_probe._entry_ptr.14, ptr @da9052_tsi_driver_exit, ptr @da9052_tsi_driver, ptr @.str, ptr @da9052_ts_probe.__key, ptr @.str.1, ptr @da9052_ts_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_tsi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_ts_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_ts_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_ts_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_tsi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9052_tsi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9052_tsi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9052_tsi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_ts_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 112) #10
  %call2 = tail call ptr @input_allocate_device() #7
  %tobool3.not = icmp eq ptr %call7.i.i, null
  %tobool4.not = icmp eq ptr %call2, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.err_free_mem_crit_edge, label %if.end6

if.end.err_free_mem_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_mem

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %call7.i.i, align 8
  %dev8 = getelementptr inbounds %struct.da9052_tsi, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %dev8, align 4
  %stopped = getelementptr inbounds %struct.da9052_tsi, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %stopped, align 4
  %ts_pen_work = getelementptr inbounds %struct.da9052_tsi, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %ts_pen_work, i32 noundef 0) #7
  %8 = ptrtoint ptr %ts_pen_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %ts_pen_work, align 8
  %lockdep_map = getelementptr inbounds %struct.da9052_tsi, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @da9052_ts_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry16 = getelementptr inbounds %struct.da9052_tsi, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.da9052_tsi, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry16, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.da9052_tsi, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @da9052_ts_pen_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.da9052_tsi, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @da9052_ts_probe.__key.2) #7
  %version = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 257, ptr %version, align 2
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 5558, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -28590, ptr %product, align 4
  %15 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.4, ptr %call2, align 8
  %parent29 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 1
  %16 = ptrtoint ptr %parent29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %parent29, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 31
  %17 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @da9052_ts_input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 32
  %18 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @da9052_ts_input_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 5
  %19 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %evbit, align 4
  %or.i126 = or i32 %20, 10
  store i32 %or.i126, ptr %evbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call2, i32 0, i32 6, i32 10
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  %or.i127 = or i32 %22, 1024
  store i32 %or.i127, ptr %add.ptr.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 0, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 24, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #7
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i, align 8
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 105, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end6.da9052_reg_update.exit_crit_edge, label %if.end.i

if.end6.da9052_reg_update.exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_update.exit

if.end.i:                                         ; preds = %if.end6
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %25, i32 0, i32 8
  %28 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end.i.da9052_reg_update.exit_crit_edge, label %if.then4.i

if.end.i.da9052_reg_update.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_update.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 %29(ptr noundef %25, i8 noundef zeroext 105) #7
  br label %da9052_reg_update.exit

da9052_reg_update.exit:                           ; preds = %if.then4.i, %if.end.i.da9052_reg_update.exit_crit_edge, %if.end6.da9052_reg_update.exit_crit_edge
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i.i, align 8
  %regmap.i.i = getelementptr inbounds %struct.da9052, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 105, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %da9052_reg_update.exit.da9052_ts_adc_toggle.exit_crit_edge, label %if.end.i.i

da9052_reg_update.exit.da9052_ts_adc_toggle.exit_crit_edge: ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_ts_adc_toggle.exit

if.end.i.i:                                       ; preds = %da9052_reg_update.exit
  %fix_io.i.i = getelementptr inbounds %struct.da9052, ptr %31, i32 0, i32 8
  %34 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.end.i.i.da9052_ts_adc_toggle.exit_crit_edge, label %if.then4.i.i

if.end.i.i.da9052_ts_adc_toggle.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_ts_adc_toggle.exit

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call i32 %35(ptr noundef %31, i8 noundef zeroext 105) #7
  br label %da9052_ts_adc_toggle.exit

da9052_ts_adc_toggle.exit:                        ; preds = %if.then4.i.i, %if.end.i.i.da9052_ts_adc_toggle.exit_crit_edge, %da9052_reg_update.exit.da9052_ts_adc_toggle.exit_crit_edge
  %adc_on.i = getelementptr inbounds %struct.da9052_tsi, ptr %call7.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %adc_on.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %adc_on.i, align 1
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call7.i.i, align 8
  %call36 = tail call i32 @da9052_request_irq(ptr noundef %38, i32 noundef 14, ptr noundef nonnull @.str.5, ptr noundef nonnull @da9052_ts_pendwn_irq, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 8
  br i1 %tobool37.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %da9052_ts_adc_toggle.exit
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.6, i32 noundef %call36) #11
  br label %err_free_mem

if.end44:                                         ; preds = %da9052_ts_adc_toggle.exit
  %call46 = tail call i32 @da9052_request_irq(ptr noundef %40, i32 noundef 15, ptr noundef nonnull @.str.11, ptr noundef nonnull @da9052_ts_datardy_irq, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i, align 8
  br i1 %tobool47.not, label %if.end54, label %do.end51

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.13, i32 noundef %call46) #11
  br label %err_free_pendwn_irq

if.end54:                                         ; preds = %if.end44
  %call56 = tail call i32 @da9052_disable_irq(ptr noundef %44, i32 noundef 14) #7
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call7.i.i, align 8
  %call58 = tail call i32 @da9052_disable_irq(ptr noundef %48, i32 noundef 15) #7
  %49 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call7.i.i, align 8
  %regmap.i.i.i = getelementptr inbounds %struct.da9052, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 22, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end54.err_free_datardy_irq_crit_edge, label %if.end.i.i.i

if.end54.err_free_datardy_irq_crit_edge:          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_datardy_irq

if.end.i.i.i:                                     ; preds = %if.end54
  %fix_io.i.i.i = getelementptr inbounds %struct.da9052, ptr %50, i32 0, i32 8
  %53 = ptrtoint ptr %fix_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fix_io.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.end.i.i129_crit_edge, label %da9052_reg_update.exit.i.i

if.end.i.i.i.if.end.i.i129_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i129

da9052_reg_update.exit.i.i:                       ; preds = %if.end.i.i.i
  %call6.i.i.i = tail call i32 %54(ptr noundef %50, i8 noundef zeroext 22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %cmp.i.i128 = icmp slt i32 %call6.i.i.i, 0
  br i1 %cmp.i.i128, label %da9052_reg_update.exit.i.i.err_free_datardy_irq_crit_edge, label %da9052_reg_update.exit.i.i.if.end.i.i129_crit_edge

da9052_reg_update.exit.i.i.if.end.i.i129_crit_edge: ; preds = %da9052_reg_update.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i129

da9052_reg_update.exit.i.i.err_free_datardy_irq_crit_edge: ; preds = %da9052_reg_update.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_datardy_irq

if.end.i.i129:                                    ; preds = %da9052_reg_update.exit.i.i.if.end.i.i129_crit_edge, %if.end.i.i.i.if.end.i.i129_crit_edge
  %55 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i17.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 23, i32 noundef 51, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17.i.i)
  %cmp.i18.i.i = icmp slt i32 %call.i.i17.i.i, 0
  br i1 %cmp.i18.i.i, label %if.end.i.i129.err_free_datardy_irq_crit_edge, label %if.end.i21.i.i

if.end.i.i129.err_free_datardy_irq_crit_edge:     ; preds = %if.end.i.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_datardy_irq

if.end.i21.i.i:                                   ; preds = %if.end.i.i129
  %57 = ptrtoint ptr %fix_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fix_io.i.i.i, align 4
  %tobool.not.i20.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i20.i.i, label %if.end.i21.i.i.if.end4.i.i_crit_edge, label %da9052_reg_update.exit25.i.i

if.end.i21.i.i.if.end4.i.i_crit_edge:             ; preds = %if.end.i21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

da9052_reg_update.exit25.i.i:                     ; preds = %if.end.i21.i.i
  %call6.i22.i.i = tail call i32 %58(ptr noundef %50, i8 noundef zeroext 23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i22.i.i)
  %cmp2.i.i = icmp slt i32 %call6.i22.i.i, 0
  br i1 %cmp2.i.i, label %da9052_reg_update.exit25.i.i.err_free_datardy_irq_crit_edge, label %da9052_reg_update.exit25.i.i.if.end4.i.i_crit_edge

da9052_reg_update.exit25.i.i.if.end4.i.i_crit_edge: ; preds = %da9052_reg_update.exit25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

da9052_reg_update.exit25.i.i.err_free_datardy_irq_crit_edge: ; preds = %da9052_reg_update.exit25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_datardy_irq

if.end4.i.i:                                      ; preds = %da9052_reg_update.exit25.i.i.if.end4.i.i_crit_edge, %if.end.i21.i.i.if.end4.i.i_crit_edge
  %59 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i27.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 24, i32 noundef 51, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27.i.i)
  %cmp.i28.i.i = icmp slt i32 %call.i.i27.i.i, 0
  br i1 %cmp.i28.i.i, label %if.end4.i.i.err_free_datardy_irq_crit_edge, label %if.end.i31.i.i

if.end4.i.i.err_free_datardy_irq_crit_edge:       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_datardy_irq

if.end.i31.i.i:                                   ; preds = %if.end4.i.i
  %61 = ptrtoint ptr %fix_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fix_io.i.i.i, align 4
  %tobool.not.i30.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i30.i.i, label %if.end.i31.i.i.if.end.i133_crit_edge, label %da9052_ts_configure_gpio.exit.i

if.end.i31.i.i.if.end.i133_crit_edge:             ; preds = %if.end.i31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i133

da9052_ts_configure_gpio.exit.i:                  ; preds = %if.end.i31.i.i
  %call6.i32.i.i = tail call i32 %62(ptr noundef %50, i8 noundef zeroext 24) #7
  %63 = tail call i32 @llvm.smin.i32(i32 %call6.i32.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.i32.i.i)
  %tobool.not.i130 = icmp sgt i32 %call6.i32.i.i, -1
  br i1 %tobool.not.i130, label %da9052_ts_configure_gpio.exit.i.if.end.i133_crit_edge, label %da9052_ts_configure_gpio.exit.i.da9052_configure_tsi.exit_crit_edge

da9052_ts_configure_gpio.exit.i.da9052_configure_tsi.exit_crit_edge: ; preds = %da9052_ts_configure_gpio.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_configure_tsi.exit

da9052_ts_configure_gpio.exit.i.if.end.i133_crit_edge: ; preds = %da9052_ts_configure_gpio.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i133

if.end.i133:                                      ; preds = %da9052_ts_configure_gpio.exit.i.if.end.i133_crit_edge, %if.end.i31.i.i.if.end.i133_crit_edge
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call7.i.i, align 8
  %regmap.i.i131 = getelementptr inbounds %struct.da9052, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %regmap.i.i131 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i.i131, align 4
  %call.i.i.i132 = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 82, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i132)
  %cmp.i25.i = icmp slt i32 %call.i.i.i132, 0
  br i1 %cmp.i25.i, label %if.end.i133.err_free_datardy_irq_crit_edge, label %if.end.i26.i

if.end.i133.err_free_datardy_irq_crit_edge:       ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_datardy_irq

if.end.i26.i:                                     ; preds = %if.end.i133
  %fix_io.i.i134 = getelementptr inbounds %struct.da9052, ptr %65, i32 0, i32 8
  %68 = ptrtoint ptr %fix_io.i.i134 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fix_io.i.i134, align 4
  %tobool.not.i.i135 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i135, label %if.end.i26.i.if.end4.i_crit_edge, label %da9052_reg_update.exit.i

if.end.i26.i.if.end4.i_crit_edge:                 ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

da9052_reg_update.exit.i:                         ; preds = %if.end.i26.i
  %call6.i.i136 = tail call i32 %69(ptr noundef %65, i8 noundef zeroext 82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i136)
  %cmp.i137 = icmp slt i32 %call6.i.i136, 0
  br i1 %cmp.i137, label %da9052_reg_update.exit.i.err_free_datardy_irq_crit_edge, label %da9052_reg_update.exit.i.if.end4.i_crit_edge

da9052_reg_update.exit.i.if.end4.i_crit_edge:     ; preds = %da9052_reg_update.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

da9052_reg_update.exit.i.err_free_datardy_irq_crit_edge: ; preds = %da9052_reg_update.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_datardy_irq

if.end4.i:                                        ; preds = %da9052_reg_update.exit.i.if.end4.i_crit_edge, %if.end.i26.i.if.end4.i_crit_edge
  %70 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call7.i.i, align 8
  %regmap.i28.i = getelementptr inbounds %struct.da9052, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %regmap.i28.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i28.i, align 4
  %call.i.i29.i = tail call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 105, i32 noundef 252, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29.i)
  %cmp.i30.i = icmp slt i32 %call.i.i29.i, 0
  br i1 %cmp.i30.i, label %if.end4.i.err_free_datardy_irq_crit_edge, label %if.end.i33.i

if.end4.i.err_free_datardy_irq_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_datardy_irq

if.end.i33.i:                                     ; preds = %if.end4.i
  %fix_io.i31.i = getelementptr inbounds %struct.da9052, ptr %71, i32 0, i32 8
  %74 = ptrtoint ptr %fix_io.i31.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fix_io.i31.i, align 4
  %tobool.not.i32.i = icmp eq ptr %75, null
  br i1 %tobool.not.i32.i, label %if.end.i33.i.if.end9.i_crit_edge, label %da9052_reg_update.exit37.i

if.end.i33.i.if.end9.i_crit_edge:                 ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

da9052_reg_update.exit37.i:                       ; preds = %if.end.i33.i
  %call6.i34.i = tail call i32 %75(ptr noundef %71, i8 noundef zeroext 105) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i34.i)
  %cmp7.i = icmp slt i32 %call6.i34.i, 0
  br i1 %cmp7.i, label %da9052_reg_update.exit37.i.err_free_datardy_irq_crit_edge, label %da9052_reg_update.exit37.i.if.end9.i_crit_edge

da9052_reg_update.exit37.i.if.end9.i_crit_edge:   ; preds = %da9052_reg_update.exit37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

da9052_reg_update.exit37.i.err_free_datardy_irq_crit_edge: ; preds = %da9052_reg_update.exit37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_datardy_irq

if.end9.i:                                        ; preds = %da9052_reg_update.exit37.i.if.end9.i_crit_edge, %if.end.i33.i.if.end9.i_crit_edge
  %76 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call7.i.i, align 8
  %regmap.i38.i = getelementptr inbounds %struct.da9052, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %regmap.i38.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap.i38.i, align 4
  %call.i.i138 = tail call i32 @regmap_write(ptr noundef %79, i32 noundef 58, i32 noundef 89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i138)
  %cmp.i39.i = icmp slt i32 %call.i.i138, 0
  br i1 %cmp.i39.i, label %if.end9.i.da9052_reg_write.exit.i_crit_edge, label %if.end.i42.i

if.end9.i.da9052_reg_write.exit.i_crit_edge:      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_write.exit.i

if.end.i42.i:                                     ; preds = %if.end9.i
  %fix_io.i40.i = getelementptr inbounds %struct.da9052, ptr %77, i32 0, i32 8
  %80 = ptrtoint ptr %fix_io.i40.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fix_io.i40.i, align 4
  %tobool.not.i41.i = icmp eq ptr %81, null
  br i1 %tobool.not.i41.i, label %if.end.i42.i.da9052_reg_write.exit.i_crit_edge, label %if.then3.i.i

if.end.i42.i.da9052_reg_write.exit.i_crit_edge:   ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_write.exit.i

if.then3.i.i:                                     ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i = tail call i32 %81(ptr noundef %77, i8 noundef zeroext 58) #7
  br label %da9052_reg_write.exit.i

da9052_reg_write.exit.i:                          ; preds = %if.then3.i.i, %if.end.i42.i.da9052_reg_write.exit.i_crit_edge, %if.end9.i.da9052_reg_write.exit.i_crit_edge
  %retval.0.i43.i = phi i32 [ %call.i.i138, %if.end9.i.da9052_reg_write.exit.i_crit_edge ], [ %call5.i.i, %if.then3.i.i ], [ %call.i.i138, %if.end.i42.i.da9052_reg_write.exit.i_crit_edge ]
  %82 = tail call i32 @llvm.smin.i32(i32 %retval.0.i43.i, i32 0) #7
  br label %da9052_configure_tsi.exit

da9052_configure_tsi.exit:                        ; preds = %da9052_reg_write.exit.i, %da9052_ts_configure_gpio.exit.i.da9052_configure_tsi.exit_crit_edge
  %retval.0.i139 = phi i32 [ %63, %da9052_ts_configure_gpio.exit.i.da9052_configure_tsi.exit_crit_edge ], [ %82, %da9052_reg_write.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i139)
  %tobool60.not = icmp eq i32 %retval.0.i139, 0
  br i1 %tobool60.not, label %if.end62, label %da9052_configure_tsi.exit.err_free_datardy_irq_crit_edge

da9052_configure_tsi.exit.err_free_datardy_irq_crit_edge: ; preds = %da9052_configure_tsi.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_datardy_irq

if.end62:                                         ; preds = %da9052_configure_tsi.exit
  %83 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev8, align 4
  %call64 = tail call i32 @input_register_device(ptr noundef %84) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end62.err_free_datardy_irq_crit_edge

if.end62.err_free_datardy_irq_crit_edge:          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_datardy_irq

if.end67:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i140 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %85 = ptrtoint ptr %driver_data.i.i140 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call7.i.i, ptr %driver_data.i.i140, align 4
  br label %cleanup

err_free_datardy_irq:                             ; preds = %if.end62.err_free_datardy_irq_crit_edge, %da9052_configure_tsi.exit.err_free_datardy_irq_crit_edge, %da9052_reg_update.exit37.i.err_free_datardy_irq_crit_edge, %if.end4.i.err_free_datardy_irq_crit_edge, %da9052_reg_update.exit.i.err_free_datardy_irq_crit_edge, %if.end.i133.err_free_datardy_irq_crit_edge, %if.end4.i.i.err_free_datardy_irq_crit_edge, %da9052_reg_update.exit25.i.i.err_free_datardy_irq_crit_edge, %if.end.i.i129.err_free_datardy_irq_crit_edge, %da9052_reg_update.exit.i.i.err_free_datardy_irq_crit_edge, %if.end54.err_free_datardy_irq_crit_edge
  %error.0 = phi i32 [ %retval.0.i139, %da9052_configure_tsi.exit.err_free_datardy_irq_crit_edge ], [ %call64, %if.end62.err_free_datardy_irq_crit_edge ], [ %call.i.i27.i.i, %if.end4.i.i.err_free_datardy_irq_crit_edge ], [ %call.i.i29.i, %if.end4.i.err_free_datardy_irq_crit_edge ], [ %call.i.i.i132, %if.end.i133.err_free_datardy_irq_crit_edge ], [ %call6.i.i.i, %da9052_reg_update.exit.i.i.err_free_datardy_irq_crit_edge ], [ %call6.i22.i.i, %da9052_reg_update.exit25.i.i.err_free_datardy_irq_crit_edge ], [ %call.i.i.i.i, %if.end54.err_free_datardy_irq_crit_edge ], [ %call.i.i17.i.i, %if.end.i.i129.err_free_datardy_irq_crit_edge ], [ %call6.i34.i, %da9052_reg_update.exit37.i.err_free_datardy_irq_crit_edge ], [ %call6.i.i136, %da9052_reg_update.exit.i.err_free_datardy_irq_crit_edge ]
  %86 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call7.i.i, align 8
  tail call void @da9052_free_irq(ptr noundef %87, i32 noundef 15, ptr noundef nonnull %call7.i.i) #7
  br label %err_free_pendwn_irq

err_free_pendwn_irq:                              ; preds = %err_free_datardy_irq, %do.end51
  %error.1 = phi i32 [ %call46, %do.end51 ], [ %error.0, %err_free_datardy_irq ]
  %88 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call7.i.i, align 8
  tail call void @da9052_free_irq(ptr noundef %89, i32 noundef 14, ptr noundef nonnull %call7.i.i) #7
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_free_pendwn_irq, %do.end41, %if.end.err_free_mem_crit_edge
  %error.2 = phi i32 [ %call36, %do.end41 ], [ %error.1, %err_free_pendwn_irq ], [ -12, %if.end.err_free_mem_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #7
  tail call void @input_free_device(ptr noundef %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.end67, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.2, %err_free_mem ], [ 0, %if.end67 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_ts_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 58, i32 noundef 25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.da9052_reg_write.exit_crit_edge, label %if.end.i

entry.da9052_reg_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_write.exit

if.end.i:                                         ; preds = %entry
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i.da9052_reg_write.exit_crit_edge, label %if.then3.i

if.end.i.da9052_reg_write.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_write.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 %7(ptr noundef %3, i8 noundef zeroext 58) #7
  br label %da9052_reg_write.exit

da9052_reg_write.exit:                            ; preds = %if.then3.i, %if.end.i.da9052_reg_write.exit_crit_edge, %entry.da9052_reg_write.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @da9052_free_irq(ptr noundef %9, i32 noundef 15, ptr noundef %1) #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @da9052_free_irq(ptr noundef %11, i32 noundef 14, ptr noundef %1) #7
  %dev = getelementptr inbounds %struct.da9052_tsi, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void @input_unregister_device(ptr noundef %13) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da9052_ts_pen_work(ptr noundef %work) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %stopped = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stopped, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup17_crit_edge

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup17

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !49
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 109, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.da9052_reg_read.exit.thread_crit_edge, label %if.end.i

if.then.da9052_reg_read.exit.thread_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit.thread

if.end.i:                                         ; preds = %if.then
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i.da9052_reg_read.exit_crit_edge, label %if.then2.i

if.end.i.da9052_reg_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = call i32 %8(ptr noundef %3, i8 noundef zeroext 109) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then2.i.da9052_reg_read.exit.thread_crit_edge, label %if.then2.i.da9052_reg_read.exit_crit_edge

if.then2.i.da9052_reg_read.exit_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit

if.then2.i.da9052_reg_read.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit.thread

da9052_reg_read.exit.thread:                      ; preds = %if.then2.i.da9052_reg_read.exit.thread_crit_edge, %if.then.da9052_reg_read.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.then2

da9052_reg_read.exit:                             ; preds = %if.then2.i.da9052_reg_read.exit_crit_edge, %if.end.i.da9052_reg_read.exit_crit_edge
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %11 = and i32 %10, -2147483584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.else, label %da9052_reg_read.exit.if.then2_crit_edge

da9052_reg_read.exit.if.then2_crit_edge:          ; preds = %da9052_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.then2:                                         ; preds = %da9052_reg_read.exit.if.then2_crit_edge, %da9052_reg_read.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %work, i32 noundef 2) #7
  br label %cleanup17

if.else:                                          ; preds = %da9052_reg_read.exit
  %dev = getelementptr i8, ptr %work, i32 -4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %regmap.i.i = getelementptr inbounds %struct.da9052, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 105, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.else.da9052_ts_adc_toggle.exit_crit_edge, label %if.end.i.i

if.else.da9052_ts_adc_toggle.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_ts_adc_toggle.exit

if.end.i.i:                                       ; preds = %if.else
  %fix_io.i.i = getelementptr inbounds %struct.da9052, ptr %17, i32 0, i32 8
  %20 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i.da9052_ts_adc_toggle.exit_crit_edge, label %if.then4.i.i

if.end.i.i.da9052_ts_adc_toggle.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_ts_adc_toggle.exit

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = call i32 %21(ptr noundef %17, i8 noundef zeroext 105) #7
  br label %da9052_ts_adc_toggle.exit

da9052_ts_adc_toggle.exit:                        ; preds = %if.then4.i.i, %if.end.i.i.da9052_ts_adc_toggle.exit_crit_edge, %if.else.da9052_ts_adc_toggle.exit_crit_edge
  %adc_on.i = getelementptr i8, ptr %work, i32 101
  %22 = ptrtoint ptr %adc_on.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %adc_on.i, align 1
  call void @input_event(ptr noundef %15, i32 noundef 1, i32 noundef 330, i32 noundef 0) #7
  call void @input_event(ptr noundef %15, i32 noundef 3, i32 noundef 24, i32 noundef 0) #7
  call void @input_event(ptr noundef %15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %regmap.i34 = getelementptr inbounds %struct.da9052, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %regmap.i34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i34, align 4
  %call.i.i35 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 6, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %cmp.i36 = icmp slt i32 %call.i.i35, 0
  br i1 %cmp.i36, label %da9052_ts_adc_toggle.exit.cleanup17_crit_edge, label %if.end.i39

da9052_ts_adc_toggle.exit.cleanup17_crit_edge:    ; preds = %da9052_ts_adc_toggle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup17

if.end.i39:                                       ; preds = %da9052_ts_adc_toggle.exit
  %fix_io.i37 = getelementptr inbounds %struct.da9052, ptr %24, i32 0, i32 8
  %27 = ptrtoint ptr %fix_io.i37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fix_io.i37, align 4
  %tobool.not.i38 = icmp eq ptr %28, null
  br i1 %tobool.not.i38, label %if.end.i39.if.end_crit_edge, label %da9052_reg_update.exit

if.end.i39.if.end_crit_edge:                      ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

da9052_reg_update.exit:                           ; preds = %if.end.i39
  %call6.i = call i32 %28(ptr noundef %24, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp6 = icmp slt i32 %call6.i, 0
  br i1 %cmp6, label %da9052_reg_update.exit.cleanup17_crit_edge, label %da9052_reg_update.exit.if.end_crit_edge

da9052_reg_update.exit.if.end_crit_edge:          ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

da9052_reg_update.exit.cleanup17_crit_edge:       ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup17

if.end:                                           ; preds = %da9052_reg_update.exit.if.end_crit_edge, %if.end.i39.if.end_crit_edge
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %call9 = call i32 @da9052_disable_irq(ptr noundef %30, i32 noundef 15) #7
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  %call11 = call i32 @da9052_enable_irq(ptr noundef %32, i32 noundef 14) #7
  br label %cleanup17

cleanup17:                                        ; preds = %if.end, %da9052_reg_update.exit.cleanup17_crit_edge, %da9052_ts_adc_toggle.exit.cleanup17_crit_edge, %if.then2, %entry.cleanup17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_ts_input_open(ptr nocapture noundef readonly %input_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %stopped = getelementptr inbounds %struct.da9052_tsi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %stopped, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @da9052_enable_irq(ptr noundef %4, i32 noundef 14) #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 105, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.da9052_reg_update.exit_crit_edge, label %if.end.i

entry.da9052_reg_update.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_update.exit

if.end.i:                                         ; preds = %entry
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %6, i32 0, i32 8
  %9 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i.da9052_reg_update.exit_crit_edge, label %if.then4.i

if.end.i.da9052_reg_update.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_update.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 %10(ptr noundef %6, i8 noundef zeroext 105) #7
  br label %da9052_reg_update.exit

da9052_reg_update.exit:                           ; preds = %if.then4.i, %if.end.i.da9052_reg_update.exit_crit_edge, %entry.da9052_reg_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %entry.da9052_reg_update.exit_crit_edge ], [ %call6.i, %if.then4.i ], [ %call.i.i, %if.end.i.da9052_reg_update.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da9052_ts_input_close(ptr nocapture noundef readonly %input_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %stopped = getelementptr inbounds %struct.da9052_tsi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %stopped, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @da9052_disable_irq(ptr noundef %4, i32 noundef 14) #7
  %ts_pen_work = getelementptr inbounds %struct.da9052_tsi, ptr %1, i32 0, i32 2
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ts_pen_work) #7
  %adc_on = getelementptr inbounds %struct.da9052_tsi, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %adc_on to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %adc_on, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call4 = tail call i32 @da9052_disable_irq(ptr noundef %8, i32 noundef 15) #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %regmap.i.i = getelementptr inbounds %struct.da9052, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 105, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.then.da9052_ts_adc_toggle.exit_crit_edge, label %if.end.i.i

if.then.da9052_ts_adc_toggle.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_ts_adc_toggle.exit

if.end.i.i:                                       ; preds = %if.then
  %fix_io.i.i = getelementptr inbounds %struct.da9052, ptr %10, i32 0, i32 8
  %13 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i.da9052_ts_adc_toggle.exit_crit_edge, label %if.then4.i.i

if.end.i.i.da9052_ts_adc_toggle.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_ts_adc_toggle.exit

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call i32 %14(ptr noundef %10, i8 noundef zeroext 105) #7
  br label %da9052_ts_adc_toggle.exit

da9052_ts_adc_toggle.exit:                        ; preds = %if.then4.i.i, %if.end.i.i.da9052_ts_adc_toggle.exit_crit_edge, %if.then.da9052_ts_adc_toggle.exit_crit_edge
  %15 = ptrtoint ptr %adc_on to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %adc_on, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call6 = tail call i32 @da9052_enable_irq(ptr noundef %17, i32 noundef 14) #7
  br label %if.end

if.end:                                           ; preds = %da9052_ts_adc_toggle.exit, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 105, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.da9052_reg_update.exit_crit_edge, label %if.end.i

if.end.da9052_reg_update.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_update.exit

if.end.i:                                         ; preds = %if.end
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %19, i32 0, i32 8
  %22 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i.da9052_reg_update.exit_crit_edge, label %if.then4.i

if.end.i.da9052_reg_update.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_update.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 %23(ptr noundef %19, i8 noundef zeroext 105) #7
  br label %da9052_reg_update.exit

da9052_reg_update.exit:                           ; preds = %if.then4.i, %if.end.i.da9052_reg_update.exit_crit_edge, %if.end.da9052_reg_update.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9052_request_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_ts_pendwn_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stopped = getelementptr inbounds %struct.da9052_tsi, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stopped, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call i32 @da9052_disable_irq_nosync(ptr noundef %3, i32 noundef 14) #7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call2 = tail call i32 @da9052_enable_irq(ptr noundef %5, i32 noundef 15) #7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %regmap.i.i = getelementptr inbounds %struct.da9052, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 105, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.then.da9052_ts_adc_toggle.exit_crit_edge, label %if.end.i.i

if.then.da9052_ts_adc_toggle.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_ts_adc_toggle.exit

if.end.i.i:                                       ; preds = %if.then
  %fix_io.i.i = getelementptr inbounds %struct.da9052, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i.da9052_ts_adc_toggle.exit_crit_edge, label %if.then4.i.i

if.end.i.i.da9052_ts_adc_toggle.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_ts_adc_toggle.exit

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call i32 %11(ptr noundef %7, i8 noundef zeroext 105) #7
  br label %da9052_ts_adc_toggle.exit

da9052_ts_adc_toggle.exit:                        ; preds = %if.then4.i.i, %if.end.i.i.da9052_ts_adc_toggle.exit_crit_edge, %if.then.da9052_ts_adc_toggle.exit_crit_edge
  %adc_on.i = getelementptr inbounds %struct.da9052_tsi, ptr %data, i32 0, i32 4
  %12 = ptrtoint ptr %adc_on.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %adc_on.i, align 1
  %ts_pen_work = getelementptr inbounds %struct.da9052_tsi, ptr %data, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %ts_pen_work, i32 noundef 2) #7
  br label %if.end

if.end:                                           ; preds = %da9052_ts_adc_toggle.exit, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_ts_datardy_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %val.i95.i = alloca i32, align 4
  %val.i82.i = alloca i32, align 4
  %val.i69.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.da9052_tsi, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i.i, align 4, !annotation !49
  %regmap.i.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 107, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.da9052_reg_read.exit.thread.i_crit_edge, label %if.end.i.i

entry.da9052_reg_read.exit.thread.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit.thread.i

if.end.i.i:                                       ; preds = %entry
  %fix_io.i.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i.da9052_reg_read.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.da9052_reg_read.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %call4.i.i = call i32 %8(ptr noundef %3, i8 noundef zeroext 107) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %if.then2.i.i.da9052_reg_read.exit.thread.i_crit_edge, label %if.then2.i.i.da9052_reg_read.exit.i_crit_edge

if.then2.i.i.da9052_reg_read.exit.i_crit_edge:    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit.i

if.then2.i.i.da9052_reg_read.exit.thread.i_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit.thread.i

da9052_reg_read.exit.thread.i:                    ; preds = %if.then2.i.i.da9052_reg_read.exit.thread.i_crit_edge, %entry.da9052_reg_read.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %da9052_ts_read.exit

da9052_reg_read.exit.i:                           ; preds = %if.then2.i.i.da9052_reg_read.exit.i_crit_edge, %if.end.i.i.da9052_reg_read.exit.i_crit_edge
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp slt i32 %10, 0
  br i1 %cmp.i, label %da9052_reg_read.exit.i.da9052_ts_read.exit_crit_edge, label %if.end.i

da9052_reg_read.exit.i.da9052_ts_read.exit_crit_edge: ; preds = %da9052_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_ts_read.exit

if.end.i:                                         ; preds = %da9052_reg_read.exit.i
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i69.i) #7
  %13 = ptrtoint ptr %val.i69.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i69.i, align 4, !annotation !49
  %regmap.i70.i = getelementptr inbounds %struct.da9052, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i70.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i70.i, align 4
  %call.i71.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 108, ptr noundef nonnull %val.i69.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i)
  %cmp.i72.i = icmp slt i32 %call.i71.i, 0
  br i1 %cmp.i72.i, label %if.end.i.da9052_reg_read.exit81.thread.i_crit_edge, label %if.end.i75.i

if.end.i.da9052_reg_read.exit81.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit81.thread.i

if.end.i75.i:                                     ; preds = %if.end.i
  %fix_io.i73.i = getelementptr inbounds %struct.da9052, ptr %12, i32 0, i32 8
  %16 = ptrtoint ptr %fix_io.i73.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fix_io.i73.i, align 4
  %tobool.not.i74.i = icmp eq ptr %17, null
  br i1 %tobool.not.i74.i, label %if.end.i75.i.da9052_reg_read.exit81.i_crit_edge, label %if.then2.i78.i

if.end.i75.i.da9052_reg_read.exit81.i_crit_edge:  ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit81.i

if.then2.i78.i:                                   ; preds = %if.end.i75.i
  %call4.i76.i = call i32 %17(ptr noundef %12, i8 noundef zeroext 108) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i76.i)
  %cmp5.i77.i = icmp slt i32 %call4.i76.i, 0
  br i1 %cmp5.i77.i, label %if.then2.i78.i.da9052_reg_read.exit81.thread.i_crit_edge, label %if.then2.i78.i.da9052_reg_read.exit81.i_crit_edge

if.then2.i78.i.da9052_reg_read.exit81.i_crit_edge: ; preds = %if.then2.i78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit81.i

if.then2.i78.i.da9052_reg_read.exit81.thread.i_crit_edge: ; preds = %if.then2.i78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit81.thread.i

da9052_reg_read.exit81.thread.i:                  ; preds = %if.then2.i78.i.da9052_reg_read.exit81.thread.i_crit_edge, %if.end.i.da9052_reg_read.exit81.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i69.i) #7
  br label %da9052_ts_read.exit

da9052_reg_read.exit81.i:                         ; preds = %if.then2.i78.i.da9052_reg_read.exit81.i_crit_edge, %if.end.i75.i.da9052_reg_read.exit81.i_crit_edge
  %18 = ptrtoint ptr %val.i69.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i69.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i69.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp3.i = icmp slt i32 %19, 0
  br i1 %cmp3.i, label %da9052_reg_read.exit81.i.da9052_ts_read.exit_crit_edge, label %if.end6.i

da9052_reg_read.exit81.i.da9052_ts_read.exit_crit_edge: ; preds = %da9052_reg_read.exit81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_ts_read.exit

if.end6.i:                                        ; preds = %da9052_reg_read.exit81.i
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i82.i) #7
  %22 = ptrtoint ptr %val.i82.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val.i82.i, align 4, !annotation !49
  %regmap.i83.i = getelementptr inbounds %struct.da9052, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %regmap.i83.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i83.i, align 4
  %call.i84.i = call i32 @regmap_read(ptr noundef %24, i32 noundef 110, ptr noundef nonnull %val.i82.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84.i)
  %cmp.i85.i = icmp slt i32 %call.i84.i, 0
  br i1 %cmp.i85.i, label %if.end6.i.da9052_reg_read.exit94.thread.i_crit_edge, label %if.end.i88.i

if.end6.i.da9052_reg_read.exit94.thread.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit94.thread.i

if.end.i88.i:                                     ; preds = %if.end6.i
  %fix_io.i86.i = getelementptr inbounds %struct.da9052, ptr %21, i32 0, i32 8
  %25 = ptrtoint ptr %fix_io.i86.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fix_io.i86.i, align 4
  %tobool.not.i87.i = icmp eq ptr %26, null
  br i1 %tobool.not.i87.i, label %if.end.i88.i.da9052_reg_read.exit94.i_crit_edge, label %if.then2.i91.i

if.end.i88.i.da9052_reg_read.exit94.i_crit_edge:  ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit94.i

if.then2.i91.i:                                   ; preds = %if.end.i88.i
  %call4.i89.i = call i32 %26(ptr noundef %21, i8 noundef zeroext 110) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i89.i)
  %cmp5.i90.i = icmp slt i32 %call4.i89.i, 0
  br i1 %cmp5.i90.i, label %if.then2.i91.i.da9052_reg_read.exit94.thread.i_crit_edge, label %if.then2.i91.i.da9052_reg_read.exit94.i_crit_edge

if.then2.i91.i.da9052_reg_read.exit94.i_crit_edge: ; preds = %if.then2.i91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit94.i

if.then2.i91.i.da9052_reg_read.exit94.thread.i_crit_edge: ; preds = %if.then2.i91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit94.thread.i

da9052_reg_read.exit94.thread.i:                  ; preds = %if.then2.i91.i.da9052_reg_read.exit94.thread.i_crit_edge, %if.end6.i.da9052_reg_read.exit94.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i82.i) #7
  br label %da9052_ts_read.exit

da9052_reg_read.exit94.i:                         ; preds = %if.then2.i91.i.da9052_reg_read.exit94.i_crit_edge, %if.end.i88.i.da9052_reg_read.exit94.i_crit_edge
  %27 = ptrtoint ptr %val.i82.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i82.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i82.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp10.i = icmp slt i32 %28, 0
  br i1 %cmp10.i, label %da9052_reg_read.exit94.i.da9052_ts_read.exit_crit_edge, label %if.end13.i

da9052_reg_read.exit94.i.da9052_ts_read.exit_crit_edge: ; preds = %da9052_reg_read.exit94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_ts_read.exit

if.end13.i:                                       ; preds = %da9052_reg_read.exit94.i
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i95.i) #7
  %31 = ptrtoint ptr %val.i95.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %val.i95.i, align 4, !annotation !49
  %regmap.i96.i = getelementptr inbounds %struct.da9052, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %regmap.i96.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i96.i, align 4
  %call.i97.i = call i32 @regmap_read(ptr noundef %33, i32 noundef 109, ptr noundef nonnull %val.i95.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %cmp.i98.i = icmp slt i32 %call.i97.i, 0
  br i1 %cmp.i98.i, label %if.end13.i.da9052_reg_read.exit107.thread.i_crit_edge, label %if.end.i101.i

if.end13.i.da9052_reg_read.exit107.thread.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit107.thread.i

if.end.i101.i:                                    ; preds = %if.end13.i
  %fix_io.i99.i = getelementptr inbounds %struct.da9052, ptr %30, i32 0, i32 8
  %34 = ptrtoint ptr %fix_io.i99.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fix_io.i99.i, align 4
  %tobool.not.i100.i = icmp eq ptr %35, null
  br i1 %tobool.not.i100.i, label %if.end.i101.i.da9052_reg_read.exit107.i_crit_edge, label %if.then2.i104.i

if.end.i101.i.da9052_reg_read.exit107.i_crit_edge: ; preds = %if.end.i101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit107.i

if.then2.i104.i:                                  ; preds = %if.end.i101.i
  %call4.i102.i = call i32 %35(ptr noundef %30, i8 noundef zeroext 109) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i102.i)
  %cmp5.i103.i = icmp slt i32 %call4.i102.i, 0
  br i1 %cmp5.i103.i, label %if.then2.i104.i.da9052_reg_read.exit107.thread.i_crit_edge, label %if.then2.i104.i.da9052_reg_read.exit107.i_crit_edge

if.then2.i104.i.da9052_reg_read.exit107.i_crit_edge: ; preds = %if.then2.i104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit107.i

if.then2.i104.i.da9052_reg_read.exit107.thread.i_crit_edge: ; preds = %if.then2.i104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_reg_read.exit107.thread.i

da9052_reg_read.exit107.thread.i:                 ; preds = %if.then2.i104.i.da9052_reg_read.exit107.thread.i_crit_edge, %if.end13.i.da9052_reg_read.exit107.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i95.i) #7
  br label %da9052_ts_read.exit

da9052_reg_read.exit107.i:                        ; preds = %if.then2.i104.i.da9052_reg_read.exit107.i_crit_edge, %if.end.i101.i.da9052_reg_read.exit107.i_crit_edge
  %36 = ptrtoint ptr %val.i95.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i95.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i95.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp17.i = icmp slt i32 %37, 0
  br i1 %cmp17.i, label %da9052_reg_read.exit107.i.da9052_ts_read.exit_crit_edge, label %if.end20.i

da9052_reg_read.exit107.i.da9052_ts_read.exit_crit_edge: ; preds = %da9052_reg_read.exit107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %da9052_ts_read.exit

if.end20.i:                                       ; preds = %da9052_reg_read.exit107.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv22.i = shl i32 %10, 2
  %and.i = and i32 %conv22.i, 1020
  %and24.i = and i32 %37, 3
  %or.i = or i32 %and24.i, %and.i
  %conv26.i = shl i32 %19, 2
  %and28.i = and i32 %conv26.i, 1020
  %and30.i = lshr i32 %37, 2
  %38 = and i32 %and30.i, 3
  %or31.i = or i32 %38, %and28.i
  %conv33.i = shl i32 %28, 2
  %and35.i = and i32 %conv33.i, 1020
  %and37.i = lshr i32 %37, 4
  %39 = and i32 %and37.i, 3
  %or39.i = or i32 %39, %and35.i
  call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 330, i32 noundef 1) #7
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %or.i) #7
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef %or31.i) #7
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 24, i32 noundef %or39.i) #7
  call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %da9052_ts_read.exit

da9052_ts_read.exit:                              ; preds = %if.end20.i, %da9052_reg_read.exit107.i.da9052_ts_read.exit_crit_edge, %da9052_reg_read.exit107.thread.i, %da9052_reg_read.exit94.i.da9052_ts_read.exit_crit_edge, %da9052_reg_read.exit94.thread.i, %da9052_reg_read.exit81.i.da9052_ts_read.exit_crit_edge, %da9052_reg_read.exit81.thread.i, %da9052_reg_read.exit.i.da9052_ts_read.exit_crit_edge, %da9052_reg_read.exit.thread.i
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9052_disable_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @da9052_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9052_enable_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9052_disable_irq_nosync(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_da9052_tsi__227_337_da9052_tsi_driver_init6, !1, !"__initcall__kmod_da9052_tsi__227_337_da9052_tsi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/da9052_tsi.c", i32 337, i32 1}
!2 = !{ptr @__exitcall_da9052_tsi_driver_exit, !1, !"__exitcall_da9052_tsi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/da9052_tsi.c", i32 339, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/da9052_tsi.c", i32 340, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/da9052_tsi.c", i32 341, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/da9052_tsi.c", i32 342, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/da9052_tsi.c", i32 333, i32 11}
!14 = !{ptr @da9052_tsi_driver, !15, !"da9052_tsi_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/da9052_tsi.c", i32 329, i32 31}
!16 = !{ptr @da9052_ts_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/da9052_tsi.c", i32 245, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @da9052_ts_probe.__key.2, !17, !"__key", i1 false, i1 false}
!20 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/touchscreen/da9052_tsi.c", i32 250, i32 20}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/touchscreen/da9052_tsi.c", i32 272, i32 5}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/da9052_tsi.c", i32 274, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @da9052_ts_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @da9052_ts_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/da9052_tsi.c", i32 280, i32 5}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/da9052_tsi.c", i32 282, i32 3}
!37 = !{ptr @da9052_ts_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @da9052_ts_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i8 0, i8 2}
!49 = !{!"auto-init"}
!50 = !{i64 2153928730}
!51 = !{i64 2153928880}
