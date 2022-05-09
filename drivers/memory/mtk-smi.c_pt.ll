; ModuleID = '/llk/IR_all_yes/drivers/memory/mtk-smi.c_pt.bc'
source_filename = "../drivers/memory/mtk-smi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mtk_smi_larb_get\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_smi_larb_get\09\09\09\09"
module asm "\09.long\09__crc_mtk_smi_larb_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_smi_larb_get:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_smi_larb_get\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_smi_larb_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_smi_larb_put\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_smi_larb_put\09\09\09\09"
module asm "\09.long\09__crc_mtk_smi_larb_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_smi_larb_put:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_smi_larb_put\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_smi_larb_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_smi_common_plat = type { i32, i8, i32, ptr }
%struct.mtk_smi_reg_pair = type { i32, i32 }
%struct.component_ops = type { ptr, ptr }
%struct.mtk_smi_larb_gen = type { [33 x i32], ptr, i32, i32, ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mtk_smi = type { ptr, i32, [4 x %struct.clk_bulk_data], ptr, %union.anon.43, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%union.anon.43 = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.mtk_smi_larb = type { %struct.mtk_smi, ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_smi_larb_iommu = type { ptr, i32, [32 x i8] }

@__kstrtab_mtk_smi_larb_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_smi_larb_get = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_smi_larb_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_smi_larb_get to i32), ptr @__kstrtab_mtk_smi_larb_get, ptr @__kstrtabns_mtk_smi_larb_get }, section "___ksymtab_gpl+mtk_smi_larb_get", align 4
@__kstrtab_mtk_smi_larb_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_smi_larb_put = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_smi_larb_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_smi_larb_put to i32), ptr @__kstrtab_mtk_smi_larb_put, ptr @__kstrtabns_mtk_smi_larb_put }, section "___ksymtab_gpl+mtk_smi_larb_put", align 4
@__initcall__kmod_mtk_smi__171_710_mtk_smi_init6 = internal global ptr @mtk_smi_init, section ".initcall6.init", align 4
@smidrivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mtk_smi_common_driver, ptr @mtk_smi_larb_driver], [24 x i8] zeroinitializer }, align 32
@__exitcall_mtk_smi_exit = internal global ptr @mtk_smi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description172 = internal constant [40 x i8] c"mtk_smi.description=MediaTek SMI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [36 x i8] c"mtk_smi.file=drivers/memory/mtk-smi\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [23 x i8] c"mtk_smi.license=GPL v2\00", section ".modinfo", align 1
@mtk_smi_common_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_smi_common_probe, ptr @mtk_smi_common_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_smi_common_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smi_common_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@mtk_smi_larb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_smi_larb_probe, ptr @mtk_smi_larb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_smi_larb_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smi_larb_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk-smi-common\00", [17 x i8] zeroinitializer }, align 32
@mtk_smi_common_of_ids = internal constant { [11 x %struct.of_device_id], [532 x i8] } { [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-smi-common\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_common_gen1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-smi-common\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_common_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6779-smi-common\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_common_mt6779 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-smi-common\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_common_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-smi-common\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_common_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-smi-common\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_common_mt8183 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-smi-common\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_common_mt8192 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-smi-common-vdo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_common_mt8195_vdo }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-smi-common-vpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_common_mt8195_vpp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-smi-sub-common\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_sub_common_mt8195 }, %struct.of_device_id zeroinitializer], [532 x i8] zeroinitializer }, align 32
@smi_common_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_smi_common_suspend, ptr @mtk_smi_common_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_smi_common_clks = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smi\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gals0\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gals1\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek,smi\00", [19 x i8] zeroinitializer }, align 32
@mtk_smi_device_link_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 395, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to link smi-common dev\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mtk_smi_device_link_common\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/memory/mtk-smi.c\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_smi_device_link_common._entry_ptr = internal global ptr @mtk_smi_device_link_common._entry, section ".printk_index", align 4
@mtk_smi_device_link_common._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 400, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get the smi_common device\0A\00", [59 x i8] zeroinitializer }, align 32
@mtk_smi_device_link_common._entry_ptr.14 = internal global ptr @mtk_smi_device_link_common._entry.12, section ".printk_index", align 4
@mtk_smi_common_gen1 = internal constant { %struct.mtk_smi_common_plat, [16 x i8] } zeroinitializer, align 32
@mtk_smi_common_gen2 = internal constant { %struct.mtk_smi_common_plat, [16 x i8] } { %struct.mtk_smi_common_plat { i32 1, i8 0, i32 0, ptr null }, [16 x i8] zeroinitializer }, align 32
@mtk_smi_common_mt6779 = internal constant { %struct.mtk_smi_common_plat, [16 x i8] } { %struct.mtk_smi_common_plat { i32 1, i8 1, i32 21780, ptr null }, [16 x i8] zeroinitializer }, align 32
@mtk_smi_common_mt8183 = internal constant { %struct.mtk_smi_common_plat, [16 x i8] } { %struct.mtk_smi_common_plat { i32 1, i8 1, i32 17428, ptr null }, [16 x i8] zeroinitializer }, align 32
@mtk_smi_common_mt8192 = internal constant { %struct.mtk_smi_common_plat, [16 x i8] } { %struct.mtk_smi_common_plat { i32 1, i8 1, i32 5140, ptr null }, [16 x i8] zeroinitializer }, align 32
@mtk_smi_common_mt8195_vdo = internal constant { %struct.mtk_smi_common_plat, [16 x i8] } { %struct.mtk_smi_common_plat { i32 1, i8 1, i32 17476, ptr @mtk_smi_common_mt8195_init }, [16 x i8] zeroinitializer }, align 32
@mtk_smi_common_mt8195_vpp = internal constant { %struct.mtk_smi_common_plat, [16 x i8] } { %struct.mtk_smi_common_plat { i32 1, i8 1, i32 16404, ptr @mtk_smi_common_mt8195_init }, [16 x i8] zeroinitializer }, align 32
@mtk_smi_sub_common_mt8195 = internal constant { %struct.mtk_smi_common_plat, [16 x i8] } { %struct.mtk_smi_common_plat { i32 2, i8 1, i32 0, ptr null }, [16 x i8] zeroinitializer }, align 32
@mtk_smi_common_mt8195_init = internal constant { [6 x %struct.mtk_smi_reg_pair], [48 x i8] } { [6 x %struct.mtk_smi_reg_pair] [%struct.mtk_smi_reg_pair { i32 256, i32 11 }, %struct.mtk_smi_reg_pair { i32 564, i32 235933200 }, %struct.mtk_smi_reg_pair { i32 568, i32 84281610 }, %struct.mtk_smi_reg_pair { i32 572, i32 84281610 }, %struct.mtk_smi_reg_pair { i32 768, i32 1265 }, %struct.mtk_smi_reg_pair { i32 1092, i32 1 }], [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtk-smi-larb\00", [19 x i8] zeroinitializer }, align 32
@mtk_smi_larb_of_ids = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-smi-larb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_larb_mt2701 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-smi-larb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_larb_mt2712 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6779-smi-larb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_larb_mt6779 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-smi-larb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_larb_mt8167 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-smi-larb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_larb_mt8173 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-smi-larb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_larb_mt8183 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-smi-larb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_larb_mt8192 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-smi-larb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_smi_larb_mt8195 }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@smi_larb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_smi_larb_suspend, ptr @mtk_smi_larb_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_smi_larb_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @mtk_smi_larb_bind, ptr @mtk_smi_larb_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gals\00", [27 x i8] zeroinitializer }, align 32
@mtk_smi_larb_mt2712 = internal constant { %struct.mtk_smi_larb_gen, [44 x i8] } { %struct.mtk_smi_larb_gen { [33 x i32] zeroinitializer, ptr @mtk_smi_larb_config_port_gen2_general, i32 768, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@mtk_smi_larb_mt6779 = internal constant { %struct.mtk_smi_larb_gen, [44 x i8] } { %struct.mtk_smi_larb_gen { [33 x i32] zeroinitializer, ptr @mtk_smi_larb_config_port_gen2_general, i32 14416, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@mtk_smi_larb_mt8167 = internal constant { %struct.mtk_smi_larb_gen, [44 x i8] } { %struct.mtk_smi_larb_gen { [33 x i32] zeroinitializer, ptr @mtk_smi_larb_config_port_mt8167, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@mtk_smi_larb_mt8173 = internal constant { %struct.mtk_smi_larb_gen, [44 x i8] } { %struct.mtk_smi_larb_gen { [33 x i32] zeroinitializer, ptr @mtk_smi_larb_config_port_mt8173, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@mtk_smi_larb_mt8183 = internal constant { %struct.mtk_smi_larb_gen, [44 x i8] } { %struct.mtk_smi_larb_gen { [33 x i32] zeroinitializer, ptr @mtk_smi_larb_config_port_gen2_general, i32 140, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@mtk_smi_larb_mt8192 = internal constant { %struct.mtk_smi_larb_gen, [44 x i8] } { %struct.mtk_smi_larb_gen { [33 x i32] zeroinitializer, ptr @mtk_smi_larb_config_port_gen2_general, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@mtk_smi_larb_mt8195 = internal constant { %struct.mtk_smi_larb_gen, [44 x i8] } { %struct.mtk_smi_larb_gen { [33 x i32] zeroinitializer, ptr @mtk_smi_larb_config_port_gen2_general, i32 0, i32 3, ptr @mtk_smi_larb_mt8195_ostd }, [44 x i8] zeroinitializer }, align 32
@mtk_smi_larb_mt2701 = internal constant { { <{ i32, i32, i32, i32, [29 x i32] }>, ptr, i32, i32, ptr }, [44 x i8] } { { <{ i32, i32, i32, i32, [29 x i32] }>, ptr, i32, i32, ptr } { <{ i32, i32, i32, i32, [29 x i32] }> <{ i32 0, i32 11, i32 21, i32 44, [29 x i32] zeroinitializer }>, ptr @mtk_smi_larb_config_port_gen1, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@mtk_smi_larb_mt8195_ostd = internal constant { <{ <{ i8, i8, i8, i8, i8, i8, [26 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [26 x i8] }>, <{ i8, i8, i8, i8, i8, [27 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [25 x i8] }>, <{ i8, i8, i8, i8, i8, [27 x i8] }>, <{ [8 x i8], [24 x i8] }>, <{ i8, i8, i8, i8, [28 x i8] }>, <{ i8, i8, i8, [29 x i8] }>, <{ i8, i8, i8, [29 x i8] }>, <{ [20 x i8], [12 x i8] }>, <{ [24 x i8], [8 x i8] }>, <{ [10 x i8], [22 x i8] }>, <{ [10 x i8], [22 x i8] }>, <{ [10 x i8], [22 x i8] }>, <{ [15 x i8], [17 x i8] }>, [32 x i8], <{ [16 x i8], [16 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [25 x i8] }>, <{ i8, i8, i8, i8, [28 x i8] }>, [32 x i8], [32 x i8], <{ [10 x i8], [22 x i8] }>, <{ [10 x i8], [22 x i8] }>, <{ i8, i8, [30 x i8] }>, <{ [12 x i8], [20 x i8] }>, <{ [12 x i8], [20 x i8] }>, <{ [12 x i8], [20 x i8] }>, <{ [12 x i8], [20 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [25 x i8] }> }>, [224 x i8] } { <{ <{ i8, i8, i8, i8, i8, i8, [26 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [26 x i8] }>, <{ i8, i8, i8, i8, i8, [27 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [25 x i8] }>, <{ i8, i8, i8, i8, i8, [27 x i8] }>, <{ [8 x i8], [24 x i8] }>, <{ i8, i8, i8, i8, [28 x i8] }>, <{ i8, i8, i8, [29 x i8] }>, <{ i8, i8, i8, [29 x i8] }>, <{ [20 x i8], [12 x i8] }>, <{ [24 x i8], [8 x i8] }>, <{ [10 x i8], [22 x i8] }>, <{ [10 x i8], [22 x i8] }>, <{ [10 x i8], [22 x i8] }>, <{ [15 x i8], [17 x i8] }>, [32 x i8], <{ [16 x i8], [16 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [25 x i8] }>, <{ i8, i8, i8, i8, [28 x i8] }>, [32 x i8], [32 x i8], <{ [10 x i8], [22 x i8] }>, <{ [10 x i8], [22 x i8] }>, <{ i8, i8, [30 x i8] }>, <{ [12 x i8], [20 x i8] }>, <{ [12 x i8], [20 x i8] }>, <{ [12 x i8], [20 x i8] }>, <{ [12 x i8], [20 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [25 x i8] }> }> <{ <{ i8, i8, i8, i8, i8, i8, [26 x i8] }> <{ i8 10, i8 12, i8 34, i8 34, i8 1, i8 10, [26 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [26 x i8] }> <{ i8 10, i8 12, i8 34, i8 34, i8 1, i8 10, [26 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [27 x i8] }> <{ i8 18, i8 18, i8 18, i8 18, i8 10, [27 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [25 x i8] }> <{ i8 18, i8 18, i8 18, i8 18, i8 40, i8 40, i8 10, [25 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [27 x i8] }> <{ i8 6, i8 1, i8 23, i8 6, i8 10, [27 x i8] zeroinitializer }>, <{ [8 x i8], [24 x i8] }> <{ [8 x i8] c"\06\01\17\06\06\01\06\0A", [24 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [28 x i8] }> <{ i8 6, i8 1, i8 6, i8 10, [28 x i8] zeroinitializer }>, <{ i8, i8, i8, [29 x i8] }> <{ i8 12, i8 12, i8 18, [29 x i8] zeroinitializer }>, <{ i8, i8, i8, [29 x i8] }> <{ i8 12, i8 12, i8 18, [29 x i8] zeroinitializer }>, <{ [20 x i8], [12 x i8] }> <{ [20 x i8] c"\0A\08\04\06\01\01\10\18\11\0A\08\04\11\06\02\06\01\11\11\06", [12 x i8] zeroinitializer }>, <{ [24 x i8], [8 x i8] }> <{ [24 x i8] c"\18\08\01\01 \12\18\06\05\10\08\08\10\08\08\18\0C\09\0B\0D\0D\06\10\10", [8 x i8] zeroinitializer }>, <{ [10 x i8], [22 x i8] }> <{ [10 x i8] c"\0E\0E\0E\0E\0E\0E\01\01\01\01", [22 x i8] zeroinitializer }>, <{ [10 x i8], [22 x i8] }> <{ [10 x i8] c"\09\09\05\05\0C\18\02\02\04\02", [22 x i8] zeroinitializer }>, <{ [10 x i8], [22 x i8] }> <{ [10 x i8] c"\02\02\12\12\02\02\02\02\08\01", [22 x i8] zeroinitializer }>, <{ [15 x i8], [17 x i8] }> <{ [15 x i8] c"\12\12\02\02\02\02\16\01\16\01\01\02\02\08\02", [17 x i8] zeroinitializer }>, [32 x i8] zeroinitializer, <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"(\02\02\12\02\12\10\02\02\0A\12\02\0A\16\02\04", [16 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [25 x i8] }> <{ i8 26, i8 14, i8 10, i8 10, i8 12, i8 14, i8 16, [25 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [28 x i8] }> <{ i8 18, i8 6, i8 18, i8 6, [28 x i8] zeroinitializer }>, [32 x i8] c"\01\04\01\01\01\01\01\04\04\01\01\01\04\0A\06\01\01\01\0A\06\01\01\05\03\03\04\01\00\00\00\00\00", [32 x i8] c"\01\04\01\01\01\01\01\04\04\01\01\01\04\0A\06\01\01\01\0A\06\01\01\05\03\03\04\01\00\00\00\00\00", <{ [10 x i8], [22 x i8] }> <{ [10 x i8] c"(\19\0C\01\01\01\01\01\01\04", [22 x i8] zeroinitializer }>, <{ [10 x i8], [22 x i8] }> <{ [10 x i8] c"(\19\0C\01\01\01\01\01\01\04", [22 x i8] zeroinitializer }>, <{ i8, i8, [30 x i8] }> <{ i8 24, i8 1, [30 x i8] zeroinitializer }>, <{ [12 x i8], [20 x i8] }> <{ [12 x i8] c"\01\01\04\01\01\01\01\01\04\01\01\01", [20 x i8] zeroinitializer }>, <{ [12 x i8], [20 x i8] }> <{ [12 x i8] c"\02\02\02(\16\02\02\02\12\16\02\01", [20 x i8] zeroinitializer }>, <{ [12 x i8], [20 x i8] }> <{ [12 x i8] c"\02\02\02(\16\02\02\02\12\16\02\01", [20 x i8] zeroinitializer }>, <{ [12 x i8], [20 x i8] }> <{ [12 x i8] c"\02\02\02(\16\02\02\02\12\16\02\01", [20 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [25 x i8] }> <{ i8 26, i8 14, i8 10, i8 10, i8 12, i8 14, i8 16, [25 x i8] zeroinitializer }> }>, [224 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"smidrivers\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 701, i32 39 }
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"mtk_smi_common_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 691, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"mtk_smi_larb_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 506, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 695, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"mtk_smi_common_of_ids\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 574, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"smi_common_pm_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 685, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"mtk_smi_common_clks\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 108, i32 27 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 621, i32 41 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 108, i32 52 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 108, i32 59 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 108, i32 66 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 108, i32 75 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 381, i32 48 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 395, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 400, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"mtk_smi_common_gen1\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 525, i32 41 }
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c"mtk_smi_common_gen2\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 529, i32 41 }
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"mtk_smi_common_mt6779\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 533, i32 41 }
@___asan_gen_.91 = private unnamed_addr constant [22 x i8] c"mtk_smi_common_mt8183\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 540, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant [22 x i8] c"mtk_smi_common_mt8192\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 547, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant [26 x i8] c"mtk_smi_common_mt8195_vdo\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 554, i32 41 }
@___asan_gen_.100 = private unnamed_addr constant [26 x i8] c"mtk_smi_common_mt8195_vpp\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 562, i32 41 }
@___asan_gen_.103 = private unnamed_addr constant [26 x i8] c"mtk_smi_sub_common_mt8195\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 569, i32 41 }
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"mtk_smi_common_mt8195_init\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 516, i32 38 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 510, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"mtk_smi_larb_of_ids\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 362, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"smi_larb_pm_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 500, i32 32 }
@___asan_gen_.118 = private unnamed_addr constant [27 x i8] c"mtk_smi_larb_component_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 190, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 100, i32 64 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c"mtk_smi_larb_mt2712\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 324, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"mtk_smi_larb_mt6779\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 329, i32 38 }
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c"mtk_smi_larb_mt8167\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 336, i32 38 }
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"mtk_smi_larb_mt8173\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 341, i32 38 }
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c"mtk_smi_larb_mt8183\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 346, i32 38 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"mtk_smi_larb_mt8192\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 352, i32 38 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"mtk_smi_larb_mt8195\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 356, i32 38 }
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c"mtk_smi_larb_mt2701\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 316, i32 38 }
@___asan_gen_.148 = private unnamed_addr constant [25 x i8] c"mtk_smi_larb_mt8195_ostd\00", align 1
@___asan_gen_.149 = private constant [28 x i8] c"../drivers/memory/mtk-smi.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 271, i32 17 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_mtk_smi_exit, ptr @__initcall__kmod_mtk_smi__171_710_mtk_smi_init6, ptr @__ksymtab_mtk_smi_larb_get, ptr @__ksymtab_mtk_smi_larb_put, ptr @mtk_smi_device_link_common._entry, ptr @mtk_smi_device_link_common._entry.12, ptr @mtk_smi_device_link_common._entry_ptr, ptr @mtk_smi_device_link_common._entry_ptr.14, ptr @mtk_smi_exit, ptr @smidrivers, ptr @mtk_smi_common_driver, ptr @mtk_smi_larb_driver, ptr @.str, ptr @mtk_smi_common_of_ids, ptr @smi_common_pm_ops, ptr @mtk_smi_common_clks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @mtk_smi_common_gen1, ptr @mtk_smi_common_gen2, ptr @mtk_smi_common_mt6779, ptr @mtk_smi_common_mt8183, ptr @mtk_smi_common_mt8192, ptr @mtk_smi_common_mt8195_vdo, ptr @mtk_smi_common_mt8195_vpp, ptr @mtk_smi_sub_common_mt8195, ptr @mtk_smi_common_mt8195_init, ptr @.str.15, ptr @mtk_smi_larb_of_ids, ptr @smi_larb_pm_ops, ptr @mtk_smi_larb_component_ops, ptr @.str.16, ptr @mtk_smi_larb_mt2712, ptr @mtk_smi_larb_mt6779, ptr @mtk_smi_larb_mt8167, ptr @mtk_smi_larb_mt8173, ptr @mtk_smi_larb_mt8183, ptr @mtk_smi_larb_mt8192, ptr @mtk_smi_larb_mt8195, ptr @mtk_smi_larb_mt2701, ptr @mtk_smi_larb_mt8195_ostd], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smidrivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_common_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_larb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_common_of_ids to i32), i32 2156, i32 2688, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_common_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_common_clks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_device_link_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_device_link_common._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_common_gen1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_common_gen2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_common_mt6779 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_common_mt8183 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_common_mt8192 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_common_mt8195_vdo to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_common_mt8195_vpp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_sub_common_mt8195 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_common_mt8195_init to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_larb_of_ids to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_larb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_larb_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_larb_mt2712 to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_larb_mt6779 to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_larb_mt8167 to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_larb_mt8173 to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_larb_mt8183 to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_larb_mt8192 to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_larb_mt8195 to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_larb_mt2701 to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_smi_larb_mt8195_ostd to i32), i32 928, i32 1152, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_smi_larb_get(ptr noundef %larbdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %larbdev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.pm_runtime_resume_and_get.exit_crit_edge

entry.pm_runtime_resume_and_get.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_resume_and_get.exit

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %larbdev, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !109
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_resume_and_get.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_resume_and_get.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !110
  br label %pm_runtime_resume_and_get.exit

pm_runtime_resume_and_get.exit:                   ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, %entry.pm_runtime_resume_and_get.exit_crit_edge
  %1 = phi i32 [ 0, %entry.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_smi_larb_put(ptr noundef %larbdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %larbdev, i32 noundef 4) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_smi_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_register_drivers(ptr noundef nonnull @smidrivers, i32 noundef 2, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_smi_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_unregister_drivers(ptr noundef nonnull @smidrivers, i32 noundef 2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_smi_common_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %plat = getelementptr inbounds %struct.mtk_smi, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %plat to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %plat, align 4
  %has_gals = getelementptr inbounds %struct.mtk_smi_common_plat, ptr %call3, i32 0, i32 1
  %2 = ptrtoint ptr %has_gals to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_gals, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.end.if.end15_crit_edge, label %if.then6

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch.selectcmp = icmp eq i32 %5, 2
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %switch.selectcmp94 = icmp eq i32 %5, 1
  %switch.select95 = select i1 %switch.selectcmp94, i32 4, i32 %switch.select
  br label %if.end15

if.end15:                                         ; preds = %if.then6, %if.end.if.end15_crit_edge
  %clk_required.0 = phi i32 [ 2, %if.end.if.end15_crit_edge ], [ %switch.select95, %if.then6 ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end15
  %i.042.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end15 ]
  %arrayidx.i = getelementptr ptr, ptr @mtk_smi_common_clks, i32 %i.042.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.mtk_smi, ptr %call.i, i32 0, i32 2, i32 %i.042.i
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %arrayidx2.i, align 4
  %inc.i = add nuw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %clk_required.0
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %clks3.i = getelementptr inbounds %struct.mtk_smi, ptr %call.i, i32 0, i32 2
  %call.i96 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef %clk_required.0, ptr noundef %clks3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i, label %mtk_smi_dts_clk_init.exit, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mtk_smi_dts_clk_init.exit:                        ; preds = %for.end.i
  %add.ptr.i = getelementptr %struct.clk_bulk_data, ptr %clks3.i, i32 %clk_required.0
  %call16.i = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %dev1, i32 noundef 0, ptr noundef %add.ptr.i) #9
  %clk_num.i = getelementptr inbounds %struct.mtk_smi, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %clk_num.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %clk_required.0, ptr %clk_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not, label %if.end19, label %mtk_smi_dts_clk_init.exit.cleanup_crit_edge

mtk_smi_dts_clk_init.exit.cleanup_crit_edge:      ; preds = %mtk_smi_dts_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %mtk_smi_dts_clk_init.exit
  %10 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %plat, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp22 = icmp eq i32 %13, 0
  %call24 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %14 = getelementptr inbounds %struct.mtk_smi, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call24, ptr %14, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp22, label %if.then23, label %if.else41

if.then23:                                        ; preds = %if.end19
  br i1 %cmp.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.then23
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %clk_async = getelementptr inbounds %struct.mtk_smi, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %clk_async to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call29, ptr %clk_async, align 4
  %cmp.i97 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %call.i98 = tail call i32 @clk_prepare(ptr noundef %call29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool.not.i99 = icmp eq i32 %call.i98, 0
  br i1 %tobool.not.i99, label %if.end.i, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end35
  %call1.i = tail call i32 @clk_enable(ptr noundef %call29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end47_crit_edge, label %if.then3.i

if.end.i.if.end47_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %call29) #9
  br label %cleanup

if.else41:                                        ; preds = %if.end19
  br i1 %cmp.i, label %if.then44, label %if.else41.if.end47_crit_edge

if.else41.if.end47_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.else41.if.end47_crit_edge, %if.end.i.if.end47_crit_edge
  %20 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %plat, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp50 = icmp eq i32 %23, 2
  br i1 %cmp50, label %if.then51, label %if.end47.if.end56_crit_edge

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then51:                                        ; preds = %if.end47
  %smi_common_dev = getelementptr inbounds %struct.mtk_smi, ptr %call.i, i32 0, i32 5
  %call52 = tail call fastcc i32 @mtk_smi_device_link_common(ptr noundef %dev1, ptr noundef %smi_common_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then51.cleanup_crit_edge, label %if.then51.if.end56_crit_edge

if.then51.if.end56_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end56:                                         ; preds = %if.then51.if.end56_crit_edge, %if.end47.if.end56_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev1) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then51.cleanup_crit_edge, %if.then44, %if.then3.i, %if.end35.cleanup_crit_edge, %if.then32, %if.then26, %mtk_smi_dts_clk_init.exit.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then26 ], [ %18, %if.then32 ], [ 0, %if.end56 ], [ %19, %if.then44 ], [ -12, %entry.cleanup_crit_edge ], [ %call16.i, %mtk_smi_dts_clk_init.exit.cleanup_crit_edge ], [ %call52, %if.then51.cleanup_crit_edge ], [ %call.i96, %for.end.i.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i98, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_smi_common_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %plat = getelementptr inbounds %struct.mtk_smi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %smi_common_dev = getelementptr inbounds %struct.mtk_smi, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %smi_common_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smi_common_dev, align 4
  tail call void @device_link_remove(ptr noundef %dev, ptr noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_smi_device_link_common(ptr noundef %dev, ptr nocapture noundef writeonly %com_dev) unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #9
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call1 = call ptr @of_find_device_by_node(ptr noundef nonnull %4) #9
  call void @of_node_put(ptr noundef nonnull %4) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end15, label %if.then3

if.then3:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3
  %call9 = call ptr @device_link_add(ptr noundef %dev, ptr noundef %dev8, i32 noundef 5) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %com_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev8, ptr %com_dev, align 4
  br label %cleanup

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end12, %do.end, %if.then3.cleanup_crit_edge, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -19, %do.end ], [ -22, %do.end15 ], [ -22, %of_parse_phandle.exit.cleanup_crit_edge ], [ -517, %if.then3.cleanup_crit_edge ], [ -22, %of_parse_phandle.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_smi_common_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_num = getelementptr inbounds %struct.mtk_smi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_num, align 4
  %clks = getelementptr inbounds %struct.mtk_smi, ptr %1, i32 0, i32 2
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %clks) #9
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %clks) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_smi_common_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %plat = getelementptr inbounds %struct.mtk_smi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 4
  %init1 = getelementptr inbounds %struct.mtk_smi_common_plat, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init1, align 4
  %bus_sel3 = getelementptr inbounds %struct.mtk_smi_common_plat, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %bus_sel3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_sel3, align 4
  %clk_num = getelementptr inbounds %struct.mtk_smi, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_num, align 4
  %clks = getelementptr inbounds %struct.mtk_smi, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %9, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %9, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_unprepare(i32 noundef %9, ptr noundef %clks) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %10 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %plat, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not = icmp eq i32 %13, 1
  br i1 %cmp.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %for.cond.preheader.do.body_crit_edge, label %land.rhs.lr.ph

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %14 = getelementptr inbounds %struct.mtk_smi, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %land.rhs.lr.ph.do.body_crit_edge, label %for.body

land.rhs.lr.ph.do.body_crit_edge:                 ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body:                                         ; preds = %land.rhs.lr.ph
  %value = getelementptr %struct.mtk_smi_reg_pair, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %14, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #9, !srcloc !112
  %arrayidx.1 = getelementptr %struct.mtk_smi_reg_pair, ptr %5, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool10.not.1 = icmp eq i32 %23, 0
  br i1 %tobool10.not.1, label %for.body.do.body_crit_edge, label %for.body.1

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.1:                                       ; preds = %for.body
  %value.1 = getelementptr %struct.mtk_smi_reg_pair, ptr %5, i32 1, i32 1
  %24 = ptrtoint ptr %value.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value.1, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %14, align 4
  %add.ptr.1 = getelementptr i8, ptr %28, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 %26) #9, !srcloc !112
  %arrayidx.2 = getelementptr %struct.mtk_smi_reg_pair, ptr %5, i32 2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool10.not.2 = icmp eq i32 %30, 0
  br i1 %tobool10.not.2, label %for.body.1.do.body_crit_edge, label %for.body.2

for.body.1.do.body_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.2:                                       ; preds = %for.body.1
  %value.2 = getelementptr %struct.mtk_smi_reg_pair, ptr %5, i32 2, i32 1
  %31 = ptrtoint ptr %value.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %value.2, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %14, align 4
  %add.ptr.2 = getelementptr i8, ptr %35, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 %33) #9, !srcloc !112
  %arrayidx.3 = getelementptr %struct.mtk_smi_reg_pair, ptr %5, i32 3
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool10.not.3 = icmp eq i32 %37, 0
  br i1 %tobool10.not.3, label %for.body.2.do.body_crit_edge, label %for.body.3

for.body.2.do.body_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.3:                                       ; preds = %for.body.2
  %value.3 = getelementptr %struct.mtk_smi_reg_pair, ptr %5, i32 3, i32 1
  %38 = ptrtoint ptr %value.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value.3, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %14, align 4
  %add.ptr.3 = getelementptr i8, ptr %42, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3, i32 %40) #9, !srcloc !112
  %arrayidx.4 = getelementptr %struct.mtk_smi_reg_pair, ptr %5, i32 4
  %43 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool10.not.4 = icmp eq i32 %44, 0
  br i1 %tobool10.not.4, label %for.body.3.do.body_crit_edge, label %for.body.4

for.body.3.do.body_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.4:                                       ; preds = %for.body.3
  %value.4 = getelementptr %struct.mtk_smi_reg_pair, ptr %5, i32 4, i32 1
  %45 = ptrtoint ptr %value.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %value.4, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %14, align 4
  %add.ptr.4 = getelementptr i8, ptr %49, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4, i32 %47) #9, !srcloc !112
  %arrayidx.5 = getelementptr %struct.mtk_smi_reg_pair, ptr %5, i32 5
  %50 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool10.not.5 = icmp eq i32 %51, 0
  br i1 %tobool10.not.5, label %for.body.4.do.body_crit_edge, label %for.body.5

for.body.4.do.body_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.5:                                       ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  %value.5 = getelementptr %struct.mtk_smi_reg_pair, ptr %5, i32 5, i32 1
  %52 = ptrtoint ptr %value.5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %value.5, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %14, align 4
  %add.ptr.5 = getelementptr i8, ptr %56, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5, i32 %54) #9, !srcloc !112
  br label %do.body

do.body:                                          ; preds = %for.body.5, %for.body.4.do.body_crit_edge, %for.body.3.do.body_crit_edge, %for.body.2.do.body_crit_edge, %for.body.1.do.body_crit_edge, %for.body.do.body_crit_edge, %land.rhs.lr.ph.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  tail call void @arm_heavy_mb() #9
  %57 = tail call i32 @llvm.bswap.i32(i32 %7)
  %58 = getelementptr inbounds %struct.mtk_smi, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %add.ptr14 = getelementptr i8, ptr %60, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %57) #9, !srcloc !112
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ 0, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_smi_larb_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 80, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %larb_gen = getelementptr inbounds %struct.mtk_smi_larb, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %larb_gen to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %larb_gen, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.mtk_smi_larb, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end
  %arrayidx2.i = getelementptr %struct.mtk_smi, ptr %call.i, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.2, ptr %arrayidx2.i, align 4
  %arrayidx2.i.1 = getelementptr %struct.mtk_smi, ptr %call.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.3, ptr %arrayidx2.i.1, align 4
  %call.i50 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %arrayidx2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i, label %for.body6.i.preheader, label %for.body.i.preheader.cleanup_crit_edge

for.body.i.preheader.cleanup_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call3 to i32
  br label %cleanup

for.body6.i.preheader:                            ; preds = %for.body.i.preheader
  %arrayidx9.i = getelementptr %struct.mtk_smi, ptr %call.i, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.16, ptr %arrayidx9.i, align 4
  %call16.i = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %dev1, i32 noundef 1, ptr noundef %arrayidx9.i) #9
  %clk_num.i = getelementptr inbounds %struct.mtk_smi, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %clk_num.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %clk_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool11.not = icmp eq i32 %call16.i, 0
  br i1 %tobool11.not, label %if.end13, label %for.body6.i.preheader.cleanup_crit_edge

for.body6.i.preheader.cleanup_crit_edge:          ; preds = %for.body6.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %for.body6.i.preheader
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i, align 4
  %smi_common_dev = getelementptr inbounds %struct.mtk_smi_larb, ptr %call.i, i32 0, i32 2
  %call16 = tail call fastcc i32 @mtk_smi_device_link_common(ptr noundef %dev1, ptr noundef %smi_common_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  tail call void @pm_runtime_enable(ptr noundef %dev1) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call19 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @mtk_smi_larb_component_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %err_pm_disable

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_pm_disable:                                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  %9 = ptrtoint ptr %smi_common_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smi_common_dev, align 4
  tail call void @device_link_remove(ptr noundef %dev1, ptr noundef %10) #9
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %for.body6.i.preheader.cleanup_crit_edge, %if.then6, %for.body.i.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then6 ], [ %call19, %err_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ %call16.i, %for.body6.i.preheader.cleanup_crit_edge ], [ %call16, %if.end13.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ %call.i50, %for.body.i.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_smi_larb_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %smi_common_dev = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %smi_common_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smi_common_dev, align 4
  tail call void @device_link_remove(ptr noundef %dev, ptr noundef %3) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @mtk_smi_larb_component_ops) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_smi_larb_bind(ptr noundef readonly %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_smi_larb_iommu, ptr %data, i32 %i.020
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %3, %dev
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %larbid = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %larbid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.020, ptr %larbid, align 4
  %mmu = getelementptr %struct.mtk_smi_larb_iommu, ptr %data, i32 %i.020, i32 1
  %mmu4 = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %mmu4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mmu, ptr %mmu4, align 4
  %bank = getelementptr %struct.mtk_smi_larb_iommu, ptr %data, i32 %i.020, i32 2
  %bank6 = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %bank6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bank, ptr %bank6, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -19, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mtk_smi_larb_unbind(ptr nocapture noundef %dev, ptr nocapture noundef %master, ptr nocapture noundef %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_smi_larb_config_port_gen1(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %larb_gen1 = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %larb_gen1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %larb_gen1, align 4
  %larbid = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %larbid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %larbid, align 4
  %arrayidx = getelementptr [33 x i32], ptr %3, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, 1
  %arrayidx5 = getelementptr [33 x i32], ptr %3, i32 0, i32 %add
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %sub = sub i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp50 = icmp sgt i32 %sub, 0
  br i1 %cmp50, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %smi_common_dev = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %smi_common_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smi_common_dev, align 4
  %driver_data.i49 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i49 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i49, align 4
  %mmu = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 5
  %14 = getelementptr inbounds %struct.mtk_smi, ptr %13, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %m4u_port_id.051 = phi i32 [ %7, %for.body.lr.ph ], [ %inc30, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmu, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %shl = shl nuw i32 1, %i.053
  %and = and i32 %18, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %and9 = shl i32 %m4u_port_id.051, 2
  %shl10 = and i32 %and9, 28
  %add11 = or i32 %shl10, 3
  %shl12 = shl nuw i32 1, %add11
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  %21 = ashr i32 %m4u_port_id.051, 1
  %22 = add nsw i32 %21, 1472
  %add14 = and i32 %22, -4
  %add.ptr = getelementptr i8, ptr %20, i32 %add14
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !114
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %shl19 = shl nuw i32 15, %shl10
  %neg = xor i32 %shl19, -1
  %and20 = and i32 %24, %neg
  %add23 = or i32 %shl10, 1
  %shl24 = shl i32 3, %add23
  %or = or i32 %shl24, %shl12
  %or25 = or i32 %or, %and20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %or25)
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %14, align 4
  %add.ptr29 = getelementptr i8, ptr %27, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %25) #9, !srcloc !112
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.053, 1
  %inc30 = add i32 %m4u_port_id.051, 1
  %exitcond.not = icmp eq i32 %inc, %sub
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_smi_larb_config_port_gen2_general(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %larb_gen = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %larb_gen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %larb_gen, align 4
  %flags_general1 = getelementptr inbounds %struct.mtk_smi_larb_gen, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags_general1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags_general1, align 4
  %ostd = getelementptr inbounds %struct.mtk_smi_larb_gen, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %ostd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ostd, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %larbid = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %larbid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %larbid, align 4
  %arrayidx = getelementptr [32 x i8], ptr %7, i32 %9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %arrayidx, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %larbid5 = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %larbid5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %larbid5, align 4
  %shl = shl nuw i32 1, %11
  %larb_direct_to_common_mask = getelementptr inbounds %struct.mtk_smi_larb_gen, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %larb_direct_to_common_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %larb_direct_to_common_mask, align 4
  %and = and i32 %shl, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %and8 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end15_crit_edge, label %if.then10

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !114
  %17 = and i32 %16, 268435455
  %18 = or i32 %17, 1342177280
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %18) #9, !srcloc !112
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end.if.end15_crit_edge
  %and16 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %base19 = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %base19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base19, align 4
  %add.ptr20 = getelementptr i8, ptr %22, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 16777216) #9, !srcloc !112
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %tobool22.not = icmp eq ptr %cond, null
  br i1 %tobool22.not, label %if.end21.for.end_crit_edge, label %land.rhs.lr.ph

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end21
  %base27 = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0104 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.body.land.rhs_crit_edge ]
  %arrayidx23 = getelementptr i8, ptr %cond, i32 %i.0104
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool24.not = icmp eq i8 %24, 0
  br i1 %tobool24.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %conv = zext i8 %24 to i32
  %25 = shl nuw i32 %conv, 24
  %26 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base27, align 4
  %and28 = shl i32 %i.0104, 2
  %add = or i32 %and28, 512
  %add.ptr30 = getelementptr i8, ptr %27, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %25) #9, !srcloc !112
  %inc = add nuw nsw i32 %i.0104, 1
  %cmp = icmp ugt i32 %i.0104, 30
  br i1 %cmp, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end21.for.end_crit_edge
  %mmu = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmu, align 4
  %call31 = tail call i32 @_find_next_bit_be(ptr noundef %29, i32 noundef 32, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call31)
  %cmp33105 = icmp slt i32 %call31, 32
  br i1 %cmp33105, label %for.body35.lr.ph, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body35.lr.ph:                                 ; preds = %for.end
  %base37 = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 1
  %bank = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 6
  br label %for.body35

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.body35.lr.ph
  %i.1106 = phi i32 [ %call31, %for.body35.lr.ph ], [ %call62, %for.body35.for.body35_crit_edge ]
  %30 = ptrtoint ptr %base37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base37, align 4
  %mul = shl i32 %i.1106, 2
  %add38 = add i32 %mul, 896
  %add.ptr39 = getelementptr i8, ptr %31, i32 %add38
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #9, !srcloc !114
  %33 = or i32 %32, 16777216
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bank, align 4
  %arrayidx43 = getelementptr i8, ptr %36, i32 %i.1106
  %37 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx43, align 1
  %39 = and i8 %38, 3
  %and45 = zext i8 %39 to i32
  %or53 = mul nuw nsw i32 %and45, 21760
  %or54 = or i32 %or53, %34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %or54)
  %41 = ptrtoint ptr %base37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base37, align 4
  %add.ptr58 = getelementptr i8, ptr %42, i32 %add38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %40) #9, !srcloc !112
  %43 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmu, align 4
  %add61 = add nsw i32 %i.1106, 1
  %call62 = tail call i32 @_find_next_bit_be(ptr noundef %44, i32 noundef 32, i32 noundef %add61) #9
  %cmp33 = icmp slt i32 %call62, 32
  br i1 %cmp33, label %for.body35.for.body35_crit_edge, label %for.body35.cleanup_crit_edge

for.body35.cleanup_crit_edge:                     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35

cleanup:                                          ; preds = %for.body35.cleanup_crit_edge, %for.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_smi_larb_config_port_mt8167(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  tail call void @arm_heavy_mb() #9
  %mmu = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %base = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 4032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #9, !srcloc !112
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_smi_larb_config_port_mt8173(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %mmu = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %base = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #9, !srcloc !112
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_smi_larb_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_num = getelementptr inbounds %struct.mtk_smi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_num, align 4
  %clks = getelementptr inbounds %struct.mtk_smi, ptr %1, i32 0, i32 2
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %clks) #9
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %clks) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_smi_larb_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %larb_gen1 = getelementptr inbounds %struct.mtk_smi_larb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %larb_gen1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %larb_gen1, align 4
  %clk_num = getelementptr inbounds %struct.mtk_smi, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_num, align 4
  %clks = getelementptr inbounds %struct.mtk_smi, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %5, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_bulk_prepare_enable.exit_crit_edge

entry.clk_bulk_prepare_enable.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_bulk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %5, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_unprepare(i32 noundef %5, ptr noundef %clks) #9
  br label %clk_bulk_prepare_enable.exit

clk_bulk_prepare_enable.exit:                     ; preds = %if.then3.i, %entry.clk_bulk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_bulk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_bulk_prepare_enable.exit.cleanup_crit_edge, label %clk_bulk_prepare_enable.exit.if.end_crit_edge

clk_bulk_prepare_enable.exit.if.end_crit_edge:    ; preds = %clk_bulk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

clk_bulk_prepare_enable.exit.cleanup_crit_edge:   ; preds = %clk_bulk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %clk_bulk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %config_port = getelementptr inbounds %struct.mtk_smi_larb_gen, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %config_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config_port, align 4
  tail call void %7(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %clk_bulk_prepare_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.0.i, %clk_bulk_prepare_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__ksymtab_mtk_smi_larb_get, !1, !"__ksymtab_mtk_smi_larb_get", i1 false, i1 false}
!1 = !{!"../drivers/memory/mtk-smi.c", i32 158, i32 1}
!2 = !{ptr @__ksymtab_mtk_smi_larb_put, !3, !"__ksymtab_mtk_smi_larb_put", i1 false, i1 false}
!3 = !{!"../drivers/memory/mtk-smi.c", i32 164, i32 1}
!4 = !{ptr @__initcall__kmod_mtk_smi__171_710_mtk_smi_init6, !5, !"__initcall__kmod_mtk_smi__171_710_mtk_smi_init6", i1 false, i1 false}
!5 = !{!"../drivers/memory/mtk-smi.c", i32 710, i32 1}
!6 = !{ptr @__exitcall_mtk_smi_exit, !7, !"__exitcall_mtk_smi_exit", i1 false, i1 false}
!7 = !{!"../drivers/memory/mtk-smi.c", i32 716, i32 1}
!8 = !{ptr @__UNIQUE_ID_description172, !9, !"__UNIQUE_ID_description172", i1 false, i1 false}
!9 = !{!"../drivers/memory/mtk-smi.c", i32 718, i32 1}
!10 = !{ptr @__UNIQUE_ID_file173, !11, !"__UNIQUE_ID_file173", i1 false, i1 false}
!11 = !{!"../drivers/memory/mtk-smi.c", i32 719, i32 1}
!12 = !{ptr @__UNIQUE_ID_license174, !11, !"__UNIQUE_ID_license174", i1 false, i1 false}
!13 = !{ptr @smidrivers, !14, !"smidrivers", i1 false, i1 false}
!14 = !{!"../drivers/memory/mtk-smi.c", i32 701, i32 39}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/memory/mtk-smi.c", i32 695, i32 11}
!17 = !{ptr @mtk_smi_common_driver, !18, !"mtk_smi_common_driver", i1 false, i1 false}
!18 = !{!"../drivers/memory/mtk-smi.c", i32 691, i32 31}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/memory/mtk-smi.c", i32 621, i32 41}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/memory/mtk-smi.c", i32 108, i32 52}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/memory/mtk-smi.c", i32 108, i32 59}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/memory/mtk-smi.c", i32 108, i32 66}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/memory/mtk-smi.c", i32 108, i32 75}
!29 = !{ptr @mtk_smi_common_clks, !30, !"mtk_smi_common_clks", i1 false, i1 false}
!30 = !{!"../drivers/memory/mtk-smi.c", i32 108, i32 27}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/memory/mtk-smi.c", i32 381, i32 48}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/memory/mtk-smi.c", i32 395, i32 4}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mtk_smi_device_link_common._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @mtk_smi_device_link_common._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/memory/mtk-smi.c", i32 400, i32 3}
!43 = !{ptr @mtk_smi_device_link_common._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mtk_smi_device_link_common._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @mtk_smi_common_of_ids, !46, !"mtk_smi_common_of_ids", i1 false, i1 false}
!46 = !{!"../drivers/memory/mtk-smi.c", i32 574, i32 34}
!47 = !{ptr @mtk_smi_common_gen1, !48, !"mtk_smi_common_gen1", i1 false, i1 false}
!48 = !{!"../drivers/memory/mtk-smi.c", i32 525, i32 41}
!49 = !{ptr @mtk_smi_common_gen2, !50, !"mtk_smi_common_gen2", i1 false, i1 false}
!50 = !{!"../drivers/memory/mtk-smi.c", i32 529, i32 41}
!51 = !{ptr @mtk_smi_common_mt6779, !52, !"mtk_smi_common_mt6779", i1 false, i1 false}
!52 = !{!"../drivers/memory/mtk-smi.c", i32 533, i32 41}
!53 = !{ptr @mtk_smi_common_mt8183, !54, !"mtk_smi_common_mt8183", i1 false, i1 false}
!54 = !{!"../drivers/memory/mtk-smi.c", i32 540, i32 41}
!55 = !{ptr @mtk_smi_common_mt8192, !56, !"mtk_smi_common_mt8192", i1 false, i1 false}
!56 = !{!"../drivers/memory/mtk-smi.c", i32 547, i32 41}
!57 = !{ptr @mtk_smi_common_mt8195_vdo, !58, !"mtk_smi_common_mt8195_vdo", i1 false, i1 false}
!58 = !{!"../drivers/memory/mtk-smi.c", i32 554, i32 41}
!59 = !{ptr @mtk_smi_common_mt8195_init, !60, !"mtk_smi_common_mt8195_init", i1 false, i1 false}
!60 = !{!"../drivers/memory/mtk-smi.c", i32 516, i32 38}
!61 = !{ptr @mtk_smi_common_mt8195_vpp, !62, !"mtk_smi_common_mt8195_vpp", i1 false, i1 false}
!62 = !{!"../drivers/memory/mtk-smi.c", i32 562, i32 41}
!63 = !{ptr @mtk_smi_sub_common_mt8195, !64, !"mtk_smi_sub_common_mt8195", i1 false, i1 false}
!64 = !{!"../drivers/memory/mtk-smi.c", i32 569, i32 41}
!65 = !{ptr @smi_common_pm_ops, !66, !"smi_common_pm_ops", i1 false, i1 false}
!66 = !{!"../drivers/memory/mtk-smi.c", i32 685, i32 32}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/memory/mtk-smi.c", i32 510, i32 11}
!69 = !{ptr @mtk_smi_larb_driver, !70, !"mtk_smi_larb_driver", i1 false, i1 false}
!70 = !{!"../drivers/memory/mtk-smi.c", i32 506, i32 31}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/memory/mtk-smi.c", i32 100, i32 64}
!73 = distinct !{null, !74, !"mtk_smi_larb_clks", i1 false, i1 false}
!74 = !{!"../drivers/memory/mtk-smi.c", i32 100, i32 27}
!75 = !{ptr @mtk_smi_larb_component_ops, !76, !"mtk_smi_larb_component_ops", i1 false, i1 false}
!76 = !{!"../drivers/memory/mtk-smi.c", i32 190, i32 35}
!77 = !{ptr @mtk_smi_larb_of_ids, !78, !"mtk_smi_larb_of_ids", i1 false, i1 false}
!78 = !{!"../drivers/memory/mtk-smi.c", i32 362, i32 34}
!79 = !{ptr @mtk_smi_larb_mt2701, !80, !"mtk_smi_larb_mt2701", i1 false, i1 false}
!80 = !{!"../drivers/memory/mtk-smi.c", i32 316, i32 38}
!81 = !{ptr @mtk_smi_larb_mt2712, !82, !"mtk_smi_larb_mt2712", i1 false, i1 false}
!82 = !{!"../drivers/memory/mtk-smi.c", i32 324, i32 38}
!83 = !{ptr @mtk_smi_larb_mt6779, !84, !"mtk_smi_larb_mt6779", i1 false, i1 false}
!84 = !{!"../drivers/memory/mtk-smi.c", i32 329, i32 38}
!85 = !{ptr @mtk_smi_larb_mt8167, !86, !"mtk_smi_larb_mt8167", i1 false, i1 false}
!86 = !{!"../drivers/memory/mtk-smi.c", i32 336, i32 38}
!87 = !{ptr @mtk_smi_larb_mt8173, !88, !"mtk_smi_larb_mt8173", i1 false, i1 false}
!88 = !{!"../drivers/memory/mtk-smi.c", i32 341, i32 38}
!89 = !{ptr @mtk_smi_larb_mt8183, !90, !"mtk_smi_larb_mt8183", i1 false, i1 false}
!90 = !{!"../drivers/memory/mtk-smi.c", i32 346, i32 38}
!91 = !{ptr @mtk_smi_larb_mt8192, !92, !"mtk_smi_larb_mt8192", i1 false, i1 false}
!92 = !{!"../drivers/memory/mtk-smi.c", i32 352, i32 38}
!93 = !{ptr @mtk_smi_larb_mt8195, !94, !"mtk_smi_larb_mt8195", i1 false, i1 false}
!94 = !{!"../drivers/memory/mtk-smi.c", i32 356, i32 38}
!95 = !{ptr @mtk_smi_larb_mt8195_ostd, !96, !"mtk_smi_larb_mt8195_ostd", i1 false, i1 false}
!96 = !{!"../drivers/memory/mtk-smi.c", i32 271, i32 17}
!97 = !{ptr @smi_larb_pm_ops, !98, !"smi_larb_pm_ops", i1 false, i1 false}
!98 = !{!"../drivers/memory/mtk-smi.c", i32 500, i32 32}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i64 2148259767}
!109 = !{i64 744590, i64 744615, i64 744637, i64 744653, i64 744665, i64 744685, i64 744709, i64 744725, i64 744737}
!110 = !{i64 2148259955}
!111 = !{i8 0, i8 2}
!112 = !{i64 4826945}
!113 = !{i64 2152606367}
!114 = !{i64 4827363}
!115 = !{i64 2152590002}
!116 = !{i64 2152590465}
!117 = !{i64 2152594777}
!118 = !{i64 2152590929}
!119 = !{i64 2152591354}
