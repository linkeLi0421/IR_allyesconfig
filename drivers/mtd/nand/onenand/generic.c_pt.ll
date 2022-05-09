; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/onenand/generic.c_pt.bc'
source_filename = "../drivers/mtd/nand/onenand/generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.onenand_info = type { %struct.mtd_info, %struct.onenand_chip }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.onenand_chip = type { ptr, i32, [2 x i32], [2 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.onenand_bufferram], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, %struct.spinlock, %struct.wait_queue_head, i32, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.onenand_bufferram = type { i32 }
%struct.onenand_platform_data = type { ptr, ptr, ptr, i32 }

@__initcall__kmod_generic__185_107_generic_onenand_driver_init6 = internal global ptr @generic_onenand_driver_init, section ".initcall6.init", align 4
@generic_onenand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @generic_onenand_probe, ptr @generic_onenand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_generic_onenand_driver_exit = internal global ptr @generic_onenand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file186 = internal constant [46 x i8] c"generic.file=drivers/mtd/nand/onenand/generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [20 x i8] c"generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author188 = internal constant [57 x i8] c"generic.author=Kyungmin Park <kyungmin.park@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [67 x i8] c"generic.description=Glue layer for OneNAND flash on generic boards\00", section ".modinfo", align 1
@__UNIQUE_ID_alias190 = internal constant [37 x i8] c"generic.alias=platform:onenand-flash\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"onenand-flash\00", [18 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"generic_onenand_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 99, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [38 x i8] c"../drivers/mtd/nand/onenand/generic.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 101, i32 12 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias190, ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_generic_onenand_driver_exit, ptr @__initcall__kmod_generic__185_107_generic_onenand_driver_init6, ptr @generic_onenand_driver_exit, ptr @generic_onenand_driver, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_onenand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_onenand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @generic_onenand_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @generic_onenand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @generic_onenand_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_onenand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %sub.i = add i32 %5, 1
  %add.i = sub i32 %sub.i, %7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1744) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %if.end.dev_name.exit_crit_edge ]
  %call5 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %add.i, ptr noundef %retval.0.i, i32 noundef 0) #4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %dev_name.exit.out_free_info_crit_edge, label %if.end8

dev_name.exit.out_free_info_crit_edge:            ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_info

if.end8:                                          ; preds = %dev_name.exit
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  %call10 = tail call ptr @ioremap(i32 noundef %16, i32 noundef %add.i) #4
  %onenand = getelementptr inbounds %struct.onenand_info, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %onenand to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call10, ptr %onenand, align 8
  %tobool13.not = icmp eq ptr %call10, null
  br i1 %tobool13.not, label %if.end8.out_release_mem_region_crit_edge, label %if.end15

if.end8.out_release_mem_region_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_release_mem_region

if.end15:                                         ; preds = %if.end8
  %tobool16.not = icmp eq ptr %1, null
  br i1 %tobool16.not, label %if.end15.cond.end_crit_edge, label %cond.true

if.end15.cond.end_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end15.cond.end_crit_edge
  %cond = phi ptr [ %19, %cond.true ], [ null, %if.end15.cond.end_crit_edge ]
  %mmcontrol18 = getelementptr inbounds %struct.onenand_info, ptr %call7.i.i, i32 0, i32 1, i32 25
  %20 = ptrtoint ptr %mmcontrol18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cond, ptr %mmcontrol18, align 8
  %call19 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #4
  %irq = getelementptr inbounds %struct.onenand_info, ptr %call7.i.i, i32 0, i32 1, i32 32
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call19, ptr %irq, align 8
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 56, i32 1
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %parent, align 8
  %priv = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 54
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %onenand, ptr %priv, align 8
  %call26 = tail call i32 @onenand_scan(ptr noundef nonnull %call7.i.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %onenand to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %onenand, align 8
  tail call void @iounmap(ptr noundef %25) #4
  br label %out_release_mem_region

if.end29:                                         ; preds = %cond.end
  br i1 %tobool16.not, label %if.end29.cond.end39_crit_edge, label %cond.true37

if.end29.cond.end39_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end39

cond.true37:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %parts = getelementptr inbounds %struct.onenand_platform_data, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parts, align 4
  %nr_parts = getelementptr inbounds %struct.onenand_platform_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %nr_parts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_parts, align 4
  br label %cond.end39

cond.end39:                                       ; preds = %cond.true37, %if.end29.cond.end39_crit_edge
  %cond3577 = phi ptr [ %27, %cond.true37 ], [ null, %if.end29.cond.end39_crit_edge ]
  %cond40 = phi i32 [ %29, %cond.true37 ], [ 0, %if.end29.cond.end39_crit_edge ]
  %call41 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call7.i.i, ptr noundef null, ptr noundef null, ptr noundef %cond3577, i32 noundef %cond40) #4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

out_release_mem_region:                           ; preds = %if.then28, %if.end8.out_release_mem_region_crit_edge
  %err.0 = phi i32 [ -6, %if.then28 ], [ -12, %if.end8.out_release_mem_region_crit_edge ]
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %3, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %32, i32 noundef %add.i) #4
  br label %out_free_info

out_free_info:                                    ; preds = %out_release_mem_region, %dev_name.exit.out_free_info_crit_edge
  %err.1 = phi i32 [ %err.0, %out_release_mem_region ], [ -16, %dev_name.exit.out_free_info_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %out_free_info, %cond.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_free_info ], [ 0, %cond.end39 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_onenand_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = add i32 %5, 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %add.i = sub i32 %sub.i, %7
  tail call void @onenand_release(ptr noundef nonnull %1) #4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %9, i32 noundef %add.i) #4
  %onenand = getelementptr inbounds %struct.onenand_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %onenand to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %onenand, align 8
  tail call void @iounmap(ptr noundef %11) #4
  tail call void @kfree(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @onenand_scan(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @onenand_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_generic__185_107_generic_onenand_driver_init6, !1, !"__initcall__kmod_generic__185_107_generic_onenand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/onenand/generic.c", i32 107, i32 1}
!2 = !{ptr @__exitcall_generic_onenand_driver_exit, !1, !"__exitcall_generic_onenand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file186, !4, !"__UNIQUE_ID_file186", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/onenand/generic.c", i32 109, i32 1}
!5 = !{ptr @__UNIQUE_ID_license187, !4, !"__UNIQUE_ID_license187", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author188, !7, !"__UNIQUE_ID_author188", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/onenand/generic.c", i32 110, i32 1}
!8 = !{ptr @__UNIQUE_ID_description189, !9, !"__UNIQUE_ID_description189", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/onenand/generic.c", i32 111, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias190, !11, !"__UNIQUE_ID_alias190", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/onenand/generic.c", i32 112, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/onenand/generic.c", i32 101, i32 12}
!14 = !{ptr @generic_onenand_driver, !15, !"generic_onenand_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/onenand/generic.c", i32 99, i32 31}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
