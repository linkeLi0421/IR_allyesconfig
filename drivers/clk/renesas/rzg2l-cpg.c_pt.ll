; ModuleID = '/llk/IR_all_yes/drivers/clk/renesas/rzg2l-cpg.c_pt.bc'
source_filename = "../drivers/clk/renesas/rzg2l-cpg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rzg2l_cpg_info = type { ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_power_governor = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rzg2l_cpg_priv = type { %struct.reset_controller_dev, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, %struct.raw_notifier_head, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.cpg_core_clk = type { ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32 }
%struct.rzg2l_mod_clk = type { ptr, i32, i32, i16, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mstp_clock = type { %struct.clk_hw, i16, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.44 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.44 = type { %struct.mutex }
%struct.pll_clk = type { %struct.clk_hw, i32, i32, ptr, ptr }
%struct.sd_hw_data = type { %struct.clk_hw, i32, ptr }
%struct.pm_subsys_data = type { %struct.spinlock, i32, i32, %struct.mutex, %struct.list_head, ptr }
%struct.rzg2l_reset = type { i16, i8 }

@__initcall__kmod_rzg2l_cpg__193_971_rzg2l_cpg_init4 = internal global ptr @rzg2l_cpg_init, section ".initcall4.init", align 4
@__UNIQUE_ID_description194 = internal constant [48 x i8] c"rzg2l_cpg.description=Renesas RZ/G2L CPG Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file195 = internal constant [45 x i8] c"rzg2l_cpg.file=drivers/clk/renesas/rzg2l-cpg\00", section ".modinfo", align 1
@__UNIQUE_ID_license196 = internal constant [25 x i8] c"rzg2l_cpg.license=GPL v2\00", section ".modinfo", align 1
@rzg2l_cpg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rzg2l_cpg_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rzg2l-cpg\00", [22 x i8] zeroinitializer }, align 32
@rzg2l_cpg_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r9a07g044-cpg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r9a07g044_cpg_info }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@r9a07g044_cpg_info = external dso_local constant %struct.rzg2l_cpg_info, align 4
@rzg2l_cpg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->rmw_lock\00", [16 x i8] zeroinitializer }, align 32
@rzg2l_cpg_register_core_clk.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rzg2l_cpg\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rzg2l_cpg_register_core_clk\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/renesas/rzg2l-cpg.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Core clock %pC at %lu Hz\0A\00", [38 x i8] zeroinitializer }, align 32
@rzg2l_cpg_register_core_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 446, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register %s clock %s: %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rzg2l_cpg_register_core_clk._entry_ptr = internal global ptr @rzg2l_cpg_register_core_clk._entry, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@rzg2l_cpg_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rzg2l_cpg_pll_clk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd1\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd0\00", [28 x i8] zeroinitializer }, align 32
@rzg2l_cpg_sd_clk_mux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rzg2l_cpg_sd_clk_mux_determine_rate, ptr @rzg2l_cpg_sd_clk_mux_set_parent, ptr @rzg2l_cpg_sd_clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rzg2l_cpg_sd_clk_mux_set_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 202, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to switch clk source\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rzg2l_cpg_sd_clk_mux_set_parent\00", [32 x i8] zeroinitializer }, align 32
@rzg2l_cpg_sd_clk_mux_set_parent._entry_ptr = internal global ptr @rzg2l_cpg_sd_clk_mux_set_parent._entry, section ".printk_index", align 4
@rzg2l_mod_clock_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @rzg2l_mod_clock_enable, ptr @rzg2l_mod_clock_disable, ptr @rzg2l_mod_clock_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rzg2l_cpg_register_mod_clk.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rzg2l_cpg_register_mod_clk\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CPG %s setting CLK_IS_CRITICAL\0A\00", [32 x i8] zeroinitializer }, align 32
@rzg2l_cpg_register_mod_clk.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.14, ptr @.str.4, ptr @.str.16, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Module clock %pC at %lu Hz\0A\00", [36 x i8] zeroinitializer }, align 32
@rzg2l_cpg_register_mod_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.14, ptr @.str.4, i32 681, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@rzg2l_cpg_register_mod_clk._entry_ptr = internal global ptr @rzg2l_cpg_register_mod_clk._entry, section ".printk_index", align 4
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"module\00", [25 x i8] zeroinitializer }, align 32
@rzg2l_mod_clock_endisable.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rzg2l_mod_clock_endisable\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%pC does not support ON/OFF\0A\00", [35 x i8] zeroinitializer }, align 32
@rzg2l_mod_clock_endisable.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.18, ptr @.str.4, ptr @.str.20, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CLK_ON %u/%pC %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@rzg2l_mod_clock_endisable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.4, i32 509, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable CLK_ON %p\0A\00", [36 x i8] zeroinitializer }, align 32
@rzg2l_mod_clock_endisable._entry_ptr = internal global ptr @rzg2l_mod_clock_endisable._entry, section ".printk_index", align 4
@rzg2l_mod_clock_is_enabled.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.24, ptr @.str.4, ptr @.str.19, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rzg2l_mod_clock_is_enabled\00", [37 x i8] zeroinitializer }, align 32
@rzg2l_cpg_clk_src_twocell_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 353, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid %s clock index %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rzg2l_cpg_clk_src_twocell_get\00", [34 x i8] zeroinitializer }, align 32
@rzg2l_cpg_clk_src_twocell_get._entry_ptr = internal global ptr @rzg2l_cpg_clk_src_twocell_get._entry, section ".printk_index", align 4
@rzg2l_cpg_clk_src_twocell_get._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 363, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@rzg2l_cpg_clk_src_twocell_get._entry_ptr.28 = internal global ptr @rzg2l_cpg_clk_src_twocell_get._entry.27, section ".printk_index", align 4
@rzg2l_cpg_clk_src_twocell_get._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.26, ptr @.str.4, i32 370, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid CPG clock type %u\0A\00", [37 x i8] zeroinitializer }, align 32
@rzg2l_cpg_clk_src_twocell_get._entry_ptr.31 = internal global ptr @rzg2l_cpg_clk_src_twocell_get._entry.29, section ".printk_index", align 4
@rzg2l_cpg_clk_src_twocell_get._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.26, ptr @.str.4, i32 376, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot get %s clock %u: %ld\00", [36 x i8] zeroinitializer }, align 32
@rzg2l_cpg_clk_src_twocell_get._entry_ptr.34 = internal global ptr @rzg2l_cpg_clk_src_twocell_get._entry.32, section ".printk_index", align 4
@rzg2l_cpg_clk_src_twocell_get.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.26, ptr @.str.4, ptr @.str.35, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"clock (%u, %u) is %pC at %lu Hz\0A\00", [63 x i8] zeroinitializer }, align 32
@pm_domain_always_on_gov = external dso_local global %struct.dev_power_governor, align 4
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@rzg2l_cpg_attach_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 828, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pm_clk_add_clk failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rzg2l_cpg_attach_dev\00", [43 x i8] zeroinitializer }, align 32
@rzg2l_cpg_attach_dev._entry_ptr = internal global ptr @rzg2l_cpg_attach_dev._entry, section ".printk_index", align 4
@rzg2l_cpg_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @rzg2l_cpg_reset, ptr @rzg2l_cpg_assert, ptr @rzg2l_cpg_deassert, ptr @rzg2l_cpg_status }, [16 x i8] zeroinitializer }, align 32
@rzg2l_cpg_reset.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rzg2l_cpg_reset\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reset id:%ld offset:0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rzg2l_cpg_assert.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.42, ptr @.str.4, ptr @.str.43, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rzg2l_cpg_assert\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"assert id:%ld offset:0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@rzg2l_cpg_deassert.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 0, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rzg2l_cpg_deassert\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"deassert id:%ld offset:0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@rzg2l_cpg_reset_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 765, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid reset index %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rzg2l_cpg_reset_xlate\00", [42 x i8] zeroinitializer }, align 32
@rzg2l_cpg_reset_xlate._entry_ptr = internal global ptr @rzg2l_cpg_reset_xlate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"rzg2l_cpg_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 959, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 961, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"rzg2l_cpg_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 949, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 903, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 440, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 445, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"rzg2l_cpg_pll_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 299, i32 29 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 253, i32 38 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 253, i32 46 }
@___asan_gen_.100 = private unnamed_addr constant [25 x i8] c"rzg2l_cpg_sd_clk_mux_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 230, i32 29 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 202, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"rzg2l_mod_clock_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 576, i32 29 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 644, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 663, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 680, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 482, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 486, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 508, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 564, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 353, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 362, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 370, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 375, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 378, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 807, i32 41 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 807, i32 51 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 827, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c"rzg2l_cpg_reset_ops\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 750, i32 39 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 695, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 717, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 732, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [35 x i8] c"../drivers/clk/renesas/rzg2l-cpg.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 765, i32 3 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_description194, ptr @__UNIQUE_ID_file195, ptr @__UNIQUE_ID_license196, ptr @__initcall__kmod_rzg2l_cpg__193_971_rzg2l_cpg_init4, ptr @rzg2l_cpg_attach_dev._entry, ptr @rzg2l_cpg_attach_dev._entry_ptr, ptr @rzg2l_cpg_clk_src_twocell_get._entry, ptr @rzg2l_cpg_clk_src_twocell_get._entry.27, ptr @rzg2l_cpg_clk_src_twocell_get._entry.29, ptr @rzg2l_cpg_clk_src_twocell_get._entry.32, ptr @rzg2l_cpg_clk_src_twocell_get._entry_ptr, ptr @rzg2l_cpg_clk_src_twocell_get._entry_ptr.28, ptr @rzg2l_cpg_clk_src_twocell_get._entry_ptr.31, ptr @rzg2l_cpg_clk_src_twocell_get._entry_ptr.34, ptr @rzg2l_cpg_register_core_clk._entry, ptr @rzg2l_cpg_register_core_clk._entry_ptr, ptr @rzg2l_cpg_register_mod_clk._entry, ptr @rzg2l_cpg_register_mod_clk._entry_ptr, ptr @rzg2l_cpg_reset_xlate._entry, ptr @rzg2l_cpg_reset_xlate._entry_ptr, ptr @rzg2l_cpg_sd_clk_mux_set_parent._entry, ptr @rzg2l_cpg_sd_clk_mux_set_parent._entry_ptr, ptr @rzg2l_mod_clock_endisable._entry, ptr @rzg2l_mod_clock_endisable._entry_ptr, ptr @rzg2l_cpg_driver, ptr @.str, ptr @rzg2l_cpg_match, ptr @rzg2l_cpg_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rzg2l_cpg_pll_ops, ptr @.str.10, ptr @.str.11, ptr @rzg2l_cpg_sd_clk_mux_ops, ptr @.str.12, ptr @.str.13, ptr @rzg2l_mod_clock_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @rzg2l_cpg_reset_ops, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_cpg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_cpg_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_cpg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_cpg_register_core_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_cpg_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_cpg_sd_clk_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_cpg_sd_clk_mux_set_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_mod_clock_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_cpg_register_mod_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_mod_clock_endisable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_cpg_clk_src_twocell_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_cpg_clk_src_twocell_get._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_cpg_clk_src_twocell_get._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_cpg_clk_src_twocell_get._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_cpg_attach_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_cpg_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_cpg_reset_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_cpg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @rzg2l_cpg_driver, ptr noundef nonnull @rzg2l_cpg_probe, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_cpg_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 124, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev3, align 4
  %info4 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %call.i, i32 0, i32 10
  %3 = ptrtoint ptr %info4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %info4, align 4
  %rmw_lock = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %rmw_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rzg2l_cpg_probe.__key, i16 noundef signext 3) #6
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %num_total_core_clks = getelementptr inbounds %struct.rzg2l_cpg_info, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %num_total_core_clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_total_core_clks, align 4
  %num_hw_mod_clks = getelementptr inbounds %struct.rzg2l_cpg_info, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %num_hw_mod_clks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_hw_mod_clks, align 4
  %add = add i32 %9, %7
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #6
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %if.end12.cleanup_crit_edge, label %devm_kmalloc_array.exit, !prof !127

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

devm_kmalloc_array.exit:                          ; preds = %if.end12
  %12 = extractvalue { i32, i1 } %10, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %12, i32 noundef 3264) #6
  %tobool14.not = icmp eq ptr %call5.i, null
  br i1 %tobool14.not, label %devm_kmalloc_array.exit.cleanup_crit_edge, label %if.end16

devm_kmalloc_array.exit.cleanup_crit_edge:        ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %devm_kmalloc_array.exit
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i, align 4
  %clks17 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %clks17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i, ptr %clks17, align 4
  %15 = ptrtoint ptr %num_total_core_clks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_total_core_clks, align 4
  %num_core_clks = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %num_core_clks to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %num_core_clks, align 4
  %18 = ptrtoint ptr %num_hw_mod_clks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_hw_mod_clks, align 4
  %num_mod_clks = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %num_mod_clks to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %num_mod_clks, align 4
  %num_resets = getelementptr inbounds %struct.rzg2l_cpg_info, ptr %call, i32 0, i32 8
  %21 = ptrtoint ptr %num_resets to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_resets, align 4
  %num_resets20 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %num_resets20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %num_resets20, align 4
  %last_dt_core_clk = getelementptr inbounds %struct.rzg2l_cpg_info, ptr %call, i32 0, i32 2
  %24 = ptrtoint ptr %last_dt_core_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last_dt_core_clk, align 4
  %last_dt_core_clk21 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %last_dt_core_clk21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %last_dt_core_clk21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp121.not = icmp eq i32 %add, 0
  br i1 %cmp121.not, label %if.end16.for.cond23.preheader_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.cond23.preheader_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.body.for.cond23.preheader_crit_edge, %if.end16.for.cond23.preheader_crit_edge
  %num_core_clks24 = getelementptr inbounds %struct.rzg2l_cpg_info, ptr %call, i32 0, i32 1
  %27 = ptrtoint ptr %num_core_clks24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_core_clks24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp25123.not = icmp eq i32 %28, 0
  br i1 %cmp25123.not, label %for.cond23.preheader.for.cond31.preheader_crit_edge, label %for.cond23.preheader.for.body26_crit_edge

for.cond23.preheader.for.body26_crit_edge:        ; preds = %for.cond23.preheader
  br label %for.body26

for.cond23.preheader.for.cond31.preheader_crit_edge: ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond31.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end16.for.body_crit_edge
  %i.0122 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %call5.i, i32 %i.0122
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.body.for.cond23.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.cond23.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond23.preheader

for.cond31.preheader:                             ; preds = %for.body26.for.cond31.preheader_crit_edge, %for.cond23.preheader.for.cond31.preheader_crit_edge
  %num_mod_clks32 = getelementptr inbounds %struct.rzg2l_cpg_info, ptr %call, i32 0, i32 5
  %30 = ptrtoint ptr %num_mod_clks32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_mod_clks32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp33125.not = icmp eq i32 %31, 0
  br i1 %cmp33125.not, label %for.cond31.preheader.for.end38_crit_edge, label %for.body34.lr.ph

for.cond31.preheader.for.end38_crit_edge:         ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end38

for.body34.lr.ph:                                 ; preds = %for.cond31.preheader
  %mod_clks = getelementptr inbounds %struct.rzg2l_cpg_info, ptr %call, i32 0, i32 4
  br label %for.body34

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.cond23.preheader.for.body26_crit_edge
  %i.1124 = phi i32 [ %inc29, %for.body26.for.body26_crit_edge ], [ 0, %for.cond23.preheader.for.body26_crit_edge ]
  %32 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call, align 4
  %arrayidx27 = getelementptr %struct.cpg_core_clk, ptr %33, i32 %i.1124
  tail call fastcc void @rzg2l_cpg_register_core_clk(ptr noundef %arrayidx27, ptr noundef nonnull %call.i) #9
  %inc29 = add nuw i32 %i.1124, 1
  %34 = ptrtoint ptr %num_core_clks24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_core_clks24, align 4
  %cmp25 = icmp ult i32 %inc29, %35
  br i1 %cmp25, label %for.body26.for.body26_crit_edge, label %for.body26.for.cond31.preheader_crit_edge

for.body26.for.cond31.preheader_crit_edge:        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond31.preheader

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.body34.lr.ph
  %i.2126 = phi i32 [ 0, %for.body34.lr.ph ], [ %inc37, %for.body34.for.body34_crit_edge ]
  %36 = ptrtoint ptr %mod_clks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mod_clks, align 4
  %arrayidx35 = getelementptr %struct.rzg2l_mod_clk, ptr %37, i32 %i.2126
  tail call fastcc void @rzg2l_cpg_register_mod_clk(ptr noundef %arrayidx35, ptr noundef %call, ptr noundef nonnull %call.i) #9
  %inc37 = add nuw i32 %i.2126, 1
  %38 = ptrtoint ptr %num_mod_clks32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_mod_clks32, align 4
  %cmp33 = icmp ult i32 %inc37, %39
  br i1 %cmp33, label %for.body34.for.body34_crit_edge, label %for.body34.for.end38_crit_edge

for.body34.for.end38_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end38

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34

for.end38:                                        ; preds = %for.body34.for.end38_crit_edge, %for.cond31.preheader.for.end38_crit_edge
  %call39 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @rzg2l_cpg_clk_src_twocell_get, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %for.end38.cleanup_crit_edge

for.end38.cleanup_crit_edge:                      ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %for.end38
  %call.i117 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @rzg2l_cpg_del_clk_provider, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool.not.i = icmp eq i32 %call.i117, 0
  br i1 %tobool.not.i, label %if.end46, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @of_clk_del_provider(ptr noundef %1) #6
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %call47 = tail call fastcc i32 @rzg2l_cpg_add_clk_domain(ptr noundef %dev1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %call51 = tail call fastcc i32 @rzg2l_cpg_reset_controller_register(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end46.cleanup_crit_edge, %devm_add_action_or_reset.exit, %for.end38.cleanup_crit_edge, %devm_kmalloc_array.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then9 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.cleanup_crit_edge ], [ %call39, %for.end38.cleanup_crit_edge ], [ %call.i117, %devm_add_action_or_reset.exit ], [ %call47, %if.end46.cleanup_crit_edge ], [ %call51, %if.end50 ], [ -12, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rzg2l_cpg_register_core_clk(ptr nocapture noundef readonly %core, ptr noundef %priv) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %id2 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 1
  %2 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id2, align 4
  %div3 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 3
  %4 = ptrtoint ptr %div3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div3, align 4
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 5
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end.do.end51_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %do.end13
    i32 2, label %sw.bb21
    i32 3, label %sw.bb24
    i32 4, label %sw.bb28
    i32 5, label %sw.bb31
  ]

if.end.do.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call9 = tail call ptr @of_clk_get_by_name(ptr noundef %12, ptr noundef nonnull %7) #6
  br label %sw.epilog

do.end13:                                         ; preds = %if.end
  %clks = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 4
  %13 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clks, align 4
  %parent14 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 2
  %15 = ptrtoint ptr %parent14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %parent14, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13.do.end51_crit_edge, label %if.end17

do.end13.do.end51_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

if.end17:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call ptr @__clk_get_name(ptr noundef %18) #6
  %19 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core, align 4
  %mult = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 4
  %21 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mult, align 4
  %call20 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %20, ptr noundef %call18, i32 noundef 4, i32 noundef %22, i32 noundef %5) #6
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %clks22 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 4
  %23 = ptrtoint ptr %clks22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clks22, align 4
  %base = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 2
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %call23 = tail call fastcc ptr @rzg2l_cpg_pll_clk_register(ptr noundef %core, ptr noundef %24, ptr noundef %26, ptr noundef %priv) #9
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %clks25 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 4
  %27 = ptrtoint ptr %clks25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clks25, align 4
  %base26 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 2
  %29 = ptrtoint ptr %base26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base26, align 4
  %call27 = tail call fastcc ptr @rzg2l_cpg_div_clk_register(ptr noundef %core, ptr noundef %28, ptr noundef %30, ptr noundef %priv) #9
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %base29 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 2
  %31 = ptrtoint ptr %base29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base29, align 4
  %call30 = tail call fastcc ptr @rzg2l_cpg_mux_clk_register(ptr noundef %core, ptr noundef %32, ptr noundef %priv) #9
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = tail call fastcc ptr @rzg2l_cpg_sd_mux_clk_register(ptr noundef %core, ptr noundef %priv) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb28, %sw.bb24, %sw.bb21, %if.end17, %sw.bb
  %clk.0 = phi ptr [ %call33, %sw.bb31 ], [ %call30, %sw.bb28 ], [ %call27, %sw.bb24 ], [ %call23, %sw.bb21 ], [ %call20, %if.end17 ], [ %call9, %sw.bb ]
  %tobool.not.i = icmp eq ptr %clk.0, null
  %cmp.i1 = icmp ugt ptr %clk.0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i1
  br i1 %spec.select.i, label %sw.epilog.do.end51_crit_edge, label %do.body37

sw.epilog.do.end51_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

do.body37:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzg2l_cpg_register_core_clk.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rzg2l_cpg_register_core_clk, %if.then42)) #6
          to label %do.end46 [label %if.then42], !srcloc !128

if.then42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  %call43 = tail call i32 @clk_get_rate(ptr noundef nonnull %clk.0) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzg2l_cpg_register_core_clk.__UNIQUE_ID_ddebug184, ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %clk.0, i32 noundef %call43) #6
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %do.body37
  %clks47 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 4
  %33 = ptrtoint ptr %clks47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clks47, align 4
  %arrayidx48 = getelementptr ptr, ptr %34, i32 %3
  %35 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %clk.0, ptr %arrayidx48, align 4
  br label %cleanup

do.end51:                                         ; preds = %sw.epilog.do.end51_crit_edge, %do.end13.do.end51_crit_edge, %if.end.do.end51_crit_edge
  %clk.1 = phi ptr [ inttoptr (i32 -95 to ptr), %if.end.do.end51_crit_edge ], [ %clk.0, %sw.epilog.do.end51_crit_edge ], [ %18, %do.end13.do.end51_crit_edge ]
  %36 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %core, align 4
  %38 = ptrtoint ptr %clk.1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, ptr noundef %37, i32 noundef %38) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %do.end46, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rzg2l_cpg_register_mod_clk(ptr nocapture noundef readonly %mod, ptr nocapture noundef readonly %info, ptr noundef %priv) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %id2 = getelementptr inbounds %struct.rzg2l_mod_clk, ptr %mod, i32 0, i32 1
  %2 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id2, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %4 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #6
  %5 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name, align 4, !annotation !129
  %6 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mod, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %clks = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 4
  %8 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clks, align 4
  %parent12 = getelementptr inbounds %struct.rzg2l_mod_clk, ptr %mod, i32 0, i32 2
  %10 = ptrtoint ptr %parent12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %parent12, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.do.end81_crit_edge, label %if.end14

if.end.do.end81_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

if.end14:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 24, i32 noundef 3520) #6
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %if.end14.do.end81_crit_edge, label %if.end19

if.end14.do.end81_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

if.end19:                                         ; preds = %if.end14
  %14 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mod, align 4
  %16 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rzg2l_mod_clock_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %flags, align 4
  %num_crit_mod_clks = getelementptr inbounds %struct.rzg2l_cpg_info, ptr %info, i32 0, i32 10
  %19 = ptrtoint ptr %num_crit_mod_clks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_crit_mod_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp137.not = icmp eq i32 %20, 0
  br i1 %cmp137.not, label %if.end19.for.end_crit_edge, label %for.body.lr.ph

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end19
  %crit_mod_clks = getelementptr inbounds %struct.rzg2l_cpg_info, ptr %info, i32 0, i32 9
  %21 = ptrtoint ptr %crit_mod_clks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %crit_mod_clks, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0138, 1
  %exitcond.not = icmp eq i32 %inc, %20
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx22 = getelementptr i32, ptr %22, i32 %i.0138
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %24)
  %cmp23 = icmp eq i32 %3, %24
  br i1 %cmp23, label %do.body25, label %for.cond

do.body25:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzg2l_cpg_register_mod_clk.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rzg2l_cpg_register_mod_clk, %if.then30)) #6
          to label %do.end34 [label %if.then30], !srcloc !128

if.then30:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mod, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzg2l_cpg_register_mod_clk.__UNIQUE_ID_ddebug188, ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef %26) #6
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.body25
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %or = or i32 %28, 2048
  store i32 %or, ptr %flags, align 4
  br label %for.end

for.end:                                          ; preds = %do.end34, %for.cond.for.end_crit_edge, %if.end19.for.end_crit_edge
  %call37 = tail call ptr @__clk_get_name(ptr noundef %13) #6
  %29 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call37, ptr %parent_name, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %30 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %parent_name, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %31 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %num_parents, align 4
  %off = getelementptr inbounds %struct.rzg2l_mod_clk, ptr %mod, i32 0, i32 3
  %32 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %off, align 4
  %off38 = getelementptr inbounds %struct.mstp_clock, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %off38 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %off38, align 4
  %bit = getelementptr inbounds %struct.rzg2l_mod_clk, ptr %mod, i32 0, i32 4
  %35 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bit, align 2
  %bit39 = getelementptr inbounds %struct.mstp_clock, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %bit39 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %bit39, align 2
  %priv40 = getelementptr inbounds %struct.mstp_clock, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %priv40 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %priv, ptr %priv40, align 4
  %init41 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %39 = ptrtoint ptr %init41 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %init, ptr %init41, align 4
  %call43 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call.i) #6
  %cmp.i131 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %for.end.do.end81_crit_edge, label %do.body47

for.end.do.end81_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

do.body47:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzg2l_cpg_register_mod_clk.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rzg2l_cpg_register_mod_clk, %if.then59)) #6
          to label %do.end63 [label %if.then59], !srcloc !128

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  %call60 = call i32 @clk_get_rate(ptr noundef %call43) #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzg2l_cpg_register_mod_clk.__UNIQUE_ID_ddebug189, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef %call43, i32 noundef %call60) #6
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body47
  %40 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clks, align 4
  %arrayidx65 = getelementptr ptr, ptr %41, i32 %3
  %42 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call43, ptr %arrayidx65, align 4
  %is_coupled = getelementptr inbounds %struct.rzg2l_mod_clk, ptr %mod, i32 0, i32 5
  %43 = ptrtoint ptr %is_coupled to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_coupled, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool66.not = icmp eq i8 %44, 0
  br i1 %tobool66.not, label %do.end63.cleanup_crit_edge, label %if.then67

do.end63.cleanup_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then67:                                        ; preds = %do.end63
  %call69 = call i32 @rzg2l_mod_clock_is_enabled(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70 = icmp ne i32 %call69, 0
  %enabled = getelementptr inbounds %struct.mstp_clock, ptr %call.i, i32 0, i32 3
  %frombool71 = zext i1 %tobool70 to i8
  %45 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool71, ptr %enabled, align 1
  %num_mod_clks.i = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 6
  %46 = ptrtoint ptr %num_mod_clks.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_mod_clks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp33.not.i = icmp eq i32 %47, 0
  br i1 %cmp33.not.i, label %if.then67.cleanup_crit_edge, label %for.body.lr.ph.i

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then67
  %num_core_clks.i = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %48 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clks, align 4
  %50 = ptrtoint ptr %num_core_clks.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_core_clks.i, align 4
  %add.i = add i32 %51, %i.034.i
  %arrayidx.i = getelementptr ptr, ptr %49, i32 %add.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %53, inttoptr (i32 -2 to ptr)
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call6.i = call ptr @__clk_get_hw(ptr noundef %53) #6
  %54 = ptrtoint ptr %off38 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %off38, align 4
  %off7.i = getelementptr inbounds %struct.mstp_clock, ptr %call6.i, i32 0, i32 1
  %56 = ptrtoint ptr %off7.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %off7.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %55, i16 %57)
  %cmp9.i = icmp eq i16 %55, %57
  br i1 %cmp9.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %58 = ptrtoint ptr %bit39 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bit39, align 2
  %bit12.i = getelementptr inbounds %struct.mstp_clock, ptr %call6.i, i32 0, i32 2
  %60 = ptrtoint ptr %bit12.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bit12.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %61)
  %cmp14.i = icmp eq i8 %59, %61
  br i1 %cmp14.i, label %rzg2l_mod_clock__get_sibling.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.034.i, 1
  %62 = ptrtoint ptr %num_mod_clks.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_mod_clks.i, align 4
  %cmp.i132 = icmp ult i32 %inc.i, %63
  br i1 %cmp.i132, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

rzg2l_mod_clock__get_sibling.exit:                ; preds = %land.lhs.true.i
  %tobool73.not = icmp eq ptr %call6.i, null
  br i1 %tobool73.not, label %rzg2l_mod_clock__get_sibling.exit.cleanup_crit_edge, label %if.then74

rzg2l_mod_clock__get_sibling.exit.cleanup_crit_edge: ; preds = %rzg2l_mod_clock__get_sibling.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then74:                                        ; preds = %rzg2l_mod_clock__get_sibling.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sibling75 = getelementptr inbounds %struct.mstp_clock, ptr %call.i, i32 0, i32 5
  %64 = ptrtoint ptr %sibling75 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call6.i, ptr %sibling75, align 4
  %sibling76 = getelementptr inbounds %struct.mstp_clock, ptr %call6.i, i32 0, i32 5
  %65 = ptrtoint ptr %sibling76 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %sibling76, align 4
  br label %cleanup

do.end81:                                         ; preds = %for.end.do.end81_crit_edge, %if.end14.do.end81_crit_edge, %if.end.do.end81_crit_edge
  %clk.0 = phi ptr [ %call43, %for.end.do.end81_crit_edge ], [ %13, %if.end.do.end81_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end14.do.end81_crit_edge ]
  %66 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mod, align 4
  %68 = ptrtoint ptr %clk.0 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.17, ptr noundef %67, i32 noundef %68) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end81, %if.then74, %rzg2l_mod_clock__get_sibling.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %do.end63.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rzg2l_cpg_clk_src_twocell_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %arrayidx = getelementptr %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %dev1 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %5, label %do.end17 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %last_dt_core_clk = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %data, i32 0, i32 8
  %7 = ptrtoint ptr %last_dt_core_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_dt_core_clk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %8)
  %cmp = icmp ugt i32 %1, %8
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.9, i32 noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %clks = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %data, i32 0, i32 4
  %9 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clks, align 4
  %arrayidx4 = getelementptr ptr, ptr %10, i32 %1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %num_mod_clks = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %data, i32 0, i32 6
  %11 = ptrtoint ptr %num_mod_clks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_mod_clks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %12)
  %cmp6.not = icmp ult i32 %1, %12
  br i1 %cmp6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.17, i32 noundef %1) #10
  br label %cleanup

if.end12:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %clks13 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %data, i32 0, i32 4
  %13 = ptrtoint ptr %clks13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clks13, align 4
  %num_core_clks = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %data, i32 0, i32 5
  %15 = ptrtoint ptr %num_core_clks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_core_clks, align 4
  %add = add i32 %16, %1
  %arrayidx14 = getelementptr ptr, ptr %14, i32 %add
  br label %sw.epilog

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.30, i32 noundef %5) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end12, %if.end
  %type.0 = phi ptr [ @.str.17, %if.end12 ], [ @.str.9, %if.end ]
  %clk.0.in = phi ptr [ %arrayidx14, %if.end12 ], [ %arrayidx4, %if.end ]
  %17 = ptrtoint ptr %clk.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %clk.0 = load ptr, ptr %clk.0.in, align 4
  %cmp.i = icmp ugt ptr %clk.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end25, label %do.body27

do.end25:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %clk.0 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.33, ptr noundef nonnull %type.0, i32 noundef %1, i32 noundef %18) #10
  br label %cleanup

do.body27:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzg2l_cpg_clk_src_twocell_get.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rzg2l_cpg_clk_src_twocell_get, %if.then31)) #6
          to label %cleanup [label %if.then31], !srcloc !128

if.then31:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %args, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %call36 = tail call i32 @clk_get_rate(ptr noundef %clk.0) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzg2l_cpg_clk_src_twocell_get.__UNIQUE_ID_ddebug183, ptr noundef %3, ptr noundef nonnull @.str.35, i32 noundef %20, i32 noundef %22, ptr noundef %clk.0, i32 noundef %call36) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body27, %do.end25, %do.end17, %do.end10, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end17 ], [ inttoptr (i32 -22 to ptr), %do.end10 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %clk.0, %if.then31 ], [ %clk.0, %do.end25 ], [ %clk.0, %do.body27 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rzg2l_cpg_del_clk_provider(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @of_clk_del_provider(ptr noundef %data) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rzg2l_cpg_add_clk_domain(ptr noundef %dev) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1352, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %name1 = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %name1, align 8
  %flags = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 32
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 13, ptr %flags, align 4
  %attach_dev = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 30
  %6 = ptrtoint ptr %attach_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rzg2l_cpg_attach_dev, ptr %attach_dev, align 4
  %detach_dev = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 31
  %7 = ptrtoint ptr %detach_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rzg2l_cpg_detach_dev, ptr %detach_dev, align 8
  %call2 = tail call i32 @pm_genpd_init(ptr noundef nonnull %call.i, ptr noundef nonnull @pm_domain_always_on_gov, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i26 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @rzg2l_cpg_genpd_remove, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i, label %if.end9, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call.i27 = tail call i32 @pm_genpd_remove(ptr noundef nonnull %call.i) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 @of_genpd_add_provider_simple(ptr noundef %1, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %devm_add_action_or_reset.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call.i26, %devm_add_action_or_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rzg2l_cpg_reset_controller_register(ptr noundef %priv) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rzg2l_cpg_reset_ops, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 1
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
  %dev5 = getelementptr inbounds %struct.reset_controller_dev, ptr %priv, i32 0, i32 4
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %2, ptr %dev5, align 4
  %of_reset_n_cells = getelementptr inbounds %struct.reset_controller_dev, ptr %priv, i32 0, i32 6
  %7 = ptrtoint ptr %of_reset_n_cells to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %of_reset_n_cells, align 4
  %of_xlate = getelementptr inbounds %struct.reset_controller_dev, ptr %priv, i32 0, i32 7
  %8 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rzg2l_cpg_reset_xlate, ptr %of_xlate, align 4
  %num_resets = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 7
  %9 = ptrtoint ptr %num_resets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_resets, align 4
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, ptr %priv, i32 0, i32 8
  %11 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %nr_resets, align 4
  %call = tail call i32 @devm_reset_controller_register(ptr noundef %2, ptr noundef %priv) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rzg2l_cpg_pll_clk_register(ptr nocapture noundef readonly %core, ptr nocapture noundef readonly %clks, ptr noundef %base, ptr noundef %priv) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %2 = getelementptr inbounds i8, ptr %init, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #6
  %parent2 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 2
  %4 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parent2, align 4
  %and = and i32 %5, 65535
  %arrayidx = getelementptr ptr, ptr %clks, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 28, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call ptr @__clk_get_name(ptr noundef %7) #6
  %8 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %parent_name, align 4
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 4
  %11 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rzg2l_cpg_pll_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %14 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %parent_name, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %15 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %num_parents, align 4
  %init10 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %init10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %init, ptr %init10, align 4
  %conf = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 6
  %17 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %conf, align 4
  %conf11 = getelementptr inbounds %struct.pll_clk, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %conf11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %conf11, align 4
  %base12 = getelementptr inbounds %struct.pll_clk, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %base12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %base, ptr %base12, align 4
  %priv13 = getelementptr inbounds %struct.pll_clk, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %priv13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %priv, ptr %priv13, align 4
  %type = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 5
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 4
  %type14 = getelementptr inbounds %struct.pll_clk, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %type14, align 4
  %call16 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call16, %if.end7 ], [ %7, %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rzg2l_cpg_div_clk_register(ptr nocapture noundef readonly %core, ptr nocapture noundef readonly %clks, ptr noundef %base, ptr noundef %priv) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent2 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 2
  %2 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent2, align 4
  %and = and i32 %3, 65535
  %arrayidx = getelementptr ptr, ptr %clks, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @__clk_get_name(ptr noundef %5) #6
  %dtable = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 7
  %6 = ptrtoint ptr %dtable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dtable, align 4
  %tobool.not = icmp eq ptr %7, null
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %conf18 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 6
  %10 = ptrtoint ptr %conf18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %conf18, align 4
  %shr19 = lshr i32 %11, 20
  %add.ptr21 = getelementptr i8, ptr %base, i32 %shr19
  %shr23 = lshr i32 %11, 12
  %conv25 = trunc i32 %shr23 to i8
  %shr27 = lshr i32 %11, 8
  %12 = trunc i32 %shr27 to i8
  %conv29 = and i8 %12, 15
  %flag30 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 9
  %13 = ptrtoint ptr %flag30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flag30, align 4
  %conv31 = trunc i32 %14 to i8
  %rmw_lock32 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 3
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call ptr @__clk_hw_register_divider(ptr noundef %1, ptr noundef null, ptr noundef %9, ptr noundef %call4, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr21, i8 noundef zeroext %conv25, i8 noundef zeroext %conv29, i8 noundef zeroext %conv31, ptr noundef nonnull %7, ptr noundef %rmw_lock32) #6
  br label %if.end34

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = tail call ptr @__clk_hw_register_divider(ptr noundef %1, ptr noundef null, ptr noundef %9, ptr noundef %call4, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr21, i8 noundef zeroext %conv25, i8 noundef zeroext %conv29, i8 noundef zeroext %conv31, ptr noundef null, ptr noundef %rmw_lock32) #6
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then5
  %clk_hw.0 = phi ptr [ %call16, %if.then5 ], [ %call33, %if.else ]
  %cmp.i63 = icmp ugt ptr %clk_hw.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %if.end34.cleanup_crit_edge, label %if.end38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.clk_hw, ptr %clk_hw.0, i32 0, i32 1
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %16, %if.end38 ], [ %5, %entry.cleanup_crit_edge ], [ %clk_hw.0, %if.end34.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rzg2l_cpg_mux_clk_register(ptr nocapture noundef readonly %core, ptr noundef %base, ptr noundef %priv) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %num_parents = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 11
  %4 = ptrtoint ptr %num_parents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_parents, align 4
  %conv = trunc i32 %5 to i8
  %parent_names = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 8
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent_names, align 4
  %flag = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 9
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flag, align 4
  %conf = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 6
  %10 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %conf, align 4
  %shr = lshr i32 %11, 20
  %add.ptr = getelementptr i8, ptr %base, i32 %shr
  %shr2 = lshr i32 %11, 12
  %conv4 = trunc i32 %shr2 to i8
  %shr6 = lshr i32 %11, 8
  %and7 = and i32 %shr6, 15
  %notmask = shl nsw i32 -1, %and7
  %sub = xor i32 %notmask, -1
  %mux_flags = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 10
  %12 = ptrtoint ptr %mux_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mux_flags, align 4
  %conv8 = trunc i32 %13 to i8
  %rmw_lock = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 3
  %call = tail call ptr @__devm_clk_hw_register_mux(ptr noundef %1, ptr noundef null, ptr noundef %3, i8 noundef zeroext %conv, ptr noundef %7, ptr noundef null, ptr noundef null, i32 noundef %9, ptr noundef %add.ptr, i8 noundef zeroext %conv4, i32 noundef %sub, i8 noundef zeroext %conv8, ptr noundef null, ptr noundef %rmw_lock) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %15, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rzg2l_cpg_sd_mux_clk_register(ptr nocapture noundef readonly %core, ptr noundef %priv) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %dev = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv2 = getelementptr inbounds %struct.sd_hw_data, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %priv2, align 4
  %conf = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 6
  %5 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %conf, align 4
  %conf3 = getelementptr inbounds %struct.sd_hw_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %conf3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %conf3, align 4
  %8 = and i32 %6, 1044480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  %cond = select i1 %tobool5.not, ptr @.str.11, ptr @.str.10
  %9 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cond, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @rzg2l_cpg_sd_clk_mux_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags, align 4
  %num_parents = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 11
  %12 = ptrtoint ptr %num_parents to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_parents, align 4
  %conv = trunc i32 %13 to i8
  %num_parents6 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %14 = ptrtoint ptr %num_parents6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %num_parents6, align 4
  %parent_names = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 8
  %15 = ptrtoint ptr %parent_names to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent_names, align 4
  %parent_names7 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %17 = ptrtoint ptr %parent_names7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %parent_names7, align 4
  %init8 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %init8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %init, ptr %init8, align 4
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call10 = call i32 @devm_clk_hw_register(ptr noundef %20, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = inttoptr i32 %call10 to ptr
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %21, %if.then12 ], [ %23, %if.end14 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_cpg_pll_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.pll_clk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.pll_clk, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %base = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %conf = getelementptr inbounds %struct.pll_clk, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conf, align 4
  %shr = lshr i32 %7, 22
  %add.ptr2 = getelementptr i8, ptr %5, i32 %shr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !131
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %12 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %conf, align 4
  %shr9 = lshr i32 %13, 12
  %and10 = and i32 %shr9, 4095
  %add.ptr11 = getelementptr i8, ptr %11, i32 %and10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #6, !srcloc !131
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %shr15 = lshr i32 %9, 6
  %and16 = and i32 %shr15, 1023
  %and21 = and i32 %9, 63
  %and23 = and i32 %15, 7
  %mul = shl nuw nsw i32 %and21, %and23
  %conv = zext i32 %parent_rate to i64
  %conv24 = zext i32 %and16 to i64
  %mul25 = mul nuw nsw i64 %conv24, %conv
  %div26315 = lshr i32 %mul, 1
  %conv27 = zext i32 %div26315 to i64
  %add28 = add nuw nsw i64 %mul25, %conv27
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add28)
  %cmp205 = icmp ult i64 %add28, 4294967296
  br i1 %cmp205, label %if.then209, label %if.else215, !prof !134

if.then209:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv210 = trunc i64 %add28 to i32
  %div213 = udiv i32 %conv210, %mul
  br label %cleanup

if.else215:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %add28) #11, !srcloc !135
  %asmresult1.i = extractvalue { i64, i64 } %16, 1
  %extract.t342 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else215, %if.then209, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %parent_rate, %entry.cleanup_crit_edge ], [ %div213, %if.then209 ], [ %extract.t342, %if.else215 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_cpg_sd_clk_mux_determine_rate(ptr noundef %hw, ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_mux_determine_rate_flags(ptr noundef %hw, ptr noundef %req, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_cpg_sd_clk_mux_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.sd_hw_data, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %conf = getelementptr inbounds %struct.sd_hw_data, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf, align 4
  %shr = lshr i32 %3, 20
  %shr3 = lshr i32 %3, 12
  %and4 = and i32 %shr3, 255
  %shr6 = lshr i32 %3, 8
  %and7 = and i32 %shr6, 15
  %sub8 = sub nuw nsw i32 32, %and7
  %shr9 = lshr i32 -1, %sub8
  %shl = shl i32 %shr9, %and4
  %shl11 = shl i32 %shl, 16
  %conv = zext i8 %index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %index)
  %cmp.not = icmp eq i8 %index, 2
  br i1 %cmp.not, label %entry.do.body69_crit_edge, label %if.then

entry.do.body69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  tail call void @arm_heavy_mb() #6
  %shl13 = shl i32 3, %and4
  %or = or i32 %shl11, %shl13
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %base = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %6, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %4) #6, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %3)
  %tobool.not = icmp ult i32 %3, 1048576
  %cond = select i1 %tobool.not, i32 268435456, i32 536870912
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 200) #6
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr29106 = getelementptr i8, ptr %8, i32 640
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29106) #6, !srcloc !131
  %10 = shl i32 %9, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  %and33107 = and i32 %10, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33107)
  %tobool34.not108 = icmp eq i32 %and33107, 0
  br i1 %tobool34.not108, label %if.then.do.body69_crit_edge, label %if.then.land.lhs.true_crit_edge

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

if.then.do.body69_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

land.lhs.true:                                    ; preds = %if.then52.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call38 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call38, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call38, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then52

if.then52:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr29 = getelementptr i8, ptr %12, i32 640
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #6, !srcloc !131
  %14 = shl i32 %13, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  %and33 = and i32 %14, %cond
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then52.do.body69_crit_edge, label %if.then52.land.lhs.true_crit_edge

if.then52.land.lhs.true_crit_edge:                ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then52.do.body69_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

for.end:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr46 = getelementptr i8, ptr %16, i32 640
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #6, !srcloc !131
  %18 = shl i32 %17, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  %.pre = and i32 %18, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool58.not = icmp eq i32 %.pre, 0
  br i1 %tobool58.not, label %for.end.do.body69_crit_edge, label %do.end64

for.end.do.body69_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

do.end64:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.12) #10
  br label %cleanup78

do.body69:                                        ; preds = %for.end.do.body69_crit_edge, %if.then52.do.body69_crit_edge, %if.then.do.body69_crit_edge, %entry.do.body69_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %add73 = add nuw nsw i32 %conv, 1
  %shl74 = shl i32 %add73, %and4
  %or75 = or i32 %shl11, %shl74
  %21 = tail call i32 @llvm.bswap.i32(i32 %or75)
  %base76 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %base76 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base76, align 4
  %add.ptr77 = getelementptr i8, ptr %23, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %21) #6, !srcloc !137
  br label %cleanup78

cleanup78:                                        ; preds = %do.body69, %do.end64
  %retval.1 = phi i32 [ 0, %do.body69 ], [ -110, %do.end64 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @rzg2l_cpg_sd_clk_mux_get_parent(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.sd_hw_data, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %base = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %conf = getelementptr inbounds %struct.sd_hw_data, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %conf, align 4
  %shr = lshr i32 %5, 20
  %add.ptr2 = getelementptr i8, ptr %3, i32 %shr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !131
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %conf, align 4
  %shr6 = lshr i32 %9, 12
  %and7 = and i32 %shr6, 255
  %shr8 = lshr i32 %7, %and7
  %shr10 = lshr i32 %9, 8
  %and11 = and i32 %shr10, 15
  %sub12 = sub nuw nsw i32 32, %and11
  %shr13 = lshr i32 -1, %sub12
  %and15 = and i32 %shr13, %shr8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = trunc i32 %and15 to i8
  %phi.cast = add i8 %10, -1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 @rzg2l_cpg_sd_clk_mux_set_parent(ptr noundef %hw, i8 noundef zeroext 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i8 [ %phi.cast, %if.then ], [ 0, %if.else ]
  ret i8 %val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_determine_rate_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_mod_clock_is_enabled(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %bit = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bit, align 2
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %off = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %off, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzg2l_mod_clock_is_enabled.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rzg2l_mod_clock_is_enabled, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !128

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzg2l_mod_clock_is_enabled.__UNIQUE_ID_ddebug187, ptr noundef %7, ptr noundef nonnull @.str.19, ptr noundef %9) #6
  br label %cleanup

if.end7:                                          ; preds = %entry
  %sibling = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 5
  %10 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sibling, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %enabled = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 3
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled, align 1, !range !130
  %14 = zext i8 %13 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %conv14 = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv14, 384
  %add.ptr15 = getelementptr i8, ptr %16, i32 %add
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !131
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  %and = and i32 %18, %shl
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then9, %if.then6, %do.body
  %retval.0 = phi i32 [ %14, %if.then9 ], [ %and, %if.end12 ], [ 1, %if.then6 ], [ 1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_mod_clock_enable(ptr nocapture noundef %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sibling = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sibling, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then:                                          ; preds = %entry
  %priv1 = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %rmw_lock = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %3, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rmw_lock) #6
  %4 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sibling, align 4
  %enabled8 = getelementptr inbounds %struct.mstp_clock, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %enabled8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled8, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  %enabled10 = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %enabled10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %enabled10, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rmw_lock, i32 noundef %call4) #6
  br i1 %tobool9.not, label %if.then.if.end16_crit_edge, label %if.then.cleanup18_crit_edge

if.then.cleanup18_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup18

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end16:                                         ; preds = %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  %call17 = tail call fastcc i32 @rzg2l_mod_clock_endisable(ptr noundef %hw, i1 noundef zeroext true)
  br label %cleanup18

cleanup18:                                        ; preds = %if.end16, %if.then.cleanup18_crit_edge
  %retval.1 = phi i32 [ %call17, %if.end16 ], [ 0, %if.then.cleanup18_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rzg2l_mod_clock_disable(ptr nocapture noundef %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sibling = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sibling, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then:                                          ; preds = %entry
  %priv1 = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %rmw_lock = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %3, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rmw_lock) #6
  %4 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sibling, align 4
  %enabled8 = getelementptr inbounds %struct.mstp_clock, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %enabled8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled8, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  %enabled10 = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %enabled10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enabled10, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rmw_lock, i32 noundef %call4) #6
  br i1 %tobool9.not, label %if.then.if.end16_crit_edge, label %if.then.cleanup18_crit_edge

if.then.cleanup18_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup18

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end16:                                         ; preds = %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  %call17 = tail call fastcc i32 @rzg2l_mod_clock_endisable(ptr noundef %hw, i1 noundef zeroext false)
  br label %cleanup18

cleanup18:                                        ; preds = %if.end16, %if.then.cleanup18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rzg2l_mod_clock_endisable(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enable) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %off = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %off, align 4
  %conv = zext i16 %3 to i32
  %dev2 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %bit = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bit, align 2
  %conv3 = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %do.body, label %do.body12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzg2l_mod_clock_endisable.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rzg2l_mod_clock_endisable, %if.then10)) #6
          to label %cleanup [label %if.then10], !srcloc !128

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzg2l_mod_clock_endisable.__UNIQUE_ID_ddebug185, ptr noundef %5, ptr noundef nonnull @.str.19, ptr noundef %9) #6
  br label %cleanup

do.body12:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzg2l_mod_clock_endisable.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rzg2l_mod_clock_endisable, %if.then24)) #6
          to label %do.body32 [label %if.then24], !srcloc !128

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %clk25 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %clk25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk25, align 4
  %cond = select i1 %enable, ptr @.str.21, ptr @.str.22
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzg2l_mod_clock_endisable.__UNIQUE_ID_ddebug186, ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %conv, ptr noundef %11, ptr noundef nonnull %cond) #6
  br label %do.body32

do.body32:                                        ; preds = %if.then24, %do.body12
  %rmw_lock = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %1, i32 0, i32 3
  %call36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rmw_lock) #6
  %shl43 = shl i32 %shl, 16
  %or = select i1 %enable, i32 %shl, i32 0
  %value.0 = or i32 %shl43, %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  %base = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr49 = getelementptr i8, ptr %14, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %12) #6, !srcloc !137
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rmw_lock, i32 noundef %call36) #6
  br i1 %enable, label %for.cond.preheader, label %do.body32.cleanup_crit_edge

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %do.body32
  %add = add nuw nsw i32 %conv, 384
  br label %for.body

for.body:                                         ; preds = %do.end68.for.body_crit_edge, %for.cond.preheader
  %i.0116 = phi i32 [ 1000, %for.cond.preheader ], [ %dec, %do.end68.for.body_crit_edge ]
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr57 = getelementptr i8, ptr %16, i32 %add
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #6, !srcloc !131
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %and = and i32 %18, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  br i1 %tobool61.not, label %do.end68, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end68:                                         ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !145
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !146
  %dec = add nsw i32 %i.0116, -1
  %cond110 = icmp eq i32 %dec, 0
  br i1 %cond110, label %do.end77, label %do.end68.for.body_crit_edge

do.end68.for.body_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end77:                                         ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr79 = getelementptr i8, ptr %20, i32 %conv
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.23, ptr noundef %add.ptr79) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %for.body.cleanup_crit_edge, %do.body32.cleanup_crit_edge, %if.then10, %do.body
  %retval.0 = phi i32 [ -110, %do.end77 ], [ 0, %if.then10 ], [ 0, %do.body32.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_cpg_attach_dev(ptr nocapture noundef readnone %unused, ptr noundef %dev) #3 align 64 {
entry:
  %clkspec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec) #6
  %2 = call ptr @memset(ptr %clkspec, i32 255, i32 72)
  %call.i42 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %clkspec) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool.not43 = icmp eq i32 %call.i42, 0
  br i1 %tobool.not43, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 1
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %while.body.lr.ph
  %i.045 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end20.while.body_crit_edge ]
  %once.0.off044 = phi i1 [ true, %while.body.lr.ph ], [ %once.2.off0, %if.end20.while.body_crit_edge ]
  %3 = ptrtoint ptr %args_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 2
  br i1 %cmp.not.i, label %rzg2l_cpg_is_pm_clk.exit, label %while.body.if.else_crit_edge

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

rzg2l_cpg_is_pm_clk.exit:                         ; preds = %while.body
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cond.i = icmp eq i32 %6, 1
  br i1 %cond.i, label %if.then, label %rzg2l_cpg_is_pm_clk.exit.if.else_crit_edge

rzg2l_cpg_is_pm_clk.exit.if.else_crit_edge:       ; preds = %rzg2l_cpg_is_pm_clk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %rzg2l_cpg_is_pm_clk.exit
  br i1 %once.0.off044, label %if.then3, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then3:                                         ; preds = %if.then
  %call4 = call i32 @pm_clk_create(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then6

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %clkspec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clkspec, align 4
  call void @of_node_put(ptr noundef %8) #6
  br label %cleanup

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %call9 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %clkspec) #6
  %9 = ptrtoint ptr %clkspec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clkspec, align 4
  call void @of_node_put(ptr noundef %10) #6
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call9 to i32
  br label %fail_destroy

if.end14:                                         ; preds = %if.end8
  %call15 = call i32 @pm_clk_add_clk(ptr noundef %dev, ptr noundef %call9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %do.end

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call15) #10
  call void @clk_put(ptr noundef %call9) #6
  br label %fail_destroy

if.else:                                          ; preds = %rzg2l_cpg_is_pm_clk.exit.if.else_crit_edge, %while.body.if.else_crit_edge
  %12 = ptrtoint ptr %clkspec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clkspec, align 4
  call void @of_node_put(ptr noundef %13) #6
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end14.if.end20_crit_edge
  %once.2.off0 = phi i1 [ false, %if.end14.if.end20_crit_edge ], [ %once.0.off044, %if.else ]
  %inc = add i32 %i.045, 1
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef -1, i32 noundef %inc, ptr noundef nonnull %clkspec) #6
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end20.while.body_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

fail_destroy:                                     ; preds = %do.end, %if.then12
  %error.0 = phi i32 [ %11, %if.then12 ], [ %call15, %do.end ]
  call void @pm_clk_destroy(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %fail_destroy, %if.end20.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ %error.0, %fail_destroy ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rzg2l_cpg_detach_dev(ptr nocapture noundef readnone %unused, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %land.lhs.true.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.i:                                  ; preds = %entry
  %subsys_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 26
  %0 = ptrtoint ptr %subsys_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subsys_data.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then_crit_edge, label %pm_clk_no_clocks.exit

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pm_clk_no_clocks.exit:                            ; preds = %land.lhs.true.i
  %clock_list.i = getelementptr inbounds %struct.pm_subsys_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clock_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %clock_list.i, align 4
  %cmp.i.i = icmp eq ptr %3, %clock_list.i
  br i1 %cmp.i.i, label %pm_clk_no_clocks.exit.if.end_crit_edge, label %pm_clk_no_clocks.exit.if.then_crit_edge

pm_clk_no_clocks.exit.if.then_crit_edge:          ; preds = %pm_clk_no_clocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pm_clk_no_clocks.exit.if.end_crit_edge:           ; preds = %pm_clk_no_clocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %pm_clk_no_clocks.exit.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @pm_clk_destroy(ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_clk_no_clocks.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rzg2l_cpg_genpd_remove(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_genpd_remove(ptr noundef %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_add_clk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_clk_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_cpg_reset_xlate(ptr nocapture noundef readonly %rcdev, ptr nocapture noundef readonly %reset_spec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %reset_spec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, ptr %rcdev, i32 0, i32 8
  %2 = ptrtoint ptr %nr_resets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_resets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %info1 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %rcdev, i32 0, i32 10
  %4 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info1, align 4
  %resets = getelementptr inbounds %struct.rzg2l_cpg_info, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resets, align 4
  %arrayidx2 = getelementptr %struct.rzg2l_reset, ptr %7, i32 %1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.reset_controller_dev, ptr %rcdev, i32 0, i32 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.46, i32 noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %1, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_cpg_reset(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %rcdev, i32 0, i32 10
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %resets = getelementptr inbounds %struct.rzg2l_cpg_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resets, align 4
  %arrayidx = getelementptr %struct.rzg2l_reset, ptr %3, i32 %id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %bit = getelementptr %struct.rzg2l_reset, ptr %3, i32 %id, i32 1
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bit, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzg2l_cpg_reset.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rzg2l_cpg_reset, %if.then)) #6
          to label %do.body9 [label %if.then], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.reset_controller_dev, ptr %rcdev, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzg2l_cpg_reset.__UNIQUE_ID_ddebug190, ptr noundef %9, ptr noundef nonnull @.str.41, i32 noundef %id, i32 noundef %conv) #6
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  %conv4 = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv4
  %shl5 = shl i32 %shl, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl5)
  %base = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %rcdev, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %10) #6, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 7516180) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %or = or i32 %shl5, %shl
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %16, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %14) #6, !srcloc !137
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_cpg_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %rcdev, i32 0, i32 10
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %resets = getelementptr inbounds %struct.rzg2l_cpg_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resets, align 4
  %arrayidx = getelementptr %struct.rzg2l_reset, ptr %3, i32 %id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %bit = getelementptr %struct.rzg2l_reset, ptr %3, i32 %id, i32 1
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bit, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzg2l_cpg_assert.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rzg2l_cpg_assert, %if.then)) #6
          to label %do.body9 [label %if.then], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.reset_controller_dev, ptr %rcdev, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzg2l_cpg_assert.__UNIQUE_ID_ddebug191, ptr noundef %9, ptr noundef nonnull @.str.43, i32 noundef %id, i32 noundef %conv) #6
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  %conv4 = zext i8 %7 to i32
  %shl5 = shl i32 65536, %conv4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl5)
  %base = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %rcdev, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %10) #6, !srcloc !137
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_cpg_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %rcdev, i32 0, i32 10
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %resets = getelementptr inbounds %struct.rzg2l_cpg_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resets, align 4
  %arrayidx = getelementptr %struct.rzg2l_reset, ptr %3, i32 %id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %bit = getelementptr %struct.rzg2l_reset, ptr %3, i32 %id, i32 1
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bit, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzg2l_cpg_deassert.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rzg2l_cpg_deassert, %if.then)) #6
          to label %do.body9 [label %if.then], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.reset_controller_dev, ptr %rcdev, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzg2l_cpg_deassert.__UNIQUE_ID_ddebug192, ptr noundef %9, ptr noundef nonnull @.str.45, i32 noundef %id, i32 noundef %conv) #6
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  %conv4 = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv4
  %shl5 = shl i32 %shl, 16
  %or = or i32 %shl5, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %base = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %rcdev, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %10) #6, !srcloc !137
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_cpg_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %rcdev, i32 0, i32 10
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %resets = getelementptr inbounds %struct.rzg2l_cpg_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resets, align 4
  %arrayidx = getelementptr %struct.rzg2l_reset, ptr %3, i32 %id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %bit = getelementptr %struct.rzg2l_reset, ptr %3, i32 %id, i32 1
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bit, align 2
  %conv4 = zext i8 %7 to i32
  %base = getelementptr inbounds %struct.rzg2l_cpg_priv, ptr %rcdev, i32 0, i32 2
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add = add nuw nsw i32 %conv, 384
  %add.ptr5 = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  %11 = xor i32 %10, -1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = lshr i32 %12, %conv4
  %14 = and i32 %13, 1
  ret i32 %14
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !94, !96, !97, !98, !99, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__initcall__kmod_rzg2l_cpg__193_971_rzg2l_cpg_init4, !1, !"__initcall__kmod_rzg2l_cpg__193_971_rzg2l_cpg_init4", i1 false, i1 false}
!1 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 971, i32 1}
!2 = !{ptr @__UNIQUE_ID_description194, !3, !"__UNIQUE_ID_description194", i1 false, i1 false}
!3 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 973, i32 1}
!4 = !{ptr @__UNIQUE_ID_file195, !5, !"__UNIQUE_ID_file195", i1 false, i1 false}
!5 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 974, i32 1}
!6 = !{ptr @__UNIQUE_ID_license196, !5, !"__UNIQUE_ID_license196", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 961, i32 11}
!9 = !{ptr @rzg2l_cpg_driver, !10, !"rzg2l_cpg_driver", i1 false, i1 false}
!10 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 959, i32 31}
!11 = !{ptr @rzg2l_cpg_match, !12, !"rzg2l_cpg_match", i1 false, i1 false}
!12 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 949, i32 34}
!13 = !{ptr @rzg2l_cpg_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 903, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 440, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rzg2l_cpg_register_core_clk.__UNIQUE_ID_ddebug184, !17, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 445, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rzg2l_cpg_register_core_clk._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @rzg2l_cpg_register_core_clk._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rzg2l_cpg_pll_ops, !30, !"rzg2l_cpg_pll_ops", i1 false, i1 false}
!30 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 299, i32 29}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 253, i32 38}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 253, i32 46}
!35 = !{ptr @rzg2l_cpg_sd_clk_mux_ops, !36, !"rzg2l_cpg_sd_clk_mux_ops", i1 false, i1 false}
!36 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 230, i32 29}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 202, i32 4}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rzg2l_cpg_sd_clk_mux_set_parent._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @rzg2l_cpg_sd_clk_mux_set_parent._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 644, i32 4}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rzg2l_cpg_register_mod_clk.__UNIQUE_ID_ddebug188, !43, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 663, i32 2}
!48 = !{ptr @rzg2l_cpg_register_mod_clk.__UNIQUE_ID_ddebug189, !47, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!49 = !{ptr @rzg2l_cpg_register_mod_clk._entry, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 680, i32 2}
!51 = !{ptr @rzg2l_cpg_register_mod_clk._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rzg2l_mod_clock_ops, !54, !"rzg2l_mod_clock_ops", i1 false, i1 false}
!54 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 576, i32 29}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 482, i32 3}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rzg2l_mod_clock_endisable.__UNIQUE_ID_ddebug185, !56, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 486, i32 2}
!61 = !{ptr @rzg2l_mod_clock_endisable.__UNIQUE_ID_ddebug186, !60, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!62 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 508, i32 3}
!66 = !{ptr @rzg2l_mod_clock_endisable._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rzg2l_mod_clock_endisable._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 564, i32 3}
!70 = !{ptr @rzg2l_mod_clock_is_enabled.__UNIQUE_ID_ddebug187, !69, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 353, i32 4}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @rzg2l_cpg_clk_src_twocell_get._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @rzg2l_cpg_clk_src_twocell_get._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @rzg2l_cpg_clk_src_twocell_get._entry.27, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 362, i32 4}
!78 = !{ptr @rzg2l_cpg_clk_src_twocell_get._entry_ptr.28, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 370, i32 3}
!81 = !{ptr @rzg2l_cpg_clk_src_twocell_get._entry.29, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @rzg2l_cpg_clk_src_twocell_get._entry_ptr.31, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 375, i32 3}
!85 = !{ptr @rzg2l_cpg_clk_src_twocell_get._entry.32, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rzg2l_cpg_clk_src_twocell_get._entry_ptr.34, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 378, i32 3}
!89 = !{ptr @rzg2l_cpg_clk_src_twocell_get.__UNIQUE_ID_ddebug183, !88, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 807, i32 41}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 807, i32 51}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 827, i32 5}
!96 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @rzg2l_cpg_attach_dev._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @rzg2l_cpg_attach_dev._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @rzg2l_cpg_reset_ops, !100, !"rzg2l_cpg_reset_ops", i1 false, i1 false}
!100 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 750, i32 39}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 695, i32 2}
!103 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rzg2l_cpg_reset.__UNIQUE_ID_ddebug190, !102, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 717, i32 2}
!107 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @rzg2l_cpg_assert.__UNIQUE_ID_ddebug191, !106, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 732, i32 2}
!111 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @rzg2l_cpg_deassert.__UNIQUE_ID_ddebug192, !110, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/renesas/rzg2l-cpg.c", i32 765, i32 3}
!115 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @rzg2l_cpg_reset_xlate._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @rzg2l_cpg_reset_xlate._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{i64 2148743955, i64 2148743960, i64 2148743973, i64 2148744017, i64 2148744051, i64 2148744072}
!129 = !{!"auto-init"}
!130 = !{i8 0, i8 2}
!131 = !{i64 5015783}
!132 = !{i64 2153066034}
!133 = !{i64 2153066668}
!134 = !{!"branch_weights", i32 2000, i32 1}
!135 = !{i64 2148652674, i64 2148652954, i64 2148653288, i64 2148653622}
!136 = !{i64 2153056394}
!137 = !{i64 5015365}
!138 = !{i64 2153058446}
!139 = !{i64 2153058944}
!140 = !{i64 2153060832}
!141 = !{i64 2153062885}
!142 = !{i64 2153106708}
!143 = !{i64 2153096775}
!144 = !{i64 2153097517}
!145 = !{i64 2153097792}
!146 = !{i64 2153097634}
!147 = !{i64 2153118957}
!148 = !{i64 2153119906}
!149 = !{i64 2153124063}
!150 = !{i64 2153128237}
!151 = !{i64 2153130337}
