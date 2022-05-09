; ModuleID = '/llk/IR_all_yes/drivers/soc/imx/imx8m-blk-ctrl.c_pt.bc'
source_filename = "../drivers/soc/imx/imx8m-blk-ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.imx8m_blk_ctrl_data = type { i32, ptr, ptr, i32 }
%struct.imx8m_blk_ctrl_domain_data = type { ptr, ptr, i32, ptr, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.imx8m_blk_ctrl = type { ptr, %struct.notifier_block, ptr, ptr, ptr, %struct.genpd_onecell_data }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.imx8m_blk_ctrl_domain = type { %struct.generic_pm_domain, ptr, [3 x %struct.clk_bulk_data], ptr, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_imx8m_blk_ctrl__171_617_imx8m_blk_ctrl_driver_init6 = internal global ptr @imx8m_blk_ctrl_driver_init, section ".initcall6.init", align 4
@imx8m_blk_ctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx8m_blk_ctrl_probe, ptr @imx8m_blk_ctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx8m_blk_ctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx8m_blk_ctrl_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx8m_blk_ctrl_driver_exit = internal global ptr @imx8m_blk_ctrl_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx8m-blk-ctrl\00", [17 x i8] zeroinitializer }, align 32
@imx8m_blk_ctrl_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mm-vpu-blk-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mm_vpu_blk_ctl_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mm-disp-blk-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mm_disp_blk_ctl_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mn-disp-blk-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mn_disp_blk_ctl_dev_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@imx8m_blk_ctrl_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx8m_blk_ctrl_suspend, ptr @imx8m_blk_ctrl_resume, ptr @imx8m_blk_ctrl_suspend, ptr @imx8m_blk_ctrl_resume, ptr @imx8m_blk_ctrl_suspend, ptr @imx8m_blk_ctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx8m_blk_ctrl_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"imx8m_blk_ctrl:195:(&regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to init regmap\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to attach power domain\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to init power domain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&blk_ctrl_genpd_lock_class\00", [37 x i8] zeroinitializer }, align 32
@blk_ctrl_genpd_lock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to add power domain provider\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add power notifier\0A\00", [34 x i8] zeroinitializer }, align 32
@imx8m_blk_ctrl_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 86, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to power up bus domain\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx8m_blk_ctrl_power_on\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/soc/imx/imx8m-blk-ctrl.c\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx8m_blk_ctrl_power_on._entry_ptr = internal global ptr @imx8m_blk_ctrl_power_on._entry, section ".printk_index", align 4
@imx8m_blk_ctrl_power_on._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.12, i32 98, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable clocks\0A\00", [39 x i8] zeroinitializer }, align 32
@imx8m_blk_ctrl_power_on._entry_ptr.17 = internal global ptr @imx8m_blk_ctrl_power_on._entry.15, section ".printk_index", align 4
@imx8m_blk_ctrl_power_on._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.12, i32 106, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to power up peripheral domain\0A\00", [58 x i8] zeroinitializer }, align 32
@imx8m_blk_ctrl_power_on._entry_ptr.20 = internal global ptr @imx8m_blk_ctrl_power_on._entry.18, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@imx8mm_vpu_blk_ctl_dev_data = internal constant { %struct.imx8m_blk_ctrl_data, [16 x i8] } { %struct.imx8m_blk_ctrl_data { i32 24, ptr @imx8mm_vpu_power_notifier, ptr @imx8mm_vpu_blk_ctl_domain_data, i32 3 }, [16 x i8] zeroinitializer }, align 32
@imx8mm_disp_blk_ctl_dev_data = internal constant { %struct.imx8m_blk_ctrl_data, [16 x i8] } { %struct.imx8m_blk_ctrl_data { i32 44, ptr @imx8mm_disp_power_notifier, ptr @imx8mm_disp_blk_ctl_domain_data, i32 4 }, [16 x i8] zeroinitializer }, align 32
@imx8mn_disp_blk_ctl_dev_data = internal constant { %struct.imx8m_blk_ctrl_data, [16 x i8] } { %struct.imx8m_blk_ctrl_data { i32 132, ptr @imx8mn_disp_power_notifier, ptr @imx8mn_disp_blk_ctl_domain_data, i32 4 }, [16 x i8] zeroinitializer }, align 32
@imx8mm_vpu_blk_ctl_domain_data = internal constant { [3 x %struct.imx8m_blk_ctrl_domain_data], [44 x i8] } { [3 x %struct.imx8m_blk_ctrl_domain_data] [%struct.imx8m_blk_ctrl_domain_data { ptr @.str.21, ptr @.compoundliteral, i32 1, ptr @.str.22, i32 2, i32 2, i32 0 }, %struct.imx8m_blk_ctrl_domain_data { ptr @.str.23, ptr @.compoundliteral.25, i32 1, ptr @.str.24, i32 1, i32 1, i32 0 }, %struct.imx8m_blk_ctrl_domain_data { ptr @.str.26, ptr @.compoundliteral.28, i32 1, ptr @.str.27, i32 4, i32 4, i32 0 }], [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpublk-g1\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"g1\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.22], [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpublk-g2\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"g2\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpublk-h1\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"h1\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.27], [28 x i8] zeroinitializer }, align 32
@imx8mm_disp_blk_ctl_domain_data = internal constant { [4 x %struct.imx8m_blk_ctrl_domain_data], [48 x i8] } { [4 x %struct.imx8m_blk_ctrl_domain_data] [%struct.imx8m_blk_ctrl_domain_data { ptr @.str.29, ptr @.compoundliteral.33, i32 3, ptr @.str.34, i32 7, i32 63, i32 0 }, %struct.imx8m_blk_ctrl_domain_data { ptr @.str.35, ptr @.compoundliteral.39, i32 3, ptr @.str.40, i32 0, i32 192, i32 0 }, %struct.imx8m_blk_ctrl_domain_data { ptr @.str.41, ptr @.compoundliteral.44, i32 2, ptr @.str.45, i32 32, i32 768, i32 131072 }, %struct.imx8m_blk_ctrl_domain_data { ptr @.str.46, ptr @.compoundliteral.49, i32 2, ptr @.str.50, i32 24, i32 3072, i32 65536 }], [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dispblk-csi-bridge\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"csi-bridge-axi\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"csi-bridge-apb\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csi-bridge-core\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32], [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"csi-bridge\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dispblk-lcdif\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcdif-axi\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcdif-apb\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcdif-pix\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38], [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lcdif\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dispblk-mipi-dsi\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi-pclk\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi-ref\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.42, ptr @.str.43], [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mipi-dsi\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dispblk-mipi-csi\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi-aclk\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi-pclk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.47, ptr @.str.48], [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mipi-csi\00", [23 x i8] zeroinitializer }, align 32
@imx8mn_disp_blk_ctl_domain_data = internal constant { [4 x %struct.imx8m_blk_ctrl_domain_data], [48 x i8] } { [4 x %struct.imx8m_blk_ctrl_domain_data] [%struct.imx8m_blk_ctrl_domain_data { ptr @.str.41, ptr @.compoundliteral.51, i32 2, ptr @.str.45, i32 3, i32 3, i32 131072 }, %struct.imx8m_blk_ctrl_domain_data { ptr @.str.46, ptr @.compoundliteral.52, i32 2, ptr @.str.50, i32 12, i32 12, i32 65536 }, %struct.imx8m_blk_ctrl_domain_data { ptr @.str.35, ptr @.compoundliteral.53, i32 3, ptr @.str.40, i32 48, i32 48, i32 0 }, %struct.imx8m_blk_ctrl_domain_data { ptr @.str.54, ptr @.compoundliteral.59, i32 4, ptr @.str.60, i32 192, i32 192, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.42, ptr @.str.43], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.47, ptr @.str.48], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38], [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dispblk-isi\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disp_axi\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disp_apb\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disp_axi_root\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disp_apb_root\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isi\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.63 = private unnamed_addr constant [22 x i8] c"imx8m_blk_ctrl_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 608, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 612, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [24 x i8] c"imx8m_blk_ctrl_of_match\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 592, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"imx8m_blk_ctrl_pm_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 378, i32 32 }
@___asan_gen_.75 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 195, i32 15 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 198, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 214, i32 55 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 217, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 231, i32 28 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 251, i32 28 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 266, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [26 x i8] c"blk_ctrl_genpd_lock_class\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 166, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 274, i32 27 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 281, i32 27 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 86, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 98, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 106, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [28 x i8] c"imx8mm_vpu_blk_ctl_dev_data\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 445, i32 41 }
@___asan_gen_.141 = private unnamed_addr constant [29 x i8] c"imx8mm_disp_blk_ctl_dev_data\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 514, i32 41 }
@___asan_gen_.144 = private unnamed_addr constant [29 x i8] c"imx8mn_disp_blk_ctl_dev_data\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 585, i32 41 }
@___asan_gen_.147 = private unnamed_addr constant [31 x i8] c"imx8mm_vpu_blk_ctl_domain_data\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 418, i32 48 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 420, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 421, i32 34 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 428, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 429, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 436, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 437, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [32 x i8] c"imx8mm_disp_blk_ctl_domain_data\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 477, i32 48 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 479, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 480, i32 34 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 480, i32 52 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 481, i32 13 }
@___asan_gen_.186 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 483, i32 15 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 488, i32 11 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 489, i32 34 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 489, i32 47 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 489, i32 60 }
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 491, i32 15 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 495, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 496, i32 34 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 496, i32 46 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 498, i32 15 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 504, i32 11 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 505, i32 34 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 505, i32 46 }
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 507, i32 15 }
@___asan_gen_.232 = private unnamed_addr constant [32 x i8] c"imx8mn_disp_blk_ctl_domain_data\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 547, i32 48 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 575, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 576, i32 34 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 576, i32 46 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 576, i32 58 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 577, i32 7 }
@___asan_gen_.253 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.255 = private constant [36 x i8] c"../drivers/soc/imx/imx8m-blk-ctrl.c\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 579, i32 15 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__exitcall_imx8m_blk_ctrl_driver_exit, ptr @__initcall__kmod_imx8m_blk_ctrl__171_617_imx8m_blk_ctrl_driver_init6, ptr @imx8m_blk_ctrl_driver_exit, ptr @imx8m_blk_ctrl_power_on._entry, ptr @imx8m_blk_ctrl_power_on._entry.15, ptr @imx8m_blk_ctrl_power_on._entry.18, ptr @imx8m_blk_ctrl_power_on._entry_ptr, ptr @imx8m_blk_ctrl_power_on._entry_ptr.17, ptr @imx8m_blk_ctrl_power_on._entry_ptr.20, ptr @imx8m_blk_ctrl_driver, ptr @.str, ptr @imx8m_blk_ctrl_of_match, ptr @imx8m_blk_ctrl_pm_ops, ptr @imx8m_blk_ctrl_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @blk_ctrl_genpd_lock_class, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @imx8mm_vpu_blk_ctl_dev_data, ptr @imx8mm_disp_blk_ctl_dev_data, ptr @imx8mn_disp_blk_ctl_dev_data, ptr @imx8mm_vpu_blk_ctl_domain_data, ptr @.str.21, ptr @.str.22, ptr @.compoundliteral, ptr @.str.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @imx8mm_disp_blk_ctl_domain_data, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @imx8mn_disp_blk_ctl_domain_data, ptr @.compoundliteral.51, ptr @.compoundliteral.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_blk_ctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_blk_ctrl_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_blk_ctrl_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_blk_ctrl_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_ctrl_genpd_lock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_blk_ctrl_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_blk_ctrl_power_on._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_blk_ctrl_power_on._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mm_vpu_blk_ctl_dev_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mm_disp_blk_ctl_dev_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_disp_blk_ctl_dev_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mm_vpu_blk_ctl_domain_data to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mm_disp_blk_ctl_domain_data to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_disp_blk_ctl_domain_data to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_blk_ctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx8m_blk_ctrl_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx8m_blk_ctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx8m_blk_ctrl_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_blk_ctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %regmap_config = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %regmap_config) #8
  %0 = call ptr @memset(ptr %regmap_config, i32 0, i32 172)
  %1 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_config, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %1, align 4
  %3 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_config, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %3, align 4
  %5 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_config, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %5, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup122_crit_edge, label %if.end

entry.cleanup122_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup122

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call4 to i32
  br label %cleanup122

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call3, align 4
  %max_register = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 19
  %11 = ptrtoint ptr %max_register to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_register, align 4
  %call9 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call4, ptr noundef nonnull %regmap_config, ptr noundef nonnull @imx8m_blk_ctrl_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9, ptr %regmap, align 4
  %cmp.i222 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call9 to i32
  %call15 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %13, ptr noundef nonnull @.str.2) #8
  br label %cleanup122

if.end16:                                         ; preds = %if.end8
  %num_domains = getelementptr inbounds %struct.imx8m_blk_ctrl_data, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_domains, align 4
  %16 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 1392) #8
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !129

devm_kcalloc.exit.thread:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %domains230 = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %domains230 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %domains230, align 4
  br label %cleanup122

devm_kcalloc.exit:                                ; preds = %if.end16
  %19 = extractvalue { i32, i1 } %16, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %19, i32 noundef 3520) #8
  %domains = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %domains to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i, ptr %domains, align 4
  %tobool19.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool19.not, label %devm_kcalloc.exit.cleanup122_crit_edge, label %if.end21

devm_kcalloc.exit.cleanup122_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup122

if.end21:                                         ; preds = %devm_kcalloc.exit
  %21 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_domains, align 4
  %onecell_data = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %call.i, i32 0, i32 5
  %num_domains23 = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %call.i, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %num_domains23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %num_domains23, align 4
  %xlate = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %call.i, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %xlate to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @imx8m_blk_ctrl_xlate, ptr %xlate, align 4
  %25 = load i32, ptr %num_domains, align 4
  %26 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 4) #8
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %devm_kcalloc.exit226.thread, label %devm_kcalloc.exit226, !prof !129

devm_kcalloc.exit226.thread:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %onecell_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %onecell_data, align 4
  br label %cleanup122

devm_kcalloc.exit226:                             ; preds = %if.end21
  %29 = extractvalue { i32, i1 } %26, 0
  %call5.i.i223 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %29, i32 noundef 3520) #8
  %30 = ptrtoint ptr %onecell_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call5.i.i223, ptr %onecell_data, align 4
  %tobool31.not = icmp eq ptr %call5.i.i223, null
  br i1 %tobool31.not, label %devm_kcalloc.exit226.cleanup122_crit_edge, label %if.end33

devm_kcalloc.exit226.cleanup122_crit_edge:        ; preds = %devm_kcalloc.exit226
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup122

if.end33:                                         ; preds = %devm_kcalloc.exit226
  %call34 = call ptr @genpd_dev_pm_attach_by_name(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  %bus_power_dev = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %bus_power_dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call34, ptr %bus_power_dev, align 4
  %cmp.i227 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i227, label %if.then37, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end33
  %32 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp248 = icmp sgt i32 %33, 0
  br i1 %cmp248, label %for.body.lr.ph, label %for.cond.preheader.for.end93_crit_edge

for.cond.preheader.for.end93_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end93

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %domains43 = getelementptr inbounds %struct.imx8m_blk_ctrl_data, ptr %call3, i32 0, i32 2
  br label %for.body

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %call34 to i32
  %call40 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %34, ptr noundef nonnull @.str.4) #8
  br label %cleanup122

for.body:                                         ; preds = %for.inc91.for.body_crit_edge, %for.body.lr.ph
  %i.0249 = phi i32 [ 0, %for.body.lr.ph ], [ %inc92, %for.inc91.for.body_crit_edge ]
  %35 = ptrtoint ptr %domains43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %domains43, align 4
  %arrayidx = getelementptr %struct.imx8m_blk_ctrl_domain_data, ptr %36, i32 %i.0249
  %37 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %domains, align 4
  %arrayidx45 = getelementptr %struct.imx8m_blk_ctrl_domain, ptr %38, i32 %i.0249
  %data46 = getelementptr %struct.imx8m_blk_ctrl_domain, ptr %38, i32 %i.0249, i32 1
  %39 = ptrtoint ptr %data46 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx, ptr %data46, align 8
  %num_clks = getelementptr %struct.imx8m_blk_ctrl_domain_data, ptr %36, i32 %i.0249, i32 2
  %40 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp48246 = icmp sgt i32 %41, 0
  br i1 %cmp48246, label %for.body49.lr.ph, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body49.lr.ph:                                 ; preds = %for.body
  %clk_names = getelementptr %struct.imx8m_blk_ctrl_domain_data, ptr %36, i32 %i.0249, i32 1
  br label %for.body49

for.body49:                                       ; preds = %for.body49.for.body49_crit_edge, %for.body49.lr.ph
  %j.0247 = phi i32 [ 0, %for.body49.lr.ph ], [ %inc, %for.body49.for.body49_crit_edge ]
  %42 = ptrtoint ptr %clk_names to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk_names, align 4
  %arrayidx50 = getelementptr ptr, ptr %43, i32 %j.0247
  %44 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx50, align 4
  %arrayidx51 = getelementptr %struct.imx8m_blk_ctrl_domain, ptr %38, i32 %i.0249, i32 2, i32 %j.0247
  %46 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %arrayidx51, align 4
  %inc = add nuw nsw i32 %j.0247, 1
  %47 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_clks, align 4
  %cmp48 = icmp slt i32 %inc, %48
  br i1 %cmp48, label %for.body49.for.body49_crit_edge, label %for.body49.for.end_crit_edge

for.body49.for.end_crit_edge:                     ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body49.for.body49_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body49

for.end:                                          ; preds = %for.body49.for.end_crit_edge, %for.body.for.end_crit_edge
  %.lcssa = phi i32 [ %41, %for.body.for.end_crit_edge ], [ %48, %for.body49.for.end_crit_edge ]
  %clks53 = getelementptr %struct.imx8m_blk_ctrl_domain, ptr %38, i32 %i.0249, i32 2
  %call54 = call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef %.lcssa, ptr noundef %clks53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end58, label %if.then56

if.then56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call54, ptr noundef nonnull @.str.5) #8
  br label %cleanup_pds

if.end58:                                         ; preds = %for.end
  %gpc_name = getelementptr %struct.imx8m_blk_ctrl_domain_data, ptr %36, i32 %i.0249, i32 3
  %49 = ptrtoint ptr %gpc_name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gpc_name, align 4
  %call59 = call ptr @dev_pm_domain_attach_by_name(ptr noundef %dev1, ptr noundef %50) #8
  %power_dev = getelementptr %struct.imx8m_blk_ctrl_domain, ptr %38, i32 %i.0249, i32 3
  %51 = ptrtoint ptr %power_dev to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call59, ptr %power_dev, align 4
  %cmp.i228 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i228, label %if.then62, label %if.end68

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %call59 to i32
  %call65 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %52, ptr noundef nonnull @.str.4) #8
  %53 = ptrtoint ptr %power_dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %power_dev, align 4
  %55 = ptrtoint ptr %54 to i32
  br label %cleanup_pds

if.end68:                                         ; preds = %if.end58
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx, align 4
  %name69 = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx45, i32 0, i32 10
  %58 = ptrtoint ptr %name69 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %name69, align 8
  %power_on = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx45, i32 0, i32 19
  %59 = ptrtoint ptr %power_on to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @imx8m_blk_ctrl_power_on, ptr %power_on, align 4
  %power_off = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx45, i32 0, i32 18
  %60 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @imx8m_blk_ctrl_power_off, ptr %power_off, align 8
  %bc72 = getelementptr %struct.imx8m_blk_ctrl_domain, ptr %38, i32 %i.0249, i32 4
  %61 = ptrtoint ptr %bc72 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i, ptr %bc72, align 8
  %call74 = call i32 @pm_genpd_init(ptr noundef %arrayidx45, ptr noundef null, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %for.inc91, label %if.then76

if.then76:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %call77 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call74, ptr noundef nonnull @.str.6) #8
  %62 = ptrtoint ptr %power_dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %power_dev, align 4
  call void @dev_pm_domain_detach(ptr noundef %63, i1 noundef zeroext true) #8
  br label %cleanup_pds

for.inc91:                                        ; preds = %if.end68
  %64 = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx45, i32 0, i32 40
  %dep_map = getelementptr inbounds %struct.mutex, ptr %64, i32 0, i32 5
  %wait_type_inner = getelementptr inbounds %struct.mutex, ptr %64, i32 0, i32 5, i32 4
  %65 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %wait_type_inner, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @blk_ctrl_genpd_lock_class, i32 noundef 0, i8 noundef zeroext %66, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %67 = ptrtoint ptr %onecell_data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %onecell_data, align 4
  %arrayidx88 = getelementptr ptr, ptr %68, i32 %i.0249
  %69 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx45, ptr %arrayidx88, align 4
  %inc92 = add nuw nsw i32 %i.0249, 1
  %70 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_domains, align 4
  %cmp = icmp slt i32 %inc92, %71
  br i1 %cmp, label %for.inc91.for.body_crit_edge, label %for.inc91.for.end93_crit_edge

for.inc91.for.end93_crit_edge:                    ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end93

for.inc91.for.body_crit_edge:                     ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end93:                                        ; preds = %for.inc91.for.end93_crit_edge, %for.cond.preheader.for.end93_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end93_crit_edge ], [ %inc92, %for.inc91.for.end93_crit_edge ]
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %72 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %of_node, align 8
  %call95 = call i32 @of_genpd_add_provider_onecell(ptr noundef %73, ptr noundef %onecell_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end99, label %if.then97

if.then97:                                        ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #10
  %call98 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call95, ptr noundef nonnull @.str.8) #8
  br label %cleanup_pds

if.end99:                                         ; preds = %for.end93
  %power_notifier_fn = getelementptr inbounds %struct.imx8m_blk_ctrl_data, ptr %call3, i32 0, i32 1
  %74 = ptrtoint ptr %power_notifier_fn to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %power_notifier_fn, align 4
  %power_nb = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %call.i, i32 0, i32 1
  %76 = ptrtoint ptr %power_nb to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %power_nb, align 4
  %77 = ptrtoint ptr %bus_power_dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bus_power_dev, align 4
  %call102 = call i32 @dev_pm_genpd_add_notifier(ptr noundef %78, ptr noundef %power_nb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end106, label %if.then104

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %call105 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call102, ptr noundef nonnull @.str.9) #8
  %79 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %of_node, align 8
  call void @of_genpd_del_provider(ptr noundef %80) #8
  br label %cleanup_pds

if.end106:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %81 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup122

cleanup_pds:                                      ; preds = %if.then104, %if.then97, %if.then76, %if.then62, %if.then56
  %i.0241 = phi i32 [ %i.0.lcssa, %if.then97 ], [ %i.0.lcssa, %if.then104 ], [ %i.0249, %if.then76 ], [ %i.0249, %if.then62 ], [ %i.0249, %if.then56 ]
  %ret.1 = phi i32 [ %call95, %if.then97 ], [ %call102, %if.then104 ], [ %call74, %if.then76 ], [ %55, %if.then62 ], [ %call54, %if.then56 ]
  %i.1251 = add i32 %i.0241, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1251)
  %cmp109252 = icmp sgt i32 %i.1251, -1
  br i1 %cmp109252, label %cleanup_pds.for.body110_crit_edge, label %cleanup_pds.for.end120_crit_edge

cleanup_pds.for.end120_crit_edge:                 ; preds = %cleanup_pds
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end120

cleanup_pds.for.body110_crit_edge:                ; preds = %cleanup_pds
  br label %for.body110

for.body110:                                      ; preds = %for.body110.for.body110_crit_edge, %cleanup_pds.for.body110_crit_edge
  %i.1253 = phi i32 [ %i.1, %for.body110.for.body110_crit_edge ], [ %i.1251, %cleanup_pds.for.body110_crit_edge ]
  %82 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %domains, align 4
  %arrayidx112 = getelementptr %struct.imx8m_blk_ctrl_domain, ptr %83, i32 %i.1253
  %call114 = call i32 @pm_genpd_remove(ptr noundef %arrayidx112) #8
  %84 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %domains, align 4
  %power_dev117 = getelementptr %struct.imx8m_blk_ctrl_domain, ptr %85, i32 %i.1253, i32 3
  %86 = ptrtoint ptr %power_dev117 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %power_dev117, align 4
  call void @dev_pm_domain_detach(ptr noundef %87, i1 noundef zeroext true) #8
  %i.1 = add nsw i32 %i.1253, -1
  %cmp109.not = icmp eq i32 %i.1253, 0
  br i1 %cmp109.not, label %for.body110.for.end120_crit_edge, label %for.body110.for.body110_crit_edge

for.body110.for.body110_crit_edge:                ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body110

for.body110.for.end120_crit_edge:                 ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end120

for.end120:                                       ; preds = %for.body110.for.end120_crit_edge, %cleanup_pds.for.end120_crit_edge
  %88 = ptrtoint ptr %bus_power_dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus_power_dev, align 4
  call void @dev_pm_domain_detach(ptr noundef %89, i1 noundef zeroext true) #8
  br label %cleanup122

cleanup122:                                       ; preds = %for.end120, %if.end106, %if.then37, %devm_kcalloc.exit226.cleanup122_crit_edge, %devm_kcalloc.exit226.thread, %devm_kcalloc.exit.cleanup122_crit_edge, %devm_kcalloc.exit.thread, %if.then12, %if.then6, %entry.cleanup122_crit_edge
  %retval.0 = phi i32 [ %8, %if.then6 ], [ %call15, %if.then12 ], [ %call40, %if.then37 ], [ %ret.1, %for.end120 ], [ 0, %if.end106 ], [ -12, %entry.cleanup122_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup122_crit_edge ], [ -12, %devm_kcalloc.exit226.cleanup122_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit226.thread ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %regmap_config) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_blk_ctrl_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_genpd_del_provider(ptr noundef %3) #8
  %num_domains = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not11 = icmp eq i32 %5, 0
  br i1 %tobool.not11, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %domains = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domains, align 4
  %arrayidx = getelementptr %struct.imx8m_blk_ctrl_domain, ptr %7, i32 %i.012
  %call2 = tail call i32 @pm_genpd_remove(ptr noundef %arrayidx) #8
  %power_dev = getelementptr %struct.imx8m_blk_ctrl_domain, ptr %7, i32 %i.012, i32 3
  %8 = ptrtoint ptr %power_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %power_dev, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %9, i1 noundef zeroext true) #8
  %inc = add i32 %i.012, 1
  %10 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_domains, align 4
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %bus_power_dev = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %bus_power_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus_power_dev, align 4
  %call3 = tail call i32 @dev_pm_genpd_remove_notifier(ptr noundef %13) #8
  %14 = ptrtoint ptr %bus_power_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_power_dev, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %15, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @imx8m_blk_ctrl_xlate(ptr nocapture noundef readonly %args, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args1, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %num_domains = getelementptr inbounds %struct.genpd_onecell_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp2.not = icmp ult i32 %1, %5
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %arrayidx3 = getelementptr ptr, ptr %7, i32 %1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %if.end ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genpd_dev_pm_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_blk_ctrl_power_on(ptr noundef %genpd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.imx8m_blk_ctrl_domain, ptr %genpd, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 8
  %bc2 = getelementptr inbounds %struct.imx8m_blk_ctrl_domain, ptr %genpd, i32 0, i32 4
  %2 = ptrtoint ptr %bc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc2, align 8
  %bus_power_dev = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bus_power_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_power_dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %bus_power_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_power_dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !131
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then.pm_runtime_put_noidle.exit_crit_edge
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %rst_mask = getelementptr inbounds %struct.imx8m_blk_ctrl_domain_data, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %rst_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rst_mask, align 4
  %call.i79 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef %14, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %mipi_phy_rst_mask = getelementptr inbounds %struct.imx8m_blk_ctrl_domain_data, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %mipi_phy_rst_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mipi_phy_rst_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i80 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 8, i32 noundef %16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %num_clks = getelementptr inbounds %struct.imx8m_blk_ctrl_domain_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.imx8m_blk_ctrl_domain, ptr %genpd, i32 0, i32 2
  %call.i81 = tail call i32 @clk_bulk_prepare(i32 noundef %20, ptr noundef %clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.do.end16_crit_edge

if.end10.do.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

if.end.i:                                         ; preds = %if.end10
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %20, ptr noundef %clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end18, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef %20, ptr noundef %clks) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then3.i, %if.end10.do.end16_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i81, %if.end10.do.end16_crit_edge ]
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.16) #11
  br label %bus_put

if.end18:                                         ; preds = %if.end.i
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %clk_mask = getelementptr inbounds %struct.imx8m_blk_ctrl_domain_data, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %clk_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clk_mask, align 4
  %call.i82 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 4, i32 noundef %26, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %power_dev = getelementptr inbounds %struct.imx8m_blk_ctrl_domain, ptr %genpd, i32 0, i32 3
  %27 = ptrtoint ptr %power_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %power_dev, align 4
  %call.i83 = tail call i32 @__pm_runtime_resume(ptr noundef %28, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp22 = icmp slt i32 %call.i83, 0
  br i1 %cmp22, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.19) #11
  %31 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %32, ptr noundef %clks) #8
  tail call void @clk_bulk_unprepare(i32 noundef %32, ptr noundef %clks) #8
  br label %bus_put

if.end28:                                         ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 1073740) #8
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %36 = ptrtoint ptr %rst_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rst_mask, align 4
  %call.i84 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 0, i32 noundef %37, i32 noundef %37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %38 = ptrtoint ptr %mipi_phy_rst_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mipi_phy_rst_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool33.not = icmp eq i32 %39, 0
  br i1 %tobool33.not, label %if.end28.if.end38_crit_edge, label %if.then34

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call.i85 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 8, i32 noundef %39, i32 noundef %39, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end28.if.end38_crit_edge
  %42 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %43, ptr noundef %clks) #8
  tail call void @clk_bulk_unprepare(i32 noundef %43, ptr noundef %clks) #8
  br label %cleanup

bus_put:                                          ; preds = %do.end26, %do.end16
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end16 ], [ %call.i83, %do.end26 ]
  %44 = ptrtoint ptr %bus_power_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus_power_dev, align 4
  %call.i86 = tail call i32 @__pm_runtime_idle(ptr noundef %45, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %bus_put, %if.end38, %pm_runtime_put_noidle.exit
  %retval.0 = phi i32 [ %call.i, %pm_runtime_put_noidle.exit ], [ %ret.0, %bus_put ], [ 0, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_blk_ctrl_power_off(ptr nocapture noundef readonly %genpd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.imx8m_blk_ctrl_domain, ptr %genpd, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 8
  %bc2 = getelementptr inbounds %struct.imx8m_blk_ctrl_domain, ptr %genpd, i32 0, i32 4
  %2 = ptrtoint ptr %bc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc2, align 8
  %mipi_phy_rst_mask = getelementptr inbounds %struct.imx8m_blk_ctrl_domain_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %mipi_phy_rst_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mipi_phy_rst_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 8, i32 noundef %5, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regmap5 = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap5, align 4
  %rst_mask = getelementptr inbounds %struct.imx8m_blk_ctrl_domain_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %rst_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rst_mask, align 4
  %call.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef %11, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap5, align 4
  %clk_mask = getelementptr inbounds %struct.imx8m_blk_ctrl_domain_data, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %clk_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_mask, align 4
  %call.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 4, i32 noundef %15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %power_dev = getelementptr inbounds %struct.imx8m_blk_ctrl_domain, ptr %genpd, i32 0, i32 3
  %16 = ptrtoint ptr %power_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %power_dev, align 4
  %call.i21 = tail call i32 @__pm_runtime_idle(ptr noundef %17, i32 noundef 5) #8
  %bus_power_dev = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %bus_power_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus_power_dev, align 4
  %call.i22 = tail call i32 @__pm_runtime_idle(ptr noundef %19, i32 noundef 5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_genpd_add_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_genpd_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_genpd_remove_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mm_vpu_power_notifier(ptr nocapture noundef readonly %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %entry.cleanup_crit_edge [
    i32 3, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge27
  ]

entry.if.end_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge27
  %regmap = getelementptr i8, ptr %nb, i32 16
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 0, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 4, i32 noundef 7, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %action)
  %cmp4 = icmp eq i32 %action, 3
  br i1 %cmp4, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 8, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 16, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 20, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mm_disp_power_notifier(ptr nocapture noundef readonly %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %action, label %entry.cleanup_crit_edge [
    i32 3, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge11
  ]

entry.if.end_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge11
  %regmap = getelementptr i8, ptr %nb, i32 16
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 4, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 0, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %action)
  %cmp4 = icmp eq i32 %action, 3
  br i1 %cmp4, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mn_disp_power_notifier(ptr nocapture noundef readonly %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %action, label %entry.cleanup_crit_edge [
    i32 3, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge11
  ]

entry.if.end_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge11
  %regmap = getelementptr i8, ptr %nb, i32 16
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 4, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 0, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %action)
  %cmp4 = icmp eq i32 %action, 3
  br i1 %cmp4, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_blk_ctrl_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bus_power_dev = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bus_power_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_power_dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num_domains = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp350.not = icmp eq i32 %5, 0
  br i1 %cmp350.not, label %for.cond.preheader.cleanup21_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup21_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup21

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %domains = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %1, i32 0, i32 4
  br label %for.body

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %bus_power_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_power_dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !131
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup21_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup21_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup21

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %cleanup21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %domains, align 4
  %power_dev = getelementptr %struct.imx8m_blk_ctrl_domain, ptr %10, i32 %i.051, i32 3
  %11 = ptrtoint ptr %power_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %power_dev, align 4
  %call.i39 = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp5 = icmp slt i32 %call.i39, 0
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  %13 = ptrtoint ptr %power_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %power_dev, align 4
  %usage_count.i40 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 13
  %call.i.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i40, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @llvm.prefetch.p0(ptr %usage_count.i40, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i40, ptr %usage_count.i40, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i40) #8, !srcloc !131
  %asmresult.i.i.i.i42 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i42)
  %cmp.not.i.i.i.i43 = icmp eq i32 %asmresult.i.i.i.i42, 0
  br i1 %cmp.not.i.i.i.i43, label %if.then6.cleanup_crit_edge, label %do.end11.i.i.i.i44

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i44:                               ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i44, %if.then6.cleanup_crit_edge
  %i.152 = add i32 %i.051, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.152)
  %cmp1053 = icmp sgt i32 %i.152, -1
  br i1 %cmp1053, label %cleanup.for.body11_crit_edge, label %cleanup.for.end18_crit_edge

cleanup.for.end18_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end18

cleanup.for.body11_crit_edge:                     ; preds = %cleanup
  br label %for.body11

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.051, 1
  %16 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_domains, align 4
  %cmp3 = icmp ult i32 %inc, %17
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.cleanup21_crit_edge

for.inc.cleanup21_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup21

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %cleanup.for.body11_crit_edge
  %i.154 = phi i32 [ %i.1, %for.body11.for.body11_crit_edge ], [ %i.152, %cleanup.for.body11_crit_edge ]
  %18 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %domains, align 4
  %power_dev14 = getelementptr %struct.imx8m_blk_ctrl_domain, ptr %19, i32 %i.154, i32 3
  %20 = ptrtoint ptr %power_dev14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %power_dev14, align 4
  %call.i46 = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 5) #8
  %i.1 = add nsw i32 %i.154, -1
  %cmp10 = icmp sgt i32 %i.154, 0
  br i1 %cmp10, label %for.body11.for.body11_crit_edge, label %for.body11.for.end18_crit_edge

for.body11.for.end18_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end18

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11

for.end18:                                        ; preds = %for.body11.for.end18_crit_edge, %cleanup.for.end18_crit_edge
  %22 = ptrtoint ptr %bus_power_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus_power_dev, align 4
  %call.i47 = tail call i32 @__pm_runtime_idle(ptr noundef %23, i32 noundef 5) #8
  br label %cleanup21

cleanup21:                                        ; preds = %for.end18, %for.inc.cleanup21_crit_edge, %do.end11.i.i.i.i, %if.then.cleanup21_crit_edge, %for.cond.preheader.cleanup21_crit_edge
  %retval.0 = phi i32 [ %call.i39, %for.end18 ], [ %call.i, %if.then.cleanup21_crit_edge ], [ %call.i, %do.end11.i.i.i.i ], [ 0, %for.cond.preheader.cleanup21_crit_edge ], [ 0, %for.inc.cleanup21_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_blk_ctrl_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_domains = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not = icmp eq i32 %3, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %domains = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domains, align 4
  %power_dev = getelementptr %struct.imx8m_blk_ctrl_domain, ptr %5, i32 %i.09, i32 3
  %6 = ptrtoint ptr %power_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %power_dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #8
  %inc = add nuw i32 %i.09, 1
  %8 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_domains, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %bus_power_dev = getelementptr inbounds %struct.imx8m_blk_ctrl, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %bus_power_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus_power_dev, align 4
  %call.i7 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 5) #8
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_imx8m_blk_ctrl__171_617_imx8m_blk_ctrl_driver_init6, !1, !"__initcall__kmod_imx8m_blk_ctrl__171_617_imx8m_blk_ctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 617, i32 1}
!2 = !{ptr @__exitcall_imx8m_blk_ctrl_driver_exit, !1, !"__exitcall_imx8m_blk_ctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 612, i32 11}
!5 = !{ptr @imx8m_blk_ctrl_driver, !6, !"imx8m_blk_ctrl_driver", i1 false, i1 false}
!6 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 608, i32 31}
!7 = !{ptr @imx8m_blk_ctrl_probe._key, !8, !"_key", i1 false, i1 false}
!8 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 195, i32 15}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 198, i32 10}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 214, i32 55}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 217, i32 10}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 231, i32 28}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 251, i32 28}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 266, i32 3}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 274, i32 27}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 281, i32 27}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 86, i32 3}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @imx8m_blk_ctrl_power_on._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @imx8m_blk_ctrl_power_on._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 98, i32 3}
!36 = !{ptr @imx8m_blk_ctrl_power_on._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @imx8m_blk_ctrl_power_on._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 106, i32 3}
!40 = !{ptr @imx8m_blk_ctrl_power_on._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @imx8m_blk_ctrl_power_on._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @blk_ctrl_genpd_lock_class, !43, !"blk_ctrl_genpd_lock_class", i1 false, i1 false}
!43 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 166, i32 30}
!44 = !{ptr @imx8m_blk_ctrl_of_match, !45, !"imx8m_blk_ctrl_of_match", i1 false, i1 false}
!45 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 592, i32 34}
!46 = !{ptr @imx8mm_vpu_blk_ctl_dev_data, !47, !"imx8mm_vpu_blk_ctl_dev_data", i1 false, i1 false}
!47 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 445, i32 41}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 420, i32 11}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 421, i32 34}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 428, i32 11}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 429, i32 34}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 436, i32 11}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 437, i32 34}
!60 = !{ptr @imx8mm_vpu_blk_ctl_domain_data, !61, !"imx8mm_vpu_blk_ctl_domain_data", i1 false, i1 false}
!61 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 418, i32 48}
!62 = !{ptr @imx8mm_disp_blk_ctl_dev_data, !63, !"imx8mm_disp_blk_ctl_dev_data", i1 false, i1 false}
!63 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 514, i32 41}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 479, i32 11}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 480, i32 34}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 480, i32 52}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 481, i32 13}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 483, i32 15}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 488, i32 11}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 489, i32 34}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 489, i32 47}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 489, i32 60}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 491, i32 15}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 495, i32 11}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 496, i32 34}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 496, i32 46}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 498, i32 15}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 504, i32 11}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 505, i32 34}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 505, i32 46}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 507, i32 15}
!100 = !{ptr @imx8mm_disp_blk_ctl_domain_data, !101, !"imx8mm_disp_blk_ctl_domain_data", i1 false, i1 false}
!101 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 477, i32 48}
!102 = !{ptr @imx8mn_disp_blk_ctl_dev_data, !103, !"imx8mn_disp_blk_ctl_dev_data", i1 false, i1 false}
!103 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 585, i32 41}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 575, i32 11}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 576, i32 34}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 576, i32 46}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 576, i32 58}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 577, i32 7}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 579, i32 15}
!116 = !{ptr @imx8mn_disp_blk_ctl_domain_data, !117, !"imx8mn_disp_blk_ctl_domain_data", i1 false, i1 false}
!117 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 547, i32 48}
!118 = !{ptr @imx8m_blk_ctrl_pm_ops, !119, !"imx8m_blk_ctrl_pm_ops", i1 false, i1 false}
!119 = !{!"../drivers/soc/imx/imx8m-blk-ctrl.c", i32 378, i32 32}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = !{i64 2148478676}
!131 = !{i64 965276, i64 965301, i64 965323, i64 965339, i64 965351, i64 965371, i64 965395, i64 965411, i64 965423}
!132 = !{i64 2148478864}
