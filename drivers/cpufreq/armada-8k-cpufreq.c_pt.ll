; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/armada-8k-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/armada-8k-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.freq_table = type { ptr, [4 x i32] }

@__initcall__kmod_armada_8k_cpufreq__183_196_armada_8k_cpufreq_init6 = internal global ptr @armada_8k_cpufreq_init, section ".initcall6.init", align 4
@armada_8k_pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_armada_8k_cpufreq_exit = internal global ptr @armada_8k_cpufreq_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [71 x i8] c"armada_8k_cpufreq.author=Gregory Clement <gregory.clement@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [55 x i8] c"armada_8k_cpufreq.description=Armada 8K cpufreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [57 x i8] c"armada_8k_cpufreq.file=drivers/cpufreq/armada-8k-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [30 x i8] c"armada_8k_cpufreq.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"marvell,ap806-cpu-clock\00", [40 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@armada_8k_cpufreq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013armada_8k_cpufreq: Cannot get CPU %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"armada_8k_cpufreq_init\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/cpufreq/armada-8k-cpufreq.c\00", [60 x i8] zeroinitializer }, align 32
@armada_8k_cpufreq_init._entry_ptr = internal global ptr @armada_8k_cpufreq_init._entry, section ".printk_index", align 4
@armada_8k_cpufreq_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013armada_8k_cpufreq: Cannot get clock for CPU %d\0A\00", [46 x i8] zeroinitializer }, align 32
@armada_8k_cpufreq_init._entry_ptr.6 = internal global ptr @armada_8k_cpufreq_init._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpufreq-dt\00", [21 x i8] zeroinitializer }, align 32
@armada_8k_add_opp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 76, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get clock rate for this CPU\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"armada_8k_add_opp\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@armada_8k_add_opp._entry_ptr = internal global ptr @armada_8k_add_opp._entry, section ".printk_index", align 4
@opps_div = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], section ".init.rodata", align 4
@armada_8k_get_sharing_cpus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014armada_8k_cpufreq: Failed to get cpu%d device\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"armada_8k_get_sharing_cpus\00", [37 x i8] zeroinitializer }, align 32
@armada_8k_get_sharing_cpus._entry_ptr = internal global ptr @armada_8k_get_sharing_cpus._entry, section ".printk_index", align 4
@armada_8k_get_sharing_cpus._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014armada_8k_cpufreq: Cannot get clock for CPU %d\0A\00", [46 x i8] zeroinitializer }, align 32
@armada_8k_get_sharing_cpus._entry_ptr.16 = internal global ptr @armada_8k_get_sharing_cpus._entry.14, section ".printk_index", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"armada_8k_pdev\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 30, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 130, i32 45 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 156, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 163, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 182, i32 51 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 76, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 49, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private constant [39 x i8] c"../drivers/cpufreq/armada-8k-cpufreq.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 55, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 108, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_armada_8k_cpufreq_exit, ptr @__initcall__kmod_armada_8k_cpufreq__183_196_armada_8k_cpufreq_init6, ptr @armada_8k_add_opp._entry, ptr @armada_8k_add_opp._entry_ptr, ptr @armada_8k_cpufreq_exit, ptr @armada_8k_cpufreq_init._entry, ptr @armada_8k_cpufreq_init._entry.4, ptr @armada_8k_cpufreq_init._entry_ptr, ptr @armada_8k_cpufreq_init._entry_ptr.6, ptr @armada_8k_get_sharing_cpus._entry, ptr @armada_8k_get_sharing_cpus._entry.14, ptr @armada_8k_get_sharing_cpus._entry_ptr, ptr @armada_8k_get_sharing_cpus._entry_ptr.16, ptr @armada_8k_pdev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_8k_pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_8k_cpufreq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_8k_cpufreq_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_8k_add_opp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_8k_get_sharing_cpus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_8k_get_sharing_cpus._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_8k_cpufreq_init() #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %cpus = alloca %struct.cpumask, align 4
  %shared_cpus = alloca %struct.cpumask, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpus) #8
  %0 = ptrtoint ptr %cpus to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpus, align 4, !annotation !57
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call) #8
  br i1 %call1, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @of_node_put(ptr noundef %call) #8
  br label %cleanup36

if.end:                                           ; preds = %lor.lhs.false
  tail call void @of_node_put(ptr noundef nonnull %call) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %1) #8
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i.i, i32 20) #8
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %if.end.cleanup36_crit_edge, label %if.end7.i.i, !prof !58

if.end.cleanup36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

if.end7.i.i:                                      ; preds = %if.end
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #11
  %tobool4.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not, label %if.end7.i.i.cleanup36_crit_edge, label %if.end6

if.end7.i.i.cleanup36_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

if.end6:                                          ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i66 = add i32 %5, 31
  %6 = lshr i32 %sub.i.i66, 3
  %mul.i.i = and i32 %6, 536870908
  %7 = call ptr @memcpy(ptr %cpus, ptr @__cpu_possible_mask, i32 %mul.i.i)
  %call789 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %cpus) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call789, i32 %5)
  %cmp90 = icmp ult i32 %call789, %5
  br i1 %cmp90, label %if.end6.for.body_crit_edge, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end6.for.body_crit_edge
  %call792 = phi i32 [ %call7, %cleanup.for.body_crit_edge ], [ %call789, %if.end6.for.body_crit_edge ]
  %opps_index.091 = phi i32 [ %opps_index.1, %cleanup.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shared_cpus) #8
  %8 = ptrtoint ptr %shared_cpus to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %shared_cpus, align 4, !annotation !57
  %call8 = call ptr @get_cpu_device(i32 noundef %call792) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end, label %if.end12

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call792) #13
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %call13 = call ptr @clk_get(ptr noundef nonnull %call8, ptr noundef null) #8
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end18, label %if.end22

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call792) #13
  %9 = ptrtoint ptr %call13 to i32
  br label %cleanup.thread

if.end22:                                         ; preds = %if.end12
  %call23 = call fastcc i32 @armada_8k_add_opp(ptr noundef %call13, ptr noundef nonnull %call8, ptr noundef nonnull %call8.i.i, i32 noundef %opps_index.091) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_put(ptr noundef %call13) #8
  br label %cleanup.thread

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %opps_index.091, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i67 = add i32 %10, 31
  %11 = lshr i32 %sub.i.i67, 3
  %mul.i.i68 = and i32 %11, 536870908
  %12 = call ptr @memset(ptr %shared_cpus, i32 0, i32 %mul.i.i68)
  call fastcc void @armada_8k_get_sharing_cpus(ptr noundef %call13, ptr noundef nonnull %shared_cpus) #14
  %call27 = call i32 @dev_pm_opp_set_sharing_cpus(ptr noundef nonnull %call8, ptr noundef nonnull %shared_cpus) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = call i32 @__bitmap_andnot(ptr noundef nonnull %cpus, ptr noundef nonnull %cpus, ptr noundef nonnull %shared_cpus, i32 noundef %13) #8
  call void @clk_put(ptr noundef %call13) #8
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then25, %do.end18
  %ret.1.ph = phi i32 [ %call23, %if.then25 ], [ %9, %do.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shared_cpus) #8
  br label %remove_opp

cleanup:                                          ; preds = %if.end26, %do.end
  %opps_index.1 = phi i32 [ %inc, %if.end26 ], [ %opps_index.091, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shared_cpus) #8
  %call7 = call i32 @cpumask_next(i32 noundef %call792, ptr noundef nonnull %cpus) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call7, %14
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end6.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %15 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %16 = call ptr @memset(ptr %15, i32 255, i32 48)
  %17 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %fwnode.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %15, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.7, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %properties.i.i, align 8
  %23 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i75 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  store ptr %call.i.i75, ptr @armada_8k_pdev, align 4
  %cmp.i.i.not = icmp ugt ptr %call.i.i75, inttoptr (i32 -4096 to ptr)
  %24 = ptrtoint ptr %call.i.i75 to i32
  br i1 %cmp.i.i.not, label %for.end.remove_opp_crit_edge, label %if.end35

for.end.remove_opp_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_opp

if.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i75, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup36

remove_opp:                                       ; preds = %for.end.remove_opp_crit_edge, %cleanup.thread
  %ret.2 = phi i32 [ %24, %for.end.remove_opp_crit_edge ], [ %ret.1.ph, %cleanup.thread ]
  call fastcc void @armada_8k_cpufreq_free_table(ptr noundef nonnull %call8.i.i)
  br label %cleanup36

cleanup36:                                        ; preds = %remove_opp, %if.end35, %if.end7.i.i.cleanup36_crit_edge, %if.end.cleanup36_crit_edge, %if.then
  %retval.0 = phi i32 [ %ret.2, %remove_opp ], [ 0, %if.end35 ], [ -19, %if.then ], [ -12, %if.end7.i.i.cleanup36_crit_edge ], [ -12, %if.end.cleanup36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpus) #8
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @armada_8k_cpufreq_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @armada_8k_pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #8
  tail call fastcc void @armada_8k_cpufreq_free_table(ptr noundef %2)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @armada_8k_cpufreq_free_table(ptr noundef %freq_tables) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.not32 = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.not32, label %entry.for.end16_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end16

for.body:                                         ; preds = %for.inc14.for.body_crit_edge, %entry.for.body_crit_edge
  %opps_index.033 = phi i32 [ %inc15, %for.inc14.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.freq_table, ptr %freq_tables, i32 %opps_index.033
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.end16_crit_edge, label %for.body3.preheader

for.body.for.end16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end16

for.body3.preheader:                              ; preds = %for.body
  %arrayidx5 = getelementptr %struct.freq_table, ptr %freq_tables, i32 %opps_index.033, i32 1, i32 0
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp6 = icmp eq i32 %4, 0
  br i1 %cmp6, label %for.body3.preheader.for.inc14_crit_edge, label %if.end8

for.body3.preheader.for.inc14_crit_edge:          ; preds = %for.body3.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc14

if.end8:                                          ; preds = %for.body3.preheader
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @dev_pm_opp_remove(ptr noundef %6, i32 noundef %4) #8
  %arrayidx5.1 = getelementptr %struct.freq_table, ptr %freq_tables, i32 %opps_index.033, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx5.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.1 = icmp eq i32 %8, 0
  br i1 %cmp6.1, label %if.end8.for.inc14_crit_edge, label %if.end8.1

if.end8.for.inc14_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc14

if.end8.1:                                        ; preds = %if.end8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  tail call void @dev_pm_opp_remove(ptr noundef %10, i32 noundef %8) #8
  %arrayidx5.2 = getelementptr %struct.freq_table, ptr %freq_tables, i32 %opps_index.033, i32 1, i32 2
  %11 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx5.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6.2 = icmp eq i32 %12, 0
  br i1 %cmp6.2, label %if.end8.1.for.inc14_crit_edge, label %if.end8.2

if.end8.1.for.inc14_crit_edge:                    ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc14

if.end8.2:                                        ; preds = %if.end8.1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  tail call void @dev_pm_opp_remove(ptr noundef %14, i32 noundef %12) #8
  %arrayidx5.3 = getelementptr %struct.freq_table, ptr %freq_tables, i32 %opps_index.033, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx5.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6.3 = icmp eq i32 %16, 0
  br i1 %cmp6.3, label %if.end8.2.for.inc14_crit_edge, label %if.end8.3

if.end8.2.for.inc14_crit_edge:                    ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc14

if.end8.3:                                        ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  tail call void @dev_pm_opp_remove(ptr noundef %18, i32 noundef %16) #8
  br label %for.inc14

for.inc14:                                        ; preds = %if.end8.3, %if.end8.2.for.inc14_crit_edge, %if.end8.1.for.inc14_crit_edge, %if.end8.for.inc14_crit_edge, %for.body3.preheader.for.inc14_crit_edge
  %inc15 = add i32 %opps_index.033, 1
  %cmp.not = icmp sgt i32 %inc15, %call4.i.i
  br i1 %cmp.not, label %for.inc14.for.end16_crit_edge, label %for.inc14.for.body_crit_edge

for.inc14.for.body_crit_edge:                     ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc14.for.end16_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end16

for.end16:                                        ; preds = %for.inc14.for.end16_crit_edge, %for.body.for.end16_crit_edge, %entry.for.end16_crit_edge
  tail call void @kfree(ptr noundef %freq_tables) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @armada_8k_add_opp(ptr noundef %clk, ptr noundef %cpu_dev, ptr nocapture noundef writeonly %freq_tables, i32 noundef %opps_index) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_get_rate(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cpu_dev, ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.freq_table, ptr %freq_tables, i32 %opps_index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cpu_dev, ptr %arrayidx, align 4
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %if.end
  %i.023 = phi i32 [ 0, %if.end ], [ %inc, %if.end6.for.body_crit_edge ]
  %arrayidx2 = getelementptr [4 x i32], ptr @opps_div, i32 0, i32 %i.023
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx2, align 4
  %div = udiv i32 %call, %2
  %call3 = tail call i32 @dev_pm_opp_add(ptr noundef %cpu_dev, i32 noundef %div, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %arrayidx9 = getelementptr %struct.freq_table, ptr %freq_tables, i32 %opps_index, i32 1, i32 %i.023
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div, ptr %arrayidx9, align 4
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.end6.cleanup_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end6.cleanup_crit_edge ], [ %call3, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @armada_8k_get_sharing_cpus(ptr noundef %cur_clk, ptr noundef %cpumask) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call24 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call24, i32 %0)
  %cmp25 = icmp ult i32 %call24, %0
  br i1 %cmp25, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %call26 = phi i32 [ %call, %cleanup.for.body_crit_edge ], [ %call24, %entry.for.body_crit_edge ]
  %call1 = tail call ptr @get_cpu_device(i32 noundef %call26) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call26) #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call3 = tail call ptr @clk_get(ptr noundef nonnull %call1, ptr noundef null) #8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %if.else

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call26) #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call11 = tail call zeroext i1 @clk_is_match(ptr noundef %call3, ptr noundef %cur_clk) #8
  br i1 %call11, label %if.then12, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call26)
  %cmp.not.i.i.i = icmp ugt i32 %1, %call26
  br i1 %cmp.not.i.i.i, label %if.then12.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then12.cpumask_set_cpu.exit_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then12
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !59

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %if.then12.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %call26, ptr noundef %cpumask) #8
  br label %if.end13

if.end13:                                         ; preds = %cpumask_set_cpu.exit, %if.else.if.end13_crit_edge
  tail call void @clk_put(ptr noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end8, %do.end
  %call = tail call i32 @cpumask_next(i32 noundef %call26, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %2
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_is_match(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { cold nounwind }
attributes #14 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_armada_8k_cpufreq__183_196_armada_8k_cpufreq_init6, !1, !"__initcall__kmod_armada_8k_cpufreq__183_196_armada_8k_cpufreq_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/armada-8k-cpufreq.c", i32 196, i32 1}
!2 = !{ptr @__exitcall_armada_8k_cpufreq_exit, !3, !"__exitcall_armada_8k_cpufreq_exit", i1 false, i1 false}
!3 = !{!"../drivers/cpufreq/armada-8k-cpufreq.c", i32 205, i32 1}
!4 = !{ptr @__UNIQUE_ID_author184, !5, !"__UNIQUE_ID_author184", i1 false, i1 false}
!5 = !{!"../drivers/cpufreq/armada-8k-cpufreq.c", i32 213, i32 1}
!6 = !{ptr @__UNIQUE_ID_description185, !7, !"__UNIQUE_ID_description185", i1 false, i1 false}
!7 = !{!"../drivers/cpufreq/armada-8k-cpufreq.c", i32 214, i32 1}
!8 = !{ptr @__UNIQUE_ID_file186, !9, !"__UNIQUE_ID_file186", i1 false, i1 false}
!9 = !{!"../drivers/cpufreq/armada-8k-cpufreq.c", i32 215, i32 1}
!10 = !{ptr @__UNIQUE_ID_license187, !9, !"__UNIQUE_ID_license187", i1 false, i1 false}
!11 = !{ptr @armada_8k_pdev, !12, !"armada_8k_pdev", i1 false, i1 false}
!12 = !{!"../drivers/cpufreq/armada-8k-cpufreq.c", i32 30, i32 32}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/cpufreq/armada-8k-cpufreq.c", i32 130, i32 45}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/cpufreq/armada-8k-cpufreq.c", i32 156, i32 4}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @armada_8k_cpufreq_init._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @armada_8k_cpufreq_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/cpufreq/armada-8k-cpufreq.c", i32 163, i32 4}
!23 = !{ptr @armada_8k_cpufreq_init._entry.4, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @armada_8k_cpufreq_init._entry_ptr.6, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/cpufreq/armada-8k-cpufreq.c", i32 182, i32 51}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/cpufreq/armada-8k-cpufreq.c", i32 76, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @armada_8k_add_opp._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @armada_8k_add_opp._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @opps_div, !35, !"opps_div", i1 false, i1 false}
!35 = !{!"../drivers/cpufreq/armada-8k-cpufreq.c", i32 28, i32 18}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/cpufreq/armada-8k-cpufreq.c", i32 49, i32 4}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @armada_8k_get_sharing_cpus._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @armada_8k_get_sharing_cpus._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/cpufreq/armada-8k-cpufreq.c", i32 55, i32 4}
!43 = !{ptr @armada_8k_get_sharing_cpus._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @armada_8k_get_sharing_cpus._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{!"branch_weights", i32 2000, i32 1}
