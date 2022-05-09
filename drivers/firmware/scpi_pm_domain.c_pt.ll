; ModuleID = '/llk/IR_all_yes/drivers/firmware/scpi_pm_domain.c_pt.bc'
source_filename = "../drivers/firmware/scpi_pm_domain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.scpi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scpi_pm_domain = type { %struct.generic_pm_domain, ptr, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.genpd_onecell_data = type { ptr, i32, ptr }

@__initcall__kmod_scpi_pm_domain__170_152_scpi_power_domain_driver_init6 = internal global ptr @scpi_power_domain_driver_init, section ".initcall6.init", align 4
@scpi_power_domain_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @scpi_pm_domain_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @scpi_power_domain_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_scpi_power_domain_driver_exit = internal global ptr @scpi_power_domain_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [58 x i8] c"scpi_pm_domain.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [56 x i8] c"scpi_pm_domain.description=ARM SCPI power domain driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [52 x i8] c"scpi_pm_domain.file=drivers/firmware/scpi_pm_domain\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [30 x i8] c"scpi_pm_domain.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scpi_power_domain\00", [46 x i8] zeroinitializer }, align 32
@scpi_power_domain_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,scpi-power-domains\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@scpi_pm_domain_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 79, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device tree node not found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scpi_pm_domain_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/firmware/scpi_pm_domain.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scpi_pm_domain_probe._entry_ptr = internal global ptr @scpi_pm_domain_probe._entry, section ".printk_index", align 4
@scpi_pm_domain_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 85, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"power domains not supported in the firmware\0A\00", [51 x i8] zeroinitializer }, align 32
@scpi_pm_domain_probe._entry_ptr.8 = internal global ptr @scpi_pm_domain_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"num-domains\00", [20 x i8] zeroinitializer }, align 32
@scpi_pm_domain_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 91, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"number of domains not found\0A\00", [35 x i8] zeroinitializer }, align 32
@scpi_pm_domain_probe._entry_ptr.12 = internal global ptr @scpi_pm_domain_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%pOFn.%d\00", [23 x i8] zeroinitializer }, align 32
@scpi_pm_domain_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 116, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate genpd name:%pOFn.%d\0A\00", [56 x i8] zeroinitializer }, align 32
@scpi_pm_domain_probe._entry_ptr.16 = internal global ptr @scpi_pm_domain_probe._entry.14, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [25 x i8] c"scpi_power_domain_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 145, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 147, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"scpi_power_domain_ids\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 139, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 79, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 85, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 89, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 91, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 113, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [37 x i8] c"../drivers/firmware/scpi_pm_domain.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 115, i32 4 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_scpi_power_domain_driver_exit, ptr @__initcall__kmod_scpi_pm_domain__170_152_scpi_power_domain_driver_init6, ptr @scpi_pm_domain_probe._entry, ptr @scpi_pm_domain_probe._entry.10, ptr @scpi_pm_domain_probe._entry.14, ptr @scpi_pm_domain_probe._entry.6, ptr @scpi_pm_domain_probe._entry_ptr, ptr @scpi_pm_domain_probe._entry_ptr.12, ptr @scpi_pm_domain_probe._entry_ptr.16, ptr @scpi_pm_domain_probe._entry_ptr.8, ptr @scpi_power_domain_driver_exit, ptr @scpi_power_domain_driver, ptr @.str, ptr @scpi_power_domain_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_power_domain_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_power_domain_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_pm_domain_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_pm_domain_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_pm_domain_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_pm_domain_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_power_domain_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @scpi_power_domain_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scpi_power_domain_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @scpi_power_domain_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_pm_domain_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_domains = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_domains) #6
  %2 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %num_domains, align 4, !annotation !49
  %call = tail call ptr @get_scpi_ops() #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %device_set_power_state = getelementptr inbounds %struct.scpi_ops, ptr %call, i32 0, i32 14
  %3 = ptrtoint ptr %device_set_power_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device_set_power_state, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %if.end4.do.end10_crit_edge, label %lor.lhs.false

if.end4.do.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

lor.lhs.false:                                    ; preds = %if.end4
  %device_get_power_state = getelementptr inbounds %struct.scpi_ops, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %device_get_power_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_get_power_state, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %lor.lhs.false.do.end10_crit_edge, label %if.end11

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.end10:                                         ; preds = %lor.lhs.false.do.end10_crit_edge, %if.end4.do.end10_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %num_domains, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool13.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %7 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_domains, align 4
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 1360) #6
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end18.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !50

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end18
  %11 = extractvalue { i32, i1 } %9, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %11, i32 noundef 3520) #6
  %tobool20.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool20.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end22

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %devm_kcalloc.exit
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #6
  %tobool24.not = icmp eq ptr %call.i, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %12 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_domains, align 4
  %14 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4) #6
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %if.end26.cleanup_crit_edge, label %devm_kcalloc.exit93, !prof !50

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

devm_kcalloc.exit93:                              ; preds = %if.end26
  %16 = extractvalue { i32, i1 } %14, 0
  %call5.i.i90 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %16, i32 noundef 3520) #6
  %tobool28.not = icmp eq ptr %call5.i.i90, null
  br i1 %tobool28.not, label %devm_kcalloc.exit93.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit93.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit93
  %17 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp98 = icmp sgt i32 %18, 0
  br i1 %cmp98, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0101 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %scpi_pd.099 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %call5.i.i, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %call5.i.i90, i32 %i.0101
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %scpi_pd.099, ptr %arrayidx, align 4
  %domain = getelementptr inbounds %struct.scpi_pm_domain, ptr %scpi_pd.099, i32 0, i32 2
  %20 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %i.0101, ptr %domain, align 4
  %ops = getelementptr inbounds %struct.scpi_pm_domain, ptr %scpi_pd.099, i32 0, i32 1
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %ops, align 8
  %call31 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.13, ptr noundef nonnull %1, i32 noundef %i.0101) #6
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %scpi_pd.099, i32 0, i32 10
  %22 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call31, ptr %name, align 8
  %tobool35.not = icmp eq ptr %call31, null
  br i1 %tobool35.not, label %do.end39, label %if.end40

do.end39:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull %1, i32 noundef %i.0101) #9
  br label %for.inc

if.end40:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %power_off = getelementptr inbounds %struct.generic_pm_domain, ptr %scpi_pd.099, i32 0, i32 18
  %23 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @scpi_pd_power_off, ptr %power_off, align 8
  %power_on = getelementptr inbounds %struct.generic_pm_domain, ptr %scpi_pd.099, i32 0, i32 19
  %24 = ptrtoint ptr %power_on to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @scpi_pd_power_on, ptr %power_on, align 4
  %call44 = call i32 @pm_genpd_init(ptr noundef %scpi_pd.099, ptr noundef null, i1 noundef zeroext true) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end40, %do.end39
  %inc = add nuw nsw i32 %i.0101, 1
  %incdec.ptr = getelementptr %struct.scpi_pm_domain, ptr %scpi_pd.099, i32 1
  %25 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_domains, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %18, %for.cond.preheader.for.end_crit_edge ], [ %26, %for.inc.for.end_crit_edge ]
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i.i90, ptr %call.i, align 4
  %num_domains46 = getelementptr inbounds %struct.genpd_onecell_data, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %num_domains46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.lcssa, ptr %num_domains46, align 4
  %call47 = call i32 @of_genpd_add_provider_onecell(ptr noundef nonnull %1, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %devm_kcalloc.exit93.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end17, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end17 ], [ 0, %for.end ], [ -19, %do.end10 ], [ -19, %do.end ], [ -517, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit93.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ], [ -12, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_domains) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_scpi_ops() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_pd_power_off(ptr nocapture noundef readonly %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.scpi_pm_domain, ptr %domain, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 8
  %device_set_power_state.i = getelementptr inbounds %struct.scpi_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %device_set_power_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_set_power_state.i, align 4
  %domain.i = getelementptr inbounds %struct.scpi_pm_domain, ptr %domain, i32 0, i32 2
  %4 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %domain.i, align 4
  %conv.i = trunc i32 %5 to i16
  %call.i = tail call i32 %3(i16 noundef zeroext %conv.i, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %entry.scpi_pd_power.exit_crit_edge

entry.scpi_pd_power.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %scpi_pd_power.exit

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 8
  %device_get_power_state.i = getelementptr inbounds %struct.scpi_ops, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %device_get_power_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_get_power_state.i, align 4
  %10 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %domain.i, align 4
  %conv7.i = trunc i32 %11 to i16
  %call8.i = tail call i32 %9(i16 noundef zeroext %conv7.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call8.i)
  %cmp.i = icmp ne i32 %call8.i, 3
  %lnot.ext.i = zext i1 %cmp.i to i32
  br label %scpi_pd_power.exit

scpi_pd_power.exit:                               ; preds = %if.end4.i, %entry.scpi_pd_power.exit_crit_edge
  %retval.0.i = phi i32 [ %lnot.ext.i, %if.end4.i ], [ %call.i, %entry.scpi_pd_power.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_pd_power_on(ptr nocapture noundef readonly %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.scpi_pm_domain, ptr %domain, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 8
  %device_set_power_state.i = getelementptr inbounds %struct.scpi_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %device_set_power_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_set_power_state.i, align 4
  %domain.i = getelementptr inbounds %struct.scpi_pm_domain, ptr %domain, i32 0, i32 2
  %4 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %domain.i, align 4
  %conv.i = trunc i32 %5 to i16
  %call.i = tail call i32 %3(i16 noundef zeroext %conv.i, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %entry.scpi_pd_power.exit_crit_edge

entry.scpi_pd_power.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %scpi_pd_power.exit

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 8
  %device_get_power_state.i = getelementptr inbounds %struct.scpi_ops, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %device_get_power_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_get_power_state.i, align 4
  %10 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %domain.i, align 4
  %conv7.i = trunc i32 %11 to i16
  %call8.i = tail call i32 %9(i16 noundef zeroext %conv7.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp ne i32 %call8.i, 0
  %lnot.ext.i = zext i1 %cmp.i to i32
  br label %scpi_pd_power.exit

scpi_pd_power.exit:                               ; preds = %if.end4.i, %entry.scpi_pd_power.exit_crit_edge
  %retval.0.i = phi i32 [ %lnot.ext.i, %if.end4.i ], [ %call.i, %entry.scpi_pd_power.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_scpi_pm_domain__170_152_scpi_power_domain_driver_init6, !1, !"__initcall__kmod_scpi_pm_domain__170_152_scpi_power_domain_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/firmware/scpi_pm_domain.c", i32 152, i32 1}
!2 = !{ptr @__exitcall_scpi_power_domain_driver_exit, !1, !"__exitcall_scpi_power_domain_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/firmware/scpi_pm_domain.c", i32 154, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/firmware/scpi_pm_domain.c", i32 155, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/firmware/scpi_pm_domain.c", i32 156, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/firmware/scpi_pm_domain.c", i32 147, i32 11}
!12 = !{ptr @scpi_power_domain_driver, !13, !"scpi_power_domain_driver", i1 false, i1 false}
!13 = !{!"../drivers/firmware/scpi_pm_domain.c", i32 145, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/firmware/scpi_pm_domain.c", i32 79, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @scpi_pm_domain_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @scpi_pm_domain_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/firmware/scpi_pm_domain.c", i32 85, i32 3}
!24 = !{ptr @scpi_pm_domain_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @scpi_pm_domain_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/firmware/scpi_pm_domain.c", i32 89, i32 33}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/firmware/scpi_pm_domain.c", i32 91, i32 3}
!30 = !{ptr @scpi_pm_domain_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @scpi_pm_domain_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/firmware/scpi_pm_domain.c", i32 113, i32 12}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/firmware/scpi_pm_domain.c", i32 115, i32 4}
!36 = !{ptr @scpi_pm_domain_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @scpi_pm_domain_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @scpi_power_domain_ids, !39, !"scpi_power_domain_ids", i1 false, i1 false}
!39 = !{!"../drivers/firmware/scpi_pm_domain.c", i32 139, i32 34}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{!"branch_weights", i32 1, i32 2000}
