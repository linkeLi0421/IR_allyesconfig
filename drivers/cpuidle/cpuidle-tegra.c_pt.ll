; ModuleID = '/llk/IR_all_yes/drivers/cpuidle/cpuidle-tegra.c_pt.bc'
source_filename = "../drivers/cpuidle/cpuidle-tegra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@tegra_idle_driver = internal global { %struct.cpuidle_driver, [224 x i8] } { %struct.cpuidle_driver { ptr @.str.3, ptr null, i8 0, [10 x %struct.cpuidle_state] [%struct.cpuidle_state { [16 x i8] c"WFI\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ARM WFI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 1, i32 600, i32 1, ptr @arm_cpuidle_simple_enter, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C7\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CPU core powered off\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 4, i32 2000, i32 100, i32 2200, ptr @tegra_cpuidle_enter, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"CC6\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CPU cluster powered off\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 6, i32 5000, i32 0, i32 10000, ptr @tegra_cpuidle_enter, ptr null, ptr null }, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer], i32 3, i32 0, ptr null, ptr null }, [224 x i8] zeroinitializer }, align 32
@tegra_cpuidle_pcie_irqs_in_use._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016tegra-cpuidle: disabling CC6 state, since PCIe IRQs are in use\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra_cpuidle_pcie_irqs_in_use\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/cpuidle/cpuidle-tegra.c\00", [32 x i8] zeroinitializer }, align 32
@tegra_cpuidle_pcie_irqs_in_use._entry_ptr = internal global ptr @tegra_cpuidle_pcie_irqs_in_use._entry, section ".printk_index", align 4
@__initcall__kmod_cpuidle_tegra__170_391_tegra_cpuidle_driver_init6 = internal global ptr @tegra_cpuidle_driver_init, section ".initcall6.init", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra_idle\00", [21 x i8] zeroinitializer }, align 32
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@tegra_cpuidle_enter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra_cpuidle_enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013tegra-cpuidle: failed to enter state %d err: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_cpuidle_enter\00", [44 x i8] zeroinitializer }, align 32
@tegra_cpuidle_enter._entry_ptr = internal global ptr @tegra_cpuidle_enter._entry, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@tegra_abort_flag = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@tegra_idle_barrier = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra_cpuidle_wait_for_secondary_cpus_parking._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013tegra-cpuidle: secondary CPU taking too long to park\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"tegra_cpuidle_wait_for_secondary_cpus_parking\00", [50 x i8] zeroinitializer }, align 32
@tegra_cpuidle_wait_for_secondary_cpus_parking._entry_ptr = internal global ptr @tegra_cpuidle_wait_for_secondary_cpus_parking._entry, section ".printk_index", align 4
@tegra_cpuidle_wait_for_secondary_cpus_parking._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013tegra-cpuidle: timed out waiting secondaries to park\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_cpuidle_wait_for_secondary_cpus_parking._entry_ptr.10 = internal global ptr @tegra_cpuidle_wait_for_secondary_cpus_parking._entry.8, section ".printk_index", align 4
@tegra_cpu_car_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/clk/tegra.h\00", [38 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@tegra_cpuidle_report_cpus_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013tegra-cpuidle: cpu%lu: online=%d flowctrl_csr=0x%08lx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tegra_cpuidle_report_cpus_state\00", [32 x i8] zeroinitializer }, align 32
@tegra_cpuidle_report_cpus_state._entry_ptr = internal global ptr @tegra_cpuidle_report_cpus_state._entry, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@tegra_cpuidle_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_cpuidle_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra-cpuidle\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 8, i64 32, i64 48, i64 53, i64 64]
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"tegra_idle_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 279, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 325, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 280, i32 10 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 243, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"tegra_abort_flag\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 49, i32 17 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"tegra_idle_barrier\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 48, i32 17 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 87, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 92, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [29 x i8] c"../include/linux/clk/tegra.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 112, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 59, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 108, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [21 x i8] c"tegra_cpuidle_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 385, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [35 x i8] c"../drivers/cpuidle/cpuidle-tegra.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 388, i32 11 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__initcall__kmod_cpuidle_tegra__170_391_tegra_cpuidle_driver_init6, ptr @tegra_cpuidle_enter._entry, ptr @tegra_cpuidle_enter._entry_ptr, ptr @tegra_cpuidle_pcie_irqs_in_use._entry, ptr @tegra_cpuidle_pcie_irqs_in_use._entry_ptr, ptr @tegra_cpuidle_report_cpus_state._entry, ptr @tegra_cpuidle_report_cpus_state._entry_ptr, ptr @tegra_cpuidle_wait_for_secondary_cpus_parking._entry, ptr @tegra_cpuidle_wait_for_secondary_cpus_parking._entry.8, ptr @tegra_cpuidle_wait_for_secondary_cpus_parking._entry_ptr, ptr @tegra_cpuidle_wait_for_secondary_cpus_parking._entry_ptr.10, ptr @tegra_idle_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tegra_abort_flag, ptr @tegra_idle_barrier, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @tegra_cpuidle_driver, ptr @.str.15], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_idle_driver to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cpuidle_pcie_irqs_in_use._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cpuidle_enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_abort_flag to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_idle_barrier to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cpuidle_wait_for_secondary_cpus_parking._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cpuidle_wait_for_secondary_cpus_parking._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cpuidle_report_cpus_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cpuidle_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_cpuidle_pcie_irqs_in_use() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.cpuidle_driver, ptr @tegra_idle_driver, i32 0, i32 3, i32 2, i32 4), align 8
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i8 @tegra_get_chip_id() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %call)
  %cmp.not = icmp eq i8 %call, 32
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  tail call void @cpuidle_driver_state_disabled(ptr noundef nonnull @tegra_idle_driver, i32 noundef 2, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_chip_id() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cpuidle_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_cpuidle_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_cpuidle_simple_enter(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cpuidle_enter(ptr noundef %dev, ptr noundef %drv, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu1 = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu1, align 4
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %index)
  %cmp1.not.i = icmp eq i32 %index, 1
  %or.cond.i = and i1 %cmp1.not.i, %cmp.not.i
  br i1 %or.cond.i, label %lor.lhs.false2.i, label %entry.tegra_cpuidle_adjust_state_index.exit_crit_edge

entry.tegra_cpuidle_adjust_state_index.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tegra_cpuidle_adjust_state_index.exit

lor.lhs.false2.i:                                 ; preds = %entry
  %call.i = tail call zeroext i8 @tegra_get_chip_id() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %call.i)
  %cmp3.not.i = icmp eq i8 %call.i, 48
  br i1 %cmp3.not.i, label %if.end.i, label %tegra_cpuidle_adjust_state_index.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %4 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp6.inv.i = icmp ult i32 %4, 2
  %..i = select i1 %cmp6.inv.i, i32 2, i32 0
  br label %tegra_cpuidle_adjust_state_index.exit

tegra_cpuidle_adjust_state_index.exit:            ; preds = %if.end.i, %entry.tegra_cpuidle_adjust_state_index.exit_crit_edge
  %retval.0.i = phi i32 [ %..i, %if.end.i ], [ %index, %entry.tegra_cpuidle_adjust_state_index.exit_crit_edge ]
  %arrayidx2 = getelementptr %struct.cpuidle_device, ptr %dev, i32 0, i32 7, i32 %retval.0.i
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %if.end, label %tegra_cpuidle_adjust_state_index.exit.cleanup_crit_edge

tegra_cpuidle_adjust_state_index.exit.cleanup_crit_edge: ; preds = %tegra_cpuidle_adjust_state_index.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

tegra_cpuidle_adjust_state_index.exit.thread:     ; preds = %lor.lhs.false2.i
  %arrayidx250 = getelementptr %struct.cpuidle_device, ptr %dev, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx250, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not51 = icmp eq i64 %8, 0
  br i1 %tobool.not51, label %tegra_cpuidle_adjust_state_index.exit.thread.if.end2.i_crit_edge, label %tegra_cpuidle_adjust_state_index.exit.thread.cleanup_crit_edge

tegra_cpuidle_adjust_state_index.exit.thread.cleanup_crit_edge: ; preds = %tegra_cpuidle_adjust_state_index.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

tegra_cpuidle_adjust_state_index.exit.thread.if.end2.i_crit_edge: ; preds = %tegra_cpuidle_adjust_state_index.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2.i

if.end:                                           ; preds = %tegra_cpuidle_adjust_state_index.exit
  %9 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %if.end.if.end2.i_crit_edge [
    i32 0, label %if.then3
    i32 2, label %if.then.i
  ]

if.end.if.end2.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2.i

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @arm_cpuidle_simple_enter(ptr noundef %dev, ptr noundef %drv, i32 noundef 0) #5
  br label %if.end6

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @tegra_pending_sgi() #5
  br i1 %call.i.i, label %if.then.i.i, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @tegra_abort_flag, i32 noundef 4) #5
  store volatile i32 1, ptr @tegra_abort_flag, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  tail call void @cpuidle_coupled_parallel_barrier(ptr noundef %dev, ptr noundef nonnull @tegra_idle_barrier) #5
  %call.i.i5.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @tegra_abort_flag, i32 noundef 4) #5
  %10 = load volatile i32, ptr @tegra_abort_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end2.i_crit_edge, label %if.end6.thread

if.end.i.i.if.end2.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2.i

if.end6.thread:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @cpuidle_coupled_parallel_barrier(ptr noundef %dev, ptr noundef nonnull @tegra_idle_barrier) #5
  %call.i.i6.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @tegra_abort_flag, i32 noundef 4) #5
  store volatile i32 0, ptr @tegra_abort_flag, align 4
  br label %if.then8

if.end2.i:                                        ; preds = %if.end.i.i.if.end2.i_crit_edge, %if.end.if.end2.i_crit_edge, %tegra_cpuidle_adjust_state_index.exit.thread.if.end2.i_crit_edge
  %retval.0.i525660 = phi i32 [ 2, %if.end.i.i.if.end2.i_crit_edge ], [ 1, %tegra_cpuidle_adjust_state_index.exit.thread.if.end2.i_crit_edge ], [ %retval.0.i, %if.end.if.end2.i_crit_edge ]
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #5, !srcloc !54
  tail call void @rcu_irq_enter_irqson() #5
  tail call void @tegra_pm_set_cpu_in_lp2() #5
  tail call void @rcu_irq_exit_irqson() #5
  %call6.i = tail call i32 @cpu_pm_enter() #5
  %11 = zext i32 %retval.0.i525660 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %retval.0.i525660, label %if.end2.i.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb8.i
  ]

if.end2.i.sw.epilog.i_crit_edge:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %12 = load ptr, ptr @firmware_ops, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool.not.i22.i = icmp eq ptr %14, null
  br i1 %tobool.not.i22.i, label %sw.bb.i.if.end.i24.i_crit_edge, label %cond.end.i.i

sw.bb.i.if.end.i24.i_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i24.i

cond.end.i.i:                                     ; preds = %sw.bb.i
  %call.i23.i = tail call i32 %14(i32 noundef 4) #5
  %15 = zext i32 %call.i23.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call.i23.i, label %cond.end.i.i.sw.epilog.i_crit_edge [
    i32 0, label %cond.end.i.i.if.end.i24.i_crit_edge
    i32 -38, label %cond.end.i.i.if.end.i24.i_crit_edge66
  ]

cond.end.i.i.if.end.i24.i_crit_edge66:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i24.i

cond.end.i.i.if.end.i24.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i24.i

cond.end.i.i.sw.epilog.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i24.i:                                     ; preds = %cond.end.i.i.if.end.i24.i_crit_edge, %cond.end.i.i.if.end.i24.i_crit_edge66, %sw.bb.i.if.end.i24.i_crit_edge
  %call3.i.i = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @tegra30_pm_secondary_cpu_suspend) #5
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end2.i
  br i1 %cmp.not.i, label %sw.bb8.i.do.body.preheader.i.i.i_crit_edge, label %if.then.i27.i

sw.bb8.i.do.body.preheader.i.i.i_crit_edge:       ; preds = %sw.bb8.i
  br label %do.body.preheader.i.i.i

if.then.i27.i:                                    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i26.i = tail call i32 @cpu_suspend(i32 noundef %3, ptr noundef nonnull @tegra_pm_park_secondary_cpu) #5
  br label %sw.epilog.i

do.body.preheader.i.i.i:                          ; preds = %tegra_cpuidle_report_cpus_state.exit.i.i.i.do.body.preheader.i.i.i_crit_edge, %sw.bb8.i.do.body.preheader.i.i.i_crit_edge
  %dec23.i.i.i = phi i32 [ %dec.i.i.i, %tegra_cpuidle_report_cpus_state.exit.i.i.i.do.body.preheader.i.i.i_crit_edge ], [ 2, %sw.bb8.i.do.body.preheader.i.i.i_crit_edge ]
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %cond.false.i.i.i.do.body.i.i.i_crit_edge, %do.body.preheader.i.i.i
  %timeout_us.0.i.i.i = phi i32 [ %dec4.i.i.i, %cond.false.i.i.i.do.body.i.i.i_crit_edge ], [ 50000, %do.body.preheader.i.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %16 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %rail_off_ready.i.i.i.i = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %rail_off_ready.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rail_off_ready.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i.i, label %tegra_cpu_rail_off_ready.exit.thread.i.i.i, label %tegra_cpu_rail_off_ready.exit.i.i.i, !prof !55

tegra_cpu_rail_off_ready.exit.thread.i.i.i:       ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %cond.false.i.i.i

tegra_cpu_rail_off_ready.exit.i.i.i:              ; preds = %do.body.i.i.i
  %call.i.i.i28.i = tail call zeroext i1 %18() #5
  br i1 %call.i.i.i28.i, label %if.then2.i30.i, label %tegra_cpu_rail_off_ready.exit.i.i.i.cond.false.i.i.i_crit_edge

tegra_cpu_rail_off_ready.exit.i.i.i.cond.false.i.i.i_crit_edge: ; preds = %tegra_cpu_rail_off_ready.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i.i.i

cond.false.i.i.i:                                 ; preds = %tegra_cpu_rail_off_ready.exit.i.i.i.cond.false.i.i.i_crit_edge, %tegra_cpu_rail_off_ready.exit.thread.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #5
  %dec4.i.i.i = add nsw i32 %timeout_us.0.i.i.i, -1
  %tobool5.not.i.i.i = icmp eq i32 %timeout_us.0.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %do.end8.i.i.i, label %cond.false.i.i.i.do.body.i.i.i_crit_edge

cond.false.i.i.i.do.body.i.i.i_crit_edge:         ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i

do.end8.i.i.i:                                    ; preds = %cond.false.i.i.i
  %call9.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  %call8.i.i.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i.i.i.i, i32 %20)
  %cmp9.i.i.i.i = icmp ult i32 %call8.i.i.i.i, %20
  br i1 %cmp9.i.i.i.i, label %do.end8.i.i.i.for.body.i.i.i.i_crit_edge, label %do.end8.i.i.i.tegra_cpuidle_report_cpus_state.exit.i.i.i_crit_edge

do.end8.i.i.i.tegra_cpuidle_report_cpus_state.exit.i.i.i_crit_edge: ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tegra_cpuidle_report_cpus_state.exit.i.i.i

do.end8.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %do.end8.i.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %cpu_online.exit.i.i.i.i.for.body.i.i.i.i_crit_edge, %do.end8.i.i.i.for.body.i.i.i.i_crit_edge
  %call10.i.i.i.i = phi i32 [ %call.i21.i.i.i, %cpu_online.exit.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %call8.i.i.i.i, %do.end8.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %call10.i.i.i.i
  %21 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %call1.i.i.i.i = tail call i32 @flowctrl_read_cpu_csr(i32 noundef %22) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %call10.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i.i = icmp ugt i32 %23, %call10.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %for.body.i.i.i.i.cpu_online.exit.i.i.i.i_crit_edge, label %land.rhs.i.i.i.i.i.i.i.i

for.body.i.i.i.i.cpu_online.exit.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit.i.i.i.i

land.rhs.i.i.i.i.i.i.i.i:                         ; preds = %for.body.i.i.i.i
  %.b37.i.i.i.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i.i.i.i, label %land.rhs.i.i.i.i.i.i.i.i.cpu_online.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i.i, !prof !56

land.rhs.i.i.i.i.i.i.i.i.cpu_online.exit.i.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit.i.i.i.i

if.then.i.i.i.i.i.i.i.i:                          ; preds = %land.rhs.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpu_online.exit.i.i.i.i

cpu_online.exit.i.i.i.i:                          ; preds = %if.then.i.i.i.i.i.i.i.i, %land.rhs.i.i.i.i.i.i.i.i.cpu_online.exit.i.i.i.i_crit_edge, %for.body.i.i.i.i.cpu_online.exit.i.i.i.i_crit_edge
  %div1.i.i.i.i.i.i.i = lshr i32 %call10.i.i.i.i, 5
  %arrayidx.i.i.i.i.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i.i.i.i.i
  %24 = ptrtoint ptr %arrayidx.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.i.i.i.i.i.i.i, align 4
  %and.i.i.i.i.i.i.i = and i32 %call10.i.i.i.i, 31
  %26 = lshr i32 %25, %and.i.i.i.i.i.i.i
  %27 = and i32 %26, 1
  %call3.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %22, i32 noundef %27, i32 noundef %call1.i.i.i.i) #8
  %call.i21.i.i.i = tail call i32 @cpumask_next(i32 noundef %call10.i.i.i.i, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i.i.i = icmp ult i32 %call.i21.i.i.i, %28
  br i1 %cmp.i.i.i.i, label %cpu_online.exit.i.i.i.i.for.body.i.i.i.i_crit_edge, label %cpu_online.exit.i.i.i.i.tegra_cpuidle_report_cpus_state.exit.i.i.i_crit_edge

cpu_online.exit.i.i.i.i.tegra_cpuidle_report_cpus_state.exit.i.i.i_crit_edge: ; preds = %cpu_online.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tegra_cpuidle_report_cpus_state.exit.i.i.i

cpu_online.exit.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %cpu_online.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i

tegra_cpuidle_report_cpus_state.exit.i.i.i:       ; preds = %cpu_online.exit.i.i.i.i.tegra_cpuidle_report_cpus_state.exit.i.i.i_crit_edge, %do.end8.i.i.i.tegra_cpuidle_report_cpus_state.exit.i.i.i_crit_edge
  %dec.i.i.i = add nsw i32 %dec23.i.i.i, -1
  %tobool.not.i.i.i = icmp eq i32 %dec23.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %tegra_cpuidle_wait_for_secondary_cpus_parking.exit.i.i, label %tegra_cpuidle_report_cpus_state.exit.i.i.i.do.body.preheader.i.i.i_crit_edge

tegra_cpuidle_report_cpus_state.exit.i.i.i.do.body.preheader.i.i.i_crit_edge: ; preds = %tegra_cpuidle_report_cpus_state.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.preheader.i.i.i

tegra_cpuidle_wait_for_secondary_cpus_parking.exit.i.i: ; preds = %tegra_cpuidle_report_cpus_state.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %if.end.i31.i

if.then2.i30.i:                                   ; preds = %tegra_cpu_rail_off_ready.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i29.i = tail call i32 @tegra_pm_enter_lp2() #5
  br label %if.end.i31.i

if.end.i31.i:                                     ; preds = %if.then2.i30.i, %tegra_cpuidle_wait_for_secondary_cpus_parking.exit.i.i
  %ret.0.i.i = phi i32 [ -110, %tegra_cpuidle_wait_for_secondary_cpus_parking.exit.i.i ], [ %call3.i29.i, %if.then2.i30.i ]
  %call10.i.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.i.i.i, i32 %29)
  %cmp11.i.i.i = icmp ult i32 %call10.i.i.i, %29
  br i1 %cmp11.i.i.i, label %if.end.i31.i.for.body.i.i.i_crit_edge, label %if.end.i31.i.sw.epilog.i_crit_edge

if.end.i31.i.sw.epilog.i_crit_edge:               ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i31.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i31.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %if.end.i31.i.for.body.i.i.i_crit_edge
  %call12.i.i.i = phi i32 [ %call.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ], [ %call10.i.i.i, %if.end.i31.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %call12.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp1.not.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp1.not.i.i.i, label %for.body.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %32 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %enable_clock.i.i.i.i = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %enable_clock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enable_clock.i.i.i.i, align 4
  %tobool.not.i.i7.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i7.i.i, label %do.end.i.i.i.i, label %if.end23.critedge.i.i.i.i, !prof !55

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 74, i32 noundef 9, ptr noundef null) #5
  br label %tegra_enable_cpu_clock.exit.i.i.i

if.end23.critedge.i.i.i.i:                        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %34(i32 noundef %31) #5
  br label %tegra_enable_cpu_clock.exit.i.i.i

tegra_enable_cpu_clock.exit.i.i.i:                ; preds = %if.end23.critedge.i.i.i.i, %do.end.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %35 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %out_of_reset.i.i.i.i = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %out_of_reset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %out_of_reset.i.i.i.i, align 4
  %tobool.not.i7.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i7.i.i.i, label %do.end.i8.i.i.i, label %if.end23.critedge.i9.i.i.i, !prof !55

do.end.i8.i.i.i:                                  ; preds = %tegra_enable_cpu_clock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 66, i32 noundef 9, ptr noundef null) #5
  br label %tegra_cpu_out_of_reset.exit.i.i.i

if.end23.critedge.i9.i.i.i:                       ; preds = %tegra_enable_cpu_clock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %37(i32 noundef %31) #5
  br label %tegra_cpu_out_of_reset.exit.i.i.i

tegra_cpu_out_of_reset.exit.i.i.i:                ; preds = %if.end23.critedge.i9.i.i.i, %do.end.i8.i.i.i
  tail call void @flowctrl_write_cpu_halt(i32 noundef %31, i32 noundef 0) #5
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %tegra_cpu_out_of_reset.exit.i.i.i, %for.body.i.i.i.if.end.i.i.i_crit_edge
  %call.i.i.i = tail call i32 @cpumask_next(i32 noundef %call12.i.i.i, ptr noundef nonnull @__cpu_online_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %38 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i.i = icmp ult i32 %call.i.i.i, %38
  br i1 %cmp.i.i.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge, label %if.end.i.i.i.sw.epilog.i_crit_edge

if.end.i.i.i.sw.epilog.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

sw.epilog.i:                                      ; preds = %if.end.i.i.i.sw.epilog.i_crit_edge, %if.end.i31.i.sw.epilog.i_crit_edge, %if.then.i27.i, %if.end.i24.i, %cond.end.i.i.sw.epilog.i_crit_edge, %if.end2.i.sw.epilog.i_crit_edge
  %err.0.i = phi i32 [ -22, %if.end2.i.sw.epilog.i_crit_edge ], [ %call3.i.i, %if.end.i24.i ], [ %call.i23.i, %cond.end.i.i.sw.epilog.i_crit_edge ], [ %call.i26.i, %if.then.i27.i ], [ %ret.0.i.i, %if.end.i31.i.sw.epilog.i_crit_edge ], [ %ret.0.i.i, %if.end.i.i.i.sw.epilog.i_crit_edge ]
  %call10.i = tail call i32 @cpu_pm_exit() #5
  tail call void @rcu_irq_enter_irqson() #5
  tail call void @tegra_pm_clear_cpu_in_lp2() #5
  tail call void @rcu_irq_exit_irqson() #5
  tail call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #5, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool17.not.i = icmp eq i32 %err.0.i, 0
  %spec.select = select i1 %tobool17.not.i, i32 %retval.0.i525660, i32 %err.0.i
  br label %if.end6

if.end6:                                          ; preds = %sw.epilog.i, %if.then3
  %retval.0.i5255 = phi i32 [ 0, %if.then3 ], [ %retval.0.i525660, %sw.epilog.i ]
  %ret.0 = phi i32 [ %call4, %if.then3 ], [ %spec.select, %sw.epilog.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp7 = icmp slt i32 %ret.0, 0
  br i1 %cmp7, label %if.end6.if.then8_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.then8:                                         ; preds = %if.end6.if.then8_crit_edge, %if.end6.thread
  %ret.065 = phi i32 [ -4, %if.end6.thread ], [ %ret.0, %if.end6.if.then8_crit_edge ]
  %retval.0.i525564 = phi i32 [ 2, %if.end6.thread ], [ %retval.0.i5255, %if.end6.if.then8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %ret.065)
  %cmp9.not = icmp eq i32 %ret.065, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i525564)
  %cmp10.not = icmp eq i32 %retval.0.i525564, 2
  %or.cond = select i1 %cmp9.not, i1 %cmp10.not, i1 false
  br i1 %or.cond, label %if.then8.cleanup_crit_edge, label %land.end

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.end:                                         ; preds = %if.then8
  %.b46 = load i1, ptr @tegra_cpuidle_enter.__already_done, align 1
  br i1 %.b46, label %land.end.cleanup_crit_edge, label %if.then17, !prof !56

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tegra_cpuidle_enter.__already_done, align 1
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %retval.0.i525564, i32 noundef %ret.065) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %land.end.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %tegra_cpuidle_adjust_state_index.exit.thread.cleanup_crit_edge, %tegra_cpuidle_adjust_state_index.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %tegra_cpuidle_adjust_state_index.exit.cleanup_crit_edge ], [ -1, %land.end.cleanup_crit_edge ], [ -1, %if.then17 ], [ -1, %if.then8.cleanup_crit_edge ], [ %ret.0, %if.end6.cleanup_crit_edge ], [ -1, %tegra_cpuidle_adjust_state_index.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_pm_set_cpu_in_lp2() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_pm_clear_cpu_in_lp2() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_pending_sgi() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_coupled_parallel_barrier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_pm_secondary_cpu_suspend(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pm_park_secondary_cpu(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pm_enter_lp2() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flowctrl_read_cpu_csr(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flowctrl_write_cpu_halt(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_driver_state_disabled(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cpuidle_probe(ptr nocapture noundef readnone %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tegra_pmc_get_suspend_mode() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp eq i32 %call, 5
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @tegra_pmc_get_suspend_mode() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @cpuidle_driver_state_disabled(ptr noundef nonnull @tegra_idle_driver, i32 noundef 2, i1 noundef zeroext true) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = tail call zeroext i8 @tegra_get_chip_id() #5
  %0 = zext i8 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %call5, label %if.end4.return_crit_edge [
    i8 32, label %if.end4.sw.epilog.sink.split_crit_edge
    i8 48, label %if.end4.sw.epilog_crit_edge
    i8 53, label %if.end4.sw.bb6_crit_edge
    i8 64, label %if.end4.sw.bb6_crit_edge8
  ]

if.end4.sw.bb6_crit_edge8:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6

if.end4.sw.bb6_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end4.sw.epilog.sink.split_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb6:                                           ; preds = %if.end4.sw.bb6_crit_edge, %if.end4.sw.bb6_crit_edge8
  store ptr @tegra114_enter_s2idle, ptr getelementptr inbounds (%struct.cpuidle_driver, ptr @tegra_idle_driver, i32 0, i32 3, i32 1, i32 10), align 8
  store i32 1000, ptr getelementptr inbounds (%struct.cpuidle_driver, ptr @tegra_idle_driver, i32 0, i32 3, i32 1, i32 7), align 4
  store i32 500, ptr getelementptr inbounds (%struct.cpuidle_driver, ptr @tegra_idle_driver, i32 0, i32 3, i32 1, i32 5), align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb6, %if.end4.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 2, %sw.bb6 ], [ 1, %if.end4.sw.epilog.sink.split_crit_edge ]
  tail call void @cpuidle_driver_state_disabled(ptr noundef nonnull @tegra_idle_driver, i32 noundef %.sink, i1 noundef zeroext true) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end4.sw.epilog_crit_edge
  %call7 = tail call i32 @cpuidle_register(ptr noundef nonnull @tegra_idle_driver, ptr noundef nonnull @__cpu_possible_mask) #5
  br label %return

return:                                           ; preds = %sw.epilog, %if.end4.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call7, %sw.epilog ], [ -517, %entry.return_crit_edge ], [ -22, %if.end4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pmc_get_suspend_mode() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra114_enter_s2idle(ptr noundef %dev, ptr noundef %drv, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tegra_cpuidle_enter(ptr noundef %dev, ptr noundef %drv, i32 noundef %index)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/cpuidle/cpuidle-tegra.c", i32 325, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tegra_cpuidle_pcie_irqs_in_use._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tegra_cpuidle_pcie_irqs_in_use._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_cpuidle_tegra__170_391_tegra_cpuidle_driver_init6, !7, !"__initcall__kmod_cpuidle_tegra__170_391_tegra_cpuidle_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/cpuidle/cpuidle-tegra.c", i32 391, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/cpuidle/cpuidle-tegra.c", i32 280, i32 10}
!10 = !{ptr @tegra_idle_driver, !11, !"tegra_idle_driver", i1 false, i1 false}
!11 = !{!"../drivers/cpuidle/cpuidle-tegra.c", i32 279, i32 30}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/cpuidle/cpuidle-tegra.c", i32 243, i32 4}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @tegra_cpuidle_enter._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @tegra_cpuidle_enter._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @tegra_abort_flag, !19, !"tegra_abort_flag", i1 false, i1 false}
!19 = !{!"../drivers/cpuidle/cpuidle-tegra.c", i32 49, i32 17}
!20 = !{ptr @tegra_idle_barrier, !21, !"tegra_idle_barrier", i1 false, i1 false}
!21 = !{!"../drivers/cpuidle/cpuidle-tegra.c", i32 48, i32 17}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/cpuidle/cpuidle-tegra.c", i32 87, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tegra_cpuidle_wait_for_secondary_cpus_parking._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @tegra_cpuidle_wait_for_secondary_cpus_parking._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/cpuidle/cpuidle-tegra.c", i32 92, i32 2}
!29 = !{ptr @tegra_cpuidle_wait_for_secondary_cpus_parking._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tegra_cpuidle_wait_for_secondary_cpus_parking._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/clk/tegra.h", i32 112, i32 6}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/cpuidle/cpuidle-tegra.c", i32 59, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @tegra_cpuidle_report_cpus_state._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @tegra_cpuidle_report_cpus_state._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/cpuidle/cpuidle-tegra.c", i32 388, i32 11}
!43 = !{ptr @tegra_cpuidle_driver, !44, !"tegra_cpuidle_driver", i1 false, i1 false}
!44 = !{!"../drivers/cpuidle/cpuidle-tegra.c", i32 385, i32 31}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2152530533}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2152530838}
