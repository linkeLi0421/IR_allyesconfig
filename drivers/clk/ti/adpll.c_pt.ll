; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/adpll.c_pt.bc'
source_filename = "../drivers/clk/ti/adpll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_adpll_platform_data = type { i8, i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.ti_adpll_data = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.spinlock, [3 x ptr], [3 x ptr], ptr, %struct.clk_onecell_data, %struct.ti_adpll_dco_data }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.ti_adpll_dco_data = type { %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ti_adpll_clock = type { ptr, ptr, ptr }
%struct.ti_adpll_clkout_data = type { ptr, %struct.clk_gate, %struct.clk_hw }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }

@__initcall__kmod_adpll__183_965_ti_adpll_init1 = internal global ptr @ti_adpll_init, section ".initcall1.init", align 4
@ti_adpll_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_adpll_probe, ptr @ti_adpll_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_adpll_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_adpll_exit = internal global ptr @ti_adpll_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [48 x i8] c"adpll.description=Clock driver for dm814x ADPLL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias185 = internal constant [39 x i8] c"adpll.alias=platform:dm814-adpll-clock\00", section ".modinfo", align 1
@__UNIQUE_ID_author186 = internal constant [46 x i8] c"adpll.author=Tony LIndgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [32 x i8] c"adpll.file=drivers/clk/ti/adpll\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [21 x i8] c"adpll.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti-adpll\00", [23 x i8] zeroinitializer }, align 32
@ti_adpll_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-adpll-s-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_adpll_type_s }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-adpll-lj-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_adpll_type_lj }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ti_adpll_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&d->lock\00", [23 x i8] zeroinitializer }, align 32
@ti_adpll_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 919, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not register dco: %i\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti_adpll_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/clk/ti/adpll.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_adpll_probe._entry_ptr = internal global ptr @ti_adpll_probe._entry, section ".printk_index", align 4
@ti_adpll_init_inputs.error = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"need at least %i inputs\00", [40 x i8] zeroinitializer }, align 32
@ti_adpll_init_inputs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.7, ptr @.str.4, i32 816, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti_adpll_init_inputs\00", [43 x i8] zeroinitializer }, align 32
@ti_adpll_init_inputs._entry_ptr = internal global ptr @ti_adpll_init_inputs._entry, section ".printk_index", align 4
@ti_adpll_init_inputs._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.4, i32 823, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"could not get clkinp\0A\00", [42 x i8] zeroinitializer }, align 32
@ti_adpll_init_inputs._entry_ptr.10 = internal global ptr @ti_adpll_init_inputs._entry.8, section ".printk_index", align 4
@ti_adpll_init_inputs._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.4, i32 830, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not get clkinpulow clock\0A\00", [32 x i8] zeroinitializer }, align 32
@ti_adpll_init_inputs._entry_ptr.13 = internal global ptr @ti_adpll_init_inputs._entry.11, section ".printk_index", align 4
@ti_adpll_init_inputs._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.4, i32 838, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not get clkinphif clock\0A\00", [33 x i8] zeroinitializer }, align 32
@ti_adpll_init_inputs._entry_ptr.16 = internal global ptr @ti_adpll_init_inputs._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dco\00", [28 x i8] zeroinitializer }, align 32
@ti_adpll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @ti_adpll_prepare, ptr @ti_adpll_unprepare, ptr @ti_adpll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ti_adpll_recalc_rate, ptr null, ptr null, ptr null, ptr @ti_adpll_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"n2\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%08lx.adpll.%s\00", [17 x i8] zeroinitializer }, align 32
@ti_adpll_wait_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 409, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pll failed to lock\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti_adpll_wait_lock\00", [45 x i8] zeroinitializer }, align 32
@ti_adpll_wait_lock._entry_ptr = internal global ptr @ti_adpll_wait_lock._entry, section ".printk_index", align 4
@ti_adpll_init_divider._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 263, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register divider %s: %li\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti_adpll_init_divider\00", [42 x i8] zeroinitializer }, align 32
@ti_adpll_init_divider._entry_ptr = internal global ptr @ti_adpll_init_divider._entry, section ".printk_index", align 4
@ti_adpll_setup_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 222, ptr @.str.27, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"clock %s con_id lookup may fail\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti_adpll_setup_clock\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ti_adpll_setup_clock._entry_ptr = internal global ptr @ti_adpll_setup_clock._entry, section ".printk_index", align 4
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll%03lx%s\00", [21 x i8] zeroinitializer }, align 32
@ti_adpll_setup_clock._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.26, ptr @.str.4, i32 229, ptr @.str.27, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no con_id for clock %s\0A\00", [40 x i8] zeroinitializer }, align 32
@ti_adpll_setup_clock._entry_ptr.31 = internal global ptr @ti_adpll_setup_clock._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bypass\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"m2\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"div2\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkout\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clkout2\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hif\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"m3\00", [29 x i8] zeroinitializer }, align 32
@ti_adpll_init_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 291, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register mux %s: %li\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti_adpll_init_mux\00", [46 x i8] zeroinitializer }, align 32
@ti_adpll_init_mux._entry_ptr = internal global ptr @ti_adpll_init_mux._entry, section ".printk_index", align 4
@ti_adpll_init_clkout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 632, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register output %s: %li\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti_adpll_init_clkout\00", [43 x i8] zeroinitializer }, align 32
@ti_adpll_init_clkout._entry_ptr = internal global ptr @ti_adpll_init_clkout._entry, section ".printk_index", align 4
@clk_gate_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clkdcoldo\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clkoutldo\00", [22 x i8] zeroinitializer }, align 32
@ti_adpll_init_gate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 321, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register gate %s: %li\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti_adpll_init_gate\00", [45 x i8] zeroinitializer }, align 32
@ti_adpll_init_gate._entry_ptr = internal global ptr @ti_adpll_init_gate._entry, section ".printk_index", align 4
@ti_adpll_type_s = internal constant { %struct.ti_adpll_platform_data, [16 x i8] } { %struct.ti_adpll_platform_data { i8 1, i32 3, i32 4, i32 0 }, [16 x i8] zeroinitializer }, align 32
@ti_adpll_type_lj = internal constant { %struct.ti_adpll_platform_data, [16 x i8] } { %struct.ti_adpll_platform_data { i8 0, i32 2, i32 3, i32 -22 }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"ti_adpll_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 952, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 954, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"ti_adpll_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 861, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 891, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 919, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 810, i32 20 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 816, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 823, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 830, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 838, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 506, i32 13 }
@___asan_gen_.110 = private unnamed_addr constant [13 x i8] c"ti_adpll_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 483, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 526, i32 55 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 191, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 197, i32 45 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 409, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 262, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 221, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 223, i32 24 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 229, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 648, i32 46 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 657, i32 55 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 667, i32 53 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 675, i32 32 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 683, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 690, i32 44 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 700, i32 68 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 290, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 631, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 723, i32 6 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 741, i32 6 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 320, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [16 x i8] c"ti_adpll_type_s\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 847, i32 44 }
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"ti_adpll_type_lj\00", align 1
@___asan_gen_.219 = private constant [26 x i8] c"../drivers/clk/ti/adpll.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 854, i32 44 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_alias185, ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_ti_adpll_exit, ptr @__initcall__kmod_adpll__183_965_ti_adpll_init1, ptr @ti_adpll_exit, ptr @ti_adpll_init_clkout._entry, ptr @ti_adpll_init_clkout._entry_ptr, ptr @ti_adpll_init_divider._entry, ptr @ti_adpll_init_divider._entry_ptr, ptr @ti_adpll_init_gate._entry, ptr @ti_adpll_init_gate._entry_ptr, ptr @ti_adpll_init_inputs._entry, ptr @ti_adpll_init_inputs._entry.11, ptr @ti_adpll_init_inputs._entry.14, ptr @ti_adpll_init_inputs._entry.8, ptr @ti_adpll_init_inputs._entry_ptr, ptr @ti_adpll_init_inputs._entry_ptr.10, ptr @ti_adpll_init_inputs._entry_ptr.13, ptr @ti_adpll_init_inputs._entry_ptr.16, ptr @ti_adpll_init_mux._entry, ptr @ti_adpll_init_mux._entry_ptr, ptr @ti_adpll_probe._entry, ptr @ti_adpll_probe._entry_ptr, ptr @ti_adpll_setup_clock._entry, ptr @ti_adpll_setup_clock._entry.29, ptr @ti_adpll_setup_clock._entry_ptr, ptr @ti_adpll_setup_clock._entry_ptr.31, ptr @ti_adpll_wait_lock._entry, ptr @ti_adpll_wait_lock._entry_ptr, ptr @ti_adpll_driver, ptr @.str, ptr @ti_adpll_match, ptr @ti_adpll_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ti_adpll_init_inputs.error, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @ti_adpll_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @ti_adpll_type_s, ptr @ti_adpll_type_lj], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_init_inputs.error to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_init_inputs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_init_inputs._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_init_inputs._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_init_inputs._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_wait_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_init_divider._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_setup_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_setup_clock._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_init_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_init_clkout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_init_gate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_type_s to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adpll_type_lj to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_adpll_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_adpll_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_adpll_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_adpll_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_adpll_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %name.i.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_device(ptr noundef nonnull @ti_adpll_match, ptr noundef %dev) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #9
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.then
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %np = getelementptr inbounds %struct.ti_adpll_data, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %np, align 4
  %c = getelementptr inbounds %struct.ti_adpll_data, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %c, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.ti_adpll_data, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ti_adpll_probe.__key, i16 noundef signext 3) #9
  %call10 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call10, align 4
  %pa = getelementptr inbounds %struct.ti_adpll_data, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %pa to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pa, align 4
  %call14 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call10) #9
  %iobase = getelementptr inbounds %struct.ti_adpll_data, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %iobase, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %13 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %c, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end20.ti_adpll_init_registers.exit_crit_edge, label %if.then.i

if.end20.ti_adpll_init_registers.exit_crit_edge:  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_init_registers.exit

if.then.i:                                        ; preds = %if.end20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call14) #9, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 1683690015, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 1683690015
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.ti_adpll_init_registers.exit_crit_edge

if.then.i.ti_adpll_init_registers.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_init_registers.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call14, i32 1028446750) #9, !srcloc !128
  br label %ti_adpll_init_registers.exit

ti_adpll_init_registers.exit:                     ; preds = %if.then.i.i, %if.then.i.ti_adpll_init_registers.exit_crit_edge, %if.end20.ti_adpll_init_registers.exit_crit_edge
  %register_offset.0.i = phi i32 [ 0, %if.end20.ti_adpll_init_registers.exit_crit_edge ], [ 8, %if.then.i.ti_adpll_init_registers.exit_crit_edge ], [ 8, %if.then.i.i ]
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase, align 4
  %add.ptr2.i = getelementptr i8, ptr %19, i32 %register_offset.0.i
  %regs.i = getelementptr inbounds %struct.ti_adpll_data, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr2.i, ptr %regs.i, align 4
  %21 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %np, align 4
  %call.i121 = tail call i32 @of_clk_get_parent_count(ptr noundef %22) #9
  %23 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %c, align 4
  %nr_max_inputs.i = getelementptr inbounds %struct.ti_adpll_platform_data, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %nr_max_inputs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_max_inputs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i121, i32 %26)
  %cmp.i123 = icmp slt i32 %call.i121, %26
  br i1 %cmp.i123, label %ti_adpll_init_inputs.exit.thread155, label %if.end2.i

ti_adpll_init_inputs.exit.thread155:              ; preds = %ti_adpll_init_registers.exit
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @ti_adpll_init_inputs.error, i32 noundef %call.i121) #12
  br label %cleanup

if.end2.i:                                        ; preds = %ti_adpll_init_registers.exit
  %29 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %np, align 4
  %parent_names.i = getelementptr inbounds %struct.ti_adpll_data, ptr %call.i, i32 0, i32 7
  %call4.i = tail call i32 @of_clk_parent_fill(ptr noundef %30, ptr noundef %parent_names.i, i32 noundef %call.i121) #9
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %33 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent_names.i, align 4
  %call7.i = tail call ptr @devm_clk_get(ptr noundef %32, ptr noundef %34) #9
  %cmp.i.i124 = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i124, label %if.end2.i.ti_adpll_init_inputs.exit_crit_edge, label %if.end15.i

if.end2.i.ti_adpll_init_inputs.exit_crit_edge:    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_init_inputs.exit

if.end15.i:                                       ; preds = %if.end2.i
  %parent_clocks.i = getelementptr inbounds %struct.ti_adpll_data, ptr %call.i, i32 0, i32 8
  %35 = ptrtoint ptr %parent_clocks.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i, ptr %parent_clocks.i, align 4
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %arrayidx19.i = getelementptr %struct.ti_adpll_data, ptr %call.i, i32 0, i32 7, i32 1
  %38 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx19.i, align 4
  %call20.i = tail call ptr @devm_clk_get(ptr noundef %37, ptr noundef %39) #9
  %cmp.i76.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76.i, label %if.end15.i.ti_adpll_init_inputs.exit_crit_edge, label %if.end28.i

if.end15.i.ti_adpll_init_inputs.exit_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_init_inputs.exit

if.end28.i:                                       ; preds = %if.end15.i
  %arrayidx30.i = getelementptr %struct.ti_adpll_data, ptr %call.i, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call20.i, ptr %arrayidx30.i, align 4
  %41 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %c, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i125 = icmp eq i8 %44, 0
  br i1 %tobool.not.i125, label %if.end28.i.if.end28_crit_edge, label %if.then32.i

if.end28.i.if.end28_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then32.i:                                      ; preds = %if.end28.i
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %arrayidx35.i = getelementptr %struct.ti_adpll_data, ptr %call.i, i32 0, i32 7, i32 2
  %47 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx35.i, align 4
  %call36.i = tail call ptr @devm_clk_get(ptr noundef %46, ptr noundef %48) #9
  %cmp.i77.i = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77.i, label %if.then32.i.ti_adpll_init_inputs.exit_crit_edge, label %if.end44.i

if.then32.i.ti_adpll_init_inputs.exit_crit_edge:  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_init_inputs.exit

if.end44.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx46.i = getelementptr %struct.ti_adpll_data, ptr %call.i, i32 0, i32 8, i32 2
  %49 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call36.i, ptr %arrayidx46.i, align 4
  br label %if.end28

ti_adpll_init_inputs.exit:                        ; preds = %if.then32.i.ti_adpll_init_inputs.exit_crit_edge, %if.end15.i.ti_adpll_init_inputs.exit_crit_edge, %if.end2.i.ti_adpll_init_inputs.exit_crit_edge
  %.str.9.sink = phi ptr [ @.str.9, %if.end2.i.ti_adpll_init_inputs.exit_crit_edge ], [ @.str.12, %if.end15.i.ti_adpll_init_inputs.exit_crit_edge ], [ @.str.15, %if.then32.i.ti_adpll_init_inputs.exit_crit_edge ]
  %retval.0.i.in = phi ptr [ %call7.i, %if.end2.i.ti_adpll_init_inputs.exit_crit_edge ], [ %call20.i, %if.end15.i.ti_adpll_init_inputs.exit_crit_edge ], [ %call36.i, %if.then32.i.ti_adpll_init_inputs.exit_crit_edge ]
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull %.str.9.sink) #12
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end44.i, %if.end28.i.if.end28_crit_edge
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %53, i32 noundef 132, i32 noundef 3520) #9
  %clocks = getelementptr inbounds %struct.ti_adpll_data, ptr %call.i, i32 0, i32 9
  %54 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call5.i.i, ptr %clocks, align 4
  %tobool32.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool32.not, label %if.end28.cleanup_crit_edge, label %if.end34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #9
  %55 = getelementptr inbounds i8, ptr %init.i, i32 12
  %56 = call ptr @memset(ptr %55, i32 255, i32 12)
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %58, i32 noundef 16, i32 noundef 3520) #9
  %outputs.i = getelementptr inbounds %struct.ti_adpll_data, ptr %call.i, i32 0, i32 10
  %59 = ptrtoint ptr %outputs.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call5.i.i.i, ptr %outputs.i, align 4
  %tobool.not.i126 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i126, label %if.end34.ti_adpll_init_dco.exit.thread_crit_edge, label %if.end.i

if.end34.ti_adpll_init_dco.exit.thread_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_init_dco.exit.thread

if.end.i:                                         ; preds = %if.end34
  %60 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %c, align 4
  %output_index.i = getelementptr inbounds %struct.ti_adpll_platform_data, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %output_index.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %output_index.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i.i) #9
  %64 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %name.i.i, align 4, !annotation !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp.i.i128 = icmp sgt i32 %63, -1
  br i1 %cmp.i.i128, label %if.then.i.i129, label %if.else.i.i

if.then.i.i129:                                   ; preds = %if.end.i
  %65 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %np, align 4
  %call.i.i.i = call i32 @of_property_read_string_helper(ptr noundef %66, ptr noundef nonnull @.str.19, ptr noundef nonnull %name.i.i, i32 noundef 1, i32 noundef %63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i.i, label %ti_adpll_clk_get_name.exitthread-pre-split.i, label %ti_adpll_clk_get_name.exit.thread.i

ti_adpll_clk_get_name.exit.thread.i:              ; preds = %if.then.i.i129
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i.i) #9
  br label %ti_adpll_init_dco.exit.thread

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i, align 4
  %69 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pa, align 4
  %call2.i.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %68, i32 noundef 3264, ptr noundef nonnull @.str.20, i32 noundef %70, ptr noundef nonnull @.str.17) #9
  br label %ti_adpll_clk_get_name.exit.i

ti_adpll_clk_get_name.exitthread-pre-split.i:     ; preds = %if.then.i.i129
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pr.i = load ptr, ptr %name.i.i, align 4
  br label %ti_adpll_clk_get_name.exit.i

ti_adpll_clk_get_name.exit.i:                     ; preds = %ti_adpll_clk_get_name.exitthread-pre-split.i, %if.else.i.i
  %72 = phi ptr [ %.pr.i, %ti_adpll_clk_get_name.exitthread-pre-split.i ], [ %call2.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i.i) #9
  %73 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %init.i, align 4
  %tobool9.not.i = icmp eq ptr %72, null
  br i1 %tobool9.not.i, label %ti_adpll_clk_get_name.exit.i.ti_adpll_init_dco.exit.thread_crit_edge, label %if.end11.i

ti_adpll_clk_get_name.exit.i.ti_adpll_init_dco.exit.thread_crit_edge: ; preds = %ti_adpll_clk_get_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_init_dco.exit.thread

if.end11.i:                                       ; preds = %ti_adpll_clk_get_name.exit.i
  %parent_names12.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %74 = ptrtoint ptr %parent_names12.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %parent_names.i, ptr %parent_names12.i, align 4
  %75 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %c, align 4
  %nr_max_inputs.i131 = getelementptr inbounds %struct.ti_adpll_platform_data, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %nr_max_inputs.i131 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nr_max_inputs.i131, align 4
  %conv.i = trunc i32 %78 to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %79 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %80 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @ti_adpll_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 64, ptr %flags.i, align 4
  %init14.i = getelementptr inbounds %struct.ti_adpll_data, ptr %call.i, i32 0, i32 11, i32 0, i32 2
  %82 = ptrtoint ptr %init14.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %init.i, ptr %init14.i, align 4
  %83 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %76, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool16.not.i = icmp eq i8 %84, 0
  %..i = select i1 %tobool16.not.i, i8 4, i8 5
  %85 = ptrtoint ptr %parent_clocks.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %parent_clocks.i, align 4
  %87 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %88, i32 20
  %call21.i = call fastcc i32 @ti_adpll_init_divider(ptr noundef nonnull %call.i, i32 noundef 2, i32 noundef -19, ptr noundef nonnull @.str.18, ptr noundef %86, ptr noundef %add.ptr.i, i8 noundef zeroext 16, i8 noundef zeroext %..i, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end11.i.ti_adpll_init_dco.exit.thread_crit_edge

if.end11.i.ti_adpll_init_dco.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_init_dco.exit.thread

if.end24.i:                                       ; preds = %if.end11.i
  %dco.i = getelementptr inbounds %struct.ti_adpll_data, ptr %call.i, i32 0, i32 11
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call.i, align 4
  %call28.i = call ptr @devm_clk_register(ptr noundef %90, ptr noundef %dco.i) #9
  %cmp.i60.i = icmp ugt ptr %call28.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.i, label %if.then30.i, label %if.end32.i

if.then30.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %call28.i to i32
  br label %ti_adpll_init_dco.exit

if.end32.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %c, align 4
  %output_index34.i = getelementptr inbounds %struct.ti_adpll_platform_data, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %output_index34.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %output_index34.i, align 4
  %96 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %init.i, align 4
  %call36.i134 = call fastcc i32 @ti_adpll_setup_clock(ptr noundef nonnull %call.i, ptr noundef %call28.i, i32 noundef 0, i32 noundef %95, ptr noundef %97, ptr noundef null) #9
  br label %ti_adpll_init_dco.exit

ti_adpll_init_dco.exit.thread:                    ; preds = %if.end11.i.ti_adpll_init_dco.exit.thread_crit_edge, %ti_adpll_clk_get_name.exit.i.ti_adpll_init_dco.exit.thread_crit_edge, %ti_adpll_clk_get_name.exit.thread.i, %if.end34.ti_adpll_init_dco.exit.thread_crit_edge
  %retval.0.i135.ph = phi i32 [ -22, %ti_adpll_clk_get_name.exit.thread.i ], [ %call21.i, %if.end11.i.ti_adpll_init_dco.exit.thread_crit_edge ], [ -22, %ti_adpll_clk_get_name.exit.i.ti_adpll_init_dco.exit.thread_crit_edge ], [ -12, %if.end34.ti_adpll_init_dco.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  br label %do.end40

ti_adpll_init_dco.exit:                           ; preds = %if.end32.i, %if.then30.i
  %retval.0.i135 = phi i32 [ %91, %if.then30.i ], [ %call36.i134, %if.end32.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i135)
  %tobool36.not = icmp eq i32 %retval.0.i135, 0
  br i1 %tobool36.not, label %if.end41, label %ti_adpll_init_dco.exit.do.end40_crit_edge

ti_adpll_init_dco.exit.do.end40_crit_edge:        ; preds = %ti_adpll_init_dco.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

do.end40:                                         ; preds = %ti_adpll_init_dco.exit.do.end40_crit_edge, %ti_adpll_init_dco.exit.thread
  %retval.0.i135160 = phi i32 [ %retval.0.i135.ph, %ti_adpll_init_dco.exit.thread ], [ %retval.0.i135, %ti_adpll_init_dco.exit.do.end40_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i135160) #12
  br label %do.end62

if.end41:                                         ; preds = %ti_adpll_init_dco.exit
  %98 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %c, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i137 = icmp eq i8 %101, 0
  br i1 %tobool.not.i137, label %if.end41.if.end45_crit_edge, label %if.end.i141

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end.i141:                                      ; preds = %if.end41
  %102 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %clocks, align 4
  %arrayidx.i = getelementptr %struct.ti_adpll_clock, ptr %103, i32 2
  %104 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i, align 4
  %106 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx30.i, align 4
  %108 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i, align 4
  %add.ptr.i139 = getelementptr i8, ptr %109, i32 4
  %call.i140 = call fastcc i32 @ti_adpll_init_mux(ptr noundef nonnull %call.i, i32 noundef 5, ptr noundef nonnull @.str.32, ptr noundef %105, ptr noundef %107, ptr noundef %add.ptr.i139, i8 noundef zeroext 18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool2.not.i = icmp eq i32 %call.i140, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i141.do.end62_crit_edge

if.end.i141.do.end62_crit_edge:                   ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

if.end4.i:                                        ; preds = %if.end.i141
  %110 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %clocks, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %114 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %115, i32 16
  %call10.i = call fastcc i32 @ti_adpll_init_divider(ptr noundef nonnull %call.i, i32 noundef 3, i32 noundef -19, ptr noundef nonnull @.str.33, ptr noundef %113, ptr noundef %add.ptr9.i, i8 noundef zeroext 16, i8 noundef zeroext 5, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end4.i.do.end62_crit_edge

if.end4.i.do.end62_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

if.end13.i:                                       ; preds = %if.end4.i
  %116 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %clocks, align 4
  %arrayidx15.i = getelementptr %struct.ti_adpll_clock, ptr %117, i32 3
  %118 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx15.i, align 4
  %120 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %call.i, align 4
  %122 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pa, align 4
  %call2.i.i.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %121, i32 noundef 3264, ptr noundef nonnull @.str.20, i32 noundef %123, ptr noundef nonnull @.str.34) #9
  %tobool.not.i.i142 = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not.i.i142, label %if.end13.i.do.end62_crit_edge, label %if.end.i.i

if.end13.i.do.end62_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

if.end.i.i:                                       ; preds = %if.end13.i
  %call1.i.i = call ptr @__clk_get_name(ptr noundef %119) #9
  %124 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call.i, align 4
  %call2.i.i143 = call ptr @clk_register_fixed_factor(ptr noundef %125, ptr noundef nonnull %call2.i.i.i, ptr noundef %call1.i.i, i32 noundef 0, i32 noundef 1, i32 noundef 2) #9
  %cmp.i.i.i = icmp ugt ptr %call2.i.i143, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then4.i.i, label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %call2.i.i143 to i32
  br label %ti_adpll_init_fixed_factor.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i.i = call fastcc i32 @ti_adpll_setup_clock(ptr noundef nonnull %call.i, ptr noundef %call2.i.i143, i32 noundef 7, i32 noundef -19, ptr noundef nonnull %call2.i.i.i, ptr noundef nonnull @clk_unregister) #9
  br label %ti_adpll_init_fixed_factor.exit.i

ti_adpll_init_fixed_factor.exit.i:                ; preds = %if.end6.i.i, %if.then4.i.i
  %retval.0.i.i = phi i32 [ %126, %if.then4.i.i ], [ %call7.i.i, %if.end6.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool18.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %ti_adpll_init_fixed_factor.exit.i.do.end62_crit_edge

ti_adpll_init_fixed_factor.exit.i.do.end62_crit_edge: ; preds = %ti_adpll_init_fixed_factor.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

if.end20.i:                                       ; preds = %ti_adpll_init_fixed_factor.exit.i
  %127 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %clocks, align 4
  %arrayidx22.i = getelementptr %struct.ti_adpll_clock, ptr %128, i32 7
  %129 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx22.i, align 4
  %arrayidx25.i = getelementptr %struct.ti_adpll_clock, ptr %128, i32 5
  %131 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx25.i, align 4
  %call27.i = call fastcc i32 @ti_adpll_init_clkout(ptr noundef nonnull %call.i, i32 noundef 8, i32 noundef 1, i32 noundef 20, ptr noundef nonnull @.str.35, ptr noundef %130, ptr noundef %132) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end20.i.do.end62_crit_edge

if.end20.i.do.end62_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

if.end30.i:                                       ; preds = %if.end20.i
  %133 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %clocks, align 4
  %arrayidx32.i = getelementptr %struct.ti_adpll_clock, ptr %134, i32 3
  %135 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx35.i144 = getelementptr %struct.ti_adpll_clock, ptr %134, i32 5
  %137 = ptrtoint ptr %arrayidx35.i144 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx35.i144, align 4
  %call37.i = call fastcc i32 @ti_adpll_init_clkout(ptr noundef nonnull %call.i, i32 noundef 9, i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef %136, ptr noundef %138) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end30.i.do.end62_crit_edge

if.end30.i.do.end62_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

if.end40.i:                                       ; preds = %if.end30.i
  %arrayidx42.i = getelementptr %struct.ti_adpll_data, ptr %call.i, i32 0, i32 8, i32 2
  %139 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx42.i, align 4
  %tobool43.not.i = icmp eq ptr %140, null
  br i1 %tobool43.not.i, label %if.end40.i.ti_adpll_init_children_adpll_s.exit_crit_edge, label %if.then44.i

if.end40.i.ti_adpll_init_children_adpll_s.exit_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_init_children_adpll_s.exit

if.then44.i:                                      ; preds = %if.end40.i
  %141 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %clocks, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %145 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs.i, align 4
  %add.ptr51.i = getelementptr i8, ptr %146, i32 4
  %call52.i = call fastcc i32 @ti_adpll_init_mux(ptr noundef nonnull %call.i, i32 noundef 6, ptr noundef nonnull @.str.37, ptr noundef %144, ptr noundef nonnull %140, ptr noundef %add.ptr51.i, i8 noundef zeroext 19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.then44.i.ti_adpll_init_children_adpll_s.exit_crit_edge, label %if.then44.i.do.end62_crit_edge

if.then44.i.do.end62_crit_edge:                   ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

if.then44.i.ti_adpll_init_children_adpll_s.exit_crit_edge: ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_init_children_adpll_s.exit

ti_adpll_init_children_adpll_s.exit:              ; preds = %if.then44.i.ti_adpll_init_children_adpll_s.exit_crit_edge, %if.end40.i.ti_adpll_init_children_adpll_s.exit_crit_edge
  %147 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %clocks, align 4
  %arrayidx58.i = getelementptr %struct.ti_adpll_clock, ptr %148, i32 6
  %149 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx58.i, align 4
  %151 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i, align 4
  %add.ptr61.i = getelementptr i8, ptr %152, i32 40
  %call62.i = call fastcc i32 @ti_adpll_init_divider(ptr noundef nonnull %call.i, i32 noundef 10, i32 noundef 3, ptr noundef nonnull @.str.38, ptr noundef %150, ptr noundef %add.ptr61.i, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool43.not = icmp eq i32 %call62.i, 0
  br i1 %tobool43.not, label %ti_adpll_init_children_adpll_s.exit.if.end45_crit_edge, label %ti_adpll_init_children_adpll_s.exit.do.end62_crit_edge

ti_adpll_init_children_adpll_s.exit.do.end62_crit_edge: ; preds = %ti_adpll_init_children_adpll_s.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

ti_adpll_init_children_adpll_s.exit.if.end45_crit_edge: ; preds = %ti_adpll_init_children_adpll_s.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end45:                                         ; preds = %ti_adpll_init_children_adpll_s.exit.if.end45_crit_edge, %if.end41.if.end45_crit_edge
  %call46 = call fastcc i32 @ti_adpll_init_children_adpll_lj(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.do.end62_crit_edge

if.end45.do.end62_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

if.end49:                                         ; preds = %if.end45
  %153 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %np, align 4
  %call51 = call i32 @of_clk_add_provider(ptr noundef %154, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %outputs.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end49.cleanup_crit_edge, label %if.end49.do.end62_crit_edge

if.end49.do.end62_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end62:                                         ; preds = %if.end49.do.end62_crit_edge, %if.end45.do.end62_crit_edge, %ti_adpll_init_children_adpll_s.exit.do.end62_crit_edge, %if.then44.i.do.end62_crit_edge, %if.end30.i.do.end62_crit_edge, %if.end20.i.do.end62_crit_edge, %ti_adpll_init_fixed_factor.exit.i.do.end62_crit_edge, %if.end13.i.do.end62_crit_edge, %if.end4.i.do.end62_crit_edge, %if.end.i141.do.end62_crit_edge, %do.end40
  %err.0 = phi i32 [ %retval.0.i135160, %do.end40 ], [ %call62.i, %ti_adpll_init_children_adpll_s.exit.do.end62_crit_edge ], [ %call46, %if.end45.do.end62_crit_edge ], [ %call51, %if.end49.do.end62_crit_edge ], [ -12, %if.end13.i.do.end62_crit_edge ], [ %call52.i, %if.then44.i.do.end62_crit_edge ], [ %call37.i, %if.end30.i.do.end62_crit_edge ], [ %call27.i, %if.end20.i.do.end62_crit_edge ], [ %retval.0.i.i, %ti_adpll_init_fixed_factor.exit.i.do.end62_crit_edge ], [ %call10.i, %if.end4.i.do.end62_crit_edge ], [ %call.i140, %if.end.i141.do.end62_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 937, i32 noundef 9, ptr noundef null) #9
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %do.end62
  %i.019.i = phi i32 [ 10, %do.end62 ], [ %dec.i, %cleanup.i.for.body.i_crit_edge ]
  %155 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %clocks, align 4
  %arrayidx.i147 = getelementptr %struct.ti_adpll_clock, ptr %156, i32 %i.019.i
  %tobool.not.i148 = icmp eq ptr %arrayidx.i147, null
  br i1 %tobool.not.i148, label %for.body.i.cleanup.i_crit_edge, label %lor.lhs.false.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %157 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx.i147, align 4
  %tobool.not.i.i149 = icmp eq ptr %158, null
  %cmp.i.i150 = icmp ugt ptr %158, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i149, %cmp.i.i150
  br i1 %spec.select.i.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %if.end.i151

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i151:                                      ; preds = %lor.lhs.false.i
  %cl.i = getelementptr %struct.ti_adpll_clock, ptr %156, i32 %i.019.i, i32 1
  %159 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cl.i, align 4
  %tobool1.not.i = icmp eq ptr %160, null
  br i1 %tobool1.not.i, label %if.end.i151.if.end4.i152_crit_edge, label %if.then2.i

if.end.i151.if.end4.i152_crit_edge:               ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i152

if.then2.i:                                       ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #11
  call void @clkdev_drop(ptr noundef nonnull %160) #9
  br label %if.end4.i152

if.end4.i152:                                     ; preds = %if.then2.i, %if.end.i151.if.end4.i152_crit_edge
  %unregister.i = getelementptr %struct.ti_adpll_clock, ptr %156, i32 %i.019.i, i32 2
  %161 = ptrtoint ptr %unregister.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %unregister.i, align 4
  %tobool5.not.i = icmp eq ptr %162, null
  br i1 %tobool5.not.i, label %if.end4.i152.cleanup.i_crit_edge, label %if.then6.i

if.end4.i152.cleanup.i_crit_edge:                 ; preds = %if.end4.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then6.i:                                       ; preds = %if.end4.i152
  call void @__sanitizer_cov_trace_pc() #11
  %163 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx.i147, align 4
  call void %162(ptr noundef %164) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then6.i, %if.end4.i152.cleanup.i_crit_edge, %lor.lhs.false.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %dec.i = add nsw i32 %i.019.i, -1
  %cmp.not.i = icmp eq i32 %i.019.i, 0
  br i1 %cmp.not.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.i.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %ti_adpll_init_inputs.exit, %ti_adpll_init_inputs.exit.thread155, %if.then17, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then17 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ], [ %retval.0.i, %ti_adpll_init_inputs.exit ], [ -12, %if.end28.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ -22, %ti_adpll_init_inputs.exit.thread155 ], [ %err.0, %cleanup.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_adpll_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clocks.i = getelementptr inbounds %struct.ti_adpll_data, ptr %1, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry
  %i.019.i = phi i32 [ 10, %entry ], [ %dec.i, %cleanup.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clocks.i, align 4
  %arrayidx.i = getelementptr %struct.ti_adpll_clock, ptr %3, i32 %i.019.i
  %tobool.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %lor.lhs.false.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cl.i = getelementptr %struct.ti_adpll_clock, ptr %3, i32 %i.019.i, i32 1
  %6 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clkdev_drop(ptr noundef nonnull %7) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %unregister.i = getelementptr %struct.ti_adpll_clock, ptr %3, i32 %i.019.i, i32 2
  %8 = ptrtoint ptr %unregister.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unregister.i, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.end4.i.cleanup.i_crit_edge, label %if.then6.i

if.end4.i.cleanup.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void %9(ptr noundef %11) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then6.i, %if.end4.i.cleanup.i_crit_edge, %lor.lhs.false.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %dec.i = add nsw i32 %i.019.i, -1
  %cmp.not.i = icmp eq i32 %i.019.i, 0
  br i1 %cmp.not.i, label %ti_adpll_free_resources.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ti_adpll_free_resources.exit:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_adpll_init_children_adpll_lj(ptr noundef %d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %clocks = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 9
  %4 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clocks, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %regs = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 5
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 4
  %call = tail call fastcc i32 @ti_adpll_init_gate(ptr noundef %d, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.43, ptr noundef %7, ptr noundef %add.ptr, i8 noundef zeroext 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %10 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clocks, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %15, i32 16
  %call9 = tail call fastcc i32 @ti_adpll_init_divider(ptr noundef %d, i32 noundef 3, i32 noundef -19, ptr noundef nonnull @.str.33, ptr noundef %13, ptr noundef %add.ptr8, i8 noundef zeroext 16, i8 noundef zeroext 7, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %16 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clocks, align 4
  %arrayidx14 = getelementptr %struct.ti_adpll_clock, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx14, align 4
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr17 = getelementptr i8, ptr %21, i32 4
  %call18 = tail call fastcc i32 @ti_adpll_init_gate(ptr noundef %d, i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.44, ptr noundef %19, ptr noundef %add.ptr17, i8 noundef zeroext 19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %22 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clocks, align 4
  %arrayidx23 = getelementptr %struct.ti_adpll_clock, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx23, align 4
  %arrayidx25 = getelementptr %struct.ti_adpll_data, ptr %d, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx25, align 4
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr27 = getelementptr i8, ptr %29, i32 4
  %call28 = tail call fastcc i32 @ti_adpll_init_mux(ptr noundef %d, i32 noundef 5, ptr noundef nonnull @.str.32, ptr noundef %25, ptr noundef %27, ptr noundef %add.ptr27, i8 noundef zeroext 18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clocks, align 4
  %arrayidx33 = getelementptr %struct.ti_adpll_clock, ptr %31, i32 3
  %32 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx33, align 4
  %arrayidx36 = getelementptr %struct.ti_adpll_clock, ptr %31, i32 5
  %34 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx36, align 4
  %call38 = tail call fastcc i32 @ti_adpll_init_clkout(ptr noundef %d, i32 noundef 8, i32 noundef 1, i32 noundef 20, ptr noundef nonnull @.str.35, ptr noundef %33, ptr noundef %35)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end21.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call9, %if.end3.cleanup_crit_edge ], [ %call18, %if.end12.cleanup_crit_edge ], [ %call28, %if.end21.cleanup_crit_edge ], [ %call38, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_adpll_init_divider(ptr noundef %d, i32 noundef %index, i32 noundef %output_index, ptr noundef %name, ptr noundef %parent_clock, ptr noundef %reg, i8 noundef zeroext %shift, i8 noundef zeroext %width, i8 noundef zeroext %clk_divider_flags) unnamed_addr #2 align 64 {
entry:
  %name.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i) #9
  %0 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %name.i, align 4, !annotation !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %output_index)
  %cmp.i = icmp sgt i32 %output_index, -1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %np.i = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %np.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %np.i, align 4
  %call.i.i = call i32 @of_property_read_string_helper(ptr noundef %2, ptr noundef nonnull @.str.19, ptr noundef nonnull %name.i, i32 noundef 1, i32 noundef %output_index) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %ti_adpll_clk_get_name.exitthread-pre-split, label %ti_adpll_clk_get_name.exit.thread

ti_adpll_clk_get_name.exit.thread:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #9
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d, align 4
  %pa.i = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 3
  %5 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pa.i, align 4
  %call2.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %4, i32 noundef 3264, ptr noundef nonnull @.str.20, i32 noundef %6, ptr noundef %name) #9
  br label %ti_adpll_clk_get_name.exit

ti_adpll_clk_get_name.exitthread-pre-split:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load ptr, ptr %name.i, align 4
  br label %ti_adpll_clk_get_name.exit

ti_adpll_clk_get_name.exit:                       ; preds = %ti_adpll_clk_get_name.exitthread-pre-split, %if.else.i
  %8 = phi ptr [ %.pr, %ti_adpll_clk_get_name.exitthread-pre-split ], [ %call2.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #9
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %ti_adpll_clk_get_name.exit.cleanup_crit_edge, label %if.end

ti_adpll_clk_get_name.exit.cleanup_crit_edge:     ; preds = %ti_adpll_clk_get_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %ti_adpll_clk_get_name.exit
  %call1 = call ptr @__clk_get_name(ptr noundef %parent_clock) #9
  %9 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d, align 4
  %lock = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 6
  %call2 = call ptr @clk_register_divider_table(ptr noundef %10, ptr noundef nonnull %8, ptr noundef %call1, i32 noundef 0, ptr noundef %reg, i8 noundef zeroext %shift, i8 noundef zeroext %width, i8 noundef zeroext %clk_divider_flags, ptr noundef null, ptr noundef %lock) #9
  %cmp.i23 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i23, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d, align 4
  %13 = ptrtoint ptr %call2 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %13) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = call fastcc i32 @ti_adpll_setup_clock(ptr noundef %d, ptr noundef %call2, i32 noundef %index, i32 noundef %output_index, ptr noundef nonnull %8, ptr noundef nonnull @clk_unregister_divider)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %ti_adpll_clk_get_name.exit.cleanup_crit_edge, %ti_adpll_clk_get_name.exit.thread
  %retval.0 = phi i32 [ %13, %do.end ], [ %call9, %if.end8 ], [ -22, %ti_adpll_clk_get_name.exit.cleanup_crit_edge ], [ -22, %ti_adpll_clk_get_name.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_adpll_setup_clock(ptr nocapture noundef %d, ptr noundef %clock, i32 noundef %index, i32 noundef %output_index, ptr noundef %name, ptr noundef %unregister) unnamed_addr #2 align 64 {
entry:
  %con_id = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %con_id) #9
  %clocks = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 9
  %0 = call ptr @memset(ptr %con_id, i32 255, i32 16)
  %1 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clocks, align 4
  %arrayidx = getelementptr %struct.ti_adpll_clock, ptr %2, i32 %index
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %clock, ptr %arrayidx, align 4
  %4 = load ptr, ptr %clocks, align 4
  %unregister3 = getelementptr %struct.ti_adpll_clock, ptr %4, i32 %index, i32 2
  %5 = ptrtoint ptr %unregister3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %unregister, ptr %unregister3, align 4
  %call = tail call ptr @strrchr(ptr noundef %name, i32 noundef 46)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %land.lhs.true

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @strlen(ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp = icmp ugt i32 %call4, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.do.end19_crit_edge

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call4)
  %cmp6 = icmp ugt i32 %call4, 16
  br i1 %cmp6, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.25, ptr noundef %name) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %pa = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 3
  %8 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pa, align 4
  %and = and i32 %9, 4095
  %add.ptr = getelementptr i8, ptr %call, i32 1
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %con_id, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %and, ptr noundef %add.ptr)
  %call10 = call ptr (ptr, ptr, ptr, ...) @clkdev_create(ptr noundef %clock, ptr noundef nonnull %con_id, ptr noundef null) #9
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clocks, align 4
  %cl16 = getelementptr %struct.ti_adpll_clock, ptr %11, i32 %index, i32 1
  %12 = ptrtoint ptr %cl16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10, ptr %cl16, align 4
  br label %if.end21

do.end19:                                         ; preds = %land.lhs.true.do.end19_crit_edge, %entry.do.end19_crit_edge
  %13 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.30, ptr noundef %name) #12
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %output_index)
  %cmp22 = icmp slt i32 %output_index, 0
  br i1 %cmp22, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %outputs = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 10
  %15 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %outputs, align 4
  %arrayidx25 = getelementptr ptr, ptr %16, i32 %output_index
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %clock, ptr %arrayidx25, align 4
  %clk_num = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clk_num, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %clk_num, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %con_id) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_adpll_prepare(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %hw, i32 -104
  %lock.i = getelementptr i8, ptr %hw, i32 -80
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %regs.i = getelementptr i8, ptr %hw, i32 -84
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !127
  %3 = and i32 %2, -32769
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %3) #9, !srcloc !128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !127
  %9 = and i32 %8, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 393216
  br i1 %cmp.i.i, label %entry.ti_adpll_wait_lock.exit_crit_edge, label %if.end.i

entry.ti_adpll_wait_lock.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_wait_lock.exit

if.end.i:                                         ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #9
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %11, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #9, !srcloc !127
  %13 = and i32 %12, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %13)
  %cmp.i.1.i = icmp eq i32 %13, 393216
  br i1 %cmp.i.1.i, label %if.end.i.ti_adpll_wait_lock.exit_crit_edge, label %if.end.1.i

if.end.i.ti_adpll_wait_lock.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_wait_lock.exit

if.end.1.i:                                       ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #9
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %15, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i) #9, !srcloc !127
  %17 = and i32 %16, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %17)
  %cmp.i.2.i = icmp eq i32 %17, 393216
  br i1 %cmp.i.2.i, label %if.end.1.i.ti_adpll_wait_lock.exit_crit_edge, label %if.end.2.i

if.end.1.i.ti_adpll_wait_lock.exit_crit_edge:     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_wait_lock.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #9
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %19, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i) #9, !srcloc !127
  %21 = and i32 %20, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %21)
  %cmp.i.3.i = icmp eq i32 %21, 393216
  br i1 %cmp.i.3.i, label %if.end.2.i.ti_adpll_wait_lock.exit_crit_edge, label %if.end.3.i

if.end.2.i.ti_adpll_wait_lock.exit_crit_edge:     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_wait_lock.exit

if.end.3.i:                                       ; preds = %if.end.2.i
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #9
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.4.i = getelementptr i8, ptr %23, i32 36
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i) #9, !srcloc !127
  %25 = and i32 %24, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %25)
  %cmp.i.4.i = icmp eq i32 %25, 393216
  br i1 %cmp.i.4.i, label %if.end.3.i.ti_adpll_wait_lock.exit_crit_edge, label %if.end.4.i

if.end.3.i.ti_adpll_wait_lock.exit_crit_edge:     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_wait_lock.exit

if.end.4.i:                                       ; preds = %if.end.3.i
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #9
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.5.i = getelementptr i8, ptr %27, i32 36
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5.i) #9, !srcloc !127
  %29 = and i32 %28, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %29)
  %cmp.i.5.i = icmp eq i32 %29, 393216
  br i1 %cmp.i.5.i, label %if.end.4.i.ti_adpll_wait_lock.exit_crit_edge, label %if.end.5.i

if.end.4.i.ti_adpll_wait_lock.exit_crit_edge:     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_adpll_wait_lock.exit

if.end.5.i:                                       ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #9
  %30 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.21) #12
  br label %ti_adpll_wait_lock.exit

ti_adpll_wait_lock.exit:                          ; preds = %if.end.5.i, %if.end.4.i.ti_adpll_wait_lock.exit_crit_edge, %if.end.3.i.ti_adpll_wait_lock.exit_crit_edge, %if.end.2.i.ti_adpll_wait_lock.exit_crit_edge, %if.end.1.i.ti_adpll_wait_lock.exit_crit_edge, %if.end.i.ti_adpll_wait_lock.exit_crit_edge, %entry.ti_adpll_wait_lock.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_adpll_unprepare(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr i8, ptr %hw, i32 -80
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %regs.i = getelementptr i8, ptr %hw, i32 -84
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !127
  %3 = or i32 %2, 32768
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %3) #9, !srcloc !128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_adpll_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr i8, ptr %hw, i32 -84
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !127
  %3 = and i32 %2, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %3)
  %cmp.i = icmp eq i32 %3, 393216
  %conv = zext i1 %cmp.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_adpll_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr i8, ptr %hw, i32 -84
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !127
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %do.body4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body4:                                         ; preds = %entry
  %lock = getelementptr i8, ptr %hw, i32 -80
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #9, !srcloc !127
  %7 = and i32 %6, -64768
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr15 = getelementptr i8, ptr %10, i32 20
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr15) #9, !srcloc !130
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv18 = zext i16 %12 to i64
  %shl = shl nuw nsw i64 %conv18, 18
  %conv19 = zext i32 %8 to i64
  %add = or i64 %shl, %conv19
  %conv20 = zext i32 %parent_rate to i64
  %mul = mul i64 %add, %conv20
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr23 = getelementptr i8, ptr %14, i32 16
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr23) #9, !srcloc !130
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv26 = zext i16 %16 to i32
  %add27 = shl i32 %conv26, 18
  %shl28 = add i32 %add27, 262144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp204 = icmp ult i64 %mul, 4294967296
  br i1 %cmp204, label %if.then208, label %if.else214, !prof !131

if.then208:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %conv209 = trunc i64 %mul to i32
  %div212 = udiv i32 %conv209, %shl28
  %conv213 = zext i32 %div212 to i64
  br label %if.end218

if.else214:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl28, i64 %mul) #14, !srcloc !132
  %asmresult1.i = extractvalue { i64, i64 } %17, 1
  br label %if.end218

if.end218:                                        ; preds = %if.else214, %if.then208
  %rate.0 = phi i64 [ %conv213, %if.then208 ], [ %asmresult1.i, %if.else214 ]
  %c = getelementptr i8, ptr %hw, i32 -100
  %18 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %c, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool220.not = icmp eq i8 %21, 0
  %extract.t = trunc i64 %rate.0 to i32
  br i1 %tobool220.not, label %if.end218.cleanup_crit_edge, label %if.then221

if.end218.cleanup_crit_edge:                      ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then221:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr224 = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr224) #9, !srcloc !127
  %25 = and i32 %24, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool228.not = icmp eq i32 %25, 0
  %mul230 = shl i64 %rate.0, 2
  %spec.select = select i1 %tobool228.not, i64 %rate.0, i64 %mul230
  %spec.select.tr = trunc i64 %spec.select to i32
  %extract.t354 = shl i32 %spec.select.tr, 1
  br label %cleanup

cleanup:                                          ; preds = %if.then221, %if.end218.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %extract.t, %if.end218.cleanup_crit_edge ], [ %extract.t354, %if.then221 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ti_adpll_get_parent(ptr nocapture noundef readnone %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_divider(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdev_create(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_adpll_init_mux(ptr noundef %d, i32 noundef %index, ptr noundef %name, ptr noundef %clk0, ptr noundef %clk1, ptr noundef %reg, i8 noundef zeroext %shift) unnamed_addr #2 align 64 {
entry:
  %parents = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parents) #9
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 4
  %pa.i = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 3
  %2 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pa.i, align 4
  %call2.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %1, i32 noundef 3264, ptr noundef nonnull @.str.20, i32 noundef %3, ptr noundef %name) #9
  %tobool.not = icmp eq ptr %call2.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds [2 x ptr], ptr %parents, i32 0, i32 1
  %call1 = tail call ptr @__clk_get_name(ptr noundef %clk0) #9
  %5 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %parents, align 4
  %call2 = tail call ptr @__clk_get_name(ptr noundef %clk1) #9
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %4, align 4
  %7 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d, align 4
  %lock = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 6
  %call4 = call ptr @clk_register_mux_table(ptr noundef %8, ptr noundef nonnull %call2.i, ptr noundef nonnull %parents, i8 noundef zeroext 2, i32 noundef 0, ptr noundef %reg, i8 noundef zeroext %shift, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef %lock) #9
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d, align 4
  %11 = ptrtoint ptr %call4 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.39, ptr noundef %name, i32 noundef %11) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = call fastcc i32 @ti_adpll_setup_clock(ptr noundef %d, ptr noundef %call4, i32 noundef %index, i32 noundef -19, ptr noundef nonnull %call2.i, ptr noundef nonnull @clk_unregister_mux)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %do.end ], [ %call11, %if.end10 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parents) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_adpll_init_clkout(ptr noundef %d, i32 noundef %index, i32 noundef %output_index, i32 noundef %gate_bit, ptr noundef %name, ptr noundef %clk0, ptr noundef %clk1) unnamed_addr #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_names = alloca [2 x ptr], align 4
  %child_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #9
  %0 = getelementptr inbounds i8, ptr %init, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_names) #9
  %2 = getelementptr inbounds [2 x ptr], ptr %parent_names, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %child_name) #9
  %3 = ptrtoint ptr %child_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %child_name, align 4, !annotation !129
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 40, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %d, ptr %call.i, align 4
  %np = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 2
  %7 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %np, align 4
  %call.i65 = call i32 @of_property_read_string_helper(ptr noundef %8, ptr noundef nonnull @.str.19, ptr noundef nonnull %child_name, i32 noundef 1, i32 noundef %output_index) #9
  %9 = call i32 @llvm.smin.i32(i32 %call.i65, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i65)
  %tobool2.not = icmp sgt i32 %call.i65, -1
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d, align 4
  %call.i66 = call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 100, i32 noundef 3520) #9
  %tobool7.not = icmp eq ptr %call.i66, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %12 = ptrtoint ptr %child_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %child_name, align 4
  %14 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %init, align 4
  %ops11 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %15 = ptrtoint ptr %ops11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i66, ptr %ops11, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flags, align 4
  %hw = getelementptr inbounds %struct.ti_adpll_clkout_data, ptr %call.i, i32 0, i32 2
  %init12 = getelementptr inbounds %struct.ti_adpll_clkout_data, ptr %call.i, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %init12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %init, ptr %init12, align 4
  %call13 = call ptr @__clk_get_name(ptr noundef %clk0) #9
  %18 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call13, ptr %parent_names, align 4
  %call14 = call ptr @__clk_get_name(ptr noundef %clk1) #9
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call14, ptr %2, align 4
  %parent_names16 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %20 = ptrtoint ptr %parent_names16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %parent_names, ptr %parent_names16, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %21 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %num_parents, align 4
  %get_parent = getelementptr inbounds %struct.clk_ops, ptr %call.i66, i32 0, i32 14
  %22 = ptrtoint ptr %get_parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ti_adpll_clkout_get_parent, ptr %get_parent, align 4
  %determine_rate = getelementptr inbounds %struct.clk_ops, ptr %call.i66, i32 0, i32 12
  %23 = ptrtoint ptr %determine_rate to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @__clk_mux_determine_rate, ptr %determine_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gate_bit)
  %tobool17.not = icmp eq i32 %gate_bit, 0
  br i1 %tobool17.not, label %if.end9.if.end22_crit_edge, label %if.then18

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 6
  %lock19 = getelementptr inbounds %struct.ti_adpll_clkout_data, ptr %call.i, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %lock19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %lock, ptr %lock19, align 4
  %regs = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 5
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 4
  %reg = getelementptr inbounds %struct.ti_adpll_clkout_data, ptr %call.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr, ptr %reg, align 4
  %conv = trunc i32 %gate_bit to i8
  %bit_idx = getelementptr inbounds %struct.ti_adpll_clkout_data, ptr %call.i, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %bit_idx, align 4
  %enable = getelementptr inbounds %struct.clk_ops, ptr %call.i66, i32 0, i32 4
  %29 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ti_adpll_clkout_enable, ptr %enable, align 4
  %disable = getelementptr inbounds %struct.clk_ops, ptr %call.i66, i32 0, i32 5
  %30 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ti_adpll_clkout_disable, ptr %disable, align 4
  %is_enabled = getelementptr inbounds %struct.clk_ops, ptr %call.i66, i32 0, i32 6
  %31 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ti_adpll_clkout_is_enabled, ptr %is_enabled, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end9.if.end22_crit_edge
  %32 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d, align 4
  %call25 = call ptr @devm_clk_register(ptr noundef %33, ptr noundef %hw) #9
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end31

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d, align 4
  %36 = ptrtoint ptr %call25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef %36) #12
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %child_name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %child_name, align 4
  %call32 = call fastcc i32 @ti_adpll_setup_clock(ptr noundef %d, ptr noundef %call25, i32 noundef %index, i32 noundef %output_index, ptr noundef %38, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %36, %do.end ], [ %call32, %if.end31 ], [ -12, %entry.cleanup_crit_edge ], [ %9, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %child_name) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_mux(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ti_adpll_clkout_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -28
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %regs.i = getelementptr inbounds %struct.ti_adpll_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !127
  %5 = lshr i32 %4, 24
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 1
  ret i8 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_adpll_clkout_enable(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gate = getelementptr i8, ptr %hw, i32 -24
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr i8, ptr %hw, i32 -20
  %2 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk1.i, align 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %gate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %gate, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4), align 4
  %call = tail call i32 %6(ptr noundef %gate) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_adpll_clkout_disable(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gate = getelementptr i8, ptr %hw, i32 -24
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr i8, ptr %hw, i32 -20
  %2 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk1.i, align 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %gate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %gate, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5), align 4
  tail call void %6(ptr noundef %gate) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_adpll_clkout_is_enabled(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gate = getelementptr i8, ptr %hw, i32 -24
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr i8, ptr %hw, i32 -20
  %2 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk1.i, align 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %gate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %gate, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6), align 4
  %call = tail call i32 %6(ptr noundef %gate) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_adpll_init_gate(ptr noundef %d, i32 noundef %index, i32 noundef %output_index, ptr noundef %name, ptr noundef %parent_clock, ptr noundef %reg, i8 noundef zeroext %bit_idx) unnamed_addr #2 align 64 {
entry:
  %name.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i) #9
  %0 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %name.i, align 4, !annotation !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %output_index)
  %cmp.i = icmp sgt i32 %output_index, -1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %np.i = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %np.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %np.i, align 4
  %call.i.i = call i32 @of_property_read_string_helper(ptr noundef %2, ptr noundef nonnull @.str.19, ptr noundef nonnull %name.i, i32 noundef 1, i32 noundef %output_index) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %ti_adpll_clk_get_name.exitthread-pre-split, label %ti_adpll_clk_get_name.exit.thread

ti_adpll_clk_get_name.exit.thread:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #9
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d, align 4
  %pa.i = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 3
  %5 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pa.i, align 4
  %call2.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %4, i32 noundef 3264, ptr noundef nonnull @.str.20, i32 noundef %6, ptr noundef %name) #9
  br label %ti_adpll_clk_get_name.exit

ti_adpll_clk_get_name.exitthread-pre-split:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load ptr, ptr %name.i, align 4
  br label %ti_adpll_clk_get_name.exit

ti_adpll_clk_get_name.exit:                       ; preds = %ti_adpll_clk_get_name.exitthread-pre-split, %if.else.i
  %8 = phi ptr [ %.pr, %ti_adpll_clk_get_name.exitthread-pre-split ], [ %call2.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #9
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %ti_adpll_clk_get_name.exit.cleanup_crit_edge, label %if.end

ti_adpll_clk_get_name.exit.cleanup_crit_edge:     ; preds = %ti_adpll_clk_get_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %ti_adpll_clk_get_name.exit
  %call1 = call ptr @__clk_get_name(ptr noundef %parent_clock) #9
  %9 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d, align 4
  %lock = getelementptr inbounds %struct.ti_adpll_data, ptr %d, i32 0, i32 6
  %call2 = call ptr @clk_register_gate(ptr noundef %10, ptr noundef nonnull %8, ptr noundef %call1, i32 noundef 0, ptr noundef %reg, i8 noundef zeroext %bit_idx, i8 noundef zeroext 0, ptr noundef %lock) #9
  %cmp.i1 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d, align 4
  %13 = ptrtoint ptr %call2 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.45, ptr noundef %name, i32 noundef %13) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = call fastcc i32 @ti_adpll_setup_clock(ptr noundef %d, ptr noundef %call2, i32 noundef %index, i32 noundef %output_index, ptr noundef nonnull %8, ptr noundef nonnull @clk_unregister_gate)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %ti_adpll_clk_get_name.exit.cleanup_crit_edge, %ti_adpll_clk_get_name.exit.thread
  %retval.0 = phi i32 [ %13, %do.end ], [ %call9, %if.end8 ], [ -22, %ti_adpll_clk_get_name.exit.cleanup_crit_edge ], [ -22, %ti_adpll_clk_get_name.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_gate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdev_drop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !72, !74, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !106, !108, !109, !110, !111, !113, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__initcall__kmod_adpll__183_965_ti_adpll_init1, !1, !"__initcall__kmod_adpll__183_965_ti_adpll_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/adpll.c", i32 965, i32 1}
!2 = !{ptr @__exitcall_ti_adpll_exit, !3, !"__exitcall_ti_adpll_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/adpll.c", i32 971, i32 1}
!4 = !{ptr @__UNIQUE_ID_description184, !5, !"__UNIQUE_ID_description184", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/adpll.c", i32 973, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias185, !7, !"__UNIQUE_ID_alias185", i1 false, i1 false}
!7 = !{!"../drivers/clk/ti/adpll.c", i32 974, i32 1}
!8 = !{ptr @__UNIQUE_ID_author186, !9, !"__UNIQUE_ID_author186", i1 false, i1 false}
!9 = !{!"../drivers/clk/ti/adpll.c", i32 975, i32 1}
!10 = !{ptr @__UNIQUE_ID_file187, !11, !"__UNIQUE_ID_file187", i1 false, i1 false}
!11 = !{!"../drivers/clk/ti/adpll.c", i32 976, i32 1}
!12 = !{ptr @__UNIQUE_ID_license188, !11, !"__UNIQUE_ID_license188", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/ti/adpll.c", i32 954, i32 11}
!15 = !{ptr @ti_adpll_driver, !16, !"ti_adpll_driver", i1 false, i1 false}
!16 = !{!"../drivers/clk/ti/adpll.c", i32 952, i32 31}
!17 = !{ptr @ti_adpll_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/clk/ti/adpll.c", i32 891, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/ti/adpll.c", i32 919, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ti_adpll_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ti_adpll_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @ti_adpll_init_inputs.error, !29, !"error", i1 false, i1 false}
!29 = !{!"../drivers/clk/ti/adpll.c", i32 810, i32 20}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/ti/adpll.c", i32 816, i32 3}
!32 = !{ptr @ti_adpll_init_inputs._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ti_adpll_init_inputs._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/ti/adpll.c", i32 823, i32 3}
!36 = !{ptr @ti_adpll_init_inputs._entry.8, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ti_adpll_init_inputs._entry_ptr.10, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/ti/adpll.c", i32 830, i32 3}
!40 = !{ptr @ti_adpll_init_inputs._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ti_adpll_init_inputs._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/ti/adpll.c", i32 838, i32 4}
!44 = !{ptr @ti_adpll_init_inputs._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ti_adpll_init_inputs._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/ti/adpll.c", i32 506, i32 13}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/ti/adpll.c", i32 526, i32 55}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/ti/adpll.c", i32 191, i32 11}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/ti/adpll.c", i32 197, i32 45}
!54 = !{ptr @ti_adpll_ops, !55, !"ti_adpll_ops", i1 false, i1 false}
!55 = !{!"../drivers/clk/ti/adpll.c", i32 483, i32 29}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/ti/adpll.c", i32 409, i32 2}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ti_adpll_wait_lock._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ti_adpll_wait_lock._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/ti/adpll.c", i32 262, i32 3}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ti_adpll_init_divider._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @ti_adpll_init_divider._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/ti/adpll.c", i32 221, i32 4}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ti_adpll_setup_clock._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @ti_adpll_setup_clock._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/ti/adpll.c", i32 223, i32 24}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/ti/adpll.c", i32 229, i32 3}
!76 = !{ptr @ti_adpll_setup_clock._entry.29, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ti_adpll_setup_clock._entry_ptr.31, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/ti/adpll.c", i32 648, i32 46}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/ti/adpll.c", i32 657, i32 55}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/ti/adpll.c", i32 667, i32 53}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/ti/adpll.c", i32 675, i32 32}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/ti/adpll.c", i32 683, i32 8}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/ti/adpll.c", i32 690, i32 44}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/ti/adpll.c", i32 700, i32 68}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/ti/adpll.c", i32 290, i32 3}
!94 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ti_adpll_init_mux._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @ti_adpll_init_mux._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/ti/adpll.c", i32 631, i32 3}
!99 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ti_adpll_init_clkout._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @ti_adpll_init_clkout._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/ti/adpll.c", i32 723, i32 6}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/ti/adpll.c", i32 741, i32 6}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/ti/adpll.c", i32 320, i32 3}
!108 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ti_adpll_init_gate._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @ti_adpll_init_gate._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @ti_adpll_match, !112, !"ti_adpll_match", i1 false, i1 false}
!112 = !{!"../drivers/clk/ti/adpll.c", i32 861, i32 34}
!113 = !{ptr @ti_adpll_type_s, !114, !"ti_adpll_type_s", i1 false, i1 false}
!114 = !{!"../drivers/clk/ti/adpll.c", i32 847, i32 44}
!115 = !{ptr @ti_adpll_type_lj, !116, !"ti_adpll_type_lj", i1 false, i1 false}
!116 = !{!"../drivers/clk/ti/adpll.c", i32 854, i32 44}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i8 0, i8 2}
!127 = !{i64 5010615}
!128 = !{i64 5010197}
!129 = !{!"auto-init"}
!130 = !{i64 5009777}
!131 = !{!"branch_weights", i32 2000, i32 1}
!132 = !{i64 2148653152, i64 2148653432, i64 2148653766, i64 2148654100}
