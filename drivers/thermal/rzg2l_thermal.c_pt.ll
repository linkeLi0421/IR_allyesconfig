; ModuleID = '/llk/IR_all_yes/drivers/thermal/rzg2l_thermal.c_pt.bc'
source_filename = "../drivers/thermal/rzg2l_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.rzg2l_thermal_priv = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rzg2l_thermal__172_238_rzg2l_thermal_driver_init6 = internal global ptr @rzg2l_thermal_driver_init, section ".initcall6.init", align 4
@rzg2l_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rzg2l_thermal_probe, ptr @rzg2l_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rzg2l_thermal_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rzg2l_thermal_driver_exit = internal global ptr @rzg2l_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description173 = internal constant [67 x i8] c"rzg2l_thermal.description=Renesas RZ/G2L TSU Thermal Sensor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author174 = internal constant [59 x i8] c"rzg2l_thermal.author=Biju Das <biju.das.jz@bp.renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [49 x i8] c"rzg2l_thermal.file=drivers/thermal/rzg2l_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [29 x i8] c"rzg2l_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rzg2l_thermal\00", [18 x i8] zeroinitializer }, align 32
@rzg2l_thermal_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rzg2l-tsu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get cpg reset\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to deassert\00", [45 x i8] zeroinitializer }, align 32
@rzg2l_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 196, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to start TSU\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rzg2l_thermal_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/thermal/rzg2l_thermal.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rzg2l_thermal_probe._entry_ptr = internal global ptr @rzg2l_thermal_probe._entry, section ".printk_index", align 4
@rzg2l_tz_of_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @rzg2l_thermal_get_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rzg2l_thermal_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 203, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can't register thermal zone\00", [36 x i8] zeroinitializer }, align 32
@rzg2l_thermal_probe._entry_ptr.10 = internal global ptr @rzg2l_thermal_probe._entry.8, section ".printk_index", align 4
@rzg2l_thermal_probe.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.11, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"TSU probed with %s caliberation values\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hw\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sw\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"rzg2l_thermal_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 230, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 232, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"rzg2l_thermal_dt_ids\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 224, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 176, i32 10 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 180, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 196, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"rzg2l_tz_of_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 112, i32 48 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 203, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [35 x i8] c"../drivers/thermal/rzg2l_thermal.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 214, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_rzg2l_thermal_driver_exit, ptr @__initcall__kmod_rzg2l_thermal__172_238_rzg2l_thermal_driver_init6, ptr @rzg2l_thermal_driver_exit, ptr @rzg2l_thermal_probe._entry, ptr @rzg2l_thermal_probe._entry.8, ptr @rzg2l_thermal_probe._entry_ptr, ptr @rzg2l_thermal_probe._entry_ptr.10, ptr @rzg2l_thermal_driver, ptr @.str, ptr @rzg2l_thermal_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rzg2l_tz_of_ops, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_thermal_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_tz_of_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_thermal_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rzg2l_thermal_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rzg2l_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rzg2l_thermal_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.rzg2l_thermal_priv, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %call.i113 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %rstc = getelementptr inbounds %struct.rzg2l_thermal_priv, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i113, ptr %rstc, align 4
  %cmp.i114 = icmp ugt ptr %call.i113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call.i113 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %4, ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %call19 = tail call i32 @reset_control_deassert(ptr noundef %call.i113) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call19, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call.i115 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #5
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %calib0 = getelementptr inbounds %struct.rzg2l_thermal_priv, ptr %call.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool27.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool27.not, i32 3148, i32 %8
  %9 = ptrtoint ptr %calib0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %calib0, align 4
  %add.ptr.i117 = getelementptr i8, ptr %6, i32 28
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #5, !srcloc !48
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %calib1 = getelementptr inbounds %struct.rzg2l_thermal_priv, ptr %call.i, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool33.not = icmp eq i32 %10, 0
  %storemerge112 = select i1 %tobool33.not, i32 503, i32 %11
  %12 = ptrtoint ptr %calib1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge112, ptr %calib1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 50331648) #5, !srcloc !51
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 60, i32 noundef 80, i32 noundef 2) #5
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %19 = or i32 %18, 16777216
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 %19) #5, !srcloc !51
  %call1.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call1.i, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 135) #5
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr48.i = getelementptr i8, ptr %23, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %24)
  %cmp1149.i = icmp eq i32 %24, 16777216
  br i1 %cmp1149.i, label %if.end23.if.end40_crit_edge, label %if.end23.land.lhs.true.i_crit_edge

if.end23.land.lhs.true.i_crit_edge:               ; preds = %if.end23
  br label %land.lhs.true.i

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

land.lhs.true.i:                                  ; preds = %if.then27.i.land.lhs.true.i_crit_edge, %if.end23.land.lhs.true.i_crit_edge
  %call14.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call14.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call14.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then17.i, label %if.then27.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr21.i = getelementptr i8, ptr %26, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %27)
  %phi.cmp.i = icmp eq i32 %27, 16777216
  br i1 %phi.cmp.i, label %if.then17.i.if.end40_crit_edge, label %do.end

if.then17.i.if.end40_crit_edge:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then27.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 13, i32 noundef 50, i32 noundef 2) #5
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr.i118 = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  %cmp11.i = icmp eq i32 %30, 16777216
  br i1 %cmp11.i, label %if.then27.i.if.end40_crit_edge, label %if.then27.i.land.lhs.true.i_crit_edge

if.then27.i.land.lhs.true.i_crit_edge:            ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.then27.i.if.end40_crit_edge:                   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

do.end:                                           ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  br label %err

if.end40:                                         ; preds = %if.then27.i.if.end40_crit_edge, %if.then17.i.if.end40_crit_edge, %if.end23.if.end40_crit_edge
  %call41 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev1, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @rzg2l_tz_of_ops) #5
  %cmp.i119 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %do.end46, label %if.end48

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  %31 = ptrtoint ptr %call41 to i32
  br label %err

if.end48:                                         ; preds = %if.end40
  %zone49 = getelementptr inbounds %struct.rzg2l_thermal_priv, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %zone49 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call41, ptr %zone49, align 4
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %call41, i32 0, i32 21
  %33 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tzp, align 8
  %no_hwmon = getelementptr inbounds %struct.thermal_zone_params, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %no_hwmon to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %no_hwmon, align 4
  %36 = load ptr, ptr %zone49, align 4
  %call52 = tail call i32 @thermal_add_hwmon_sysfs(ptr noundef %36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.body56, label %if.end48.err_crit_edge

if.end48.err_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

do.body56:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzg2l_thermal_probe.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rzg2l_thermal_probe, %if.then61)) #5
          to label %cleanup [label %if.then61], !srcloc !54

if.then61:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr.i121 = getelementptr i8, ptr %38, i32 24
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool63.not = icmp eq i32 %39, 0
  %cond = select i1 %tobool63.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzg2l_thermal_probe.__UNIQUE_ID_ddebug171, ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond) #5
  br label %cleanup

err:                                              ; preds = %if.end48.err_crit_edge, %do.end46, %do.end
  %ret.0 = phi i32 [ -110, %do.end ], [ %31, %do.end46 ], [ %call52, %if.end48.err_crit_edge ]
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  %rstc.i = getelementptr inbounds %struct.rzg2l_thermal_priv, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rstc.i, align 4
  %call4.i = tail call i32 @reset_control_assert(ptr noundef %43) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then61, %do.body56, %if.then21, %if.then13, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %call16, %if.then13 ], [ %call22, %if.then21 ], [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then61 ], [ 0, %do.body56 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_thermal_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %zone = getelementptr inbounds %struct.rzg2l_thermal_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zone, align 4
  tail call void @thermal_remove_hwmon_sysfs(ptr noundef %3) #5
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  %rstc.i = getelementptr inbounds %struct.rzg2l_thermal_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rstc.i, align 4
  %call4.i = tail call i32 @reset_control_assert(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_thermal_get_temp(ptr nocapture noundef readonly %devdata, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.rzg2l_thermal_priv, ptr %devdata, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %3 = and i32 %2, -15794176
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #5
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %8 = and i32 %7, -15794176
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %add.1 = add nuw nsw i32 %9, %4
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #5
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %13 = and i32 %12, -15794176
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %add.2 = add nuw nsw i32 %14, %add.1
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #5
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %18 = and i32 %17, -15794176
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %add.3 = add nuw nsw i32 %19, %add.2
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #5
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %23 = and i32 %22, -15794176
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add.4 = add nuw nsw i32 %24, %add.3
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #5
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %26, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %28 = and i32 %27, -15794176
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %add.5 = add nuw nsw i32 %29, %add.4
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #5
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %31, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %33 = and i32 %32, -15794176
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %add.6 = add i32 %34, %add.5
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #5
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %36, i32 12
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %38 = and i32 %37, -15794176
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %add.7 = add i32 %39, %add.6
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #5
  %div21 = lshr i32 %add.7, 3
  %mul = mul i32 %div21, 1000000
  %mul1 = mul i32 %div21, 13
  %add2 = add i32 %mul1, 1000000
  %div3 = udiv i32 %mul, %add2
  %calib1 = getelementptr inbounds %struct.rzg2l_thermal_priv, ptr %devdata, i32 0, i32 5
  %40 = ptrtoint ptr %calib1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %calib1, align 4
  %sub = sub i32 %div3, %41
  %calib0 = getelementptr inbounds %struct.rzg2l_thermal_priv, ptr %devdata, i32 0, i32 4
  %42 = ptrtoint ptr %calib0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %calib0, align 4
  %sub5 = sub i32 %43, %41
  %div6 = udiv i32 165000, %sub5
  %mul7 = mul i32 %div6, %sub
  %add10 = add i32 %mul7, -39501
  %44 = srem i32 %add10, 500
  %mul12 = sub i32 %add10, %44
  %45 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul12, ptr %temp, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_remove_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_rzg2l_thermal__172_238_rzg2l_thermal_driver_init6, !1, !"__initcall__kmod_rzg2l_thermal__172_238_rzg2l_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/rzg2l_thermal.c", i32 238, i32 1}
!2 = !{ptr @__exitcall_rzg2l_thermal_driver_exit, !1, !"__exitcall_rzg2l_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description173, !4, !"__UNIQUE_ID_description173", i1 false, i1 false}
!4 = !{!"../drivers/thermal/rzg2l_thermal.c", i32 240, i32 1}
!5 = !{ptr @__UNIQUE_ID_author174, !6, !"__UNIQUE_ID_author174", i1 false, i1 false}
!6 = !{!"../drivers/thermal/rzg2l_thermal.c", i32 241, i32 1}
!7 = !{ptr @__UNIQUE_ID_file175, !8, !"__UNIQUE_ID_file175", i1 false, i1 false}
!8 = !{!"../drivers/thermal/rzg2l_thermal.c", i32 242, i32 1}
!9 = !{ptr @__UNIQUE_ID_license176, !8, !"__UNIQUE_ID_license176", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/rzg2l_thermal.c", i32 232, i32 11}
!12 = !{ptr @rzg2l_thermal_driver, !13, !"rzg2l_thermal_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/rzg2l_thermal.c", i32 230, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/rzg2l_thermal.c", i32 176, i32 10}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thermal/rzg2l_thermal.c", i32 180, i32 34}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/thermal/rzg2l_thermal.c", i32 196, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rzg2l_thermal_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rzg2l_thermal_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thermal/rzg2l_thermal.c", i32 203, i32 3}
!28 = !{ptr @rzg2l_thermal_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rzg2l_thermal_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/thermal/rzg2l_thermal.c", i32 214, i32 2}
!32 = !{ptr @rzg2l_thermal_probe.__UNIQUE_ID_ddebug171, !31, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rzg2l_tz_of_ops, !36, !"rzg2l_tz_of_ops", i1 false, i1 false}
!36 = !{!"../drivers/thermal/rzg2l_thermal.c", i32 112, i32 48}
!37 = !{ptr @rzg2l_thermal_dt_ids, !38, !"rzg2l_thermal_dt_ids", i1 false, i1 false}
!38 = !{!"../drivers/thermal/rzg2l_thermal.c", i32 224, i32 34}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2980863}
!49 = !{i64 2150521212}
!50 = !{i64 2150522567}
!51 = !{i64 2980445}
!52 = !{i64 2152612370}
!53 = !{i64 2152612856}
!54 = !{i64 2148761188, i64 2148761193, i64 2148761206, i64 2148761250, i64 2148761284, i64 2148761305}
