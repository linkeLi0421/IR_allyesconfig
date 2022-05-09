; ModuleID = '/llk/IR_all_yes/arch/arm/mach-meson/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-meson/platsmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amlogic,meson8-smp\00", [45 x i8] zeroinitializer }, align 32
@meson8_smp_ops = internal global %struct.smp_operations { ptr null, ptr @meson8_smp_prepare_cpus, ptr null, ptr @meson8_smp_boot_secondary, ptr @meson8_smp_cpu_kill, ptr @meson8_smp_cpu_die, ptr null, ptr null }, section ".init.data", align 4
@__cpu_method_of_table_meson8_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @meson8_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amlogic,meson8b-smp\00", [44 x i8] zeroinitializer }, align 32
@meson8b_smp_ops = internal global %struct.smp_operations { ptr null, ptr @meson8b_smp_prepare_cpus, ptr null, ptr @meson8b_smp_boot_secondary, ptr @meson8b_smp_cpu_kill, ptr @meson8_smp_cpu_die, ptr null, ptr null }, section ".init.data", align 4
@__cpu_method_of_table_meson8b_smp = internal constant %struct.of_cpu_method { ptr @.str.1, ptr @meson8b_smp_ops }, section "__cpu_method_of_table", align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm,cortex-a9-scu\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amlogic,meson8-pmu\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amlogic,meson8-smp-sram\00", [40 x i8] zeroinitializer }, align 32
@meson_smp_prepare_cpus.node = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@meson_smp_prepare_cpus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013Missing SRAM node\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"meson_smp_prepare_cpus\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/mach-meson/platsmp.c\00", [34 x i8] zeroinitializer }, align 32
@meson_smp_prepare_cpus._entry_ptr = internal global ptr @meson_smp_prepare_cpus._entry, section ".printk_index", align 4
@sram_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@meson_smp_prepare_cpus._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Couldn't map SRAM registers\0A\00", [33 x i8] zeroinitializer }, align 32
@meson_smp_prepare_cpus._entry_ptr.10 = internal global ptr @meson_smp_prepare_cpus._entry.8, section ".printk_index", align 4
@pmu = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@meson_smp_prepare_cpus._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Couldn't map PMU registers\0A\00", [34 x i8] zeroinitializer }, align 32
@meson_smp_prepare_cpus._entry_ptr.13 = internal global ptr @meson_smp_prepare_cpus._entry.11, section ".printk_index", align 4
@meson_smp_prepare_cpus._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013Missing SCU node\0A\00", [44 x i8] zeroinitializer }, align 32
@meson_smp_prepare_cpus._entry_ptr.16 = internal global ptr @meson_smp_prepare_cpus._entry.14, section ".printk_index", align 4
@scu_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@meson_smp_prepare_cpus._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.7, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Couldn't map SCU registers\0A\00", [34 x i8] zeroinitializer }, align 32
@meson_smp_prepare_cpus._entry_ptr.19 = internal global ptr @meson_smp_prepare_cpus._entry.17, section ".printk_index", align 4
@meson8_smp_boot_secondary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.7, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Couldn't get the reset controller for CPU%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"meson8_smp_boot_secondary\00", [38 x i8] zeroinitializer }, align 32
@meson8_smp_boot_secondary._entry_ptr = internal global ptr @meson8_smp_boot_secondary._entry, section ".printk_index", align 4
@meson8_smp_boot_secondary._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.7, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Failed to assert CPU%d reset\0A\00", [32 x i8] zeroinitializer }, align 32
@meson8_smp_boot_secondary._entry_ptr.24 = internal global ptr @meson8_smp_boot_secondary._entry.22, section ".printk_index", align 4
@meson8_smp_boot_secondary._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.7, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Couldn't wake up CPU%d\0A\00", [38 x i8] zeroinitializer }, align 32
@meson8_smp_boot_secondary._entry_ptr.27 = internal global ptr @meson8_smp_boot_secondary._entry.25, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@meson8_smp_boot_secondary._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.7, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Error when disabling isolation of CPU%d\0A\00", [53 x i8] zeroinitializer }, align 32
@meson8_smp_boot_secondary._entry_ptr.30 = internal global ptr @meson8_smp_boot_secondary._entry.28, section ".printk_index", align 4
@meson8_smp_boot_secondary._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.7, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Failed to de-assert CPU%d reset\0A\00", [61 x i8] zeroinitializer }, align 32
@meson8_smp_boot_secondary._entry_ptr.33 = internal global ptr @meson8_smp_boot_secondary._entry.31, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@meson_smp_finalize_secondary_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Timeout while waiting for CPU%d status\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"meson_smp_finalize_secondary_boot\00", [62 x i8] zeroinitializer }, align 32
@meson_smp_finalize_secondary_boot._entry_ptr = internal global ptr @meson_smp_finalize_secondary_boot._entry, section ".printk_index", align 4
@meson8_smp_cpu_kill._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.7, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Error while waiting for SCU power-off on CPU%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"meson8_smp_cpu_kill\00", [44 x i8] zeroinitializer }, align 32
@meson8_smp_cpu_kill._entry_ptr = internal global ptr @meson8_smp_cpu_kill._entry, section ".printk_index", align 4
@meson8_smp_cpu_kill._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.7, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Error when enabling isolation for CPU%d\0A\00", [53 x i8] zeroinitializer }, align 32
@meson8_smp_cpu_kill._entry_ptr.40 = internal global ptr @meson8_smp_cpu_kill._entry.38, section ".printk_index", align 4
@meson8_smp_cpu_kill._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.7, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Couldn't change sleep status of CPU%d\0A\00", [55 x i8] zeroinitializer }, align 32
@meson8_smp_cpu_kill._entry_ptr.43 = internal global ptr @meson8_smp_cpu_kill._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm,cortex-a5-scu\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amlogic,meson8b-pmu\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amlogic,meson8b-smp-sram\00", [39 x i8] zeroinitializer }, align 32
@meson8b_smp_boot_secondary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.47, ptr @.str.7, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"meson8b_smp_boot_secondary\00", [37 x i8] zeroinitializer }, align 32
@meson8b_smp_boot_secondary._entry_ptr = internal global ptr @meson8b_smp_boot_secondary._entry, section ".printk_index", align 4
@meson8b_smp_boot_secondary._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.7, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Couldn't power up CPU%d\0A\00", [37 x i8] zeroinitializer }, align 32
@meson8b_smp_boot_secondary._entry_ptr.50 = internal global ptr @meson8b_smp_boot_secondary._entry.48, section ".printk_index", align 4
@meson8b_smp_boot_secondary._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.47, ptr @.str.7, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@meson8b_smp_boot_secondary._entry_ptr.52 = internal global ptr @meson8b_smp_boot_secondary._entry.51, section ".printk_index", align 4
@meson8b_smp_boot_secondary._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.47, ptr @.str.7, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Couldn't power up the memory for CPU%d\0A\00", [54 x i8] zeroinitializer }, align 32
@meson8b_smp_boot_secondary._entry_ptr.55 = internal global ptr @meson8b_smp_boot_secondary._entry.53, section ".printk_index", align 4
@meson8b_smp_boot_secondary._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.47, ptr @.str.7, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@meson8b_smp_boot_secondary._entry_ptr.57 = internal global ptr @meson8b_smp_boot_secondary._entry.56, section ".printk_index", align 4
@meson8b_smp_boot_secondary._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.47, ptr @.str.7, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Timeout while polling PMU for CPU%d status\0A\00", [50 x i8] zeroinitializer }, align 32
@meson8b_smp_boot_secondary._entry_ptr.60 = internal global ptr @meson8b_smp_boot_secondary._entry.58, section ".printk_index", align 4
@meson8b_smp_boot_secondary._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.47, ptr @.str.7, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@meson8b_smp_boot_secondary._entry_ptr.62 = internal global ptr @meson8b_smp_boot_secondary._entry.61, section ".printk_index", align 4
@meson8b_smp_boot_secondary._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.47, ptr @.str.7, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@meson8b_smp_boot_secondary._entry_ptr.64 = internal global ptr @meson8b_smp_boot_secondary._entry.63, section ".printk_index", align 4
@meson8b_smp_cpu_kill._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.65, ptr @.str.7, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"meson8b_smp_cpu_kill\00", [43 x i8] zeroinitializer }, align 32
@meson8b_smp_cpu_kill._entry_ptr = internal global ptr @meson8b_smp_cpu_kill._entry, section ".printk_index", align 4
@meson8b_smp_cpu_kill._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.7, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Couldn't power down CPU%d\0A\00", [35 x i8] zeroinitializer }, align 32
@meson8b_smp_cpu_kill._entry_ptr.68 = internal global ptr @meson8b_smp_cpu_kill._entry.66, section ".printk_index", align 4
@meson8b_smp_cpu_kill._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.65, ptr @.str.7, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@meson8b_smp_cpu_kill._entry_ptr.70 = internal global ptr @meson8b_smp_cpu_kill._entry.69, section ".printk_index", align 4
@meson8b_smp_cpu_kill._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.65, ptr @.str.7, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@meson8b_smp_cpu_kill._entry_ptr.72 = internal global ptr @meson8b_smp_cpu_kill._entry.71, section ".printk_index", align 4
@meson8b_smp_cpu_kill._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.65, ptr @.str.7, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Couldn't power down the memory of CPU%d\0A\00", [53 x i8] zeroinitializer }, align 32
@meson8b_smp_cpu_kill._entry_ptr.75 = internal global ptr @meson8b_smp_cpu_kill._entry.73, section ".printk_index", align 4
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 429, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 430, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 110, i32 25 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 110, i32 46 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 111, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 64, i32 29 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 69, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [10 x i8] c"sram_base\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 34, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 75, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [4 x i8] c"pmu\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 36, i32 23 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 82, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 89, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [9 x i8] c"scu_base\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 35, i32 22 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 95, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 161, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 170, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 178, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 188, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 195, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 139, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 324, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 335, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 345, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 104, i32 25 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 104, i32 46 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 105, i32 11 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 218, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 228, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 237, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 245, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 253, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 263, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 271, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 278, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 366, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 377, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 385, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 395, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.269 = private constant [33 x i8] c"../arch/arm/mach-meson/platsmp.c\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 403, i32 3 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__cpu_method_of_table_meson8_smp, ptr @__cpu_method_of_table_meson8b_smp, ptr @meson8_smp_boot_secondary._entry, ptr @meson8_smp_boot_secondary._entry.22, ptr @meson8_smp_boot_secondary._entry.25, ptr @meson8_smp_boot_secondary._entry.28, ptr @meson8_smp_boot_secondary._entry.31, ptr @meson8_smp_boot_secondary._entry_ptr, ptr @meson8_smp_boot_secondary._entry_ptr.24, ptr @meson8_smp_boot_secondary._entry_ptr.27, ptr @meson8_smp_boot_secondary._entry_ptr.30, ptr @meson8_smp_boot_secondary._entry_ptr.33, ptr @meson8_smp_cpu_kill._entry, ptr @meson8_smp_cpu_kill._entry.38, ptr @meson8_smp_cpu_kill._entry.41, ptr @meson8_smp_cpu_kill._entry_ptr, ptr @meson8_smp_cpu_kill._entry_ptr.40, ptr @meson8_smp_cpu_kill._entry_ptr.43, ptr @meson8b_smp_boot_secondary._entry, ptr @meson8b_smp_boot_secondary._entry.48, ptr @meson8b_smp_boot_secondary._entry.51, ptr @meson8b_smp_boot_secondary._entry.53, ptr @meson8b_smp_boot_secondary._entry.56, ptr @meson8b_smp_boot_secondary._entry.58, ptr @meson8b_smp_boot_secondary._entry.61, ptr @meson8b_smp_boot_secondary._entry.63, ptr @meson8b_smp_boot_secondary._entry_ptr, ptr @meson8b_smp_boot_secondary._entry_ptr.50, ptr @meson8b_smp_boot_secondary._entry_ptr.52, ptr @meson8b_smp_boot_secondary._entry_ptr.55, ptr @meson8b_smp_boot_secondary._entry_ptr.57, ptr @meson8b_smp_boot_secondary._entry_ptr.60, ptr @meson8b_smp_boot_secondary._entry_ptr.62, ptr @meson8b_smp_boot_secondary._entry_ptr.64, ptr @meson8b_smp_cpu_kill._entry, ptr @meson8b_smp_cpu_kill._entry.66, ptr @meson8b_smp_cpu_kill._entry.69, ptr @meson8b_smp_cpu_kill._entry.71, ptr @meson8b_smp_cpu_kill._entry.73, ptr @meson8b_smp_cpu_kill._entry_ptr, ptr @meson8b_smp_cpu_kill._entry_ptr.68, ptr @meson8b_smp_cpu_kill._entry_ptr.70, ptr @meson8b_smp_cpu_kill._entry_ptr.72, ptr @meson8b_smp_cpu_kill._entry_ptr.75, ptr @meson_smp_finalize_secondary_boot._entry, ptr @meson_smp_finalize_secondary_boot._entry_ptr, ptr @meson_smp_prepare_cpus._entry, ptr @meson_smp_prepare_cpus._entry.11, ptr @meson_smp_prepare_cpus._entry.14, ptr @meson_smp_prepare_cpus._entry.17, ptr @meson_smp_prepare_cpus._entry.8, ptr @meson_smp_prepare_cpus._entry_ptr, ptr @meson_smp_prepare_cpus._entry_ptr.10, ptr @meson_smp_prepare_cpus._entry_ptr.13, ptr @meson_smp_prepare_cpus._entry_ptr.16, ptr @meson_smp_prepare_cpus._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @meson_smp_prepare_cpus.node, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sram_base, ptr @.str.9, ptr @pmu, ptr @.str.12, ptr @.str.15, ptr @scu_base, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.54, ptr @.str.59, ptr @.str.65, ptr @.str.67, ptr @.str.74], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_smp_prepare_cpus.node to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_smp_prepare_cpus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_smp_prepare_cpus._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_smp_prepare_cpus._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_smp_prepare_cpus._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scu_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_smp_prepare_cpus._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8_smp_boot_secondary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8_smp_boot_secondary._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8_smp_boot_secondary._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8_smp_boot_secondary._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8_smp_boot_secondary._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_smp_finalize_secondary_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8_smp_cpu_kill._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8_smp_cpu_kill._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8_smp_cpu_kill._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_smp_boot_secondary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_smp_boot_secondary._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_smp_boot_secondary._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_smp_boot_secondary._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_smp_boot_secondary._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_smp_boot_secondary._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_smp_boot_secondary._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_smp_boot_secondary._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_smp_cpu_kill._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_smp_cpu_kill._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_smp_cpu_kill._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_smp_cpu_kill._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_smp_cpu_kill._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson8_smp_prepare_cpus(i32 noundef %max_cpus) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @meson_smp_prepare_cpus(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson8_smp_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_get_cpu_node(i32 noundef %cpu, ptr noundef null) #6
  %call.i.i = tail call ptr @__of_reset_control_get(ptr noundef %call.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %cpu) #10
  %0 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %call.i61 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @secondary_startup to i32)) #6
  %1 = tail call i32 @llvm.bswap.i32(i32 %call.i61) #6
  %2 = load ptr, ptr @sram_base, align 4
  %sub.i = shl i32 %cpu, 2
  %add.ptr.i = getelementptr i8, ptr %2, i32 %sub.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #6, !srcloc !147
  %3 = load ptr, ptr @scu_base, align 4
  %call2.i = tail call i32 @scu_cpu_power_enable(ptr noundef %3, i32 noundef %cpu) #6
  %call4 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %cpu) #10
  br label %out

if.end11:                                         ; preds = %if.end
  %4 = load ptr, ptr @pmu, align 4
  %add = shl i32 %cpu, 1
  %shl = add i32 %add, 2
  %shl12 = shl i32 3, %shl
  %call.i62 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 4, i32 noundef %shl12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp = icmp slt i32 %call.i62, 0
  br i1 %cmp, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %cpu) #10
  br label %out

if.end20:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #6
  %6 = load ptr, ptr @pmu, align 4
  %shl21 = shl nuw i32 1, %cpu
  %call.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef %shl21, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp23 = icmp slt i32 %call.i63, 0
  br i1 %cmp23, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %cpu) #10
  br label %out

if.end30:                                         ; preds = %if.end20
  %call31 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %cpu) #10
  br label %out

if.end39:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @meson_smp_finalize_secondary_boot(i32 noundef %cpu)
  br label %out

out:                                              ; preds = %if.end39, %do.end36, %do.end27, %do.end17, %do.end8
  tail call void @reset_control_put(ptr noundef %call.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ 0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson8_smp_cpu_kill(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -5000, %0
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %1 = load ptr, ptr @scu_base, align 4
  %call = tail call i32 @scu_get_cpu_power_mode(ptr noundef %1, i32 noundef %cpu) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cond = icmp eq i32 %call, 3
  br i1 %cond, label %if.end8, label %if.end

if.end:                                           ; preds = %do.body
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %2
  %cmp1 = icmp slt i32 %sub, 0
  br i1 %cmp1, label %if.end.do.body_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end8:                                          ; preds = %do.body
  tail call void @msleep(i32 noundef 30) #6
  %3 = load ptr, ptr @pmu, align 4
  %shl = shl nuw i32 1, %cpu
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef %shl, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %if.end8.cleanup.sink.split_crit_edge, label %if.end17

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end17:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #6
  %5 = load ptr, ptr @pmu, align 4
  %add18 = shl i32 %cpu, 1
  %shl19 = add i32 %add18, 2
  %shl20 = shl i32 3, %shl19
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4, i32 noundef %shl20, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp22 = icmp slt i32 %call.i41, 0
  br i1 %cmp22, label %if.end17.cleanup.sink.split_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end17.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.42.sink = phi ptr [ @.str.39, %if.end8.cleanup.sink.split_crit_edge ], [ @.str.42, %if.end17.cleanup.sink.split_crit_edge ], [ @.str.36, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %if.end8.cleanup.sink.split_crit_edge ], [ %call.i41, %if.end17.cleanup.sink.split_crit_edge ], [ -110, %if.end.cleanup.sink.split_crit_edge ]
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.42.sink, i32 noundef %cpu) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end17.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson8_smp_cpu_die(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sram_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !148
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  %shl.i = shl nuw i32 1, %cpu
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %2, %neg.i
  %or3.i = or i32 %and.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #6
  %4 = load ptr, ptr @sram_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %3) #6, !srcloc !147
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_louis \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #6, !srcloc !151
  %5 = load ptr, ptr @scu_base, align 4
  %call = tail call i32 @scu_power_mode(ptr noundef %5, i32 noundef 3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void asm sideeffect "wfi", "~{memory}"() #6, !srcloc !153
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 305, i32 noundef 9, ptr noundef null) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_smp_prepare_cpus(ptr noundef %scu_compatible, ptr noundef %pmu_compatible, ptr noundef %sram_compatible) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %sram_compatible) #6
  store ptr %call, ptr @meson_smp_prepare_cpus.node, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #6
  store ptr %call2, ptr @sram_base, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %return

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef %pmu_compatible) #6
  store ptr %call10, ptr @pmu, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %return

if.end17:                                         ; preds = %if.end9
  %call18 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %scu_compatible) #6
  store ptr %call18, ptr @meson_smp_prepare_cpus.node, align 4
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %return

if.end25:                                         ; preds = %if.end17
  %call26 = tail call ptr @of_iomap(ptr noundef nonnull %call18, i32 noundef 0) #6
  store ptr %call26, ptr @scu_base, align 4
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %return

if.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @scu_enable(ptr noundef nonnull %call26) #6
  br label %return

return:                                           ; preds = %if.end33, %do.end30, %do.end22, %do.end14, %do.end6, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_smp_finalize_secondary_boot(i32 noundef %cpu) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %sub = shl i32 %cpu, 2
  %add.neg = sub i32 -1000, %0
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %1 = load ptr, ptr @sram_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %sub
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body6, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub3 = add i32 %add.neg, %3
  %cmp = icmp slt i32 %sub3, 0
  br i1 %cmp, label %while.body.while.cond_crit_edge, label %do.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %cpu) #10
  br label %cleanup

do.body6:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %call11 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @secondary_startup to i32)) #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %call11)
  %5 = load ptr, ptr @sram_base, align 4
  %add.ptr15 = getelementptr i8, ptr %5, i32 %sub
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %4) #6, !srcloc !147
  %6 = load ptr, ptr @sram_base, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !148
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  %shl.i = shl nuw i32 1, %cpu
  %or.i = or i32 %shl.i, %8
  %or3.i = or i32 %or.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #6
  %10 = load ptr, ptr @sram_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #6, !srcloc !147
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_cpu_power_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_get_cpu_power_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_power_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson8b_smp_prepare_cpus(i32 noundef %max_cpus) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @meson_smp_prepare_cpus(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson8b_smp_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !156
  %call.i = tail call ptr @of_get_cpu_node(i32 noundef %cpu, ptr noundef null) #6
  %call.i.i = tail call ptr @__of_reset_control_get(ptr noundef %call.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %cpu) #10
  %1 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %call.i149 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @secondary_startup to i32)) #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %call.i149) #6
  %3 = load ptr, ptr @sram_base, align 4
  %sub.i = shl i32 %cpu, 2
  %add.ptr.i = getelementptr i8, ptr %3, i32 %sub.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !147
  %4 = load ptr, ptr @scu_base, align 4
  %call2.i = tail call i32 @scu_cpu_power_enable(ptr noundef %4, i32 noundef %cpu) #6
  %5 = load ptr, ptr @pmu, align 4
  %mul = shl i32 %cpu, 1
  %add = add i32 %mul, 16
  %shl = shl i32 3, %add
  %call.i150 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %cmp = icmp slt i32 %call.i150, 0
  br i1 %cmp, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %cpu) #10
  br label %out

if.end11:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 1073740) #6
  %call12 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %cpu) #10
  br label %out

if.end19:                                         ; preds = %if.end11
  %7 = load ptr, ptr @pmu, align 4
  %mul20.neg = mul i32 %cpu, -4
  %sub = add i32 %mul20.neg, 32
  %shl21 = shl i32 15, %sub
  %call.i151 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 20, i32 noundef %shl21, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %cmp23 = icmp slt i32 %call.i151, 0
  br i1 %cmp23, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %cpu) #10
  br label %out

if.end30:                                         ; preds = %if.end19
  %8 = load ptr, ptr @pmu, align 4
  %shl32 = add i32 %mul, 2
  %shl33 = shl i32 3, %shl32
  %call.i152 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 4, i32 noundef %shl33, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %cmp35 = icmp slt i32 %call.i152, 0
  br i1 %cmp35, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %cpu) #10
  br label %out

if.end42:                                         ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #6
  %call43 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call43, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 261) #6
  %10 = load ptr, ptr @pmu, align 4
  %call57166 = call i32 @regmap_read(ptr noundef %10, i32 noundef 4, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57166)
  %tobool58.not167 = icmp eq i32 %call57166, 0
  br i1 %tobool58.not167, label %lor.lhs.false.lr.ph, label %if.end42.do.end88_crit_edge

if.end42.do.end88_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end88

lor.lhs.false.lr.ph:                              ; preds = %if.end42
  %add59 = add i32 %cpu, 16
  %shl60 = shl nuw i32 1, %add59
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then72.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, %shl60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  br i1 %tobool61.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call65 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call65, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call65, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then72

if.then72:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %13 = load ptr, ptr @pmu, align 4
  %call57 = call i32 @regmap_read(ptr noundef %13, i32 noundef 4, ptr noundef nonnull %val) #6
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then72.lor.lhs.false_crit_edge, label %if.then72.do.end88_crit_edge

if.then72.do.end88_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end88

if.then72.lor.lhs.false_crit_edge:                ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %14 = load ptr, ptr @pmu, align 4
  %call69 = call i32 @regmap_read(ptr noundef %14, i32 noundef 4, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool76.not = icmp eq i32 %call69, 0
  br i1 %tobool76.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end88_crit_edge

for.end.do.end88_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end88

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and79 = and i32 %16, %shl60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %lor.rhs.do.end88_crit_edge, label %if.end91

lor.rhs.do.end88_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end88

do.end88:                                         ; preds = %lor.rhs.do.end88_crit_edge, %for.end.do.end88_crit_edge, %if.then72.do.end88_crit_edge, %if.end42.do.end88_crit_edge
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %cpu) #10
  br label %out

if.end91:                                         ; preds = %lor.rhs
  %17 = load ptr, ptr @pmu, align 4
  %shl92 = shl nuw i32 1, %cpu
  %call.i154 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef %shl92, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %cmp94 = icmp slt i32 %call.i154, 0
  br i1 %cmp94, label %do.end98, label %if.end101

do.end98:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %cpu) #10
  br label %out

if.end101:                                        ; preds = %if.end91
  %call102 = call i32 @reset_control_deassert(ptr noundef %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end110, label %do.end107

do.end107:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %cpu) #10
  br label %out

if.end110:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @meson_smp_finalize_secondary_boot(i32 noundef %cpu)
  br label %out

out:                                              ; preds = %if.end110, %do.end107, %do.end98, %do.end88, %do.end39, %do.end27, %do.end16, %do.end8
  call void @reset_control_put(ptr noundef %call.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ 0, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson8b_smp_cpu_kill(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %count.0 = phi i32 [ 5000, %entry ], [ %inc, %if.end.do.body_crit_edge ]
  %0 = load ptr, ptr @scu_base, align 4
  %call = tail call i32 @scu_get_cpu_power_mode(ptr noundef %0, i32 noundef %cpu) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cond = icmp eq i32 %call, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #6
  br i1 %cond, label %if.end7, label %if.end

if.end:                                           ; preds = %do.body
  %inc = add i32 %count.0, 1
  %tobool.not = icmp eq i32 %inc, 0
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end7:                                          ; preds = %do.body
  %2 = load ptr, ptr @pmu, align 4
  %mul = shl i32 %cpu, 1
  %add = add i32 %mul, 16
  %shl = shl i32 3, %add
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 0, i32 noundef %shl, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9 = icmp slt i32 %call.i, 0
  br i1 %cmp9, label %if.end7.cleanup.sink.split_crit_edge, label %if.end16

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end7
  %3 = load ptr, ptr @pmu, align 4
  %shl17 = shl nuw i32 1, %cpu
  %call.i69 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef %shl17, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp19 = icmp slt i32 %call.i69, 0
  br i1 %cmp19, label %if.end16.cleanup.sink.split_crit_edge, label %if.end26

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #6
  %5 = load ptr, ptr @pmu, align 4
  %shl28 = add i32 %mul, 2
  %shl29 = shl i32 3, %shl28
  %call.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4, i32 noundef %shl29, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp31 = icmp slt i32 %call.i70, 0
  br i1 %cmp31, label %if.end26.cleanup.sink.split_crit_edge, label %if.end38

if.end26.cleanup.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end38:                                         ; preds = %if.end26
  %6 = load ptr, ptr @pmu, align 4
  %mul39.neg = mul i32 %cpu, -4
  %sub = add i32 %mul39.neg, 32
  %shl40 = shl i32 15, %sub
  %call.i71 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 20, i32 noundef %shl40, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp42 = icmp slt i32 %call.i71, 0
  br i1 %cmp42, label %if.end38.cleanup.sink.split_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38.cleanup.sink.split_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end38.cleanup.sink.split_crit_edge, %if.end26.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.74.sink = phi ptr [ @.str.67, %if.end7.cleanup.sink.split_crit_edge ], [ @.str.39, %if.end16.cleanup.sink.split_crit_edge ], [ @.str.42, %if.end26.cleanup.sink.split_crit_edge ], [ @.str.74, %if.end38.cleanup.sink.split_crit_edge ], [ @.str.36, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %if.end7.cleanup.sink.split_crit_edge ], [ %call.i69, %if.end16.cleanup.sink.split_crit_edge ], [ %call.i70, %if.end26.cleanup.sink.split_crit_edge ], [ %call.i71, %if.end38.cleanup.sink.split_crit_edge ], [ -110, %if.end.cleanup.sink.split_crit_edge ]
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.74.sink, i32 noundef %cpu) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end38.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end38.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !89, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !108, !109, !111, !112, !113, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !135, !136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-meson/platsmp.c", i32 429, i32 1}
!2 = !{ptr @__cpu_method_of_table_meson8_smp, !1, !"__cpu_method_of_table_meson8_smp", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-meson/platsmp.c", i32 430, i32 1}
!5 = !{ptr @__cpu_method_of_table_meson8b_smp, !4, !"__cpu_method_of_table_meson8b_smp", i1 false, i1 false}
!6 = !{ptr @meson8_smp_ops, !7, !"meson8_smp_ops", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-meson/platsmp.c", i32 411, i32 30}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-meson/platsmp.c", i32 110, i32 25}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-meson/platsmp.c", i32 110, i32 46}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-meson/platsmp.c", i32 111, i32 11}
!14 = !{ptr @meson_smp_prepare_cpus.node, !15, !"node", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-meson/platsmp.c", i32 64, i32 29}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-meson/platsmp.c", i32 69, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @meson_smp_prepare_cpus._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @meson_smp_prepare_cpus._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-meson/platsmp.c", i32 75, i32 3}
!24 = !{ptr @meson_smp_prepare_cpus._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @meson_smp_prepare_cpus._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-meson/platsmp.c", i32 82, i32 3}
!28 = !{ptr @meson_smp_prepare_cpus._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @meson_smp_prepare_cpus._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-meson/platsmp.c", i32 89, i32 3}
!32 = !{ptr @meson_smp_prepare_cpus._entry.14, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @meson_smp_prepare_cpus._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-meson/platsmp.c", i32 95, i32 3}
!36 = !{ptr @meson_smp_prepare_cpus._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @meson_smp_prepare_cpus._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @sram_base, !39, !"sram_base", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-meson/platsmp.c", i32 34, i32 22}
!40 = !{ptr @pmu, !41, !"pmu", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-meson/platsmp.c", i32 36, i32 23}
!42 = !{ptr @scu_base, !43, !"scu_base", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-meson/platsmp.c", i32 35, i32 22}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-meson/platsmp.c", i32 161, i32 3}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @meson8_smp_boot_secondary._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @meson8_smp_boot_secondary._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-meson/platsmp.c", i32 170, i32 3}
!51 = !{ptr @meson8_smp_boot_secondary._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @meson8_smp_boot_secondary._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-meson/platsmp.c", i32 178, i32 3}
!55 = !{ptr @meson8_smp_boot_secondary._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @meson8_smp_boot_secondary._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/mach-meson/platsmp.c", i32 188, i32 3}
!59 = !{ptr @meson8_smp_boot_secondary._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @meson8_smp_boot_secondary._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../arch/arm/mach-meson/platsmp.c", i32 195, i32 3}
!63 = !{ptr @meson8_smp_boot_secondary._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @meson8_smp_boot_secondary._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../arch/arm/mach-meson/platsmp.c", i32 139, i32 4}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @meson_smp_finalize_secondary_boot._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @meson_smp_finalize_secondary_boot._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-meson/platsmp.c", i32 324, i32 3}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @meson8_smp_cpu_kill._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @meson8_smp_cpu_kill._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../arch/arm/mach-meson/platsmp.c", i32 335, i32 3}
!77 = !{ptr @meson8_smp_cpu_kill._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @meson8_smp_cpu_kill._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../arch/arm/mach-meson/platsmp.c", i32 345, i32 3}
!81 = !{ptr @meson8_smp_cpu_kill._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @meson8_smp_cpu_kill._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @meson8b_smp_ops, !84, !"meson8b_smp_ops", i1 false, i1 false}
!84 = !{!"../arch/arm/mach-meson/platsmp.c", i32 420, i32 30}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../arch/arm/mach-meson/platsmp.c", i32 104, i32 25}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../arch/arm/mach-meson/platsmp.c", i32 104, i32 46}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../arch/arm/mach-meson/platsmp.c", i32 105, i32 11}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../arch/arm/mach-meson/platsmp.c", i32 218, i32 3}
!93 = !{ptr @meson8b_smp_boot_secondary._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @meson8b_smp_boot_secondary._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../arch/arm/mach-meson/platsmp.c", i32 228, i32 3}
!97 = !{ptr @meson8b_smp_boot_secondary._entry.48, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @meson8b_smp_boot_secondary._entry_ptr.50, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @meson8b_smp_boot_secondary._entry.51, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../arch/arm/mach-meson/platsmp.c", i32 237, i32 3}
!101 = !{ptr @meson8b_smp_boot_secondary._entry_ptr.52, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../arch/arm/mach-meson/platsmp.c", i32 245, i32 3}
!104 = !{ptr @meson8b_smp_boot_secondary._entry.53, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @meson8b_smp_boot_secondary._entry_ptr.55, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @meson8b_smp_boot_secondary._entry.56, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../arch/arm/mach-meson/platsmp.c", i32 253, i32 3}
!108 = !{ptr @meson8b_smp_boot_secondary._entry_ptr.57, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../arch/arm/mach-meson/platsmp.c", i32 263, i32 3}
!111 = !{ptr @meson8b_smp_boot_secondary._entry.58, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @meson8b_smp_boot_secondary._entry_ptr.60, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @meson8b_smp_boot_secondary._entry.61, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../arch/arm/mach-meson/platsmp.c", i32 271, i32 3}
!115 = !{ptr @meson8b_smp_boot_secondary._entry_ptr.62, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @meson8b_smp_boot_secondary._entry.63, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../arch/arm/mach-meson/platsmp.c", i32 278, i32 3}
!118 = !{ptr @meson8b_smp_boot_secondary._entry_ptr.64, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../arch/arm/mach-meson/platsmp.c", i32 366, i32 3}
!121 = !{ptr @meson8b_smp_cpu_kill._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @meson8b_smp_cpu_kill._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../arch/arm/mach-meson/platsmp.c", i32 377, i32 3}
!125 = !{ptr @meson8b_smp_cpu_kill._entry.66, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @meson8b_smp_cpu_kill._entry_ptr.68, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @meson8b_smp_cpu_kill._entry.69, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../arch/arm/mach-meson/platsmp.c", i32 385, i32 3}
!129 = !{ptr @meson8b_smp_cpu_kill._entry_ptr.70, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @meson8b_smp_cpu_kill._entry.71, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../arch/arm/mach-meson/platsmp.c", i32 395, i32 3}
!132 = !{ptr @meson8b_smp_cpu_kill._entry_ptr.72, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../arch/arm/mach-meson/platsmp.c", i32 403, i32 3}
!135 = !{ptr @meson8b_smp_cpu_kill._entry.73, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @meson8b_smp_cpu_kill._entry_ptr.75, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{i64 2154082706}
!147 = !{i64 2983825}
!148 = !{i64 2984243}
!149 = !{i64 2154073147}
!150 = !{i64 2154073598}
!151 = !{i64 2154115933, i64 2154115950, i64 2154115980, i64 2154116028, i64 2154116071, i64 2154116119, i64 2154116133, i64 2154116183, i64 2154116231, i64 2154116289, i64 2154116337, i64 2154116351, i64 2154116365}
!152 = !{i64 2154116593}
!153 = !{i64 2154116678}
!154 = !{i64 2154084105}
!155 = !{i64 2154086860}
!156 = !{!"auto-init"}
