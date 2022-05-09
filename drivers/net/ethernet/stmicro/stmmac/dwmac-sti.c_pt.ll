; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sti_dwmac_of_data = type { ptr }
%struct.stmmac_resources = type { ptr, [6 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32] }
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
%struct.sti_dwmac = type { i32, i8, i32, ptr, i32, i32, ptr, i8, i32, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@__initcall__kmod_dwmac_sti__353_432_sti_dwmac_driver_init6 = internal global ptr @sti_dwmac_driver_init, section ".initcall6.init", align 4
@sti_dwmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sti_dwmac_probe, ptr @sti_dwmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sti_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sti_dwmac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sti_dwmac_driver_exit = internal global ptr @sti_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author354 = internal constant [66 x i8] c"dwmac_sti.author=Srinivas Kandagatla <srinivas.kandagatla@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description355 = internal constant [67 x i8] c"dwmac_sti.description=STMicroelectronics DWMAC Specific Glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [61 x i8] c"dwmac_sti.file=drivers/net/ethernet/stmicro/stmmac/dwmac-sti\00", section ".modinfo", align 1
@__UNIQUE_ID_license357 = internal constant [22 x i8] c"dwmac_sti.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sti-dwmac\00", [22 x i8] zeroinitializer }, align 32
@sti_dwmac_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih415-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih4xx_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih416-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih4xx_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stid127-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stid127_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih4xx_dwmac_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@sti_dwmac_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sti_dwmac_suspend, ptr @sti_dwmac_resume, ptr @sti_dwmac_suspend, ptr @sti_dwmac_resume, ptr @sti_dwmac_suspend, ptr @sti_dwmac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sti_dwmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 320, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No OF match data provided\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sti_dwmac_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sti_dwmac_probe._entry_ptr = internal global ptr @sti_dwmac_probe._entry, section ".printk_index", align 4
@sti_dwmac_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 340, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to parse OF data\0A\00", [39 x i8] zeroinitializer }, align 32
@sti_dwmac_probe._entry_ptr.8 = internal global ptr @sti_dwmac_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sti-clkconf\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st,syscon\00", [22 x i8] zeroinitializer }, align 32
@sti_dwmac_parse_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Can't get sysconfig ctrl offset (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sti_dwmac_parse_data\00", [43 x i8] zeroinitializer }, align 32
@sti_dwmac_parse_data._entry_ptr = internal global ptr @sti_dwmac_parse_data._entry, section ".printk_index", align 4
@sti_dwmac_parse_data._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 274, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Can't get phy-mode\0A\00", [44 x i8] zeroinitializer }, align 32
@sti_dwmac_parse_data._entry_ptr.15 = internal global ptr @sti_dwmac_parse_data._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st,gmac_en\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st,ext-phyclk\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st,tx-retime-src\00", [47 x i8] zeroinitializer }, align 32
@sti_dwmac_parse_data._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.3, i32 291, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Use internal clock source\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sti_dwmac_parse_data._entry_ptr.22 = internal global ptr @sti_dwmac_parse_data._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_125\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"txclk\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sti-ethclk\00", [21 x i8] zeroinitializer }, align 32
@sti_dwmac_parse_data._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.12, ptr @.str.3, i32 303, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No phy clock provided...\0A\00", [38 x i8] zeroinitializer }, align 32
@sti_dwmac_parse_data._entry_ptr.28 = internal global ptr @sti_dwmac_parse_data._entry.26, section ".printk_index", align 4
@phy_intf_sels = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 0, i32 16, i32 0, i32 4, i32 4], [52 x i8] zeroinitializer }, align 32
@stih4xx_dwmac_data = internal constant { %struct.sti_dwmac_of_data, [28 x i8] } { %struct.sti_dwmac_of_data { ptr @stih4xx_fix_retime_src }, [28 x i8] zeroinitializer }, align 32
@stid127_dwmac_data = internal constant { %struct.sti_dwmac_of_data, [28 x i8] } { %struct.sti_dwmac_of_data { ptr @stid127_fix_retime_src }, [28 x i8] zeroinitializer }, align 32
@stih4xx_tx_retime_val = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 64, i32 0, i32 256, i32 384], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.30 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.32 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"sti_dwmac_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 423, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 427, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"sti_dwmac_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 414, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"sti_dwmac_pm_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 403, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 320, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 340, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 258, i32 59 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 262, i32 47 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 268, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 274, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 279, i32 45 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 280, i32 48 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 289, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 291, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 293, i32 24 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 295, i32 29 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 301, i32 33 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 303, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [14 x i8] c"phy_intf_sels\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 135, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"stih4xx_dwmac_data\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 406, i32 39 }
@___asan_gen_.130 = private unnamed_addr constant [19 x i8] c"stid127_dwmac_data\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 410, i32 39 }
@___asan_gen_.133 = private unnamed_addr constant [22 x i8] c"stih4xx_tx_retime_val\00", align 1
@___asan_gen_.134 = private constant [51 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 152, i32 12 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_description355, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_license357, ptr @__exitcall_sti_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_sti__353_432_sti_dwmac_driver_init6, ptr @sti_dwmac_driver_exit, ptr @sti_dwmac_parse_data._entry, ptr @sti_dwmac_parse_data._entry.13, ptr @sti_dwmac_parse_data._entry.19, ptr @sti_dwmac_parse_data._entry.26, ptr @sti_dwmac_parse_data._entry_ptr, ptr @sti_dwmac_parse_data._entry_ptr.15, ptr @sti_dwmac_parse_data._entry_ptr.22, ptr @sti_dwmac_parse_data._entry_ptr.28, ptr @sti_dwmac_probe._entry, ptr @sti_dwmac_probe._entry.6, ptr @sti_dwmac_probe._entry_ptr, ptr @sti_dwmac_probe._entry_ptr.8, ptr @sti_dwmac_driver, ptr @.str, ptr @sti_dwmac_match, ptr @sti_dwmac_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @phy_intf_sels, ptr @stih4xx_dwmac_data, ptr @stid127_dwmac_data, ptr @stih4xx_tx_retime_val], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_dwmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_dwmac_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_dwmac_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_dwmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_dwmac_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_dwmac_parse_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_dwmac_parse_data._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_dwmac_parse_data._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_dwmac_parse_data._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_intf_sels to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih4xx_dwmac_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stid127_dwmac_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih4xx_tx_retime_val to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_dwmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sti_dwmac_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sti_dwmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sti_dwmac_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_dwmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %rs.i = alloca ptr, align 4
  %stmmac_res = alloca %struct.stmmac_resources, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %stmmac_res) #6
  %0 = call ptr @memset(ptr %stmmac_res, i32 255, i32 96)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @stmmac_get_platform_resources(ptr noundef %pdev, ptr noundef nonnull %stmmac_res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mac = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 1
  %call6 = call ptr @stmmac_probe_config_dt(ptr noundef %pdev, ptr noundef %mac) #6
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #6
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end10.err_remove_config_dt_crit_edge, label %if.end15

if.end10.err_remove_config_dt_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_remove_config_dt

if.end15:                                         ; preds = %if.end10
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %clk_sel_reg.i = getelementptr inbounds %struct.sti_dwmac, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %clk_sel_reg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -6, ptr %clk_sel_reg.i, align 4
  %call.i71 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.9) #6
  %tobool.not.i = icmp eq ptr %call.i71, null
  br i1 %tobool.not.i, label %if.end15.if.end.i_crit_edge, label %if.then.i

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call.i71 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i71, align 4
  %7 = ptrtoint ptr %clk_sel_reg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %clk_sel_reg.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end15.if.end.i_crit_edge
  %call3.i = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.10) #6
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call3.i to i32
  br label %sti_dwmac_parse_data.exit

if.end7.i:                                        ; preds = %if.end.i
  %ctrl_reg.i = getelementptr inbounds %struct.sti_dwmac, ptr %call.i, i32 0, i32 4
  %call8.i = call i32 @of_property_read_u32_index(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef %ctrl_reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %sti_dwmac_parse_data.exit.thread78

sti_dwmac_parse_data.exit.thread78:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call8.i) #9
  br label %do.end21

if.end11.i:                                       ; preds = %if.end7.i
  %call12.i = call i32 @of_get_phy_mode(ptr noundef %3, ptr noundef nonnull %call.i) #6
  %9 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12.i, label %do.end17.i [
    i32 0, label %if.end11.i.if.end18.i_crit_edge
    i32 -19, label %if.end11.i.if.end18.i_crit_edge84
  ]

if.end11.i.if.end18.i_crit_edge84:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.end11.i.if.end18.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %sti_dwmac_parse_data.exit

if.end18.i:                                       ; preds = %if.end11.i.if.end18.i_crit_edge, %if.end11.i.if.end18.i_crit_edge84
  %regmap19.i = getelementptr inbounds %struct.sti_dwmac, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %regmap19.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3.i, ptr %regmap19.i, align 4
  %call.i.i = call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef null) #6
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %gmac_en.i = getelementptr inbounds %struct.sti_dwmac, ptr %call.i, i32 0, i32 7
  %frombool.i = zext i1 %tobool.i.i to i8
  %11 = ptrtoint ptr %gmac_en.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool.i, ptr %gmac_en.i, align 4
  %call.i111.i = call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.17, ptr noundef null) #6
  %tobool.i112.i = icmp ne ptr %call.i111.i, null
  %ext_phyclk.i = getelementptr inbounds %struct.sti_dwmac, ptr %call.i, i32 0, i32 1
  %frombool22.i = zext i1 %tobool.i112.i to i8
  %12 = ptrtoint ptr %ext_phyclk.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool22.i, ptr %ext_phyclk.i, align 4
  %tx_retime_src.i = getelementptr inbounds %struct.sti_dwmac, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %tx_retime_src.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_retime_src.i, align 4
  %speed.i = getelementptr inbounds %struct.sti_dwmac, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 100, ptr %speed.i, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %16, label %if.end18.i.if.end57.i_crit_edge [
    i32 9, label %if.end18.i.if.then36.i_crit_edge
    i32 10, label %if.end18.i.if.then36.i_crit_edge85
    i32 11, label %if.end18.i.if.then36.i_crit_edge86
    i32 12, label %if.end18.i.if.then36.i_crit_edge87
    i32 3, label %if.end18.i.if.then36.i_crit_edge88
  ]

if.end18.i.if.then36.i_crit_edge88:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i

if.end18.i.if.then36.i_crit_edge87:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i

if.end18.i.if.then36.i_crit_edge86:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i

if.end18.i.if.then36.i_crit_edge85:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i

if.end18.i.if.then36.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i

if.end18.i.if.end57.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i

if.then36.i:                                      ; preds = %if.end18.i.if.then36.i_crit_edge, %if.end18.i.if.then36.i_crit_edge85, %if.end18.i.if.then36.i_crit_edge86, %if.end18.i.if.then36.i_crit_edge87, %if.end18.i.if.then36.i_crit_edge88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rs.i) #6
  %18 = ptrtoint ptr %rs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %rs.i, align 4, !annotation !81
  %19 = ptrtoint ptr %tx_retime_src.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %tx_retime_src.i, align 4
  %call38.i = call i32 @of_property_read_string(ptr noundef %3, ptr noundef nonnull @.str.18, ptr noundef nonnull %rs.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.i = icmp slt i32 %call38.i, 0
  br i1 %cmp39.i, label %do.end43.i, label %if.else.i

do.end43.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  br label %if.end55.i

if.else.i:                                        ; preds = %if.then36.i
  %20 = ptrtoint ptr %rs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rs.i, align 4
  %call44.i = call i32 @strcasecmp(ptr noundef %21, ptr noundef nonnull @.str.23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %if.else48.i

if.then46.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %tx_retime_src.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %tx_retime_src.i, align 4
  br label %if.end55.i

if.else48.i:                                      ; preds = %if.else.i
  %call49.i = call i32 @strcasecmp(ptr noundef %21, ptr noundef nonnull @.str.24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.then51.i, label %if.else48.i.if.end55.i_crit_edge

if.else48.i.if.end55.i_crit_edge:                 ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

if.then51.i:                                      ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %tx_retime_src.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %tx_retime_src.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then51.i, %if.else48.i.if.end55.i_crit_edge, %if.then46.i, %do.end43.i
  %24 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1000, ptr %speed.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rs.i) #6
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.end55.i, %if.end18.i.if.end57.i_crit_edge
  %call58.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.25) #6
  %clk.i = getelementptr inbounds %struct.sti_dwmac, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call58.i, ptr %clk.i, align 4
  %cmp.i113.i = icmp ugt ptr %call58.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113.i, label %do.end64.i, label %if.end57.i.if.end23_crit_edge

if.end57.i.if.end23_crit_edge:                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end64.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  %26 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %clk.i, align 4
  br label %if.end23

sti_dwmac_parse_data.exit:                        ; preds = %do.end17.i, %if.then5.i
  %retval.0.i = phi i32 [ %8, %if.then5.i ], [ %call12.i, %do.end17.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool17.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool17.not, label %sti_dwmac_parse_data.exit.if.end23_crit_edge, label %sti_dwmac_parse_data.exit.do.end21_crit_edge

sti_dwmac_parse_data.exit.do.end21_crit_edge:     ; preds = %sti_dwmac_parse_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sti_dwmac_parse_data.exit.if.end23_crit_edge:     ; preds = %sti_dwmac_parse_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end21:                                         ; preds = %sti_dwmac_parse_data.exit.do.end21_crit_edge, %sti_dwmac_parse_data.exit.thread78
  %retval.0.i81 = phi i32 [ %call8.i, %sti_dwmac_parse_data.exit.thread78 ], [ %retval.0.i, %sti_dwmac_parse_data.exit.do.end21_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %err_remove_config_dt

if.end23:                                         ; preds = %sti_dwmac_parse_data.exit.if.end23_crit_edge, %do.end64.i, %if.end57.i.if.end23_crit_edge
  %27 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call, align 4
  %fix_retime_src24 = getelementptr inbounds %struct.sti_dwmac, ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %fix_retime_src24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %fix_retime_src24, align 4
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call6, i32 0, i32 46
  %30 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %bsp_priv, align 4
  %31 = load ptr, ptr %call, align 4
  %fix_mac_speed = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call6, i32 0, i32 35
  %32 = ptrtoint ptr %fix_mac_speed to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %fix_mac_speed, align 4
  %clk = getelementptr inbounds %struct.sti_dwmac, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk, align 4
  %call.i72 = call i32 @clk_prepare(ptr noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i73 = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i73, label %if.end.i74, label %if.end23.err_remove_config_dt_crit_edge

if.end23.err_remove_config_dt_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_remove_config_dt

if.end.i74:                                       ; preds = %if.end23
  %call1.i = call i32 @clk_enable(ptr noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end29, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %34) #6
  br label %err_remove_config_dt

if.end29:                                         ; preds = %if.end.i74
  call fastcc void @sti_dwmac_set_mode(ptr noundef nonnull %call.i)
  %call35 = call i32 @stmmac_dvr_probe(ptr noundef %dev, ptr noundef %call6, ptr noundef nonnull %stmmac_res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end29.cleanup_crit_edge, label %disable_clk

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

disable_clk:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %36) #6
  call void @clk_unprepare(ptr noundef %36) #6
  br label %err_remove_config_dt

err_remove_config_dt:                             ; preds = %disable_clk, %if.then3.i, %if.end23.err_remove_config_dt_crit_edge, %do.end21, %if.end10.err_remove_config_dt_crit_edge
  %ret.1 = phi i32 [ %retval.0.i81, %do.end21 ], [ %call35, %disable_clk ], [ -12, %if.end10.err_remove_config_dt_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i72, %if.end23.err_remove_config_dt_crit_edge ]
  call void @stmmac_remove_config_dt(ptr noundef %pdev, ptr noundef %call6) #6
  br label %cleanup

cleanup:                                          ; preds = %err_remove_config_dt, %if.end29.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %1, %if.then8 ], [ %ret.1, %err_remove_config_dt ], [ -22, %do.end ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %stmmac_res) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_dwmac_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %plat.i = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat.i, align 128
  %bsp_priv.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %bsp_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsp_priv.i, align 4
  %call2 = tail call i32 @stmmac_dvr_remove(ptr noundef %dev) #6
  %clk = getelementptr inbounds %struct.sti_dwmac, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sti_dwmac_set_mode(ptr noundef %dwmac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.sti_dwmac, ptr %dwmac, i32 0, i32 6
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %2 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dwmac, align 4
  %ctrl_reg = getelementptr inbounds %struct.sti_dwmac, ptr %dwmac, i32 0, i32 4
  %4 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl_reg, align 4
  %gmac_en = getelementptr inbounds %struct.sti_dwmac, ptr %dwmac, i32 0, i32 7
  %6 = ptrtoint ptr %gmac_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gmac_en, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %5, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr [11 x i32], ptr @phy_intf_sels, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call.i1 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %5, i32 noundef 28, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp eq i32 %3, 6
  %cond = select i1 %cmp, i32 0, i32 32
  %call.i2 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %5, i32 noundef 32, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %fix_retime_src = getelementptr inbounds %struct.sti_dwmac, ptr %dwmac, i32 0, i32 9
  %10 = ptrtoint ptr %fix_retime_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fix_retime_src, align 4
  %speed = getelementptr inbounds %struct.sti_dwmac, ptr %dwmac, i32 0, i32 8
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed, align 4
  tail call void %11(ptr noundef %dwmac, i32 noundef %13) #6
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
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stih4xx_fix_retime_src(ptr nocapture noundef readonly %priv, i32 noundef %spd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_retime_src = getelementptr inbounds %struct.sti_dwmac, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %tx_retime_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_retime_src, align 4
  %ctrl_reg = getelementptr inbounds %struct.sti_dwmac, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_reg, align 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %5, label %if.end31.fold.split [
    i32 2, label %entry.if.end35_crit_edge
    i32 7, label %if.then3
    i32 9, label %entry.if.then17_crit_edge
    i32 10, label %entry.if.then17_crit_edge61
    i32 11, label %entry.if.then17_crit_edge62
    i32 12, label %entry.if.then17_crit_edge63
  ]

entry.if.then17_crit_edge63:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

entry.if.then17_crit_edge62:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

entry.if.then17_crit_edge61:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

entry.if.then17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ext_phyclk = getelementptr inbounds %struct.sti_dwmac, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %ext_phyclk to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ext_phyclk, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %. = select i1 %tobool.not, i32 4, i32 3
  %not.tobool.not = xor i1 %tobool.not, true
  %.52 = select i1 %tobool.not, i32 50000000, i32 0
  br label %if.end31

if.then17:                                        ; preds = %entry.if.then17_crit_edge, %entry.if.then17_crit_edge61, %entry.if.then17_crit_edge62, %entry.if.then17_crit_edge63
  %9 = zext i32 %spd to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %spd, label %if.then17.if.end35_crit_edge [
    i32 1000, label %if.then17.if.end31_crit_edge
    i32 100, label %if.then22
    i32 10, label %if.then25
  ]

if.then17.if.end31_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then17.if.end35_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then25:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end31.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.end31:                                         ; preds = %if.then25, %if.then22, %if.then17.if.end31_crit_edge, %if.then3
  %src.0 = phi i32 [ 4, %if.then22 ], [ 4, %if.then25 ], [ %., %if.then3 ], [ %1, %if.then17.if.end31_crit_edge ]
  %tobool33.not = phi i1 [ false, %if.then22 ], [ false, %if.then25 ], [ %not.tobool.not, %if.then3 ], [ false, %if.then17.if.end31_crit_edge ]
  %freq.0 = phi i32 [ 25000000, %if.then22 ], [ 2500000, %if.then25 ], [ %.52, %if.then3 ], [ 125000000, %if.then17.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %src.0)
  %cmp32 = icmp ne i32 %src.0, 4
  %brmerge = select i1 %cmp32, i1 true, i1 %tobool33.not
  br i1 %brmerge, label %if.end31.if.end35_crit_edge, label %if.then34

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.sti_dwmac, ptr %priv, i32 0, i32 3
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %freq.0) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31.if.end35_crit_edge, %if.end31.fold.split, %if.then17.if.end35_crit_edge, %entry.if.end35_crit_edge
  %src.060 = phi i32 [ %src.0, %if.end31.if.end35_crit_edge ], [ 4, %if.then34 ], [ %1, %if.end31.fold.split ], [ 1, %entry.if.end35_crit_edge ], [ 4, %if.then17.if.end35_crit_edge ]
  %regmap = getelementptr inbounds %struct.sti_dwmac, ptr %priv, i32 0, i32 6
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr [5 x i32], ptr @stih4xx_tx_retime_val, i32 0, i32 %src.060
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %3, i32 noundef 448, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stid127_fix_retime_src(ptr nocapture noundef readonly %priv, i32 noundef %spd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_reg = getelementptr inbounds %struct.sti_dwmac, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrl_reg, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %priv, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %3, label %if.end30.fold.split [
    i32 2, label %entry.if.end33_crit_edge
    i32 7, label %if.then3
    i32 9, label %entry.if.then16_crit_edge
    i32 10, label %entry.if.then16_crit_edge52
    i32 11, label %entry.if.then16_crit_edge53
    i32 12, label %entry.if.then16_crit_edge54
  ]

entry.if.then16_crit_edge54:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

entry.if.then16_crit_edge53:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

entry.if.then16_crit_edge52:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

entry.if.then16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then3:                                         ; preds = %entry
  %ext_phyclk = getelementptr inbounds %struct.sti_dwmac, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %ext_phyclk to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ext_phyclk, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then3.if.then32_crit_edge, label %if.then3.if.end33_crit_edge

if.then3.if.end33_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then3.if.then32_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

if.then16:                                        ; preds = %entry.if.then16_crit_edge, %entry.if.then16_crit_edge52, %entry.if.then16_crit_edge53, %entry.if.then16_crit_edge54
  %7 = zext i32 %spd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %spd, label %if.then16.if.end33_crit_edge [
    i32 1000, label %if.then16.if.then32_crit_edge
    i32 100, label %if.then21
    i32 10, label %if.then24
  ]

if.then16.if.then32_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

if.then16.if.end33_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then21:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

if.then24:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

if.end30.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then32:                                        ; preds = %if.then24, %if.then21, %if.then16.if.then32_crit_edge, %if.then3.if.then32_crit_edge
  %freq.0 = phi i32 [ 2500000, %if.then24 ], [ 25000000, %if.then21 ], [ 125000000, %if.then16.if.then32_crit_edge ], [ 50000000, %if.then3.if.then32_crit_edge ]
  %val.0 = phi i32 [ 64, %if.then24 ], [ 64, %if.then21 ], [ 64, %if.then16.if.then32_crit_edge ], [ 128, %if.then3.if.then32_crit_edge ]
  %clk = getelementptr inbounds %struct.sti_dwmac, ptr %priv, i32 0, i32 3
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %9, i32 noundef %freq.0) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30.fold.split, %if.then16.if.end33_crit_edge, %if.then3.if.end33_crit_edge, %entry.if.end33_crit_edge
  %val.051 = phi i32 [ %val.0, %if.then32 ], [ 0, %if.end30.fold.split ], [ 64, %entry.if.end33_crit_edge ], [ 0, %if.then3.if.end33_crit_edge ], [ 64, %if.then16.if.end33_crit_edge ]
  %regmap = getelementptr inbounds %struct.sti_dwmac, ptr %priv, i32 0, i32 6
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %1, i32 noundef 192, i32 noundef %val.051, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_dwmac_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %plat.i = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat.i, align 128
  %bsp_priv.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %bsp_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsp_priv.i, align 4
  %call1 = tail call i32 @stmmac_suspend(ptr noundef %dev) #6
  %clk = getelementptr inbounds %struct.sti_dwmac, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_dwmac_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %plat.i = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat.i, align 128
  %bsp_priv.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %bsp_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsp_priv.i, align 4
  %clk = getelementptr inbounds %struct.sti_dwmac, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  tail call fastcc void @sti_dwmac_set_mode(ptr noundef %5)
  %call3 = tail call i32 @stmmac_resume(ptr noundef %dev) #6
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_resume(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !56, !58, !59, !60, !62, !64, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_dwmac_sti__353_432_sti_dwmac_driver_init6, !1, !"__initcall__kmod_dwmac_sti__353_432_sti_dwmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 432, i32 1}
!2 = !{ptr @__exitcall_sti_dwmac_driver_exit, !1, !"__exitcall_sti_dwmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author354, !4, !"__UNIQUE_ID_author354", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 434, i32 1}
!5 = !{ptr @__UNIQUE_ID_description355, !6, !"__UNIQUE_ID_description355", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 435, i32 1}
!7 = !{ptr @__UNIQUE_ID_file356, !8, !"__UNIQUE_ID_file356", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 436, i32 1}
!9 = !{ptr @__UNIQUE_ID_license357, !8, !"__UNIQUE_ID_license357", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 427, i32 21}
!12 = !{ptr @sti_dwmac_driver, !13, !"sti_dwmac_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 423, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 320, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sti_dwmac_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sti_dwmac_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 340, i32 3}
!24 = !{ptr @sti_dwmac_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sti_dwmac_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 258, i32 59}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 262, i32 47}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 268, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sti_dwmac_parse_data._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @sti_dwmac_parse_data._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 274, i32 3}
!37 = !{ptr @sti_dwmac_parse_data._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sti_dwmac_parse_data._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 279, i32 45}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 280, i32 48}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 289, i32 37}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 291, i32 4}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sti_dwmac_parse_data._entry.19, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @sti_dwmac_parse_data._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 293, i32 24}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 295, i32 29}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 301, i32 33}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 303, i32 3}
!58 = !{ptr @sti_dwmac_parse_data._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @sti_dwmac_parse_data._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @phy_intf_sels, !61, !"phy_intf_sels", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 135, i32 12}
!62 = !{ptr @sti_dwmac_match, !63, !"sti_dwmac_match", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 414, i32 34}
!64 = !{ptr @stih4xx_dwmac_data, !65, !"stih4xx_dwmac_data", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 406, i32 39}
!66 = !{ptr @stih4xx_tx_retime_val, !67, !"stih4xx_tx_retime_val", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 152, i32 12}
!68 = !{ptr @stid127_dwmac_data, !69, !"stid127_dwmac_data", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 410, i32 39}
!70 = !{ptr @sti_dwmac_pm_ops, !71, !"sti_dwmac_pm_ops", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c", i32 403, i32 8}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{i8 0, i8 2}
