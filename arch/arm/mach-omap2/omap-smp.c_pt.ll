; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/omap-smp.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap-smp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.omap_smp_config = type { i32, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@cfg.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cfg.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cfg.2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cfg.3 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cfg.4 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap4_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr @omap4_smp_init_cpus, ptr @omap4_smp_prepare_cpus, ptr @omap4_secondary_init, ptr @omap4_boot_secondary, ptr @omap4_cpu_kill, ptr @omap4_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@omap4_smp_init_cpus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014SMP: %u cores greater than maximum (%u), clipping\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap4_smp_init_cpus\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"arch/arm/mach-omap2/omap-smp.c\00", [33 x i8] zeroinitializer }, align 32
@omap4_smp_init_cpus._entry_ptr = internal global ptr @omap4_smp_init_cpus._entry, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@omap443x_cfg = internal unnamed_addr constant %struct.omap_smp_config { i32 1210333196, ptr null, ptr null, ptr null, ptr @omap4_secondary_startup }, section ".init.rodata", align 4
@omap446x_cfg = internal unnamed_addr constant %struct.omap_smp_config { i32 1210333196, ptr null, ptr null, ptr null, ptr @omap4460_secondary_startup }, section ".init.rodata", align 4
@omap5_cfg = internal unnamed_addr constant %struct.omap_smp_config { i32 1210333200, ptr null, ptr null, ptr null, ptr @omap5_secondary_startup }, section ".init.rodata", align 4
@omap4_smp_prepare_cpus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s Unknown SMP SoC?\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap4_smp_prepare_cpus\00", [41 x i8] zeroinitializer }, align 32
@omap4_smp_prepare_cpus._entry_ptr = internal global ptr @omap4_smp_prepare_cpus._entry, section ".printk_index", align 4
@__boot_cpu_mode = external dso_local local_unnamed_addr global i32, align 4
@omap5_erratum_workaround_801819.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap_smp\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"omap5_erratum_workaround_801819\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: ARM erratum workaround 801819 applied on CPU%d\0A\00", [44 x i8] zeroinitializer }, align 32
@omap4_smp_maybe_reset_cpu1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014smp: CPU1 not parked?\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap4_smp_maybe_reset_cpu1\00", [37 x i8] zeroinitializer }, align 32
@omap4_smp_maybe_reset_cpu1._entry_ptr = internal global ptr @omap4_smp_maybe_reset_cpu1._entry, section ".printk_index", align 4
@omap4_smp_maybe_reset_cpu1._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016smp: CPU1 parked within kernel, needs reset (0x%lx 0x%lx)\0A\00", [35 x i8] zeroinitializer }, align 32
@omap4_smp_maybe_reset_cpu1._entry_ptr.13 = internal global ptr @omap4_smp_maybe_reset_cpu1._entry.11, section ".printk_index", align 4
@__bss_start = external dso_local global [0 x i8], align 1
@omap5_secondary_harden_predictor.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"omap5_secondary_harden_predictor\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: ARM ACR setup for CVE_2017_5715 applied on CPU%d\0A\00", [42 x i8] zeroinitializer }, align 32
@omap4_boot_secondary.cpu1_clkdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap4_boot_secondary.booted = internal global { i1, [31 x i8] } zeroinitializer, align 32
@omap4_boot_secondary.cpu1_pwrdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mpu1_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu1_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@pm44xx_errata = external dso_local local_unnamed_addr global i16, align 2
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1091551376, i64 1091551472]
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"cfg.0\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"cfg.1\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"cfg.2\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"cfg.3\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"cfg.4\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 279, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 108, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 367, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 100, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 320, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 347, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 139, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"cpu1_clkdm\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 175, i32 29 }
@___asan_gen_.80 = private unnamed_addr constant [28 x i8] c"omap4_boot_secondary.booted\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [11 x i8] c"cpu1_pwrdm\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 177, i32 29 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 193, i32 29 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [34 x i8] c"../arch/arm/mach-omap2/omap-smp.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 194, i32 29 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @omap4_smp_init_cpus._entry, ptr @omap4_smp_init_cpus._entry_ptr, ptr @omap4_smp_maybe_reset_cpu1._entry, ptr @omap4_smp_maybe_reset_cpu1._entry.11, ptr @omap4_smp_maybe_reset_cpu1._entry_ptr, ptr @omap4_smp_maybe_reset_cpu1._entry_ptr.13, ptr @omap4_smp_prepare_cpus._entry, ptr @omap4_smp_prepare_cpus._entry_ptr, ptr @cfg.0, ptr @cfg.1, ptr @cfg.2, ptr @cfg.3, ptr @cfg.4, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @omap4_boot_secondary.cpu1_clkdm, ptr @omap4_boot_secondary.booted, ptr @omap4_boot_secondary.cpu1_pwrdm, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_smp_init_cpus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_smp_prepare_cpus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_smp_maybe_reset_cpu1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_smp_maybe_reset_cpu1._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_boot_secondary.cpu1_clkdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_boot_secondary.booted to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_boot_secondary.cpu1_pwrdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @omap4_get_scu_base() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cfg.2, align 4
  ret ptr %0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap4_smp_init_cpus() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #10, !srcloc !62
  %and = and i32 %0, -15728656
  %1 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.if.end16_crit_edge [
    i32 1091551376, label %if.then
    i32 1091551472, label %if.then14
  ]

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then:                                          ; preds = %entry
  %2 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #10, !srcloc !63
  %add = add i32 %2, -1308622848
  %3 = inttoptr i32 %add to ptr
  store ptr %3, ptr @cfg.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %do.body6, label %do.end11, !prof !64

do.body6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/omap-smp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 271, 0\0A.popsection", ""() #7, !srcloc !65
  unreachable

do.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 @scu_get_core_count(ptr noundef nonnull %3) #7
  br label %if.end16

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %do.end11, %entry.if.end16_crit_edge
  %ncores.0 = phi i32 [ %call12, %do.end11 ], [ 2, %if.then14 ], [ 1, %entry.if.end16_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ncores.0, i32 %4)
  %cmp17 = icmp ugt i32 %ncores.0, %4
  br i1 %cmp17, label %do.end21, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %ncores.0, i32 noundef %4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %if.end16.if.end23_crit_edge
  %ncores.1 = phi i32 [ %5, %do.end21 ], [ %ncores.0, %if.end16.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ncores.1)
  %cmp2430.not = icmp eq i32 %ncores.1, 0
  br i1 %cmp2430.not, label %if.end23.for.end_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %set_cpu_possible.exit.for.body_crit_edge, %if.end23.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %set_cpu_possible.exit.for.body_crit_edge ], [ 0, %if.end23.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %i.031)
  %cmp.not.i.i.i.i = icmp ugt i32 %6, %i.031
  br i1 %cmp.not.i.i.i.i, label %for.body.set_cpu_possible.exit_crit_edge, label %land.rhs.i.i.i.i

for.body.set_cpu_possible.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_cpu_possible.exit

land.rhs.i.i.i.i:                                 ; preds = %for.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.set_cpu_possible.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.set_cpu_possible.exit_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_cpu_possible.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %set_cpu_possible.exit

set_cpu_possible.exit:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.set_cpu_possible.exit_crit_edge, %for.body.set_cpu_possible.exit_crit_edge
  tail call void @_set_bit(i32 noundef %i.031, ptr noundef nonnull @__cpu_possible_mask) #7
  %inc = add nuw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %ncores.1
  br i1 %exitcond.not, label %set_cpu_possible.exit.for.end_crit_edge, label %set_cpu_possible.exit.for.body_crit_edge

set_cpu_possible.exit.for.body_crit_edge:         ; preds = %set_cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

set_cpu_possible.exit.for.end_crit_edge:          ; preds = %set_cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %set_cpu_possible.exit.for.end_crit_edge, %if.end23.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap4_smp_prepare_cpus(i32 noundef %max_cpus) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #7
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1143996416, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 1143996416
  br i1 %cmp.i.not, label %entry.if.end18_crit_edge, label %if.else

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.else:                                          ; preds = %entry
  %call.i52 = tail call i32 @omap_rev() #7
  %shr.mask.i53 = and i32 %call.i52, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1147142144, i32 %shr.mask.i53)
  %cmp.i54.not = icmp eq i32 %shr.mask.i53, 1147142144
  br i1 %cmp.i54.not, label %if.else.if.end18_crit_edge, label %if.else4

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.else4:                                         ; preds = %if.else
  %call.i56 = tail call i32 @omap_rev() #7
  %shr.mask.i57 = and i32 %call.i56, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 122683392, i32 %shr.mask.i57)
  %cmp.i58.not = icmp eq i32 %shr.mask.i57, 122683392
  br i1 %cmp.i58.not, label %if.else4.if.end18_crit_edge, label %lor.lhs.false

if.else4.if.end18_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

lor.lhs.false:                                    ; preds = %if.else4
  %call.i60 = tail call i32 @omap_rev() #7
  %and.i = and i32 %call.i60, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i)
  %cmp.i61.not = icmp eq i32 %and.i, 84
  br i1 %cmp.i61.not, label %lor.lhs.false.if.end18_crit_edge, label %lor.lhs.false9

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %call.i63 = tail call i32 @omap_rev() #7
  %shr.mask.i64 = and i32 %call.i63, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 123731968, i32 %shr.mask.i64)
  %cmp.i65.not = icmp eq i32 %shr.mask.i64, 123731968
  br i1 %cmp.i65.not, label %lor.lhs.false9.if.end18_crit_edge, label %do.end

lor.lhs.false9.if.end18_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end:                                           ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false9.if.end18_crit_edge, %lor.lhs.false.if.end18_crit_edge, %if.else4.if.end18_crit_edge, %if.else.if.end18_crit_edge, %entry.if.end18_crit_edge
  %c.0.ph = phi ptr [ @omap446x_cfg, %if.else.if.end18_crit_edge ], [ @omap443x_cfg, %entry.if.end18_crit_edge ], [ @omap5_cfg, %lor.lhs.false9.if.end18_crit_edge ], [ @omap5_cfg, %lor.lhs.false.if.end18_crit_edge ], [ @omap5_cfg, %if.else4.if.end18_crit_edge ]
  %0 = ptrtoint ptr %c.0.ph to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c.0.ph, align 4
  store i32 %1, ptr @cfg.0, align 4
  %startup_addr = getelementptr inbounds %struct.omap_smp_config, ptr %c.0.ph, i32 0, i32 4
  %2 = ptrtoint ptr %startup_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %startup_addr, align 4
  store ptr %3, ptr @cfg.4, align 4
  %call19 = tail call ptr @omap_get_wakeupgen_base() #7
  store ptr %call19, ptr @cfg.3, align 4
  %call.i67 = tail call i32 @omap_rev() #7
  %shr.mask.i68 = and i32 %call.i67, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 122683392, i32 %shr.mask.i68)
  %cmp.i69.not = icmp eq i32 %shr.mask.i68, 122683392
  br i1 %cmp.i69.not, label %if.end18.if.then28_crit_edge, label %lor.lhs.false22

if.end18.if.then28_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

lor.lhs.false22:                                  ; preds = %if.end18
  %call.i71 = tail call i32 @omap_rev() #7
  %and.i72 = and i32 %call.i71, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i72)
  %cmp.i73.not = icmp eq i32 %and.i72, 84
  br i1 %cmp.i73.not, label %lor.lhs.false22.if.then28_crit_edge, label %lor.lhs.false25

lor.lhs.false22.if.then28_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %call.i75 = tail call i32 @omap_rev() #7
  %shr.mask.i76 = and i32 %call.i75, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 123731968, i32 %shr.mask.i76)
  %cmp.i77.not = icmp eq i32 %shr.mask.i76, 123731968
  br i1 %cmp.i77.not, label %lor.lhs.false25.if.then28_crit_edge, label %lor.lhs.false25.if.end31_crit_edge

lor.lhs.false25.if.end31_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

lor.lhs.false25.if.then28_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false25.if.then28_crit_edge, %lor.lhs.false22.if.then28_crit_edge, %if.end18.if.then28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__boot_cpu_mode to i32))
  %4 = load i32, ptr @__boot_cpu_mode, align 4
  %and = and i32 %4, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %and)
  %cmp = icmp eq i32 %and, 26
  br i1 %cmp, label %if.then29, label %if.then28.if.end30_crit_edge

if.then28.if.end30_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then29:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  store ptr @omap5_secondary_hyp_startup, ptr @cfg.4, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then28.if.end30_crit_edge
  tail call fastcc void @omap5_erratum_workaround_801819()
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %lor.lhs.false25.if.end31_crit_edge
  %5 = load i32, ptr @cfg.0, align 4
  %call32 = tail call ptr @ioremap(i32 noundef %5, i32 noundef 4) #7
  store ptr %call32, ptr @cfg.1, align 4
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %6 = load ptr, ptr @cfg.2, align 4
  %tobool36.not = icmp eq ptr %6, null
  br i1 %tobool36.not, label %if.end35.if.end38_crit_edge, label %if.then37

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @scu_enable(ptr noundef nonnull %6) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35.if.end38_crit_edge
  tail call fastcc void @omap4_smp_maybe_reset_cpu1() #12
  %call39 = tail call i32 @omap_secure_apis_support() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  %7 = load ptr, ptr @cfg.4, align 4
  %8 = ptrtoint ptr %7 to i32
  %call48 = tail call i32 @__phys_addr_symbol(i32 noundef %8) #7
  br i1 %tobool40.not, label %if.else44, label %if.then41

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @omap_auxcoreboot_addr(i32 noundef %call48) #7
  br label %cleanup

if.else44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %call48)
  %10 = load ptr, ptr @cfg.3, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #7, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %if.else44, %if.then41, %if.end31.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap4_secondary_init(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #7
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1143996416, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 1143996416
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @omap_type() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 3
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @omap_secure_dispatcher(i32 noundef 37, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i9 = tail call i32 @omap_rev() #7
  %and.i = and i32 %call.i9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i)
  %cmp.i10.not = icmp eq i32 %and.i, 84
  br i1 %cmp.i10.not, label %if.end.if.then7_crit_edge, label %lor.lhs.false

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %call.i12 = tail call i32 @omap_rev() #7
  %shr.mask.i13 = and i32 %call.i12, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %shr.mask.i13)
  %cmp.i14.not = icmp eq i32 %shr.mask.i13, 117440512
  br i1 %cmp.i14.not, label %lor.lhs.false.if.then7_crit_edge, label %lor.lhs.false.if.end8_crit_edge

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  tail call void @set_cntfreq() #7
  %0 = tail call i32 asm sideeffect "mrc p15, 0, $0, c0, c0, 6", "=r"() #7, !srcloc !68
  %and.i16 = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool.not.i = icmp eq i32 %and.i16, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then7.omap5_erratum_workaround_801819.exit_crit_edge

if.then7.omap5_erratum_workaround_801819.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap5_erratum_workaround_801819.exit

if.end.i:                                         ; preds = %if.then7
  %1 = tail call i32 asm sideeffect "mrc p15, 0, $0, c1, c0, 1", "=r"() #7, !srcloc !69
  %and1.i = and i32 %1, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 503316480, i32 %and1.i)
  %cmp.i17 = icmp eq i32 %and1.i, 503316480
  br i1 %cmp.i17, label %if.end.i.omap5_erratum_workaround_801819.exit_crit_edge, label %if.end3.i

if.end.i.omap5_erratum_workaround_801819.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap5_erratum_workaround_801819.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %1, 503316480
  tail call void @omap_smc1(i32 noundef 263, i32 noundef %or.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap5_erratum_workaround_801819.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap4_secondary_init, %if.then7.i)) #7
          to label %omap5_erratum_workaround_801819.exit [label %if.then7.i], !srcloc !70

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap5_erratum_workaround_801819.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef %5) #7
  br label %omap5_erratum_workaround_801819.exit

omap5_erratum_workaround_801819.exit:             ; preds = %if.then7.i, %if.end3.i, %if.end.i.omap5_erratum_workaround_801819.exit_crit_edge, %if.then7.omap5_erratum_workaround_801819.exit_crit_edge
  %6 = tail call i32 asm sideeffect "mrc p15, 0, $0, c1, c0, 1", "=r"() #7, !srcloc !71
  %and.i18 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %cmp.not.i = icmp eq i32 %and.i18, 0
  br i1 %cmp.not.i, label %if.end.i20, label %omap5_erratum_workaround_801819.exit.if.end8_crit_edge

omap5_erratum_workaround_801819.exit.if.end8_crit_edge: ; preds = %omap5_erratum_workaround_801819.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.i20:                                       ; preds = %omap5_erratum_workaround_801819.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or.i19 = or i32 %6, 1
  tail call void @omap_smc1(i32 noundef 263, i32 noundef %or.i19) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap5_secondary_harden_predictor.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap4_secondary_init, %if.then3.i)) #7
          to label %if.end8 [label %if.then3.i], !srcloc !70

if.then3.i:                                       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  %7 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i21 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i21 to ptr
  %cpu.i22 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i22, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap5_secondary_harden_predictor.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef %10) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then3.i, %if.end.i20, %omap5_erratum_workaround_801819.exit.if.end8_crit_edge, %lor.lhs.false.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_secure_apis_support() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @omap_modify_auxcoreboot0(i32 noundef 512, i32 noundef -513) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @cfg.3, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 536870912) #7, !srcloc !67
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load ptr, ptr @omap4_boot_secondary.cpu1_clkdm, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %2 = load ptr, ptr @omap4_boot_secondary.cpu1_pwrdm, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.16) #7
  store ptr %call5, ptr @omap4_boot_secondary.cpu1_clkdm, align 4
  %call6 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.17) #7
  store ptr %call6, ptr @omap4_boot_secondary.cpu1_pwrdm, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %.b40 = load i1, ptr @omap4_boot_secondary.booted, align 1
  br i1 %.b40, label %land.lhs.true9, label %if.end7.if.else37_crit_edge

if.end7.if.else37_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else37

land.lhs.true9:                                   ; preds = %if.end7
  %3 = load ptr, ptr @omap4_boot_secondary.cpu1_pwrdm, align 4
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %land.lhs.true9.if.else37_crit_edge, label %land.lhs.true11

land.lhs.true9.if.else37_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else37

land.lhs.true11:                                  ; preds = %land.lhs.true9
  %4 = load ptr, ptr @omap4_boot_secondary.cpu1_clkdm, align 4
  %tobool12.not = icmp eq ptr %4, null
  br i1 %tobool12.not, label %land.lhs.true11.if.else37_crit_edge, label %if.then13

land.lhs.true11.if.else37_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else37

if.then13:                                        ; preds = %land.lhs.true11
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @pm44xx_errata to i32))
  %5 = load i16, ptr @pm44xx_errata, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool14.not = icmp eq i16 %6, 0
  br i1 %tobool14.not, label %if.then13.if.end21_crit_edge, label %do.body

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.body:                                          ; preds = %if.then13
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !72
  %and.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool17.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #7, !srcloc !73
  br i1 %tobool17.not, label %if.then19, label %do.body.if.end20_crit_edge

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.body.if.end20_crit_edge
  tail call void @gic_dist_disable() #7
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then13.if.end21_crit_edge
  %8 = load ptr, ptr @omap4_boot_secondary.cpu1_clkdm, align 4
  tail call void @clkdm_deny_idle_nolock(ptr noundef %8) #7
  %9 = load ptr, ptr @omap4_boot_secondary.cpu1_pwrdm, align 4
  %call22 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %9, i8 noundef zeroext 3) #7
  %10 = load ptr, ptr @omap4_boot_secondary.cpu1_clkdm, align 4
  tail call void @clkdm_allow_idle_nolock(ptr noundef %10) #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @pm44xx_errata to i32))
  %11 = load i16, ptr @pm44xx_errata, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool25.not = icmp eq i16 %12, 0
  br i1 %tobool25.not, label %if.end21.if.end38_crit_edge, label %while.cond.preheader

if.end21.if.end38_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

while.cond.preheader:                             ; preds = %if.end21
  %call2741 = tail call zeroext i1 @gic_dist_disabled() #7
  br i1 %call2741, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !75
  %call27 = tail call zeroext i1 @gic_dist_disabled() #7
  br i1 %call27, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @gic_timer_retrigger() #7
  tail call void @trace_hardirqs_on() #7
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !76
  br label %if.end38

if.else37:                                        ; preds = %land.lhs.true11.if.else37_crit_edge, %land.lhs.true9.if.else37_crit_edge, %if.end7.if.else37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !78
  store i1 true, ptr @omap4_boot_secondary.booted, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %while.end, %if.end21.if.end38_crit_edge
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %add.ptr.i) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_cpu_kill(i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_cpu_die(i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_get_core_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_get_wakeupgen_base() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5_secondary_hyp_startup() #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap5_erratum_workaround_801819() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "mrc p15, 0, $0, c0, c0, 6", "=r"() #7, !srcloc !68
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 asm sideeffect "mrc p15, 0, $0, c1, c0, 1", "=r"() #7, !srcloc !69
  %and1 = and i32 %1, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 503316480, i32 %and1)
  %cmp = icmp eq i32 %and1, 503316480
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %1, 503316480
  tail call void @omap_smc1(i32 noundef 263, i32 noundef %or) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap5_erratum_workaround_801819.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap5_erratum_workaround_801819, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !70

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap5_erratum_workaround_801819.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap4_smp_maybe_reset_cpu1() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_secure_apis_support() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @omap_read_auxcoreboot0() #7
  %and = and i32 %call1, 512
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @cfg.3, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 2048
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !79
  %2 = lshr i32 %1, 24
  %and3 = and i32 %2, 32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %released.0 = phi i32 [ %and, %if.then ], [ %and3, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %released.0)
  %tobool4.not = icmp eq i32 %released.0, 0
  br i1 %tobool4.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %3 = load ptr, ptr @cfg.3, align 4
  %add.ptr10 = getelementptr i8, ptr %3, i32 2052
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !79
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %call13 = tail call fastcc zeroext i1 @omap4_smp_cpu1_startup_valid(i32 noundef %5) #12
  %call.i = tail call i32 @omap_rev() #7
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 68
  br i1 %cmp.i.not, label %if.end8.if.then20_crit_edge, label %lor.lhs.false

if.end8.if.then20_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end8
  %call.i2 = tail call i32 @omap_rev() #7
  %and.i3 = and i32 %call.i2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i3)
  %cmp.i4.not = icmp eq i32 %and.i3, 84
  br i1 %cmp.i4.not, label %lor.lhs.false.if.then20_crit_edge, label %if.end26

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end8.if.then20_crit_edge
  %call21 = tail call i32 @omap4_get_cpu1_ns_pa_addr() #7
  %call22 = tail call fastcc zeroext i1 @omap4_smp_cpu1_startup_valid(i32 noundef %call21) #12
  %6 = select i1 %call22, i1 %call13, i1 false
  br i1 %6, label %if.then20.cleanup_crit_edge, label %if.then20.lor.lhs.false28_crit_edge

if.then20.lor.lhs.false28_crit_edge:              ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false28

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  br i1 %call13, label %if.end26.cleanup_crit_edge, label %if.end26.lor.lhs.false28_crit_edge

if.end26.lor.lhs.false28_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false28

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false28:                                  ; preds = %if.end26.lor.lhs.false28_crit_edge, %if.then20.lor.lhs.false28_crit_edge
  %cpu1_ns_pa_addr.06 = phi i32 [ %call21, %if.then20.lor.lhs.false28_crit_edge ], [ 0, %if.end26.lor.lhs.false28_crit_edge ]
  %7 = load ptr, ptr @cfg.1, align 4
  %tobool29.not = icmp eq ptr %7, null
  br i1 %tobool29.not, label %lor.lhs.false28.cleanup_crit_edge, label %do.end34

lor.lhs.false28.cleanup_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end34:                                         ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %5, i32 noundef %cpu1_ns_pa_addr.06) #11
  %8 = load ptr, ptr @cfg.1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 16777216) #7, !srcloc !67
  %9 = load ptr, ptr @cfg.1, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !79
  %11 = load ptr, ptr @cfg.1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #7, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %lor.lhs.false28.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_secure_apis_support() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_auxcoreboot_addr(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_secondary_startup() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4460_secondary_startup() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5_secondary_startup() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_smc1(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_read_auxcoreboot0() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @omap4_smp_cpu1_startup_valid(i32 noundef %addr) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__virt_to_phys(i32 noundef -1073741824) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %addr)
  %cmp.not = icmp ugt i32 %call, %addr
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @__bss_start to i32)) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %addr)
  %cmp2.not = icmp ult i32 %call1, %addr
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end ], [ false, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_get_cpu1_ns_pa_addr() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_secure_dispatcher(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cntfreq() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_modify_auxcoreboot0(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwrdm_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_dist_disable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_deny_idle_nolock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_next_pwrst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_allow_idle_nolock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gic_dist_disabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_timer_retrigger() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }
attributes #12 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !17, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @omap4_smp_ops, !1, !"omap4_smp_ops", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 408, i32 29}
!2 = distinct !{null, !3, !"cfg", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 52, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 279, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @omap4_smp_init_cpus._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @omap4_smp_init_cpus._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 367, i32 3}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @omap4_smp_prepare_cpus._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @omap4_smp_prepare_cpus._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @omap443x_cfg, !19, !"omap443x_cfg", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 54, i32 37}
!20 = !{ptr @omap446x_cfg, !21, !"omap446x_cfg", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 59, i32 37}
!22 = !{ptr @omap5_cfg, !23, !"omap5_cfg", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 64, i32 37}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 100, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @omap5_erratum_workaround_801819.__UNIQUE_ID_ddebug288, !25, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 320, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @omap4_smp_maybe_reset_cpu1._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @omap4_smp_maybe_reset_cpu1._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 347, i32 2}
!36 = !{ptr @omap4_smp_maybe_reset_cpu1._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @omap4_smp_maybe_reset_cpu1._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 139, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @omap5_secondary_harden_predictor.__UNIQUE_ID_ddebug289, !39, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!42 = !{ptr @omap4_boot_secondary.cpu1_clkdm, !43, !"cpu1_clkdm", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 175, i32 29}
!44 = distinct !{null, !45, !"booted", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 176, i32 14}
!46 = !{ptr @omap4_boot_secondary.cpu1_pwrdm, !47, !"cpu1_pwrdm", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 177, i32 29}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 193, i32 29}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/omap-smp.c", i32 194, i32 29}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2152498349}
!63 = !{i64 5004761}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{i64 2155865907, i64 2155866402, i64 2155865944, i64 2155866000, i64 2155866034, i64 2155866058, i64 2155866099, i64 2155866120, i64 2155866148, i64 2155866182}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 4780761}
!68 = !{i64 1891}
!69 = !{i64 1989}
!70 = !{i64 2148287452, i64 2148287457, i64 2148287470, i64 2148287514, i64 2148287548, i64 2148287569}
!71 = !{i64 3371}
!72 = !{i64 871049}
!73 = !{i64 868752}
!74 = !{i64 2155865054}
!75 = !{i64 2155864896}
!76 = !{i64 868562}
!77 = !{i64 2149520102}
!78 = !{i64 2149520201, i64 2149520228, i64 2149520275, i64 2149520297, i64 2149520325, i64 2149520345}
!79 = !{i64 4781179}
