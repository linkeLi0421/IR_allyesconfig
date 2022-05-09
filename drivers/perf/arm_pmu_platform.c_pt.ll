; ModuleID = '/llk/IR_all_yes/drivers/perf/arm_pmu_platform.c_pt.bc'
source_filename = "../drivers/perf/arm_pmu_platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.arm_pmu = type { %struct.pmu, %struct.cpumask, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i32], [2 x i32], ptr, ptr, %struct.hlist_node, %struct.notifier_block, [5 x ptr], i64, i32 }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pmu_hw_events = type { [32 x ptr], [1 x i32], %struct.raw_spinlock, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pmu_probe_info = type { i32, i32, ptr }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"secure-reg-access\00", [46 x i8] zeroinitializer }, align 32
@arm_pmu_device_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hw perfevents: failed to probe PMU!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"arm_pmu_device_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/perf/arm_pmu_platform.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arm_pmu_device_probe._entry_ptr = internal global ptr @arm_pmu_device_probe._entry, section ".printk_index", align 4
@arm_pmu_device_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 234, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"hw perfevents: failed to register PMU devices!\0A\00", [48 x i8] zeroinitializer }, align 32
@arm_pmu_device_probe._entry_ptr.8 = internal global ptr @arm_pmu_device_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to count PMU IRQs\0A\00", [38 x i8] zeroinitializer }, align 32
@pmu_parse_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 112, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"hw perfevents: no irqs for PMU, sampling events not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pmu_parse_irqs\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pmu_parse_irqs._entry_ptr = internal global ptr @pmu_parse_irqs._entry, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@pmu_parse_irqs._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.3, i32 125, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"hw perfevents: no interrupt-affinity property, guessing.\0A\00", [38 x i8] zeroinitializer }, align 32
@pmu_parse_irqs._entry_ptr.15 = internal global ptr @pmu_parse_irqs._entry.13, section ".printk_index", align 4
@pmu_parse_irqs._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.3, i32 135, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"hw perfevents: multiple PPIs or mismatched SPI/PPI detected\0A\00", [35 x i8] zeroinitializer }, align 32
@pmu_parse_irqs._entry_ptr.18 = internal global ptr @pmu_parse_irqs._entry.16, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@pmu_parse_irqs._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.3, i32 146, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"hw perfevents: multiple PMU IRQs for the same CPU detected\0A\00", [36 x i8] zeroinitializer }, align 32
@pmu_parse_irqs._entry_ptr.21 = internal global ptr @pmu_parse_irqs._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"interrupt-affinity\00", [45 x i8] zeroinitializer }, align 32
@pmu_parse_irq_affinity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 81, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"hw perfevents: failed to parse interrupt-affinity[%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pmu_parse_irq_affinity\00", [41 x i8] zeroinitializer }, align 32
@pmu_parse_irq_affinity._entry_ptr = internal global ptr @pmu_parse_irq_affinity._entry, section ".printk_index", align 4
@pmu_parse_irq_affinity._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 87, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"hw perfevents: failed to find logical CPU for %pOFn\0A\00", [43 x i8] zeroinitializer }, align 32
@pmu_parse_irq_affinity._entry_ptr.27 = internal global ptr @pmu_parse_irq_affinity._entry.25, section ".printk_index", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@probe_current_pmu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016hw perfevents: probing PMU on CPU %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"probe_current_pmu\00", [46 x i8] zeroinitializer }, align 32
@probe_current_pmu._entry_ptr = internal global ptr @probe_current_pmu._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 209, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 224, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 234, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 105, i32 39 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 112, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 125, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 135, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 146, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 63, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 81, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 87, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 108, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [35 x i8] c"../drivers/perf/arm_pmu_platform.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 33, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @arm_pmu_device_probe._entry, ptr @arm_pmu_device_probe._entry.6, ptr @arm_pmu_device_probe._entry_ptr, ptr @arm_pmu_device_probe._entry_ptr.8, ptr @pmu_parse_irq_affinity._entry, ptr @pmu_parse_irq_affinity._entry.25, ptr @pmu_parse_irq_affinity._entry_ptr, ptr @pmu_parse_irq_affinity._entry_ptr.27, ptr @pmu_parse_irqs._entry, ptr @pmu_parse_irqs._entry.13, ptr @pmu_parse_irqs._entry.16, ptr @pmu_parse_irqs._entry.19, ptr @pmu_parse_irqs._entry_ptr, ptr @pmu_parse_irqs._entry_ptr.15, ptr @pmu_parse_irqs._entry_ptr.18, ptr @pmu_parse_irqs._entry_ptr.21, ptr @probe_current_pmu._entry, ptr @probe_current_pmu._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_pmu_device_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_pmu_device_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_parse_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_parse_irqs._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_parse_irqs._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_parse_irqs._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_parse_irq_affinity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_parse_irq_affinity._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_current_pmu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arm_pmu_device_probe(ptr noundef %pdev, ptr nocapture noundef readnone %of_table, ptr noundef readonly %probe_table) local_unnamed_addr #0 align 64 {
entry:
  %args.i.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @armpmu_alloc() #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %plat_device = getelementptr inbounds %struct.arm_pmu, ptr %call, i32 0, i32 21
  %0 = ptrtoint ptr %plat_device to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %plat_device, align 8
  %hw_events1.i = getelementptr inbounds %struct.arm_pmu, ptr %call, i32 0, i32 22
  %1 = ptrtoint ptr %hw_events1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_events1.i, align 4
  %call.i = tail call i32 @platform_irq_count(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %pmu_parse_irqs.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %3 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end.i.if.end15.i_crit_edge [
    i32 0, label %do.end.i
    i32 1, label %if.then9.i
  ]

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  %capabilities.i = getelementptr inbounds %struct.pmu, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities.i, align 8
  %or.i = or i32 %5, 1
  store i32 %or.i, ptr %capabilities.i, align 8
  %supported_cpus.i = getelementptr inbounds %struct.arm_pmu, ptr %call, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %6, 31
  %7 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %7, 536870908
  %8 = call ptr @memset(ptr %supported_cpus.i, i32 255, i32 %mul.i.i.i)
  br label %if.end5

if.then9.i:                                       ; preds = %if.end.i
  %call10.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.then9.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.then9.i.if.end15.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.then9.i
  %call.i.i = tail call zeroext i1 @irq_check_status_bit(i32 noundef %call10.i, i32 noundef 131072) #6
  br i1 %call.i.i, label %if.then12.i, label %land.lhs.true.i.if.end15.i_crit_edge

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %hw_events1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_events1.i, align 4
  %supported_cpus.i.i = getelementptr inbounds %struct.arm_pmu, ptr %call, i32 0, i32 1
  %call.i133.i = tail call i32 @irq_get_percpu_devid_partition(i32 noundef %call10.i, ptr noundef %supported_cpus.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133.i)
  %tobool.not.i.i = icmp eq i32 %call.i133.i, 0
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.i, label %if.then12.i.out_free_crit_edge

if.then12.i.out_free_crit_edge:                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

for.cond.preheader.i.i:                           ; preds = %if.then12.i
  %call314.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %supported_cpus.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call314.i.i, i32 %11)
  %cmp15.i.i = icmp ult i32 %call314.i.i, %11
  br i1 %cmp15.i.i, label %for.body.lr.ph.i.i, label %for.cond.preheader.i.i.if.end5_crit_edge

for.cond.preheader.i.i.if.end5_crit_edge:         ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %irq4.i.i = getelementptr inbounds %struct.pmu_hw_events, ptr %10, i32 0, i32 4
  %12 = ptrtoint ptr %irq4.i.i to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %call316.i.i = phi i32 [ %call314.i.i, %for.body.lr.ph.i.i ], [ %call3.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call316.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, %12
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call10.i, ptr %15, align 4
  %call3.i.i = tail call i32 @cpumask_next(i32 noundef %call316.i.i, ptr noundef %supported_cpus.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i = icmp ult i32 %call3.i.i, %17
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end5_crit_edge

for.body.i.i.if.end5_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end15.i:                                       ; preds = %land.lhs.true.i.if.end15.i_crit_edge, %if.then9.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp16.not.i = icmp eq i32 %18, 1
  br i1 %cmp16.not.i, label %if.end15.i.for.body.lr.ph.i_crit_edge, label %land.lhs.true17.i

if.end15.i.for.body.lr.ph.i_crit_edge:            ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.i

land.lhs.true17.i:                                ; preds = %if.end15.i
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %call.i134.i = tail call ptr @of_find_property(ptr noundef %20, ptr noundef nonnull @.str.22, ptr noundef null) #6
  %tobool.i.not.i = icmp eq ptr %call.i134.i, null
  br i1 %tobool.i.not.i, label %do.end22.i, label %land.lhs.true17.i.for.body.lr.ph.i_crit_edge

land.lhs.true17.i.for.body.lr.ph.i_crit_edge:     ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.i

do.end22.i:                                       ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %do.end22.i, %land.lhs.true17.i.for.body.lr.ph.i_crit_edge, %if.end15.i.for.body.lr.ph.i_crit_edge
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %irq72.i = getelementptr inbounds %struct.pmu_hw_events, ptr %2, i32 0, i32 4
  %21 = ptrtoint ptr %irq72.i to i32
  %supported_cpus90.i = getelementptr inbounds %struct.arm_pmu, ptr %call, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0152.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call26.i = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0152.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 1
  br i1 %cmp27.i, label %do.end39.i, label %if.end54.i, !prof !63

do.end39.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 131, i32 noundef 9, ptr noundef null) #6
  br label %for.inc.i

if.end54.i:                                       ; preds = %for.body.i
  %call.i135.i = call zeroext i1 @irq_check_status_bit(i32 noundef %call26.i, i32 noundef 131072) #6
  br i1 %call.i135.i, label %do.end59.i, label %if.end60.i

do.end59.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.17) #9
  br label %out_free

if.end60.i:                                       ; preds = %if.end54.i
  %22 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i.i = call ptr @of_find_property(ptr noundef %23, ptr noundef nonnull @.str.22, ptr noundef null) #6
  %tobool.i.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.i.not.i.i, label %if.end60.i.if.end64.i_crit_edge, label %if.end.i.i

if.end60.i.if.end64.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

if.end.i.i:                                       ; preds = %if.end60.i
  %24 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i.i) #6
  %26 = call ptr @memset(ptr %args.i.i.i, i32 255, i32 72)
  %call.i21.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %25, ptr noundef nonnull @.str.22, ptr noundef null, i32 noundef 0, i32 noundef %i.0152.i, ptr noundef nonnull %args.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i21.i.i, 0
  br i1 %tobool.not.i.i.i, label %of_parse_phandle.exit.i.i, label %of_parse_phandle.exit.thread.i.i

of_parse_phandle.exit.thread.i.i:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i) #6
  br label %pmu_parse_irq_affinity.exit.thread.i

of_parse_phandle.exit.i.i:                        ; preds = %if.end.i.i
  %27 = ptrtoint ptr %args.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %args.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i) #6
  %tobool.not.i136.i = icmp eq ptr %28, null
  br i1 %tobool.not.i136.i, label %of_parse_phandle.exit.i.i.pmu_parse_irq_affinity.exit.thread.i_crit_edge, label %if.end4.i.i

of_parse_phandle.exit.i.i.pmu_parse_irq_affinity.exit.thread.i_crit_edge: ; preds = %of_parse_phandle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pmu_parse_irq_affinity.exit.thread.i

pmu_parse_irq_affinity.exit.thread.i:             ; preds = %of_parse_phandle.exit.i.i.pmu_parse_irq_affinity.exit.thread.i_crit_edge, %of_parse_phandle.exit.thread.i.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %i.0152.i) #9
  br label %out_free

if.end4.i.i:                                      ; preds = %of_parse_phandle.exit.i.i
  %call5.i.i = call i32 @of_cpu_node_to_id(ptr noundef nonnull %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i137.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i137.i, label %pmu_parse_irq_affinity.exit.i, label %pmu_parse_irq_affinity.exit.thread166.i

pmu_parse_irq_affinity.exit.thread166.i:          ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %28) #6
  br label %if.end64.i

pmu_parse_irq_affinity.exit.i:                    ; preds = %if.end4.i.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef nonnull %28) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  call void @of_node_put(ptr noundef nonnull %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp62.i = icmp slt i32 %29, 0
  br i1 %cmp62.i, label %pmu_parse_irq_affinity.exit.i.out_free_crit_edge, label %pmu_parse_irq_affinity.exit.i.if.end64.i_crit_edge

pmu_parse_irq_affinity.exit.i.if.end64.i_crit_edge: ; preds = %pmu_parse_irq_affinity.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

pmu_parse_irq_affinity.exit.i.out_free_crit_edge: ; preds = %pmu_parse_irq_affinity.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end64.i:                                       ; preds = %pmu_parse_irq_affinity.exit.i.if.end64.i_crit_edge, %pmu_parse_irq_affinity.exit.thread166.i, %if.end60.i.if.end64.i_crit_edge
  %retval.0.i138165.i = phi i32 [ %29, %pmu_parse_irq_affinity.exit.i.if.end64.i_crit_edge ], [ %call5.i.i, %pmu_parse_irq_affinity.exit.thread166.i ], [ %i.0152.i, %if.end60.i.if.end64.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %30 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i138165.i, i32 %30)
  %cmp65.not.i = icmp ult i32 %retval.0.i138165.i, %30
  br i1 %cmp65.not.i, label %do.body68.i, label %if.end64.i.for.inc.i_crit_edge

if.end64.i.for.inc.i_crit_edge:                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.body68.i:                                      ; preds = %if.end64.i
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %retval.0.i138165.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %32, %21
  %33 = inttoptr i32 %add.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool74.not.i = icmp eq i32 %35, 0
  br i1 %tobool74.not.i, label %if.end79.i, label %do.end78.i

do.end78.i:                                       ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.20) #9
  br label %out_free

if.end79.i:                                       ; preds = %do.body68.i
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call26.i, ptr %33, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %37 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %retval.0.i138165.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %37, %retval.0.i138165.i
  br i1 %cmp.not.i.i.i.i, label %if.end79.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.end79.i.cpumask_set_cpu.exit.i_crit_edge:      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.end79.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !64

land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, %if.end79.i.cpumask_set_cpu.exit.i_crit_edge
  call void @_set_bit(i32 noundef %retval.0.i138165.i, ptr noundef %supported_cpus90.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %cpumask_set_cpu.exit.i, %if.end64.i.for.inc.i_crit_edge, %do.end39.i
  %inc.i = add nuw nsw i32 %i.0152.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end5_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

pmu_parse_irqs.exit:                              ; preds = %if.end
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call.i, ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool3.not = icmp eq i32 %call3.i, 0
  br i1 %tobool3.not, label %pmu_parse_irqs.exit.if.end5_crit_edge, label %pmu_parse_irqs.exit.out_free_crit_edge

pmu_parse_irqs.exit.out_free_crit_edge:           ; preds = %pmu_parse_irqs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

pmu_parse_irqs.exit.if.end5_crit_edge:            ; preds = %pmu_parse_irqs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %pmu_parse_irqs.exit.if.end5_crit_edge, %for.inc.i.if.end5_crit_edge, %for.body.i.i.if.end5_crit_edge, %for.cond.preheader.i.i.if.end5_crit_edge, %do.end.i
  %call6 = call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %38 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node, align 8
  %call.i53 = call ptr @of_find_property(ptr noundef %39, ptr noundef nonnull @.str, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i53, null
  %secure_access = getelementptr inbounds %struct.arm_pmu, ptr %call, i32 0, i32 18
  %frombool = zext i1 %tobool.i to i8
  %40 = ptrtoint ptr %secure_access to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %frombool, ptr %secure_access, align 4
  %call10 = call i32 %call6(ptr noundef nonnull %call) #6
  br label %if.end15

if.else:                                          ; preds = %if.end5
  %tobool11.not = icmp eq ptr %probe_table, null
  br i1 %tobool11.not, label %if.else.if.end18_crit_edge, label %if.then12

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then12:                                        ; preds = %if.else
  %supported_cpus = getelementptr inbounds %struct.arm_pmu, ptr %call, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %41, 31
  %42 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %42, 536870908
  %43 = call ptr @memset(ptr %supported_cpus, i32 255, i32 %mul.i.i)
  %44 = call i32 @llvm.read_register.i32(metadata !53) #6
  %and.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i54 = add i32 %47, 1
  store volatile i32 %add.i.i54, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !65
  %48 = call i32 @llvm.read_register.i32(metadata !53) #6
  %and.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu1.i, align 4
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #11, !srcloc !66
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %51) #9
  %init22.i = getelementptr inbounds %struct.pmu_probe_info, ptr %probe_table, i32 0, i32 2
  %53 = ptrtoint ptr %init22.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init22.i, align 4
  %cmp.not23.i = icmp eq ptr %54, null
  br i1 %cmp.not23.i, label %if.then12.probe_current_pmu.exit_crit_edge, label %for.body.i55.preheader

if.then12.probe_current_pmu.exit_crit_edge:       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %probe_current_pmu.exit

for.body.i55.preheader:                           ; preds = %if.then12
  %mask.i98 = getelementptr inbounds %struct.pmu_probe_info, ptr %probe_table, i32 0, i32 1
  %55 = ptrtoint ptr %mask.i98 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mask.i98, align 4
  %and.i99 = and i32 %56, %52
  %57 = ptrtoint ptr %probe_table to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %probe_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i99, i32 %58)
  %cmp9.not.i100 = icmp eq i32 %and.i99, %58
  br i1 %cmp9.not.i100, label %for.body.i55.preheader.if.end.i56_crit_edge, label %for.body.i55.preheader.for.cond.i_crit_edge

for.body.i55.preheader.for.cond.i_crit_edge:      ; preds = %for.body.i55.preheader
  br label %for.cond.i

for.body.i55.preheader.if.end.i56_crit_edge:      ; preds = %for.body.i55.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i56

for.cond.i:                                       ; preds = %for.body.i55.for.cond.i_crit_edge, %for.body.i55.preheader.for.cond.i_crit_edge
  %info.addr.024.i101 = phi ptr [ %incdec.ptr.i, %for.body.i55.for.cond.i_crit_edge ], [ %probe_table, %for.body.i55.preheader.for.cond.i_crit_edge ]
  %init.i = getelementptr %struct.pmu_probe_info, ptr %info.addr.024.i101, i32 1, i32 2
  %59 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init.i, align 4
  %cmp.not.i = icmp eq ptr %60, null
  br i1 %cmp.not.i, label %for.cond.i.probe_current_pmu.exit_crit_edge, label %for.body.i55

for.cond.i.probe_current_pmu.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %probe_current_pmu.exit

for.body.i55:                                     ; preds = %for.cond.i
  %incdec.ptr.i = getelementptr %struct.pmu_probe_info, ptr %info.addr.024.i101, i32 1
  %mask.i = getelementptr %struct.pmu_probe_info, ptr %info.addr.024.i101, i32 1, i32 1
  %61 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %62, %52
  %63 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %incdec.ptr.i, align 4
  %cmp9.not.i = icmp eq i32 %and.i, %64
  br i1 %cmp9.not.i, label %for.body.i55.if.end.i56_crit_edge, label %for.body.i55.for.cond.i_crit_edge

for.body.i55.for.cond.i_crit_edge:                ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.body.i55.if.end.i56_crit_edge:                ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i56

if.end.i56:                                       ; preds = %for.body.i55.if.end.i56_crit_edge, %for.body.i55.preheader.if.end.i56_crit_edge
  %.lcssa = phi ptr [ %54, %for.body.i55.preheader.if.end.i56_crit_edge ], [ %60, %for.body.i55.if.end.i56_crit_edge ]
  %call11.i = call i32 %.lcssa(ptr noundef nonnull %call) #6
  br label %probe_current_pmu.exit

probe_current_pmu.exit:                           ; preds = %if.end.i56, %for.cond.i.probe_current_pmu.exit_crit_edge, %if.then12.probe_current_pmu.exit_crit_edge
  %ret.0.i = phi i32 [ %call11.i, %if.end.i56 ], [ -19, %if.then12.probe_current_pmu.exit_crit_edge ], [ -19, %for.cond.i.probe_current_pmu.exit_crit_edge ]
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !67
  %65 = call i32 @llvm.read_register.i32(metadata !53) #6
  %and.i.i.i19.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i19.i to ptr
  %preempt_count.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i20.i, align 4
  %sub.i.i57 = add i32 %68, -1
  store volatile i32 %sub.i.i57, ptr %preempt_count.i.i20.i, align 4
  br label %if.end15

if.end15:                                         ; preds = %probe_current_pmu.exit, %if.then8
  %ret.0 = phi i32 [ %call10, %if.then8 ], [ %ret.0.i, %probe_current_pmu.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool16.not = icmp eq i32 %ret.0, 0
  br i1 %tobool16.not, label %if.end15.if.end18_crit_edge, label %do.end

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %out_free

if.end18:                                         ; preds = %if.end15.if.end18_crit_edge, %if.else.if.end18_crit_edge
  %69 = ptrtoint ptr %hw_events1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw_events1.i, align 4
  %supported_cpus.i59 = getelementptr inbounds %struct.arm_pmu, ptr %call, i32 0, i32 1
  %irq2.i = getelementptr inbounds %struct.pmu_hw_events, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %irq2.i to i32
  %call.i60102 = call i32 @cpumask_next(i32 noundef -1, ptr noundef %supported_cpus.i59) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %72 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i60102, i32 %72)
  %cmp.i61103 = icmp ult i32 %call.i60102, %72
  br i1 %cmp.i61103, label %if.end18.for.body.i66_crit_edge, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end18.for.body.i66_crit_edge:                  ; preds = %if.end18
  br label %for.body.i66

for.body.i66:                                     ; preds = %cleanup.i.for.body.i66_crit_edge, %if.end18.for.body.i66_crit_edge
  %call.i60104 = phi i32 [ %call.i60, %cleanup.i.for.body.i66_crit_edge ], [ %call.i60102, %if.end18.for.body.i66_crit_edge ]
  %arrayidx.i63 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call.i60104
  %73 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i63, align 4
  %add.i64 = add i32 %74, %71
  %75 = inttoptr i32 %add.i64 to ptr
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i65 = icmp eq i32 %77, 0
  br i1 %tobool.not.i65, label %for.body.i66.cleanup.i_crit_edge, label %if.end.i67

for.body.i66.cleanup.i_crit_edge:                 ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i67:                                       ; preds = %for.body.i66
  %call4.i = call i32 @armpmu_request_irq(i32 noundef %77, i32 noundef %call.i60104) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i67.cleanup.i_crit_edge, label %if.end.i67.out_free_irqs_crit_edge

if.end.i67.out_free_irqs_crit_edge:               ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_irqs

if.end.i67.cleanup.i_crit_edge:                   ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i67.cleanup.i_crit_edge, %for.body.i66.cleanup.i_crit_edge
  %call.i60 = call i32 @cpumask_next(i32 noundef %call.i60104, ptr noundef %supported_cpus.i59) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %78 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i61 = icmp ult i32 %call.i60, %78
  br i1 %cmp.i61, label %cleanup.i.for.body.i66_crit_edge, label %cleanup.i.if.end22_crit_edge

cleanup.i.if.end22_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

cleanup.i.for.body.i66_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i66

if.end22:                                         ; preds = %cleanup.i.if.end22_crit_edge, %if.end18.if.end22_crit_edge
  %call23 = call i32 @armpmu_register(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %do.end28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %out_free_irqs

out_free_irqs:                                    ; preds = %do.end28, %if.end.i67.out_free_irqs_crit_edge
  %ret.1 = phi i32 [ %call23, %do.end28 ], [ %call4.i, %if.end.i67.out_free_irqs_crit_edge ]
  %call8.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef %supported_cpus.i59) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %79 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %79)
  %cmp9.i = icmp ult i32 %call8.i, %79
  br i1 %cmp9.i, label %for.body.lr.ph.i71, label %out_free_irqs.out_free_crit_edge

out_free_irqs.out_free_crit_edge:                 ; preds = %out_free_irqs
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

for.body.lr.ph.i71:                               ; preds = %out_free_irqs
  %80 = ptrtoint ptr %hw_events1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw_events1.i, align 4
  %irq2.i70 = getelementptr inbounds %struct.pmu_hw_events, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %irq2.i70 to i32
  br label %for.body.i77

for.body.i77:                                     ; preds = %for.body.i77.for.body.i77_crit_edge, %for.body.lr.ph.i71
  %call10.i72 = phi i32 [ %call8.i, %for.body.lr.ph.i71 ], [ %call.i75, %for.body.i77.for.body.i77_crit_edge ]
  %arrayidx.i73 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call10.i72
  %83 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i73, align 4
  %add.i74 = add i32 %84, %82
  %85 = inttoptr i32 %add.i74 to ptr
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  call void @armpmu_free_irq(i32 noundef %87, i32 noundef %call10.i72) #6
  %call.i75 = call i32 @cpumask_next(i32 noundef %call10.i72, ptr noundef %supported_cpus.i59) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %88 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i76 = icmp ult i32 %call.i75, %88
  br i1 %cmp.i76, label %for.body.i77.for.body.i77_crit_edge, label %for.body.i77.out_free_crit_edge

for.body.i77.out_free_crit_edge:                  ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

for.body.i77.for.body.i77_crit_edge:              ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i77

out_free:                                         ; preds = %for.body.i77.out_free_crit_edge, %out_free_irqs.out_free_crit_edge, %do.end, %pmu_parse_irqs.exit.out_free_crit_edge, %do.end78.i, %pmu_parse_irq_affinity.exit.i.out_free_crit_edge, %pmu_parse_irq_affinity.exit.thread.i, %do.end59.i, %if.then12.i.out_free_crit_edge
  %ret.2 = phi i32 [ %call3.i, %pmu_parse_irqs.exit.out_free_crit_edge ], [ %ret.0, %do.end ], [ %ret.1, %out_free_irqs.out_free_crit_edge ], [ -22, %do.end59.i ], [ -22, %do.end78.i ], [ -22, %pmu_parse_irq_affinity.exit.thread.i ], [ %call.i133.i, %if.then12.i.out_free_crit_edge ], [ %ret.1, %for.body.i77.out_free_crit_edge ], [ %29, %pmu_parse_irq_affinity.exit.i.out_free_crit_edge ]
  call void @armpmu_free(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @armpmu_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armpmu_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @armpmu_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_check_status_bit(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_percpu_devid_partition(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_cpu_node_to_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armpmu_request_irq(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @armpmu_free_irq(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/perf/arm_pmu_platform.c", i32 209, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/perf/arm_pmu_platform.c", i32 224, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @arm_pmu_device_probe._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @arm_pmu_device_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/perf/arm_pmu_platform.c", i32 234, i32 3}
!12 = !{ptr @arm_pmu_device_probe._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @arm_pmu_device_probe._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/perf/arm_pmu_platform.c", i32 105, i32 39}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/perf/arm_pmu_platform.c", i32 112, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pmu_parse_irqs._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @pmu_parse_irqs._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/perf/arm_pmu_platform.c", i32 125, i32 3}
!24 = !{ptr @pmu_parse_irqs._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @pmu_parse_irqs._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/perf/arm_pmu_platform.c", i32 135, i32 4}
!28 = !{ptr @pmu_parse_irqs._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pmu_parse_irqs._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/perf/arm_pmu_platform.c", i32 146, i32 4}
!32 = !{ptr @pmu_parse_irqs._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pmu_parse_irqs._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/perf/arm_pmu_platform.c", i32 63, i32 34}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/perf/arm_pmu_platform.c", i32 81, i32 3}
!38 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @pmu_parse_irq_affinity._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @pmu_parse_irq_affinity._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/perf/arm_pmu_platform.c", i32 87, i32 3}
!43 = !{ptr @pmu_parse_irq_affinity._entry.25, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @pmu_parse_irq_affinity._entry_ptr.27, !42, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!47 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/perf/arm_pmu_platform.c", i32 33, i32 2}
!50 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @probe_current_pmu._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @probe_current_pmu._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2154811076}
!66 = !{i64 2154435266}
!67 = !{i64 2154816967}
