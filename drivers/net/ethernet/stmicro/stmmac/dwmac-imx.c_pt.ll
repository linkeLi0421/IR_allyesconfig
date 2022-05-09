; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.imx_dwmac_ops = type { i32, i8, ptr }
%struct.atomic_t = type { i32 }
%struct.stmmac_resources = type { ptr, [6 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32] }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.imx_priv_data = type { ptr, ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@__initcall__kmod_dwmac_imx__354_315_imx_dwmac_driver_init6 = internal global ptr @imx_dwmac_driver_init, section ".initcall6.init", align 4
@imx_dwmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_dwmac_probe, ptr @stmmac_pltfr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_dwmac_driver_exit = internal global ptr @imx_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author355 = internal constant [21 x i8] c"dwmac_imx.author=NXP\00", section ".modinfo", align 1
@__UNIQUE_ID_description356 = internal constant [57 x i8] c"dwmac_imx.description=NXP imx8 DWMAC Specific Glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file357 = internal constant [61 x i8] c"dwmac_imx.file=drivers/net/ethernet/stmicro/stmmac/dwmac-imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [25 x i8] c"dwmac_imx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imx-dwmac\00", [22 x i8] zeroinitializer }, align 32
@imx_dwmac_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,imx8mp-dwmac-eqos\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mp_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,imx8dxl-dwmac-eqos\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8dxl_dwmac_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@imx_dwmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get match data\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx_dwmac_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_dwmac_probe._entry_ptr = internal global ptr @imx_dwmac_probe._entry, section ".printk_index", align 4
@imx_dwmac_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 250, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to parse OF data\0A\00", [39 x i8] zeroinitializer }, align 32
@imx_dwmac_probe._entry_ptr.8 = internal global ptr @imx_dwmac_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snps,rmii_refclk_ext\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@imx_dwmac_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 186, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get tx clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_dwmac_parse_dt\00", [45 x i8] zeroinitializer }, align 32
@imx_dwmac_parse_dt._entry_ptr = internal global ptr @imx_dwmac_parse_dt._entry, section ".printk_index", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl,imx8dxl\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@imx_dwmac_parse_dt._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.3, i32 194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get mem clock\0A\00", [39 x i8] zeroinitializer }, align 32
@imx_dwmac_parse_dt._entry_ptr.17 = internal global ptr @imx_dwmac_parse_dt._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx8mp\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intf_mode\00", [22 x i8] zeroinitializer }, align 32
@imx_dwmac_parse_dt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.3, i32 210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't get intf mode reg offset (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_dwmac_parse_dt._entry_ptr.22 = internal global ptr @imx_dwmac_parse_dt._entry.20, section ".printk_index", align 4
@imx_dwmac_clks_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 101, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mem clock enable failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx_dwmac_clks_config\00", [42 x i8] zeroinitializer }, align 32
@imx_dwmac_clks_config._entry_ptr = internal global ptr @imx_dwmac_clks_config._entry, section ".printk_index", align 4
@imx_dwmac_clks_config._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx clock enable failed\0A\00", [40 x i8] zeroinitializer }, align 32
@imx_dwmac_clks_config._entry_ptr.27 = internal global ptr @imx_dwmac_clks_config._entry.25, section ".printk_index", align 4
@imx_dwmac_fix_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid speed %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx_dwmac_fix_speed\00", [44 x i8] zeroinitializer }, align 32
@imx_dwmac_fix_speed._entry_ptr = internal global ptr @imx_dwmac_fix_speed._entry, section ".printk_index", align 4
@imx_dwmac_fix_speed._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set tx rate %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@imx_dwmac_fix_speed._entry_ptr.32 = internal global ptr @imx_dwmac_fix_speed._entry.30, section ".printk_index", align 4
@imx8mp_dwmac_data = internal global { %struct.imx_dwmac_ops, [20 x i8] } { %struct.imx_dwmac_ops { i32 34, i8 0, ptr @imx8mp_set_intf_mode }, [20 x i8] zeroinitializer }, align 32
@imx8dxl_dwmac_data = internal global { %struct.imx_dwmac_ops, [20 x i8] } { %struct.imx_dwmac_ops { i32 32, i8 1, ptr @imx8dxl_set_intf_mode }, [20 x i8] zeroinitializer }, align 32
@imx8mp_set_intf_mode.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dwmac_imx\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx8mp_set_intf_mode\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"imx dwmac doesn't support %d interface\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 7]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.37 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 7, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"imx_dwmac_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 306, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 310, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"imx_dwmac_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 299, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 240, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 250, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 181, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 184, i32 36 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 186, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 191, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 192, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 194, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 199, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 204, i32 60 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 210, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 101, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 107, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 166, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 172, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [18 x i8] c"imx8mp_dwmac_data\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 287, i32 29 }
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"imx8dxl_dwmac_data\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 293, i32 29 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [51 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 74, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_description356, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_license358, ptr @__exitcall_imx_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_imx__354_315_imx_dwmac_driver_init6, ptr @imx_dwmac_clks_config._entry, ptr @imx_dwmac_clks_config._entry.25, ptr @imx_dwmac_clks_config._entry_ptr, ptr @imx_dwmac_clks_config._entry_ptr.27, ptr @imx_dwmac_driver_exit, ptr @imx_dwmac_fix_speed._entry, ptr @imx_dwmac_fix_speed._entry.30, ptr @imx_dwmac_fix_speed._entry_ptr, ptr @imx_dwmac_fix_speed._entry_ptr.32, ptr @imx_dwmac_parse_dt._entry, ptr @imx_dwmac_parse_dt._entry.15, ptr @imx_dwmac_parse_dt._entry.20, ptr @imx_dwmac_parse_dt._entry_ptr, ptr @imx_dwmac_parse_dt._entry_ptr.17, ptr @imx_dwmac_parse_dt._entry_ptr.22, ptr @imx_dwmac_probe._entry, ptr @imx_dwmac_probe._entry.6, ptr @imx_dwmac_probe._entry_ptr, ptr @imx_dwmac_probe._entry_ptr.8, ptr @imx_dwmac_driver, ptr @.str, ptr @imx_dwmac_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @imx8mp_dwmac_data, ptr @imx8dxl_dwmac_data, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dwmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dwmac_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dwmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dwmac_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dwmac_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dwmac_parse_dt._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dwmac_parse_dt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dwmac_clks_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dwmac_clks_config._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dwmac_fix_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dwmac_fix_speed._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_dwmac_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8dxl_dwmac_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dwmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_dwmac_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_dwmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_dwmac_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dwmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %stmmac_res = alloca %struct.stmmac_resources, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %stmmac_res) #6
  %0 = call ptr @memset(ptr %stmmac_res, i32 255, i32 96)
  %call = call i32 @stmmac_get_platform_resources(ptr noundef %pdev, ptr noundef nonnull %stmmac_res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mac = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 1
  %call5 = call ptr @stmmac_probe_config_dt(ptr noundef %pdev, ptr noundef %mac) #6
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call11 = call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %err_match_data

if.end15:                                         ; preds = %if.end9
  %ops = getelementptr inbounds %struct.imx_priv_data, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %ops, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %call.i86 = call ptr @of_get_property(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call.i86, null
  br i1 %tobool.not.i, label %if.end15.if.end.i_crit_edge, label %if.then.i

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %rmii_refclk_ext.i = getelementptr inbounds %struct.imx_priv_data, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %rmii_refclk_ext.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %rmii_refclk_ext.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end15.if.end.i_crit_edge
  %call1.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.10) #6
  %clk_tx.i = getelementptr inbounds %struct.imx_priv_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %clk_tx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1.i, ptr %clk_tx.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.imx_dwmac_parse_dt.exit.sink.split_crit_edge, label %if.end7.i

if.end.i.imx_dwmac_parse_dt.exit.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx_dwmac_parse_dt.exit.sink.split

if.end7.i:                                        ; preds = %if.end.i
  %clk_mem.i = getelementptr inbounds %struct.imx_priv_data, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %clk_mem.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %clk_mem.i, align 4
  %call8.i = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.if.end22.i_crit_edge, label %if.then10.i

if.end7.i.if.end22.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then10.i:                                      ; preds = %if.end7.i
  %call11.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.14) #6
  %9 = ptrtoint ptr %clk_mem.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11.i, ptr %clk_mem.i, align 4
  %cmp.i63.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i, label %if.then10.i.imx_dwmac_parse_dt.exit.sink.split_crit_edge, label %if.then10.i.if.end22.i_crit_edge

if.then10.i.if.end22.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then10.i.imx_dwmac_parse_dt.exit.sink.split_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx_dwmac_parse_dt.exit.sink.split

if.end22.i:                                       ; preds = %if.then10.i.if.end22.i_crit_edge, %if.end7.i.if.end22.i_crit_edge
  %call23.i = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end26_crit_edge, label %if.then25.i

if.end22.i.if.end26_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then25.i:                                      ; preds = %if.end22.i
  %call26.i = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.19) #6
  %intf_regmap.i = getelementptr inbounds %struct.imx_priv_data, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %intf_regmap.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call26.i, ptr %intf_regmap.i, align 4
  %cmp.i64.i = icmp ugt ptr %call26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64.i, label %if.then25.i.imx_dwmac_parse_dt.exit_crit_edge, label %if.end32.i

if.then25.i.imx_dwmac_parse_dt.exit_crit_edge:    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx_dwmac_parse_dt.exit

if.end32.i:                                       ; preds = %if.then25.i
  %intf_reg_off.i = getelementptr inbounds %struct.imx_priv_data, ptr %call.i, i32 0, i32 4
  %call33.i = call i32 @of_property_read_u32_index(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef 1, ptr noundef %intf_reg_off.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end26_crit_edge, label %imx_dwmac_parse_dt.exit.thread94

if.end32.i.if.end26_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

imx_dwmac_parse_dt.exit.thread94:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call33.i) #9
  br label %do.end24

imx_dwmac_parse_dt.exit.sink.split:               ; preds = %if.then10.i.imx_dwmac_parse_dt.exit.sink.split_crit_edge, %if.end.i.imx_dwmac_parse_dt.exit.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.11, %if.end.i.imx_dwmac_parse_dt.exit.sink.split_crit_edge ], [ @.str.16, %if.then10.i.imx_dwmac_parse_dt.exit.sink.split_crit_edge ]
  %clk_tx.i.sink = phi ptr [ %clk_tx.i, %if.end.i.imx_dwmac_parse_dt.exit.sink.split_crit_edge ], [ %clk_mem.i, %if.then10.i.imx_dwmac_parse_dt.exit.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.11.sink) #9
  %11 = ptrtoint ptr %clk_tx.i.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_tx.i.sink, align 4
  br label %imx_dwmac_parse_dt.exit

imx_dwmac_parse_dt.exit:                          ; preds = %imx_dwmac_parse_dt.exit.sink.split, %if.then25.i.imx_dwmac_parse_dt.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call26.i, %if.then25.i.imx_dwmac_parse_dt.exit_crit_edge ], [ %12, %imx_dwmac_parse_dt.exit.sink.split ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool20.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool20.not, label %imx_dwmac_parse_dt.exit.if.end26_crit_edge, label %imx_dwmac_parse_dt.exit.do.end24_crit_edge

imx_dwmac_parse_dt.exit.do.end24_crit_edge:       ; preds = %imx_dwmac_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

imx_dwmac_parse_dt.exit.if.end26_crit_edge:       ; preds = %imx_dwmac_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.end24:                                         ; preds = %imx_dwmac_parse_dt.exit.do.end24_crit_edge, %imx_dwmac_parse_dt.exit.thread94
  %retval.0.i97 = phi i32 [ %call33.i, %imx_dwmac_parse_dt.exit.thread94 ], [ %retval.0.i, %imx_dwmac_parse_dt.exit.do.end24_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %err_match_data

if.end26:                                         ; preds = %imx_dwmac_parse_dt.exit.if.end26_crit_edge, %if.end32.i.if.end26_crit_edge, %if.end22.i.if.end26_crit_edge
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %addr64 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call5, i32 0, i32 28
  %17 = ptrtoint ptr %addr64 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %addr64, align 4
  %init = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call5, i32 0, i32 40
  %18 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @imx_dwmac_init, ptr %init, align 4
  %exit = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call5, i32 0, i32 41
  %19 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @imx_dwmac_exit, ptr %exit, align 4
  %clks_config = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call5, i32 0, i32 43
  %20 = ptrtoint ptr %clks_config to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @imx_dwmac_clks_config, ptr %clks_config, align 4
  %fix_mac_speed = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call5, i32 0, i32 35
  %21 = ptrtoint ptr %fix_mac_speed to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @imx_dwmac_fix_speed, ptr %fix_mac_speed, align 4
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call5, i32 0, i32 46
  %22 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %bsp_priv, align 4
  %plat_dat28 = getelementptr inbounds %struct.imx_priv_data, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %plat_dat28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5, ptr %plat_dat28, align 4
  %call29 = call i32 @imx_dwmac_clks_config(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end26.err_match_data_crit_edge

if.end26.err_match_data_crit_edge:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_match_data

if.end32:                                         ; preds = %if.end26
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %set_intf_mode.i = getelementptr inbounds %struct.imx_dwmac_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %set_intf_mode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_intf_mode.i, align 4
  %tobool.not.i87 = icmp eq ptr %27, null
  br i1 %tobool.not.i87, label %if.end32.if.end36_crit_edge, label %if.then.i89

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then.i89:                                      ; preds = %if.end32
  %28 = ptrtoint ptr %plat_dat28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %plat_dat28, align 4
  %call.i88 = call i32 %27(ptr noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool4.not.i = icmp eq i32 %call.i88, 0
  br i1 %tobool4.not.i, label %if.then.i89.if.end36_crit_edge, label %if.then.i89.err_dwmac_init_crit_edge

if.then.i89.err_dwmac_init_crit_edge:             ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_dwmac_init

if.then.i89.if.end36_crit_edge:                   ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end36:                                         ; preds = %if.then.i89.if.end36_crit_edge, %if.end32.if.end36_crit_edge
  %call38 = call i32 @stmmac_dvr_probe(ptr noundef %dev, ptr noundef %call5, ptr noundef nonnull %stmmac_res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end36.cleanup_crit_edge, label %if.end36.err_dwmac_init_crit_edge

if.end36.err_dwmac_init_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_dwmac_init

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_dwmac_init:                                   ; preds = %if.end36.err_dwmac_init_crit_edge, %if.then.i89.err_dwmac_init_crit_edge
  %ret.0 = phi i32 [ %call.i88, %if.then.i89.err_dwmac_init_crit_edge ], [ %call38, %if.end36.err_dwmac_init_crit_edge ]
  %30 = ptrtoint ptr %clk_tx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_tx.i, align 4
  call void @clk_disable(ptr noundef %31) #6
  call void @clk_unprepare(ptr noundef %31) #6
  %clk_mem13.i = getelementptr inbounds %struct.imx_priv_data, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %clk_mem13.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_mem13.i, align 4
  call void @clk_disable(ptr noundef %33) #6
  call void @clk_unprepare(ptr noundef %33) #6
  br label %err_match_data

err_match_data:                                   ; preds = %err_dwmac_init, %if.end26.err_match_data_crit_edge, %do.end24, %do.end
  %ret.1 = phi i32 [ %retval.0.i97, %do.end24 ], [ %call29, %if.end26.err_match_data_crit_edge ], [ %ret.0, %err_dwmac_init ], [ -22, %do.end ]
  call void @stmmac_remove_config_dt(ptr noundef %pdev, ptr noundef %call5) #6
  br label %cleanup

cleanup:                                          ; preds = %err_match_data, %if.end36.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then7 ], [ %ret.1, %err_match_data ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %stmmac_res) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_pltfr_remove(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dwmac_init(ptr nocapture noundef readnone %pdev, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.imx_priv_data, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %set_intf_mode = getelementptr inbounds %struct.imx_dwmac_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %set_intf_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_intf_mode, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %plat_dat1 = getelementptr inbounds %struct.imx_priv_data, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %plat_dat1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dat1, align 4
  %call = tail call i32 %3(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @imx_dwmac_exit(ptr nocapture noundef %pdev, ptr nocapture noundef %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dwmac_clks_config(ptr nocapture noundef readonly %priv, i1 noundef zeroext %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enabled, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %clk_mem = getelementptr inbounds %struct.imx_priv_data, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %clk_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_mem, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_tx = getelementptr inbounds %struct.imx_priv_data, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %clk_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_tx, align 4
  %call.i26 = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i27, label %if.end.i30, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

if.end.i30:                                       ; preds = %if.end
  %call1.i28 = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool2.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool2.not.i29, label %if.end.i30.cleanup_crit_edge, label %if.then3.i31

if.end.i30.cleanup_crit_edge:                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i31:                                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i31, %if.end.do.end8_crit_edge
  %retval.0.i32.ph = phi i32 [ %call1.i28, %if.then3.i31 ], [ %call.i26, %if.end.do.end8_crit_edge ]
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.26) #9
  %8 = ptrtoint ptr %clk_mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_mem, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clk_tx12 = getelementptr inbounds %struct.imx_priv_data, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %clk_tx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_tx12, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  %clk_mem13 = getelementptr inbounds %struct.imx_priv_data, ptr %priv, i32 0, i32 2
  %12 = ptrtoint ptr %clk_mem13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_mem13, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end8, %if.end.i30.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i32.ph, %do.end8 ], [ 0, %if.else ], [ 0, %if.end.i30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_dwmac_fix_speed(ptr nocapture noundef readonly %priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.imx_priv_data, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %mac_rgmii_txclk_auto_adj = getelementptr inbounds %struct.imx_dwmac_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mac_rgmii_txclk_auto_adj to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_rgmii_txclk_auto_adj, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %plat_dat1 = getelementptr inbounds %struct.imx_priv_data, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %plat_dat1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dat1, align 4
  %interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interface, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end [
    i32 7, label %lor.lhs.false.cleanup_crit_edge
    i32 2, label %lor.lhs.false.cleanup_crit_edge24
  ]

lor.lhs.false.cleanup_crit_edge24:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %speed, label %do.end [
    i32 1000, label %if.end.sw.epilog_crit_edge
    i32 100, label %sw.bb5
    i32 10, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.28, i32 noundef %speed) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %if.end.sw.epilog_crit_edge
  %rate.0 = phi i32 [ 2500000, %sw.bb6 ], [ 25000000, %sw.bb5 ], [ 125000000, %if.end.sw.epilog_crit_edge ]
  %clk_tx = getelementptr inbounds %struct.imx_priv_data, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %clk_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_tx, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef %rate.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %do.end11, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.31, i32 noundef %rate.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %sw.epilog.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge24, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mp_set_intf_mode(ptr nocapture noundef readonly %plat_dat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 46
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %3, label %do.body [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 7, label %sw.bb1
    i32 9, label %entry.sw.bb2_crit_edge
    i32 10, label %entry.sw.bb2_crit_edge17
    i32 11, label %entry.sw.bb2_crit_edge18
    i32 12, label %entry.sw.bb2_crit_edge19
  ]

entry.sw.bb2_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rmii_refclk_ext = getelementptr inbounds %struct.imx_priv_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %rmii_refclk_ext to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rmii_refclk_ext, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %phi.bo = select i1 %tobool.not, i32 1835008, i32 786432
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge17, %entry.sw.bb2_crit_edge18, %entry.sw.bb2_crit_edge19
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx8mp_set_intf_mode.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx8mp_set_intf_mode, %if.then)) #6
          to label %cleanup [label %if.then], !srcloc !90

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interface, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @imx8mp_set_intf_mode.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.35, i32 noundef %8) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 2686976, %sw.bb2 ], [ %phi.bo, %sw.bb1 ], [ 524288, %entry.sw.epilog_crit_edge ]
  %intf_regmap = getelementptr inbounds %struct.imx_priv_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %intf_regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf_regmap, align 4
  %intf_reg_off = getelementptr inbounds %struct.imx_priv_data, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %intf_reg_off to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %intf_reg_off, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %12, i32 noundef 4128768, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then, %do.body
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %if.then ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx8dxl_set_intf_mode(ptr nocapture noundef readnone %plat_dat) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !45, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_dwmac_imx__354_315_imx_dwmac_driver_init6, !1, !"__initcall__kmod_dwmac_imx__354_315_imx_dwmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 315, i32 1}
!2 = !{ptr @__exitcall_imx_dwmac_driver_exit, !1, !"__exitcall_imx_dwmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author355, !4, !"__UNIQUE_ID_author355", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 317, i32 1}
!5 = !{ptr @__UNIQUE_ID_description356, !6, !"__UNIQUE_ID_description356", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 318, i32 1}
!7 = !{ptr @__UNIQUE_ID_file357, !8, !"__UNIQUE_ID_file357", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 319, i32 1}
!9 = !{ptr @__UNIQUE_ID_license358, !8, !"__UNIQUE_ID_license358", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 310, i32 21}
!12 = !{ptr @imx_dwmac_driver, !13, !"imx_dwmac_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 306, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 240, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @imx_dwmac_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @imx_dwmac_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 250, i32 3}
!24 = !{ptr @imx_dwmac_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @imx_dwmac_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 181, i32 26}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 184, i32 36}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 186, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @imx_dwmac_parse_dt._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @imx_dwmac_parse_dt._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 191, i32 31}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 192, i32 38}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 194, i32 4}
!41 = !{ptr @imx_dwmac_parse_dt._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @imx_dwmac_parse_dt._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 199, i32 31}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 204, i32 60}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 210, i32 4}
!49 = !{ptr @imx_dwmac_parse_dt._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @imx_dwmac_parse_dt._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 101, i32 4}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @imx_dwmac_clks_config._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @imx_dwmac_clks_config._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 107, i32 4}
!58 = !{ptr @imx_dwmac_clks_config._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @imx_dwmac_clks_config._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 166, i32 3}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @imx_dwmac_fix_speed._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @imx_dwmac_fix_speed._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 172, i32 3}
!67 = !{ptr @imx_dwmac_fix_speed._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @imx_dwmac_fix_speed._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @imx_dwmac_match, !70, !"imx_dwmac_match", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 299, i32 34}
!71 = !{ptr @imx8mp_dwmac_data, !72, !"imx8mp_dwmac_data", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 287, i32 29}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 74, i32 3}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @imx8mp_set_intf_mode.__UNIQUE_ID_ddebug353, !74, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!78 = !{ptr @imx8dxl_dwmac_data, !79, !"imx8dxl_dwmac_data", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c", i32 293, i32 29}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i8 0, i8 2}
!90 = !{i64 2148727476, i64 2148727481, i64 2148727494, i64 2148727538, i64 2148727572, i64 2148727593}
