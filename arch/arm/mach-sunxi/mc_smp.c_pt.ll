; ModuleID = '/llk/IR_all_yes/arch/arm/mach-sunxi/mc_smp.c_pt.bc'
source_filename = "../arch/arm/mach-sunxi/mc_smp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sunxi_mc_smp_data = type { ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sunxi_mc_smp_nodes = type { ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_mc_smp__238_914_sunxi_mc_smp_initearly = internal global ptr @sunxi_mc_smp_init, section ".initcallearly.init", align 4
@sunxi_mc_smp_first_comer = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enable-method\00", [18 x i8] zeroinitializer }, align 32
@sunxi_mc_smp_data = internal unnamed_addr constant [2 x %struct.sunxi_mc_smp_data] [%struct.sunxi_mc_smp_data { ptr @.str.23, ptr @sun9i_a80_get_smp_nodes, i8 0 }, %struct.sunxi_mc_smp_data { ptr @.str.24, ptr @sun8i_a83t_get_smp_nodes, i8 1 }], section ".init.rodata", align 4
@is_a83t = internal global { i8, [31 x i8] } zeroinitializer, align 32
@sunxi_mc_smp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: CCI-400 not available\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sunxi_mc_smp_init\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arch/arm/mach-sunxi/mc_smp.c\00", [35 x i8] zeroinitializer }, align 32
@sunxi_mc_smp_init._entry_ptr = internal global ptr @sunxi_mc_smp_init._entry, section ".printk_index", align 4
@prcm_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sunxi_mc_smp_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: failed to map PRCM registers\0A\00", [60 x i8] zeroinitializer }, align 32
@sunxi_mc_smp_init._entry_ptr.6 = internal global ptr @sunxi_mc_smp_init._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sunxi-mc-smp\00", [19 x i8] zeroinitializer }, align 32
@cpucfg_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sunxi_mc_smp_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: failed to map CPUCFG registers: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@sunxi_mc_smp_init._entry_ptr.10 = internal global ptr @sunxi_mc_smp_init._entry.8, section ".printk_index", align 4
@r_cpucfg_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sunxi_mc_smp_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: failed to map R-CPUCFG registers\0A\00", [56 x i8] zeroinitializer }, align 32
@sunxi_mc_smp_init._entry_ptr.13 = internal global ptr @sunxi_mc_smp_init._entry.11, section ".printk_index", align 4
@sram_b_smp_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sunxi_mc_smp_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: failed to map secure SRAM\0A\00", [63 x i8] zeroinitializer }, align 32
@sunxi_mc_smp_init._entry_ptr.16 = internal global ptr @sunxi_mc_smp_init._entry.14, section ".printk_index", align 4
@sunxi_mc_smp_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: failed to configure boot cluster: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@sunxi_mc_smp_init._entry_ptr.19 = internal global ptr @sunxi_mc_smp_init._entry.17, section ".printk_index", align 4
@sunxi_mc_smp_smp_ops = internal constant %struct.smp_operations { ptr null, ptr null, ptr @sunxi_mc_smp_secondary_init, ptr @sunxi_mc_smp_boot_secondary, ptr @sunxi_mc_smp_cpu_kill, ptr @sunxi_mc_smp_cpu_die, ptr @sunxi_mc_smp_cpu_can_disable, ptr null }, section ".init.rodata", align 4
@sunxi_mc_smp_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016sunxi multi cluster SMP support installed\0A\00", [51 x i8] zeroinitializer }, align 32
@sunxi_mc_smp_init._entry_ptr.22 = internal global ptr @sunxi_mc_smp_init._entry.20, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"allwinner,sun9i-a80-smp\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"allwinner,sun8i-a83t-smp\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"allwinner,sun9i-a80-prcm\00", [39 x i8] zeroinitializer }, align 32
@sun9i_a80_get_smp_nodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: PRCM not available\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sun9i_a80_get_smp_nodes\00", [40 x i8] zeroinitializer }, align 32
@sun9i_a80_get_smp_nodes._entry_ptr = internal global ptr @sun9i_a80_get_smp_nodes._entry, section ".printk_index", align 4
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"allwinner,sun9i-a80-cpucfg\00", [37 x i8] zeroinitializer }, align 32
@sun9i_a80_get_smp_nodes._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.3, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: CPUCFG not available\0A\00", [36 x i8] zeroinitializer }, align 32
@sun9i_a80_get_smp_nodes._entry_ptr.31 = internal global ptr @sun9i_a80_get_smp_nodes._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"allwinner,sun9i-a80-smp-sram\00", [35 x i8] zeroinitializer }, align 32
@sun9i_a80_get_smp_nodes._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.27, ptr @.str.3, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Secure SRAM not available\0A\00", [63 x i8] zeroinitializer }, align 32
@sun9i_a80_get_smp_nodes._entry_ptr.35 = internal global ptr @sun9i_a80_get_smp_nodes._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"allwinner,sun8i-a83t-r-ccu\00", [37 x i8] zeroinitializer }, align 32
@sun8i_a83t_get_smp_nodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.37, ptr @.str.3, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sun8i_a83t_get_smp_nodes\00", [39 x i8] zeroinitializer }, align 32
@sun8i_a83t_get_smp_nodes._entry_ptr = internal global ptr @sun8i_a83t_get_smp_nodes._entry, section ".printk_index", align 4
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"allwinner,sun8i-a83t-cpucfg\00", [36 x i8] zeroinitializer }, align 32
@sun8i_a83t_get_smp_nodes._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.37, ptr @.str.3, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sun8i_a83t_get_smp_nodes._entry_ptr.40 = internal global ptr @sun8i_a83t_get_smp_nodes._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"allwinner,sun8i-a83t-r-cpucfg\00", [34 x i8] zeroinitializer }, align 32
@sun8i_a83t_get_smp_nodes._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.37, ptr @.str.3, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: RCPUCFG not available\0A\00", [35 x i8] zeroinitializer }, align 32
@sun8i_a83t_get_smp_nodes._entry_ptr.44 = internal global ptr @sun8i_a83t_get_smp_nodes._entry.42, section ".printk_index", align 4
@sunxi_mc_smp_cpu_table_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: boot CPU is out of bounds!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sunxi_mc_smp_cpu_table_init\00", [36 x i8] zeroinitializer }, align 32
@sunxi_mc_smp_cpu_table_init._entry_ptr = internal global ptr @sunxi_mc_smp_cpu_table_init._entry, section ".printk_index", align 4
@sunxi_mc_smp_cpu_table = internal global { [2 x [4 x i32]], [32 x i8] } zeroinitializer, align 32
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@boot_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.47, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"boot_lock\00", [22 x i8] zeroinitializer }, align 32
@sunxi_cluster_powerup.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mc_smp\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sunxi_cluster_powerup\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: cluster %u\0A\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sunxi_core_is_cortex_a15._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Couldn't get CPU cluster %u core %u device node\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sunxi_core_is_cortex_a15\00", [39 x i8] zeroinitializer }, align 32
@sunxi_core_is_cortex_a15._entry_ptr = internal global ptr @sunxi_core_is_cortex_a15._entry, section ".printk_index", align 4
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm,cortex-a15\00", [17 x i8] zeroinitializer }, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@sunxi_cpu_powerup.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sunxi_cpu_powerup\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: cluster %u cpu %u\0A\00", [41 x i8] zeroinitializer }, align 32
@sunxi_cpu_power_switch_set.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sunxi_cpu_power_switch_set\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"power clamp for cluster %u cpu %u already open\0A\00", [48 x i8] zeroinitializer }, align 32
@sunxi_mc_smp_cpu_kill.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 0, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sunxi_mc_smp_cpu_kill\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: cluster %u cpu %u powerdown: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@sunxi_cpu_powerdown.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.60, ptr @.str.3, ptr @.str.55, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sunxi_cpu_powerdown\00", [44 x i8] zeroinitializer }, align 32
@sunxi_cluster_powerdown.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.61, ptr @.str.3, ptr @.str.50, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sunxi_cluster_powerdown\00", [40 x i8] zeroinitializer }, align 32
@sunxi_cluster_powerdown.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: assert cluster reset\0A\00", [38 x i8] zeroinitializer }, align 32
@sunxi_cluster_powerdown.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.61, ptr @.str.3, ptr @.str.63, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: gate cluster power\0A\00", [40 x i8] zeroinitializer }, align 32
@sunxi_mc_smp_cpu_die.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.64, ptr @.str.3, ptr @.str.55, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sunxi_mc_smp_cpu_die\00", [43 x i8] zeroinitializer }, align 32
@sunxi_mc_smp_cpu_die.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: aborting due to a power up request\0A\00", [56 x i8] zeroinitializer }, align 32
@sunxi_mc_smp_cpu_die._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.3, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Cluster %d CPU%d boots multiple times\0A\00", [55 x i8] zeroinitializer }, align 32
@sunxi_mc_smp_cpu_die._entry_ptr = internal global ptr @sunxi_mc_smp_cpu_die._entry, section ".printk_index", align 4
@sunxi_cluster_cache_disable.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.67, ptr @.str.3, ptr @.str.50, i8 0, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sunxi_cluster_cache_disable\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.68 = private unnamed_addr constant [25 x i8] c"sunxi_mc_smp_first_comer\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 371, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 805, i32 40 }
@___asan_gen_.74 = private unnamed_addr constant [8 x i8] c"is_a83t\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 86, i32 13 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 821, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [10 x i8] c"prcm_base\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 80, i32 22 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 836, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 842, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"cpucfg_base\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 79, i32 22 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 845, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"r_cpucfg_base\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 82, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 855, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"sram_b_smp_base\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 81, i32 22 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 864, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 872, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 890, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 770, i32 20 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 774, i32 20 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 719, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 721, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 726, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 728, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 733, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 735, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 745, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 747, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 752, i32 12 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 754, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 759, i32 14 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 761, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 638, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [23 x i8] c"sunxi_mc_smp_cpu_table\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 370, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant [10 x i8] c"boot_lock\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 373, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 258, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 105, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 111, i32 48 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 163, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 125, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 604, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 486, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 509, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 514, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 522, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 452, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 458, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 463, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private constant [32 x i8] c"../arch/arm/mach-sunxi/mc_smp.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 434, i32 2 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__initcall__kmod_mc_smp__238_914_sunxi_mc_smp_initearly, ptr @sun8i_a83t_get_smp_nodes._entry, ptr @sun8i_a83t_get_smp_nodes._entry.39, ptr @sun8i_a83t_get_smp_nodes._entry.42, ptr @sun8i_a83t_get_smp_nodes._entry_ptr, ptr @sun8i_a83t_get_smp_nodes._entry_ptr.40, ptr @sun8i_a83t_get_smp_nodes._entry_ptr.44, ptr @sun9i_a80_get_smp_nodes._entry, ptr @sun9i_a80_get_smp_nodes._entry.29, ptr @sun9i_a80_get_smp_nodes._entry.33, ptr @sun9i_a80_get_smp_nodes._entry_ptr, ptr @sun9i_a80_get_smp_nodes._entry_ptr.31, ptr @sun9i_a80_get_smp_nodes._entry_ptr.35, ptr @sunxi_core_is_cortex_a15._entry, ptr @sunxi_core_is_cortex_a15._entry_ptr, ptr @sunxi_mc_smp_cpu_die._entry, ptr @sunxi_mc_smp_cpu_die._entry_ptr, ptr @sunxi_mc_smp_cpu_table_init._entry, ptr @sunxi_mc_smp_cpu_table_init._entry_ptr, ptr @sunxi_mc_smp_init._entry, ptr @sunxi_mc_smp_init._entry.11, ptr @sunxi_mc_smp_init._entry.14, ptr @sunxi_mc_smp_init._entry.17, ptr @sunxi_mc_smp_init._entry.20, ptr @sunxi_mc_smp_init._entry.4, ptr @sunxi_mc_smp_init._entry.8, ptr @sunxi_mc_smp_init._entry_ptr, ptr @sunxi_mc_smp_init._entry_ptr.10, ptr @sunxi_mc_smp_init._entry_ptr.13, ptr @sunxi_mc_smp_init._entry_ptr.16, ptr @sunxi_mc_smp_init._entry_ptr.19, ptr @sunxi_mc_smp_init._entry_ptr.22, ptr @sunxi_mc_smp_init._entry_ptr.6, ptr @sunxi_mc_smp_first_comer, ptr @.str, ptr @is_a83t, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @prcm_base, ptr @.str.5, ptr @.str.7, ptr @cpucfg_base, ptr @.str.9, ptr @r_cpucfg_base, ptr @.str.12, ptr @sram_b_smp_base, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @sunxi_mc_smp_cpu_table, ptr @boot_lock, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mc_smp_first_comer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_a83t to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mc_smp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prcm_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mc_smp_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpucfg_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mc_smp_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_cpucfg_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mc_smp_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_b_smp_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mc_smp_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mc_smp_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mc_smp_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_get_smp_nodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_get_smp_nodes._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_get_smp_nodes._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_get_smp_nodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_get_smp_nodes._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_get_smp_nodes._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mc_smp_cpu_table_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mc_smp_cpu_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_core_is_cortex_a15._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mc_smp_cpu_die._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_mc_smp_init() #0 section ".init.text" align 64 {
entry:
  %nodes = alloca %struct.sunxi_mc_smp_nodes, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nodes) #9
  %0 = call ptr @memset(ptr %nodes, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call.i = tail call ptr @get_cpu_device(i32 noundef 0) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call ptr @of_get_cpu_node(i32 noundef 0, ptr noundef null) #9
  br label %of_cpu_device_node_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %of_node.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %call2.i = tail call ptr @of_node_get(ptr noundef %4) #9
  br label %of_cpu_device_node_get.exit

of_cpu_device_node_get.exit:                      ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call2.i, %if.end.i ], [ %call1.i, %if.then.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %of_cpu_device_node_get.exit.cleanup_crit_edge, label %for.body.preheader

of_cpu_device_node_get.exit.cleanup_crit_edge:    ; preds = %of_cpu_device_node_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %of_cpu_device_node_get.exit
  %call1133 = tail call i32 @of_property_match_string(ptr noundef nonnull %retval.0.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1133)
  %tobool2.not134 = icmp eq i32 %call1133, 0
  br i1 %tobool2.not134, label %for.body.preheader.if.end9.critedge_crit_edge, label %for.body

for.body.preheader.if.end9.critedge_crit_edge:    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.critedge

for.body:                                         ; preds = %for.body.preheader
  %call1 = tail call i32 @of_property_match_string(ptr noundef nonnull %retval.0.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.body.if.end9.critedge_crit_edge, label %if.then8.critedge.critedge

for.body.if.end9.critedge_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.critedge

if.then8.critedge.critedge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  store i8 0, ptr @is_a83t, align 1
  tail call void @of_node_put(ptr noundef nonnull %retval.0.i) #9
  br label %cleanup

if.end9.critedge:                                 ; preds = %for.body.if.end9.critedge_crit_edge, %for.body.preheader.if.end9.critedge_crit_edge
  %i.0127.lcssa = phi i32 [ 0, %for.body.preheader.if.end9.critedge_crit_edge ], [ 1, %for.body.if.end9.critedge_crit_edge ]
  %5 = xor i1 %tobool2.not134, true
  %frombool.c = zext i1 %5 to i8
  store i8 %frombool.c, ptr @is_a83t, align 1
  tail call void @of_node_put(ptr noundef nonnull %retval.0.i) #9
  %call10 = tail call fastcc zeroext i1 @sunxi_mc_smp_cpu_table_init() #12
  br i1 %call10, label %if.end12, label %if.end9.critedge.cleanup_crit_edge

if.end9.critedge.cleanup_crit_edge:               ; preds = %if.end9.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9.critedge
  %call13 = tail call zeroext i1 @cci_probed() #9
  br i1 %call13, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %get_smp_nodes = getelementptr [2 x %struct.sunxi_mc_smp_data], ptr @sunxi_mc_smp_data, i32 0, i32 %i.0127.lcssa, i32 1
  %6 = ptrtoint ptr %get_smp_nodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_smp_nodes, align 4
  %call18 = call i32 %7(ptr noundef nonnull %nodes) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.err_put_nodes_crit_edge

if.end16.err_put_nodes_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put_nodes

if.end21:                                         ; preds = %if.end16
  %8 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nodes, align 4
  %call22 = call ptr @of_iomap(ptr noundef %9, i32 noundef 0) #9
  store ptr %call22, ptr @prcm_base, align 4
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #13
  br label %err_put_nodes

if.end30:                                         ; preds = %if.end21
  %cpucfg_node = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %nodes, i32 0, i32 1
  %10 = ptrtoint ptr %cpucfg_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpucfg_node, align 4
  %call31 = call ptr @of_io_request_and_map(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @.str.7) #9
  store ptr %call31, ptr @cpucfg_base, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end40

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call31 to i32
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef %12) #13
  br label %err_unmap_prcm

if.end40:                                         ; preds = %if.end30
  %13 = load i8, ptr @is_a83t, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool41.not = icmp eq i8 %13, 0
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end40
  %r_cpucfg_node = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %nodes, i32 0, i32 3
  %14 = ptrtoint ptr %r_cpucfg_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %r_cpucfg_node, align 4
  %call43 = call ptr @of_io_request_and_map(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @.str.7) #9
  store ptr %call43, ptr @r_cpucfg_base, align 4
  %cmp.i120 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then45, label %if.then42.if.end63_crit_edge

if.then42.if.end63_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call43 to i32
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2) #13
  br label %err_unmap_release_cpucfg

if.else:                                          ; preds = %if.end40
  %sram_node = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %nodes, i32 0, i32 2
  %17 = ptrtoint ptr %sram_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sram_node, align 4
  %call53 = call ptr @of_io_request_and_map(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.7) #9
  store ptr %call53, ptr @sram_b_smp_base, align 4
  %cmp.i121 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then55, label %if.else.if.end63_crit_edge

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call53 to i32
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2) #13
  br label %err_unmap_release_cpucfg

if.end63:                                         ; preds = %if.else.if.end63_crit_edge, %if.then42.if.end63_crit_edge
  %call64 = call fastcc i32 @sunxi_mc_smp_loopback() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end72, label %do.end69

do.end69:                                         ; preds = %if.end63
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef %call64) #13
  %20 = load i8, ptr @is_a83t, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool88.not = icmp eq i8 %20, 0
  br i1 %tobool88.not, label %if.else92, label %if.then89

if.end72:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @sunxi_mc_smp_put_nodes(ptr noundef nonnull %nodes) #12
  %21 = load i8, ptr @is_a83t, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool73.not = icmp eq i8 %21, 0
  %. = select i1 %tobool73.not, i32 356, i32 420
  %prcm_base.val = load ptr, ptr @prcm_base, align 4
  %r_cpucfg_base.val = load ptr, ptr @r_cpucfg_base, align 4
  %22 = select i1 %tobool73.not, ptr %prcm_base.val, ptr %r_cpucfg_base.val
  %add.ptr = getelementptr i8, ptr %22, i32 %.
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  call void @arm_heavy_mb() #9
  %call82 = call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @sunxi_mc_smp_secondary_startup to i32)) #9
  %23 = call i32 @llvm.bswap.i32(i32 %call82)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #9, !srcloc !163
  call void @smp_set_ops(ptr noundef nonnull @sunxi_mc_smp_smp_ops) #9
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #13
  br label %cleanup

if.then89:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #11
  %24 = load ptr, ptr @r_cpucfg_base, align 4
  call void @iounmap(ptr noundef %24) #9
  %r_cpucfg_node90 = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %nodes, i32 0, i32 3
  br label %if.end95

if.else92:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #11
  %25 = load ptr, ptr @sram_b_smp_base, align 4
  call void @iounmap(ptr noundef %25) #9
  %sram_node93 = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %nodes, i32 0, i32 2
  br label %if.end95

if.end95:                                         ; preds = %if.else92, %if.then89
  %sram_node93.sink = phi ptr [ %sram_node93, %if.else92 ], [ %r_cpucfg_node90, %if.then89 ]
  %26 = ptrtoint ptr %sram_node93.sink to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sram_node93.sink, align 4
  %call94 = call i32 @of_address_to_resource(ptr noundef %27, i32 noundef 0, ptr noundef nonnull %res) #9
  %28 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %res, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %sub.i = sub i32 1, %29
  %add.i = add i32 %sub.i, %31
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %29, i32 noundef %add.i) #9
  br label %err_unmap_release_cpucfg

err_unmap_release_cpucfg:                         ; preds = %if.end95, %if.then55, %if.then45
  %ret.2 = phi i32 [ %16, %if.then45 ], [ %call64, %if.end95 ], [ %19, %if.then55 ]
  %32 = load ptr, ptr @cpucfg_base, align 4
  call void @iounmap(ptr noundef %32) #9
  %33 = ptrtoint ptr %cpucfg_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cpucfg_node, align 4
  %call98 = call i32 @of_address_to_resource(ptr noundef %34, i32 noundef 0, ptr noundef nonnull %res) #9
  %35 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %res, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 4
  %sub.i123 = sub i32 1, %36
  %add.i124 = add i32 %sub.i123, %38
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %36, i32 noundef %add.i124) #9
  br label %err_unmap_prcm

err_unmap_prcm:                                   ; preds = %err_unmap_release_cpucfg, %if.then33
  %ret.3 = phi i32 [ %12, %if.then33 ], [ %ret.2, %err_unmap_release_cpucfg ]
  %39 = load ptr, ptr @prcm_base, align 4
  call void @iounmap(ptr noundef %39) #9
  br label %err_put_nodes

err_put_nodes:                                    ; preds = %err_unmap_prcm, %do.end27, %if.end16.err_put_nodes_crit_edge
  %ret.4 = phi i32 [ %call18, %if.end16.err_put_nodes_crit_edge ], [ %ret.3, %err_unmap_prcm ], [ -12, %do.end27 ]
  call fastcc void @sunxi_mc_smp_put_nodes(ptr noundef nonnull %nodes) #12
  br label %cleanup

cleanup:                                          ; preds = %err_put_nodes, %if.end72, %do.end, %if.end9.critedge.cleanup_crit_edge, %if.then8.critedge.critedge, %of_cpu_device_node_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then8.critedge.critedge ], [ %ret.4, %err_put_nodes ], [ 0, %if.end72 ], [ -19, %do.end ], [ -19, %of_cpu_device_node_get.exit.cleanup_crit_edge ], [ -22, %if.end9.critedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nodes) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sunxi_mc_smp_cpu_table_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #14, !srcloc !164
  %and = and i32 %0, 255
  %shr1 = lshr i32 %0, 8
  %and2 = and i32 %shr1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp = icmp ugt i32 %and2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp3 = icmp ugt i32 %and, 3
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 %and
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %arrayidx5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %2 = xor i1 %or.cond, true
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cci_probed() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_mc_smp_loopback() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr @sunxi_mc_smp_first_comer, align 4
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !165
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #9, !srcloc !166
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #9, !srcloc !167
  %call2 = tail call i32 @cpu_pm_enter() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @nocache_trampoline) #9
  %call6 = tail call i32 @cpu_pm_exit() #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.if.end7_crit_edge ], [ %call5, %if.then4 ]
  tail call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #9, !srcloc !168
  tail call void @trace_hardirqs_on() #9
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !169
  store i32 0, ptr @sunxi_mc_smp_first_comer, align 4
  ret i32 %ret.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_mc_smp_put_nodes(ptr nocapture noundef %nodes) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nodes, align 4
  tail call void @of_node_put(ptr noundef %1) #9
  %cpucfg_node = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %nodes, i32 0, i32 1
  %2 = ptrtoint ptr %cpucfg_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpucfg_node, align 4
  tail call void @of_node_put(ptr noundef %3) #9
  %sram_node = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %nodes, i32 0, i32 2
  %4 = ptrtoint ptr %sram_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sram_node, align 4
  tail call void @of_node_put(ptr noundef %5) #9
  %r_cpucfg_node = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %nodes, i32 0, i32 3
  %6 = ptrtoint ptr %r_cpucfg_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r_cpucfg_node, align 4
  tail call void @of_node_put(ptr noundef %7) #9
  %8 = call ptr @memset(ptr %nodes, i32 0, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sunxi_mc_smp_secondary_startup() #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_set_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_a80_get_smp_nodes(ptr nocapture noundef writeonly %nodes) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25) #9
  %0 = ptrtoint ptr %nodes to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %nodes, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return.sink.split_crit_edge, label %if.end

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28) #9
  %cpucfg_node = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %nodes, i32 0, i32 1
  %1 = ptrtoint ptr %cpucfg_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %cpucfg_node, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.return.sink.split_crit_edge, label %if.end11

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32) #9
  %sram_node = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %nodes, i32 0, i32 2
  %2 = ptrtoint ptr %sram_node to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call12, ptr %sram_node, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end11.return.sink.split_crit_edge, label %if.end11.return_crit_edge

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end11.return.sink.split_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end11.return.sink.split_crit_edge, %if.end.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.str.34.sink = phi ptr [ @.str.26, %entry.return.sink.split_crit_edge ], [ @.str.30, %if.end.return.sink.split_crit_edge ], [ @.str.34, %if.end11.return.sink.split_crit_edge ]
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.34.sink, ptr noundef nonnull @.str.27) #13
  br label %return

return:                                           ; preds = %return.sink.split, %if.end11.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11.return_crit_edge ], [ -19, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_a83t_get_smp_nodes(ptr nocapture noundef writeonly %nodes) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36) #9
  %0 = ptrtoint ptr %nodes to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %nodes, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return.sink.split_crit_edge, label %if.end

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38) #9
  %cpucfg_node = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %nodes, i32 0, i32 1
  %1 = ptrtoint ptr %cpucfg_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %cpucfg_node, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.return.sink.split_crit_edge, label %if.end11

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.41) #9
  %r_cpucfg_node = getelementptr inbounds %struct.sunxi_mc_smp_nodes, ptr %nodes, i32 0, i32 3
  %2 = ptrtoint ptr %r_cpucfg_node to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call12, ptr %r_cpucfg_node, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end11.return.sink.split_crit_edge, label %if.end11.return_crit_edge

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end11.return.sink.split_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end11.return.sink.split_crit_edge, %if.end.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.str.43.sink = phi ptr [ @.str.26, %entry.return.sink.split_crit_edge ], [ @.str.30, %if.end.return.sink.split_crit_edge ], [ @.str.43, %if.end11.return.sink.split_crit_edge ]
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.43.sink, ptr noundef nonnull @.str.37) #13
  br label %return

return:                                           ; preds = %return.sink.split, %if.end11.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11.return_crit_edge ], [ -19, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nocache_trampoline(i32 noundef %__unused) #5 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @setup_mm_for_reboot() #9
  tail call fastcc void @sunxi_cluster_cache_disable_without_axi()
  %0 = tail call i32 @llvm.read_register.i32(metadata !151) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %reset = getelementptr inbounds %struct.processor, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset, align 4
  %8 = ptrtoint ptr %7 to i32
  %call1 = tail call i32 @__phys_addr_symbol(i32 noundef %8) #9
  %9 = inttoptr i32 %call1 to ptr
  %call5 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @sunxi_mc_smp_resume to i32)) #9
  call void @__asan_handle_no_return()
  tail call void %9(i32 noundef %call5, i1 noundef zeroext false) #15
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_mm_for_reboot() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_cluster_cache_disable_without_axi() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #14, !srcloc !170
  %and.i = and i32 %0, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568432, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 1090568432
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr\09p15, 1, $0, c15, c0, 3\0Aisb\0Adsb", "r"(i32 1024) #9, !srcloc !171
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_all \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #9, !srcloc !172
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #14, !srcloc !164
  %conv = zext i32 %1 to i64
  %call2 = tail call i32 @cci_disable_port_by_cpu(i64 noundef %conv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sunxi_mc_smp_resume() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cci_disable_port_by_cpu(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_mc_smp_secondary_init(i32 noundef %cpu) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu)
  %cmp = icmp eq i32 %cpu, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %0 = load ptr, ptr @sram_b_smp_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 0) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %1 = load ptr, ptr @sram_b_smp_base, align 4
  %add.ptr7.i = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #9, !srcloc !163
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_mc_smp_boot_secondary(i32 noundef %l_cpu, ptr nocapture noundef readnone %idle) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %l_cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 255
  %shr1 = lshr i32 %1, 8
  %and2 = and i32 %shr1, 255
  %2 = load ptr, ptr @cpucfg_base, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp = icmp ugt i32 %and2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp3 = icmp ugt i32 %and, 3
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @boot_lock) #9
  %arrayidx7 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 %and
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not = icmp eq i32 %4, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end10:                                         ; preds = %if.end5
  %arrayidx1.i = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 0
  %5 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end10.if.else_crit_edge

if.end10.if.else_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.cond.i:                                       ; preds = %if.end10
  %arrayidx1.1.i = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 1
  %7 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1.i = icmp eq i32 %8, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.else_crit_edge

for.cond.i.if.else_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx1.2.i = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 2
  %9 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.2.i = icmp eq i32 %10, 0
  br i1 %tobool.not.2.i, label %sunxi_mc_smp_cluster_is_down.exit, label %for.cond.1.i.if.else_crit_edge

for.cond.1.i.if.else_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sunxi_mc_smp_cluster_is_down.exit:                ; preds = %for.cond.1.i
  %arrayidx1.3.i = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 3
  %11 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.3.i = icmp eq i32 %12, 0
  br i1 %tobool.not.3.i, label %if.then11, label %sunxi_mc_smp_cluster_is_down.exit.if.else_crit_edge

sunxi_mc_smp_cluster_is_down.exit.if.else_crit_edge: ; preds = %sunxi_mc_smp_cluster_is_down.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then11:                                        ; preds = %sunxi_mc_smp_cluster_is_down.exit
  call void @__sanitizer_cov_trace_pc() #11
  store i32 1, ptr @sunxi_mc_smp_first_comer, align 4
  tail call fastcc void @sunxi_cluster_powerup(i32 noundef %and2)
  br label %if.end13

if.else:                                          ; preds = %sunxi_mc_smp_cluster_is_down.exit.if.else_crit_edge, %for.cond.1.i.if.else_crit_edge, %for.cond.i.if.else_crit_edge, %if.end10.if.else_crit_edge
  store i32 0, ptr @sunxi_mc_smp_first_comer, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %13(ptr noundef nonnull @sunxi_mc_smp_first_comer, i32 noundef 4) #9
  %call.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @sunxi_mc_smp_first_comer to i32)) #9
  %call1.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (i32, ptr @sunxi_mc_smp_first_comer, i32 1) to i32)) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end13.__sync_cache_range_w.exit_crit_edge, label %if.then.i.i

if.end13.__sync_cache_range_w.exit_crit_edge:     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_w.exit

if.then.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %14(i32 noundef %call.i, i32 noundef %call1.i) #9
  br label %__sync_cache_range_w.exit

__sync_cache_range_w.exit:                        ; preds = %if.then.i.i, %if.end13.__sync_cache_range_w.exit_crit_edge
  tail call fastcc void @sunxi_cpu_powerup(i32 noundef %and, i32 noundef %and2)
  br label %out

out:                                              ; preds = %__sync_cache_range_w.exit, %if.end5.out_crit_edge
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %arrayidx7, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @boot_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_mc_smp_cpu_kill(i32 noundef %l_cpu) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %l_cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 255
  %shr1 = lshr i32 %1, 8
  %and2 = and i32 %shr1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp = icmp ugt i32 %and2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp3 = icmp ugt i32 %and, 3
  %spec.select = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %spec.select, label %do.end, label %if.end24, !prof !174

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 547, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end24:                                         ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @boot_lock) #9
  %arrayidx27 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 %and
  %mul = shl nuw nsw i32 %and2, 2
  %add = add nuw nsw i32 %mul, 48
  %shl = shl nuw nsw i32 65536, %and
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end24
  %cmp25157 = phi i1 [ true, %if.end24 ], [ %cmp25, %for.inc.for.body_crit_edge ]
  %tries.0156 = phi i32 [ 0, %if.end24 ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @boot_lock) #9
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #9
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @boot_lock) #9
  %2 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool28.not = icmp eq i32 %3, 0
  br i1 %tobool28.not, label %if.end30, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end30:                                         ; preds = %for.body
  %4 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !175
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  %and34 = and i32 %6, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end30.for.inc_crit_edge, label %if.end40

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end30.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %tries.0156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %tries.0156)
  %cmp25 = icmp ult i32 %tries.0156, 999
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end40:                                         ; preds = %if.end30
  tail call fastcc void @sunxi_cpu_powerdown(i32 noundef %and, i32 noundef %and2)
  %arrayidx1.i = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 0
  %7 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end40.out_crit_edge

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.i:                                       ; preds = %if.end40
  %arrayidx1.1.i = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 1
  %9 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.out_crit_edge

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx1.2.i = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 2
  %11 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.2.i = icmp eq i32 %12, 0
  br i1 %tobool.not.2.i, label %sunxi_mc_smp_cluster_is_down.exit, label %for.cond.1.i.out_crit_edge

for.cond.1.i.out_crit_edge:                       ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sunxi_mc_smp_cluster_is_down.exit:                ; preds = %for.cond.1.i
  %arrayidx1.3.i = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 3
  %13 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx1.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.3.i = icmp eq i32 %14, 0
  br i1 %tobool.not.3.i, label %if.end44, label %sunxi_mc_smp_cluster_is_down.exit.out_crit_edge

sunxi_mc_smp_cluster_is_down.exit.out_crit_edge:  ; preds = %sunxi_mc_smp_cluster_is_down.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end44:                                         ; preds = %sunxi_mc_smp_cluster_is_down.exit
  %call45 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call45, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 587) #9
  %15 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr64158 = getelementptr i8, ptr %15, i32 %add
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64158) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool69.not160 = icmp eq i32 %17, 0
  br i1 %tobool69.not160, label %if.end44.land.lhs.true_crit_edge, label %if.end44.if.end97_crit_edge

if.end44.if.end97_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.end44.land.lhs.true_crit_edge:                 ; preds = %if.end44
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then87.land.lhs.true_crit_edge, %if.end44.land.lhs.true_crit_edge
  %call73 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call73, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call73, %add.i
  br i1 %cmp3.i, label %for.end91, label %if.then87

if.then87:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %18 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr64 = getelementptr i8, ptr %18, i32 %add
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  %20 = and i32 %19, 16777216
  %tobool69.not = icmp eq i32 %20, 0
  br i1 %tobool69.not, label %if.then87.land.lhs.true_crit_edge, label %if.then87.if.end97_crit_edge

if.then87.if.end97_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then87.land.lhs.true_crit_edge:                ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end91:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr81 = getelementptr i8, ptr %21, i32 %add
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool94.not = icmp eq i32 %23, 0
  br i1 %tobool94.not, label %for.end91.out_crit_edge, label %for.end91.if.end97_crit_edge

for.end91.if.end97_crit_edge:                     ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

for.end91.out_crit_edge:                          ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end97:                                         ; preds = %for.end91.if.end97_crit_edge, %if.then87.if.end97_crit_edge, %if.end44.if.end97_crit_edge
  tail call fastcc void @sunxi_cluster_powerdown(i32 noundef %and2)
  br label %out

out:                                              ; preds = %if.end97, %for.end91.out_crit_edge, %sunxi_mc_smp_cluster_is_down.exit.out_crit_edge, %for.cond.1.i.out_crit_edge, %for.cond.i.out_crit_edge, %if.end40.out_crit_edge, %for.inc.out_crit_edge
  %cmp25155 = phi i1 [ %cmp25157, %if.end97 ], [ %cmp25157, %sunxi_mc_smp_cluster_is_down.exit.out_crit_edge ], [ %cmp25157, %for.end91.out_crit_edge ], [ %cmp25157, %if.end40.out_crit_edge ], [ %cmp25157, %for.cond.i.out_crit_edge ], [ %cmp25157, %for.cond.1.i.out_crit_edge ], [ %cmp25, %for.inc.out_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.end97 ], [ 0, %sunxi_mc_smp_cluster_is_down.exit.out_crit_edge ], [ 0, %for.end91.out_crit_edge ], [ 0, %if.end40.out_crit_edge ], [ 0, %for.cond.i.out_crit_edge ], [ 0, %for.cond.1.i.out_crit_edge ], [ 110, %for.inc.out_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @boot_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_mc_smp_cpu_kill.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_mc_smp_cpu_kill, %if.then109)) #9
          to label %do.end112 [label %if.then109], !srcloc !179

if.then109:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sunxi_mc_smp_cpu_kill.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i32 noundef %and2, i32 noundef %and, i32 noundef %ret.0) #9
  br label %do.end112

do.end112:                                        ; preds = %if.then109, %out
  %lnot.ext115 = zext i1 %cmp25155 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end112, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %lnot.ext115, %do.end112 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_mc_smp_cpu_die(i32 noundef %l_cpu) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %l_cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 255
  %shr1 = lshr i32 %1, 8
  %and2 = and i32 %shr1, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_mc_smp_cpu_die.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_mc_smp_cpu_die, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sunxi_mc_smp_cpu_die.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.64, i32 noundef %and2, i32 noundef %and) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @boot_lock) #9
  %arrayidx6 = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 %and
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx6, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp = icmp eq i32 %dec, 1
  br i1 %cmp, label %do.body10, label %if.else

do.body10:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_mc_smp_cpu_die.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_mc_smp_cpu_die, %if.then22)) #9
          to label %do.end25 [label %if.then22], !srcloc !179

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sunxi_mc_smp_cpu_die.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @boot_lock) #9
  ret void

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp28 = icmp sgt i32 %dec, 1
  br i1 %cmp28, label %do.end32, label %if.end42

do.end32:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %and2, i32 noundef %and) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-sunxi/mc_smp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 465, 0\0A.popsection", ""() #9, !srcloc !180
  unreachable

if.end42:                                         ; preds = %if.else
  %arrayidx1.i = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 0
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end42.if.else48.sink.split_crit_edge

if.end42.if.else48.sink.split_crit_edge:          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else48.sink.split

for.cond.i:                                       ; preds = %if.end42
  %arrayidx1.1.i = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 1
  %6 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1.i = icmp eq i32 %7, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.else48.sink.split_crit_edge

for.cond.i.if.else48.sink.split_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else48.sink.split

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx1.2.i = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 2
  %8 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.2.i = icmp eq i32 %9, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.else48.sink.split_crit_edge

for.cond.1.i.if.else48.sink.split_crit_edge:      ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else48.sink.split

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx1.3.i = getelementptr [2 x [4 x i32]], ptr @sunxi_mc_smp_cpu_table, i32 0, i32 %and2, i32 3
  %10 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.3.i = icmp eq i32 %11, 0
  tail call void @_raw_spin_unlock(ptr noundef nonnull @boot_lock) #9
  %call45 = tail call i32 @gic_cpu_if_down(i32 noundef 0) #9
  br i1 %tobool.not.3.i, label %if.then47, label %for.cond.2.i.if.else48_crit_edge

for.cond.2.i.if.else48_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else48

if.then47:                                        ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sunxi_cluster_cache_disable()
  br label %for.cond.preheader

if.else48.sink.split:                             ; preds = %for.cond.1.i.if.else48.sink.split_crit_edge, %for.cond.i.if.else48.sink.split_crit_edge, %if.end42.if.else48.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @boot_lock) #9
  %call45.c68 = tail call i32 @gic_cpu_if_down(i32 noundef 0) #9
  br label %if.else48

if.else48:                                        ; preds = %if.else48.sink.split, %for.cond.2.i.if.else48_crit_edge
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_louis \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #9, !srcloc !181
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else48, %if.then47
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %for.cond.preheader
  tail call void asm sideeffect "wfi", "~{memory}"() #9, !srcloc !182
  br label %for.cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sunxi_mc_smp_cpu_can_disable(i32 noundef %cpu) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @is_a83t, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu)
  %cmp = icmp ne i32 %cpu, 0
  %not.or.cond = or i1 %cmp, %tobool.not
  ret i1 %not.or.cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_cluster_powerup(i32 noundef %cluster) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_cluster_powerup.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_cluster_powerup, %if.then)) #9
          to label %if.end4 [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sunxi_cluster_powerup.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %cluster) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %0 = load i8, ptr @is_a83t, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool5.not = icmp eq i8 %0, 0
  br i1 %tobool5.not, label %if.end4.if.end16_crit_edge, label %if.then6

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = shl i32 %cluster, 2
  br label %if.end16

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %1 = load ptr, ptr @cpucfg_base, align 4
  %mul = shl i32 %cluster, 2
  %add = add i32 %mul, 128
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %3 = and i32 %2, -251658241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %4 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr15 = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %3) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then6, %if.end4.if.end16_crit_edge
  %mul33.pre-phi = phi i32 [ %.pre, %if.end4.if.end16_crit_edge ], [ %mul, %if.then6 ]
  %6 = load ptr, ptr @cpucfg_base, align 4
  %mul19 = shl i32 %cluster, 4
  %add20 = or i32 %mul19, 4
  %add.ptr21 = getelementptr i8, ptr %6, i32 %add20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  %8 = or i32 %7, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %9 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr30 = getelementptr i8, ptr %9, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %8) #9, !srcloc !163
  %10 = load ptr, ptr @prcm_base, align 4
  %add34 = add i32 %mul33.pre-phi, 4
  %add.ptr35 = getelementptr i8, ptr %10, i32 %add34
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %12 = and i32 %11, -251658241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %13 = load ptr, ptr @prcm_base, align 4
  %add.ptr45 = getelementptr i8, ptr %13, i32 %add34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %12) #9, !srcloc !163
  %14 = load i8, ptr @is_a83t, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool46.not = icmp eq i8 %14, 0
  br i1 %tobool46.not, label %if.end16.if.end63_crit_edge, label %if.then47

if.end16.if.end63_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then47:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %15 = load ptr, ptr @r_cpucfg_base, align 4
  %add51 = add i32 %mul33.pre-phi, 48
  %add.ptr52 = getelementptr i8, ptr %15, i32 %add51
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !189
  %17 = and i32 %16, -251658241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  tail call void @arm_heavy_mb() #9
  %18 = load ptr, ptr @r_cpucfg_base, align 4
  %add.ptr62 = getelementptr i8, ptr %18, i32 %add51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %17) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #9
  br label %if.end63

if.end63:                                         ; preds = %if.then47, %if.end16.if.end63_crit_edge
  %20 = load ptr, ptr @cpucfg_base, align 4
  %add67 = add i32 %mul33.pre-phi, 128
  %add.ptr68 = getelementptr i8, ptr %20, i32 %add67
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  %22 = and i32 %21, -1117954
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %call76 = tail call fastcc zeroext i1 @sunxi_core_is_cortex_a15(i32 noundef 0, i32 noundef %cluster)
  %and78 = and i32 %23, -33493249
  %spec.select = select i1 %call76, i32 %23, i32 %and78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %25 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr85 = getelementptr i8, ptr %25, i32 %add67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %24) #9, !srcloc !163
  %26 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr89 = getelementptr i8, ptr %26, i32 %mul19
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #9, !srcloc !175
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !193
  %call93 = tail call fastcc zeroext i1 @sunxi_core_is_cortex_a15(i32 noundef 0, i32 noundef %cluster)
  %reg.1.v = select i1 %call93, i32 -2, i32 -32
  %reg.1 = and i32 %reg.1.v, %28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %29 = tail call i32 @llvm.bswap.i32(i32 %reg.1)
  %30 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr103 = getelementptr i8, ptr %30, i32 %mul19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %29) #9, !srcloc !163
  %31 = load ptr, ptr @prcm_base, align 4
  %add107 = add i32 %mul33.pre-phi, 256
  %add.ptr108 = getelementptr i8, ptr %31, i32 %add107
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108) #9, !srcloc !175
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  %34 = load i8, ptr @is_a83t, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool112.not = icmp eq i8 %34, 0
  %reg.2.v = select i1 %tobool112.not, i32 -17, i32 -2
  %reg.2 = and i32 %reg.2.v, %33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %reg.2)
  %36 = load ptr, ptr @prcm_base, align 4
  %add.ptr123 = getelementptr i8, ptr %36, i32 %add107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %35) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 4294960) #9
  %38 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr128 = getelementptr i8, ptr %38, i32 %add67
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr128) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %40 = or i32 %39, 1114113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  tail call void @arm_heavy_mb() #9
  %41 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr140 = getelementptr i8, ptr %41, i32 %add67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 %40) #9, !srcloc !163
  %42 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr145 = getelementptr i8, ptr %42, i32 %add20
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  %44 = and i32 %43, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  tail call void @arm_heavy_mb() #9
  %45 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr155 = getelementptr i8, ptr %45, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 %44) #9, !srcloc !163
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_cpu_powerup(i32 noundef %cpu, i32 noundef %cluster) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_cpu_powerup.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_cpu_powerup, %if.then)) #9
          to label %if.end5 [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sunxi_cpu_powerup.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef %cluster, i32 noundef %cpu) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu)
  %cmp7 = icmp eq i32 %cpu, 0
  %0 = or i32 %cluster, %cpu
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.then8, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %2 = load ptr, ptr @sram_b_smp_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 792285434) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %3 = load ptr, ptr @sram_b_smp_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 986320249) #9, !srcloc !163
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %4 = load ptr, ptr @prcm_base, align 4
  %mul = shl i32 %cluster, 2
  %add = add i32 %mul, 4
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !175
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !202
  %shl = shl nuw i32 1, %cpu
  %neg = xor i32 %shl, -1
  %and = and i32 %6, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !203
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %and)
  %8 = load ptr, ptr @prcm_base, align 4
  %add.ptr18 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %7) #9, !srcloc !163
  %9 = load i8, ptr @is_a83t, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool19.not = icmp eq i8 %9, 0
  br i1 %tobool19.not, label %if.end9.if.end38_crit_edge, label %if.then20

if.end9.if.end38_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then20:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %10 = load ptr, ptr @r_cpucfg_base, align 4
  %add24 = add i32 %mul, 48
  %add.ptr25 = getelementptr i8, ptr %10, i32 %add24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #9, !srcloc !175
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  %and31 = and i32 %12, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %and31)
  %14 = load ptr, ptr @r_cpucfg_base, align 4
  %add.ptr37 = getelementptr i8, ptr %14, i32 %add24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %13) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then20, %if.end9.if.end38_crit_edge
  %call39 = tail call fastcc zeroext i1 @sunxi_core_is_cortex_a15(i32 noundef %cpu, i32 noundef %cluster)
  br i1 %call39, label %if.end38.if.end56_crit_edge, label %if.then40

if.end38.if.end56_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %16 = load ptr, ptr @cpucfg_base, align 4
  %mul43 = shl i32 %cluster, 4
  %add.ptr44 = getelementptr i8, ptr %16, i32 %mul43
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #9, !srcloc !175
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  %and50 = and i32 %18, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %and50)
  %20 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr55 = getelementptr i8, ptr %20, i32 %mul43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %19) #9, !srcloc !163
  br label %if.end56

if.end56:                                         ; preds = %if.then40, %if.end38.if.end56_crit_edge
  %21 = load ptr, ptr @cpucfg_base, align 4
  %add60 = add i32 %mul, 128
  %add.ptr61 = getelementptr i8, ptr %21, i32 %add60
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #9, !srcloc !175
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %add65 = add i32 %cpu, 16
  %shl66 = shl nuw i32 1, %add65
  %neg67 = xor i32 %shl66, -1
  %and68 = and i32 %23, %neg67
  %call69 = tail call fastcc zeroext i1 @sunxi_core_is_cortex_a15(i32 noundef %cpu, i32 noundef %cluster)
  %add71 = add i32 %cpu, 20
  %shl72 = shl nuw i32 1, %add71
  %neg73 = xor i32 %shl72, -1
  %and74 = select i1 %call69, i32 -1, i32 %neg73
  %reg.0 = and i32 %and68, %and74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !209
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %25 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr81 = getelementptr i8, ptr %25, i32 %add60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %24) #9, !srcloc !163
  tail call fastcc void @sunxi_cpu_power_switch_set(i32 noundef %cpu, i32 noundef %cluster, i1 noundef zeroext true)
  %26 = load i8, ptr @is_a83t, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool83.not = icmp ne i8 %26, 0
  %or.cond1 = and i1 %cmp7, %tobool83.not
  %cpu.addr.0 = select i1 %or.cond1, i32 4, i32 %cpu
  %27 = load ptr, ptr @prcm_base, align 4
  %add92 = add i32 %mul, 256
  %add.ptr93 = getelementptr i8, ptr %27, i32 %add92
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #9, !srcloc !175
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  %shl97 = shl nuw i32 1, %cpu.addr.0
  %neg98 = xor i32 %shl97, -1
  %and99 = and i32 %29, %neg98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %and99)
  %31 = load ptr, ptr @prcm_base, align 4
  %add.ptr105 = getelementptr i8, ptr %31, i32 %add92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %30) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 4294960) #9
  %33 = load i8, ptr @is_a83t, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool106.not = icmp ne i8 %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cpu.addr.0)
  %cmp108 = icmp eq i32 %cpu.addr.0, 4
  %or.cond2 = select i1 %tobool106.not, i1 %cmp108, i1 false
  %cpu.addr.1 = select i1 %or.cond2, i32 0, i32 %cpu.addr.0
  %34 = load ptr, ptr @prcm_base, align 4
  %add.ptr116 = getelementptr i8, ptr %34, i32 %add
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116) #9, !srcloc !175
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %shl120 = shl nuw i32 1, %cpu.addr.1
  %or = or i32 %shl120, %36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !213
  tail call void @arm_heavy_mb() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %or)
  %38 = load ptr, ptr @prcm_base, align 4
  %add.ptr126 = getelementptr i8, ptr %38, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %37) #9, !srcloc !163
  %39 = load i8, ptr @is_a83t, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool127.not = icmp eq i8 %39, 0
  br i1 %tobool127.not, label %if.end56.if.end145_crit_edge, label %if.then128

if.end56.if.end145_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then128:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %40 = load ptr, ptr @r_cpucfg_base, align 4
  %add132 = add i32 %mul, 48
  %add.ptr133 = getelementptr i8, ptr %40, i32 %add132
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr133) #9, !srcloc !175
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !214
  %or138 = or i32 %42, %shl120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  tail call void @arm_heavy_mb() #9
  %43 = tail call i32 @llvm.bswap.i32(i32 %or138)
  %44 = load ptr, ptr @r_cpucfg_base, align 4
  %add.ptr144 = getelementptr i8, ptr %44, i32 %add132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 %43) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #9
  br label %if.end145

if.end145:                                        ; preds = %if.then128, %if.end56.if.end145_crit_edge
  %46 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr150 = getelementptr i8, ptr %46, i32 %add60
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #9, !srcloc !175
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  %add154 = add i32 %cpu.addr.1, 16
  %shl155 = shl nuw i32 1, %add154
  %call159 = tail call fastcc zeroext i1 @sunxi_core_is_cortex_a15(i32 noundef %cpu.addr.1, i32 noundef %cluster)
  %add164.pn.v = select i1 %call159, i32 4, i32 20
  %add164.pn = add i32 %add164.pn.v, %cpu.addr.1
  %shl165.pn = shl nuw i32 1, %add164.pn
  %or156 = or i32 %shl155, %shl120
  %or158 = or i32 %or156, %48
  %reg.1 = or i32 %or158, %shl165.pn
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %reg.1)
  %50 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr173 = getelementptr i8, ptr %50, i32 %add60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr173, i32 %49) #9, !srcloc !163
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sunxi_core_is_cortex_a15(i32 noundef %core, i32 noundef %cluster) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %cluster, 2
  %add = add i32 %mul, %core
  %call.i = tail call ptr @get_cpu_device(i32 noundef %add) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call ptr @of_get_cpu_node(i32 noundef %add, ptr noundef null) #9
  br label %of_cpu_device_node_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %of_node.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %call2.i = tail call ptr @of_node_get(ptr noundef %1) #9
  br label %of_cpu_device_node_get.exit

of_cpu_device_node_get.exit:                      ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call2.i, %if.end.i ], [ %call1.i, %if.then.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %if.end, label %of_cpu_device_node_get.exit.if.end5_crit_edge

of_cpu_device_node_get.exit.if.end5_crit_edge:    ; preds = %of_cpu_device_node_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end:                                           ; preds = %of_cpu_device_node_get.exit
  %call1 = tail call ptr @of_get_cpu_node(i32 noundef %add, ptr noundef null) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %cluster, i32 noundef %core) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %of_cpu_device_node_get.exit.if.end5_crit_edge
  %node.019 = phi ptr [ %call1, %if.end.if.end5_crit_edge ], [ %retval.0.i, %of_cpu_device_node_get.exit.if.end5_crit_edge ]
  %call6 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %node.019, ptr noundef nonnull @.str.53) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7 = icmp ne i32 %call6, 0
  tail call void @of_node_put(ptr noundef nonnull %node.019) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end
  %retval.0 = phi i1 [ %tobool7, %if.end5 ], [ false, %do.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_cpu_power_switch_set(i32 noundef %cpu, i32 noundef %cluster, i1 noundef zeroext %enable) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prcm_base, align 4
  %mul = shl i32 %cluster, 4
  %mul1 = shl i32 %cpu, 2
  %add = add i32 %mul1, 320
  %add2 = add i32 %add, %mul
  %add.ptr = getelementptr i8, ptr %0, i32 %add2
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  br i1 %enable, label %if.then, label %do.body53

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.body, label %do.body13

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_cpu_power_switch_set.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_cpu_power_switch_set, %if.then11)) #9
          to label %cleanup [label %if.then11], !srcloc !179

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sunxi_cpu_power_switch_set.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.57, i32 noundef %cluster, i32 noundef %cpu) #9
  br label %cleanup

do.body13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  %2 = load ptr, ptr @prcm_base, align 4
  %add.ptr20 = getelementptr i8, ptr %2, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 -16777216) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 2147480) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  tail call void @arm_heavy_mb() #9
  %4 = load ptr, ptr @prcm_base, align 4
  %add.ptr28 = getelementptr i8, ptr %4, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 -33554432) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  tail call void @arm_heavy_mb() #9
  %6 = load ptr, ptr @prcm_base, align 4
  %add.ptr36 = getelementptr i8, ptr %6, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 -134217728) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !222
  tail call void @arm_heavy_mb() #9
  %8 = load ptr, ptr @prcm_base, align 4
  %add.ptr44 = getelementptr i8, ptr %8, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 -268435456) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %10 = load ptr, ptr @prcm_base, align 4
  %add.ptr52 = getelementptr i8, ptr %10, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 0) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #9
  br label %cleanup

do.body53:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void @arm_heavy_mb() #9
  %12 = load ptr, ptr @prcm_base, align 4
  %add.ptr60 = getelementptr i8, ptr %12, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 -16777216) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body53, %do.body13, %if.then11, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_cpu_powerdown(i32 noundef %cpu, i32 noundef %cluster) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_cpu_powerdown.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_cpu_powerdown, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sunxi_cpu_powerdown.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.60, i32 noundef %cluster, i32 noundef %cpu) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cpu)
  %cmp = icmp ugt i32 %cpu, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp3 = icmp ugt i32 %cluster, 1
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load i8, ptr @is_a83t, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool6.not = icmp ne i8 %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu)
  %cmp7 = icmp eq i32 %cpu, 0
  %or.cond1 = and i1 %cmp7, %tobool6.not
  %1 = load ptr, ptr @prcm_base, align 4
  %mul = shl nuw nsw i32 %cluster, 2
  %add = add nuw nsw i32 %mul, 256
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !175
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  %cpu.op = shl nuw nsw i32 1, %cpu
  %shl = select i1 %or.cond1, i32 16, i32 %cpu.op
  %or = or i32 %3, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = load ptr, ptr @prcm_base, align 4
  %add.ptr18 = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %4) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 4294960) #9
  %7 = load ptr, ptr @prcm_base, align 4
  %mul.i = shl nuw nsw i32 %cluster, 4
  %mul1.i = shl nuw nsw i32 %cpu, 2
  %add.i = add nuw nsw i32 %mul1.i, 320
  %add2.i = add nuw nsw i32 %add.i, %mul.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add2.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void @arm_heavy_mb() #9
  %9 = load ptr, ptr @prcm_base, align 4
  %add.ptr60.i = getelementptr i8, ptr %9, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i, i32 -16777216) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_cluster_powerdown(i32 noundef %cluster) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_cluster_powerdown.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_cluster_powerdown, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sunxi_cluster_powerdown.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.61, i32 noundef %cluster) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp = icmp ugt i32 %cluster, 1
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %do.body5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body5:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_cluster_powerdown.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_cluster_powerdown, %if.then17)) #9
          to label %do.end20 [label %if.then17], !srcloc !179

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sunxi_cluster_powerdown.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body5
  %0 = load ptr, ptr @cpucfg_base, align 4
  %mul = shl nuw nsw i32 %cluster, 2
  %add = add nuw nsw i32 %mul, 128
  %add.ptr = getelementptr i8, ptr %0, i32 %add
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  %2 = and i32 %1, -1114114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void @arm_heavy_mb() #9
  %3 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr31 = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %2) #9, !srcloc !163
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_cluster_powerdown.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_cluster_powerdown, %if.then44)) #9
          to label %do.end47 [label %if.then44], !srcloc !179

if.then44:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sunxi_cluster_powerdown.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.end20
  %4 = load ptr, ptr @prcm_base, align 4
  %add51 = add nuw nsw i32 %mul, 256
  %add.ptr52 = getelementptr i8, ptr %4, i32 %add51
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #9, !srcloc !175
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !229
  %7 = load i8, ptr @is_a83t, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool56.not = icmp eq i8 %7, 0
  %reg.0.v = select i1 %tobool56.not, i32 16, i32 1
  %reg.0 = or i32 %reg.0.v, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %9 = load ptr, ptr @prcm_base, align 4
  %add.ptr65 = getelementptr i8, ptr %9, i32 %add51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %8) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 4294960) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_cpu_if_down(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_cluster_cache_disable() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #14, !srcloc !164
  %shr = lshr i32 %0, 8
  %and = and i32 %shr, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_cluster_cache_disable.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_cluster_cache_disable, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sunxi_cluster_cache_disable.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.67, i32 noundef %and) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #14, !srcloc !170
  %and.i.i = and i32 %1, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568432, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 1090568432
  br i1 %cmp.i, label %if.then.i, label %do.end.sunxi_cluster_cache_disable_without_axi.exit_crit_edge

do.end.sunxi_cluster_cache_disable_without_axi.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sunxi_cluster_cache_disable_without_axi.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr\09p15, 1, $0, c15, c0, 3\0Aisb\0Adsb", "r"(i32 1024) #9, !srcloc !171
  br label %sunxi_cluster_cache_disable_without_axi.exit

sunxi_cluster_cache_disable_without_axi.exit:     ; preds = %if.then.i, %do.end.sunxi_cluster_cache_disable_without_axi.exit_crit_edge
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_all \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #9, !srcloc !172
  %conv.i = zext i32 %0 to i64
  %call2.i = tail call i32 @cci_disable_port_by_cpu(i64 noundef %conv.i) #9
  %2 = load ptr, ptr @cpucfg_base, align 4
  %mul = shl nuw nsw i32 %and, 4
  %add = or i32 %mul, 4
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !231
  %4 = or i32 %3, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @arm_heavy_mb() #9
  %5 = load ptr, ptr @cpucfg_base, align 4
  %add.ptr12 = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %4) #9, !srcloc !163
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !55, !56, !57, !59, !61, !62, !63, !65, !67, !68, !69, !71, !73, !74, !76, !78, !79, !80, !82, !84, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !148, !150}
!llvm.named.register.sp = !{!151}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @__initcall__kmod_mc_smp__238_914_sunxi_mc_smp_initearly, !1, !"__initcall__kmod_mc_smp__238_914_sunxi_mc_smp_initearly", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 914, i32 1}
!2 = !{ptr @sunxi_mc_smp_first_comer, !3, !"sunxi_mc_smp_first_comer", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 371, i32 5}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 805, i32 40}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 821, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sunxi_mc_smp_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @sunxi_mc_smp_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 836, i32 3}
!14 = !{ptr @sunxi_mc_smp_init._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sunxi_mc_smp_init._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 842, i32 10}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 845, i32 3}
!20 = !{ptr @sunxi_mc_smp_init._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @sunxi_mc_smp_init._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 855, i32 4}
!24 = !{ptr @sunxi_mc_smp_init._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sunxi_mc_smp_init._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 864, i32 4}
!28 = !{ptr @sunxi_mc_smp_init._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sunxi_mc_smp_init._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 872, i32 3}
!32 = !{ptr @sunxi_mc_smp_init._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sunxi_mc_smp_init._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 890, i32 2}
!36 = !{ptr @sunxi_mc_smp_init._entry.20, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sunxi_mc_smp_init._entry_ptr.22, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 770, i32 20}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 774, i32 20}
!42 = !{ptr @sunxi_mc_smp_data, !43, !"sunxi_mc_smp_data", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 768, i32 39}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 719, i32 10}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 721, i32 3}
!48 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sun9i_a80_get_smp_nodes._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @sun9i_a80_get_smp_nodes._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 726, i32 12}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 728, i32 3}
!55 = !{ptr @sun9i_a80_get_smp_nodes._entry.29, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @sun9i_a80_get_smp_nodes._entry_ptr.31, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 733, i32 10}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 735, i32 3}
!61 = !{ptr @sun9i_a80_get_smp_nodes._entry.33, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sun9i_a80_get_smp_nodes._entry_ptr.35, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 745, i32 10}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 747, i32 3}
!67 = !{ptr @sun8i_a83t_get_smp_nodes._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @sun8i_a83t_get_smp_nodes._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 752, i32 12}
!71 = !{ptr @sun8i_a83t_get_smp_nodes._entry.39, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 754, i32 3}
!73 = !{ptr @sun8i_a83t_get_smp_nodes._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 759, i32 14}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 761, i32 3}
!78 = !{ptr @sun8i_a83t_get_smp_nodes._entry.42, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @sun8i_a83t_get_smp_nodes._entry_ptr.44, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @is_a83t, !81, !"is_a83t", i1 false, i1 false}
!81 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 86, i32 13}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 638, i32 3}
!84 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sunxi_mc_smp_cpu_table_init._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @sunxi_mc_smp_cpu_table_init._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @sunxi_mc_smp_cpu_table, !88, !"sunxi_mc_smp_cpu_table", i1 false, i1 false}
!88 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 370, i32 12}
!89 = !{ptr @prcm_base, !90, !"prcm_base", i1 false, i1 false}
!90 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 80, i32 22}
!91 = !{ptr @cpucfg_base, !92, !"cpucfg_base", i1 false, i1 false}
!92 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 79, i32 22}
!93 = !{ptr @r_cpucfg_base, !94, !"r_cpucfg_base", i1 false, i1 false}
!94 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 82, i32 22}
!95 = !{ptr @sram_b_smp_base, !96, !"sram_b_smp_base", i1 false, i1 false}
!96 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 81, i32 22}
!97 = !{ptr @sunxi_mc_smp_smp_ops, !98, !"sunxi_mc_smp_smp_ops", i1 false, i1 false}
!98 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 619, i32 36}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 373, i32 8}
!101 = !{ptr @boot_lock, !100, !"boot_lock", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 258, i32 2}
!104 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @sunxi_cluster_powerup.__UNIQUE_ID_ddebug229, !103, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 105, i32 3}
!109 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @sunxi_core_is_cortex_a15._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @sunxi_core_is_cortex_a15._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 111, i32 48}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 163, i32 2}
!116 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @sunxi_cpu_powerup.__UNIQUE_ID_ddebug228, !115, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 125, i32 4}
!120 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @sunxi_cpu_power_switch_set.__UNIQUE_ID_ddebug227, !119, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 604, i32 2}
!124 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @sunxi_mc_smp_cpu_kill.__UNIQUE_ID_ddebug237, !123, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 486, i32 2}
!128 = !{ptr @sunxi_cpu_powerdown.__UNIQUE_ID_ddebug233, !127, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 509, i32 2}
!131 = !{ptr @sunxi_cluster_powerdown.__UNIQUE_ID_ddebug234, !130, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 514, i32 2}
!134 = !{ptr @sunxi_cluster_powerdown.__UNIQUE_ID_ddebug235, !133, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 522, i32 2}
!137 = !{ptr @sunxi_cluster_powerdown.__UNIQUE_ID_ddebug236, !136, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 452, i32 2}
!140 = !{ptr @sunxi_mc_smp_cpu_die.__UNIQUE_ID_ddebug231, !139, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 458, i32 3}
!143 = !{ptr @sunxi_mc_smp_cpu_die.__UNIQUE_ID_ddebug232, !142, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 463, i32 3}
!146 = !{ptr @sunxi_mc_smp_cpu_die._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @sunxi_mc_smp_cpu_die._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../arch/arm/mach-sunxi/mc_smp.c", i32 434, i32 2}
!150 = !{ptr @sunxi_cluster_cache_disable.__UNIQUE_ID_ddebug230, !149, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!151 = !{!"sp"}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{i8 0, i8 2}
!162 = !{i64 2154157220}
!163 = !{i64 5852731}
!164 = !{i64 2154044582}
!165 = !{i64 1125661}
!166 = !{i64 1123364}
!167 = !{i64 2154131628}
!168 = !{i64 2154131676}
!169 = !{i64 1123174}
!170 = !{i64 2154041968}
!171 = !{i64 10768, i64 10802, i64 10812}
!172 = !{i64 2154092413, i64 2154092430, i64 2154092460, i64 2154092508, i64 2154092551, i64 2154092599, i64 2154092613, i64 2154092663, i64 2154092711, i64 2154092769, i64 2154092817, i64 2154092831, i64 2154092845}
!173 = !{i64 2154064163}
!174 = !{!"branch_weights", i32 1, i32 2000}
!175 = !{i64 5853149}
!176 = !{i64 2154121382}
!177 = !{i64 2154123445}
!178 = !{i64 2154124023}
!179 = !{i64 2148318926, i64 2148318931, i64 2148318944, i64 2148318988, i64 2148319022, i64 2148319043}
!180 = !{i64 2154104189, i64 2154104682, i64 2154104226, i64 2154104282, i64 2154104316, i64 2154104340, i64 2154104381, i64 2154104402, i64 2154104430, i64 2154104464}
!181 = !{i64 2154105522, i64 2154105539, i64 2154105569, i64 2154105617, i64 2154105660, i64 2154105708, i64 2154105722, i64 2154105772, i64 2154105820, i64 2154105878, i64 2154105926, i64 2154105940, i64 2154105954}
!182 = !{i64 2154106180}
!183 = !{i64 2154080712}
!184 = !{i64 2154080987}
!185 = !{i64 2154082332}
!186 = !{i64 2154082678}
!187 = !{i64 2154083468}
!188 = !{i64 2154083732}
!189 = !{i64 2154084540}
!190 = !{i64 2154084817}
!191 = !{i64 2154086164}
!192 = !{i64 2154086702}
!193 = !{i64 2154087475}
!194 = !{i64 2154087895}
!195 = !{i64 2154088689}
!196 = !{i64 2154089117}
!197 = !{i64 2154090461}
!198 = !{i64 2154090975}
!199 = !{i64 2154091778}
!200 = !{i64 2154092124}
!201 = !{i64 2154063360}
!202 = !{i64 2154067245}
!203 = !{i64 2154067593}
!204 = !{i64 2154068401}
!205 = !{i64 2154068755}
!206 = !{i64 2154070072}
!207 = !{i64 2154070412}
!208 = !{i64 2154071209}
!209 = !{i64 2154071681}
!210 = !{i64 2154072481}
!211 = !{i64 2154072833}
!212 = !{i64 2154074164}
!213 = !{i64 2154074512}
!214 = !{i64 2154075320}
!215 = !{i64 2154075674}
!216 = !{i64 2154077021}
!217 = !{i64 2154077683}
!218 = !{i64 2154053851}
!219 = !{i64 2154056641}
!220 = !{i64 2154057701}
!221 = !{i64 2154058761}
!222 = !{i64 2154059821}
!223 = !{i64 2154060881}
!224 = !{i64 2154061941}
!225 = !{i64 2154109052}
!226 = !{i64 2154109418}
!227 = !{i64 2154115263}
!228 = !{i64 2154115777}
!229 = !{i64 2154118834}
!230 = !{i64 2154119262}
!231 = !{i64 2154096783}
!232 = !{i64 2154097129}
