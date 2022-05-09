; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/sun50i-cpufreq-nvmem.c_pt.bc'
source_filename = "../drivers/cpufreq/sun50i-cpufreq-nvmem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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

@__initcall__kmod_sun50i_cpufreq_nvmem__183_212_sun50i_cpufreq_init6 = internal global ptr @sun50i_cpufreq_init, section ".initcall6.init", align 4
@sun50i_cpufreq_pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sun50i_cpufreq_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun50i_cpufreq_nvmem_probe, ptr @sun50i_cpufreq_nvmem_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun50i_cpufreq_exit = internal global ptr @sun50i_cpufreq_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [58 x i8] c"sun50i_cpufreq_nvmem.description=Sun50i-h6 cpufreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [63 x i8] c"sun50i_cpufreq_nvmem.file=drivers/cpufreq/sun50i-cpufreq-nvmem\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [36 x i8] c"sun50i_cpufreq_nvmem.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun50i-cpufreq-nvmem\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@sun50i_cpufreq_match_list = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"speed%d\00", [24 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@sun50i_cpufreq_nvmem_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013sun50i_cpufreq_nvmem: Failed to set prop name\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sun50i_cpufreq_nvmem_probe\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/cpufreq/sun50i-cpufreq-nvmem.c\00", [57 x i8] zeroinitializer }, align 32
@sun50i_cpufreq_nvmem_probe._entry_ptr = internal global ptr @sun50i_cpufreq_nvmem_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpufreq-dt\00", [21 x i8] zeroinitializer }, align 32
@cpufreq_dt_pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sun50i_cpufreq_nvmem_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.5, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013sun50i_cpufreq_nvmem: Failed to register platform device\0A\00", [36 x i8] zeroinitializer }, align 32
@sun50i_cpufreq_nvmem_probe._entry_ptr.9 = internal global ptr @sun50i_cpufreq_nvmem_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"allwinner,sun50i-h6-operating-points\00", [59 x i8] zeroinitializer }, align 32
@sun50i_cpufreq_get_efuse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013sun50i_cpufreq_nvmem: Could not get nvmem cell: %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sun50i_cpufreq_get_efuse\00", [39 x i8] zeroinitializer }, align 32
@sun50i_cpufreq_get_efuse._entry_ptr = internal global ptr @sun50i_cpufreq_get_efuse._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"sun50i_cpufreq_pdev\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 25, i32 50 }
@___asan_gen_.16 = private unnamed_addr constant [22 x i8] c"sun50i_cpufreq_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 158, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 203, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 177, i32 28 }
@___asan_gen_.25 = private unnamed_addr constant [26 x i8] c"sun50i_cpufreq_match_list\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 166, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 104, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 117, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 122, i32 52 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"cpufreq_dt_pdev\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 25, i32 32 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 130, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 51, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [42 x i8] c"../drivers/cpufreq/sun50i-cpufreq-nvmem.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 61, i32 4 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_sun50i_cpufreq_exit, ptr @__initcall__kmod_sun50i_cpufreq_nvmem__183_212_sun50i_cpufreq_init6, ptr @sun50i_cpufreq_exit, ptr @sun50i_cpufreq_get_efuse._entry, ptr @sun50i_cpufreq_get_efuse._entry_ptr, ptr @sun50i_cpufreq_nvmem_probe._entry, ptr @sun50i_cpufreq_nvmem_probe._entry.7, ptr @sun50i_cpufreq_nvmem_probe._entry_ptr, ptr @sun50i_cpufreq_nvmem_probe._entry_ptr.9, ptr @sun50i_cpufreq_pdev, ptr @sun50i_cpufreq_driver, ptr @.str, ptr @.str.1, ptr @sun50i_cpufreq_match_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cpufreq_dt_pdev, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_cpufreq_pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_cpufreq_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_cpufreq_match_list to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_cpufreq_nvmem_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpufreq_dt_pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_cpufreq_nvmem_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_cpufreq_get_efuse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_cpufreq_init() #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.1, ptr noundef null) #9
  %call1.i = tail call ptr @of_match_node(ptr noundef nonnull @sun50i_cpufreq_match_list, ptr noundef %call.i.i) #9
  tail call void @of_node_put(ptr noundef %call.i.i) #9
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun50i_cpufreq_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5, !prof !51

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #9
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %properties.i.i, align 8
  %8 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i15 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #9
  store ptr %call.i.i15, ptr @sun50i_cpufreq_pdev, align 4
  %cmp.i.i.not = icmp ugt ptr %call.i.i15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call.i.i15 to i32
  call void @platform_driver_unregister(ptr noundef nonnull @sun50i_cpufreq_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.end10 ], [ -19, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun50i_cpufreq_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @sun50i_cpufreq_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun50i_cpufreq_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_cpufreq_nvmem_probe(ptr nocapture noundef writeonly %pdev) #3 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %len.i = alloca i32, align 4
  %name = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %name) #9
  %0 = call ptr @memset(ptr %name, i32 255, i32 7)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %1) #9
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i.i, i32 4) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %entry.cleanup41_crit_edge, label %if.end7.i.i, !prof !51

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

if.end7.i.i:                                      ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup41_crit_edge, label %if.end

if.end7.i.i.cleanup41_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

if.end:                                           ; preds = %if.end7.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #9
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %len.i, align 4, !annotation !52
  %call.i = tail call ptr @get_cpu_device(i32 noundef 0) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.sun50i_cpufreq_get_efuse.exit.thread_crit_edge, label %if.end.i

if.end.sun50i_cpufreq_get_efuse.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun50i_cpufreq_get_efuse.exit.thread

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call ptr @dev_pm_opp_of_get_opp_desc_node(ptr noundef nonnull %call.i) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.sun50i_cpufreq_get_efuse.exit.thread_crit_edge, label %if.end4.i

if.end.i.sun50i_cpufreq_get_efuse.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun50i_cpufreq_get_efuse.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @of_node_put(ptr noundef nonnull %call1.i) #9
  br label %sun50i_cpufreq_get_efuse.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = tail call ptr @of_nvmem_cell_get(ptr noundef nonnull %call1.i, ptr noundef null) #9
  tail call void @of_node_put(ptr noundef nonnull %call1.i) #9
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then11.i, label %if.end18.i

if.then11.i:                                      ; preds = %if.end8.i
  %cmp.not.i = icmp eq ptr %call9.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then11.i.sun50i_cpufreq_get_efuse.exit.thread_crit_edge, label %do.end.i

if.then11.i.sun50i_cpufreq_get_efuse.exit.thread_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun50i_cpufreq_get_efuse.exit.thread

do.end.i:                                         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call9.i to i32
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %6) #13
  br label %sun50i_cpufreq_get_efuse.exit

if.end18.i:                                       ; preds = %if.end8.i
  %call19.i = call ptr @nvmem_cell_read(ptr noundef %call9.i, ptr noundef nonnull %len.i) #9
  call void @nvmem_cell_put(ptr noundef %call9.i) #9
  %cmp.i50.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i, label %if.then21.i, label %sun50i_cpufreq_get_efuse.exit.thread80

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call19.i to i32
  br label %sun50i_cpufreq_get_efuse.exit

sun50i_cpufreq_get_efuse.exit.thread80:           ; preds = %if.end18.i
  %8 = ptrtoint ptr %call19.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call19.i, align 4
  %shr.i = lshr i32 %9, 5
  %and.i = and i32 %shr.i, 7
  %10 = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %11 = icmp ult i32 %10, 3
  %storemerge.i = select i1 %11, i32 %10, i32 0
  call void @kfree(ptr noundef %call19.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #9
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 7, ptr noundef nonnull @.str.2, i32 noundef %storemerge.i)
  br label %for.cond

sun50i_cpufreq_get_efuse.exit.thread:             ; preds = %if.then11.i.sun50i_cpufreq_get_efuse.exit.thread_crit_edge, %if.then7.i, %if.end.i.sun50i_cpufreq_get_efuse.exit.thread_crit_edge, %if.end.sun50i_cpufreq_get_efuse.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -517, %if.then11.i.sun50i_cpufreq_get_efuse.exit.thread_crit_edge ], [ -2, %if.end.i.sun50i_cpufreq_get_efuse.exit.thread_crit_edge ], [ -19, %if.end.sun50i_cpufreq_get_efuse.exit.thread_crit_edge ], [ -2, %if.then7.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #9
  br label %cleanup41

sun50i_cpufreq_get_efuse.exit:                    ; preds = %if.then21.i, %do.end.i
  %retval.0.i = phi i32 [ %7, %if.then21.i ], [ %6, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #9
  br label %cleanup41

for.cond:                                         ; preds = %if.end11.for.cond_crit_edge, %sun50i_cpufreq_get_efuse.exit.thread80
  %cpu.0 = phi i32 [ -1, %sun50i_cpufreq_get_efuse.exit.thread80 ], [ %call7, %if.end11.for.cond_crit_edge ]
  %call7 = call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %12)
  %cmp = icmp ult i32 %call7, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call8 = call ptr @get_cpu_device(i32 noundef %call7) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %for.body.free_opp_crit_edge, label %if.end11

for.body.free_opp_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_opp

if.end11:                                         ; preds = %for.body
  %call13 = call ptr @dev_pm_opp_set_prop_name(ptr noundef nonnull %call8, ptr noundef nonnull %name) #9
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %call7
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call13, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end11.free_opp.sink.split_crit_edge, label %if.end11.for.cond_crit_edge

if.end11.for.cond_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end11.free_opp.sink.split_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_opp.sink.split

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #9
  %14 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 255, i32 48)
  %16 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %fwnode.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %14, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.6, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %20 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %properties.i.i, align 8
  %22 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #9
  store ptr %call.i.i, ptr @cpufreq_dt_pdev, align 4
  %cmp.i68 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %for.end.free_opp.sink.split_crit_edge, label %if.then23

for.end.free_opp.sink.split_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_opp.sink.split

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup41

free_opp.sink.split:                              ; preds = %for.end.free_opp.sink.split_crit_edge, %if.end11.free_opp.sink.split_crit_edge
  %call13.lcssa.sink = phi ptr [ %call.i.i, %for.end.free_opp.sink.split_crit_edge ], [ %call13, %if.end11.free_opp.sink.split_crit_edge ]
  %.str.3.sink = phi ptr [ @.str.8, %for.end.free_opp.sink.split_crit_edge ], [ @.str.3, %if.end11.free_opp.sink.split_crit_edge ]
  %24 = ptrtoint ptr %call13.lcssa.sink to i32
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.3.sink) #13
  br label %free_opp

free_opp:                                         ; preds = %free_opp.sink.split, %for.body.free_opp_crit_edge
  %ret.2 = phi i32 [ %24, %free_opp.sink.split ], [ -19, %for.body.free_opp_crit_edge ]
  %call3288 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3288, i32 %25)
  %cmp3389 = icmp ult i32 %call3288, %25
  br i1 %cmp3389, label %free_opp.for.body34_crit_edge, label %free_opp.for.end40_crit_edge

free_opp.for.end40_crit_edge:                     ; preds = %free_opp
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40

free_opp.for.body34_crit_edge:                    ; preds = %free_opp
  br label %for.body34

for.body34:                                       ; preds = %if.end38.for.body34_crit_edge, %free_opp.for.body34_crit_edge
  %call3290 = phi i32 [ %call32, %if.end38.for.body34_crit_edge ], [ %call3288, %free_opp.for.body34_crit_edge ]
  %arrayidx35 = getelementptr ptr, ptr %call8.i.i, i32 %call3290
  %26 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx35, align 4
  %tobool.not.i69 = icmp eq ptr %27, null
  %cmp.i70 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i69, %cmp.i70
  br i1 %spec.select.i, label %for.body34.for.end40_crit_edge, label %if.end38

for.body34.for.end40_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40

if.end38:                                         ; preds = %for.body34
  call void @dev_pm_opp_put_prop_name(ptr noundef nonnull %27) #9
  %call32 = call i32 @cpumask_next(i32 noundef %call3290, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %cmp33 = icmp ult i32 %call32, %28
  br i1 %cmp33, label %if.end38.for.body34_crit_edge, label %if.end38.for.end40_crit_edge

if.end38.for.end40_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40

if.end38.for.body34_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34

for.end40:                                        ; preds = %if.end38.for.end40_crit_edge, %for.body34.for.end40_crit_edge, %free_opp.for.end40_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %cleanup41

cleanup41:                                        ; preds = %for.end40, %if.then23, %sun50i_cpufreq_get_efuse.exit, %sun50i_cpufreq_get_efuse.exit.thread, %if.end7.i.i.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  %retval.0 = phi i32 [ %ret.2, %for.end40 ], [ 0, %if.then23 ], [ -12, %if.end7.i.i.cleanup41_crit_edge ], [ %retval.0.i, %sun50i_cpufreq_get_efuse.exit ], [ %retval.0.i.ph, %sun50i_cpufreq_get_efuse.exit.thread ], [ -12, %entry.cleanup41_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %name) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_cpufreq_nvmem_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load ptr, ptr @cpufreq_dt_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %2) #9
  %call15 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %3)
  %cmp6 = icmp ult i32 %call15, %3
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call17 = phi i32 [ %call1, %for.body.for.body_crit_edge ], [ %call15, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %1, i32 %call17
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @dev_pm_opp_put_prop_name(ptr noundef %5) #9
  %call1 = tail call i32 @cpumask_next(i32 noundef %call17, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_prop_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_prop_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_of_get_opp_desc_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !37, !38, !39, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_sun50i_cpufreq_nvmem__183_212_sun50i_cpufreq_init6, !1, !"__initcall__kmod_sun50i_cpufreq_nvmem__183_212_sun50i_cpufreq_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 212, i32 1}
!2 = !{ptr @__exitcall_sun50i_cpufreq_exit, !3, !"__exitcall_sun50i_cpufreq_exit", i1 false, i1 false}
!3 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 219, i32 1}
!4 = !{ptr @__UNIQUE_ID_description184, !5, !"__UNIQUE_ID_description184", i1 false, i1 false}
!5 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 221, i32 1}
!6 = !{ptr @__UNIQUE_ID_file185, !7, !"__UNIQUE_ID_file185", i1 false, i1 false}
!7 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 222, i32 1}
!8 = !{ptr @__UNIQUE_ID_license186, !7, !"__UNIQUE_ID_license186", i1 false, i1 false}
!9 = !{ptr @sun50i_cpufreq_pdev, !10, !"sun50i_cpufreq_pdev", i1 false, i1 false}
!10 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 25, i32 50}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 203, i32 35}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 177, i32 28}
!15 = !{ptr @sun50i_cpufreq_match_list, !16, !"sun50i_cpufreq_match_list", i1 false, i1 false}
!16 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 166, i32 34}
!17 = !{ptr @sun50i_cpufreq_driver, !18, !"sun50i_cpufreq_driver", i1 false, i1 false}
!18 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 158, i32 31}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 104, i32 31}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 117, i32 4}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sun50i_cpufreq_nvmem_probe._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @sun50i_cpufreq_nvmem_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 122, i32 52}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 130, i32 2}
!31 = !{ptr @sun50i_cpufreq_nvmem_probe._entry.7, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sun50i_cpufreq_nvmem_probe._entry_ptr.9, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 51, i32 11}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 61, i32 4}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sun50i_cpufreq_get_efuse._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @sun50i_cpufreq_get_efuse._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @cpufreq_dt_pdev, !41, !"cpufreq_dt_pdev", i1 false, i1 false}
!41 = !{!"../drivers/cpufreq/sun50i-cpufreq-nvmem.c", i32 25, i32 32}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{!"auto-init"}
