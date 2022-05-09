; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-scu.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-scu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_scu = type { %struct.clk_hw, i16, i8, ptr, i8, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
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
%struct.imx_scu_clk_node = type { ptr, i32, i8, ptr, i32, ptr, %struct.list_head }
%struct.imx_clk_scu_rsrc_table = type { ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.clk_gpr_scu = type { %struct.clk_hw, i16, i8, i8, i8 }
%struct.imx_sc_msg_req_clock_enable = type { %struct.imx_sc_rpc_msg, i16, i8, i8, i8, [3 x i8] }
%struct.imx_sc_rpc_msg = type { i8, i8, i8, i8 }
%struct.imx_sc_msg_get_clock_rate = type { %struct.imx_sc_rpc_msg, %union.anon.43 }
%union.anon.43 = type { %struct.resp_get_clock_rate }
%struct.resp_get_clock_rate = type { i32 }
%struct.req_get_clock_rate = type { i16, i8 }
%struct.imx_sc_msg_set_clock_parent = type { %struct.imx_sc_rpc_msg, i16, i8, i8 }
%struct.imx_sc_msg_get_clock_parent = type { %struct.imx_sc_rpc_msg, %union.anon.44 }
%union.anon.44 = type { %struct.req_get_clock_parent }
%struct.req_get_clock_parent = type { i16, i8 }
%struct.imx_sc_msg_req_set_clock_rate = type { %struct.imx_sc_rpc_msg, i32, i16, i8 }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }

@ccm_ipc_handle = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@imx_scu_clks = dso_local global { [546 x %struct.list_head], [1104 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,scu-pd\00", [21 x i8] zeroinitializer }, align 32
@pd_np = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rsrc_table = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@imx_clk_scu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_clk_scu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_clk_scu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@clk_scu_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_scu_prepare, ptr @clk_scu_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_scu_recalc_rate, ptr @clk_scu_round_rate, ptr null, ptr @clk_scu_set_parent, ptr @clk_scu_get_parent, ptr @clk_scu_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_scu_cpu_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_scu_prepare, ptr @clk_scu_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_scu_recalc_rate, ptr @clk_scu_round_rate, ptr null, ptr null, ptr null, ptr @clk_scu_atf_set_cpu_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_scu_pi_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_scu_recalc_rate, ptr @clk_scu_round_rate, ptr null, ptr null, ptr null, ptr @clk_scu_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@imx_clk_scu_alloc_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: failed to allocate scu clk dev rsrc %d type %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx_clk_scu_alloc_dev\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/imx/clk-scu.c\00", [38 x i8] zeroinitializer }, align 32
@imx_clk_scu_alloc_dev._entry_ptr = internal global ptr @imx_clk_scu_alloc_dev._entry, section ".printk_index", align 4
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"imx-scu-clk\00", [20 x i8] zeroinitializer }, align 32
@imx_clk_scu_alloc_dev._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: failed to attached the power domain %d\0A\00", [50 x i8] zeroinitializer }, align 32
@imx_clk_scu_alloc_dev._entry_ptr.8 = internal global ptr @imx_clk_scu_alloc_dev._entry.6, section ".printk_index", align 4
@clk_gpr_gate_scu_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_gpr_gate_scu_prepare, ptr @clk_gpr_gate_scu_unprepare, ptr @clk_gpr_gate_scu_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_gpr_div_scu_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_gpr_div_scu_recalc_rate, ptr @clk_gpr_div_scu_round_rate, ptr null, ptr null, ptr null, ptr @clk_gpr_div_scu_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_gpr_mux_scu_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_gpr_mux_scu_set_parent, ptr @clk_gpr_mux_scu_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clk_scu_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: clk unprepare failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_scu_unprepare\00", [46 x i8] zeroinitializer }, align 32
@clk_scu_unprepare._entry_ptr = internal global ptr @clk_scu_unprepare._entry, section ".printk_index", align 4
@clk_scu_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: failed to get clock rate %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_scu_recalc_rate\00", [44 x i8] zeroinitializer }, align 32
@clk_scu_recalc_rate._entry_ptr = internal global ptr @clk_scu_recalc_rate._entry, section ".printk_index", align 4
@clk_scu_set_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to set clock parent %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_scu_set_parent\00", [45 x i8] zeroinitializer }, align 32
@clk_scu_set_parent._entry_ptr = internal global ptr @clk_scu_set_parent._entry, section ".printk_index", align 4
@clk_scu_get_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to get clock parent %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_scu_get_parent\00", [45 x i8] zeroinitializer }, align 32
@clk_scu_get_parent._entry_ptr = internal global ptr @clk_scu_get_parent._entry, section ".printk_index", align 4
@imx_clk_scu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_clk_scu_suspend, ptr @imx_clk_scu_resume, ptr @imx_clk_scu_suspend, ptr @imx_clk_scu_resume, ptr @imx_clk_scu_suspend, ptr @imx_clk_scu_resume, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx_clk_scu_probe.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_imx_scu\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx_clk_scu_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"register SCU clock rsrc:%d type:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@imx_clk_scu_suspend.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx_clk_scu_suspend\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"save parent %s idx %u\0A\00", [41 x i8] zeroinitializer }, align 32
@imx_clk_scu_suspend.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.20, ptr @.str.4, ptr @.str.22, i8 0, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"save rate %d\0A\00", [18 x i8] zeroinitializer }, align 32
@imx_clk_scu_suspend.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.20, ptr @.str.4, ptr @.str.23, i8 0, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"save enabled state\0A\00", [44 x i8] zeroinitializer }, align 32
@imx_clk_scu_resume.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_clk_scu_resume\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"restore parent %s idx %u %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@imx_clk_scu_resume.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.24, ptr @.str.4, ptr @.str.28, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"restore rate %d %s\0A\00", [44 x i8] zeroinitializer }, align 32
@imx_clk_scu_resume.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.24, ptr @.str.4, ptr @.str.29, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"restore enabled state %s\0A\00", [38 x i8] zeroinitializer }, align 32
@clk_gpr_gate_scu_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: clk unprepare failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk_gpr_gate_scu_unprepare\00", [37 x i8] zeroinitializer }, align 32
@clk_gpr_gate_scu_unprepare._entry_ptr = internal global ptr @clk_gpr_gate_scu_unprepare._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 5, i64 330, i64 507]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 507]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 5, i64 507]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 507]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 5, i64 330, i64 507]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 507]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 5, i64 507]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 16, i64 28, i64 29, i64 45, i64 46]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 5, i64 507]
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"ccm_ipc_handle\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 23, i32 27 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 202, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"imx_scu_clks\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 39, i32 18 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 209, i32 47 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"pd_np\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 24, i32 28 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"rsrc_table\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 26, i32 45 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"imx_clk_scu_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 632, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"clk_scu_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 426, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"clk_scu_cpu_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 436, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"clk_scu_pi_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 444, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 675, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 686, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 690, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [21 x i8] c"clk_gpr_gate_scu_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 817, i32 29 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"clk_gpr_div_scu_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 753, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"clk_gpr_mux_scu_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 778, i32 29 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 422, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 245, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 365, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 337, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"imx_clk_scu_pm_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 627, i32 32 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 555, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 583, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 587, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 590, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 607, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 614, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 620, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private constant [29 x i8] c"../drivers/clk/imx/clk-scu.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 799, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @clk_gpr_gate_scu_unprepare._entry, ptr @clk_gpr_gate_scu_unprepare._entry_ptr, ptr @clk_scu_get_parent._entry, ptr @clk_scu_get_parent._entry_ptr, ptr @clk_scu_recalc_rate._entry, ptr @clk_scu_recalc_rate._entry_ptr, ptr @clk_scu_set_parent._entry, ptr @clk_scu_set_parent._entry_ptr, ptr @clk_scu_unprepare._entry, ptr @clk_scu_unprepare._entry_ptr, ptr @imx_clk_scu_alloc_dev._entry, ptr @imx_clk_scu_alloc_dev._entry.6, ptr @imx_clk_scu_alloc_dev._entry_ptr, ptr @imx_clk_scu_alloc_dev._entry_ptr.8, ptr @ccm_ipc_handle, ptr @.str, ptr @imx_scu_clks, ptr @.str.1, ptr @pd_np, ptr @rsrc_table, ptr @imx_clk_scu_driver, ptr @clk_scu_ops, ptr @clk_scu_cpu_ops, ptr @clk_scu_pi_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @clk_gpr_gate_scu_ops, ptr @clk_gpr_div_scu_ops, ptr @clk_gpr_mux_scu_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @imx_clk_scu_pm_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccm_ipc_handle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_clks to i32), i32 4368, i32 5472, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_np to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsrc_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_clk_scu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_scu_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_scu_cpu_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_scu_pi_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_clk_scu_alloc_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_clk_scu_alloc_dev._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_gpr_gate_scu_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_gpr_div_scu_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_gpr_mux_scu_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_scu_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_scu_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_scu_set_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_scu_get_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_clk_scu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_gpr_gate_scu_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_clk_scu_init(ptr noundef %np, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %clk_cells = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_cells) #10
  %0 = ptrtoint ptr %clk_cells to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %clk_cells, align 4, !annotation !101
  %call = tail call i32 @imx_scu_get_handle(ptr noundef nonnull @ccm_ipc_handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull %clk_cells, i32 noundef 1, i32 noundef 0) #10
  %1 = ptrtoint ptr %clk_cells to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %clk_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [546 x %struct.list_head], ptr @imx_scu_clks, i32 0, i32 %i.015
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr [546 x %struct.list_head], ptr @imx_scu_clks, i32 0, i32 %i.015, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %prev.i, align 4
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 546
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %call4 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #10
  store ptr %call4, ptr @pd_np, align 4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %for.end.cleanup_crit_edge, label %if.end7

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %data, ptr @rsrc_table, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end.if.end8_crit_edge
  %call9 = call i32 @__platform_driver_register(ptr noundef nonnull @imx_clk_scu_driver, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_cells) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_get_handle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__imx_clk_scu(ptr noundef %dev, ptr noundef %name, ptr noundef %parents, i32 noundef %num_parents, i32 noundef %rsrc_id, i8 noundef zeroext %clk_type) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #10
  %0 = getelementptr inbounds i8, ptr %init, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %rsrc_id to i16
  %rsrc_id2 = getelementptr inbounds %struct.clk_scu, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %rsrc_id2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %rsrc_id2, align 4
  %clk_type3 = getelementptr inbounds %struct.clk_scu, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %clk_type3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %clk_type, ptr %clk_type3, align 2
  %5 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %6 = zext i32 %rsrc_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rsrc_id, label %if.else17 [
    i32 507, label %if.end.if.end20_crit_edge
    i32 0, label %if.end.if.end20_crit_edge52
    i32 5, label %if.end.if.end20_crit_edge53
    i32 330, label %if.then15
  ]

if.end.if.end20_crit_edge53:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end.if.end20_crit_edge52:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then15, %if.end.if.end20_crit_edge, %if.end.if.end20_crit_edge52, %if.end.if.end20_crit_edge53
  %clk_scu_pi_ops.sink = phi ptr [ @clk_scu_pi_ops, %if.then15 ], [ @clk_scu_ops, %if.else17 ], [ @clk_scu_cpu_ops, %if.end.if.end20_crit_edge ], [ @clk_scu_cpu_ops, %if.end.if.end20_crit_edge52 ], [ @clk_scu_cpu_ops, %if.end.if.end20_crit_edge53 ]
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %clk_scu_pi_ops.sink, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %8 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %parents, ptr %parent_names, align 4
  %conv21 = trunc i32 %num_parents to i8
  %num_parents22 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %9 = ptrtoint ptr %num_parents22 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv21, ptr %num_parents22, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 64, ptr %flags, align 4
  %init24 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %init24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %init, ptr %init24, align 8
  %call26 = call i32 @clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %12 = inttoptr i32 %call26 to ptr
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %tobool31.not = icmp eq ptr %dev, null
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %if.then32

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end30.cleanup_crit_edge, %if.then28, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %if.then28 ], [ %call7.i.i, %if.then32 ], [ %call7.i.i, %if.end30.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_scu_of_clk_src_get(ptr nocapture noundef readonly %clkspec, ptr noundef readonly %data) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %arrayidx2 = getelementptr %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr %struct.list_head, ptr %data, i32 %1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %arrayidx3, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %arrayidx3
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %clk_type = getelementptr i8, ptr %.pn, i32 -16
  %5 = ptrtoint ptr %clk_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %clk_type, align 4
  %conv = zext i8 %6 to i32
  %cmp5 = icmp eq i32 %3, %conv
  br i1 %cmp5, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr i8, ptr %.pn, i32 -4
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %if.then ], [ inttoptr (i32 -19 to ptr), %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_clk_scu_alloc_dev(ptr noundef %name, ptr noundef %parents, i32 noundef %num_parents, i32 noundef %rsrc_id, i8 noundef zeroext %clk_type) local_unnamed_addr #0 align 64 {
entry:
  %genpdspec.i = alloca %struct.of_phandle_args, align 4
  %rsrc_id.addr.i = alloca i32, align 4
  %clk = alloca %struct.imx_scu_clk_node, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk) #10
  %0 = getelementptr inbounds i8, ptr %clk, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %name, ptr %clk, align 4
  %rsrc = getelementptr inbounds %struct.imx_scu_clk_node, ptr %clk, i32 0, i32 1
  %3 = ptrtoint ptr %rsrc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %rsrc_id, ptr %rsrc, align 4
  %clk_type2 = getelementptr inbounds %struct.imx_scu_clk_node, ptr %clk, i32 0, i32 2
  %4 = ptrtoint ptr %clk_type2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %clk_type, ptr %clk_type2, align 4
  %parents3 = getelementptr inbounds %struct.imx_scu_clk_node, ptr %clk, i32 0, i32 3
  %5 = ptrtoint ptr %parents3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %parents, ptr %parents3, align 4
  %num_parents4 = getelementptr inbounds %struct.imx_scu_clk_node, ptr %clk, i32 0, i32 4
  %6 = ptrtoint ptr %num_parents4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %num_parents, ptr %num_parents4, align 4
  %hw = getelementptr inbounds %struct.imx_scu_clk_node, ptr %clk, i32 0, i32 5
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %hw, align 4
  %node = getelementptr inbounds %struct.imx_scu_clk_node, ptr %clk, i32 0, i32 6
  %8 = ptrtoint ptr %node to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %node, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsrc_id.addr.i)
  %9 = ptrtoint ptr %rsrc_id.addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %rsrc_id, ptr %rsrc_id.addr.i, align 4
  %10 = load ptr, ptr @rsrc_table, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %imx_scu_clk_is_valid.exit.thread, label %imx_scu_clk_is_valid.exit

imx_scu_clk_is_valid.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsrc_id.addr.i)
  br label %if.end

imx_scu_clk_is_valid.exit:                        ; preds = %entry
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %num.i = getelementptr inbounds %struct.imx_clk_scu_rsrc_table, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num.i, align 4
  %conv.i = zext i8 %14 to i32
  %call.i = call ptr @bsearch(ptr noundef nonnull %rsrc_id.addr.i, ptr noundef %12, i32 noundef %conv.i, i32 noundef 4, ptr noundef nonnull @imx_scu_clk_search_cmp) #10
  %cmp.i.not = icmp eq ptr %call.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsrc_id.addr.i)
  br i1 %cmp.i.not, label %imx_scu_clk_is_valid.exit.cleanup_crit_edge, label %imx_scu_clk_is_valid.exit.if.end_crit_edge

imx_scu_clk_is_valid.exit.if.end_crit_edge:       ; preds = %imx_scu_clk_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

imx_scu_clk_is_valid.exit.cleanup_crit_edge:      ; preds = %imx_scu_clk_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %imx_scu_clk_is_valid.exit.if.end_crit_edge, %imx_scu_clk_is_valid.exit.thread
  %call6 = call ptr @platform_device_alloc(ptr noundef %name, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %clk_type to i32
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %rsrc_id, i32 noundef %conv) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = call i32 @platform_device_add_data(ptr noundef nonnull %call6, ptr noundef nonnull %clk, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void @platform_device_put(ptr noundef nonnull %call6) #10
  %15 = inttoptr i32 %call11 to ptr
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %driver_override = getelementptr inbounds %struct.platform_device, ptr %call6, i32 0, i32 9
  %16 = ptrtoint ptr %driver_override to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.5, ptr %driver_override, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %genpdspec.i) #10
  %17 = getelementptr inbounds i8, ptr %genpdspec.i, i32 12
  %18 = call ptr @memset(ptr %17, i32 0, i32 60)
  %19 = load ptr, ptr @pd_np, align 4
  %20 = ptrtoint ptr %genpdspec.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %genpdspec.i, align 4
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %genpdspec.i, i32 0, i32 1
  %21 = ptrtoint ptr %args_count.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %args_count.i, align 4
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %genpdspec.i, i32 0, i32 2
  %22 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %rsrc_id, ptr %args.i, align 4
  %23 = zext i32 %rsrc_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %rsrc_id, label %imx_clk_scu_attach_pd.exit [
    i32 507, label %if.end15.imx_clk_scu_attach_pd.exit.thread_crit_edge
    i32 0, label %if.end15.imx_clk_scu_attach_pd.exit.thread_crit_edge49
    i32 5, label %if.end15.imx_clk_scu_attach_pd.exit.thread_crit_edge50
  ]

if.end15.imx_clk_scu_attach_pd.exit.thread_crit_edge50: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_clk_scu_attach_pd.exit.thread

if.end15.imx_clk_scu_attach_pd.exit.thread_crit_edge49: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_clk_scu_attach_pd.exit.thread

if.end15.imx_clk_scu_attach_pd.exit.thread_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_clk_scu_attach_pd.exit.thread

imx_clk_scu_attach_pd.exit.thread:                ; preds = %if.end15.imx_clk_scu_attach_pd.exit.thread_crit_edge, %if.end15.imx_clk_scu_attach_pd.exit.thread_crit_edge49, %if.end15.imx_clk_scu_attach_pd.exit.thread_crit_edge50
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %genpdspec.i) #10
  br label %if.end24

imx_clk_scu_attach_pd.exit:                       ; preds = %if.end15
  %dev = getelementptr inbounds %struct.platform_device, ptr %call6, i32 0, i32 3
  %call.i43 = call i32 @of_genpd_add_device(ptr noundef nonnull %genpdspec.i, ptr noundef %dev) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %genpdspec.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool17.not = icmp eq i32 %call.i43, 0
  br i1 %tobool17.not, label %imx_clk_scu_attach_pd.exit.if.end24_crit_edge, label %do.end21

imx_clk_scu_attach_pd.exit.if.end24_crit_edge:    ; preds = %imx_clk_scu_attach_pd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end21:                                         ; preds = %imx_clk_scu_attach_pd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %call.i43) #14
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %imx_clk_scu_attach_pd.exit.if.end24_crit_edge, %imx_clk_scu_attach_pd.exit.thread
  %call25 = call i32 @platform_device_add(ptr noundef nonnull %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then13, %do.end, %imx_scu_clk_is_valid.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %15, %if.then13 ], [ null, %if.end24 ], [ inttoptr (i32 -12 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %imx_scu_clk_is_valid.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_clk_scu_unregister() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc10.for.body_crit_edge, %entry
  %i.021 = phi i32 [ 0, %entry ], [ %inc, %for.inc10.for.body_crit_edge ]
  %arrayidx = getelementptr [546 x %struct.list_head], ptr @imx_scu_clks, i32 0, i32 %i.021
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn18 = load ptr, ptr %arrayidx, align 4
  %cmp3.not19 = icmp eq ptr %.pn18, %arrayidx
  br i1 %cmp3.not19, label %for.body.for.inc10_crit_edge, label %for.body.for.body4_crit_edge

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body.for.inc10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc10

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %.pn20 = phi ptr [ %.pn, %for.body4.for.body4_crit_edge ], [ %.pn18, %for.body.for.body4_crit_edge ]
  %clk.0 = getelementptr i8, ptr %.pn20, i32 -24
  %hw = getelementptr i8, ptr %.pn20, i32 -4
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  tail call void @clk_hw_unregister(ptr noundef %2) #10
  tail call void @kfree(ptr noundef %clk.0) #10
  %3 = ptrtoint ptr %.pn20 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn20, align 4
  %cmp3.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp3.not, label %for.body4.for.inc10_crit_edge, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4

for.body4.for.inc10_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc10

for.inc10:                                        ; preds = %for.body4.for.inc10_crit_edge, %for.body.for.inc10_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 546
  br i1 %exitcond.not, label %for.end11, label %for.inc10.for.body_crit_edge

for.inc10.for.body_crit_edge:                     ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end11:                                        ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__imx_clk_gpr_scu(ptr noundef %name, ptr noundef %parent_name, i32 noundef %num_parents, i32 noundef %rsrc_id, i8 noundef zeroext %gpr_id, i8 noundef zeroext %flags, i1 noundef zeroext %invert) local_unnamed_addr #0 align 64 {
entry:
  %rsrc_id.addr.i = alloca i32, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %invert to i8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #10
  %0 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 545, i32 %rsrc_id)
  %cmp = icmp ugt i32 %rsrc_id, 545
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %gpr_id)
  %cmp1 = icmp ugt i8 %gpr_id, 61
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 32) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsrc_id.addr.i)
  %2 = ptrtoint ptr %rsrc_id.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rsrc_id, ptr %rsrc_id.addr.i, align 4
  %3 = load ptr, ptr @rsrc_table, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %imx_scu_clk_is_valid.exit.thread, label %imx_scu_clk_is_valid.exit

imx_scu_clk_is_valid.exit.thread:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsrc_id.addr.i)
  br label %if.end10

imx_scu_clk_is_valid.exit:                        ; preds = %if.end6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %num.i = getelementptr inbounds %struct.imx_clk_scu_rsrc_table, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num.i, align 4
  %conv.i = zext i8 %7 to i32
  %call.i = call ptr @bsearch(ptr noundef nonnull %rsrc_id.addr.i, ptr noundef %5, i32 noundef %conv.i, i32 noundef 4, ptr noundef nonnull @imx_scu_clk_search_cmp) #10
  %cmp.i.not = icmp eq ptr %call.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsrc_id.addr.i)
  br i1 %cmp.i.not, label %imx_scu_clk_is_valid.exit.cleanup_crit_edge, label %imx_scu_clk_is_valid.exit.if.end10_crit_edge

imx_scu_clk_is_valid.exit.if.end10_crit_edge:     ; preds = %imx_scu_clk_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

imx_scu_clk_is_valid.exit.cleanup_crit_edge:      ; preds = %imx_scu_clk_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %imx_scu_clk_is_valid.exit.if.end10_crit_edge, %imx_scu_clk_is_valid.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i78 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 20) #13
  %tobool12.not = icmp eq ptr %call7.i.i78, null
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %conv16 = trunc i32 %rsrc_id to i16
  %rsrc_id17 = getelementptr inbounds %struct.clk_gpr_scu, ptr %call7.i.i78, i32 0, i32 1
  %9 = ptrtoint ptr %rsrc_id17 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv16, ptr %rsrc_id17, align 4
  %gpr_id18 = getelementptr inbounds %struct.clk_gpr_scu, ptr %call7.i.i78, i32 0, i32 2
  %10 = ptrtoint ptr %gpr_id18 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %gpr_id, ptr %gpr_id18, align 2
  %flags19 = getelementptr inbounds %struct.clk_gpr_scu, ptr %call7.i.i78, i32 0, i32 3
  %11 = ptrtoint ptr %flags19 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %flags, ptr %flags19, align 1
  %gate_invert = getelementptr inbounds %struct.clk_gpr_scu, ptr %call7.i.i78, i32 0, i32 4
  %12 = ptrtoint ptr %gate_invert to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %gate_invert, align 8
  %conv22 = zext i8 %flags to i32
  %and = and i32 %conv22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end15.if.end25_crit_edge, label %if.then24

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @clk_gpr_gate_scu_ops, ptr %ops, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end15.if.end25_crit_edge
  %and27 = and i32 %conv22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end31_crit_edge, label %if.then29

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %ops30 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %14 = ptrtoint ptr %ops30 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @clk_gpr_div_scu_ops, ptr %ops30, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end25.if.end31_crit_edge
  %and33 = and i32 %conv22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end37_crit_edge, label %if.then35

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %ops36 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %15 = ptrtoint ptr %ops36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @clk_gpr_mux_scu_ops, ptr %ops36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end31.if.end37_crit_edge
  %flags38 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %16 = ptrtoint ptr %flags38 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flags38, align 4
  %17 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %name, ptr %init, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %18 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %parent_name, ptr %parent_names, align 4
  %conv40 = trunc i32 %num_parents to i8
  %num_parents41 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %19 = ptrtoint ptr %num_parents41 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv40, ptr %num_parents41, align 4
  %init43 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i78, i32 0, i32 2
  %20 = ptrtoint ptr %init43 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %init, ptr %init43, align 8
  %call45 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i78) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i78) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %21 = inttoptr i32 %call45 to ptr
  br label %cleanup

if.else:                                          ; preds = %if.end37
  %hw49 = getelementptr inbounds %struct.imx_scu_clk_node, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %hw49 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i78, ptr %hw49, align 4
  %clk_type = getelementptr inbounds %struct.imx_scu_clk_node, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %clk_type to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %gpr_id, ptr %clk_type, align 8
  %node = getelementptr inbounds %struct.imx_scu_clk_node, ptr %call7.i.i, i32 0, i32 6
  %arrayidx = getelementptr [546 x %struct.list_head], ptr @imx_scu_clks, i32 0, i32 %rsrc_id
  %prev.i = getelementptr [546 x %struct.list_head], ptr @imx_scu_clks, i32 0, i32 %rsrc_id, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %25, ptr noundef %arrayidx) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %node, ptr %prev.i, align 4
  %27 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx, ptr %node, align 8
  %prev3.i.i = getelementptr inbounds %struct.imx_scu_clk_node, ptr %call7.i.i, i32 0, i32 6, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %node, ptr %25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.else.cleanup_crit_edge, %if.then47, %if.then13, %imx_scu_clk_is_valid.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then13 ], [ %21, %if.then47 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %imx_scu_clk_is_valid.exit.cleanup_crit_edge ], [ %call7.i.i78, %if.else.cleanup_crit_edge ], [ %call7.i.i78, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_scu_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %msg.i = alloca %struct.imx_sc_msg_req_clock_enable, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rsrc_id = getelementptr inbounds %struct.clk_scu, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %rsrc_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rsrc_id, align 4
  %clk_type = getelementptr inbounds %struct.clk_scu, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %clk_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %clk_type, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #10
  %4 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, ptr %msg.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, ptr %msg.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, ptr %msg.i, i32 0, i32 3
  %10 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, ptr %msg.i, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777215, ptr %10, align 4
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %msg.i, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %5, align 2
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %6, align 1
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %4, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %1) #10
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %7, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %3, ptr %8, align 2
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %9, align 1
  %20 = load ptr, ptr @ccm_ipc_handle, align 4
  %call.i = call i32 @imx_scu_call_rpc(ptr noundef %20, ptr noundef nonnull %msg.i, i1 noundef zeroext true) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_scu_unprepare(ptr noundef %hw) #0 align 64 {
entry:
  %msg.i = alloca %struct.imx_sc_msg_req_clock_enable, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rsrc_id = getelementptr inbounds %struct.clk_scu, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %rsrc_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rsrc_id, align 4
  %clk_type = getelementptr inbounds %struct.clk_scu, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %clk_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %clk_type, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #10
  %4 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, ptr %msg.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, ptr %msg.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, ptr %msg.i, i32 0, i32 3
  %10 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, ptr %msg.i, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777215, ptr %10, align 4
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %msg.i, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %5, align 2
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %6, align 1
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %4, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %1) #10
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %7, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %3, ptr %8, align 2
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %9, align 1
  %20 = load ptr, ptr @ccm_ipc_handle, align 4
  %call.i = call i32 @imx_scu_call_rpc(ptr noundef %20, ptr noundef nonnull %msg.i, i1 noundef zeroext true) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %call2, i32 noundef %call.i) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_scu_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %msg = alloca %struct.imx_sc_msg_get_clock_rate, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #10
  %0 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.imx_sc_msg_get_clock_rate, ptr %msg, i32 0, i32 1
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %msg, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %1, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 6, ptr %2, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %0, align 1
  %rsrc_id = getelementptr inbounds %struct.clk_scu, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %rsrc_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rsrc_id, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %3, align 4
  %clk_type = getelementptr inbounds %struct.clk_scu, ptr %hw, i32 0, i32 2
  %14 = ptrtoint ptr %clk_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %clk_type, align 2
  %clk3 = getelementptr inbounds %struct.req_get_clock_rate, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %clk3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %clk3, align 2
  %17 = load ptr, ptr @ccm_ipc_handle, align 4
  %call4 = call i32 @imx_scu_call_rpc(ptr noundef %17, ptr noundef nonnull %msg, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %call5, i32 noundef %call4) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %20, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_scu_round_rate(ptr nocapture noundef readnone %hw, i32 noundef returned %rate, ptr nocapture noundef readnone %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %rate
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_scu_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  %msg = alloca %struct.imx_sc_msg_set_clock_parent, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #10
  %0 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.imx_sc_msg_set_clock_parent, ptr %msg, i32 0, i32 1
  %4 = getelementptr inbounds %struct.imx_sc_msg_set_clock_parent, ptr %msg, i32 0, i32 2
  %5 = getelementptr inbounds %struct.imx_sc_msg_set_clock_parent, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %msg, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %1, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 14, ptr %2, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %0, align 1
  %rsrc_id = getelementptr inbounds %struct.clk_scu, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %rsrc_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rsrc_id, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %3, align 1
  %clk_type = getelementptr inbounds %struct.clk_scu, ptr %hw, i32 0, i32 2
  %14 = ptrtoint ptr %clk_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %clk_type, align 2
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %4, align 1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %index, ptr %5, align 1
  %18 = load ptr, ptr @ccm_ipc_handle, align 4
  %call3 = call i32 @imx_scu_call_rpc(ptr noundef %18, ptr noundef nonnull %msg, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %call4, i32 noundef %call3) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %parent_index = getelementptr inbounds %struct.clk_scu, ptr %hw, i32 0, i32 4
  %19 = ptrtoint ptr %parent_index to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %index, ptr %parent_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #10
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_scu_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  %msg = alloca %struct.imx_sc_msg_get_clock_parent, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #10
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 72622811734081535, ptr %msg, align 8, !annotation !101
  %rsrc_id = getelementptr inbounds %struct.clk_scu, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %rsrc_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %rsrc_id, align 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %data = getelementptr inbounds %struct.imx_sc_msg_get_clock_parent, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %data, align 4
  %clk_type = getelementptr inbounds %struct.clk_scu, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %clk_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %clk_type, align 2
  %clk3 = getelementptr inbounds %struct.imx_sc_msg_get_clock_parent, ptr %msg, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %clk3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %clk3, align 2
  %8 = load ptr, ptr @ccm_ipc_handle, align 4
  %call4 = call i32 @imx_scu_call_rpc(ptr noundef %8, ptr noundef nonnull %msg, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %call5, i32 noundef %call4) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 4
  %parent_index = getelementptr inbounds %struct.clk_scu, ptr %hw, i32 0, i32 4
  %11 = ptrtoint ptr %parent_index to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %parent_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i8 [ 0, %do.end ], [ %10, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #10
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_scu_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %msg = alloca %struct.imx_sc_msg_req_set_clock_rate, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #10
  %0 = getelementptr inbounds i8, ptr %msg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %msg, align 4
  %svc = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 2
  %3 = ptrtoint ptr %svc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %svc, align 2
  %func = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 5, ptr %func, align 1
  %size = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %size, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %rate)
  %rate2 = getelementptr inbounds %struct.imx_sc_msg_req_set_clock_rate, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %rate2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rate2, align 4
  %rsrc_id = getelementptr inbounds %struct.clk_scu, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %rsrc_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rsrc_id, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %resource = getelementptr inbounds %struct.imx_sc_msg_req_set_clock_rate, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %resource to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %resource, align 4
  %clk_type = getelementptr inbounds %struct.clk_scu, ptr %hw, i32 0, i32 2
  %12 = ptrtoint ptr %clk_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %clk_type, align 2
  %clk3 = getelementptr inbounds %struct.imx_sc_msg_req_set_clock_rate, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %clk3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %clk3, align 2
  %15 = load ptr, ptr @ccm_ipc_handle, align 4
  %call4 = call i32 @imx_scu_call_rpc(ptr noundef %15, ptr noundef nonnull %msg, i1 noundef zeroext true) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #10
  ret i32 %call4
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_call_rpc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_scu_atf_set_cpu_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #10
  %rsrc_id = getelementptr inbounds %struct.clk_scu, ptr %hw, i32 0, i32 1
  %0 = call ptr @memset(ptr %res, i32 255, i32 16)
  %1 = ptrtoint ptr %rsrc_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %rsrc_id, align 4
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %2, label %entry.cleanup_crit_edge [
    i16 507, label %entry.if.end12_crit_edge
    i16 0, label %entry.if.end12_crit_edge17
    i16 5, label %if.then10
  ]

entry.if.end12_crit_edge17:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %entry.if.end12_crit_edge, %entry.if.end12_crit_edge17
  %cluster_id.0 = phi i32 [ 1, %if.then10 ], [ 0, %entry.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge17 ]
  call void @__arm_smccc_smc(i32 noundef -1040187391, i32 noundef 0, i32 noundef %cluster_id.0, i32 noundef %rate, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_clk_scu_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %rsrc = getelementptr inbounds %struct.imx_scu_clk_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rsrc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rsrc, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %3, label %if.then [
    i32 507, label %entry.if.end12_crit_edge
    i32 0, label %entry.if.end12_crit_edge84
    i32 5, label %entry.if.end12_crit_edge85
  ]

entry.if.end12_crit_edge85:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

entry.if.end12_crit_edge84:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #10
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 50) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #10
  tail call void @pm_runtime_enable(ptr noundef %dev1) #10
  %call.i76 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not = icmp eq i32 %call.i76, 0
  br i1 %tobool.not, label %if.end12thread-pre-split, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 @pm_genpd_remove_device(ptr noundef %dev1) #10
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #10
  br label %cleanup

if.end12thread-pre-split:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %rsrc to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %rsrc, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12thread-pre-split, %entry.if.end12_crit_edge, %entry.if.end12_crit_edge84, %entry.if.end12_crit_edge85
  %6 = phi i32 [ %.pr, %if.end12thread-pre-split ], [ %3, %entry.if.end12_crit_edge ], [ %3, %entry.if.end12_crit_edge84 ], [ %3, %entry.if.end12_crit_edge85 ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %parents = getelementptr inbounds %struct.imx_scu_clk_node, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %parents to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parents, align 4
  %num_parents = getelementptr inbounds %struct.imx_scu_clk_node, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %num_parents to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_parents, align 4
  %clk_type = getelementptr inbounds %struct.imx_scu_clk_node, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %clk_type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %clk_type, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %15 = getelementptr inbounds i8, ptr %init.i, i32 4
  %16 = getelementptr inbounds i8, ptr %init.i, i32 12
  %17 = call ptr @memset(ptr %16, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 28) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %__imx_clk_scu.exit.thread, label %if.end.i

__imx_clk_scu.exit.thread:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  br label %if.then16

if.end.i:                                         ; preds = %if.end12
  %conv.i = trunc i32 %6 to i16
  %rsrc_id2.i = getelementptr inbounds %struct.clk_scu, ptr %call7.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %rsrc_id2.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %rsrc_id2.i, align 4
  %clk_type3.i = getelementptr inbounds %struct.clk_scu, ptr %call7.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %clk_type3.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %14, ptr %clk_type3.i, align 2
  %21 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %8, ptr %init.i, align 4
  %22 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %6, label %if.else17.i [
    i32 507, label %if.end.i.if.end20.i_crit_edge
    i32 0, label %if.end.i.if.end20.i_crit_edge86
    i32 5, label %if.end.i.if.end20.i_crit_edge87
    i32 330, label %if.then15.i
  ]

if.end.i.if.end20.i_crit_edge87:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.end.i.if.end20.i_crit_edge86:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.else17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else17.i, %if.then15.i, %if.end.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge86, %if.end.i.if.end20.i_crit_edge87
  %clk_scu_pi_ops.sink.i = phi ptr [ @clk_scu_pi_ops, %if.then15.i ], [ @clk_scu_ops, %if.else17.i ], [ @clk_scu_cpu_ops, %if.end.i.if.end20.i_crit_edge ], [ @clk_scu_cpu_ops, %if.end.i.if.end20.i_crit_edge86 ], [ @clk_scu_cpu_ops, %if.end.i.if.end20.i_crit_edge87 ]
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %clk_scu_pi_ops.sink.i, ptr %15, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %24 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %10, ptr %parent_names.i, align 4
  %conv21.i = trunc i32 %12 to i8
  %num_parents22.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %25 = ptrtoint ptr %num_parents22.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv21.i, ptr %num_parents22.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 64, ptr %flags.i, align 4
  %init24.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %init24.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %init.i, ptr %init24.i, align 8
  %call26.i = call i32 @clk_hw_register(ptr noundef %dev1, ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end30.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %28 = inttoptr i32 %call26.i to ptr
  br label %__imx_clk_scu.exit

if.end30.i:                                       ; preds = %if.end20.i
  %tobool31.not.i = icmp eq ptr %dev1, null
  br i1 %tobool31.not.i, label %if.end30.i.__imx_clk_scu.exit_crit_edge, label %if.then32.i

if.end30.i.__imx_clk_scu.exit_crit_edge:          ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__imx_clk_scu.exit

if.then32.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i, ptr %driver_data.i.i, align 4
  br label %__imx_clk_scu.exit

__imx_clk_scu.exit:                               ; preds = %if.then32.i, %if.end30.i.__imx_clk_scu.exit_crit_edge, %if.then28.i
  %retval.0.i77 = phi ptr [ %28, %if.then28.i ], [ %call7.i.i.i, %if.then32.i ], [ %call7.i.i.i, %if.end30.i.__imx_clk_scu.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  %cmp.i = icmp ugt ptr %retval.0.i77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %__imx_clk_scu.exit.if.then16_crit_edge, label %if.end18

__imx_clk_scu.exit.if.then16_crit_edge:           ; preds = %__imx_clk_scu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then16:                                        ; preds = %__imx_clk_scu.exit.if.then16_crit_edge, %__imx_clk_scu.exit.thread
  %retval.0.i7782 = phi ptr [ inttoptr (i32 -12 to ptr), %__imx_clk_scu.exit.thread ], [ %retval.0.i77, %__imx_clk_scu.exit.if.then16_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #10
  %30 = ptrtoint ptr %retval.0.i7782 to i32
  br label %cleanup

if.end18:                                         ; preds = %__imx_clk_scu.exit
  %hw19 = getelementptr inbounds %struct.imx_scu_clk_node, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %hw19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %retval.0.i77, ptr %hw19, align 4
  %node = getelementptr inbounds %struct.imx_scu_clk_node, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %rsrc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rsrc, align 4
  %arrayidx = getelementptr [546 x %struct.list_head], ptr @imx_scu_clks, i32 0, i32 %33
  %prev.i = getelementptr [546 x %struct.list_head], ptr @imx_scu_clks, i32 0, i32 %33, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %35, ptr noundef %arrayidx) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end18.list_add_tail.exit_crit_edge

if.end18.list_add_tail.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %node, ptr %prev.i, align 4
  %37 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.imx_scu_clk_node, ptr %1, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %node, ptr %35, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end18.list_add_tail.exit_crit_edge
  %40 = ptrtoint ptr %rsrc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rsrc, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %41, label %if.then29 [
    i32 507, label %list_add_tail.exit.do.body_crit_edge
    i32 0, label %list_add_tail.exit.do.body_crit_edge88
    i32 5, label %list_add_tail.exit.do.body_crit_edge89
  ]

list_add_tail.exit.do.body_crit_edge89:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

list_add_tail.exit.do.body_crit_edge88:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

list_add_tail.exit.do.body_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then29:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i78 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %43 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store volatile i64 %call.i78, ptr %last_busy.i, align 8
  %call.i79 = call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #10
  br label %do.body

do.body:                                          ; preds = %if.then29, %list_add_tail.exit.do.body_crit_edge, %list_add_tail.exit.do.body_crit_edge88, %list_add_tail.exit.do.body_crit_edge89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_clk_scu_probe.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_clk_scu_probe, %if.then38)) #10
          to label %cleanup [label %if.then38], !srcloc !102

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %rsrc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rsrc, align 4
  %46 = ptrtoint ptr %clk_type to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %clk_type, align 4
  %conv = zext i8 %47 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_clk_scu_probe.__UNIQUE_ID_ddebug184, ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %45, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.body, %if.then16, %if.then10
  %retval.0 = phi i32 [ %30, %if.then16 ], [ %call.i76, %if.then10 ], [ 0, %if.then38 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_clk_scu_suspend(ptr noundef %dev) #0 align 64 {
entry:
  %msg.i = alloca %struct.imx_sc_msg_get_clock_rate, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rsrc_id1 = getelementptr inbounds %struct.clk_scu, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rsrc_id1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rsrc_id1, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %3, label %if.end [
    i16 507, label %entry.cleanup_crit_edge
    i16 0, label %entry.cleanup_crit_edge125
    i16 5, label %entry.cleanup_crit_edge126
  ]

entry.cleanup_crit_edge126:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge125:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call ptr @clk_hw_get_parent(ptr noundef %1) #10
  %parent = getelementptr inbounds %struct.clk_scu, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %parent, align 4
  %6 = ptrtoint ptr %rsrc_id1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rsrc_id1, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %7, label %if.else [
    i16 28, label %if.end.if.then28_crit_edge
    i16 29, label %if.end.if.then28_crit_edge127
    i16 45, label %if.end.if.then28_crit_edge128
    i16 46, label %if.end.if.then28_crit_edge129
  ]

if.end.if.then28_crit_edge129:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end.if.then28_crit_edge128:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end.if.then28_crit_edge127:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end.if.then28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.then28:                                        ; preds = %if.end.if.then28_crit_edge, %if.end.if.then28_crit_edge127, %if.end.if.then28_crit_edge128, %if.end.if.then28_crit_edge129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i) #10
  %9 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.imx_sc_msg_get_clock_rate, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %msg.i, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %10, align 2
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 6, ptr %11, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %9, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %7) #10
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %12, align 4
  %clk_type.i = getelementptr inbounds %struct.clk_scu, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %clk_type.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %clk_type.i, align 2
  %clk3.i = getelementptr inbounds %struct.req_get_clock_rate, ptr %12, i32 0, i32 1
  %22 = ptrtoint ptr %clk3.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %clk3.i, align 2
  %23 = load ptr, ptr @ccm_ipc_handle, align 4
  %call4.i = call i32 @imx_scu_call_rpc(ptr noundef %23, ptr noundef nonnull %msg.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = call ptr @clk_hw_get_name(ptr noundef %1) #10
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %call5.i, i32 noundef %call4.i) #14
  br label %clk_scu_recalc_rate.exit

if.end.i:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %12, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #10
  br label %clk_scu_recalc_rate.exit

clk_scu_recalc_rate.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i121 = phi i32 [ 0, %do.end.i ], [ %26, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #10
  br label %if.end34

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = tail call i32 @clk_hw_get_rate(ptr noundef %1) #10
  br label %if.end34

if.end34:                                         ; preds = %if.else, %clk_scu_recalc_rate.exit
  %call32.sink = phi i32 [ %call32, %if.else ], [ %retval.0.i121, %clk_scu_recalc_rate.exit ]
  %rate33 = getelementptr inbounds %struct.clk_scu, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %rate33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call32.sink, ptr %rate33, align 4
  %call36 = call zeroext i1 @clk_hw_is_enabled(ptr noundef %1) #10
  %is_enabled = getelementptr inbounds %struct.clk_scu, ptr %1, i32 0, i32 5
  %frombool = zext i1 %call36 to i8
  %28 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool, ptr %is_enabled, align 1
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %if.end34.if.end49_crit_edge, label %do.body

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.body:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_clk_scu_suspend.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_clk_scu_suspend, %if.then44)) #10
          to label %if.end49 [label %if.then44], !srcloc !102

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent, align 4
  %call46 = call ptr @clk_hw_get_name(ptr noundef %32) #10
  %parent_index = getelementptr inbounds %struct.clk_scu, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %parent_index to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %parent_index, align 4
  %conv47 = zext i8 %34 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_clk_scu_suspend.__UNIQUE_ID_ddebug185, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %call46, i32 noundef %conv47) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %do.body, %if.end34.if.end49_crit_edge
  %rate50 = getelementptr inbounds %struct.clk_scu, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %rate50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rate50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool51.not = icmp eq i32 %36, 0
  br i1 %tobool51.not, label %if.end49.if.end70_crit_edge, label %do.body53

if.end49.if.end70_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

do.body53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_clk_scu_suspend.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_clk_scu_suspend, %if.then65)) #10
          to label %if.end70 [label %if.then65], !srcloc !102

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %rate50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rate50, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_clk_scu_suspend.__UNIQUE_ID_ddebug186, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %38) #10
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %do.body53, %if.end49.if.end70_crit_edge
  %39 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %is_enabled, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool72.not = icmp eq i8 %40, 0
  br i1 %tobool72.not, label %if.end70.cleanup_crit_edge, label %do.body74

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_clk_scu_suspend.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_clk_scu_suspend, %if.then86)) #10
          to label %cleanup [label %if.then86], !srcloc !102

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_clk_scu_suspend.__UNIQUE_ID_ddebug187, ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %do.body74, %if.end70.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge125, %entry.cleanup_crit_edge126
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_clk_scu_resume(ptr noundef %dev) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.imx_sc_msg_req_clock_enable, align 4
  %msg.i107 = alloca %struct.imx_sc_msg_req_set_clock_rate, align 4
  %msg.i = alloca %struct.imx_sc_msg_set_clock_parent, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rsrc_id1 = getelementptr inbounds %struct.clk_scu, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rsrc_id1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rsrc_id1, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %3, label %if.end [
    i16 507, label %entry.cleanup_crit_edge
    i16 0, label %entry.cleanup_crit_edge116
    i16 5, label %entry.cleanup_crit_edge117
  ]

entry.cleanup_crit_edge117:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge116:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.clk_scu, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end23_crit_edge, label %if.then8

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then8:                                         ; preds = %if.end
  %parent_index = getelementptr inbounds %struct.clk_scu, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %parent_index to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %parent_index, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i) #10
  %9 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.imx_sc_msg_set_clock_parent, ptr %msg.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.imx_sc_msg_set_clock_parent, ptr %msg.i, i32 0, i32 2
  %14 = getelementptr inbounds %struct.imx_sc_msg_set_clock_parent, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %msg.i, align 1
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %10, align 1
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 14, ptr %11, align 1
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %9, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %12, align 1
  %clk_type.i = getelementptr inbounds %struct.clk_scu, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %clk_type.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %clk_type.i, align 2
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %13, align 1
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %8, ptr %14, align 1
  %25 = load ptr, ptr @ccm_ipc_handle, align 4
  %call3.i = call i32 @imx_scu_call_rpc(ptr noundef %25, ptr noundef nonnull %msg.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = call ptr @clk_hw_get_name(ptr noundef %1) #10
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %call4.i, i32 noundef %call3.i) #14
  br label %clk_scu_set_parent.exit

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %parent_index to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %8, ptr %parent_index, align 4
  br label %clk_scu_set_parent.exit

clk_scu_set_parent.exit:                          ; preds = %if.end.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_clk_scu_resume.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_clk_scu_resume, %if.then14)) #10
          to label %if.end23 [label %if.then14], !srcloc !102

if.then14:                                        ; preds = %clk_scu_set_parent.exit
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent, align 4
  %call16 = call ptr @clk_hw_get_name(ptr noundef %28) #10
  %29 = ptrtoint ptr %parent_index to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %parent_index, align 4
  %conv18 = zext i8 %30 to i32
  %cond = select i1 %tobool.not.i, ptr @.str.26, ptr @.str.27
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_clk_scu_resume.__UNIQUE_ID_ddebug188, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef %call16, i32 noundef %conv18, ptr noundef nonnull %cond) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %clk_scu_set_parent.exit, %if.end.if.end23_crit_edge
  %ret.0 = phi i32 [ %call3.i, %if.then14 ], [ 0, %if.end.if.end23_crit_edge ], [ %call3.i, %clk_scu_set_parent.exit ]
  %rate = getelementptr inbounds %struct.clk_scu, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool24.not = icmp eq i32 %32, 0
  br i1 %tobool24.not, label %if.end23.if.end50_crit_edge, label %if.then25

if.end23.if.end50_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i107) #10
  %33 = getelementptr inbounds i8, ptr %msg.i107, i32 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %33, align 4
  %35 = ptrtoint ptr %msg.i107 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %msg.i107, align 4
  %svc.i = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i107, i32 0, i32 2
  %36 = ptrtoint ptr %svc.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %svc.i, align 2
  %func.i = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i107, i32 0, i32 3
  %37 = ptrtoint ptr %func.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 5, ptr %func.i, align 1
  %size.i = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i107, i32 0, i32 1
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %size.i, align 1
  %39 = call i32 @llvm.bswap.i32(i32 %32) #10
  %rate2.i = getelementptr inbounds %struct.imx_sc_msg_req_set_clock_rate, ptr %msg.i107, i32 0, i32 1
  %40 = ptrtoint ptr %rate2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rate2.i, align 4
  %41 = ptrtoint ptr %rsrc_id1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rsrc_id1, align 4
  %43 = call i16 @llvm.bswap.i16(i16 %42) #10
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %33, align 4
  %clk_type.i109 = getelementptr inbounds %struct.clk_scu, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %clk_type.i109 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %clk_type.i109, align 2
  %clk3.i = getelementptr inbounds %struct.imx_sc_msg_req_set_clock_rate, ptr %msg.i107, i32 0, i32 3
  %47 = ptrtoint ptr %clk3.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %clk3.i, align 2
  %48 = load ptr, ptr @ccm_ipc_handle, align 4
  %call4.i110 = call i32 @imx_scu_call_rpc(ptr noundef %48, ptr noundef nonnull %msg.i107, i1 noundef zeroext true) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i107) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_clk_scu_resume.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_clk_scu_resume, %if.then41)) #10
          to label %if.end50 [label %if.then41], !srcloc !102

if.then41:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i110)
  %tobool43.not = icmp eq i32 %call4.i110, 0
  %cond46 = select i1 %tobool43.not, ptr @.str.26, ptr @.str.27
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_clk_scu_resume.__UNIQUE_ID_ddebug189, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %50, ptr noundef nonnull %cond46) #10
  br label %if.end50

if.end50:                                         ; preds = %if.then41, %if.then25, %if.end23.if.end50_crit_edge
  %ret.1 = phi i32 [ %call4.i110, %if.then41 ], [ %ret.0, %if.end23.if.end50_crit_edge ], [ %call4.i110, %if.then25 ]
  %is_enabled = getelementptr inbounds %struct.clk_scu, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_enabled, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool51.not = icmp eq i8 %52, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 330, i16 %3)
  %cmp53.not = icmp eq i16 %3, 330
  %or.cond = select i1 %tobool51.not, i1 true, i1 %cmp53.not
  br i1 %or.cond, label %if.end50.cleanup_crit_edge, label %if.then55

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %rsrc_id1 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %rsrc_id1, align 4
  %clk_type.i112 = getelementptr inbounds %struct.clk_scu, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %clk_type.i112 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %clk_type.i112, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #10
  %57 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i.i, i32 0, i32 1
  %58 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i.i, i32 0, i32 2
  %59 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i.i, i32 0, i32 3
  %60 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, ptr %msg.i.i, i32 0, i32 1
  %61 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, ptr %msg.i.i, i32 0, i32 2
  %62 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, ptr %msg.i.i, i32 0, i32 3
  %63 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, ptr %msg.i.i, i32 0, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 16777215, ptr %63, align 4
  %65 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %msg.i.i, align 4
  %66 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 2, ptr %58, align 2
  %67 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 7, ptr %59, align 1
  %68 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %57, align 1
  %69 = call i16 @llvm.bswap.i16(i16 %54) #10
  %70 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %60, align 4
  %71 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %56, ptr %61, align 2
  %72 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %62, align 1
  %73 = load ptr, ptr @ccm_ipc_handle, align 4
  %call.i.i = call i32 @imx_scu_call_rpc(ptr noundef %73, ptr noundef nonnull %msg.i.i, i1 noundef zeroext true) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_clk_scu_resume.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_clk_scu_resume, %if.then70)) #10
          to label %cleanup [label %if.then70], !srcloc !102

if.then70:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool71.not = icmp eq i32 %call.i.i, 0
  %cond74 = select i1 %tobool71.not, ptr @.str.26, ptr @.str.27
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_clk_scu_resume.__UNIQUE_ID_ddebug190, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond74) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.then55, %if.end50.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge116, %entry.cleanup_crit_edge117
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge116 ], [ 0, %entry.cleanup_crit_edge117 ], [ %call.i.i, %if.then70 ], [ %ret.1, %if.end50.cleanup_crit_edge ], [ %call.i.i, %if.then55 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_hw_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bsearch(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx_scu_clk_search_cmp(ptr nocapture noundef readonly %rsrc, ptr nocapture noundef readonly %rsrc_p) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %rsrc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rsrc, align 4
  %2 = ptrtoint ptr %rsrc_p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rsrc_p, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_gpr_gate_scu_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ccm_ipc_handle, align 4
  %rsrc_id = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %rsrc_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %rsrc_id, align 4
  %conv = zext i16 %2 to i32
  %gpr_id = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %gpr_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %gpr_id, align 2
  %gate_invert = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %gate_invert to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %gate_invert, align 4, !range !103
  %7 = xor i8 %6, 1
  %8 = zext i8 %7 to i32
  %call = tail call i32 @imx_sc_misc_set_control(ptr noundef %0, i32 noundef %conv, i8 noundef zeroext %4, i32 noundef %8) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_gpr_gate_scu_unprepare(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ccm_ipc_handle, align 4
  %rsrc_id = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %rsrc_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %rsrc_id, align 4
  %conv = zext i16 %2 to i32
  %gpr_id = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %gpr_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %gpr_id, align 2
  %gate_invert = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %gate_invert to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %gate_invert, align 4, !range !103
  %7 = zext i8 %6 to i32
  %call = tail call i32 @imx_sc_misc_set_control(ptr noundef %0, i32 noundef %conv, i8 noundef zeroext %4, i32 noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %call4, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_gpr_gate_scu_is_prepared(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !101
  %1 = load ptr, ptr @ccm_ipc_handle, align 4
  %rsrc_id = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %rsrc_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rsrc_id, align 4
  %conv = zext i16 %3 to i32
  %gpr_id = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %gpr_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gpr_id, align 2
  %call = call i32 @imx_sc_misc_get_control(ptr noundef %1, i32 noundef %conv, i8 noundef zeroext %5, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %gate_invert = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %gate_invert to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gate_invert, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %cond.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  %lnot.ext = zext i1 %tobool3.not to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %lnot.ext, %cond.true ], [ %9, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_sc_misc_set_control(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_sc_misc_get_control(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_gpr_div_scu_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !101
  %1 = load ptr, ptr @ccm_ipc_handle, align 4
  %rsrc_id = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %rsrc_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rsrc_id, align 4
  %conv = zext i16 %3 to i32
  %gpr_id = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %gpr_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gpr_id, align 2
  %call = call i32 @imx_sc_misc_get_control(ptr noundef %1, i32 noundef %conv, i8 noundef zeroext %5, ptr noundef nonnull %val) #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp ne i32 %7, 0
  %div8 = zext i1 %tobool.not to i32
  %cond = lshr i32 %parent_rate, %div8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %cond5 = select i1 %tobool1.not, i32 %cond, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %cond5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_gpr_div_scu_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp = icmp ugt i32 %1, %rate
  %div4 = zext i1 %cmp to i32
  %rate.addr.0 = lshr i32 %1, %div4
  ret i32 %rate.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_gpr_div_scu_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %cmp = icmp ult i32 %rate, %parent_rate
  %cond = zext i1 %cmp to i32
  %0 = load ptr, ptr @ccm_ipc_handle, align 4
  %rsrc_id = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %rsrc_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %rsrc_id, align 4
  %conv = zext i16 %2 to i32
  %gpr_id = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %gpr_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %gpr_id, align 2
  %call = tail call i32 @imx_sc_misc_set_control(ptr noundef %0, i32 noundef %conv, i8 noundef zeroext %4, i32 noundef %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond1 = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_gpr_mux_scu_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ccm_ipc_handle, align 4
  %rsrc_id = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %rsrc_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %rsrc_id, align 4
  %conv = zext i16 %2 to i32
  %gpr_id = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %gpr_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %gpr_id, align 2
  %conv1 = zext i8 %index to i32
  %call = tail call i32 @imx_sc_misc_set_control(ptr noundef %0, i32 noundef %conv, i8 noundef zeroext %4, i32 noundef %conv1) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_gpr_mux_scu_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %1 = load ptr, ptr @ccm_ipc_handle, align 4
  %rsrc_id = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %rsrc_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rsrc_id, align 4
  %conv = zext i16 %3 to i32
  %gpr_id = getelementptr inbounds %struct.clk_gpr_scu, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %gpr_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gpr_id, align 2
  %call = call i32 @imx_sc_misc_get_control(ptr noundef %1, i32 noundef %conv, i8 noundef zeroext %5, ptr noundef nonnull %val) #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %conv1 = trunc i32 %7 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i8 %conv1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !55, !56, !57, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !73, !74, !75, !77, !78, !80, !81, !83, !85, !86, !87, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-scu.c", i32 202, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-scu.c", i32 209, i32 47}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-scu.c", i32 675, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @imx_clk_scu_alloc_dev._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @imx_clk_scu_alloc_dev._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-scu.c", i32 686, i32 26}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-scu.c", i32 690, i32 3}
!14 = !{ptr @imx_clk_scu_alloc_dev._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @imx_clk_scu_alloc_dev._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @ccm_ipc_handle, !17, !"ccm_ipc_handle", i1 false, i1 false}
!17 = !{!"../drivers/clk/imx/clk-scu.c", i32 23, i32 27}
!18 = !{ptr @pd_np, !19, !"pd_np", i1 false, i1 false}
!19 = !{!"../drivers/clk/imx/clk-scu.c", i32 24, i32 28}
!20 = !{ptr @rsrc_table, !21, !"rsrc_table", i1 false, i1 false}
!21 = !{!"../drivers/clk/imx/clk-scu.c", i32 26, i32 45}
!22 = !{ptr @imx_scu_clks, !23, !"imx_scu_clks", i1 false, i1 false}
!23 = !{!"../drivers/clk/imx/clk-scu.c", i32 39, i32 18}
!24 = !{ptr @clk_scu_ops, !25, !"clk_scu_ops", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-scu.c", i32 426, i32 29}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/imx/clk-scu.c", i32 422, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @clk_scu_unprepare._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @clk_scu_unprepare._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/imx/clk-scu.c", i32 245, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @clk_scu_recalc_rate._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @clk_scu_recalc_rate._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/imx/clk-scu.c", i32 365, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @clk_scu_set_parent._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @clk_scu_set_parent._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/imx/clk-scu.c", i32 337, i32 3}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @clk_scu_get_parent._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @clk_scu_get_parent._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @clk_scu_cpu_ops, !47, !"clk_scu_cpu_ops", i1 false, i1 false}
!47 = !{!"../drivers/clk/imx/clk-scu.c", i32 436, i32 29}
!48 = !{ptr @clk_scu_pi_ops, !49, !"clk_scu_pi_ops", i1 false, i1 false}
!49 = !{!"../drivers/clk/imx/clk-scu.c", i32 444, i32 29}
!50 = !{ptr @imx_clk_scu_driver, !51, !"imx_clk_scu_driver", i1 false, i1 false}
!51 = !{!"../drivers/clk/imx/clk-scu.c", i32 632, i32 31}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/imx/clk-scu.c", i32 555, i32 2}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @imx_clk_scu_probe.__UNIQUE_ID_ddebug184, !53, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!57 = !{ptr @imx_clk_scu_pm_ops, !58, !"imx_clk_scu_pm_ops", i1 false, i1 false}
!58 = !{!"../drivers/clk/imx/clk-scu.c", i32 627, i32 32}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/imx/clk-scu.c", i32 583, i32 3}
!61 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @imx_clk_scu_suspend.__UNIQUE_ID_ddebug185, !60, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/imx/clk-scu.c", i32 587, i32 3}
!65 = !{ptr @imx_clk_scu_suspend.__UNIQUE_ID_ddebug186, !64, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/imx/clk-scu.c", i32 590, i32 3}
!68 = !{ptr @imx_clk_scu_suspend.__UNIQUE_ID_ddebug187, !67, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/imx/clk-scu.c", i32 607, i32 3}
!71 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @imx_clk_scu_resume.__UNIQUE_ID_ddebug188, !70, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!73 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/imx/clk-scu.c", i32 614, i32 3}
!77 = !{ptr @imx_clk_scu_resume.__UNIQUE_ID_ddebug189, !76, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/imx/clk-scu.c", i32 620, i32 3}
!80 = !{ptr @imx_clk_scu_resume.__UNIQUE_ID_ddebug190, !79, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!81 = !{ptr @clk_gpr_gate_scu_ops, !82, !"clk_gpr_gate_scu_ops", i1 false, i1 false}
!82 = !{!"../drivers/clk/imx/clk-scu.c", i32 817, i32 29}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/imx/clk-scu.c", i32 799, i32 3}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @clk_gpr_gate_scu_unprepare._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @clk_gpr_gate_scu_unprepare._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @clk_gpr_div_scu_ops, !89, !"clk_gpr_div_scu_ops", i1 false, i1 false}
!89 = !{!"../drivers/clk/imx/clk-scu.c", i32 753, i32 29}
!90 = !{ptr @clk_gpr_mux_scu_ops, !91, !"clk_gpr_mux_scu_ops", i1 false, i1 false}
!91 = !{!"../drivers/clk/imx/clk-scu.c", i32 778, i32 29}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"auto-init"}
!102 = !{i64 2148976014, i64 2148976019, i64 2148976032, i64 2148976076, i64 2148976110, i64 2148976131}
!103 = !{i8 0, i8 2}
