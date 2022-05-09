; ModuleID = '/llk/IR_all_yes/drivers/cpuidle/cpuidle-psci-domain.c_pt.bc'
source_filename = "../drivers/cpuidle/cpuidle-psci-domain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dev_power_governor = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.psci_pd_provider = type { %struct.list_head, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.genpd_power_state = type { i64, i64, i64, i64, i64, ptr, i64, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_cpuidle_psci_domain__185_316_psci_idle_init_domains4 = internal global ptr @psci_idle_init_domains, section ".initcall4.init", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"psci\00", [27 x i8] zeroinitializer }, align 32
@psci_cpuidle_domain_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @psci_cpuidle_domain_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @psci_of_match, ptr null, ptr null, ptr @psci_cpuidle_domain_sync_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"psci-cpuidle-domain\00", [44 x i8] zeroinitializer }, align 32
@psci_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,psci-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"#power-domain-cells\00", [44 x i8] zeroinitializer }, align 32
@psci_cpuidle_domain_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016CPUidle PSCI: Initialized CPU PM domain topology\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"psci_cpuidle_domain_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/cpuidle/cpuidle-psci-domain.c\00", [58 x i8] zeroinitializer }, align 32
@psci_cpuidle_domain_probe._entry_ptr = internal global ptr @psci_cpuidle_domain_probe._entry, section ".printk_index", align 4
@psci_cpuidle_domain_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013CPUidle PSCI: failed to create CPU PM domains ret=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@psci_cpuidle_domain_probe._entry_ptr.8 = internal global ptr @psci_cpuidle_domain_probe._entry.6, section ".printk_index", align 4
@psci_pd_try_set_osi_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014CPUidle PSCI: failed to enable OSI mode: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"psci_pd_try_set_osi_mode\00", [39 x i8] zeroinitializer }, align 32
@psci_pd_try_set_osi_mode._entry_ptr = internal global ptr @psci_pd_try_set_osi_mode._entry, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pOF\00", [27 x i8] zeroinitializer }, align 32
@pm_domain_cpu_gov = external dso_local global %struct.dev_power_governor, align 4
@psci_pd_providers = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @psci_pd_providers, ptr @psci_pd_providers }, [24 x i8] zeroinitializer }, align 32
@psci_pd_init.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.5, ptr @.str.14, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpuidle_psci_domain\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"psci_pd_init\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"init PM domain %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CPUidle PSCI: init PM domain %s\0A\00", [63 x i8] zeroinitializer }, align 32
@psci_pd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.5, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CPUidle PSCI: failed to init PM domain ret=%d %pOF\0A\00", [42 x i8] zeroinitializer }, align 32
@psci_pd_init._entry_ptr = internal global ptr @psci_pd_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@psci_pd_allow_domain_state = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power-domains\00", [18 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 322, i32 58 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"psci_cpuidle_domain_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 303, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 306, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"psci_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 247, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 270, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 289, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 296, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 231, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 124, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"psci_pd_providers\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 29, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 164, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 176, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"psci_pd_allow_domain_state\00", align 1
@___asan_gen_.87 = private constant [41 x i8] c"../drivers/cpuidle/cpuidle-psci-domain.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 205, i32 40 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 108, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__initcall__kmod_cpuidle_psci_domain__185_316_psci_idle_init_domains4, ptr @psci_cpuidle_domain_probe._entry, ptr @psci_cpuidle_domain_probe._entry.6, ptr @psci_cpuidle_domain_probe._entry_ptr, ptr @psci_cpuidle_domain_probe._entry_ptr.8, ptr @psci_pd_init._entry, ptr @psci_pd_init._entry_ptr, ptr @psci_pd_try_set_osi_mode._entry, ptr @psci_pd_try_set_osi_mode._entry_ptr, ptr @.str, ptr @psci_cpuidle_domain_driver, ptr @.str.1, ptr @psci_of_match, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @psci_pd_providers, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @psci_pd_allow_domain_state, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_cpuidle_domain_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_cpuidle_domain_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_cpuidle_domain_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_pd_try_set_osi_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_pd_providers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_pd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_pd_allow_domain_state to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_idle_init_domains() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @psci_cpuidle_domain_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @psci_dt_attach_cpu(i32 noundef %cpu) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_cpu_device(i32 noundef %cpu) #8
  %call1 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %call, ptr noundef nonnull @.str) #8
  %tobool.not.i = icmp eq ptr %call1, null
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pm_runtime_irq_safe(ptr noundef nonnull %call1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i.i, label %if.end.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

if.end.cpu_online.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %if.end
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !57

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %if.end.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end6_crit_edge, label %if.then4

cpu_online.exit.if.end6_crit_edge:                ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %call1, i32 noundef 4) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %cpu_online.exit.if.end6_crit_edge
  %syscore.i = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 12, i32 7
  %5 = ptrtoint ptr %syscore.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %syscore.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %syscore.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret ptr %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psci_dt_detach_cpu(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  %cmp.i = icmp ugt ptr %dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %dev, i1 noundef zeroext false) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_cpuidle_domain_probe(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  %child.i = alloca %struct.of_phandle_args, align 4
  %parent.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i1 @psci_has_osi_support() #8
  br i1 %call.i, label %if.end.i, label %if.end.psci_pd_try_set_osi_mode.exit_crit_edge

if.end.psci_pd_try_set_osi_mode.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %psci_pd_try_set_osi_mode.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @psci_set_osi_mode(i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i.psci_pd_try_set_osi_mode.exit_crit_edge, label %do.end.i

if.end.i.psci_pd_try_set_osi_mode.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %psci_pd_try_set_osi_mode.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call1.i) #11
  br label %psci_pd_try_set_osi_mode.exit

psci_pd_try_set_osi_mode.exit:                    ; preds = %do.end.i, %if.end.i.psci_pd_try_set_osi_mode.exit_crit_edge, %if.end.psci_pd_try_set_osi_mode.exit_crit_edge
  %retval.0.i = phi i1 [ false, %do.end.i ], [ false, %if.end.psci_pd_try_set_osi_mode.exit_crit_edge ], [ true, %if.end.i.psci_pd_try_set_osi_mode.exit_crit_edge ]
  %call1 = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #8
  %cmp.not59 = icmp eq ptr %call1, null
  br i1 %cmp.not59, label %psci_pd_try_set_osi_mode.exit.no_pd_crit_edge, label %psci_pd_try_set_osi_mode.exit.for.body_crit_edge

psci_pd_try_set_osi_mode.exit.for.body_crit_edge: ; preds = %psci_pd_try_set_osi_mode.exit
  br label %for.body

psci_pd_try_set_osi_mode.exit.no_pd_crit_edge:    ; preds = %psci_pd_try_set_osi_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_pd

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %psci_pd_try_set_osi_mode.exit.for.body_crit_edge
  %pd_count.062 = phi i32 [ %pd_count.1, %for.inc.for.body_crit_edge ], [ 0, %psci_pd_try_set_osi_mode.exit.for.body_crit_edge ]
  %node.060 = phi ptr [ %call11, %for.inc.for.body_crit_edge ], [ %call1, %psci_pd_try_set_osi_mode.exit.for.body_crit_edge ]
  %call2 = tail call ptr @of_find_property(ptr noundef nonnull %node.060, ptr noundef nonnull @.str.2, ptr noundef null) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %call7 = tail call fastcc i32 @psci_pd_init(ptr noundef nonnull %node.060, i1 noundef zeroext %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %put_node

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %pd_count.062, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %for.body.for.inc_crit_edge
  %pd_count.1 = phi i32 [ %inc, %if.end10 ], [ %pd_count.062, %for.body.for.inc_crit_edge ]
  %call11 = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %node.060) #8
  %cmp.not = icmp eq ptr %call11, null
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pd_count.1)
  %tobool12.not = icmp eq i32 %pd_count.1, 0
  br i1 %tobool12.not, label %for.end.no_pd_crit_edge, label %if.end14

for.end.no_pd_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_pd

if.end14:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %child.i) #8
  %2 = call ptr @memset(ptr %child.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent.i) #8
  %3 = call ptr @memset(ptr %parent.i, i32 255, i32 72)
  %call.i45 = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #8
  %cmp.not19.i = icmp eq ptr %call.i45, null
  br i1 %cmp.not19.i, label %if.end14.do.end_crit_edge, label %for.body.lr.ph.i

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %if.end14
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %child.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %node.020.i = phi ptr [ %call.i45, %for.body.lr.ph.i ], [ %call8.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %node.020.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %parent.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i46 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i46, label %if.end.i48, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i48:                                       ; preds = %for.body.i
  %4 = ptrtoint ptr %child.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %node.020.i, ptr %child.i, align 4
  %5 = ptrtoint ptr %args_count.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %args_count.i, align 4
  %call3.i47 = call i32 @of_genpd_add_subdomain(ptr noundef nonnull %parent.i, ptr noundef nonnull %child.i) #8
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 4
  call void @of_node_put(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i47)
  %tobool5.not.i = icmp eq i32 %call3.i47, 0
  br i1 %tobool5.not.i, label %if.end.i48.for.inc.i_crit_edge, label %psci_pd_init_topology.exit

if.end.i48.for.inc.i_crit_edge:                   ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i48.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %call8.i = call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %node.020.i) #8
  %cmp.not.i = icmp eq ptr %call8.i, null
  br i1 %cmp.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

psci_pd_init_topology.exit:                       ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %node.020.i) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent.i) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %child.i) #8
  br label %remove_pd

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %if.end14.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent.i) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %child.i) #8
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %cleanup

put_node:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @of_node_put(ptr noundef nonnull %node.060) #8
  br label %remove_pd

remove_pd:                                        ; preds = %put_node, %psci_pd_init_topology.exit
  %ret.2 = phi i32 [ %call7, %put_node ], [ %call3.i47, %psci_pd_init_topology.exit ]
  %8 = load ptr, ptr @psci_pd_providers, align 4
  %cmp.not23.i = icmp eq ptr %8, @psci_pd_providers
  br i1 %cmp.not23.i, label %remove_pd.psci_pd_remove.exit_crit_edge, label %remove_pd.for.body.i51_crit_edge

remove_pd.for.body.i51_crit_edge:                 ; preds = %remove_pd
  br label %for.body.i51

remove_pd.psci_pd_remove.exit_crit_edge:          ; preds = %remove_pd
  call void @__sanitizer_cov_trace_pc() #10
  br label %psci_pd_remove.exit

for.body.i51:                                     ; preds = %list_del.exit.i.for.body.i51_crit_edge, %remove_pd.for.body.i51_crit_edge
  %pd_provider.024.i = phi ptr [ %it.026.i, %list_del.exit.i.for.body.i51_crit_edge ], [ %8, %remove_pd.for.body.i51_crit_edge ]
  %9 = ptrtoint ptr %pd_provider.024.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %it.026.i = load ptr, ptr %pd_provider.024.i, align 4
  %node.i = getelementptr inbounds %struct.psci_pd_provider, ptr %pd_provider.024.i, i32 0, i32 1
  %10 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node.i, align 4
  call void @of_genpd_del_provider(ptr noundef %11) #8
  %12 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node.i, align 4
  %call.i50 = call ptr @of_genpd_remove_last(ptr noundef %13) #8
  %cmp.i.i = icmp ugt ptr %call.i50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.i51.if.end.i52_crit_edge, label %if.then.i

for.body.i51.if.end.i52_crit_edge:                ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i52

if.then.i:                                        ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %call.i50) #8
  br label %if.end.i52

if.end.i52:                                       ; preds = %if.then.i, %for.body.i51.if.end.i52_crit_edge
  %14 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %node.i, align 4
  call void @of_node_put(ptr noundef %15) #8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %pd_provider.024.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i52.list_del.exit.i_crit_edge

if.end.i52.list_del.exit.i_crit_edge:             ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pd_provider.024.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %pd_provider.024.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pd_provider.024.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i52.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %pd_provider.024.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %pd_provider.024.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pd_provider.024.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %pd_provider.024.i) #8
  %cmp.not.i53 = icmp eq ptr %it.026.i, @psci_pd_providers
  br i1 %cmp.not.i53, label %list_del.exit.i.psci_pd_remove.exit_crit_edge, label %list_del.exit.i.for.body.i51_crit_edge

list_del.exit.i.for.body.i51_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i51

list_del.exit.i.psci_pd_remove.exit_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %psci_pd_remove.exit

psci_pd_remove.exit:                              ; preds = %list_del.exit.i.psci_pd_remove.exit_crit_edge, %remove_pd.psci_pd_remove.exit_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %ret.2) #11
  br label %no_pd

no_pd:                                            ; preds = %psci_pd_remove.exit, %for.end.no_pd_crit_edge, %psci_pd_try_set_osi_mode.exit.no_pd_crit_edge
  %ret.3 = phi i32 [ %ret.2, %psci_pd_remove.exit ], [ 0, %for.end.no_pd_crit_edge ], [ 0, %psci_pd_try_set_osi_mode.exit.no_pd_crit_edge ]
  br i1 %retval.0.i, label %if.then26, label %no_pd.cleanup_crit_edge

no_pd.cleanup_crit_edge:                          ; preds = %no_pd
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %no_pd
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call i32 @psci_set_osi_mode(i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %no_pd.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ %ret.3, %if.then26 ], [ %ret.3, %no_pd.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @psci_cpuidle_domain_sync_state(ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @psci_pd_allow_domain_state, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psci_pd_init(ptr noundef %np, i1 noundef zeroext %use_osi) unnamed_addr #1 align 64 {
entry:
  %psci_state.i.i = alloca i32, align 4
  %states = alloca ptr, align 4
  %state_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %states) #8
  %0 = ptrtoint ptr %states to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %states, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state_count) #8
  %1 = ptrtoint ptr %state_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state_count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1352) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.end45_crit_edge, label %if.end

entry.do.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i80 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #12
  %tobool2.not = icmp eq ptr %call7.i.i80, null
  br i1 %tobool2.not, label %if.end.free_pd_crit_edge, label %if.end4

if.end.free_pd_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_pd

if.end4:                                          ; preds = %if.end
  %call5 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.11, ptr noundef %np) #8
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %name, align 8
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end4.free_pd_prov_crit_edge, label %if.end9

if.end4.free_pd_prov_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_pd_prov

if.end9:                                          ; preds = %if.end4
  %call.i = call i32 @of_genpd_parse_idle_states(ptr noundef %np, ptr noundef nonnull %states, ptr noundef nonnull %state_count) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.free_name_crit_edge

if.end9.free_name_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_name

if.end.i:                                         ; preds = %if.end9
  %5 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %states, align 4
  %7 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %psci_state.i.i) #8
  %9 = ptrtoint ptr %psci_state.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %psci_state.i.i, align 4, !annotation !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp35.i.i = icmp sgt i32 %8, 0
  br i1 %cmp35.i.i, label %if.end.i.for.body.i.i_crit_edge, label %if.end.i.psci_pd_parse_state_nodes.exit.thread.i_crit_edge

if.end.i.psci_pd_parse_state_nodes.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %psci_pd_parse_state_nodes.exit.thread.i

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end6.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.036.i.i = phi i32 [ %inc.i.i, %if.end6.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %fwnode.i.i = getelementptr %struct.genpd_power_state, ptr %6, i32 %i.036.i.i, i32 5
  %10 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fwnode.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %11, null
  %cmp.i.i.i.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %for.body.i.i.is_of_node.exit.thread.i.i_crit_edge, label %is_of_node.exit.i.i

for.body.i.i.is_of_node.exit.thread.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_of_node.exit.thread.i.i

is_of_node.exit.i.i:                              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %13, @of_fwnode_ops
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 -12
  %spec.select.i.i = select i1 %cmp.i.i.i, ptr %add.ptr.i.i, ptr null
  br label %is_of_node.exit.thread.i.i

is_of_node.exit.thread.i.i:                       ; preds = %is_of_node.exit.i.i, %for.body.i.i.is_of_node.exit.thread.i.i_crit_edge
  %14 = phi ptr [ null, %for.body.i.i.is_of_node.exit.thread.i.i_crit_edge ], [ %spec.select.i.i, %is_of_node.exit.i.i ]
  %call2.i.i = call i32 @psci_dt_parse_state_node(ptr noundef %14, ptr noundef nonnull %psci_state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %is_of_node.exit.thread.i.i.free_state.i.i_crit_edge

is_of_node.exit.thread.i.i.free_state.i.i_crit_edge: ; preds = %is_of_node.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_state.i.i

if.end.i.i:                                       ; preds = %is_of_node.exit.thread.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 4) #12
  %tobool4.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.free_state.i.i_crit_edge, label %if.end6.i.i

if.end.i.i.free_state.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_state.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %16 = ptrtoint ptr %psci_state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %psci_state.i.i, align 4
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %call7.i.i.i, align 8
  %data.i.i = getelementptr %struct.genpd_power_state, ptr %6, i32 %i.036.i.i, i32 7
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i.i, ptr %data.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.036.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %8
  br i1 %exitcond.not.i.i, label %if.end6.i.i.psci_pd_parse_state_nodes.exit.thread.i_crit_edge, label %if.end6.i.i.for.body.i.i_crit_edge

if.end6.i.i.for.body.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end6.i.i.psci_pd_parse_state_nodes.exit.thread.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %psci_pd_parse_state_nodes.exit.thread.i

free_state.i.i:                                   ; preds = %if.end.i.i.free_state.i.i_crit_edge, %is_of_node.exit.thread.i.i.free_state.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call2.i.i, %is_of_node.exit.thread.i.i.free_state.i.i_crit_edge ], [ -12, %if.end.i.i.free_state.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.036.i.i)
  %cmp938.not.i.i = icmp eq i32 %i.036.i.i, 0
  br i1 %cmp938.not.i.i, label %psci_pd_parse_state_nodes.exit.thread13.i, label %free_state.i.i.for.body10.i.i_crit_edge

free_state.i.i.for.body10.i.i_crit_edge:          ; preds = %free_state.i.i
  br label %for.body10.i.i

psci_pd_parse_state_nodes.exit.thread13.i:        ; preds = %free_state.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psci_state.i.i) #8
  br label %if.then3.i

for.body10.i.i:                                   ; preds = %for.body10.i.i.for.body10.i.i_crit_edge, %free_state.i.i.for.body10.i.i_crit_edge
  %i.139.in.i.i = phi i32 [ %i.139.i.i, %for.body10.i.i.for.body10.i.i_crit_edge ], [ %i.036.i.i, %free_state.i.i.for.body10.i.i_crit_edge ]
  %i.139.i.i = add nsw i32 %i.139.in.i.i, -1
  %data12.i.i = getelementptr %struct.genpd_power_state, ptr %6, i32 %i.139.i.i, i32 7
  %20 = ptrtoint ptr %data12.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data12.i.i, align 8
  call void @kfree(ptr noundef %21) #8
  %cmp9.i.i = icmp sgt i32 %i.139.in.i.i, 1
  br i1 %cmp9.i.i, label %for.body10.i.i.for.body10.i.i_crit_edge, label %psci_pd_parse_state_nodes.exit.i

for.body10.i.i.for.body10.i.i_crit_edge:          ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.i.i

psci_pd_parse_state_nodes.exit.thread.i:          ; preds = %if.end6.i.i.psci_pd_parse_state_nodes.exit.thread.i_crit_edge, %if.end.i.psci_pd_parse_state_nodes.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psci_state.i.i) #8
  br label %if.end13

psci_pd_parse_state_nodes.exit.i:                 ; preds = %for.body10.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psci_state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool2.not.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool2.not.i, label %psci_pd_parse_state_nodes.exit.i.if.end13_crit_edge, label %psci_pd_parse_state_nodes.exit.i.if.then3.i_crit_edge

psci_pd_parse_state_nodes.exit.i.if.then3.i_crit_edge: ; preds = %psci_pd_parse_state_nodes.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

psci_pd_parse_state_nodes.exit.i.if.end13_crit_edge: ; preds = %psci_pd_parse_state_nodes.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then3.i:                                       ; preds = %psci_pd_parse_state_nodes.exit.i.if.then3.i_crit_edge, %psci_pd_parse_state_nodes.exit.thread13.i
  %22 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %states, align 4
  call void @kfree(ptr noundef %23) #8
  br label %free_name

if.end13:                                         ; preds = %psci_pd_parse_state_nodes.exit.i.if.end13_crit_edge, %psci_pd_parse_state_nodes.exit.thread.i
  %free_states = getelementptr inbounds %struct.generic_pm_domain, ptr %call7.i.i, i32 0, i32 34
  %24 = ptrtoint ptr %free_states to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @psci_pd_free_states, ptr %free_states, align 4
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 8
  %call.i82 = call ptr @strrchr(ptr noundef %26, i32 noundef 47) #8
  %tobool.not.i83 = icmp eq ptr %call.i82, null
  %add.ptr.i = getelementptr i8, ptr %call.i82, i32 1
  %cond.i = select i1 %tobool.not.i83, ptr %26, ptr %add.ptr.i
  %27 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %cond.i, ptr %name, align 8
  %28 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %states, align 4
  %states17 = getelementptr inbounds %struct.generic_pm_domain, ptr %call7.i.i, i32 0, i32 33
  %30 = ptrtoint ptr %states17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %states17, align 8
  %31 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state_count, align 4
  %state_count18 = getelementptr inbounds %struct.generic_pm_domain, ptr %call7.i.i, i32 0, i32 35
  %33 = ptrtoint ptr %state_count18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %state_count18, align 8
  %flags = getelementptr inbounds %struct.generic_pm_domain, ptr %call7.i.i, i32 0, i32 32
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %or = or i32 %35, 18
  store i32 %or, ptr %flags, align 4
  br i1 %use_osi, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %power_off = getelementptr inbounds %struct.generic_pm_domain, ptr %call7.i.i, i32 0, i32 18
  %36 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @psci_pd_power_off, ptr %power_off, align 8
  br label %if.end23

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %or22 = or i32 %35, 22
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or22, ptr %flags, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp = icmp sgt i32 %32, 0
  %cond = select i1 %cmp, ptr @pm_domain_cpu_gov, ptr null
  %call24 = call i32 @pm_genpd_init(ptr noundef nonnull %call7.i.i, ptr noundef %cond, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end23
  %38 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %states, align 4
  %40 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp4.not.i = icmp eq i32 %41, 0
  br i1 %cmp4.not.i, label %if.then26.psci_pd_free_states.exit_crit_edge, label %if.then26.for.body.i_crit_edge

if.then26.for.body.i_crit_edge:                   ; preds = %if.then26
  br label %for.body.i

if.then26.psci_pd_free_states.exit_crit_edge:     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %psci_pd_free_states.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then26.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then26.for.body.i_crit_edge ]
  %data.i = getelementptr %struct.genpd_power_state, ptr %39, i32 %i.05.i, i32 7
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 8
  call void @kfree(ptr noundef %43) #8
  %inc.i = add nuw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %41
  br i1 %exitcond.not.i, label %for.body.i.psci_pd_free_states.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.psci_pd_free_states.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %psci_pd_free_states.exit

psci_pd_free_states.exit:                         ; preds = %for.body.i.psci_pd_free_states.exit_crit_edge, %if.then26.psci_pd_free_states.exit_crit_edge
  call void @kfree(ptr noundef %39) #8
  br label %free_name

if.end27:                                         ; preds = %if.end23
  %call28 = call i32 @of_genpd_add_provider_simple(ptr noundef %np, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %remove_pd

if.end31:                                         ; preds = %if.end27
  %call32 = call ptr @of_node_get(ptr noundef %np) #8
  %node = getelementptr inbounds %struct.psci_pd_provider, ptr %call7.i.i80, i32 0, i32 1
  %44 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call32, ptr %node, align 8
  %45 = load ptr, ptr @psci_pd_providers, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i80, ptr noundef nonnull @psci_pd_providers, ptr noundef %45) #8
  br i1 %call.i.i, label %if.end.i.i84, label %if.end31.list_add.exit_crit_edge

if.end31.list_add.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i84:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i80, ptr %prev1.i.i, align 4
  %47 = ptrtoint ptr %call7.i.i80 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %call7.i.i80, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i80, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @psci_pd_providers, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i80, ptr @psci_pd_providers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i84, %if.end31.list_add.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psci_pd_init.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psci_pd_init, %if.then38)) #8
          to label %cleanup [label %if.then38], !srcloc !59

if.then38:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @psci_pd_init.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.15, ptr noundef %50) #8
  br label %cleanup

remove_pd:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = call i32 @pm_genpd_remove(ptr noundef nonnull %call7.i.i) #8
  br label %free_name

free_name:                                        ; preds = %remove_pd, %psci_pd_free_states.exit, %if.then3.i, %if.end9.free_name_crit_edge
  %ret.0 = phi i32 [ %call24, %psci_pd_free_states.exit ], [ %call28, %remove_pd ], [ %call.i, %if.end9.free_name_crit_edge ], [ %ret.0.i.i, %if.then3.i ]
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name, align 8
  call void @kfree(ptr noundef %52) #8
  br label %free_pd_prov

free_pd_prov:                                     ; preds = %free_name, %if.end4.free_pd_prov_crit_edge
  %ret.1 = phi i32 [ %ret.0, %free_name ], [ -12, %if.end4.free_pd_prov_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i80) #8
  br label %free_pd

free_pd:                                          ; preds = %free_pd_prov, %if.end.free_pd_crit_edge
  %ret.2 = phi i32 [ %ret.1, %free_pd_prov ], [ -12, %if.end.free_pd_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %do.end45

do.end45:                                         ; preds = %free_pd, %entry.do.end45_crit_edge
  %ret.3 = phi i32 [ %ret.2, %free_pd ], [ -12, %entry.do.end45_crit_edge ]
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %ret.3, ptr noundef %np) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.then38, %list_add.exit
  %retval.0 = phi i32 [ %ret.3, %do.end45 ], [ 0, %if.then38 ], [ 0, %list_add.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state_count) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %states) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psci_set_osi_mode(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @psci_has_osi_support() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psci_pd_free_states(ptr noundef %states, i32 noundef %state_count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state_count)
  %cmp4.not = icmp eq i32 %state_count, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %data = getelementptr %struct.genpd_power_state, ptr %states, i32 %i.05, i32 7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void @kfree(ptr noundef %1) #8
  %inc = add nuw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %state_count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %states) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_pd_power_off(ptr nocapture noundef readonly %pd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %states = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 33
  %0 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %states, align 8
  %state_idx = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 36
  %2 = ptrtoint ptr %state_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state_idx, align 4
  %data = getelementptr %struct.genpd_power_state, ptr %1, i32 %3, i32 7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %.b8 = load i1, ptr @psci_pd_allow_domain_state, align 1
  br i1 %.b8, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  tail call void @psci_set_domain_state(i32 noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_parse_idle_states(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psci_dt_parse_state_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @psci_set_domain_state(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_genpd_del_provider(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_genpd_remove_last(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_cpuidle_psci_domain__185_316_psci_idle_init_domains4, !1, !"__initcall__kmod_cpuidle_psci_domain__185_316_psci_idle_init_domains4", i1 false, i1 false}
!1 = !{!"../drivers/cpuidle/cpuidle-psci-domain.c", i32 316, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/cpuidle/cpuidle-psci-domain.c", i32 322, i32 58}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/cpuidle/cpuidle-psci-domain.c", i32 306, i32 11}
!6 = !{ptr @psci_cpuidle_domain_driver, !7, !"psci_cpuidle_domain_driver", i1 false, i1 false}
!7 = !{!"../drivers/cpuidle/cpuidle-psci-domain.c", i32 303, i32 31}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/cpuidle/cpuidle-psci-domain.c", i32 270, i32 31}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/cpuidle/cpuidle-psci-domain.c", i32 289, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @psci_cpuidle_domain_probe._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @psci_cpuidle_domain_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/cpuidle/cpuidle-psci-domain.c", i32 296, i32 2}
!18 = !{ptr @psci_cpuidle_domain_probe._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @psci_cpuidle_domain_probe._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/cpuidle/cpuidle-psci-domain.c", i32 231, i32 3}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @psci_pd_try_set_osi_mode._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @psci_pd_try_set_osi_mode._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/cpuidle/cpuidle-psci-domain.c", i32 124, i32 35}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/cpuidle/cpuidle-psci-domain.c", i32 164, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @psci_pd_init.__UNIQUE_ID_ddebug184, !28, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!32 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/cpuidle/cpuidle-psci-domain.c", i32 176, i32 2}
!35 = !{ptr @psci_pd_init._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @psci_pd_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"psci_pd_allow_domain_state", i1 false, i1 false}
!38 = !{!"../drivers/cpuidle/cpuidle-psci-domain.c", i32 30, i32 13}
!39 = !{ptr @psci_pd_providers, !40, !"psci_pd_providers", i1 false, i1 false}
!40 = !{!"../drivers/cpuidle/cpuidle-psci-domain.c", i32 29, i32 8}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/cpuidle/cpuidle-psci-domain.c", i32 205, i32 40}
!43 = !{ptr @psci_of_match, !44, !"psci_of_match", i1 false, i1 false}
!44 = !{!"../drivers/cpuidle/cpuidle-psci-domain.c", i32 247, i32 34}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{!"auto-init"}
!59 = !{i64 2148295117, i64 2148295122, i64 2148295135, i64 2148295179, i64 2148295213, i64 2148295234}
