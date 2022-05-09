; ModuleID = '/llk/IR_all_yes/drivers/soc/mediatek/mtk-scpsys.c_pt.bc'
source_filename = "../drivers/soc/mediatek/mtk-scpsys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scp_soc_data = type { ptr, i32, ptr, i32, %struct.scp_ctrl_reg, i8 }
%struct.scp_ctrl_reg = type { i32, i32 }
%struct.scp_domain_data = type { ptr, i32, i32, i32, i32, i32, [3 x i32], i8 }
%struct.scp_subdomain = type { i32, i32 }
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
%struct.scp = type { ptr, %struct.genpd_onecell_data, ptr, ptr, ptr, %struct.scp_ctrl_reg, i8 }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.scp_domain = type { %struct.generic_pm_domain, ptr, [3 x ptr], ptr, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.84 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.84 = type { %struct.mutex }

@__initcall__kmod_mtk_scpsys__288_1147_scpsys_drv_init6 = internal global ptr @scpsys_drv_init, section ".initcall6.init", align 4
@scpsys_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @scpsys_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @of_scpsys_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mtk-scpsys\00", [21 x i8] zeroinitializer }, align 32
@of_scpsys_match_tbl = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-scpsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-scpsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6797-scpsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6797_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-scpsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7622_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7623a-scpsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7623a_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-scpsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@scpsys_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1132, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to add subdomain: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scpsys_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/soc/mediatek/mtk-scpsys.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scpsys_probe._entry_ptr = internal global ptr @scpsys_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"infracfg\00", [23 x i8] zeroinitializer }, align 32
@init_scp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 465, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot find infracfg controller: %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_scp\00", [23 x i8] zeroinitializer }, align 32
@init_scp._entry_ptr = internal global ptr @init_scp._entry, section ".printk_index", align 4
@init_scp._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: clk unavailable\0A\00", [43 x i8] zeroinitializer }, align 32
@init_scp._entry_ptr.11 = internal global ptr @init_scp._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mm\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mfg\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"venc\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"venc_lt\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ethif\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdec\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hif_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"jpgdec\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@scpsys_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to power off domain %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"scpsys_power_off\00", [47 x i8] zeroinitializer }, align 32
@scpsys_power_off._entry_ptr = internal global ptr @scpsys_power_off._entry, section ".printk_index", align 4
@scpsys_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 356, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to power on domain %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"scpsys_power_on\00", [16 x i8] zeroinitializer }, align 32
@scpsys_power_on._entry_ptr = internal global ptr @scpsys_power_on._entry, section ".printk_index", align 4
@mtk_register_power_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 550, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to add OF provider: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mtk_register_power_domains\00", [37 x i8] zeroinitializer }, align 32
@mtk_register_power_domains._entry_ptr = internal global ptr @mtk_register_power_domains._entry, section ".printk_index", align 4
@mt2701_data = internal constant { %struct.scp_soc_data, [36 x i8] } { %struct.scp_soc_data { ptr @scp_domain_data_mt2701, i32 9, ptr null, i32 0, %struct.scp_ctrl_reg { i32 1548, i32 1552 }, i8 1 }, [36 x i8] zeroinitializer }, align 32
@mt2712_data = internal constant { %struct.scp_soc_data, [36 x i8] } { %struct.scp_soc_data { ptr @scp_domain_data_mt2712, i32 11, ptr @scp_subdomain_mt2712, i32 6, %struct.scp_ctrl_reg { i32 1548, i32 1552 }, i8 0 }, [36 x i8] zeroinitializer }, align 32
@mt6797_data = internal constant { %struct.scp_soc_data, [36 x i8] } { %struct.scp_soc_data { ptr @scp_domain_data_mt6797, i32 12, ptr @scp_subdomain_mt6797, i32 4, %struct.scp_ctrl_reg { i32 384, i32 388 }, i8 1 }, [36 x i8] zeroinitializer }, align 32
@mt7622_data = internal constant { %struct.scp_soc_data, [36 x i8] } { %struct.scp_soc_data { ptr @scp_domain_data_mt7622, i32 4, ptr null, i32 0, %struct.scp_ctrl_reg { i32 1548, i32 1552 }, i8 1 }, [36 x i8] zeroinitializer }, align 32
@mt7623a_data = internal constant { %struct.scp_soc_data, [36 x i8] } { %struct.scp_soc_data { ptr @scp_domain_data_mt7623a, i32 4, ptr null, i32 0, %struct.scp_ctrl_reg { i32 1548, i32 1552 }, i8 1 }, [36 x i8] zeroinitializer }, align 32
@mt8173_data = internal constant { %struct.scp_soc_data, [36 x i8] } { %struct.scp_soc_data { ptr @scp_domain_data_mt8173, i32 10, ptr @scp_subdomain_mt8173, i32 2, %struct.scp_ctrl_reg { i32 1548, i32 1552 }, i8 1 }, [36 x i8] zeroinitializer }, align 32
@scp_domain_data_mt2701 = internal constant { [9 x %struct.scp_domain_data], [88 x i8] } { [9 x %struct.scp_domain_data] [%struct.scp_domain_data { ptr @.str.27, i32 2, i32 640, i32 0, i32 0, i32 260, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.28, i32 8, i32 572, i32 3840, i32 0, i32 2, [3 x i32] [i32 1, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.13, i32 16, i32 532, i32 3840, i32 4096, i32 0, [3 x i32] [i32 2, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.17, i32 128, i32 528, i32 3840, i32 4096, i32 0, [3 x i32] [i32 1, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.29, i32 32, i32 568, i32 3840, i32 12288, i32 0, [3 x i32] [i32 1, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.30, i32 16384, i32 668, i32 3840, i32 0, i32 0, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.31, i32 32768, i32 672, i32 3840, i32 61440, i32 0, [3 x i32] [i32 5, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.32, i32 65536, i32 676, i32 3840, i32 61440, i32 0, [3 x i32] [i32 5, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.33, i32 131072, i32 680, i32 0, i32 0, i32 0, [3 x i32] zeroinitializer, i8 1 }], [88 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"conn\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"disp\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isp\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bdp\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eth\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hif\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ifr_msc\00", [24 x i8] zeroinitializer }, align 32
@scp_domain_data_mt2712 = internal constant { [11 x %struct.scp_domain_data], [104 x i8] } { [11 x %struct.scp_domain_data] [%struct.scp_domain_data { ptr @.str.12, i32 8, i32 572, i32 256, i32 4096, i32 0, [3 x i32] [i32 1, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.17, i32 128, i32 528, i32 256, i32 4096, i32 0, [3 x i32] [i32 1, i32 6, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.14, i32 2097152, i32 560, i32 3840, i32 61440, i32 0, [3 x i32] [i32 1, i32 3, i32 8], i8 1 }, %struct.scp_domain_data { ptr @.str.29, i32 32, i32 568, i32 3840, i32 12288, i32 0, [3 x i32] [i32 1, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.20, i32 16777216, i32 668, i32 3840, i32 61440, i32 0, [3 x i32] [i32 9, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.34, i32 33554432, i32 716, i32 1792, i32 28672, i32 0, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.35, i32 524288, i32 724, i32 1792, i32 28672, i32 0, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.13, i32 16, i32 532, i32 256, i32 65536, i32 10502144, [3 x i32] [i32 2, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.36, i32 4194304, i32 704, i32 256, i32 65536, i32 0, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.37, i32 8388608, i32 708, i32 256, i32 65536, i32 0, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.38, i32 1073741824, i32 504, i32 256, i32 65536, i32 0, [3 x i32] zeroinitializer, i8 1 }], [104 x i8] zeroinitializer }, align 32
@scp_subdomain_mt2712 = internal constant { [6 x %struct.scp_subdomain], [48 x i8] } { [6 x %struct.scp_subdomain] [%struct.scp_subdomain { i32 0, i32 1 }, %struct.scp_subdomain { i32 0, i32 2 }, %struct.scp_subdomain { i32 0, i32 3 }, %struct.scp_subdomain { i32 7, i32 8 }, %struct.scp_subdomain { i32 8, i32 9 }, %struct.scp_subdomain { i32 9, i32 10 }], [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb2\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfg_sc1\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfg_sc2\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfg_sc3\00", [24 x i8] zeroinitializer }, align 32
@scp_domain_data_mt6797 = internal constant { [12 x %struct.scp_domain_data], [96 x i8] } { [12 x %struct.scp_domain_data] [%struct.scp_domain_data { ptr @.str.17, i32 128, i32 768, i32 256, i32 4096, i32 0, [3 x i32] [i32 6, i32 0, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.14, i32 2097152, i32 772, i32 3840, i32 61440, i32 0, [3 x i32] zeroinitializer, i8 0 }, %struct.scp_domain_data { ptr @.str.29, i32 32, i32 776, i32 768, i32 12288, i32 0, [3 x i32] zeroinitializer, i8 0 }, %struct.scp_domain_data { ptr @.str.12, i32 8, i32 780, i32 256, i32 4096, i32 6, [3 x i32] [i32 1, i32 0, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.20, i32 16777216, i32 788, i32 3840, i32 61440, i32 0, [3 x i32] zeroinitializer, i8 0 }, %struct.scp_domain_data { ptr @.str.39, i32 8192, i32 820, i32 0, i32 0, i32 0, [3 x i32] [i32 2, i32 0, i32 0], i8 0 }, %struct.scp_domain_data zeroinitializer, %struct.scp_domain_data zeroinitializer, %struct.scp_domain_data zeroinitializer, %struct.scp_domain_data zeroinitializer, %struct.scp_domain_data zeroinitializer, %struct.scp_domain_data { ptr @.str.40, i32 1048576, i32 784, i32 256, i32 4096, i32 0, [3 x i32] zeroinitializer, i8 0 }], [96 x i8] zeroinitializer }, align 32
@scp_subdomain_mt6797 = internal constant { [4 x %struct.scp_subdomain], [32 x i8] } { [4 x %struct.scp_subdomain] [%struct.scp_subdomain { i32 3, i32 0 }, %struct.scp_subdomain { i32 3, i32 2 }, %struct.scp_subdomain { i32 3, i32 1 }, %struct.scp_subdomain { i32 3, i32 11 }], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mfg_async\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mjc\00", [28 x i8] zeroinitializer }, align 32
@scp_domain_data_mt7622 = internal constant { [4 x %struct.scp_domain_data], [32 x i8] } { [4 x %struct.scp_domain_data] [%struct.scp_domain_data { ptr @.str.41, i32 16777216, i32 736, i32 3840, i32 61440, i32 131080, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.42, i32 33554432, i32 740, i32 3840, i32 61440, i32 50331648, [3 x i32] [i32 7, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.43, i32 67108864, i32 744, i32 3840, i32 61440, i32 469762048, [3 x i32] [i32 7, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.44, i32 134217728, i32 748, i32 0, i32 0, i32 452, [3 x i32] zeroinitializer, i8 3 }], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ethsys\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hif0\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hif1\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wb\00", [29 x i8] zeroinitializer }, align 32
@scp_domain_data_mt7623a = internal constant { [4 x %struct.scp_domain_data], [32 x i8] } { [4 x %struct.scp_domain_data] [%struct.scp_domain_data { ptr @.str.27, i32 2, i32 640, i32 0, i32 0, i32 260, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.31, i32 32768, i32 672, i32 3840, i32 61440, i32 0, [3 x i32] [i32 5, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.32, i32 65536, i32 676, i32 3840, i32 61440, i32 0, [3 x i32] [i32 5, i32 0, i32 0], i8 1 }, %struct.scp_domain_data { ptr @.str.33, i32 131072, i32 680, i32 0, i32 0, i32 0, [3 x i32] zeroinitializer, i8 1 }], [32 x i8] zeroinitializer }, align 32
@scp_domain_data_mt8173 = internal constant { [10 x %struct.scp_domain_data], [112 x i8] } { [10 x %struct.scp_domain_data] [%struct.scp_domain_data { ptr @.str.17, i32 128, i32 528, i32 3840, i32 4096, i32 0, [3 x i32] [i32 1, i32 0, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.14, i32 2097152, i32 560, i32 3840, i32 61440, i32 0, [3 x i32] [i32 1, i32 3, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.29, i32 32, i32 568, i32 3840, i32 12288, i32 0, [3 x i32] [i32 1, i32 0, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.12, i32 8, i32 572, i32 3840, i32 4096, i32 6, [3 x i32] [i32 1, i32 0, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.15, i32 1048576, i32 664, i32 3840, i32 61440, i32 0, [3 x i32] [i32 1, i32 4, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.20, i32 16777216, i32 668, i32 3840, i32 61440, i32 0, [3 x i32] zeroinitializer, i8 0 }, %struct.scp_domain_data { ptr @.str.34, i32 33554432, i32 716, i32 3840, i32 61440, i32 0, [3 x i32] zeroinitializer, i8 1 }, %struct.scp_domain_data { ptr @.str.39, i32 8388608, i32 708, i32 3840, i32 0, i32 0, [3 x i32] [i32 2, i32 0, i32 0], i8 0 }, %struct.scp_domain_data { ptr @.str.45, i32 4194304, i32 704, i32 3840, i32 12288, i32 0, [3 x i32] zeroinitializer, i8 0 }, %struct.scp_domain_data { ptr @.str.13, i32 16, i32 532, i32 16128, i32 4128768, i32 14696448, [3 x i32] zeroinitializer, i8 0 }], [112 x i8] zeroinitializer }, align 32
@scp_subdomain_mt8173 = internal constant { [2 x %struct.scp_subdomain], [16 x i8] } { [2 x %struct.scp_subdomain] [%struct.scp_subdomain { i32 7, i32 8 }, %struct.scp_subdomain { i32 8, i32 9 }], [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfg_2d\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"scpsys_drv\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1138, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1141, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"of_scpsys_match_tbl\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1084, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1131, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 462, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 464, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 500, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 97, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 98, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 99, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 100, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 101, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 102, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 103, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 104, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 105, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 409, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 356, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 550, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [12 x i8] c"mt2701_data\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1014, i32 34 }
@___asan_gen_.148 = private unnamed_addr constant [12 x i8] c"mt2712_data\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1024, i32 34 }
@___asan_gen_.151 = private unnamed_addr constant [12 x i8] c"mt6797_data\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1036, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant [12 x i8] c"mt7622_data\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1048, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant [13 x i8] c"mt7623a_data\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1058, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant [12 x i8] c"mt8173_data\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1068, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant [23 x i8] c"scp_domain_data_mt2701\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 557, i32 37 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 559, i32 11 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 568, i32 11 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 595, i32 11 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 604, i32 11 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 612, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 621, i32 11 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 630, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant [23 x i8] c"scp_domain_data_mt2712\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 641, i32 37 }
@___asan_gen_.190 = private unnamed_addr constant [21 x i8] c"scp_subdomain_mt2712\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 744, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 688, i32 11 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 697, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 716, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 725, i32 11 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 734, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant [23 x i8] c"scp_domain_data_mt6797\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 757, i32 37 }
@___asan_gen_.211 = private unnamed_addr constant [21 x i8] c"scp_subdomain_mt6797\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 820, i32 35 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 800, i32 11 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 808, i32 11 }
@___asan_gen_.220 = private unnamed_addr constant [23 x i8] c"scp_domain_data_mt7622\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 831, i32 37 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 833, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 843, i32 11 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 853, i32 11 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 863, i32 11 }
@___asan_gen_.235 = private unnamed_addr constant [24 x i8] c"scp_domain_data_mt7623a\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 878, i32 37 }
@___asan_gen_.238 = private unnamed_addr constant [23 x i8] c"scp_domain_data_mt8173\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 919, i32 37 }
@___asan_gen_.241 = private unnamed_addr constant [21 x i8] c"scp_subdomain_mt8173\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1009, i32 35 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [37 x i8] c"../drivers/soc/mediatek/mtk-scpsys.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 988, i32 11 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__initcall__kmod_mtk_scpsys__288_1147_scpsys_drv_init6, ptr @init_scp._entry, ptr @init_scp._entry.9, ptr @init_scp._entry_ptr, ptr @init_scp._entry_ptr.11, ptr @mtk_register_power_domains._entry, ptr @mtk_register_power_domains._entry_ptr, ptr @scpsys_power_off._entry, ptr @scpsys_power_off._entry_ptr, ptr @scpsys_power_on._entry, ptr @scpsys_power_on._entry_ptr, ptr @scpsys_probe._entry, ptr @scpsys_probe._entry_ptr, ptr @scpsys_drv, ptr @.str, ptr @of_scpsys_match_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @mt2701_data, ptr @mt2712_data, ptr @mt6797_data, ptr @mt7622_data, ptr @mt7623a_data, ptr @mt8173_data, ptr @scp_domain_data_mt2701, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @scp_domain_data_mt2712, ptr @scp_subdomain_mt2712, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @scp_domain_data_mt6797, ptr @scp_subdomain_mt6797, ptr @.str.39, ptr @.str.40, ptr @scp_domain_data_mt7622, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @scp_domain_data_mt7623a, ptr @scp_domain_data_mt8173, ptr @scp_subdomain_mt8173, ptr @.str.45], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_scpsys_match_tbl to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_scp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_scp._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_register_power_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7623a_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_domain_data_mt2701 to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_domain_data_mt2712 to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_subdomain_mt2712 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_domain_data_mt6797 to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_subdomain_mt6797 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_domain_data_mt7622 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_domain_data_mt7623a to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_domain_data_mt8173 to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_subdomain_mt8173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scpsys_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @scpsys_drv, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpsys_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk.i = alloca [10 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %num_domains = getelementptr inbounds %struct.scp_soc_data, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_domains, align 4
  %bus_prot_reg_update = getelementptr inbounds %struct.scp_soc_data, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %bus_prot_reg_update to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bus_prot_reg_update, align 4, !range !139
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %clk.i) #6
  %6 = call ptr @memset(ptr %clk.i, i32 255, i32 40)
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.init_scp.exit.thread_crit_edge, label %if.end.i

entry.init_scp.exit.thread_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_scp.exit.thread

if.end.i:                                         ; preds = %entry
  %regs = getelementptr inbounds %struct.scp_soc_data, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regs, align 4
  %ctrl_reg.i = getelementptr inbounds %struct.scp, ptr %call.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ctrl_reg.i, align 4
  %pwr_sta2nd_offs.i = getelementptr inbounds %struct.scp_soc_data, ptr %call, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %pwr_sta2nd_offs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pwr_sta2nd_offs.i, align 4
  %pwr_sta2nd_offs4.i = getelementptr inbounds %struct.scp, ptr %call.i.i, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %pwr_sta2nd_offs4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pwr_sta2nd_offs4.i, align 4
  %bus_prot_reg_update6.i = getelementptr inbounds %struct.scp, ptr %call.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %bus_prot_reg_update6.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %5, ptr %bus_prot_reg_update6.i, align 4
  %dev9.i = getelementptr inbounds %struct.scp, ptr %call.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %dev9.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev9.i, align 4
  %call10.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call12.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call10.i) #6
  %base.i = getelementptr inbounds %struct.scp, ptr %call.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call12.i, ptr %base.i, align 4
  %cmp.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.init_scp.exit_crit_edge, label %if.end18.i

if.end.i.init_scp.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_scp.exit

if.end18.i:                                       ; preds = %if.end.i
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 1376) #6
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !140

devm_kcalloc.exit.thread.i:                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %call.i.i, align 4
  br label %init_scp.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end18.i
  %19 = extractvalue { i32, i1 } %16, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %19, i32 noundef 3520) #6
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i.i, ptr %call.i.i, align 4
  %tobool22.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool22.not.i, label %devm_kcalloc.exit.i.init_scp.exit.thread_crit_edge, label %if.end25.i

devm_kcalloc.exit.i.init_scp.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_scp.exit.thread

if.end25.i:                                       ; preds = %devm_kcalloc.exit.i
  %pd_data26.i = getelementptr inbounds %struct.scp, ptr %call.i.i, i32 0, i32 1
  %21 = shl nuw nsw i32 %3, 2
  %call5.i.i192.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %21, i32 noundef 3520) #6
  %22 = ptrtoint ptr %pd_data26.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i192.i, ptr %pd_data26.i, align 4
  %tobool31.not.i = icmp eq ptr %call5.i.i192.i, null
  br i1 %tobool31.not.i, label %if.end25.i.init_scp.exit.thread_crit_edge, label %if.end34.i

if.end25.i.init_scp.exit.thread_crit_edge:        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_scp.exit.thread

if.end34.i:                                       ; preds = %if.end25.i
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  %call36.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %24, ptr noundef nonnull @.str.6) #6
  %infracfg.i = getelementptr inbounds %struct.scp, ptr %call.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %infracfg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call36.i, ptr %infracfg.i, align 4
  %cmp.i196.i = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp212.not.i = icmp eq i32 %3, 0
  br i1 %cmp212.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.end.i:                                         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %call36.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %26) #9
  %27 = ptrtoint ptr %infracfg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %infracfg.i, align 4
  br label %init_scp.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0213.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i.i, align 4
  %arrayidx47.i = getelementptr %struct.scp_domain_data, ptr %1, i32 %i.0213.i
  %31 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx47.i, align 4
  %call49.i = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef %32) #6
  %supply.i = getelementptr %struct.scp_domain, ptr %30, i32 %i.0213.i, i32 4
  %33 = ptrtoint ptr %supply.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call49.i, ptr %supply.i, align 4
  %cmp.i197.i = icmp ugt ptr %call49.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197.i, label %if.then52.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then52.i:                                      ; preds = %for.body.i
  %cmp55.i = icmp eq ptr %call49.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp55.i, label %if.then56.i, label %if.then52.i.init_scp.exit_crit_edge

if.then52.i.init_scp.exit_crit_edge:              ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_scp.exit

if.then56.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %supply.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %supply.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then56.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0213.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %num_domains.i = getelementptr inbounds %struct.scp, ptr %call.i.i, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %3, ptr %num_domains.i, align 4
  %call.i198.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #6
  %arrayidx1.i.i = getelementptr inbounds ptr, ptr %clk.i, i32 1
  %36 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i198.i, ptr %arrayidx1.i.i, align 4
  %call.1.i.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #6
  %arrayidx1.1.i.i = getelementptr inbounds ptr, ptr %clk.i, i32 2
  %37 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.1.i.i, ptr %arrayidx1.1.i.i, align 4
  %call.2.i.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.14) #6
  %arrayidx1.2.i.i = getelementptr inbounds ptr, ptr %clk.i, i32 3
  %38 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.2.i.i, ptr %arrayidx1.2.i.i, align 4
  %call.3.i.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #6
  %arrayidx1.3.i.i = getelementptr inbounds ptr, ptr %clk.i, i32 4
  %39 = ptrtoint ptr %arrayidx1.3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.3.i.i, ptr %arrayidx1.3.i.i, align 4
  %call.4.i.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.16) #6
  %arrayidx1.4.i.i = getelementptr inbounds ptr, ptr %clk.i, i32 5
  %40 = ptrtoint ptr %arrayidx1.4.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.4.i.i, ptr %arrayidx1.4.i.i, align 4
  %call.5.i.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.17) #6
  %arrayidx1.5.i.i = getelementptr inbounds ptr, ptr %clk.i, i32 6
  %41 = ptrtoint ptr %arrayidx1.5.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.5.i.i, ptr %arrayidx1.5.i.i, align 4
  %call.6.i.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.18) #6
  %arrayidx1.6.i.i = getelementptr inbounds ptr, ptr %clk.i, i32 7
  %42 = ptrtoint ptr %arrayidx1.6.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.6.i.i, ptr %arrayidx1.6.i.i, align 4
  %call.7.i.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.19) #6
  %arrayidx1.7.i.i = getelementptr inbounds ptr, ptr %clk.i, i32 8
  %43 = ptrtoint ptr %arrayidx1.7.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.7.i.i, ptr %arrayidx1.7.i.i, align 4
  %call.8.i.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.20) #6
  %arrayidx1.8.i.i = getelementptr inbounds ptr, ptr %clk.i, i32 9
  %44 = ptrtoint ptr %arrayidx1.8.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.8.i.i, ptr %arrayidx1.8.i.i, align 4
  br i1 %cmp212.not.i, label %for.end.i.init_scp.exit_crit_edge, label %for.end.i.for.body65.i_crit_edge

for.end.i.for.body65.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body65.i

for.end.i.init_scp.exit_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_scp.exit

for.body65.i:                                     ; preds = %for.inc112.i.for.body65.i_crit_edge, %for.end.i.for.body65.i_crit_edge
  %i.1216.i = phi i32 [ %inc113.i, %for.inc112.i.for.body65.i_crit_edge ], [ 0, %for.end.i.for.body65.i_crit_edge ]
  %45 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i.i, align 4
  %arrayidx68.i = getelementptr %struct.scp_domain, ptr %46, i32 %i.1216.i
  %arrayidx71.i = getelementptr %struct.scp_domain_data, ptr %1, i32 %i.1216.i
  %47 = ptrtoint ptr %pd_data26.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pd_data26.i, align 4
  %arrayidx73.i = getelementptr ptr, ptr %48, i32 %i.1216.i
  %49 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %arrayidx68.i, ptr %arrayidx73.i, align 4
  %scp74.i = getelementptr %struct.scp_domain, ptr %46, i32 %i.1216.i, i32 1
  %50 = ptrtoint ptr %scp74.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i.i, ptr %scp74.i, align 8
  %data75.i = getelementptr %struct.scp_domain, ptr %46, i32 %i.1216.i, i32 3
  %51 = ptrtoint ptr %data75.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx71.i, ptr %data75.i, align 8
  %arrayidx78.i = getelementptr %struct.scp_domain_data, ptr %1, i32 %i.1216.i, i32 6, i32 0
  %52 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool79.not.i = icmp eq i32 %53, 0
  br i1 %tobool79.not.i, label %for.body65.i.for.end100.i_crit_edge, label %for.body80.i

for.body65.i.for.end100.i_crit_edge:              ; preds = %for.body65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end100.i

for.body80.i:                                     ; preds = %for.body65.i
  %arrayidx83.i = getelementptr [10 x ptr], ptr %clk.i, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx83.i, align 4
  %cmp.i199.i = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199.i, label %for.body80.i.cleanup107.i_crit_edge, label %for.inc98.i

for.body80.i.cleanup107.i_crit_edge:              ; preds = %for.body80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107.i

for.inc98.i:                                      ; preds = %for.body80.i
  %arrayidx94.i = getelementptr %struct.scp_domain, ptr %46, i32 %i.1216.i, i32 2, i32 0
  %56 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %arrayidx94.i, align 4
  %arrayidx78.1.i = getelementptr %struct.scp_domain_data, ptr %1, i32 %i.1216.i, i32 6, i32 1
  %57 = ptrtoint ptr %arrayidx78.1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx78.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool79.not.1.i = icmp eq i32 %58, 0
  br i1 %tobool79.not.1.i, label %for.inc98.i.for.end100.i_crit_edge, label %for.body80.1.i

for.inc98.i.for.end100.i_crit_edge:               ; preds = %for.inc98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end100.i

for.body80.1.i:                                   ; preds = %for.inc98.i
  %arrayidx83.1.i = getelementptr [10 x ptr], ptr %clk.i, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx83.1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx83.1.i, align 4
  %cmp.i199.1.i = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199.1.i, label %for.body80.1.i.cleanup107.i_crit_edge, label %for.inc98.1.i

for.body80.1.i.cleanup107.i_crit_edge:            ; preds = %for.body80.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107.i

for.inc98.1.i:                                    ; preds = %for.body80.1.i
  %arrayidx94.1.i = getelementptr %struct.scp_domain, ptr %46, i32 %i.1216.i, i32 2, i32 1
  %61 = ptrtoint ptr %arrayidx94.1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %arrayidx94.1.i, align 4
  %arrayidx78.2.i = getelementptr %struct.scp_domain_data, ptr %1, i32 %i.1216.i, i32 6, i32 2
  %62 = ptrtoint ptr %arrayidx78.2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx78.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool79.not.2.i = icmp eq i32 %63, 0
  br i1 %tobool79.not.2.i, label %for.inc98.1.i.for.end100.i_crit_edge, label %for.body80.2.i

for.inc98.1.i.for.end100.i_crit_edge:             ; preds = %for.inc98.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end100.i

for.body80.2.i:                                   ; preds = %for.inc98.1.i
  %arrayidx83.2.i = getelementptr [10 x ptr], ptr %clk.i, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx83.2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx83.2.i, align 4
  %cmp.i199.2.i = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199.2.i, label %for.body80.2.i.cleanup107.i_crit_edge, label %for.inc98.2.i

for.body80.2.i.cleanup107.i_crit_edge:            ; preds = %for.body80.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107.i

for.inc98.2.i:                                    ; preds = %for.body80.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx94.2.i = getelementptr %struct.scp_domain, ptr %46, i32 %i.1216.i, i32 2, i32 2
  %66 = ptrtoint ptr %arrayidx94.2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %arrayidx94.2.i, align 4
  br label %for.end100.i

for.end100.i:                                     ; preds = %for.inc98.2.i, %for.inc98.1.i.for.end100.i_crit_edge, %for.inc98.i.for.end100.i_crit_edge, %for.body65.i.for.end100.i_crit_edge
  %67 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx71.i, align 4
  %name102.i = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx68.i, i32 0, i32 10
  %69 = ptrtoint ptr %name102.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %name102.i, align 8
  %power_off.i = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx68.i, i32 0, i32 18
  %70 = ptrtoint ptr %power_off.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @scpsys_power_off, ptr %power_off.i, align 8
  %power_on.i = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx68.i, i32 0, i32 19
  %71 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @scpsys_power_on, ptr %power_on.i, align 4
  %72 = ptrtoint ptr %data75.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data75.i, align 8
  %caps.i = getelementptr inbounds %struct.scp_domain_data, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %caps.i, align 4
  %76 = and i8 %75, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool104.not.i = icmp eq i8 %76, 0
  br i1 %tobool104.not.i, label %for.end100.i.for.inc112.i_crit_edge, label %if.then105.i

for.end100.i.for.inc112.i_crit_edge:              ; preds = %for.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc112.i

if.then105.i:                                     ; preds = %for.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx68.i, i32 0, i32 32
  %77 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %78, 8
  store i32 %or.i, ptr %flags.i, align 4
  br label %for.inc112.i

cleanup107.i:                                     ; preds = %for.body80.2.i.cleanup107.i_crit_edge, %for.body80.1.i.cleanup107.i_crit_edge, %for.body80.i.cleanup107.i_crit_edge
  %.lcssa.i = phi ptr [ %55, %for.body80.i.cleanup107.i_crit_edge ], [ %60, %for.body80.1.i.cleanup107.i_crit_edge ], [ %65, %for.body80.2.i.cleanup107.i_crit_edge ]
  %79 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx71.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %80) #9
  br label %init_scp.exit

for.inc112.i:                                     ; preds = %if.then105.i, %for.end100.i.for.inc112.i_crit_edge
  %inc113.i = add nuw nsw i32 %i.1216.i, 1
  %exitcond222.not.i = icmp eq i32 %inc113.i, %3
  br i1 %exitcond222.not.i, label %for.inc112.i.init_scp.exit_crit_edge, label %for.inc112.i.for.body65.i_crit_edge

for.inc112.i.for.body65.i_crit_edge:              ; preds = %for.inc112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body65.i

for.inc112.i.init_scp.exit_crit_edge:             ; preds = %for.inc112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_scp.exit

init_scp.exit.thread:                             ; preds = %if.end25.i.init_scp.exit.thread_crit_edge, %devm_kcalloc.exit.i.init_scp.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i, %entry.init_scp.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %clk.i) #6
  br label %if.then

init_scp.exit:                                    ; preds = %for.inc112.i.init_scp.exit_crit_edge, %cleanup107.i, %for.end.i.init_scp.exit_crit_edge, %if.then52.i.init_scp.exit_crit_edge, %do.end.i, %if.end.i.init_scp.exit_crit_edge
  %retval.6.i = phi ptr [ %28, %do.end.i ], [ %.lcssa.i, %cleanup107.i ], [ %call12.i, %if.end.i.init_scp.exit_crit_edge ], [ %call.i.i, %for.end.i.init_scp.exit_crit_edge ], [ %call.i.i, %for.inc112.i.init_scp.exit_crit_edge ], [ %call49.i, %if.then52.i.init_scp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %clk.i) #6
  %cmp.i = icmp ugt ptr %retval.6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %init_scp.exit.if.then_crit_edge, label %if.end

init_scp.exit.if.then_crit_edge:                  ; preds = %init_scp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %init_scp.exit.if.then_crit_edge, %init_scp.exit.thread
  %retval.6.i47 = phi ptr [ inttoptr (i32 -12 to ptr), %init_scp.exit.thread ], [ %retval.6.i, %init_scp.exit.if.then_crit_edge ]
  %81 = ptrtoint ptr %retval.6.i47 to i32
  br label %cleanup

if.end:                                           ; preds = %init_scp.exit
  %82 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp45.i = icmp sgt i32 %83, 0
  br i1 %cmp45.i, label %if.end.for.body.i37_crit_edge, label %if.end.for.end.i43_crit_edge

if.end.for.end.i43_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i43

if.end.for.body.i37_crit_edge:                    ; preds = %if.end
  br label %for.body.i37

for.body.i37:                                     ; preds = %if.end.i41.for.body.i37_crit_edge, %if.end.for.body.i37_crit_edge
  %i.046.i = phi i32 [ %inc.i39, %if.end.i41.for.body.i37_crit_edge ], [ 0, %if.end.for.body.i37_crit_edge ]
  %84 = ptrtoint ptr %retval.6.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %retval.6.i, align 4
  %arrayidx.i = getelementptr %struct.scp_domain, ptr %85, i32 %i.046.i
  %power_on.i36 = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx.i, i32 0, i32 19
  %86 = ptrtoint ptr %power_on.i36 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %power_on.i36, align 4
  %call.i = tail call i32 %87(ptr noundef %arrayidx.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %do.end.i38, label %for.body.i37.if.end.i41_crit_edge, !prof !140

for.body.i37.if.end.i41_crit_edge:                ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i41

do.end.i38:                                       ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 535, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i41

if.end.i41:                                       ; preds = %do.end.i38, %for.body.i37.if.end.i41_crit_edge
  %call27.i = tail call i32 @pm_genpd_init(ptr noundef %arrayidx.i, ptr noundef null, i1 noundef zeroext %cmp2.i) #6
  %inc.i39 = add nuw nsw i32 %i.046.i, 1
  %exitcond.not.i40 = icmp eq i32 %inc.i39, %83
  br i1 %exitcond.not.i40, label %if.end.i41.for.end.i43_crit_edge, label %if.end.i41.for.body.i37_crit_edge

if.end.i41.for.body.i37_crit_edge:                ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i37

if.end.i41.for.end.i43_crit_edge:                 ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i43

for.end.i43:                                      ; preds = %if.end.i41.for.end.i43_crit_edge, %if.end.for.end.i43_crit_edge
  %pd_data28.i = getelementptr inbounds %struct.scp, ptr %retval.6.i, i32 0, i32 1
  %of_node.i42 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %88 = ptrtoint ptr %of_node.i42 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %of_node.i42, align 8
  %call29.i = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %89, ptr noundef %pd_data28.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %for.end.i43.mtk_register_power_domains.exit_crit_edge, label %do.end34.i

for.end.i43.mtk_register_power_domains.exit_crit_edge: ; preds = %for.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_register_power_domains.exit

do.end34.i:                                       ; preds = %for.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call29.i) #9
  br label %mtk_register_power_domains.exit

mtk_register_power_domains.exit:                  ; preds = %do.end34.i, %for.end.i43.mtk_register_power_domains.exit_crit_edge
  %num_subdomains = getelementptr inbounds %struct.scp_soc_data, ptr %call, i32 0, i32 3
  %90 = ptrtoint ptr %num_subdomains to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_subdomains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp51 = icmp sgt i32 %91, 0
  br i1 %cmp51, label %for.body.preheader, label %mtk_register_power_domains.exit.cleanup_crit_edge

mtk_register_power_domains.exit.cleanup_crit_edge: ; preds = %mtk_register_power_domains.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %mtk_register_power_domains.exit
  %subdomains = getelementptr inbounds %struct.scp_soc_data, ptr %call, i32 0, i32 2
  %92 = ptrtoint ptr %subdomains to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %subdomains, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.053 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sd.052 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %93, %for.body.preheader ]
  %94 = ptrtoint ptr %pd_data28.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pd_data28.i, align 4
  %96 = ptrtoint ptr %sd.052 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sd.052, align 4
  %arrayidx = getelementptr ptr, ptr %95, i32 %97
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx, align 4
  %subdomain = getelementptr inbounds %struct.scp_subdomain, ptr %sd.052, i32 0, i32 1
  %100 = ptrtoint ptr %subdomain to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %subdomain, align 4
  %arrayidx8 = getelementptr ptr, ptr %95, i32 %101
  %102 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx8, align 4
  %call9 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %99, ptr noundef %103) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call9) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.053, 1
  %incdec.ptr = getelementptr %struct.scp_subdomain, ptr %sd.052, i32 1
  %104 = ptrtoint ptr %num_subdomains to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num_subdomains, align 4
  %cmp = icmp slt i32 %inc, %105
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %mtk_register_power_domains.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %81, %if.then ], [ 0, %mtk_register_power_domains.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpsys_power_off(ptr nocapture noundef readonly %genpd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %scp1 = getelementptr inbounds %struct.scp_domain, ptr %genpd, i32 0, i32 1
  %0 = ptrtoint ptr %scp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scp1, align 8
  %base = getelementptr inbounds %struct.scp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %data = getelementptr inbounds %struct.scp_domain, ptr %genpd, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %ctl_offs = getelementptr inbounds %struct.scp_domain_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ctl_offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctl_offs, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 %7
  %bus_prot_mask.i = getelementptr inbounds %struct.scp_domain_data, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %bus_prot_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_prot_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %scpsys_bus_protect_enable.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

scpsys_bus_protect_enable.exit:                   ; preds = %entry
  %infracfg.i = getelementptr inbounds %struct.scp, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %infracfg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %infracfg.i, align 4
  %bus_prot_reg_update.i = getelementptr inbounds %struct.scp, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %bus_prot_reg_update.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bus_prot_reg_update.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.i = icmp ne i8 %13, 0
  %call.i = tail call i32 @mtk_infracfg_set_bus_protection(ptr noundef %11, i32 noundef %9, i1 noundef zeroext %tobool4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %scpsys_bus_protect_enable.exit.do.end64_crit_edge, label %scpsys_bus_protect_enable.exit.if.end_crit_edge

scpsys_bus_protect_enable.exit.if.end_crit_edge:  ; preds = %scpsys_bus_protect_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

scpsys_bus_protect_enable.exit.do.end64_crit_edge: ; preds = %scpsys_bus_protect_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

if.end:                                           ; preds = %scpsys_bus_protect_enable.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 8
  %sram_pdn_ack_bits.i = getelementptr inbounds %struct.scp_domain_data, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %sram_pdn_ack_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sram_pdn_ack_bits.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !141
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 8
  %sram_pdn_bits.i = getelementptr inbounds %struct.scp_domain_data, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %sram_pdn_bits.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sram_pdn_bits.i, align 4
  %or.i = or i32 %23, %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %24) #6, !srcloc !144
  %call4.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call4.i, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 276) #6
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !141
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  %and53.i = and i32 %26, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %and53.i, i32 %17)
  %cmp2054.i = icmp eq i32 %and53.i, %17
  br i1 %cmp2054.i, label %if.end.if.end7_crit_edge, label %if.end.land.lhs.true.i_crit_edge

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.then34.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %call23.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call23.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call23.i, %add.i.i
  br i1 %cmp3.i.i, label %scpsys_sram_disable.exit, label %if.then34.i

if.then34.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !141
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  %and.i = and i32 %28, %17
  %cmp20.i = icmp eq i32 %and.i, %17
  br i1 %cmp20.i, label %if.then34.i.if.end7_crit_edge, label %if.then34.i.land.lhs.true.i_crit_edge

if.then34.i.land.lhs.true.i_crit_edge:            ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

if.then34.i.if.end7_crit_edge:                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

scpsys_sram_disable.exit:                         ; preds = %land.lhs.true.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !141
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %.pre.i = and i32 %30, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre.i, i32 %17)
  %cmp38.i = icmp eq i32 %.pre.i, %17
  br i1 %cmp38.i, label %scpsys_sram_disable.exit.if.end7_crit_edge, label %scpsys_sram_disable.exit.do.end64_crit_edge

scpsys_sram_disable.exit.do.end64_crit_edge:      ; preds = %scpsys_sram_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

scpsys_sram_disable.exit.if.end7_crit_edge:       ; preds = %scpsys_sram_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %scpsys_sram_disable.exit.if.end7_crit_edge, %if.then34.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  %32 = or i32 %31, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %32) #6, !srcloc !144
  %33 = and i32 %32, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %33) #6, !srcloc !144
  %34 = or i32 %33, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %34) #6, !srcloc !144
  %35 = and i32 %34, -83886081
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %35) #6, !srcloc !144
  %36 = and i32 %34, -218103809
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %36) #6, !srcloc !144
  %call26 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call26, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 396) #6
  br label %for.cond

for.cond:                                         ; preds = %if.then51, %if.end7
  %37 = ptrtoint ptr %scp1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %scp1, align 8
  %base.i = getelementptr inbounds %struct.scp, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %ctrl_reg.i = getelementptr inbounds %struct.scp, ptr %38, i32 0, i32 5
  %41 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctrl_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 %42
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !141
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 8
  %sta_mask.i = getelementptr inbounds %struct.scp_domain_data, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %sta_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sta_mask.i, align 4
  %and.i106 = and i32 %48, %44
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %pwr_sta2nd_offs.i = getelementptr inbounds %struct.scp, ptr %38, i32 0, i32 5, i32 1
  %51 = ptrtoint ptr %pwr_sta2nd_offs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pwr_sta2nd_offs.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %50, i32 %52
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #6, !srcloc !141
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 8
  %sta_mask12.i = getelementptr inbounds %struct.scp_domain_data, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %sta_mask12.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sta_mask12.i, align 4
  %and13.i = and i32 %58, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool.not.i107 = icmp eq i32 %and.i106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %cmp41 = select i1 %tobool.not.i107, i1 %tobool14.not.i, i1 false
  br i1 %cmp41, label %for.cond.if.end57_crit_edge, label %land.lhs.true

for.cond.if.end57_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

land.lhs.true:                                    ; preds = %for.cond
  %call44 = tail call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call44, %add.i
  br i1 %cmp3.i, label %if.then47, label %if.then51

if.then47:                                        ; preds = %land.lhs.true
  %59 = ptrtoint ptr %scp1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %scp1, align 8
  %base.i111 = getelementptr inbounds %struct.scp, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %base.i111 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i111, align 4
  %ctrl_reg.i112 = getelementptr inbounds %struct.scp, ptr %60, i32 0, i32 5
  %63 = ptrtoint ptr %ctrl_reg.i112 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ctrl_reg.i112, align 4
  %add.ptr.i113 = getelementptr i8, ptr %62, i32 %64
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #6, !srcloc !141
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 8
  %sta_mask.i115 = getelementptr inbounds %struct.scp_domain_data, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %sta_mask.i115 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sta_mask.i115, align 4
  %and.i116 = and i32 %70, %66
  %71 = ptrtoint ptr %base.i111 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i111, align 4
  %pwr_sta2nd_offs.i117 = getelementptr inbounds %struct.scp, ptr %60, i32 0, i32 5, i32 1
  %73 = ptrtoint ptr %pwr_sta2nd_offs.i117 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pwr_sta2nd_offs.i117, align 4
  %add.ptr7.i118 = getelementptr i8, ptr %72, i32 %74
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i118) #6, !srcloc !141
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 8
  %sta_mask12.i119 = getelementptr inbounds %struct.scp_domain_data, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %sta_mask12.i119 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sta_mask12.i119, align 4
  %and13.i120 = and i32 %80, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool.not.i121 = icmp eq i32 %and.i116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i120)
  %tobool14.not.i122 = icmp eq i32 %and13.i120, 0
  %phi.cmp = select i1 %tobool.not.i121, i1 %tobool14.not.i122, i1 false
  br i1 %phi.cmp, label %if.then47.if.end57_crit_edge, label %if.then47.do.end64_crit_edge

if.then47.do.end64_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

if.then47.if.end57_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  br label %for.cond

if.end57:                                         ; preds = %if.then47.if.end57_crit_edge, %for.cond.if.end57_crit_edge
  %clk = getelementptr inbounds %struct.scp_domain, ptr %genpd, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.scp_domain, ptr %genpd, i32 0, i32 2, i32 2
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %82) #6
  tail call void @clk_unprepare(ptr noundef %82) #6
  %arrayidx.i.1 = getelementptr %struct.scp_domain, ptr %genpd, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i.1, align 4
  tail call void @clk_disable(ptr noundef %84) #6
  tail call void @clk_unprepare(ptr noundef %84) #6
  %85 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %86) #6
  tail call void @clk_unprepare(ptr noundef %86) #6
  %supply.i = getelementptr inbounds %struct.scp_domain, ptr %genpd, i32 0, i32 4
  %87 = ptrtoint ptr %supply.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %supply.i, align 4
  %tobool.not.i128 = icmp eq ptr %88, null
  br i1 %tobool.not.i128, label %if.end57.cleanup_crit_edge, label %scpsys_regulator_disable.exit

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

scpsys_regulator_disable.exit:                    ; preds = %if.end57
  %call.i129 = tail call i32 @regulator_disable(ptr noundef nonnull %88) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %cmp59 = icmp slt i32 %call.i129, 0
  br i1 %cmp59, label %scpsys_regulator_disable.exit.do.end64_crit_edge, label %scpsys_regulator_disable.exit.cleanup_crit_edge

scpsys_regulator_disable.exit.cleanup_crit_edge:  ; preds = %scpsys_regulator_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

scpsys_regulator_disable.exit.do.end64_crit_edge: ; preds = %scpsys_regulator_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

do.end64:                                         ; preds = %scpsys_regulator_disable.exit.do.end64_crit_edge, %if.then47.do.end64_crit_edge, %scpsys_sram_disable.exit.do.end64_crit_edge, %scpsys_bus_protect_enable.exit.do.end64_crit_edge
  %ret.0 = phi i32 [ %call.i, %scpsys_bus_protect_enable.exit.do.end64_crit_edge ], [ -110, %scpsys_sram_disable.exit.do.end64_crit_edge ], [ %call.i129, %scpsys_regulator_disable.exit.do.end64_crit_edge ], [ -110, %if.then47.do.end64_crit_edge ]
  %dev = getelementptr inbounds %struct.scp, ptr %1, i32 0, i32 2
  %89 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %genpd, i32 0, i32 10
  %91 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.21, ptr noundef %92) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %scpsys_regulator_disable.exit.cleanup_crit_edge, %if.end57.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end64 ], [ 0, %scpsys_regulator_disable.exit.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpsys_power_on(ptr nocapture noundef readonly %genpd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %scp1 = getelementptr inbounds %struct.scp_domain, ptr %genpd, i32 0, i32 1
  %0 = ptrtoint ptr %scp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scp1, align 8
  %base = getelementptr inbounds %struct.scp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %data = getelementptr inbounds %struct.scp_domain, ptr %genpd, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %ctl_offs = getelementptr inbounds %struct.scp_domain_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ctl_offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctl_offs, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 %7
  %supply.i = getelementptr inbounds %struct.scp_domain, ptr %genpd, i32 0, i32 4
  %8 = ptrtoint ptr %supply.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %supply.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %scpsys_regulator_enable.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

scpsys_regulator_enable.exit:                     ; preds = %entry
  %call.i = tail call i32 @regulator_enable(ptr noundef nonnull %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %scpsys_regulator_enable.exit.cleanup_crit_edge, label %scpsys_regulator_enable.exit.if.end_crit_edge

scpsys_regulator_enable.exit.if.end_crit_edge:    ; preds = %scpsys_regulator_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

scpsys_regulator_enable.exit.cleanup_crit_edge:   ; preds = %scpsys_regulator_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %scpsys_regulator_enable.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.scp_domain, ptr %genpd, i32 0, i32 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %tobool.not.i114 = icmp eq ptr %11, null
  br i1 %tobool.not.i114, label %if.end.if.end6_crit_edge, label %for.body.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

for.body.i:                                       ; preds = %if.end
  %call.i.i = tail call i32 @clk_prepare(ptr noundef nonnull %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.err_clk_crit_edge

for.body.i.err_clk_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk

if.end.i.i:                                       ; preds = %for.body.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef nonnull %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %for.inc.i, label %if.then.i

if.then.thread28.i:                               ; preds = %if.end.i.2.i.if.then.thread28.i_crit_edge, %if.end.i.1.i.if.then.thread28.i_crit_edge
  %i.010.lcssa16.ph.i = phi i32 [ 2, %if.end.i.2.i.if.then.thread28.i_crit_edge ], [ 1, %if.end.i.1.i.if.then.thread28.i_crit_edge ]
  %.lcssa14.ph.i = phi ptr [ %19, %if.end.i.2.i.if.then.thread28.i_crit_edge ], [ %17, %if.end.i.1.i.if.then.thread28.i_crit_edge ]
  %call1.i.lcssa.ph.i = phi i32 [ %call1.i.2.i, %if.end.i.2.i.if.then.thread28.i_crit_edge ], [ %call1.i.1.i, %if.end.i.1.i.if.then.thread28.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef nonnull %.lcssa14.ph.i) #6
  br label %for.body.i.i

if.then.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef nonnull %11) #6
  br label %err_clk

for.body.i.i:                                     ; preds = %for.body.2.i.for.body.i.i_crit_edge, %for.body.1.i.for.body.i.i_crit_edge, %if.then.thread28.i
  %retval.0.i.ph22.i = phi i32 [ %call1.i.lcssa.ph.i, %if.then.thread28.i ], [ %call.i.2.i, %for.body.2.i.for.body.i.i_crit_edge ], [ %call.i.1.i, %for.body.1.i.for.body.i.i_crit_edge ]
  %i.0101721.i = phi i32 [ %i.010.lcssa16.ph.i, %if.then.thread28.i ], [ 2, %for.body.2.i.for.body.i.i_crit_edge ], [ 1, %for.body.1.i.for.body.i.i_crit_edge ]
  %i.05.i.i = add nsw i32 %i.0101721.i, -1
  %arrayidx.i.i = getelementptr ptr, ptr %clk, i32 %i.05.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.05.i.i)
  %cmp.i.not.i = icmp eq i32 %i.05.i.i, 0
  br i1 %cmp.i.not.i, label %for.body.i.i.scpsys_clk_enable.exit_crit_edge, label %for.body.i.i.1

for.body.i.i.scpsys_clk_enable.exit_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scpsys_clk_enable.exit

for.body.i.i.1:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i.05.i.i.1 = add nsw i32 %i.0101721.i, -2
  %arrayidx.i.i.1 = getelementptr ptr, ptr %clk, i32 %i.05.i.i.1
  %14 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i.1, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %scpsys_clk_enable.exit

for.inc.i:                                        ; preds = %if.end.i.i
  %arrayidx.1.i = getelementptr %struct.scp_domain, ptr %genpd, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %17, null
  br i1 %tobool.not.1.i, label %for.inc.i.if.end6_crit_edge, label %for.body.1.i

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

for.body.1.i:                                     ; preds = %for.inc.i
  %call.i.1.i = tail call i32 @clk_prepare(ptr noundef nonnull %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %if.end.i.1.i, label %for.body.1.i.for.body.i.i_crit_edge

for.body.1.i.for.body.i.i_crit_edge:              ; preds = %for.body.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end.i.1.i:                                     ; preds = %for.body.1.i
  %call1.i.1.i = tail call i32 @clk_enable(ptr noundef nonnull %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1.i)
  %tobool2.not.i.1.i = icmp eq i32 %call1.i.1.i, 0
  br i1 %tobool2.not.i.1.i, label %for.inc.1.i, label %if.end.i.1.i.if.then.thread28.i_crit_edge

if.end.i.1.i.if.then.thread28.i_crit_edge:        ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.thread28.i

for.inc.1.i:                                      ; preds = %if.end.i.1.i
  %arrayidx.2.i = getelementptr %struct.scp_domain, ptr %genpd, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %19, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.if.end6_crit_edge, label %for.body.2.i

for.inc.1.i.if.end6_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

for.body.2.i:                                     ; preds = %for.inc.1.i
  %call.i.2.i = tail call i32 @clk_prepare(ptr noundef nonnull %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.not.i.2.i = icmp eq i32 %call.i.2.i, 0
  br i1 %tobool.not.i.2.i, label %if.end.i.2.i, label %for.body.2.i.for.body.i.i_crit_edge

for.body.2.i.for.body.i.i_crit_edge:              ; preds = %for.body.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end.i.2.i:                                     ; preds = %for.body.2.i
  %call1.i.2.i = tail call i32 @clk_enable(ptr noundef nonnull %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2.i)
  %tobool2.not.i.2.i = icmp eq i32 %call1.i.2.i, 0
  br i1 %tobool2.not.i.2.i, label %if.end.i.2.i.if.end6_crit_edge, label %if.end.i.2.i.if.then.thread28.i_crit_edge

if.end.i.2.i.if.then.thread28.i_crit_edge:        ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.thread28.i

if.end.i.2.i.if.end6_crit_edge:                   ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

scpsys_clk_enable.exit:                           ; preds = %for.body.i.i.1, %for.body.i.i.scpsys_clk_enable.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.ph22.i)
  %tobool.not = icmp eq i32 %retval.0.i.ph22.i, 0
  br i1 %tobool.not, label %scpsys_clk_enable.exit.if.end6_crit_edge, label %scpsys_clk_enable.exit.err_clk_crit_edge

scpsys_clk_enable.exit.err_clk_crit_edge:         ; preds = %scpsys_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk

scpsys_clk_enable.exit.if.end6_crit_edge:         ; preds = %scpsys_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %scpsys_clk_enable.exit.if.end6_crit_edge, %if.end.i.2.i.if.end6_crit_edge, %for.inc.1.i.if.end6_crit_edge, %for.inc.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  %21 = or i32 %20, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %21) #6, !srcloc !144
  %22 = or i32 %20, 201326592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %22) #6, !srcloc !144
  %call14 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call14, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 328) #6
  br label %for.cond

for.cond:                                         ; preds = %if.then40, %if.end6
  %23 = ptrtoint ptr %scp1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scp1, align 8
  %base.i = getelementptr inbounds %struct.scp, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %ctrl_reg.i = getelementptr inbounds %struct.scp, ptr %24, i32 0, i32 5
  %27 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctrl_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !141
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 8
  %sta_mask.i = getelementptr inbounds %struct.scp_domain_data, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %sta_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sta_mask.i, align 4
  %and.i = and i32 %34, %30
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %pwr_sta2nd_offs.i = getelementptr inbounds %struct.scp, ptr %24, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %pwr_sta2nd_offs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pwr_sta2nd_offs.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %36, i32 %38
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #6, !srcloc !141
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 8
  %sta_mask12.i = getelementptr inbounds %struct.scp_domain_data, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %sta_mask12.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sta_mask12.i, align 4
  %and13.i = and i32 %44, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i115 = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp ne i32 %and13.i, 0
  %or.cond.i = select i1 %tobool.not.i115, i1 %tobool14.not.i, i1 false
  br i1 %or.cond.i, label %for.cond.if.end46_crit_edge, label %land.lhs.true

for.cond.if.end46_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true:                                    ; preds = %for.cond
  %call33 = tail call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call33, %add.i
  br i1 %cmp3.i, label %if.then36, label %if.then40

if.then36:                                        ; preds = %land.lhs.true
  %45 = ptrtoint ptr %scp1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %scp1, align 8
  %base.i119 = getelementptr inbounds %struct.scp, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %base.i119 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i119, align 4
  %ctrl_reg.i120 = getelementptr inbounds %struct.scp, ptr %46, i32 0, i32 5
  %49 = ptrtoint ptr %ctrl_reg.i120 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctrl_reg.i120, align 4
  %add.ptr.i121 = getelementptr i8, ptr %48, i32 %50
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #6, !srcloc !141
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 8
  %sta_mask.i123 = getelementptr inbounds %struct.scp_domain_data, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %sta_mask.i123 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sta_mask.i123, align 4
  %and.i124 = and i32 %56, %52
  %57 = ptrtoint ptr %base.i119 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i119, align 4
  %pwr_sta2nd_offs.i125 = getelementptr inbounds %struct.scp, ptr %46, i32 0, i32 5, i32 1
  %59 = ptrtoint ptr %pwr_sta2nd_offs.i125 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pwr_sta2nd_offs.i125, align 4
  %add.ptr7.i126 = getelementptr i8, ptr %58, i32 %60
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i126) #6, !srcloc !141
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 8
  %sta_mask12.i127 = getelementptr inbounds %struct.scp_domain_data, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %sta_mask12.i127 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sta_mask12.i127, align 4
  %and13.i128 = and i32 %66, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124)
  %tobool.not.i129 = icmp eq i32 %and.i124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i128)
  %tobool14.not.i130 = icmp eq i32 %and13.i128, 0
  %or.cond.i131 = select i1 %tobool.not.i129, i1 true, i1 %tobool14.not.i130
  br i1 %or.cond.i131, label %if.then36.err_pwr_ack_crit_edge, label %if.then36.if.end46_crit_edge

if.then36.if.end46_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then36.err_pwr_ack_crit_edge:                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pwr_ack

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  br label %for.cond

if.end46:                                         ; preds = %if.then36.if.end46_crit_edge, %for.cond.if.end46_crit_edge
  %67 = and i32 %22, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %67) #6, !srcloc !144
  %68 = and i32 %22, -301989889
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %68) #6, !srcloc !144
  %69 = or i32 %68, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %69) #6, !srcloc !144
  %70 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data, align 8
  %sram_pdn_ack_bits.i = getelementptr inbounds %struct.scp_domain_data, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %sram_pdn_ack_bits.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sram_pdn_ack_bits.i, align 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !141
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data, align 8
  %sram_pdn_bits.i = getelementptr inbounds %struct.scp_domain_data, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %sram_pdn_bits.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sram_pdn_bits.i, align 4
  %neg.i = xor i32 %79, -1
  %and.i136 = and i32 %75, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  tail call void @arm_heavy_mb() #6
  %80 = tail call i32 @llvm.bswap.i32(i32 %and.i136) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %80) #6, !srcloc !144
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data, align 8
  %caps.i = getelementptr inbounds %struct.scp_domain_data, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %caps.i, align 4
  %85 = and i8 %84, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i137 = icmp eq i8 %85, 0
  br i1 %tobool.not.i137, label %if.else.i, label %if.then.i138

if.then.i138:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 12000, i32 noundef 12100, i32 noundef 2) #6
  br label %if.end61

if.else.i:                                        ; preds = %if.end46
  %call6.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call6.i, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 255) #6
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !141
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  %and2471.i = and i32 %87, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2471.i)
  %cmp2572.i = icmp eq i32 %and2471.i, 0
  br i1 %cmp2572.i, label %if.else.i.if.end61_crit_edge, label %if.else.i.land.lhs.true.i_crit_edge

if.else.i.land.lhs.true.i_crit_edge:              ; preds = %if.else.i
  br label %land.lhs.true.i

if.else.i.if.end61_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true.i:                                  ; preds = %if.then42.i.land.lhs.true.i_crit_edge, %if.else.i.land.lhs.true.i_crit_edge
  %call30.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call30.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call30.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then42.i

if.then42.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !141
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  %and24.i = and i32 %89, %73
  %cmp25.i = icmp eq i32 %and24.i, 0
  br i1 %cmp25.i, label %if.then42.i.if.end61_crit_edge, label %if.then42.i.land.lhs.true.i_crit_edge

if.then42.i.land.lhs.true.i_crit_edge:            ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

if.then42.i.if.end61_crit_edge:                   ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

for.end.i:                                        ; preds = %land.lhs.true.i
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !141
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  %.pre.i = and i32 %91, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %cmp46.i = icmp eq i32 %.pre.i, 0
  br i1 %cmp46.i, label %for.end.i.if.end61_crit_edge, label %for.end.i.err_pwr_ack_crit_edge

for.end.i.err_pwr_ack_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pwr_ack

for.end.i.if.end61_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.end61:                                         ; preds = %for.end.i.if.end61_crit_edge, %if.then42.i.if.end61_crit_edge, %if.else.i.if.end61_crit_edge, %if.then.i138
  %92 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data, align 8
  %bus_prot_mask.i = getelementptr inbounds %struct.scp_domain_data, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %bus_prot_mask.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bus_prot_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i140 = icmp eq i32 %95, 0
  br i1 %tobool.not.i140, label %if.end61.cleanup_crit_edge, label %scpsys_bus_protect_disable.exit

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

scpsys_bus_protect_disable.exit:                  ; preds = %if.end61
  %96 = ptrtoint ptr %scp1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %scp1, align 8
  %infracfg.i = getelementptr inbounds %struct.scp, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %infracfg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %infracfg.i, align 4
  %bus_prot_reg_update.i = getelementptr inbounds %struct.scp, ptr %97, i32 0, i32 6
  %100 = ptrtoint ptr %bus_prot_reg_update.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %bus_prot_reg_update.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool4.i = icmp ne i8 %101, 0
  %call.i142 = tail call i32 @mtk_infracfg_clear_bus_protection(ptr noundef %99, i32 noundef %95, i1 noundef zeroext %tobool4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %cmp63 = icmp slt i32 %call.i142, 0
  br i1 %cmp63, label %scpsys_bus_protect_disable.exit.err_pwr_ack_crit_edge, label %scpsys_bus_protect_disable.exit.cleanup_crit_edge

scpsys_bus_protect_disable.exit.cleanup_crit_edge: ; preds = %scpsys_bus_protect_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

scpsys_bus_protect_disable.exit.err_pwr_ack_crit_edge: ; preds = %scpsys_bus_protect_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pwr_ack

err_pwr_ack:                                      ; preds = %scpsys_bus_protect_disable.exit.err_pwr_ack_crit_edge, %for.end.i.err_pwr_ack_crit_edge, %if.then36.err_pwr_ack_crit_edge
  %ret.0 = phi i32 [ %call.i142, %scpsys_bus_protect_disable.exit.err_pwr_ack_crit_edge ], [ -110, %for.end.i.err_pwr_ack_crit_edge ], [ -110, %if.then36.err_pwr_ack_crit_edge ]
  %arrayidx.i = getelementptr %struct.scp_domain, ptr %genpd, i32 0, i32 2, i32 2
  %102 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %103) #6
  tail call void @clk_unprepare(ptr noundef %103) #6
  %arrayidx.i.1 = getelementptr %struct.scp_domain, ptr %genpd, i32 0, i32 2, i32 1
  %104 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i.1, align 4
  tail call void @clk_disable(ptr noundef %105) #6
  tail call void @clk_unprepare(ptr noundef %105) #6
  %106 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %107) #6
  tail call void @clk_unprepare(ptr noundef %107) #6
  br label %err_clk

err_clk:                                          ; preds = %err_pwr_ack, %scpsys_clk_enable.exit.err_clk_crit_edge, %if.then.i, %for.body.i.err_clk_crit_edge
  %ret.1 = phi i32 [ %retval.0.i.ph22.i, %scpsys_clk_enable.exit.err_clk_crit_edge ], [ %call.i.i, %for.body.i.err_clk_crit_edge ], [ %call1.i.i, %if.then.i ], [ %ret.0, %err_pwr_ack ]
  %108 = ptrtoint ptr %supply.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %supply.i, align 4
  %tobool.not.i149 = icmp eq ptr %109, null
  br i1 %tobool.not.i149, label %err_clk.scpsys_regulator_disable.exit_crit_edge, label %if.end.i151

err_clk.scpsys_regulator_disable.exit_crit_edge:  ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #8
  br label %scpsys_regulator_disable.exit

if.end.i151:                                      ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #8
  %call.i150 = tail call i32 @regulator_disable(ptr noundef nonnull %109) #6
  br label %scpsys_regulator_disable.exit

scpsys_regulator_disable.exit:                    ; preds = %if.end.i151, %err_clk.scpsys_regulator_disable.exit_crit_edge
  %dev = getelementptr inbounds %struct.scp, ptr %1, i32 0, i32 2
  %110 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %genpd, i32 0, i32 10
  %112 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.23, ptr noundef %113) #9
  br label %cleanup

cleanup:                                          ; preds = %scpsys_regulator_disable.exit, %scpsys_bus_protect_disable.exit.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %scpsys_regulator_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %scpsys_regulator_disable.exit ], [ %call.i, %scpsys_regulator_enable.exit.cleanup_crit_edge ], [ 0, %scpsys_bus_protect_disable.exit.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_infracfg_set_bus_protection(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_infracfg_clear_bus_protection(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__initcall__kmod_mtk_scpsys__288_1147_scpsys_drv_init6, !1, !"__initcall__kmod_mtk_scpsys__288_1147_scpsys_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 1147, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 1141, i32 11}
!4 = !{ptr @scpsys_drv, !5, !"scpsys_drv", i1 false, i1 false}
!5 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 1138, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 1131, i32 4}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @scpsys_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @scpsys_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 462, i32 4}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 464, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @init_scp._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @init_scp._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 500, i32 5}
!23 = !{ptr @init_scp._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @init_scp._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 97, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 98, i32 2}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 99, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 100, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 101, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 102, i32 2}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 103, i32 2}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 104, i32 2}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 105, i32 2}
!43 = distinct !{null, !44, !"clk_names", i1 false, i1 false}
!44 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 95, i32 27}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 409, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @scpsys_power_off._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @scpsys_power_off._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 356, i32 2}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @scpsys_power_on._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @scpsys_power_on._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 550, i32 3}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mtk_register_power_domains._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtk_register_power_domains._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @of_scpsys_match_tbl, !61, !"of_scpsys_match_tbl", i1 false, i1 false}
!61 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 1084, i32 34}
!62 = !{ptr @mt2701_data, !63, !"mt2701_data", i1 false, i1 false}
!63 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 1014, i32 34}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 559, i32 11}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 568, i32 11}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 595, i32 11}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 604, i32 11}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 612, i32 11}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 621, i32 11}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 630, i32 11}
!78 = !{ptr @scp_domain_data_mt2701, !79, !"scp_domain_data_mt2701", i1 false, i1 false}
!79 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 557, i32 37}
!80 = !{ptr @mt2712_data, !81, !"mt2712_data", i1 false, i1 false}
!81 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 1024, i32 34}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 688, i32 11}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 697, i32 11}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 716, i32 11}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 725, i32 11}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 734, i32 11}
!92 = !{ptr @scp_domain_data_mt2712, !93, !"scp_domain_data_mt2712", i1 false, i1 false}
!93 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 641, i32 37}
!94 = !{ptr @scp_subdomain_mt2712, !95, !"scp_subdomain_mt2712", i1 false, i1 false}
!95 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 744, i32 35}
!96 = !{ptr @mt6797_data, !97, !"mt6797_data", i1 false, i1 false}
!97 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 1036, i32 34}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 800, i32 11}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 808, i32 11}
!102 = !{ptr @scp_domain_data_mt6797, !103, !"scp_domain_data_mt6797", i1 false, i1 false}
!103 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 757, i32 37}
!104 = !{ptr @scp_subdomain_mt6797, !105, !"scp_subdomain_mt6797", i1 false, i1 false}
!105 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 820, i32 35}
!106 = !{ptr @mt7622_data, !107, !"mt7622_data", i1 false, i1 false}
!107 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 1048, i32 34}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 833, i32 11}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 843, i32 11}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 853, i32 11}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 863, i32 11}
!116 = !{ptr @scp_domain_data_mt7622, !117, !"scp_domain_data_mt7622", i1 false, i1 false}
!117 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 831, i32 37}
!118 = !{ptr @mt7623a_data, !119, !"mt7623a_data", i1 false, i1 false}
!119 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 1058, i32 34}
!120 = !{ptr @scp_domain_data_mt7623a, !121, !"scp_domain_data_mt7623a", i1 false, i1 false}
!121 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 878, i32 37}
!122 = !{ptr @mt8173_data, !123, !"mt8173_data", i1 false, i1 false}
!123 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 1068, i32 34}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 988, i32 11}
!126 = !{ptr @scp_domain_data_mt8173, !127, !"scp_domain_data_mt8173", i1 false, i1 false}
!127 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 919, i32 37}
!128 = !{ptr @scp_subdomain_mt8173, !129, !"scp_subdomain_mt8173", i1 false, i1 false}
!129 = !{!"../drivers/soc/mediatek/mtk-scpsys.c", i32 1009, i32 35}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{i8 0, i8 2}
!140 = !{!"branch_weights", i32 1, i32 2000}
!141 = !{i64 2056369}
!142 = !{i64 2155103826}
!143 = !{i64 2155104031}
!144 = !{i64 2055951}
!145 = !{i64 2155105781}
!146 = !{i64 2155106231}
!147 = !{i64 2155118486}
!148 = !{i64 2155118773}
!149 = !{i64 2155119226}
!150 = !{i64 2155119679}
!151 = !{i64 2155120132}
!152 = !{i64 2155120585}
!153 = !{i64 2155099812}
!154 = !{i64 2155100394}
!155 = !{i64 2155111924}
!156 = !{i64 2155112211}
!157 = !{i64 2155112664}
!158 = !{i64 2155114111}
!159 = !{i64 2155114564}
!160 = !{i64 2155115017}
!161 = !{i64 2155100847}
!162 = !{i64 2155101052}
!163 = !{i64 2155102922}
!164 = !{i64 2155103372}
