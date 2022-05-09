; ModuleID = '/llk/IR_all_yes/drivers/memory/samsung/exynos-srom.c_pt.bc'
source_filename = "../drivers/memory/samsung/exynos-srom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.exynos_srom = type { ptr, ptr, ptr }
%struct.exynos_srom_reg_dump = type { i32, i32 }

@__initcall__kmod_exynos_srom__183_212_exynos_srom_driver_init6 = internal global ptr @exynos_srom_driver_init, section ".initcall6.init", align 4
@exynos_srom_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_srom_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @of_exynos_srom_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_srom_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exynos-srom\00", [20 x i8] zeroinitializer }, align 32
@of_exynos_srom_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-srom\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@exynos_srom_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_srom_suspend, ptr @exynos_srom_resume, ptr @exynos_srom_suspend, ptr @exynos_srom_resume, ptr @exynos_srom_suspend, ptr @exynos_srom_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@exynos_srom_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 114, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not find device info\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exynos_srom_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/memory/samsung/exynos-srom.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_srom_probe._entry_ptr = internal global ptr @exynos_srom_probe._entry, section ".printk_index", align 4
@exynos_srom_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 126, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"iomap of exynos srom controller failed\0A\00", [56 x i8] zeroinitializer }, align 32
@exynos_srom_probe._entry_ptr.8 = internal global ptr @exynos_srom_probe._entry.6, section ".printk_index", align 4
@exynos_srom_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 143, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Could not decode bank configuration for %pOFn\0A\00", [49 x i8] zeroinitializer }, align 32
@exynos_srom_probe._entry_ptr.11 = internal global ptr @exynos_srom_probe._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg-io-width\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung,srom-page-mode\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung,srom-timing\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"exynos_srom_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 203, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 206, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"of_exynos_srom_ids\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 194, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"exynos_srom_pm_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 201, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 114, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 126, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 141, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 74, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 76, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 78, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [40 x i8] c"../drivers/memory/samsung/exynos-srom.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 80, i32 37 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__initcall__kmod_exynos_srom__183_212_exynos_srom_driver_init6, ptr @exynos_srom_probe._entry, ptr @exynos_srom_probe._entry.6, ptr @exynos_srom_probe._entry.9, ptr @exynos_srom_probe._entry_ptr, ptr @exynos_srom_probe._entry_ptr.11, ptr @exynos_srom_probe._entry_ptr.8, ptr @exynos_srom_driver, ptr @.str, ptr @of_exynos_srom_ids, ptr @exynos_srom_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_srom_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_exynos_srom_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_srom_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_srom_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_srom_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_srom_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_srom_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_srom_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_srom_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %bank.i = alloca i32, align 4
  %width.i = alloca i32, align 4
  %timing.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %call8 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #7
  %reg_base = getelementptr inbounds %struct.exynos_srom, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %reg_base, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 40) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %reg_offset64 = getelementptr inbounds %struct.exynos_srom, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %reg_offset64 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %reg_offset64, align 4
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base, align 4
  tail call void @iounmap(ptr noundef %8) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %9 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %call7.i.i.i.i, align 8
  %arrayidx1.1.i = getelementptr %struct.exynos_srom_reg_dump, ptr %call7.i.i.i.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %arrayidx1.1.i, align 8
  %arrayidx1.2.i = getelementptr %struct.exynos_srom_reg_dump, ptr %call7.i.i.i.i, i32 2
  %11 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %arrayidx1.2.i, align 8
  %arrayidx1.3.i = getelementptr %struct.exynos_srom_reg_dump, ptr %call7.i.i.i.i, i32 3
  %12 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 12, ptr %arrayidx1.3.i, align 8
  %arrayidx1.4.i = getelementptr %struct.exynos_srom_reg_dump, ptr %call7.i.i.i.i, i32 4
  %13 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16, ptr %arrayidx1.4.i, align 8
  %reg_offset = getelementptr inbounds %struct.exynos_srom, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %reg_offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i.i, ptr %reg_offset, align 4
  %call23 = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #7
  %cmp.not67 = icmp eq ptr %call23, null
  br i1 %cmp.not67, label %if.end22.if.end34_crit_edge, label %for.body.lr.ph

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

for.body.lr.ph:                                   ; preds = %if.end22
  %15 = getelementptr inbounds [6 x i32], ptr %timing.i, i32 0, i32 1
  %16 = getelementptr inbounds [6 x i32], ptr %timing.i, i32 0, i32 2
  %17 = getelementptr inbounds [6 x i32], ptr %timing.i, i32 0, i32 3
  %18 = getelementptr inbounds [6 x i32], ptr %timing.i, i32 0, i32 4
  %19 = getelementptr inbounds [6 x i32], ptr %timing.i, i32 0, i32 5
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %for.body.lr.ph
  %bad_bank_config.0.off071.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %for.body.lr.ph ]
  %child.068.ph = phi ptr [ %call3173, %for.inc.thread.for.body.outer_crit_edge ], [ %call23, %for.body.lr.ph ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %child.068 = phi ptr [ %call31, %for.inc.for.body_crit_edge ], [ %child.068.ph, %for.body.outer ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank.i) #7
  %20 = ptrtoint ptr %bank.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %bank.i, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %width.i) #7
  %21 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %width.i, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %timing.i) #7
  %22 = call ptr @memset(ptr %timing.i, i32 255, i32 24)
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.068, ptr noundef nonnull @.str.12, ptr noundef nonnull %bank.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i63 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i63, label %if.end.i, label %for.body.for.inc.thread_crit_edge

for.body.for.inc.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.thread

if.end.i:                                         ; preds = %for.body
  %call.i.i52.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.068, ptr noundef nonnull @.str.13, ptr noundef nonnull %width.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i52.i)
  %tobool2.not.i = icmp sgt i32 %call.i.i52.i, -1
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %width.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %child.068, ptr noundef nonnull @.str.14, ptr noundef null) #7
  %call.i53.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.068, ptr noundef nonnull @.str.15, ptr noundef nonnull %timing.i, i32 noundef 6, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i53.i)
  %tobool9.not.i = icmp sgt i32 %call.i53.i, -1
  br i1 %tobool9.not.i, label %for.inc, label %if.end4.i.for.inc.thread_crit_edge

if.end4.i.for.inc.thread_crit_edge:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.thread

for.inc:                                          ; preds = %if.end4.i
  %tobool.i.not.i = icmp ne ptr %call.i.i, null
  %spec.select.i = zext i1 %tobool.i.not.i to i32
  %24 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bank.i, align 4
  %mul.i = shl i32 %25, 2
  store i32 %mul.i, ptr %bank.i, align 4
  %26 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i = icmp eq i32 %27, 2
  %spec.select51.i = select i1 %cmp.i, i32 9, i32 8
  %28 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base, align 4
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !46
  %31 = call i32 @llvm.bswap.i32(i32 %30) #7
  %32 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bank.i, align 4
  %shl.i = shl i32 15, %33
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %31, %neg.i
  %shl15.i = shl i32 %spec.select51.i, %33
  %or16.i = or i32 %and.i, %shl15.i
  %34 = call i32 @llvm.bswap.i32(i32 %or16.i) #7
  %35 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #7, !srcloc !47
  %37 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %timing.i, align 4
  %shl19.i = shl i32 %38, 4
  %or20.i = or i32 %shl19.i, %spec.select.i
  %39 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %15, align 4
  %shl22.i = shl i32 %40, 8
  %or23.i = or i32 %or20.i, %shl22.i
  %41 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %16, align 4
  %shl25.i = shl i32 %42, 12
  %or26.i = or i32 %or23.i, %shl25.i
  %43 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %17, align 4
  %shl28.i = shl i32 %44, 16
  %or29.i = or i32 %or26.i, %shl28.i
  %45 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %18, align 4
  %shl31.i = shl i32 %46, 24
  %or32.i = or i32 %or29.i, %shl31.i
  %47 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %19, align 4
  %shl34.i = shl i32 %48, 28
  %or35.i = or i32 %or32.i, %shl34.i
  %49 = call i32 @llvm.bswap.i32(i32 %or35.i) #7
  %50 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_base, align 4
  %add.ptr37.i = getelementptr i8, ptr %51, i32 4
  %52 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bank.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %add.ptr37.i, i32 %53
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %49) #7, !srcloc !47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %timing.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %width.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank.i) #7
  %call31 = call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %child.068) #7
  %cmp.not = icmp eq ptr %call31, null
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.thread:                                   ; preds = %if.end4.i.for.inc.thread_crit_edge, %for.body.for.inc.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %timing.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %width.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull %child.068) #10
  %call3173 = call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %child.068) #7
  %cmp.not74 = icmp eq ptr %call3173, null
  br i1 %cmp.not74, label %for.inc.thread.cleanup_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.outer

for.inc.thread.cleanup_crit_edge:                 ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.inc
  br i1 %bad_bank_config.0.off071.ph, label %for.end.cleanup_crit_edge, label %for.end.if.end34_crit_edge

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %for.end.if.end34_crit_edge, %if.end22.if.end34_crit_edge
  %call35 = call i32 @of_platform_populate(ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %dev1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %for.end.cleanup_crit_edge, %for.inc.thread.cleanup_crit_edge, %if.then20, %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call35, %if.end34 ], [ -12, %if.then20 ], [ -12, %do.end14 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.inc.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_srom_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg_base = getelementptr inbounds %struct.exynos_srom, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %reg_offset = getelementptr inbounds %struct.exynos_srom, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offset, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !46
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %value.i = getelementptr inbounds %struct.exynos_srom_reg_dump, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value.i, align 4
  %incdec.ptr.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 1
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %3, i32 %12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #7, !srcloc !46
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %value.1.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 1, i32 1
  %15 = ptrtoint ptr %value.1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %value.1.i, align 4
  %incdec.ptr.1.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 2
  %16 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.1.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %3, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i) #7, !srcloc !46
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %value.2.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 2, i32 1
  %20 = ptrtoint ptr %value.2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %value.2.i, align 4
  %incdec.ptr.2.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 3
  %21 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr.2.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %3, i32 %22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i) #7, !srcloc !46
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %value.3.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 3, i32 1
  %25 = ptrtoint ptr %value.3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %value.3.i, align 4
  %incdec.ptr.3.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 4
  %26 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr.3.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %3, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i) #7, !srcloc !46
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %value.4.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 4, i32 1
  %30 = ptrtoint ptr %value.4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %value.4.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_srom_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg_base = getelementptr inbounds %struct.exynos_srom, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %reg_offset = getelementptr inbounds %struct.exynos_srom, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offset, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %value.i = getelementptr inbounds %struct.exynos_srom_reg_dump, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #7, !srcloc !47
  %incdec.ptr.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %value.1.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 1, i32 1
  %11 = ptrtoint ptr %value.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value.1.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %3, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 %13) #7, !srcloc !47
  %incdec.ptr.1.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %value.2.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 2, i32 1
  %16 = ptrtoint ptr %value.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value.2.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %19 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr.1.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %3, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i, i32 %18) #7, !srcloc !47
  %incdec.ptr.2.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %value.3.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 3, i32 1
  %21 = ptrtoint ptr %value.3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value.3.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  %24 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %incdec.ptr.2.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %3, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i, i32 %23) #7, !srcloc !47
  %incdec.ptr.3.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %value.4.i = getelementptr %struct.exynos_srom_reg_dump, ptr %5, i32 4, i32 1
  %26 = ptrtoint ptr %value.4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value.4.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  %29 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr.3.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %3, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4.i, i32 %28) #7, !srcloc !47
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_exynos_srom__183_212_exynos_srom_driver_init6, !1, !"__initcall__kmod_exynos_srom__183_212_exynos_srom_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/memory/samsung/exynos-srom.c", i32 212, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/memory/samsung/exynos-srom.c", i32 206, i32 11}
!4 = !{ptr @exynos_srom_driver, !5, !"exynos_srom_driver", i1 false, i1 false}
!5 = !{!"../drivers/memory/samsung/exynos-srom.c", i32 203, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/memory/samsung/exynos-srom.c", i32 114, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @exynos_srom_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @exynos_srom_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/memory/samsung/exynos-srom.c", i32 126, i32 3}
!16 = !{ptr @exynos_srom_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @exynos_srom_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/memory/samsung/exynos-srom.c", i32 141, i32 4}
!20 = !{ptr @exynos_srom_probe._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @exynos_srom_probe._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"exynos_srom_offsets", i1 false, i1 false}
!23 = !{!"../drivers/memory/samsung/exynos-srom.c", i32 19, i32 28}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/memory/samsung/exynos-srom.c", i32 74, i32 31}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/memory/samsung/exynos-srom.c", i32 76, i32 31}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/memory/samsung/exynos-srom.c", i32 78, i32 32}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/memory/samsung/exynos-srom.c", i32 80, i32 37}
!32 = !{ptr @of_exynos_srom_ids, !33, !"of_exynos_srom_ids", i1 false, i1 false}
!33 = !{!"../drivers/memory/samsung/exynos-srom.c", i32 194, i32 34}
!34 = !{ptr @exynos_srom_pm_ops, !35, !"exynos_srom_pm_ops", i1 false, i1 false}
!35 = !{!"../drivers/memory/samsung/exynos-srom.c", i32 201, i32 8}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i64 688908}
!47 = !{i64 688490}
!48 = !{i64 2152906279}
!49 = !{i64 2152906499}
