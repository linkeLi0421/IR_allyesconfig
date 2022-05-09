; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/tegra20-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/tegra20-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_tegra20_cpufreq__170_110_tegra20_cpufreq_driver_init6 = internal global ptr @tegra20_cpufreq_driver_init, section ".initcall6.init", align 4
@tegra20_cpufreq_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra20_cpufreq_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra20_cpufreq_driver_exit = internal global ptr @tegra20_cpufreq_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias171 = internal constant [47 x i8] c"tegra20_cpufreq.alias=platform:tegra20-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [56 x i8] c"tegra20_cpufreq.author=Colin Cross <ccross@android.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [58 x i8] c"tegra20_cpufreq.description=NVIDIA Tegra20 cpufreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [53 x i8] c"tegra20_cpufreq.file=drivers/cpufreq/tegra20-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [28 x i8] c"tegra20_cpufreq.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra20-cpufreq\00", [16 x i8] zeroinitializer }, align 32
@tegra20_cpufreq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 54, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"operating points not found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra20_cpufreq_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/cpufreq/tegra20-cpufreq.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra20_cpufreq_probe._entry_ptr = internal global ptr @tegra20_cpufreq_probe._entry, section ".printk_index", align 4
@tegra20_cpufreq_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 55, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"please update your device tree\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra20_cpufreq_probe._entry_ptr.8 = internal global ptr @tegra20_cpufreq_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia,tegra20\00", [17 x i8] zeroinitializer }, align 32
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@tegra20_cpufreq_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 68, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hardware version 0x%x 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tegra20_cpufreq_probe._entry_ptr.13 = internal global ptr @tegra20_cpufreq_probe._entry.10, section ".printk_index", align 4
@tegra20_cpufreq_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 77, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set supported hw: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra20_cpufreq_probe._entry_ptr.16 = internal global ptr @tegra20_cpufreq_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpufreq-dt\00", [21 x i8] zeroinitializer }, align 32
@tegra20_cpufreq_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 91, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to create cpufreq-dt device: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra20_cpufreq_probe._entry_ptr.20 = internal global ptr @tegra20_cpufreq_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"operating-points-v2\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [23 x i8] c"tegra20_cpufreq_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 104, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 107, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 54, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 55, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 59, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 67, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 77, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 87, i32 47 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 90, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [37 x i8] c"../drivers/cpufreq/tegra20-cpufreq.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 28, i32 26 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias171, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_tegra20_cpufreq_driver_exit, ptr @__initcall__kmod_tegra20_cpufreq__170_110_tegra20_cpufreq_driver_init6, ptr @tegra20_cpufreq_driver_exit, ptr @tegra20_cpufreq_probe._entry, ptr @tegra20_cpufreq_probe._entry.10, ptr @tegra20_cpufreq_probe._entry.14, ptr @tegra20_cpufreq_probe._entry.18, ptr @tegra20_cpufreq_probe._entry.6, ptr @tegra20_cpufreq_probe._entry_ptr, ptr @tegra20_cpufreq_probe._entry_ptr.13, ptr @tegra20_cpufreq_probe._entry_ptr.16, ptr @tegra20_cpufreq_probe._entry_ptr.20, ptr @tegra20_cpufreq_probe._entry_ptr.8, ptr @tegra20_cpufreq_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_cpufreq_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_cpufreq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_cpufreq_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_cpufreq_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_cpufreq_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_cpufreq_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_cpufreq_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra20_cpufreq_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra20_cpufreq_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra20_cpufreq_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_cpufreq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %versions = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %versions) #5
  %0 = getelementptr inbounds [2 x i32], ptr %versions, i32 0, i32 1
  %call.i.i = tail call ptr @get_cpu_device(i32 noundef 0) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i.i = tail call ptr @of_get_cpu_node(i32 noundef 0, ptr noundef null) #5
  br label %cpu0_node_has_opp_v2_prop.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 27
  %1 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i.i, align 8
  %call2.i.i = tail call ptr @of_node_get(ptr noundef %2) #5
  br label %cpu0_node_has_opp_v2_prop.exit

cpu0_node_has_opp_v2_prop.exit:                   ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %call2.i.i, %if.end.i.i ], [ %call1.i.i, %if.then.i.i ]
  %call1.i = tail call ptr @of_get_property(ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.21, ptr noundef null) #5
  %tobool.not.i.not = icmp eq ptr %call1.i, null
  tail call void @of_node_put(ptr noundef %retval.0.i.i) #5
  br i1 %tobool.not.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %cpu0_node_has_opp_v2_prop.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end:                                           ; preds = %cpu0_node_has_opp_v2_prop.exit
  %call5 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 1) to i32))
  %.pn102 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 1), align 4
  %storemerge101 = shl nuw i32 1, %.pn102
  %3 = ptrtoint ptr %versions to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %storemerge101, ptr %versions, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2) to i32))
  %.val = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6) to i32))
  %.val111 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6), align 4
  %.pn = select i1 %tobool.not, i32 %.val, i32 %.val111
  %storemerge = shl nuw i32 1, %.pn
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %0, align 4
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17, ptr noundef nonnull @.str.11, i32 noundef %storemerge101, i32 noundef %storemerge) #8
  %call20 = tail call ptr @get_cpu_device(i32 noundef 0) #5
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.end34, label %if.end49, !prof !56

do.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 71, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end49:                                         ; preds = %if.end
  %call50 = call ptr @dev_pm_opp_set_supported_hw(ptr noundef nonnull %call20, ptr noundef nonnull %versions, i32 noundef 2) #5
  %cmp.i.i.not = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %do.end56, label %if.end58

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call50 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.15, i32 noundef %5) #8
  br label %cleanup

if.end58:                                         ; preds = %if.end49
  %call.i = call i32 @devm_add_action(ptr noundef %dev17, ptr noundef nonnull @tegra20_cpufreq_put_supported_hw, ptr noundef %call50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i103 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i103, label %if.end63, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  call void @dev_pm_opp_put_supported_hw(ptr noundef %call50) #5
  br label %cleanup

if.end63:                                         ; preds = %if.end58
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %6 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %7 = call ptr @memset(ptr %6, i32 255, i32 48)
  %8 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %fwnode.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %6, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.17, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %properties.i.i, align 8
  %14 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i104 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %cmp.i.i105.not = icmp ugt ptr %call.i.i104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i105.not, label %do.end70, label %if.end72

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call.i.i104 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.19, i32 noundef %15) #8
  br label %cleanup

if.end72:                                         ; preds = %if.end63
  %call.i107 = call i32 @devm_add_action(ptr noundef %dev17, ptr noundef nonnull @tegra20_cpufreq_dt_unregister, ptr noundef %call.i.i104) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i108 = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i108, label %if.end72.cleanup_crit_edge, label %if.then.i109

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i109:                                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  call void @platform_device_unregister(ptr noundef %call.i.i104) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i109, %if.end72.cleanup_crit_edge, %do.end70, %devm_add_action_or_reset.exit, %do.end56, %do.end34, %do.end
  %retval.0 = phi i32 [ -19, %do.end34 ], [ %5, %do.end56 ], [ %15, %do.end70 ], [ -19, %do.end ], [ %call.i, %devm_add_action_or_reset.exit ], [ 0, %if.end72.cleanup_crit_edge ], [ %call.i107, %if.then.i109 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %versions) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_supported_hw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra20_cpufreq_put_supported_hw(ptr noundef %opp_table) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dev_pm_opp_put_supported_hw(ptr noundef %opp_table) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra20_cpufreq_dt_unregister(ptr noundef %cpufreq_dt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_device_unregister(ptr noundef %cpufreq_dt) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_supported_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_tegra20_cpufreq__170_110_tegra20_cpufreq_driver_init6, !1, !"__initcall__kmod_tegra20_cpufreq__170_110_tegra20_cpufreq_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/tegra20-cpufreq.c", i32 110, i32 1}
!2 = !{ptr @__exitcall_tegra20_cpufreq_driver_exit, !1, !"__exitcall_tegra20_cpufreq_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias171, !4, !"__UNIQUE_ID_alias171", i1 false, i1 false}
!4 = !{!"../drivers/cpufreq/tegra20-cpufreq.c", i32 112, i32 1}
!5 = !{ptr @__UNIQUE_ID_author172, !6, !"__UNIQUE_ID_author172", i1 false, i1 false}
!6 = !{!"../drivers/cpufreq/tegra20-cpufreq.c", i32 113, i32 1}
!7 = !{ptr @__UNIQUE_ID_description173, !8, !"__UNIQUE_ID_description173", i1 false, i1 false}
!8 = !{!"../drivers/cpufreq/tegra20-cpufreq.c", i32 114, i32 1}
!9 = !{ptr @__UNIQUE_ID_file174, !10, !"__UNIQUE_ID_file174", i1 false, i1 false}
!10 = !{!"../drivers/cpufreq/tegra20-cpufreq.c", i32 115, i32 1}
!11 = !{ptr @__UNIQUE_ID_license175, !10, !"__UNIQUE_ID_license175", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/cpufreq/tegra20-cpufreq.c", i32 107, i32 11}
!14 = !{ptr @tegra20_cpufreq_driver, !15, !"tegra20_cpufreq_driver", i1 false, i1 false}
!15 = !{!"../drivers/cpufreq/tegra20-cpufreq.c", i32 104, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/cpufreq/tegra20-cpufreq.c", i32 54, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tegra20_cpufreq_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra20_cpufreq_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/cpufreq/tegra20-cpufreq.c", i32 55, i32 3}
!26 = !{ptr @tegra20_cpufreq_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tegra20_cpufreq_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/cpufreq/tegra20-cpufreq.c", i32 59, i32 31}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/cpufreq/tegra20-cpufreq.c", i32 67, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tegra20_cpufreq_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @tegra20_cpufreq_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/cpufreq/tegra20-cpufreq.c", i32 77, i32 3}
!37 = !{ptr @tegra20_cpufreq_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @tegra20_cpufreq_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/cpufreq/tegra20-cpufreq.c", i32 87, i32 47}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/cpufreq/tegra20-cpufreq.c", i32 90, i32 3}
!43 = !{ptr @tegra20_cpufreq_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tegra20_cpufreq_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/cpufreq/tegra20-cpufreq.c", i32 28, i32 26}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"branch_weights", i32 1, i32 2000}
