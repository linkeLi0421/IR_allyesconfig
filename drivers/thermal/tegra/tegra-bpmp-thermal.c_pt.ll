; ModuleID = '/llk/IR_all_yes/drivers/thermal/tegra/tegra-bpmp-thermal.c_pt.bc'
source_filename = "../drivers/thermal/tegra/tegra-bpmp-thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mrq_thermal_host_to_bpmp_request = type { i32, %union.anon.49 }
%union.anon.49 = type { %struct.cmd_thermal_set_trip_request }
%struct.cmd_thermal_set_trip_request = type { i32, i32, i32, i32 }
%union.mrq_thermal_bpmp_to_host_response = type { %struct.cmd_thermal_get_temp_response }
%struct.cmd_thermal_get_temp_response = type { i32 }
%struct.tegra_bpmp_message = type { i32, %struct.anon.50, %struct.anon.51 }
%struct.anon.50 = type { ptr, i32 }
%struct.anon.51 = type { ptr, i32, i32 }
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
%struct.tegra_bpmp_thermal = type { ptr, ptr, i32, ptr }
%struct.tegra_bpmp_thermal_zone = type { ptr, ptr, %struct.work_struct, i32 }
%struct.tegra_bpmp_channel = type { ptr, ptr, ptr, %struct.completion, ptr, i32 }
%struct.tegra_bpmp_mb_data = type { i32, i32, [120 x i8] }

@__initcall__kmod_tegra_bpmp_thermal__170_250_tegra_bpmp_thermal_driver_init6 = internal global ptr @tegra_bpmp_thermal_driver_init, section ".initcall6.init", align 4
@tegra_bpmp_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_bpmp_thermal_probe, ptr @tegra_bpmp_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_bpmp_thermal_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_bpmp_thermal_driver_exit = internal global ptr @tegra_bpmp_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [66 x i8] c"tegra_bpmp_thermal.author=Mikko Perttunen <mperttunen@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [71 x i8] c"tegra_bpmp_thermal.description=NVIDIA Tegra BPMP thermal sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [65 x i8] c"tegra_bpmp_thermal.file=drivers/thermal/tegra/tegra-bpmp-thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [34 x i8] c"tegra_bpmp_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra-bpmp-thermal\00", [45 x i8] zeroinitializer }, align 32
@tegra_bpmp_thermal_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-bpmp-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra_bpmp_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get the number of zones: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_bpmp_thermal_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/thermal/tegra/tegra-bpmp-thermal.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_bpmp_thermal_probe._entry_ptr = internal global ptr @tegra_bpmp_thermal_probe._entry, section ".printk_index", align 4
@tegra_bpmp_of_thermal_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @tegra_bpmp_thermal_get_temp, ptr null, ptr @tegra_bpmp_thermal_set_trips, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@tegra_bpmp_thermal_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&zone->tz_device_update_work)\00", [48 x i8] zeroinitializer }, align 32
@tegra_bpmp_thermal_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register mrq handler: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_bpmp_thermal_probe._entry_ptr.9 = internal global ptr @tegra_bpmp_thermal_probe._entry.7, section ".printk_index", align 4
@bpmp_mrq_thermal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: invalid request type: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bpmp_mrq_thermal\00", [47 x i8] zeroinitializer }, align 32
@bpmp_mrq_thermal._entry_ptr = internal global ptr @bpmp_mrq_thermal._entry, section ".printk_index", align 4
@bpmp_mrq_thermal._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: invalid thermal zone: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@bpmp_mrq_thermal._entry_ptr.14 = internal global ptr @bpmp_mrq_thermal._entry.12, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.15 = private unnamed_addr constant [26 x i8] c"tegra_bpmp_thermal_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 242, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 246, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [28 x i8] c"tegra_bpmp_thermal_of_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 236, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 171, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [26 x i8] c"tegra_bpmp_of_thermal_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 149, i32 48 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 208, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 217, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 102, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [46 x i8] c"../drivers/thermal/tegra/tegra-bpmp-thermal.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 117, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_tegra_bpmp_thermal_driver_exit, ptr @__initcall__kmod_tegra_bpmp_thermal__170_250_tegra_bpmp_thermal_driver_init6, ptr @bpmp_mrq_thermal._entry, ptr @bpmp_mrq_thermal._entry.12, ptr @bpmp_mrq_thermal._entry_ptr, ptr @bpmp_mrq_thermal._entry_ptr.14, ptr @tegra_bpmp_thermal_driver_exit, ptr @tegra_bpmp_thermal_probe._entry, ptr @tegra_bpmp_thermal_probe._entry.7, ptr @tegra_bpmp_thermal_probe._entry_ptr, ptr @tegra_bpmp_thermal_probe._entry_ptr.9, ptr @tegra_bpmp_thermal_driver, ptr @.str, ptr @tegra_bpmp_thermal_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tegra_bpmp_of_thermal_ops, ptr @tegra_bpmp_thermal_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_thermal_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_of_thermal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_thermal_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_thermal_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpmp_mrq_thermal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpmp_mrq_thermal._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_bpmp_thermal_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_bpmp_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_bpmp_thermal_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %req.i111 = alloca %struct.mrq_thermal_host_to_bpmp_request, align 4
  %reply.i112 = alloca %union.mrq_thermal_bpmp_to_host_response, align 4
  %msg.i113 = alloca %struct.tegra_bpmp_message, align 4
  %req.i = alloca %struct.mrq_thermal_host_to_bpmp_request, align 4
  %reply.i = alloca %union.mrq_thermal_bpmp_to_host_response, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup58_crit_edge, label %if.end

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %bpmp5 = getelementptr inbounds %struct.tegra_bpmp_thermal, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %bpmp5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %bpmp5, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reply.i) #6
  %6 = ptrtoint ptr %reply.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reply.i, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %9 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %11 = getelementptr inbounds i8, ptr %req.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 16)
  %13 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %req.i, align 4
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 20
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 4
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 27, ptr %msg.i, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %req.i, ptr %7, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 20, ptr %8, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %reply.i, ptr %9, align 4
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %10, align 4
  %call.i109 = call i32 @tegra_bpmp_transfer(ptr noundef %3, ptr noundef nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool.not.i = icmp eq i32 %call.i109, 0
  br i1 %tobool.not.i, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reply.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call.i109) #9
  br label %cleanup58

if.end10:                                         ; preds = %if.end
  %21 = ptrtoint ptr %reply.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reply.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reply.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #6
  %23 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 4) #6
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !52

devm_kcalloc.exit.thread:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %zones121 = getelementptr inbounds %struct.tegra_bpmp_thermal, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %zones121 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %zones121, align 4
  br label %cleanup58

devm_kcalloc.exit:                                ; preds = %if.end10
  %26 = extractvalue { i32, i1 } %23, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %26, i32 noundef 3520) #6
  %zones = getelementptr inbounds %struct.tegra_bpmp_thermal, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %zones to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i.i, ptr %zones, align 4
  %tobool14.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool14.not, label %devm_kcalloc.exit.cleanup58_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup58_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp126.not = icmp eq i32 %22, 0
  br i1 %cmp126.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %28 = getelementptr inbounds %struct.mrq_thermal_host_to_bpmp_request, ptr %req.i111, i32 0, i32 1
  %29 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i113, i32 0, i32 1
  %30 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i113, i32 0, i32 1, i32 1
  %31 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i113, i32 0, i32 2
  %32 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i113, i32 0, i32 2, i32 1
  %33 = getelementptr inbounds i8, ptr %req.i111, i32 8
  %34 = getelementptr inbounds i8, ptr %msg.i113, i32 20
  %num_zones = getelementptr inbounds %struct.tegra_bpmp_thermal, ptr %call.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %inc49, %for.inc.for.body_crit_edge ]
  %call.i110 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #6
  %tobool19.not = icmp eq ptr %call.i110, null
  br i1 %tobool19.not, label %for.body.cleanup58_crit_edge, label %if.end21

for.body.cleanup58_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

if.end21:                                         ; preds = %for.body
  %idx = getelementptr inbounds %struct.tegra_bpmp_thermal_zone, ptr %call.i110, i32 0, i32 3
  %35 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %i.0127, ptr %idx, align 4
  %36 = ptrtoint ptr %call.i110 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %call.i110, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i111) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reply.i112) #6
  %37 = ptrtoint ptr %reply.i112 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %reply.i112, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i113) #6
  %38 = call ptr @memset(ptr %33, i32 0, i32 12)
  %39 = ptrtoint ptr %req.i111 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %req.i111, align 4
  %40 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %i.0127, ptr %28, align 4
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %34, align 4
  %42 = ptrtoint ptr %msg.i113 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 27, ptr %msg.i113, align 4
  %43 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %req.i111, ptr %29, align 4
  %44 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 20, ptr %30, align 4
  %45 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %reply.i112, ptr %31, align 4
  %46 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %32, align 4
  %47 = ptrtoint ptr %bpmp5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bpmp5, align 4
  %call.i114 = call i32 @tegra_bpmp_transfer(ptr noundef %48, ptr noundef nonnull %msg.i113) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i113) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reply.i112) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i111) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp24 = icmp slt i32 %call.i114, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i110) #6
  br label %for.inc

if.end27:                                         ; preds = %if.end21
  %call29 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev, i32 noundef %i.0127, ptr noundef nonnull %call.i110, ptr noundef nonnull @tegra_bpmp_of_thermal_ops) #6
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end37

if.then31:                                        ; preds = %if.end27
  %cmp33 = icmp eq ptr %call29, inttoptr (i32 -517 to ptr)
  br i1 %cmp33, label %if.then31.cleanup58_crit_edge, label %if.end35

if.then31.cleanup58_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

if.end35:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i110) #6
  br label %for.inc

if.end37:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %tzd38 = getelementptr inbounds %struct.tegra_bpmp_thermal_zone, ptr %call.i110, i32 0, i32 1
  %49 = ptrtoint ptr %tzd38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call29, ptr %tzd38, align 4
  %tz_device_update_work = getelementptr inbounds %struct.tegra_bpmp_thermal_zone, ptr %call.i110, i32 0, i32 2
  call void @__init_work(ptr noundef %tz_device_update_work, i32 noundef 0) #6
  %50 = ptrtoint ptr %tz_device_update_work to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -64, ptr %tz_device_update_work, align 4
  %lockdep_map = getelementptr inbounds %struct.tegra_bpmp_thermal_zone, ptr %call.i110, i32 0, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @tegra_bpmp_thermal_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry43 = getelementptr inbounds %struct.tegra_bpmp_thermal_zone, ptr %call.i110, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %entry43 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %entry43, ptr %entry43, align 4
  %prev.i = getelementptr inbounds %struct.tegra_bpmp_thermal_zone, ptr %call.i110, i32 0, i32 2, i32 1, i32 1
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %entry43, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tegra_bpmp_thermal_zone, ptr %call.i110, i32 0, i32 2, i32 2
  %53 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @tz_device_update_work_fn, ptr %func, align 4
  %54 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %zones, align 4
  %56 = ptrtoint ptr %num_zones to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_zones, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %num_zones, align 4
  %arrayidx = getelementptr ptr, ptr %55, i32 %57
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i110, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end37, %if.end35, %if.then25
  %inc49 = add nuw i32 %i.0127, 1
  %exitcond.not = icmp eq i32 %inc49, %22
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call50 = call i32 @tegra_bpmp_request_mrq(ptr noundef %3, i32 noundef 27, ptr noundef nonnull @bpmp_mrq_thermal, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end57, label %do.end55

do.end55:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call50) #9
  br label %cleanup58

if.end57:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %59 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup58

cleanup58:                                        ; preds = %if.end57, %do.end55, %if.then31.cleanup58_crit_edge, %for.body.cleanup58_crit_edge, %devm_kcalloc.exit.cleanup58_crit_edge, %devm_kcalloc.exit.thread, %do.end, %entry.cleanup58_crit_edge
  %retval.2 = phi i32 [ %call.i109, %do.end ], [ %call50, %do.end55 ], [ 0, %if.end57 ], [ -12, %entry.cleanup58_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup58_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -517, %if.then31.cleanup58_crit_edge ], [ -12, %for.body.cleanup58_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_thermal_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bpmp = getelementptr inbounds %struct.tegra_bpmp_thermal, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpmp, align 4
  tail call void @tegra_bpmp_free_mrq(ptr noundef %3, i32 noundef 27, ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_thermal_get_temp(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %out_temp) #2 align 64 {
entry:
  %req = alloca %struct.mrq_thermal_host_to_bpmp_request, align 4
  %reply = alloca %union.mrq_thermal_bpmp_to_host_response, align 4
  %msg = alloca %struct.tegra_bpmp_message, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #6
  %0 = getelementptr inbounds %struct.mrq_thermal_host_to_bpmp_request, ptr %req, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reply) #6
  %1 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reply, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %2 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 2
  %5 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 2, i32 1
  %6 = getelementptr inbounds i8, ptr %req, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 12)
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %req, align 4
  %idx = getelementptr inbounds %struct.tegra_bpmp_thermal_zone, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %0, align 4
  %12 = getelementptr inbounds i8, ptr %msg, i32 20
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 27, ptr %msg, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %req, ptr %2, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 20, ptr %3, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %reply, ptr %4, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %5, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %bpmp = getelementptr inbounds %struct.tegra_bpmp_thermal, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bpmp, align 4
  %call = call i32 @tegra_bpmp_transfer(ptr noundef %22, ptr noundef nonnull %msg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reply, align 4
  %25 = ptrtoint ptr %out_temp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %out_temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reply) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tz_device_update_work_fn(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tzd = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tzd, align 4
  tail call void @thermal_zone_device_update(ptr noundef %1, i32 noundef 2) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_bpmp_request_mrq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpmp_mrq_thermal(i32 noundef %mrq, ptr noundef %ch, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ib = getelementptr inbounds %struct.tegra_bpmp_channel, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %ib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ib, align 4
  %data1 = getelementptr inbounds %struct.tegra_bpmp_mb_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %data1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %3)
  %cmp.not = icmp eq i32 %3, 100
  br i1 %cmp.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %num_zones = getelementptr inbounds %struct.tegra_bpmp_thermal, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %num_zones to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_zones, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp329.not = icmp eq i32 %5, 0
  br i1 %cmp329.not, label %for.cond.preheader.do.end11_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end11_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %zones = getelementptr inbounds %struct.tegra_bpmp_thermal, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %zones, align 4
  %8 = getelementptr inbounds %struct.tegra_bpmp_mb_data, ptr %1, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %8, align 1
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %3) #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.do.end11_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.do.end11_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.030
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %idx = getelementptr inbounds %struct.tegra_bpmp_thermal_zone, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %10)
  %cmp4.not = icmp eq i32 %16, %10
  br i1 %cmp4.not, label %if.end6, label %for.cond

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %tz_device_update_work = getelementptr inbounds %struct.tegra_bpmp_thermal_zone, ptr %14, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %tz_device_update_work) #6
  br label %cleanup

do.end11:                                         ; preds = %for.cond.do.end11_crit_edge, %for.cond.preheader.do.end11_crit_edge
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = getelementptr inbounds %struct.tegra_bpmp_mb_data, ptr %1, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %20, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef %22) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end6, %do.end
  %.sink = phi i32 [ -22, %do.end11 ], [ 0, %if.end6 ], [ -22, %do.end ]
  tail call void @tegra_bpmp_mrq_return(ptr noundef %ch, i32 noundef %.sink, ptr noundef null, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_bpmp_transfer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_thermal_set_trips(ptr nocapture noundef readonly %data, i32 noundef %low, i32 noundef %high) #2 align 64 {
entry:
  %req = alloca %struct.mrq_thermal_host_to_bpmp_request, align 4
  %msg = alloca %struct.tegra_bpmp_message, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #6
  %0 = getelementptr inbounds %struct.mrq_thermal_host_to_bpmp_request, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mrq_thermal_host_to_bpmp_request, ptr %req, i32 0, i32 1, i32 0, i32 1
  %2 = getelementptr inbounds %struct.mrq_thermal_host_to_bpmp_request, ptr %req, i32 0, i32 1, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mrq_thermal_host_to_bpmp_request, ptr %req, i32 0, i32 1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %4 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %req, align 4
  %idx = getelementptr inbounds %struct.tegra_bpmp_thermal_zone, ptr %data, i32 0, i32 3
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %0, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %3, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %low, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %high, ptr %2, align 4
  %13 = getelementptr inbounds i8, ptr %msg, i32 12
  %14 = call ptr @memset(ptr %13, i32 0, i32 12)
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 27, ptr %msg, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %req, ptr %4, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 20, ptr %5, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %bpmp = getelementptr inbounds %struct.tegra_bpmp_thermal, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bpmp, align 4
  %call = call i32 @tegra_bpmp_transfer(ptr noundef %21, ptr noundef nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_bpmp_mrq_return(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_bpmp_free_mrq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_tegra_bpmp_thermal__170_250_tegra_bpmp_thermal_driver_init6, !1, !"__initcall__kmod_tegra_bpmp_thermal__170_250_tegra_bpmp_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/tegra/tegra-bpmp-thermal.c", i32 250, i32 1}
!2 = !{ptr @__exitcall_tegra_bpmp_thermal_driver_exit, !1, !"__exitcall_tegra_bpmp_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/thermal/tegra/tegra-bpmp-thermal.c", i32 252, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/thermal/tegra/tegra-bpmp-thermal.c", i32 253, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/thermal/tegra/tegra-bpmp-thermal.c", i32 254, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/tegra/tegra-bpmp-thermal.c", i32 246, i32 11}
!12 = !{ptr @tegra_bpmp_thermal_driver, !13, !"tegra_bpmp_thermal_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/tegra/tegra-bpmp-thermal.c", i32 242, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/tegra/tegra-bpmp-thermal.c", i32 171, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tegra_bpmp_thermal_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tegra_bpmp_thermal_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @tegra_bpmp_thermal_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/thermal/tegra/tegra-bpmp-thermal.c", i32 208, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/thermal/tegra/tegra-bpmp-thermal.c", i32 217, i32 3}
!27 = !{ptr @tegra_bpmp_thermal_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @tegra_bpmp_thermal_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @tegra_bpmp_of_thermal_ops, !30, !"tegra_bpmp_of_thermal_ops", i1 false, i1 false}
!30 = !{!"../drivers/thermal/tegra/tegra-bpmp-thermal.c", i32 149, i32 48}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/thermal/tegra/tegra-bpmp-thermal.c", i32 102, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @bpmp_mrq_thermal._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @bpmp_mrq_thermal._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/thermal/tegra/tegra-bpmp-thermal.c", i32 117, i32 2}
!38 = !{ptr @bpmp_mrq_thermal._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bpmp_mrq_thermal._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @tegra_bpmp_thermal_of_match, !41, !"tegra_bpmp_thermal_of_match", i1 false, i1 false}
!41 = !{!"../drivers/thermal/tegra/tegra-bpmp-thermal.c", i32 236, i32 34}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
!52 = !{!"branch_weights", i32 1, i32 2000}
