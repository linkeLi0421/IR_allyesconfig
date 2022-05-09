; ModuleID = '/llk/IR_all_yes/drivers/clk/renesas/renesas-cpg-mssr.c_pt.bc'
source_filename = "../drivers/clk/renesas/renesas-cpg-mssr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpg_mssr_info = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.psci_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_power_governor = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.cpg_mssr_clk_domain = type { %struct.generic_pm_domain, i32, [0 x i32] }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.pm_subsys_data = type { %struct.spinlock, i32, i32, %struct.mutex, %struct.list_head, ptr }
%struct.cpg_core_clk = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.mssr_mod_clk = type { ptr, i32, i32 }
%struct.cpg_mssr_priv = type { %struct.reset_controller_dev, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, %struct.raw_notifier_head, ptr, ptr, ptr, ptr, [28 x %struct.anon.46], [0 x ptr] }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.anon.46 = type { i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mstp_clock = type { %struct.clk_hw, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.mssr_mod_reparent = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@cpg_mssr_clk_domain = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cpg_mssr_attach_dev.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"renesas_cpg_mssr\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpg_mssr_attach_dev\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/clk/renesas/renesas-cpg-mssr.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CPG/MSSR clock domain not yet available\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@cpg_mssr_priv = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_renesas_cpg_mssr__192_1108_cpg_mssr_init4 = internal global ptr @cpg_mssr_init, section ".initcall4.init", align 4
@__UNIQUE_ID_description193 = internal constant [53 x i8] c"renesas_cpg_mssr.description=Renesas CPG/MSSR Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file194 = internal constant [59 x i8] c"renesas_cpg_mssr.file=drivers/clk/renesas/renesas-cpg-mssr\00", section ".modinfo", align 1
@__UNIQUE_ID_license195 = internal constant [32 x i8] c"renesas_cpg_mssr.license=GPL v2\00", section ".modinfo", align 1
@cpg_mssr_common_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->rmw_lock\00", [16 x i8] zeroinitializer }, align 32
@mstpsr = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 48, i16 56, i16 64, i16 72, i16 76, i16 60, i16 448, i16 452, i16 2464, i16 2468, i16 2472, i16 2476], [40 x i8] zeroinitializer }, align 32
@smstpcr = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 304, i16 308, i16 312, i16 316, i16 320, i16 324, i16 328, i16 332, i16 2448, i16 2452, i16 2456, i16 2460], [40 x i8] zeroinitializer }, align 32
@srcr = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 160, i16 168, i16 176, i16 184, i16 188, i16 196, i16 456, i16 460, i16 2336, i16 2340, i16 2344, i16 2348], [40 x i8] zeroinitializer }, align 32
@srstclr = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 2368, i16 2372, i16 2376, i16 2380, i16 2384, i16 2388, i16 2392, i16 2396, i16 2400, i16 2404, i16 2408, i16 2412], [40 x i8] zeroinitializer }, align 32
@stbcr = internal constant { [11 x i16], [42 x i8] } { [11 x i16] [i16 -1, i16 16, i16 20, i16 1040, i16 1044, i16 1048, i16 1052, i16 1056, i16 1060, i16 1064, i16 1068], [42 x i8] zeroinitializer }, align 32
@mstpsr_for_gen4 = internal constant { [28 x i16], [40 x i8] } { [28 x i16] [i16 11776, i16 11780, i16 11784, i16 11788, i16 11792, i16 11796, i16 11800, i16 11804, i16 11808, i16 11812, i16 11816, i16 11820, i16 11824, i16 11828, i16 11832, i16 11836, i16 11840, i16 11844, i16 11848, i16 11852, i16 11856, i16 11860, i16 11864, i16 11868, i16 11872, i16 11876, i16 11880, i16 11884], [40 x i8] zeroinitializer }, align 32
@mstpcr_for_gen4 = internal constant { [28 x i16], [40 x i8] } { [28 x i16] [i16 11520, i16 11524, i16 11528, i16 11532, i16 11536, i16 11540, i16 11544, i16 11548, i16 11552, i16 11556, i16 11560, i16 11564, i16 11568, i16 11572, i16 11576, i16 11580, i16 11584, i16 11588, i16 11592, i16 11596, i16 11600, i16 11604, i16 11608, i16 11612, i16 11616, i16 11620, i16 11624, i16 11628], [40 x i8] zeroinitializer }, align 32
@srcr_for_gen4 = internal constant { [28 x i16], [40 x i8] } { [28 x i16] [i16 11264, i16 11268, i16 11272, i16 11276, i16 11280, i16 11284, i16 11288, i16 11292, i16 11296, i16 11300, i16 11304, i16 11308, i16 11312, i16 11316, i16 11320, i16 11324, i16 11328, i16 11332, i16 11336, i16 11340, i16 11344, i16 11348, i16 11352, i16 11356, i16 11360, i16 11364, i16 11368, i16 11372], [40 x i8] zeroinitializer }, align 32
@srstclr_for_gen4 = internal constant { [28 x i16], [40 x i8] } { [28 x i16] [i16 11392, i16 11396, i16 11400, i16 11404, i16 11408, i16 11412, i16 11416, i16 11420, i16 11424, i16 11428, i16 11432, i16 11436, i16 11440, i16 11444, i16 11448, i16 11452, i16 11456, i16 11460, i16 11464, i16 11468, i16 11472, i16 11476, i16 11480, i16 11484, i16 11488, i16 11492, i16 11496, i16 11500], [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@cpg_mssr_clk_src_twocell_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 293, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid %s clock index %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cpg_mssr_clk_src_twocell_get\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpg_mssr_clk_src_twocell_get._entry_ptr = internal global ptr @cpg_mssr_clk_src_twocell_get._entry, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"module\00", [25 x i8] zeroinitializer }, align 32
@cpg_mssr_clk_src_twocell_get._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 310, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@cpg_mssr_clk_src_twocell_get._entry_ptr.14 = internal global ptr @cpg_mssr_clk_src_twocell_get._entry.13, section ".printk_index", align 4
@cpg_mssr_clk_src_twocell_get._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.2, i32 317, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid CPG clock type %u\0A\00", [37 x i8] zeroinitializer }, align 32
@cpg_mssr_clk_src_twocell_get._entry_ptr.17 = internal global ptr @cpg_mssr_clk_src_twocell_get._entry.15, section ".printk_index", align 4
@cpg_mssr_clk_src_twocell_get._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.2, i32 323, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot get %s clock %u: %ld\00", [36 x i8] zeroinitializer }, align 32
@cpg_mssr_clk_src_twocell_get._entry_ptr.20 = internal global ptr @cpg_mssr_clk_src_twocell_get._entry.18, section ".printk_index", align 4
@cpg_mssr_clk_src_twocell_get.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.21, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"clock (%u, %u) is %pC at %lu Hz\0A\00", [63 x i8] zeroinitializer }, align 32
@cpg_mssr_register_core_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 392, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s has unsupported core clock type %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cpg_mssr_register_core_clk\00", [37 x i8] zeroinitializer }, align 32
@cpg_mssr_register_core_clk._entry_ptr = internal global ptr @cpg_mssr_register_core_clk._entry, section ".printk_index", align 4
@cpg_mssr_register_core_clk.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Core clock %pC at %lu Hz\0A\00", [38 x i8] zeroinitializer }, align 32
@cpg_mssr_register_core_clk._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.2, i32 405, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register %s clock %s: %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@cpg_mssr_register_core_clk._entry_ptr.27 = internal global ptr @cpg_mssr_register_core_clk._entry.25, section ".printk_index", align 4
@cpg_mstp_clock_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @cpg_mstp_clock_enable, ptr @cpg_mstp_clock_disable, ptr @cpg_mstp_clock_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@cpg_mssr_register_mod_clk.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cpg_mssr_register_mod_clk\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MSTP %s setting CLK_IS_CRITICAL\0A\00", [63 x i8] zeroinitializer }, align 32
@cpg_mssr_register_mod_clk.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Module clock %pC at %lu Hz\0A\00", [36 x i8] zeroinitializer }, align 32
@cpg_mssr_register_mod_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.28, ptr @.str.2, i32 473, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@cpg_mssr_register_mod_clk._entry_ptr = internal global ptr @cpg_mssr_register_mod_clk._entry, section ".printk_index", align 4
@cpg_mstp_clock_endisable.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cpg_mstp_clock_endisable\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MSTP %u%02u/%pC %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@cpg_mstp_clock_endisable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.2, i32 239, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable SMSTP %p[%d]\0A\00", [33 x i8] zeroinitializer }, align 32
@cpg_mstp_clock_endisable._entry_ptr = internal global ptr @cpg_mstp_clock_endisable._entry, section ".printk_index", align 4
@cpg_mssr_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.36, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpg_mssr_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpg_mssr_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"renesas-cpg-mssr\00", [47 x i8] zeroinitializer }, align 32
@cpg_mssr_match = internal constant { [26 x %struct.of_device_id], [1272 x i8] } { [26 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r7s9210-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r7s9210_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7742-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7742_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7743-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7743_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7744-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7743_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7745-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7745_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77470-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77470_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774a1-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a774a1_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774b1-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a774b1_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774c0-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a774c0_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774e1-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a774e1_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7790-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7790_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7791-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7791_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7793-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7791_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7792-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7792_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7794-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7794_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7795-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7795_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7796-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7796_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77961-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7796_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77965-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77965_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77970-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77970_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77980-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77980_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77990-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77990_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77995-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77995_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a779a0-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a779a0_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a779f0-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a779f0_cpg_mssr_info }, %struct.of_device_id zeroinitializer], [1272 x i8] zeroinitializer }, align 32
@cpg_mssr_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpg_mssr_suspend_noirq, ptr @cpg_mssr_resume_noirq, ptr @cpg_mssr_suspend_noirq, ptr @cpg_mssr_resume_noirq, ptr @cpg_mssr_suspend_noirq, ptr @cpg_mssr_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@r7s9210_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7742_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7743_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7745_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a77470_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a774a1_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a774b1_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a774c0_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a774e1_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7790_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7791_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7792_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7794_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7795_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7796_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a77965_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a77970_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a77980_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a77990_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a77995_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a779a0_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a779f0_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@psci_ops = external dso_local local_unnamed_addr global %struct.psci_operations, align 4
@cpg_mssr_resume_noirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 942, ptr @.str.39, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable %s%u[0x%x]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cpg_mssr_resume_noirq\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cpg_mssr_resume_noirq._entry_ptr = internal global ptr @cpg_mssr_resume_noirq._entry, section ".printk_index", align 4
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"STB\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SMSTP\00", [26 x i8] zeroinitializer }, align 32
@pm_domain_always_on_gov = external dso_local global %struct.dev_power_governor, align 4
@cpg_mssr_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @cpg_mssr_reset, ptr @cpg_mssr_assert, ptr @cpg_mssr_deassert, ptr @cpg_mssr_status }, [16 x i8] zeroinitializer }, align 32
@cpg_mssr_reset.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cpg_mssr_reset\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reset %u%02u\0A\00", [18 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cpg_mssr_assert.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpg_mssr_assert\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"assert %u%02u\0A\00", [17 x i8] zeroinitializer }, align 32
@cpg_mssr_deassert.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpg_mssr_deassert\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"deassert %u%02u\0A\00", [47 x i8] zeroinitializer }, align 32
@cpg_mssr_reset_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 683, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid reset index %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpg_mssr_reset_xlate\00", [43 x i8] zeroinitializer }, align 32
@cpg_mssr_reset_xlate._entry_ptr = internal global ptr @cpg_mssr_reset_xlate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"cpg_mssr_clk_domain\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 483, i32 36 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 518, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 522, i32 41 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 522, i32 51 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"cpg_mssr_priv\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 174, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 978, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"mstpsr\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 55, i32 18 }
@___asan_gen_.86 = private unnamed_addr constant [8 x i8] c"smstpcr\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 71, i32 18 }
@___asan_gen_.89 = private unnamed_addr constant [5 x i8] c"srcr\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 97, i32 18 }
@___asan_gen_.92 = private unnamed_addr constant [8 x i8] c"srstclr\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 113, i32 18 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"stbcr\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 88, i32 18 }
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"mstpsr_for_gen4\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 60, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"mstpcr_for_gen4\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 76, i32 18 }
@___asan_gen_.104 = private unnamed_addr constant [14 x i8] c"srcr_for_gen4\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 102, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"srstclr_for_gen4\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 118, i32 18 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 290, i32 10 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 292, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 300, i32 10 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 309, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 317, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 322, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 325, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 391, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 399, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 404, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [19 x i8] c"cpg_mstp_clock_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 270, i32 29 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 456, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 466, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 472, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 202, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 238, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [16 x i8] c"cpg_mssr_driver\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1095, i32 31 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1097, i32 11 }
@___asan_gen_.206 = private unnamed_addr constant [15 x i8] c"cpg_mssr_match\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 708, i32 34 }
@___asan_gen_.209 = private unnamed_addr constant [12 x i8] c"cpg_mssr_pm\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 948, i32 32 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 940, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant [19 x i8] c"cpg_mssr_reset_ops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 668, i32 39 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 616, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 637, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 651, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private constant [42 x i8] c"../drivers/clk/renesas/renesas-cpg-mssr.c\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 683, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file194, ptr @__UNIQUE_ID_license195, ptr @__initcall__kmod_renesas_cpg_mssr__192_1108_cpg_mssr_init4, ptr @cpg_mssr_clk_src_twocell_get._entry, ptr @cpg_mssr_clk_src_twocell_get._entry.13, ptr @cpg_mssr_clk_src_twocell_get._entry.15, ptr @cpg_mssr_clk_src_twocell_get._entry.18, ptr @cpg_mssr_clk_src_twocell_get._entry_ptr, ptr @cpg_mssr_clk_src_twocell_get._entry_ptr.14, ptr @cpg_mssr_clk_src_twocell_get._entry_ptr.17, ptr @cpg_mssr_clk_src_twocell_get._entry_ptr.20, ptr @cpg_mssr_register_core_clk._entry, ptr @cpg_mssr_register_core_clk._entry.25, ptr @cpg_mssr_register_core_clk._entry_ptr, ptr @cpg_mssr_register_core_clk._entry_ptr.27, ptr @cpg_mssr_register_mod_clk._entry, ptr @cpg_mssr_register_mod_clk._entry_ptr, ptr @cpg_mssr_reset_xlate._entry, ptr @cpg_mssr_reset_xlate._entry_ptr, ptr @cpg_mssr_resume_noirq._entry, ptr @cpg_mssr_resume_noirq._entry_ptr, ptr @cpg_mstp_clock_endisable._entry, ptr @cpg_mstp_clock_endisable._entry_ptr, ptr @cpg_mssr_clk_domain, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cpg_mssr_priv, ptr @cpg_mssr_common_init.__key, ptr @.str.6, ptr @mstpsr, ptr @smstpcr, ptr @srcr, ptr @srstclr, ptr @stbcr, ptr @mstpsr_for_gen4, ptr @mstpcr_for_gen4, ptr @srcr_for_gen4, ptr @srstclr_for_gen4, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @cpg_mstp_clock_ops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @cpg_mssr_driver, ptr @.str.36, ptr @cpg_mssr_match, ptr @cpg_mssr_pm, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @cpg_mssr_reset_ops, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_clk_domain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_priv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_common_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mstpsr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smstpcr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srstclr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stbcr to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mstpsr_for_gen4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mstpcr_for_gen4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcr_for_gen4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srstclr_for_gen4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_clk_src_twocell_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_clk_src_twocell_get._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_clk_src_twocell_get._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_clk_src_twocell_get._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_register_core_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_register_core_clk._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mstp_clock_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_register_mod_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mstp_clock_endisable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_match to i32), i32 5096, i32 6368, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_resume_noirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mssr_reset_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpg_mssr_attach_dev(ptr nocapture readnone %unused, ptr noundef %dev) #0 align 64 {
entry:
  %clkspec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cpg_mssr_clk_domain, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec) #9
  %3 = call ptr @memset(ptr %clkspec, i32 255, i32 72)
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.body, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call.i48 = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %clkspec) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool7.not49 = icmp eq i32 %call.i48, 0
  br i1 %tobool7.not49, label %while.body.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %of_node.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 1
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %num_core_pm_clks.i = getelementptr inbounds %struct.cpg_mssr_clk_domain, ptr %0, i32 0, i32 1
  %arrayidx4.i = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2, i32 1
  br label %while.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpg_mssr_attach_dev.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpg_mssr_attach_dev, %if.then4)) #9
          to label %cleanup [label %if.then4], !srcloc !145

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpg_mssr_attach_dev.__UNIQUE_ID_ddebug188, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %cleanup

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %while.body.lr.ph
  %i.050 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end12.while.body_crit_edge ]
  %4 = ptrtoint ptr %clkspec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clkspec, align 4
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %cmp.not.i = icmp eq ptr %5, %7
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %while.body.if.end12_crit_edge

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

lor.lhs.false.i:                                  ; preds = %while.body
  %8 = ptrtoint ptr %args_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %args_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp1.not.i = icmp eq i32 %9, 2
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.if.end12_crit_edge

lor.lhs.false.i.if.end12_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.i:                                         ; preds = %lor.lhs.false.i
  %10 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %args.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end.i.if.end12_crit_edge [
    i32 0, label %for.cond.preheader.i
    i32 1, label %if.end.i.found_crit_edge
  ]

if.end.i.found_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.cond.preheader.i:                             ; preds = %if.end.i
  %13 = ptrtoint ptr %num_core_pm_clks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_core_pm_clks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp217.not.i = icmp eq i32 %14, 0
  br i1 %cmp217.not.i, label %for.cond.preheader.i.if.end12_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end12_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.cond.i.if.end12_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.if.end12_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.cpg_mssr_clk_domain, ptr %0, i32 0, i32 2, i32 %i.018.i
  %17 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp6.i = icmp eq i32 %16, %18
  br i1 %cmp6.i, label %for.body.i.found_crit_edge, label %for.cond.i

for.body.i.found_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

if.end12:                                         ; preds = %for.cond.i.if.end12_crit_edge, %for.cond.preheader.i.if.end12_crit_edge, %if.end.i.if.end12_crit_edge, %lor.lhs.false.i.if.end12_crit_edge, %while.body.if.end12_crit_edge
  call void @of_node_put(ptr noundef %5) #9
  %inc = add i32 %i.050, 1
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef -1, i32 noundef %inc, ptr noundef nonnull %clkspec) #9
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end12.while.body_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

found:                                            ; preds = %for.body.i.found_crit_edge, %if.end.i.found_crit_edge
  %call14 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %clkspec) #9
  %19 = ptrtoint ptr %clkspec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clkspec, align 4
  call void @of_node_put(ptr noundef %20) #9
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end19:                                         ; preds = %found
  %call20 = call i32 @pm_clk_create(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.fail_put_crit_edge

if.end19.fail_put_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_put

if.end23:                                         ; preds = %if.end19
  %call24 = call i32 @pm_clk_add_clk(ptr noundef %dev, ptr noundef %call14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %fail_destroy

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fail_destroy:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  call void @pm_clk_destroy(ptr noundef %dev) #9
  br label %fail_put

fail_put:                                         ; preds = %fail_destroy, %if.end19.fail_put_crit_edge
  %error.0 = phi i32 [ %call20, %if.end19.fail_put_crit_edge ], [ %call24, %fail_destroy ]
  call void @clk_put(ptr noundef %call14) #9
  br label %cleanup

cleanup:                                          ; preds = %fail_put, %if.end23.cleanup_crit_edge, %if.then17, %if.end12.cleanup_crit_edge, %if.then4, %do.body, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %if.then17 ], [ %error.0, %fail_put ], [ -517, %if.then4 ], [ 0, %if.end23.cleanup_crit_edge ], [ -517, %do.body ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_add_clk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_clk_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpg_mssr_detach_dev(ptr nocapture readnone %unused, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %land.lhs.true.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.i:                                  ; preds = %entry
  %subsys_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 26
  %0 = ptrtoint ptr %subsys_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subsys_data.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then_crit_edge, label %pm_clk_no_clocks.exit

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

pm_clk_no_clocks.exit:                            ; preds = %land.lhs.true.i
  %clock_list.i = getelementptr inbounds %struct.pm_subsys_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clock_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %clock_list.i, align 4
  %cmp.i.i = icmp eq ptr %3, %clock_list.i
  br i1 %cmp.i.i, label %pm_clk_no_clocks.exit.if.end_crit_edge, label %pm_clk_no_clocks.exit.if.then_crit_edge

pm_clk_no_clocks.exit.if.then_crit_edge:          ; preds = %pm_clk_no_clocks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

pm_clk_no_clocks.exit.if.end_crit_edge:           ; preds = %pm_clk_no_clocks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %pm_clk_no_clocks.exit.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @pm_clk_destroy(ptr noundef %dev) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_clk_no_clocks.exit.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cpg_mssr_early_init(ptr noundef %np, ptr noundef %info) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cpg_mssr_common_init(ptr noundef null, ptr noundef %np, ptr noundef %info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_early_core_clks = getelementptr inbounds %struct.cpg_mssr_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %num_early_core_clks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_early_core_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20.not = icmp eq i32 %1, 0
  br i1 %cmp20.not, label %for.cond.preheader.for.cond1.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond1.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %for.cond.preheader.for.cond1.preheader_crit_edge
  %num_early_mod_clks = getelementptr inbounds %struct.cpg_mssr_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %num_early_mod_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_early_mod_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp222.not = icmp eq i32 %3, 0
  br i1 %cmp222.not, label %for.cond1.preheader.cleanup_crit_edge, label %for.body3.lr.ph

for.cond1.preheader.cleanup_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %early_mod_clks = getelementptr inbounds %struct.cpg_mssr_info, ptr %info, i32 0, i32 2
  br label %for.body3

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %arrayidx = getelementptr %struct.cpg_core_clk, ptr %5, i32 %i.021
  %6 = load ptr, ptr @cpg_mssr_priv, align 4
  tail call fastcc void @cpg_mssr_register_core_clk(ptr noundef %arrayidx, ptr noundef %info, ptr noundef %6) #12
  %inc = add nuw i32 %i.021, 1
  %7 = ptrtoint ptr %num_early_core_clks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_early_core_clks, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond1.preheader_crit_edge

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body3.lr.ph
  %i.123 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc6, %for.body3.for.body3_crit_edge ]
  %9 = ptrtoint ptr %early_mod_clks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %early_mod_clks, align 4
  %arrayidx4 = getelementptr %struct.mssr_mod_clk, ptr %10, i32 %i.123
  %11 = load ptr, ptr @cpg_mssr_priv, align 4
  tail call fastcc void @cpg_mssr_register_mod_clk(ptr noundef %arrayidx4, ptr noundef %info, ptr noundef %11) #12
  %inc6 = add nuw i32 %i.123, 1
  %12 = ptrtoint ptr %num_early_mod_clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_early_mod_clks, align 4
  %cmp2 = icmp ult i32 %inc6, %13
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.cleanup_crit_edge

for.body3.cleanup_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

cleanup:                                          ; preds = %for.body3.cleanup_crit_edge, %for.cond1.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpg_mssr_common_init(ptr noundef %dev, ptr noundef %np, ptr nocapture noundef readonly %info) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %init = getelementptr inbounds %struct.cpg_mssr_info, ptr %info, i32 0, i32 16
  %0 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %num_total_core_clks = getelementptr inbounds %struct.cpg_mssr_info, ptr %info, i32 0, i32 7
  %2 = ptrtoint ptr %num_total_core_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_total_core_clks, align 4
  %num_hw_mod_clks = getelementptr inbounds %struct.cpg_mssr_info, ptr %info, i32 0, i32 11
  %4 = ptrtoint ptr %num_hw_mod_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_hw_mod_clks, align 4
  %add = add i32 %5, %3
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #9
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %8, i32 360) #9
  %retval.0.i = select i1 %7, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #13
  %tobool7.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %np10 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %np10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %np, ptr %np10, align 4
  %dev11 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev11, align 4
  %rmw_lock = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %rmw_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @cpg_mssr_common_init.__key, i16 noundef signext 3) #9
  %call13 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call13, ptr %base, align 16
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.end9.if.end53_crit_edge, label %if.end17

if.end9.if.end53_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end17:                                         ; preds = %if.end9
  store ptr %call9.i.i, ptr @cpg_mssr_priv, align 4
  %12 = ptrtoint ptr %num_total_core_clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_total_core_clks, align 4
  %num_core_clks = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %num_core_clks to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num_core_clks, align 8
  %15 = ptrtoint ptr %num_hw_mod_clks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_hw_mod_clks, align 4
  %num_mod_clks = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %num_mod_clks to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %num_mod_clks, align 4
  %last_dt_core_clk = getelementptr inbounds %struct.cpg_mssr_info, ptr %info, i32 0, i32 6
  %18 = ptrtoint ptr %last_dt_core_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_dt_core_clk, align 4
  %last_dt_core_clk20 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %last_dt_core_clk20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %last_dt_core_clk20, align 16
  %notifiers = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %notifiers to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %notifiers, align 4
  %reg_layout = getelementptr inbounds %struct.cpg_mssr_info, ptr %info, i32 0, i32 8
  %22 = ptrtoint ptr %reg_layout to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_layout, align 4
  %reg_layout24 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %reg_layout24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %reg_layout24, align 4
  %25 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %23, label %if.end17.out_err_crit_edge [
    i32 0, label %if.then26
    i32 1, label %if.then29
    i32 2, label %if.then34
  ]

if.end17.out_err_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.then26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %status_regs = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %status_regs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mstpsr, ptr %status_regs, align 8
  %control_regs = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 11
  %27 = ptrtoint ptr %control_regs to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @smstpcr, ptr %control_regs, align 4
  %reset_regs = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 12
  %28 = ptrtoint ptr %reset_regs to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @srcr, ptr %reset_regs, align 128
  %reset_clear_regs = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 13
  %29 = ptrtoint ptr %reset_clear_regs to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @srstclr, ptr %reset_clear_regs, align 4
  br label %if.end42

if.then29:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %control_regs30 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 11
  %30 = ptrtoint ptr %control_regs30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @stbcr, ptr %control_regs30, align 4
  br label %if.end42

if.then34:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %status_regs35 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %status_regs35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mstpsr_for_gen4, ptr %status_regs35, align 8
  %control_regs36 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 11
  %32 = ptrtoint ptr %control_regs36 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mstpcr_for_gen4, ptr %control_regs36, align 4
  %reset_regs37 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 12
  %33 = ptrtoint ptr %reset_regs37 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @srcr_for_gen4, ptr %reset_regs37, align 128
  %reset_clear_regs38 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 13
  %34 = ptrtoint ptr %reset_clear_regs38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @srstclr_for_gen4, ptr %reset_clear_regs38, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then34, %if.then29, %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp43106.not = icmp eq i32 %add, 0
  br i1 %cmp43106.not, label %if.end42.for.end_crit_edge, label %if.end42.for.body_crit_edge

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  br label %for.body

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end42.for.body_crit_edge
  %i.0107 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end42.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cpg_mssr_priv, ptr %call9.i.i, i32 0, i32 15, i32 %i.0107
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end42.for.end_crit_edge
  %call45 = tail call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @cpg_mssr_clk_src_twocell_get, ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.end.cleanup_crit_edge, label %for.end.out_err_crit_edge

for.end.out_err_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_err:                                          ; preds = %for.end.out_err_crit_edge, %if.end17.out_err_crit_edge
  %error.0.ph = phi i32 [ -22, %if.end17.out_err_crit_edge ], [ %call45, %for.end.out_err_crit_edge ]
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load ptr, ptr %base, align 16
  %tobool50.not = icmp eq ptr %.pr, null
  br i1 %tobool50.not, label %out_err.if.end53_crit_edge, label %if.then51

out_err.if.end53_crit_edge:                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then51:                                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %.pr) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %out_err.if.end53_crit_edge, %if.end9.if.end53_crit_edge
  %error.0105 = phi i32 [ %error.0.ph, %if.then51 ], [ %error.0.ph, %out_err.if.end53_crit_edge ], [ -12, %if.end9.if.end53_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %for.end.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0105, %if.end53 ], [ %call, %if.then.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpg_mssr_register_core_clk(ptr noundef %core, ptr noundef %info, ptr noundef %priv) unnamed_addr #3 section ".init.text" align 64 {
entry:
  %parent_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %id2 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 1
  %2 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id2, align 4
  %div3 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 4
  %4 = ptrtoint ptr %div3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #9
  %6 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name, align 4, !annotation !146
  %7 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %if.end.do.end12_crit_edge
    i32 2, label %if.end.do.end12_crit_edge125
    i32 3, label %if.end.do.end12_crit_edge126
    i32 4, label %sw.bb34
  ]

if.end.do.end12_crit_edge126:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

if.end.do.end12_crit_edge125:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %np = getelementptr inbounds %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 5
  %12 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %np, align 4
  %call8 = tail call ptr @of_clk_get_by_name(ptr noundef %13, ptr noundef nonnull %8) #9
  br label %sw.epilog

do.end12:                                         ; preds = %if.end.do.end12_crit_edge, %if.end.do.end12_crit_edge125, %if.end.do.end12_crit_edge126
  %parent13 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 3
  %14 = ptrtoint ptr %parent13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %parent13, align 4
  %arrayidx = getelementptr %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 15, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12.do.end70_crit_edge, label %if.end16

do.end12.do.end70_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

if.end16:                                         ; preds = %do.end12
  %call17 = tail call ptr @__clk_get_name(ptr noundef %17) #9
  %18 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call17, ptr %parent_name, align 4
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp = icmp eq i32 %20, 3
  br i1 %cmp, label %if.then19, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 2
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %offset = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 6
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 %24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !147
  %26 = lshr i32 %25, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  %and = and i32 %26, 63
  %add = add nuw nsw i32 %and, 1
  %mul = mul i32 %add, %5
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %type, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16.if.end22_crit_edge
  %28 = phi i32 [ %.pr, %if.then19 ], [ %20, %if.end16.if.end22_crit_edge ]
  %div.0 = phi i32 [ %mul, %if.then19 ], [ %5, %if.end16.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp24 = icmp eq i32 %28, 2
  %29 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %core, align 4
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %base27 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 2
  %31 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base27, align 4
  %offset28 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 6
  %33 = ptrtoint ptr %offset28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset28, align 4
  %add.ptr29 = getelementptr i8, ptr %32, i32 %34
  %notifiers = getelementptr inbounds %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 9
  %call30 = call ptr @cpg_div6_register(ptr noundef %30, i32 noundef 1, ptr noundef nonnull %parent_name, ptr noundef %add.ptr29, ptr noundef %notifiers) #9
  br label %sw.epilog

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent_name, align 4
  %mult = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 5
  %37 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mult, align 4
  %call32 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %30, ptr noundef %36, i32 noundef 0, i32 noundef %38, i32 noundef %div.0) #9
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mult36 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 5
  %39 = ptrtoint ptr %mult36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mult36, align 4
  %call37 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull %8, ptr noundef null, i32 noundef 0, i32 noundef %40) #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %cpg_clk_register = getelementptr inbounds %struct.cpg_mssr_info, ptr %info, i32 0, i32 17
  %41 = ptrtoint ptr %cpg_clk_register to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cpg_clk_register, align 4
  %tobool38.not = icmp eq ptr %42, null
  br i1 %tobool38.not, label %sw.epilog.thread, label %if.then39

if.then39:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %clks41 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 15
  %base42 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 2
  %43 = ptrtoint ptr %base42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base42, align 4
  %notifiers43 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 9
  %call44 = tail call ptr %42(ptr noundef %1, ptr noundef %core, ptr noundef %info, ptr noundef %clks41, ptr noundef %44, ptr noundef %notifiers43) #9
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %8, i32 noundef %10) #14
  br label %do.end70

sw.epilog:                                        ; preds = %if.then39, %sw.bb34, %if.else, %if.then25, %sw.bb
  %clk.0 = phi ptr [ %call44, %if.then39 ], [ %call37, %sw.bb34 ], [ %call30, %if.then25 ], [ %call32, %if.else ], [ %call8, %sw.bb ]
  %tobool.not.i = icmp eq ptr %clk.0, null
  %cmp.i118 = icmp ugt ptr %clk.0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i118
  br i1 %spec.select.i, label %sw.epilog.do.end70_crit_edge, label %do.body55

sw.epilog.do.end70_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

do.body55:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpg_mssr_register_core_clk.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpg_mssr_register_core_clk, %if.then61)) #9
          to label %do.end65 [label %if.then61], !srcloc !145

if.then61:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  %call62 = call i32 @clk_get_rate(ptr noundef nonnull %clk.0) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpg_mssr_register_core_clk.__UNIQUE_ID_ddebug185, ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull %clk.0, i32 noundef %call62) #9
  br label %do.end65

do.end65:                                         ; preds = %if.then61, %do.body55
  %arrayidx67 = getelementptr %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 15, i32 %3
  %45 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %clk.0, ptr %arrayidx67, align 4
  br label %cleanup

do.end70:                                         ; preds = %sw.epilog.do.end70_crit_edge, %sw.epilog.thread, %do.end12.do.end70_crit_edge
  %clk.1 = phi ptr [ %clk.0, %sw.epilog.do.end70_crit_edge ], [ %17, %do.end12.do.end70_crit_edge ], [ inttoptr (i32 -524 to ptr), %sw.epilog.thread ]
  %46 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %core, align 4
  %48 = ptrtoint ptr %clk.1 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.7, ptr noundef %47, i32 noundef %48) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %do.end65, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpg_mssr_register_mod_clk(ptr nocapture noundef readonly %mod, ptr nocapture noundef readonly %info, ptr noundef %priv) unnamed_addr #3 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %id2 = getelementptr inbounds %struct.mssr_mod_clk, ptr %mod, i32 0, i32 1
  %2 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id2, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #9
  %4 = call ptr @memset(ptr %init, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #9
  %5 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name, align 4, !annotation !146
  %6 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mod, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent12 = getelementptr inbounds %struct.mssr_mod_clk, ptr %mod, i32 0, i32 2
  %8 = ptrtoint ptr %parent12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent12, align 4
  %arrayidx = getelementptr %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 15, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.do.end73_crit_edge, label %if.end14

if.end.do.end73_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

if.end14:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 20) #15
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end14.do.end73_crit_edge, label %if.end19

if.end14.do.end73_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

if.end19:                                         ; preds = %if.end14
  %13 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mod, align 4
  %15 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @cpg_mstp_clock_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %flags, align 4
  %call22 = tail call ptr @__clk_get_name(ptr noundef %11) #9
  %18 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call22, ptr %parent_name, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %19 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %parent_name, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %20 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %num_parents, align 4
  %num_core_clks = getelementptr inbounds %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 6
  %21 = ptrtoint ptr %num_core_clks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_core_clks, align 4
  %sub = sub i32 %3, %22
  %index = getelementptr inbounds %struct.mstp_clock, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %index, align 4
  %priv23 = getelementptr inbounds %struct.mstp_clock, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %priv23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %priv, ptr %priv23, align 8
  %init24 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %init24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %init, ptr %init24, align 8
  %num_crit_mod_clks = getelementptr inbounds %struct.cpg_mssr_info, ptr %info, i32 0, i32 13
  %26 = ptrtoint ptr %num_crit_mod_clks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_crit_mod_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp121.not = icmp eq i32 %27, 0
  br i1 %cmp121.not, label %if.end19.for.end_crit_edge, label %for.body.lr.ph

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end19
  %crit_mod_clks = getelementptr inbounds %struct.cpg_mssr_info, ptr %info, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %28 = ptrtoint ptr %crit_mod_clks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %crit_mod_clks, align 4
  %arrayidx25 = getelementptr i32, ptr %29, i32 %i.0122
  %30 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %31)
  %cmp26 = icmp eq i32 %3, %31
  br i1 %cmp26, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call28 = call i32 @cpg_mstp_clock_is_enabled(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true.for.inc_crit_edge, label %do.body31

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body31:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpg_mssr_register_mod_clk.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpg_mssr_register_mod_clk, %if.then36)) #9
          to label %do.end40 [label %if.then36], !srcloc !145

if.then36:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mod, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpg_mssr_register_mod_clk.__UNIQUE_ID_ddebug186, ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef %33) #9
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %do.body31
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %or = or i32 %35, 2048
  store i32 %or, ptr %flags, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0122, 1
  %36 = ptrtoint ptr %num_crit_mod_clks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_crit_mod_clks, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end40, %if.end19.for.end_crit_edge
  %call44 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #9
  %cmp.i118 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %for.end.do.end73_crit_edge, label %do.body48

for.end.do.end73_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

do.body48:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpg_mssr_register_mod_clk.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpg_mssr_register_mod_clk, %if.then60)) #9
          to label %do.end64 [label %if.then60], !srcloc !145

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = call i32 @clk_get_rate(ptr noundef %call44) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpg_mssr_register_mod_clk.__UNIQUE_ID_ddebug187, ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef %call44, i32 noundef %call61) #9
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %do.body48
  %arrayidx66 = getelementptr %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 15, i32 %3
  %38 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call44, ptr %arrayidx66, align 4
  %39 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index, align 4
  %rem = and i32 %40, 31
  %shl = shl nuw i32 1, %rem
  %div114 = lshr i32 %40, 5
  %arrayidx69 = getelementptr %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 14, i32 %div114
  %41 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx69, align 4
  %or70 = or i32 %shl, %42
  store i32 %or70, ptr %arrayidx69, align 4
  br label %cleanup

do.end73:                                         ; preds = %for.end.do.end73_crit_edge, %if.end14.do.end73_crit_edge, %if.end.do.end73_crit_edge
  %clk.0 = phi ptr [ %call44, %for.end.do.end73_crit_edge ], [ %11, %if.end.do.end73_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end14.do.end73_crit_edge ]
  %clock.0 = phi ptr [ %call7.i.i, %for.end.do.end73_crit_edge ], [ null, %if.end.do.end73_crit_edge ], [ null, %if.end14.do.end73_crit_edge ]
  %43 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mod, align 4
  %45 = ptrtoint ptr %clk.0 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.12, ptr noundef %44, i32 noundef %45) #14
  call void @kfree(ptr noundef %clock.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %do.end64, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_mssr_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @cpg_mssr_driver, ptr noundef nonnull @cpg_mssr_probe, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: argmemonly cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cpg_core_nullify_range(ptr nocapture noundef %core_clks, i32 noundef %num_core_clks, i32 noundef %first_clk, i32 noundef %last_clk) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_core_clks)
  %cmp12.not = icmp eq i32 %num_core_clks, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %id = getelementptr %struct.cpg_core_clk, ptr %core_clks, i32 %i.013, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %first_clk)
  %cmp1.not = icmp ult i32 %1, %first_clk
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %last_clk)
  %cmp4.not = icmp ugt i32 %1, %last_clk
  %or.cond = or i1 %cmp1.not, %cmp4.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.cpg_core_clk, ptr %core_clks, i32 %i.013
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %num_core_clks
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mssr_mod_nullify(ptr nocapture noundef %mod_clks, i32 noundef %num_mod_clks, ptr nocapture noundef readonly %clks, i32 noundef %n) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_mod_clks)
  %cmp12 = icmp ne i32 %num_mod_clks, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp113 = icmp ne i32 %n, 0
  %or.cond14 = and i1 %cmp12, %cmp113
  br i1 %or.cond14, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %j.017 = phi i32 [ %j.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.015 = phi i32 [ %inc5, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %id = getelementptr %struct.mssr_mod_clk, ptr %mod_clks, i32 %i.015, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %arrayidx2 = getelementptr i32, ptr %clks, i32 %j.017
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp3 = icmp eq i32 %1, %3
  br i1 %cmp3, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.mssr_mod_clk, ptr %mod_clks, i32 %i.015
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw i32 %j.017, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.017, %for.body.for.inc_crit_edge ]
  %inc5 = add nuw i32 %i.015, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc5, i32 %num_mod_clks)
  %cmp = icmp ult i32 %inc5, %num_mod_clks
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1, i32 %n)
  %cmp1 = icmp ult i32 %j.1, %n
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mssr_mod_reparent(ptr nocapture noundef %mod_clks, i32 noundef %num_mod_clks, ptr nocapture noundef readonly %clks, i32 noundef %n) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_mod_clks)
  %cmp16 = icmp ne i32 %num_mod_clks, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp117 = icmp ne i32 %n, 0
  %or.cond18 = and i1 %cmp16, %cmp117
  br i1 %or.cond18, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %j.021 = phi i32 [ %j.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.019 = phi i32 [ %inc7, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %id = getelementptr %struct.mssr_mod_clk, ptr %mod_clks, i32 %i.019, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %arrayidx2 = getelementptr %struct.mssr_mod_reparent, ptr %clks, i32 %j.021
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp3 = icmp eq i32 %1, %3
  br i1 %cmp3, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr %struct.mssr_mod_reparent, ptr %clks, i32 %j.021, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parent, align 4
  %parent6 = getelementptr %struct.mssr_mod_clk, ptr %mod_clks, i32 %i.019, i32 2
  %6 = ptrtoint ptr %parent6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %parent6, align 4
  %inc = add nuw i32 %j.021, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.021, %for.body.for.inc_crit_edge ]
  %inc7 = add nuw i32 %i.019, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc7, i32 %num_mod_clks)
  %cmp = icmp ult i32 %inc7, %num_mod_clks
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1, i32 %n)
  %cmp1 = icmp ult i32 %j.1, %n
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cpg_mssr_clk_src_twocell_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %arrayidx = getelementptr %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %dev1 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %5, label %do.end28 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %last_dt_core_clk = getelementptr inbounds %struct.cpg_mssr_priv, ptr %data, i32 0, i32 8
  %7 = ptrtoint ptr %last_dt_core_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_dt_core_clk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %8)
  %cmp = icmp ugt i32 %1, %8
  br i1 %cmp, label %do.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef %1) #14
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %reg_layout = getelementptr inbounds %struct.cpg_mssr_priv, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %reg_layout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp6 = icmp eq i32 %10, 1
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %.frozen = freeze i32 %1
  %div = udiv i32 %.frozen, 10
  %mul = shl i32 %div, 5
  %11 = mul i32 %div, 10
  %rem.decomposed = sub i32 %.frozen, %11
  %add = or i32 %mul, %rem.decomposed
  %sub = sub nsw i32 7, %rem.decomposed
  br label %if.end14

if.else:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %.frozen91 = freeze i32 %1
  %div9 = udiv i32 %.frozen91, 100
  %mul10.neg = mul i32 %div9, -68
  %sub11 = add i32 %mul10.neg, %1
  %12 = mul i32 %div9, 100
  %rem12.decomposed = sub i32 %.frozen91, %12
  %sub13 = sub nsw i32 31, %rem12.decomposed
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then7
  %idx.0 = phi i32 [ %add, %if.then7 ], [ %sub11, %if.else ]
  %range_check.0 = phi i32 [ %sub, %if.then7 ], [ %sub13, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %range_check.0)
  %cmp15 = icmp slt i32 %range_check.0, 0
  br i1 %cmp15, label %if.end14.do.end20_crit_edge, label %lor.lhs.false

if.end14.do.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

lor.lhs.false:                                    ; preds = %if.end14
  %num_mod_clks = getelementptr inbounds %struct.cpg_mssr_priv, ptr %data, i32 0, i32 7
  %13 = ptrtoint ptr %num_mod_clks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_mod_clks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0, i32 %14)
  %cmp16.not = icmp ult i32 %idx.0, %14
  br i1 %cmp16.not, label %if.end22, label %lor.lhs.false.do.end20_crit_edge

lor.lhs.false.do.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

do.end20:                                         ; preds = %lor.lhs.false.do.end20_crit_edge, %if.end14.do.end20_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.12, i32 noundef %1) #14
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %num_core_clks = getelementptr inbounds %struct.cpg_mssr_priv, ptr %data, i32 0, i32 6
  %15 = ptrtoint ptr %num_core_clks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_core_clks, align 4
  %add24 = add i32 %16, %idx.0
  br label %sw.epilog

do.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %5) #14
  br label %cleanup

sw.epilog:                                        ; preds = %if.end22, %sw.bb.sw.epilog_crit_edge
  %type.0 = phi ptr [ @.str.12, %if.end22 ], [ @.str.7, %sw.bb.sw.epilog_crit_edge ]
  %add24.pn = phi i32 [ %add24, %if.end22 ], [ %1, %sw.bb.sw.epilog_crit_edge ]
  %clk.0.in = getelementptr %struct.cpg_mssr_priv, ptr %data, i32 0, i32 15, i32 %add24.pn
  %17 = ptrtoint ptr %clk.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %clk.0 = load ptr, ptr %clk.0.in, align 4
  %cmp.i = icmp ugt ptr %clk.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end36, label %do.body39

do.end36:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %clk.0 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19, ptr noundef nonnull %type.0, i32 noundef %1, i32 noundef %18) #14
  br label %cleanup

do.body39:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpg_mssr_clk_src_twocell_get.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpg_mssr_clk_src_twocell_get, %if.then43)) #9
          to label %cleanup [label %if.then43], !srcloc !145

if.then43:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %args, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %call48 = tail call i32 @clk_get_rate(ptr noundef %clk.0) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpg_mssr_clk_src_twocell_get.__UNIQUE_ID_ddebug184, ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %20, i32 noundef %22, ptr noundef %clk.0, i32 noundef %call48) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %do.body39, %do.end36, %do.end28, %do.end20, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end28 ], [ inttoptr (i32 -22 to ptr), %do.end20 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %clk.0, %if.then43 ], [ %clk.0, %do.end36 ], [ %clk.0, %do.body39 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpg_div6_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_mstp_clock_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %reg_layout = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reg_layout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %base = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %control_regs = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %control_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %control_regs, align 4
  %index = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %div26 = lshr i32 %9, 5
  %arrayidx = getelementptr i16, ptr %7, i32 %div26
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %11 to i32
  %add.ptr2 = getelementptr i8, ptr %5, i32 %conv
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #9, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %conv5 = zext i8 %12 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %status_regs = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %status_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %status_regs, align 4
  %index9 = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %index9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index9, align 4
  %div1025 = lshr i32 %16, 5
  %arrayidx11 = getelementptr i16, ptr %14, i32 %div1025
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx11, align 2
  %conv12 = zext i16 %18 to i32
  %add.ptr13 = getelementptr i8, ptr %5, i32 %conv12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !147
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %value.0 = phi i32 [ %conv5, %if.then ], [ %20, %if.else ]
  %index17 = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 1
  %21 = ptrtoint ptr %index17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index17, align 4
  %rem = and i32 %22, 31
  %23 = xor i32 %value.0, -1
  %24 = lshr i32 %23, %rem
  %25 = and i32 %24, 1
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_mstp_clock_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cpg_mstp_clock_endisable(ptr noundef %hw, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpg_mstp_clock_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cpg_mstp_clock_endisable(ptr noundef %hw, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpg_mstp_clock_endisable(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %index = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %div179 = lshr i32 %3, 5
  %rem = and i32 %3, 31
  %dev3 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  %shl = shl nuw i32 1, %rem
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpg_mstp_clock_endisable.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpg_mstp_clock_endisable, %if.then)) #9
          to label %do.body10 [label %if.then], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %cond = select i1 %enable, ptr @.str.33, ptr @.str.34
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpg_mstp_clock_endisable.__UNIQUE_ID_ddebug183, ptr noundef %5, ptr noundef nonnull @.str.32, i32 noundef %div179, i32 noundef %rem, ptr noundef %7, ptr noundef nonnull %cond) #9
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  %rmw_lock = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 4
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rmw_lock) #9
  %reg_layout = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_layout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp18 = icmp eq i32 %9, 1
  %base = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %control_regs = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %control_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %control_regs, align 4
  %arrayidx = getelementptr i16, ptr %13, i32 %div179
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  %conv21 = zext i16 %15 to i32
  %add.ptr22 = getelementptr i8, ptr %11, i32 %conv21
  br i1 %cmp18, label %if.then20, label %if.else54

if.then20:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22) #9, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %conv26 = zext i8 %16 to i32
  %neg = xor i32 %shl, -1
  %and = and i32 %conv26, %neg
  %or = or i32 %shl, %conv26
  %value.0 = select i1 %enable, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %conv33 = trunc i32 %value.0 to i8
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %19 = ptrtoint ptr %control_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %control_regs, align 4
  %arrayidx36 = getelementptr i16, ptr %20, i32 %div179
  %21 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx36, align 2
  %conv37 = zext i16 %22 to i32
  %add.ptr38 = getelementptr i8, ptr %18, i32 %conv37
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 %conv33) #9, !srcloc !154
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %25 = ptrtoint ptr %control_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %control_regs, align 4
  %arrayidx43 = getelementptr i16, ptr %26, i32 %div179
  %27 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx43, align 2
  %conv44 = zext i16 %28 to i32
  %add.ptr45 = getelementptr i8, ptr %24, i32 %conv44
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr45) #9, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %32 = ptrtoint ptr %control_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %control_regs, align 4
  %arrayidx51 = getelementptr i16, ptr %33, i32 %div179
  %34 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx51, align 2
  %conv52 = zext i16 %35 to i32
  %add.ptr53 = getelementptr i8, ptr %31, i32 %conv52
  tail call void asm sideeffect "", "r,~{memory}"(ptr %add.ptr53) #9, !srcloc !156
  br label %if.end80

if.else54:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #9, !srcloc !147
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %neg67 = xor i32 %shl, -1
  %and68 = and i32 %37, %neg67
  %or70 = or i32 %37, %shl
  %value.1 = select i1 %enable, i32 %and68, i32 %or70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %41 = ptrtoint ptr %control_regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %control_regs, align 4
  %arrayidx77 = getelementptr i16, ptr %42, i32 %div179
  %43 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx77, align 2
  %conv78 = zext i16 %44 to i32
  %add.ptr79 = getelementptr i8, ptr %40, i32 %conv78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %38) #9, !srcloc !159
  br label %if.end80

if.end80:                                         ; preds = %if.else54, %if.then20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rmw_lock, i32 noundef %call13) #9
  br i1 %enable, label %lor.lhs.false, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end80
  %45 = ptrtoint ptr %reg_layout to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reg_layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp84 = icmp eq i32 %46, 1
  br i1 %cmp84, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %base92 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 2
  %status_regs = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %do.end107.for.body_crit_edge, %for.cond.preheader
  %i.0182 = phi i32 [ 1000, %for.cond.preheader ], [ %dec, %do.end107.for.body_crit_edge ]
  %47 = ptrtoint ptr %base92 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base92, align 4
  %49 = ptrtoint ptr %status_regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %status_regs, align 4
  %arrayidx93 = getelementptr i16, ptr %50, i32 %div179
  %51 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx93, align 2
  %conv94 = zext i16 %52 to i32
  %add.ptr95 = getelementptr i8, ptr %48, i32 %conv94
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #9, !srcloc !147
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and99 = and i32 %54, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %for.body.cleanup_crit_edge, label %do.end107

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end107:                                        ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !162
  %dec = add nsw i32 %i.0182, -1
  %cond180 = icmp eq i32 %dec, 0
  br i1 %cond180, label %do.end116, label %do.end107.for.body_crit_edge

do.end107.for.body_crit_edge:                     ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end116:                                        ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %base92 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base92, align 4
  %control_regs118 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 11
  %57 = ptrtoint ptr %control_regs118 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %control_regs118, align 4
  %arrayidx119 = getelementptr i16, ptr %58, i32 %div179
  %59 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx119, align 2
  %conv120 = zext i16 %60 to i32
  %add.ptr121 = getelementptr i8, ptr %56, i32 %conv120
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.35, ptr noundef %add.ptr121, i32 noundef %rem) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end116, %for.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end80.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end116 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end80.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_mssr_probe(ptr noundef %pdev) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %2 = load ptr, ptr @cpg_mssr_priv, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call3 = tail call fastcc i32 @cpg_mssr_common_init(ptr noundef %dev1, ptr noundef %4, ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %5 = load ptr, ptr @cpg_mssr_priv, align 4
  %dev7 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %dev7, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %driver_data.i, align 4
  %num_core_clks = getelementptr inbounds %struct.cpg_mssr_info, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %num_core_clks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_core_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp67.not = icmp eq i32 %9, 0
  br i1 %cmp67.not, label %if.end6.for.cond8.preheader_crit_edge, label %for.body.lr.ph

if.end6.for.cond8.preheader_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond8.preheader

for.body.lr.ph:                                   ; preds = %if.end6
  %core_clks = getelementptr inbounds %struct.cpg_mssr_info, ptr %call, i32 0, i32 4
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body.for.cond8.preheader_crit_edge, %if.end6.for.cond8.preheader_crit_edge
  %num_mod_clks = getelementptr inbounds %struct.cpg_mssr_info, ptr %call, i32 0, i32 10
  %10 = ptrtoint ptr %num_mod_clks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_mod_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp969.not = icmp eq i32 %11, 0
  br i1 %cmp969.not, label %for.cond8.preheader.for.end14_crit_edge, label %for.body10.lr.ph

for.cond8.preheader.for.end14_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end14

for.body10.lr.ph:                                 ; preds = %for.cond8.preheader
  %mod_clks = getelementptr inbounds %struct.cpg_mssr_info, ptr %call, i32 0, i32 9
  br label %for.body10

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %core_clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core_clks, align 4
  %arrayidx = getelementptr %struct.cpg_core_clk, ptr %13, i32 %i.068
  tail call fastcc void @cpg_mssr_register_core_clk(ptr noundef %arrayidx, ptr noundef %call, ptr noundef %5) #12
  %inc = add nuw i32 %i.068, 1
  %14 = ptrtoint ptr %num_core_clks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_core_clks, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond8.preheader_crit_edge

for.body.for.cond8.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond8.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body10.lr.ph
  %i.170 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc13, %for.body10.for.body10_crit_edge ]
  %16 = ptrtoint ptr %mod_clks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mod_clks, align 4
  %arrayidx11 = getelementptr %struct.mssr_mod_clk, ptr %17, i32 %i.170
  tail call fastcc void @cpg_mssr_register_mod_clk(ptr noundef %arrayidx11, ptr noundef %call, ptr noundef %5) #12
  %inc13 = add nuw i32 %i.170, 1
  %18 = ptrtoint ptr %num_mod_clks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_mod_clks, align 4
  %cmp9 = icmp ult i32 %inc13, %19
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.end14_crit_edge

for.body10.for.end14_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end14

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10

for.end14:                                        ; preds = %for.body10.for.end14_crit_edge, %for.cond8.preheader.for.end14_crit_edge
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @cpg_mssr_del_clk_provider, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end18, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @of_clk_del_provider(ptr noundef %1) #9
  br label %cleanup

if.end18:                                         ; preds = %for.end14
  %core_pm_clks = getelementptr inbounds %struct.cpg_mssr_info, ptr %call, i32 0, i32 14
  %20 = ptrtoint ptr %core_pm_clks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core_pm_clks, align 4
  %num_core_pm_clks = getelementptr inbounds %struct.cpg_mssr_info, ptr %call, i32 0, i32 15
  %22 = ptrtoint ptr %num_core_pm_clks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_core_pm_clks, align 4
  %call19 = tail call fastcc i32 @cpg_mssr_add_clk_domain(ptr noundef %dev1, ptr noundef %21, i32 noundef %23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %reg_layout = getelementptr inbounds %struct.cpg_mssr_priv, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %reg_layout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp23 = icmp eq i32 %25, 1
  br i1 %cmp23, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call fastcc i32 @cpg_mssr_reset_controller_register(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call19, %if.end18.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ %call26, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_mssr_suspend_noirq(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %reg_layout = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 3
  %base10 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 2
  %control_regs11 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %reg.035 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cpg_mssr_priv, ptr %1, i32 0, i32 14, i32 %reg.035
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then2:                                         ; preds = %for.body
  %5 = ptrtoint ptr %reg_layout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp3 = icmp eq i32 %6, 1
  %7 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base10, align 4
  %9 = ptrtoint ptr %control_regs11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %control_regs11, align 4
  %arrayidx4 = getelementptr i16, ptr %10, i32 %reg.035
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx4, align 2
  %conv = zext i16 %12 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %conv7 = zext i8 %13 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !147
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %15, %cond.false ]
  %val = getelementptr %struct.cpg_mssr_priv, ptr %1, i32 0, i32 14, i32 %reg.035, i32 1
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %val, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %reg.035, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %notifiers = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 9
  %call21 = tail call i32 @raw_notifier_call_chain(ptr noundef %notifiers, i32 noundef 2, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_mssr_resume_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %notifiers = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 9
  %call1 = tail call i32 @raw_notifier_call_chain(ptr noundef %notifiers, i32 noundef 16, ptr noundef null) #9
  %reg_layout = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 3
  %base14 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 2
  %control_regs15 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 11
  %status_regs = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc109.for.body_crit_edge, %if.end
  %reg.0167 = phi i32 [ 0, %if.end ], [ %inc, %for.inc109.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cpg_mssr_priv, ptr %1, i32 0, i32 14, i32 %reg.0167
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %for.body.for.inc109_crit_edge, label %if.end5

for.body.for.inc109_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc109

if.end5:                                          ; preds = %for.body
  %5 = ptrtoint ptr %reg_layout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp6 = icmp eq i32 %6, 1
  %7 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base14, align 4
  %9 = ptrtoint ptr %control_regs15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %control_regs15, align 4
  %arrayidx8 = getelementptr i16, ptr %10, i32 %reg.0167
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx8, align 2
  %conv = zext i16 %12 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  %conv11 = zext i8 %13 to i32
  br label %if.end22

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !147
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then7
  %oldval.0 = phi i32 [ %conv11, %if.then7 ], [ %15, %if.else ]
  %neg = xor i32 %4, -1
  %and = and i32 %oldval.0, %neg
  %val = getelementptr %struct.cpg_mssr_priv, ptr %1, i32 0, i32 14, i32 %reg.0167, i32 1
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %and25 = and i32 %17, %4
  %or = or i32 %and25, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %oldval.0)
  %cmp26 = icmp eq i32 %or, %oldval.0
  br i1 %cmp26, label %if.end22.for.inc109_crit_edge, label %if.end29

if.end22.for.inc109_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc109

if.end29:                                         ; preds = %if.end22
  %18 = ptrtoint ptr %reg_layout to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp31 = icmp eq i32 %19, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %cmp31, label %do.body, label %do.body56

do.body:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %conv34 = trunc i32 %or to i8
  %20 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base14, align 4
  %22 = ptrtoint ptr %control_regs15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %control_regs15, align 4
  %arrayidx37 = getelementptr i16, ptr %23, i32 %reg.0167
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx37, align 2
  %conv38 = zext i16 %25 to i32
  %add.ptr39 = getelementptr i8, ptr %21, i32 %conv38
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr39, i8 %conv34) #9, !srcloc !154
  %26 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base14, align 4
  %28 = ptrtoint ptr %control_regs15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %control_regs15, align 4
  %arrayidx44 = getelementptr i16, ptr %29, i32 %reg.0167
  %30 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx44, align 2
  %conv45 = zext i16 %31 to i32
  %add.ptr46 = getelementptr i8, ptr %27, i32 %conv45
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr46) #9, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %33 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base14, align 4
  %35 = ptrtoint ptr %control_regs15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %control_regs15, align 4
  %arrayidx52 = getelementptr i16, ptr %36, i32 %reg.0167
  %37 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx52, align 2
  %conv53 = zext i16 %38 to i32
  %add.ptr54 = getelementptr i8, ptr %34, i32 %conv53
  tail call void asm sideeffect "", "r,~{memory}"(ptr %add.ptr54) #9, !srcloc !168
  br label %for.inc109

do.body56:                                        ; preds = %if.end29
  %39 = tail call i32 @llvm.bswap.i32(i32 %or)
  %40 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base14, align 4
  %42 = ptrtoint ptr %control_regs15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %control_regs15, align 4
  %arrayidx61 = getelementptr i16, ptr %43, i32 %reg.0167
  %44 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx61, align 2
  %conv62 = zext i16 %45 to i32
  %add.ptr63 = getelementptr i8, ptr %41, i32 %conv62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %39) #9, !srcloc !159
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val, align 4
  %neg68 = xor i32 %47, -1
  %and69 = and i32 %4, %neg68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body56.for.inc109_crit_edge, label %do.body56.for.body76_crit_edge

do.body56.for.body76_crit_edge:                   ; preds = %do.body56
  br label %for.body76

do.body56.for.inc109_crit_edge:                   ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc109

for.body76:                                       ; preds = %do.end94.for.body76_crit_edge, %do.body56.for.body76_crit_edge
  %i.0166 = phi i32 [ %dec, %do.end94.for.body76_crit_edge ], [ 1000, %do.body56.for.body76_crit_edge ]
  %48 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base14, align 4
  %50 = ptrtoint ptr %status_regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %status_regs, align 4
  %arrayidx80 = getelementptr i16, ptr %51, i32 %reg.0167
  %52 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx80, align 2
  %conv81 = zext i16 %53 to i32
  %add.ptr82 = getelementptr i8, ptr %49, i32 %conv81
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #9, !srcloc !147
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  %and86 = and i32 %55, %and69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %for.body76.for.inc109_crit_edge, label %do.end94

for.body76.for.inc109_crit_edge:                  ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc109

do.end94:                                         ; preds = %for.body76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !171
  %dec = add nsw i32 %i.0166, -1
  %cmp74.not = icmp eq i32 %dec, 0
  br i1 %cmp74.not, label %do.end103, label %do.end94.for.body76_crit_edge

do.end94.for.body76_crit_edge:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body76

do.end103:                                        ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %reg_layout to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reg_layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp105 = icmp eq i32 %57, 1
  %cond = select i1 %cmp105, ptr @.str.40, ptr @.str.41
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond, i32 noundef %reg.0167, i32 noundef %and86) #14
  br label %for.inc109

for.inc109:                                       ; preds = %do.end103, %for.body76.for.inc109_crit_edge, %do.body56.for.inc109_crit_edge, %do.body, %if.end22.for.inc109_crit_edge, %for.body.for.inc109_crit_edge
  %inc = add nuw nsw i32 %reg.0167, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.inc109.cleanup_crit_edge, label %for.inc109.for.body_crit_edge

for.inc109.for.body_crit_edge:                    ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc109.cleanup_crit_edge:                     ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc109.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpg_mssr_del_clk_provider(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @of_clk_del_provider(ptr noundef %data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpg_mssr_add_clk_domain(ptr noundef %dev, ptr nocapture noundef readonly %core_pm_clks, i32 noundef %num_core_pm_clks) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %mul = shl i32 %num_core_pm_clks, 2
  %add = add i32 %mul, 1360
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_core_pm_clks1 = getelementptr inbounds %struct.cpg_mssr_clk_domain, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %num_core_pm_clks1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %num_core_pm_clks, ptr %num_core_pm_clks1, align 8
  %core_pm_clks2 = getelementptr inbounds %struct.cpg_mssr_clk_domain, ptr %call.i, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %core_pm_clks2, ptr %core_pm_clks, i32 %mul)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %name4 = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %name4, align 8
  %flags = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 32
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 13, ptr %flags, align 4
  %attach_dev = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 30
  %8 = ptrtoint ptr %attach_dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cpg_mssr_attach_dev, ptr %attach_dev, align 4
  %detach_dev = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 31
  %9 = ptrtoint ptr %detach_dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cpg_mssr_detach_dev, ptr %detach_dev, align 8
  %call5 = tail call i32 @pm_genpd_init(ptr noundef nonnull %call.i, ptr noundef nonnull @pm_domain_always_on_gov, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i36 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @cpg_mssr_genpd_remove, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool.not.i = icmp eq i32 %call.i36, 0
  br i1 %tobool.not.i, label %if.end12, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call.i37 = tail call i32 @pm_genpd_remove(ptr noundef nonnull %call.i) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call.i, ptr @cpg_mssr_clk_domain, align 4
  %call13 = tail call i32 @of_genpd_add_provider_simple(ptr noundef %1, ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %devm_add_action_or_reset.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call.i36, %devm_add_action_or_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpg_mssr_reset_controller_register(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cpg_mssr_reset_ops, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %of_node2 = getelementptr inbounds %struct.reset_controller_dev, ptr %priv, i32 0, i32 5
  %5 = ptrtoint ptr %of_node2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %of_node2, align 4
  %of_reset_n_cells = getelementptr inbounds %struct.reset_controller_dev, ptr %priv, i32 0, i32 6
  %6 = ptrtoint ptr %of_reset_n_cells to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %of_reset_n_cells, align 4
  %of_xlate = getelementptr inbounds %struct.reset_controller_dev, ptr %priv, i32 0, i32 7
  %7 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cpg_mssr_reset_xlate, ptr %of_xlate, align 4
  %num_mod_clks = getelementptr inbounds %struct.cpg_mssr_priv, ptr %priv, i32 0, i32 7
  %8 = ptrtoint ptr %num_mod_clks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_mod_clks, align 4
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, ptr %priv, i32 0, i32 8
  %10 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nr_resets, align 4
  %call = tail call i32 @devm_reset_controller_register(ptr noundef %2, ptr noundef %priv) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpg_mssr_genpd_remove(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_genpd_remove(ptr noundef %data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_mssr_reset_xlate(ptr nocapture noundef readonly %rcdev, ptr nocapture noundef readonly %reset_spec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %reset_spec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %.frozen = freeze i32 %1
  %div = udiv i32 %.frozen, 100
  %2 = mul i32 %div, 100
  %rem.decomposed = sub i32 %.frozen, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %rem.decomposed)
  %cmp = icmp ugt i32 %rem.decomposed, 31
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %mul.neg = mul i32 %div, -68
  %sub = add i32 %mul.neg, %1
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, ptr %rcdev, i32 0, i32 8
  %3 = ptrtoint ptr %nr_resets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_resets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %4)
  %cmp1.not = icmp ult i32 %sub, %4
  br i1 %cmp1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.cpg_mssr_priv, ptr %rcdev, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.48, i32 noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %sub, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_mssr_reset(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div24 = lshr i32 %id, 5
  %rem = and i32 %id, 31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpg_mssr_reset.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpg_mssr_reset, %if.then)) #9
          to label %do.body4 [label %if.then], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.cpg_mssr_priv, ptr %rcdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpg_mssr_reset.__UNIQUE_ID_ddebug189, ptr noundef %1, ptr noundef nonnull @.str.43, i32 noundef %div24, i32 noundef %rem) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %shl = shl nuw i32 1, %rem
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.cpg_mssr_priv, ptr %rcdev, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %reset_regs = getelementptr inbounds %struct.cpg_mssr_priv, ptr %rcdev, i32 0, i32 12
  %5 = ptrtoint ptr %reset_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset_regs, align 4
  %arrayidx = getelementptr i16, ptr %6, i32 %div24
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %8 to i32
  %add.ptr7 = getelementptr i8, ptr %4, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %2) #9, !srcloc !159
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 7516180) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %reset_clear_regs = getelementptr inbounds %struct.cpg_mssr_priv, ptr %rcdev, i32 0, i32 13
  %12 = ptrtoint ptr %reset_clear_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_clear_regs, align 4
  %arrayidx12 = getelementptr i16, ptr %13, i32 %div24
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %15 to i32
  %add.ptr14 = getelementptr i8, ptr %11, i32 %conv13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %2) #9, !srcloc !159
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_mssr_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div13 = lshr i32 %id, 5
  %rem = and i32 %id, 31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpg_mssr_assert.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpg_mssr_assert, %if.then)) #9
          to label %do.body4 [label %if.then], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.cpg_mssr_priv, ptr %rcdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpg_mssr_assert.__UNIQUE_ID_ddebug190, ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %div13, i32 noundef %rem) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %shl = shl nuw i32 1, %rem
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.cpg_mssr_priv, ptr %rcdev, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %reset_regs = getelementptr inbounds %struct.cpg_mssr_priv, ptr %rcdev, i32 0, i32 12
  %5 = ptrtoint ptr %reset_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset_regs, align 4
  %arrayidx = getelementptr i16, ptr %6, i32 %div13
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %8 to i32
  %add.ptr7 = getelementptr i8, ptr %4, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %2) #9, !srcloc !159
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_mssr_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div13 = lshr i32 %id, 5
  %rem = and i32 %id, 31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpg_mssr_deassert.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpg_mssr_deassert, %if.then)) #9
          to label %do.body4 [label %if.then], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.cpg_mssr_priv, ptr %rcdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpg_mssr_deassert.__UNIQUE_ID_ddebug191, ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef %div13, i32 noundef %rem) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %shl = shl nuw i32 1, %rem
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.cpg_mssr_priv, ptr %rcdev, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %reset_clear_regs = getelementptr inbounds %struct.cpg_mssr_priv, ptr %rcdev, i32 0, i32 13
  %5 = ptrtoint ptr %reset_clear_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset_clear_regs, align 4
  %arrayidx = getelementptr i16, ptr %6, i32 %div13
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %8 to i32
  %add.ptr7 = getelementptr i8, ptr %4, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %2) #9, !srcloc !159
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_mssr_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div7 = lshr i32 %id, 5
  %rem = and i32 %id, 31
  %base = getelementptr inbounds %struct.cpg_mssr_priv, ptr %rcdev, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %reset_regs = getelementptr inbounds %struct.cpg_mssr_priv, ptr %rcdev, i32 0, i32 12
  %2 = ptrtoint ptr %reset_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_regs, align 4
  %arrayidx = getelementptr i16, ptr %3, i32 %div7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %add.ptr1 = getelementptr i8, ptr %1, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #9, !srcloc !147
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  %8 = lshr i32 %7, %rem
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !50, !51, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !93, !94, !95, !96, !97, !99, !100, !101, !103, !105, !107, !109, !111, !112, !113, !114, !115, !116, !117, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 518, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cpg_mssr_attach_dev.__UNIQUE_ID_ddebug188, !1, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 522, i32 41}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 522, i32 51}
!10 = !{ptr @__initcall__kmod_renesas_cpg_mssr__192_1108_cpg_mssr_init4, !11, !"__initcall__kmod_renesas_cpg_mssr__192_1108_cpg_mssr_init4", i1 false, i1 false}
!11 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 1108, i32 1}
!12 = !{ptr @__UNIQUE_ID_description193, !13, !"__UNIQUE_ID_description193", i1 false, i1 false}
!13 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 1150, i32 1}
!14 = !{ptr @__UNIQUE_ID_file194, !15, !"__UNIQUE_ID_file194", i1 false, i1 false}
!15 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 1151, i32 1}
!16 = !{ptr @__UNIQUE_ID_license195, !15, !"__UNIQUE_ID_license195", i1 false, i1 false}
!17 = !{ptr @cpg_mssr_priv, !18, !"cpg_mssr_priv", i1 false, i1 false}
!18 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 174, i32 30}
!19 = !{ptr @cpg_mssr_clk_domain, !20, !"cpg_mssr_clk_domain", i1 false, i1 false}
!20 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 483, i32 36}
!21 = !{ptr @cpg_mssr_common_init.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 978, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mstpsr, !25, !"mstpsr", i1 false, i1 false}
!25 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 55, i32 18}
!26 = !{ptr @smstpcr, !27, !"smstpcr", i1 false, i1 false}
!27 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 71, i32 18}
!28 = !{ptr @srcr, !29, !"srcr", i1 false, i1 false}
!29 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 97, i32 18}
!30 = !{ptr @srstclr, !31, !"srstclr", i1 false, i1 false}
!31 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 113, i32 18}
!32 = !{ptr @stbcr, !33, !"stbcr", i1 false, i1 false}
!33 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 88, i32 18}
!34 = !{ptr @mstpsr_for_gen4, !35, !"mstpsr_for_gen4", i1 false, i1 false}
!35 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 60, i32 18}
!36 = !{ptr @mstpcr_for_gen4, !37, !"mstpcr_for_gen4", i1 false, i1 false}
!37 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 76, i32 18}
!38 = !{ptr @srcr_for_gen4, !39, !"srcr_for_gen4", i1 false, i1 false}
!39 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 102, i32 18}
!40 = !{ptr @srstclr_for_gen4, !41, !"srstclr_for_gen4", i1 false, i1 false}
!41 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 118, i32 18}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 290, i32 10}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 292, i32 4}
!46 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cpg_mssr_clk_src_twocell_get._entry, !45, !"_entry", i1 false, i1 false}
!50 = !{ptr @cpg_mssr_clk_src_twocell_get._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 300, i32 10}
!53 = !{ptr @cpg_mssr_clk_src_twocell_get._entry.13, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 309, i32 4}
!55 = !{ptr @cpg_mssr_clk_src_twocell_get._entry_ptr.14, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 317, i32 3}
!58 = !{ptr @cpg_mssr_clk_src_twocell_get._entry.15, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cpg_mssr_clk_src_twocell_get._entry_ptr.17, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 322, i32 3}
!62 = !{ptr @cpg_mssr_clk_src_twocell_get._entry.18, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cpg_mssr_clk_src_twocell_get._entry_ptr.20, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 325, i32 3}
!66 = !{ptr @cpg_mssr_clk_src_twocell_get.__UNIQUE_ID_ddebug184, !65, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 391, i32 4}
!69 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @cpg_mssr_register_core_clk._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @cpg_mssr_register_core_clk._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 399, i32 2}
!74 = !{ptr @cpg_mssr_register_core_clk.__UNIQUE_ID_ddebug185, !73, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 404, i32 2}
!77 = !{ptr @cpg_mssr_register_core_clk._entry.25, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @cpg_mssr_register_core_clk._entry_ptr.27, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 456, i32 4}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @cpg_mssr_register_mod_clk.__UNIQUE_ID_ddebug186, !80, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 466, i32 2}
!85 = !{ptr @cpg_mssr_register_mod_clk.__UNIQUE_ID_ddebug187, !84, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!86 = !{ptr @cpg_mssr_register_mod_clk._entry, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 472, i32 2}
!88 = !{ptr @cpg_mssr_register_mod_clk._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @cpg_mstp_clock_ops, !90, !"cpg_mstp_clock_ops", i1 false, i1 false}
!90 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 270, i32 29}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 202, i32 2}
!93 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @cpg_mstp_clock_endisable.__UNIQUE_ID_ddebug183, !92, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!95 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 238, i32 3}
!99 = !{ptr @cpg_mstp_clock_endisable._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @cpg_mstp_clock_endisable._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 1097, i32 11}
!103 = !{ptr @cpg_mssr_driver, !104, !"cpg_mssr_driver", i1 false, i1 false}
!104 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 1095, i32 31}
!105 = !{ptr @cpg_mssr_match, !106, !"cpg_mssr_match", i1 false, i1 false}
!106 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 708, i32 34}
!107 = !{ptr @cpg_mssr_pm, !108, !"cpg_mssr_pm", i1 false, i1 false}
!108 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 948, i32 32}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 940, i32 4}
!111 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @cpg_mssr_resume_noirq._entry, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @cpg_mssr_resume_noirq._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cpg_mssr_reset_ops, !118, !"cpg_mssr_reset_ops", i1 false, i1 false}
!118 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 668, i32 39}
!119 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 616, i32 2}
!121 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @cpg_mssr_reset.__UNIQUE_ID_ddebug189, !120, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 637, i32 2}
!125 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @cpg_mssr_assert.__UNIQUE_ID_ddebug190, !124, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 651, i32 2}
!129 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @cpg_mssr_deassert.__UNIQUE_ID_ddebug191, !128, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/renesas/renesas-cpg-mssr.c", i32 683, i32 3}
!133 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @cpg_mssr_reset_xlate._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @cpg_mssr_reset_xlate._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i64 2148747979, i64 2148747984, i64 2148747997, i64 2148748041, i64 2148748075, i64 2148748096}
!146 = !{!"auto-init"}
!147 = !{i64 5012045}
!148 = !{i64 2153092790}
!149 = !{i64 5011825}
!150 = !{i64 2153081978}
!151 = !{i64 2153082592}
!152 = !{i64 2153076282}
!153 = !{i64 2153076517}
!154 = !{i64 5011430}
!155 = !{i64 2153076861}
!156 = !{i64 2153076945}
!157 = !{i64 2153077506}
!158 = !{i64 2153077741}
!159 = !{i64 5011627}
!160 = !{i64 2153078499}
!161 = !{i64 2153078774}
!162 = !{i64 2153078616}
!163 = !{i64 2153131412}
!164 = !{i64 2153131974}
!165 = !{i64 2153132731}
!166 = !{i64 2153133293}
!167 = !{i64 2153133874}
!168 = !{i64 2153133958}
!169 = !{i64 2153134954}
!170 = !{i64 2153135229}
!171 = !{i64 2153135071}
!172 = !{i64 2153116653}
!173 = !{i64 2153117640}
!174 = !{i64 2153121645}
!175 = !{i64 2153125668}
!176 = !{i64 2153127763}
