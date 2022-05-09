; ModuleID = '/llk/IR_all_yes/drivers/cpuidle/cpuidle-psci.c_pt.bc'
source_filename = "../drivers/cpuidle/cpuidle-psci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.psci_cpuidle_data = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.psci_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@domain_state = weak dso_local global i32 0, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arm,psci-suspend-param\00", [41 x i8] zeroinitializer }, align 32
@psci_dt_parse_state_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014CPUidle PSCI: %pOF missing arm,psci-suspend-param property\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"psci_dt_parse_state_node\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/cpuidle/cpuidle-psci.c\00", [33 x i8] zeroinitializer }, align 32
@psci_dt_parse_state_node._entry_ptr = internal global ptr @psci_dt_parse_state_node._entry, section ".printk_index", align 4
@psci_dt_parse_state_node._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014CPUidle PSCI: Invalid PSCI power state %#x\0A\00", [50 x i8] zeroinitializer }, align 32
@psci_dt_parse_state_node._entry_ptr.7 = internal global ptr @psci_dt_parse_state_node._entry.5, section ".printk_index", align 4
@__initcall__kmod_cpuidle_psci__185_409_psci_idle_init6 = internal global ptr @psci_idle_init, section ".initcall6.init", align 4
@__pcpu_unique_psci_cpuidle_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@psci_cpuidle_data = weak dso_local global %struct.psci_cpuidle_data zeroinitializer, section ".data..percpu..read_mostly", align 4
@__pcpu_unique_domain_state = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@psci_cpuidle_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @psci_cpuidle_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"psci-cpuidle\00", [19 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpuidle_devices = external dso_local global ptr, section ".data..percpu", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enable-method\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"psci\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"psci_idle\00", [22 x i8] zeroinitializer }, align 32
@psci_idle_state_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,idle-state\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @psci_enter_idle_state }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@psci_idle_init_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CPUidle PSCI: CPU %d failed to PSCI idle\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"psci_idle_init_cpu\00", [45 x i8] zeroinitializer }, align 32
@psci_idle_init_cpu._entry_ptr = internal global ptr @psci_idle_init_cpu._entry, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@psci_ops = external dso_local local_unnamed_addr global %struct.psci_operations, align 4
@psci_dt_cpu_init_idle.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpuidle_psci\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"psci_dt_cpu_init_idle\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"psci-power-state %#x index %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CPUidle PSCI: psci-power-state %#x index %d\0A\00", [51 x i8] zeroinitializer }, align 32
@psci_cpuidle_use_cpuhp = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpuidle/psci:online\00", [44 x i8] zeroinitializer }, align 32
@psci_idle_init_cpuhp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014CPUidle PSCI: Failed %d while setup cpuhp state\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"psci_idle_init_cpuhp\00", [43 x i8] zeroinitializer }, align 32
@psci_idle_init_cpuhp._entry_ptr = internal global ptr @psci_idle_init_cpuhp._entry, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 165, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 168, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 173, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"psci_cpuidle_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 385, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 401, i32 41 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 293, i32 44 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 294, i32 47 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 305, i32 14 }
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"psci_idle_state_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 157, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 336, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 230, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"psci_cpuidle_use_cpuhp\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 142, i32 6 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [34 x i8] c"../drivers/cpuidle/cpuidle-psci.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 146, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__initcall__kmod_cpuidle_psci__185_409_psci_idle_init6, ptr @psci_dt_parse_state_node._entry, ptr @psci_dt_parse_state_node._entry.5, ptr @psci_dt_parse_state_node._entry_ptr, ptr @psci_dt_parse_state_node._entry_ptr.7, ptr @psci_idle_init_cpu._entry, ptr @psci_idle_init_cpu._entry_ptr, ptr @psci_idle_init_cpuhp._entry, ptr @psci_idle_init_cpuhp._entry_ptr, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @psci_cpuidle_driver, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @psci_idle_state_match, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @psci_cpuidle_use_cpuhp, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_dt_parse_state_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_dt_parse_state_node._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_cpuidle_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_idle_state_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_idle_init_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_cpuidle_use_cpuhp to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_idle_init_cpuhp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @psci_set_domain_state(i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @domain_state to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %state, ptr %6, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psci_dt_parse_state_node(ptr noundef %np, ptr noundef %state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef %state, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %np) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %call2 = tail call zeroext i1 @psci_power_state_is_valid(i32 noundef %1) #10
  br i1 %call2, label %if.end.cleanup_crit_edge, label %do.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %3) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ -22, %do.end6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @psci_power_state_is_valid(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_idle_init() #5 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @psci_cpuidle_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #10
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
  store ptr @.str.8, ptr %name2.i.i, align 4
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
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #10
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @platform_driver_unregister(ptr noundef nonnull @psci_cpuidle_driver) #10
  %9 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_cpuidle_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call51 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call51, i32 %0)
  %cmp52 = icmp ult i32 %call51, %0
  br i1 %cmp52, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %psci_idle_init_cpu.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %call53 = phi i32 [ %call, %psci_idle_init_cpu.exit.for.body_crit_edge ], [ %call51, %entry.for.body_crit_edge ]
  %call.i.i = tail call ptr @get_cpu_device(i32 noundef %call53) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call ptr @of_get_cpu_node(i32 noundef %call53, ptr noundef null) #10
  br label %of_cpu_device_node_get.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 27
  %1 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i.i, align 8
  %call2.i.i = tail call ptr @of_node_get(ptr noundef %2) #10
  br label %of_cpu_device_node_get.exit.i

of_cpu_device_node_get.exit.i:                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %call2.i.i, %if.end.i.i ], [ %call1.i.i, %if.then.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %of_cpu_device_node_get.exit.i.while.cond.preheader_crit_edge, label %if.end.i

of_cpu_device_node_get.exit.i.while.cond.preheader_crit_edge: ; preds = %of_cpu_device_node_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

if.end.i:                                         ; preds = %of_cpu_device_node_get.exit.i
  %call1.i = tail call ptr @of_get_property(ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull @.str.9, ptr noundef null) #10
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call3.i = tail call i32 @strcmp(ptr noundef nonnull %call1.i, ptr noundef nonnull dereferenceable(5) @.str.10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end9.i, label %lor.lhs.false.i.if.end6.i_crit_edge

lor.lhs.false.i.if.end6.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.end6.i:                                        ; preds = %lor.lhs.false.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %retval.0.i.i) #10
  br label %while.cond.preheader

if.end9.i:                                        ; preds = %lor.lhs.false.i
  tail call void @of_node_put(ptr noundef nonnull %retval.0.i.i) #10
  %call.i74.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 992, i32 noundef 3520) #10
  %tobool11.not.i = icmp eq ptr %call.i74.i, null
  br i1 %tobool11.not.i, label %if.end9.i.while.cond.preheader_crit_edge, label %if.end13.i

if.end9.i.while.cond.preheader_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

if.end13.i:                                       ; preds = %if.end9.i
  %3 = ptrtoint ptr %call.i74.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.11, ptr %call.i74.i, align 8
  %owner.i = getelementptr inbounds %struct.cpuidle_driver, ptr %call.i74.i, i32 0, i32 1
  %4 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %owner.i, align 4
  %rem.i.i = and i32 %call53, 31
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %div3.i.i = lshr i32 %call53, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  %cpumask.i = getelementptr inbounds %struct.cpuidle_driver, ptr %call.i74.i, i32 0, i32 6
  %5 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i.i, ptr %cpumask.i, align 8
  %states.i = getelementptr inbounds %struct.cpuidle_driver, ptr %call.i74.i, i32 0, i32 3
  %enter.i = getelementptr inbounds %struct.cpuidle_driver, ptr %call.i74.i, i32 0, i32 3, i32 0, i32 8
  %6 = ptrtoint ptr %enter.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @psci_enter_idle_state, ptr %enter.i, align 8
  %exit_latency.i = getelementptr inbounds %struct.cpuidle_driver, ptr %call.i74.i, i32 0, i32 3, i32 0, i32 5
  %7 = ptrtoint ptr %exit_latency.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %exit_latency.i, align 4
  %target_residency.i = getelementptr inbounds %struct.cpuidle_driver, ptr %call.i74.i, i32 0, i32 3, i32 0, i32 7
  %8 = ptrtoint ptr %target_residency.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %target_residency.i, align 4
  %power_usage.i = getelementptr inbounds %struct.cpuidle_driver, ptr %call.i74.i, i32 0, i32 3, i32 0, i32 6
  %9 = ptrtoint ptr %power_usage.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %power_usage.i, align 8
  %10 = ptrtoint ptr %states.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 1464224000, ptr %states.i, align 1
  %desc.i = getelementptr inbounds %struct.cpuidle_driver, ptr %call.i74.i, i32 0, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %desc.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 4706909361854105856, ptr %desc.i, align 1
  %call29.i = tail call i32 @dt_init_idle_driver(ptr noundef nonnull %call.i74.i, ptr noundef nonnull @psci_idle_state_match, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29.i)
  %cmp.i = icmp slt i32 %call29.i, 1
  br i1 %cmp.i, label %if.then30.i, label %if.end32.i

if.then30.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool31.not.i = icmp eq i32 %call29.i, 0
  %spec.select = select i1 %tobool31.not.i, i32 -19, i32 %call29.i
  br label %while.cond.preheader

if.end32.i:                                       ; preds = %if.end13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  %tobool.not.i75.i = icmp eq ptr %12, null
  br i1 %tobool.not.i75.i, label %if.end32.i.do.end.i_crit_edge, label %if.end.i76.i

if.end32.i.do.end.i_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i76.i:                                     ; preds = %if.end32.i
  %call.i.i.i = tail call ptr @get_cpu_device(i32 noundef %call53) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i = tail call ptr @of_get_cpu_node(i32 noundef %call53, ptr noundef null) #10
  br label %of_cpu_device_node_get.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  %of_node.i.i.i = getelementptr inbounds %struct.device, ptr %call.i.i.i, i32 0, i32 27
  %13 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i.i.i, align 8
  %call2.i.i.i = tail call ptr @of_node_get(ptr noundef %14) #10
  br label %of_cpu_device_node_get.exit.i.i

of_cpu_device_node_get.exit.i.i:                  ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %call2.i.i.i, %if.end.i.i.i ], [ %call1.i.i.i, %if.then.i.i.i ]
  %tobool1.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool1.not.i.i, label %of_cpu_device_node_get.exit.i.i.do.end.i_crit_edge, label %psci_cpu_init_idle.exit.i

of_cpu_device_node_get.exit.i.i.do.end.i_crit_edge: ; preds = %of_cpu_device_node_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

psci_cpu_init_idle.exit.i:                        ; preds = %of_cpu_device_node_get.exit.i.i
  %call4.i.i = tail call fastcc i32 @psci_dt_cpu_init_idle(ptr noundef %dev1, ptr noundef nonnull %call.i74.i, ptr noundef nonnull %retval.0.i.i.i, i32 noundef %call29.i, i32 noundef %call53) #10
  tail call void @of_node_put(ptr noundef nonnull %retval.0.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool34.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool34.not.i, label %if.end37.i, label %psci_cpu_init_idle.exit.i.do.end.i_crit_edge

psci_cpu_init_idle.exit.i.do.end.i_crit_edge:     ; preds = %psci_cpu_init_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %psci_cpu_init_idle.exit.i.do.end.i_crit_edge, %of_cpu_device_node_get.exit.i.i.do.end.i_crit_edge, %if.end32.i.do.end.i_crit_edge
  %retval.0.i7784.i = phi i32 [ %call4.i.i, %psci_cpu_init_idle.exit.i.do.end.i_crit_edge ], [ -19, %of_cpu_device_node_get.exit.i.i.do.end.i_crit_edge ], [ -95, %if.end32.i.do.end.i_crit_edge ]
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call53) #13
  br label %while.cond.preheader

if.end37.i:                                       ; preds = %psci_cpu_init_idle.exit.i
  %call38.i = tail call i32 @cpuidle_register(ptr noundef nonnull %call.i74.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %psci_idle_init_cpu.exit, label %deinit.i

deinit.i:                                         ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i78.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call53
  %15 = ptrtoint ptr %arrayidx.i78.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i78.i, align 4
  %add.i79.i = add i32 %16, ptrtoint (ptr @psci_cpuidle_data to i32)
  %17 = inttoptr i32 %add.i79.i to ptr
  %dev.i.i = getelementptr inbounds %struct.psci_cpuidle_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  tail call void @psci_dt_detach_cpu(ptr noundef %19) #10
  store i1 false, ptr @psci_cpuidle_use_cpuhp, align 1
  br label %while.cond.preheader

psci_idle_init_cpu.exit:                          ; preds = %if.end37.i
  tail call void @cpuidle_cooling_register(ptr noundef nonnull %call.i74.i) #10
  %call = tail call i32 @cpumask_next(i32 noundef %call53, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %20
  br i1 %cmp, label %psci_idle_init_cpu.exit.for.body_crit_edge, label %psci_idle_init_cpu.exit.for.end_crit_edge

psci_idle_init_cpu.exit.for.end_crit_edge:        ; preds = %psci_idle_init_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

psci_idle_init_cpu.exit.for.body_crit_edge:       ; preds = %psci_idle_init_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

while.cond.preheader:                             ; preds = %deinit.i, %do.end.i, %if.then30.i, %if.end9.i.while.cond.preheader_crit_edge, %if.end6.i, %of_cpu_device_node_get.exit.i.while.cond.preheader_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %if.end6.i ], [ %call38.i, %deinit.i ], [ %retval.0.i7784.i, %do.end.i ], [ %spec.select, %if.then30.i ], [ -19, %of_cpu_device_node_get.exit.i.while.cond.preheader_crit_edge ], [ -12, %if.end9.i.while.cond.preheader_crit_edge ]
  %dec20 = add i32 %call53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec20)
  %cmp321 = icmp sgt i32 %dec20, -1
  br i1 %cmp321, label %while.cond.preheader.do.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader.do.body_crit_edge:           ; preds = %while.cond.preheader
  br label %do.body

for.end:                                          ; preds = %psci_idle_init_cpu.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %.b6.i = load i1, ptr @psci_cpuidle_use_cpuhp, align 1
  br i1 %.b6.i, label %if.end.i16, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i16:                                       ; preds = %for.end
  %call.i.i15 = tail call i32 @__cpuhp_setup_state(i32 noundef 96, ptr noundef nonnull @.str.21, i1 noundef zeroext false, ptr noundef nonnull @psci_idle_cpuhp_up, ptr noundef nonnull @psci_idle_cpuhp_down, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %tobool1.not.i = icmp eq i32 %call.i.i15, 0
  br i1 %tobool1.not.i, label %if.end.i16.cleanup_crit_edge, label %do.end.i18

if.end.i16.cleanup_crit_edge:                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i18:                                       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call.i.i15) #13
  br label %cleanup

do.body:                                          ; preds = %do.body.do.body_crit_edge, %while.cond.preheader.do.body_crit_edge
  %dec22 = phi i32 [ %dec, %do.body.do.body_crit_edge ], [ %dec20, %while.cond.preheader.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %dec22
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add = add i32 %22, ptrtoint (ptr @cpuidle_devices to i32)
  %23 = inttoptr i32 %add to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call5 = tail call ptr @cpuidle_get_cpu_driver(ptr noundef %25) #10
  tail call void @cpuidle_unregister(ptr noundef %call5) #10
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %27, ptrtoint (ptr @psci_cpuidle_data to i32)
  %28 = inttoptr i32 %add.i to ptr
  %dev.i = getelementptr inbounds %struct.psci_cpuidle_data, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call void @psci_dt_detach_cpu(ptr noundef %30) #10
  store i1 false, ptr @psci_cpuidle_use_cpuhp, align 1
  %dec = add nsw i32 %dec22, -1
  %cmp3 = icmp sgt i32 %dec22, 0
  br i1 %cmp3, label %do.body.do.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %do.end.i18, %if.end.i16.cleanup_crit_edge, %for.end.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end.i16.cleanup_crit_edge ], [ 0, %do.end.i18 ], [ %retval.0.i.ph, %while.cond.preheader.cleanup_crit_edge ], [ %retval.0.i.ph, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpuidle_get_cpu_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_enter_idle_state(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %drv, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @psci_cpuidle_data to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %arrayidx9 = getelementptr i32, ptr %8, i32 %idx
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %tobool.not.i = icmp eq i32 %idx, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %3
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %_do_idle.i = getelementptr inbounds %struct.processor, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %_do_idle.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_do_idle.i, align 4
  %call1.i = tail call i32 %14() #10
  br label %psci_enter_state.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @cpu_pm_enter() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 @psci_cpu_suspend_enter(i32 noundef %10) #10
  %call6.i = tail call i32 @cpu_pm_exit() #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %__ret.0.i = phi i32 [ %call2.i, %if.end.i.if.end7.i_crit_edge ], [ %call5.i, %if.then4.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0.i)
  %tobool8.not.i = icmp eq i32 %__ret.0.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 %idx, i32 -1
  br label %psci_enter_state.exit

psci_enter_state.exit:                            ; preds = %if.end7.i, %if.then.i
  %spec.select12.i = phi i32 [ %spec.select.i, %if.end7.i ], [ 0, %if.then.i ]
  ret i32 %spec.select12.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dt_init_idle_driver(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_cooling_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psci_cpu_suspend_enter(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psci_dt_cpu_init_idle(ptr noundef %dev, ptr nocapture noundef writeonly %drv, ptr noundef %cpu_node, i32 noundef %state_count, i32 noundef %cpu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @psci_cpuidle_data to i32)
  %2 = inttoptr i32 %add to ptr
  %inc = add i32 %state_count, 1
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc, i32 4) #10
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %entry.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !70

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %5 = extractvalue { i32, i1 } %3, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %5, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp72 = icmp ugt i32 %inc, 1
  br i1 %cmp72, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.073 = phi i32 [ %inc22, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %sub = add i32 %i.073, -1
  %call2 = tail call ptr @of_get_cpu_state_node(ptr noundef %cpu_node, i32 noundef %sub) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %for.body.for.end_crit_edge, label %if.end5

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end5:                                          ; preds = %for.body
  %arrayidx6 = getelementptr i32, ptr %call5.i.i, i32 %i.073
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call2, ptr noundef nonnull @.str.1, ptr noundef %arrayidx6, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %call2) #13
  br label %psci_dt_parse_state_node.exit.thread

if.end.i:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %call2.i = tail call zeroext i1 @psci_power_state_is_valid(i32 noundef %7) #10
  br i1 %call2.i, label %do.body11, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %9) #13
  br label %psci_dt_parse_state_node.exit.thread

psci_dt_parse_state_node.exit.thread:             ; preds = %do.end6.i, %do.end.i
  %retval.0.i55.ph = phi i32 [ -22, %do.end6.i ], [ %call.i.i.i, %do.end.i ]
  tail call void @of_node_put(ptr noundef nonnull %call2) #10
  br label %cleanup

do.body11:                                        ; preds = %if.end.i
  tail call void @of_node_put(ptr noundef nonnull %call2) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psci_dt_cpu_init_idle.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psci_dt_cpu_init_idle, %if.then17)) #10
          to label %for.inc [label %if.then17], !srcloc !71

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psci_dt_cpu_init_idle.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.20, i32 noundef %11, i32 noundef %i.073) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %do.body11
  %inc22 = add nuw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %i.073, %state_count
  br i1 %exitcond.not, label %for.inc.if.end25_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end25_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 1, %for.cond.preheader.for.end_crit_edge ], [ %i.073, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %inc)
  %cmp23.not = icmp eq i32 %i.0.lcssa, %inc
  br i1 %cmp23.not, label %for.end.if.end25_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end25:                                         ; preds = %for.end.if.end25_crit_edge, %for.inc.if.end25_crit_edge
  %call.i = tail call zeroext i1 @psci_has_osi_support() #10
  br i1 %call.i, label %if.end.i57, label %if.end25.if.end29_crit_edge

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.end.i57:                                       ; preds = %if.end25
  %call1.i56 = tail call ptr @psci_dt_attach_cpu(i32 noundef %cpu) #10
  %dev.i = getelementptr inbounds %struct.psci_cpuidle_data, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1.i56, ptr %dev.i, align 4
  %tobool.not.i.i = icmp eq ptr %call1.i56, null
  %cmp.i.i = icmp ugt ptr %call1.i56, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i57
  %13 = ptrtoint ptr %call1.i56 to i32
  %cmp27 = icmp slt ptr %call1.i56, null
  %or.cond = and i1 %cmp.i.i, %cmp27
  br i1 %or.cond, label %if.then4.i.cleanup_crit_edge, label %if.then4.i.if.end29_crit_edge

if.then4.i.if.end29_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #12
  %enter.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %state_count, i32 8
  %14 = ptrtoint ptr %enter.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @psci_enter_domain_idle_state, ptr %enter.i, align 8
  %enter_s2idle.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %state_count, i32 10
  %15 = ptrtoint ptr %enter_s2idle.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @psci_enter_s2idle_domain_idle_state, ptr %enter_s2idle.i, align 8
  store i1 true, ptr @psci_cpuidle_use_cpuhp, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.end7.i, %if.then4.i.if.end29_crit_edge, %if.end25.if.end29_crit_edge
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i, ptr %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then4.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %psci_dt_parse_state_node.exit.thread, %devm_kcalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -19, %for.end.cleanup_crit_edge ], [ %retval.0.i55.ph, %psci_dt_parse_state_node.exit.thread ], [ -12, %entry.cleanup_crit_edge ], [ %13, %if.then4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_state_node(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @psci_has_osi_support() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @psci_dt_attach_cpu(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_enter_domain_idle_state(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %drv, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__psci_enter_domain_idle_state(i32 noundef %idx, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_enter_s2idle_domain_idle_state(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %drv, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__psci_enter_domain_idle_state(i32 noundef %idx, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__psci_enter_domain_idle_state(i32 noundef %idx, i1 noundef zeroext %s2idle) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @psci_cpuidle_data to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev2 = getelementptr inbounds %struct.psci_cpuidle_data, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  %call3 = tail call i32 @cpu_pm_enter() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rcu_irq_enter_irqson() #10
  br i1 %s2idle, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_pm_genpd_suspend(ptr noundef %10) #10
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %10, i32 noundef 4) #10
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  tail call void @rcu_irq_exit_irqson() #10
  %11 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, ptrtoint (ptr @domain_state to i32)
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool9.not = icmp eq i32 %19, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11 = getelementptr i32, ptr %8, i32 %idx
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %state.0 = phi i32 [ %19, %if.end7.if.end12_crit_edge ], [ %21, %if.then10 ]
  %call13 = tail call i32 @psci_cpu_suspend_enter(i32 noundef %state.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %spec.select = select i1 %tobool14.not, i32 %idx, i32 -1
  tail call void @rcu_irq_enter_irqson() #10
  br i1 %s2idle, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_pm_genpd_resume(ptr noundef %10) #10
  br label %if.end19

if.else17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call.i1 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #10
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then16
  tail call void @rcu_irq_exit_irqson() #10
  %call20 = tail call i32 @cpu_pm_exit() #10
  %22 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i2 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i2 to ptr
  %cpu.i3 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i3, align 4
  %arrayidx.i4 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i4, align 4
  %add.i5 = add i32 %27, ptrtoint (ptr @domain_state to i32)
  %28 = inttoptr i32 %add.i5 to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %28, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end19 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_genpd_suspend(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_genpd_resume(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_idle_cpuhp_up(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu8 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu8, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr getelementptr inbounds (%struct.psci_cpuidle_data, ptr @psci_cpuidle_data, i32 0, i32 1) to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %8, i32 noundef 4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_idle_cpuhp_down(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu8 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu8, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr getelementptr inbounds (%struct.psci_cpuidle_data, ptr @psci_cpuidle_data, i32 0, i32 1) to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %8, i32 noundef 4) #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, ptrtoint (ptr @domain_state to i32)
  %15 = inttoptr i32 %add.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %15, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @psci_dt_detach_cpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !47, !48, !49, !50, !51, !53, !55, !57, !58, !59}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 43, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 165, i32 37}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 168, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @psci_dt_parse_state_node._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @psci_dt_parse_state_node._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 173, i32 3}
!12 = !{ptr @psci_dt_parse_state_node._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @psci_dt_parse_state_node._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_cpuidle_psci__185_409_psci_idle_init6, !15, !"__initcall__kmod_cpuidle_psci__185_409_psci_idle_init6", i1 false, i1 false}
!15 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 409, i32 1}
!16 = !{ptr @__pcpu_unique_psci_cpuidle_data, !17, !"__pcpu_unique_psci_cpuidle_data", i1 false, i1 false}
!17 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 37, i32 8}
!18 = !{ptr @psci_cpuidle_data, !17, !"psci_cpuidle_data", i1 false, i1 false}
!19 = !{ptr @__pcpu_unique_domain_state, !20, !"__pcpu_unique_domain_state", i1 false, i1 false}
!20 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 38, i32 8}
!21 = !{ptr @domain_state, !20, !"domain_state", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 401, i32 41}
!24 = !{ptr @psci_cpuidle_driver, !25, !"psci_cpuidle_driver", i1 false, i1 false}
!25 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 385, i32 31}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 293, i32 44}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 294, i32 47}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 305, i32 14}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 317, i32 30}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 318, i32 30}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 336, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @psci_idle_init_cpu._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @psci_idle_init_cpu._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 152, i32 15}
!43 = !{ptr @psci_idle_state_match, !44, !"psci_idle_state_match", i1 false, i1 false}
!44 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 157, i32 34}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 230, i32 3}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @psci_dt_cpu_init_idle.__UNIQUE_ID_ddebug184, !46, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!50 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"psci_cpuidle_use_cpuhp", i1 false, i1 false}
!52 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 39, i32 13}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 142, i32 6}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/cpuidle/cpuidle-psci.c", i32 146, i32 3}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @psci_idle_init_cpuhp._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @psci_idle_init_cpuhp._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 2148886728, i64 2148886733, i64 2148886746, i64 2148886790, i64 2148886824, i64 2148886845}
