; ModuleID = '/llk/IR_all_yes/drivers/soc/mediatek/mtk-mmsys.c_pt.bc'
source_filename = "../drivers/soc/mediatek/mtk-mmsys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mtk_mmsys_ddp_connect\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_mmsys_ddp_connect\09\09\09\09"
module asm "\09.long\09__crc_mtk_mmsys_ddp_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mmsys_ddp_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mmsys_ddp_connect\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mmsys_ddp_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_mmsys_ddp_disconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_mmsys_ddp_disconnect\09\09\09\09"
module asm "\09.long\09__crc_mtk_mmsys_ddp_disconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mmsys_ddp_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mmsys_ddp_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mmsys_ddp_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.mtk_mmsys_driver_data = type { ptr, ptr, i32 }
%struct.mtk_mmsys_routes = type { i32, i32, i32, i32, i32 }
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
%struct.mtk_mmsys = type { ptr, ptr, %struct.spinlock, %struct.reset_controller_dev }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_mtk_mmsys_ddp_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mmsys_ddp_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mmsys_ddp_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mmsys_ddp_connect to i32), ptr @__kstrtab_mtk_mmsys_ddp_connect, ptr @__kstrtabns_mtk_mmsys_ddp_connect }, section "___ksymtab_gpl+mtk_mmsys_ddp_connect", align 4
@__kstrtab_mtk_mmsys_ddp_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mmsys_ddp_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mmsys_ddp_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mmsys_ddp_disconnect to i32), ptr @__kstrtab_mtk_mmsys_ddp_disconnect, ptr @__kstrtabns_mtk_mmsys_ddp_disconnect }, section "___ksymtab_gpl+mtk_mmsys_ddp_disconnect", align 4
@__initcall__kmod_mtk_mmsys__170_264_mtk_mmsys_drv_init6 = internal global ptr @mtk_mmsys_drv_init, section ".initcall6.init", align 4
@mtk_mmsys_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_mmsys_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_mtk_mmsys, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mtk-mmsys\00", [22 x i8] zeroinitializer }, align 32
@of_match_mtk_mmsys = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6779-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6779_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6797-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6797_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8167_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8365-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8365_mmsys_driver_data }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@mtk_mmsys_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to ioremap mmsys registers: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_mmsys_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/soc/mediatek/mtk-mmsys.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_mmsys_probe._entry_ptr = internal global ptr @mtk_mmsys_probe._entry, section ".printk_index", align 4
@mtk_mmsys_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&mmsys->lock\00", [19 x i8] zeroinitializer }, align 32
@mtk_mmsys_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @mtk_mmsys_reset, ptr @mtk_mmsys_reset_assert, ptr @mtk_mmsys_reset_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@mtk_mmsys_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Couldn't register mmsys reset controller: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@mtk_mmsys_probe._entry_ptr.9 = internal global ptr @mtk_mmsys_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek-drm\00", [19 x i8] zeroinitializer }, align 32
@mt2701_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [20 x i8] } { %struct.mtk_mmsys_driver_data { ptr @.str.11, ptr @mmsys_default_routing_table, i32 41 }, [20 x i8] zeroinitializer }, align 32
@mt2712_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [20 x i8] } { %struct.mtk_mmsys_driver_data { ptr @.str.12, ptr @mmsys_default_routing_table, i32 41 }, [20 x i8] zeroinitializer }, align 32
@mt6779_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [20 x i8] } { %struct.mtk_mmsys_driver_data { ptr @.str.13, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt6797_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [20 x i8] } { %struct.mtk_mmsys_driver_data { ptr @.str.14, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8167_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [20 x i8] } { %struct.mtk_mmsys_driver_data { ptr @.str.15, ptr @mt8167_mmsys_routing_table, i32 5 }, [20 x i8] zeroinitializer }, align 32
@mt8173_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [20 x i8] } { %struct.mtk_mmsys_driver_data { ptr @.str.16, ptr @mmsys_default_routing_table, i32 41 }, [20 x i8] zeroinitializer }, align 32
@mt8183_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [20 x i8] } { %struct.mtk_mmsys_driver_data { ptr @.str.17, ptr @mmsys_mt8183_routing_table, i32 7 }, [20 x i8] zeroinitializer }, align 32
@mt8192_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [20 x i8] } { %struct.mtk_mmsys_driver_data { ptr @.str.18, ptr @mmsys_mt8192_routing_table, i32 10 }, [20 x i8] zeroinitializer }, align 32
@mt8365_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [20 x i8] } { %struct.mtk_mmsys_driver_data { ptr @.str.19, ptr @mt8365_mmsys_routing_table, i32 7 }, [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-mt2701-mm\00", [18 x i8] zeroinitializer }, align 32
@mmsys_default_routing_table = internal constant { [41 x %struct.mtk_mmsys_routes], [204 x i8] } { [41 x %struct.mtk_mmsys_routes] [%struct.mtk_mmsys_routes { i32 2, i32 9, i32 76, i32 15, i32 8 }, %struct.mtk_mmsys_routes { i32 2, i32 9, i32 80, i32 1, i32 0 }, %struct.mtk_mmsys_routes { i32 2, i32 7, i32 76, i32 15, i32 2 }, %struct.mtk_mmsys_routes { i32 2, i32 7, i32 80, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 2, i32 7, i32 100, i32 1, i32 0 }, %struct.mtk_mmsys_routes { i32 13, i32 26, i32 76, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 14, i32 25, i32 72, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 15, i32 26, i32 72, i32 65536, i32 65536 }, %struct.mtk_mmsys_routes { i32 16, i32 4, i32 64, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 16, i32 4, i32 132, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 16, i32 25, i32 48, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 20, i32 5, i32 68, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 20, i32 5, i32 136, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 25, i32 7, i32 196, i32 7, i32 2 }, %struct.mtk_mmsys_routes { i32 25, i32 8, i32 196, i32 7, i32 3 }, %struct.mtk_mmsys_routes { i32 25, i32 10, i32 196, i32 7, i32 1 }, %struct.mtk_mmsys_routes { i32 25, i32 11, i32 196, i32 7, i32 4 }, %struct.mtk_mmsys_routes { i32 25, i32 12, i32 196, i32 7, i32 5 }, %struct.mtk_mmsys_routes { i32 26, i32 7, i32 200, i32 7, i32 2 }, %struct.mtk_mmsys_routes { i32 26, i32 7, i32 172, i32 3, i32 1 }, %struct.mtk_mmsys_routes { i32 26, i32 8, i32 200, i32 7, i32 3 }, %struct.mtk_mmsys_routes { i32 26, i32 8, i32 172, i32 768, i32 256 }, %struct.mtk_mmsys_routes { i32 26, i32 9, i32 164, i32 7, i32 1 }, %struct.mtk_mmsys_routes { i32 26, i32 10, i32 200, i32 7, i32 1 }, %struct.mtk_mmsys_routes { i32 26, i32 10, i32 168, i32 7, i32 1 }, %struct.mtk_mmsys_routes { i32 26, i32 11, i32 200, i32 7, i32 4 }, %struct.mtk_mmsys_routes { i32 26, i32 11, i32 164, i32 458752, i32 65536 }, %struct.mtk_mmsys_routes { i32 26, i32 12, i32 200, i32 7, i32 5 }, %struct.mtk_mmsys_routes { i32 26, i32 12, i32 168, i32 458752, i32 65536 }, %struct.mtk_mmsys_routes { i32 27, i32 7, i32 184, i32 7, i32 2 }, %struct.mtk_mmsys_routes { i32 27, i32 7, i32 172, i32 3, i32 3 }, %struct.mtk_mmsys_routes { i32 27, i32 8, i32 184, i32 7, i32 3 }, %struct.mtk_mmsys_routes { i32 27, i32 8, i32 172, i32 768, i32 768 }, %struct.mtk_mmsys_routes { i32 27, i32 9, i32 164, i32 7, i32 4 }, %struct.mtk_mmsys_routes { i32 27, i32 10, i32 184, i32 7, i32 1 }, %struct.mtk_mmsys_routes { i32 27, i32 10, i32 168, i32 7, i32 4 }, %struct.mtk_mmsys_routes { i32 27, i32 11, i32 184, i32 7, i32 4 }, %struct.mtk_mmsys_routes { i32 27, i32 11, i32 164, i32 458752, i32 262144 }, %struct.mtk_mmsys_routes { i32 27, i32 12, i32 184, i32 7, i32 5 }, %struct.mtk_mmsys_routes { i32 27, i32 12, i32 168, i32 458752, i32 262144 }, %struct.mtk_mmsys_routes { i32 29, i32 9, i32 80, i32 1, i32 1 }], [204 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-mt2712-mm\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-mt6779-mm\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-mt6797-mm\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-mt8167-mm\00", [18 x i8] zeroinitializer }, align 32
@mt8167_mmsys_routing_table = internal constant { [5 x %struct.mtk_mmsys_routes], [60 x i8] } { [5 x %struct.mtk_mmsys_routes] [%struct.mtk_mmsys_routes { i32 16, i32 4, i32 48, i32 1, i32 0 }, %struct.mtk_mmsys_routes { i32 6, i32 25, i32 56, i32 1, i32 0 }, %struct.mtk_mmsys_routes { i32 16, i32 4, i32 88, i32 1, i32 0 }, %struct.mtk_mmsys_routes { i32 25, i32 9, i32 100, i32 1, i32 0 }, %struct.mtk_mmsys_routes { i32 25, i32 9, i32 108, i32 2, i32 0 }], [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-mt8173-mm\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-mt8183-mm\00", [18 x i8] zeroinitializer }, align 32
@mmsys_mt8183_routing_table = internal constant { [7 x %struct.mtk_mmsys_routes], [52 x i8] } { [7 x %struct.mtk_mmsys_routes] [%struct.mtk_mmsys_routes { i32 16, i32 17, i32 3840, i32 16, i32 16 }, %struct.mtk_mmsys_routes { i32 17, i32 25, i32 3844, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 18, i32 26, i32 3848, i32 16, i32 16 }, %struct.mtk_mmsys_routes { i32 6, i32 9, i32 3852, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 17, i32 25, i32 3876, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 26, i32 7, i32 3888, i32 2, i32 2 }, %struct.mtk_mmsys_routes { i32 25, i32 4, i32 3920, i32 1, i32 1 }], [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-mt8192-mm\00", [18 x i8] zeroinitializer }, align 32
@mmsys_mt8192_routing_table = internal constant { [10 x %struct.mtk_mmsys_routes], [56 x i8] } { [10 x %struct.mtk_mmsys_routes] [%struct.mtk_mmsys_routes { i32 17, i32 25, i32 3864, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 19, i32 28, i32 3916, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 6, i32 9, i32 3900, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 17, i32 25, i32 3884, i32 3, i32 3 }, %struct.mtk_mmsys_routes { i32 3, i32 0, i32 3896, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 6, i32 9, i32 3904, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 25, i32 4, i32 3888, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 3, i32 0, i32 3892, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 16, i32 17, i32 3844, i32 2, i32 2 }, %struct.mtk_mmsys_routes { i32 17, i32 25, i32 3844, i32 4, i32 4 }], [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-mt8365-mm\00", [18 x i8] zeroinitializer }, align 32
@mt8365_mmsys_routing_table = internal constant { [7 x %struct.mtk_mmsys_routes], [52 x i8] } { [7 x %struct.mtk_mmsys_routes] [%struct.mtk_mmsys_routes { i32 16, i32 25, i32 3900, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 16, i32 25, i32 3924, i32 0, i32 0 }, %struct.mtk_mmsys_routes { i32 25, i32 4, i32 3916, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 4, i32 3, i32 3940, i32 0, i32 0 }, %struct.mtk_mmsys_routes { i32 6, i32 9, i32 3920, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 6, i32 9, i32 3944, i32 1, i32 1 }, %struct.mtk_mmsys_routes { i32 25, i32 4, i32 3936, i32 0, i32 0 }], [52 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"mtk_mmsys_drv\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 256, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 258, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"of_match_mtk_mmsys\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 216, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 182, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 186, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"mtk_mmsys_reset_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 161, i32 39 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 194, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 206, i32 50 }
@___asan_gen_.65 = private unnamed_addr constant [25 x i8] c"mt2701_mmsys_driver_data\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 21, i32 43 }
@___asan_gen_.68 = private unnamed_addr constant [25 x i8] c"mt2712_mmsys_driver_data\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 27, i32 43 }
@___asan_gen_.71 = private unnamed_addr constant [25 x i8] c"mt6779_mmsys_driver_data\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 33, i32 43 }
@___asan_gen_.74 = private unnamed_addr constant [25 x i8] c"mt6797_mmsys_driver_data\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 37, i32 43 }
@___asan_gen_.77 = private unnamed_addr constant [25 x i8] c"mt8167_mmsys_driver_data\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 41, i32 43 }
@___asan_gen_.80 = private unnamed_addr constant [25 x i8] c"mt8173_mmsys_driver_data\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 47, i32 43 }
@___asan_gen_.83 = private unnamed_addr constant [25 x i8] c"mt8183_mmsys_driver_data\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 53, i32 43 }
@___asan_gen_.86 = private unnamed_addr constant [25 x i8] c"mt8192_mmsys_driver_data\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 59, i32 43 }
@___asan_gen_.89 = private unnamed_addr constant [25 x i8] c"mt8365_mmsys_driver_data\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 65, i32 43 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 22, i32 16 }
@___asan_gen_.95 = private unnamed_addr constant [28 x i8] c"mmsys_default_routing_table\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [36 x i8] c"../drivers/soc/mediatek/mtk-mmsys.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 106, i32 38 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 28, i32 16 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 34, i32 16 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 38, i32 16 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 42, i32 16 }
@___asan_gen_.110 = private unnamed_addr constant [27 x i8] c"mt8167_mmsys_routing_table\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [39 x i8] c"../drivers/soc/mediatek/mt8167-mmsys.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 16, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 48, i32 16 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 54, i32 16 }
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"mmsys_mt8183_routing_table\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [39 x i8] c"../drivers/soc/mediatek/mt8183-mmsys.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 28, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 60, i32 16 }
@___asan_gen_.125 = private unnamed_addr constant [27 x i8] c"mmsys_mt8192_routing_table\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [39 x i8] c"../drivers/soc/mediatek/mt8192-mmsys.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 33, i32 38 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [36 x i8] c"../drivers/soc/mediatek/mtk-mmsys.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 66, i32 16 }
@___asan_gen_.131 = private unnamed_addr constant [27 x i8] c"mt8365_mmsys_routing_table\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [39 x i8] c"../drivers/soc/mediatek/mt8365-mmsys.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 22, i32 38 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__initcall__kmod_mtk_mmsys__170_264_mtk_mmsys_drv_init6, ptr @__ksymtab_mtk_mmsys_ddp_connect, ptr @__ksymtab_mtk_mmsys_ddp_disconnect, ptr @mtk_mmsys_probe._entry, ptr @mtk_mmsys_probe._entry.7, ptr @mtk_mmsys_probe._entry_ptr, ptr @mtk_mmsys_probe._entry_ptr.9, ptr @mtk_mmsys_drv, ptr @.str, ptr @of_match_mtk_mmsys, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mtk_mmsys_probe.__key, ptr @.str.6, ptr @mtk_mmsys_reset_ops, ptr @.str.8, ptr @.str.10, ptr @mt2701_mmsys_driver_data, ptr @mt2712_mmsys_driver_data, ptr @mt6779_mmsys_driver_data, ptr @mt6797_mmsys_driver_data, ptr @mt8167_mmsys_driver_data, ptr @mt8173_mmsys_driver_data, ptr @mt8183_mmsys_driver_data, ptr @mt8192_mmsys_driver_data, ptr @mt8365_mmsys_driver_data, ptr @.str.11, ptr @mmsys_default_routing_table, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @mt8167_mmsys_routing_table, ptr @.str.16, ptr @.str.17, ptr @mmsys_mt8183_routing_table, ptr @.str.18, ptr @mmsys_mt8192_routing_table, ptr @.str.19, ptr @mt8365_mmsys_routing_table], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mmsys_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match_mtk_mmsys to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mmsys_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mmsys_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mmsys_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mmsys_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_mmsys_driver_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_mmsys_driver_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6779_mmsys_driver_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_mmsys_driver_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8167_mmsys_driver_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_mmsys_driver_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mmsys_driver_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mmsys_driver_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8365_mmsys_driver_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmsys_default_routing_table to i32), i32 820, i32 1024, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8167_mmsys_routing_table to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmsys_mt8183_routing_table to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmsys_mt8192_routing_table to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8365_mmsys_routing_table to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mmsys_ddp_connect(ptr nocapture noundef readonly %dev, i32 noundef %cur, i32 noundef %next) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.mtk_mmsys, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %routes1 = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %routes1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %routes1, align 4
  %num_routes31 = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %num_routes31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_routes31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp32.not = icmp eq i32 %7, 0
  br i1 %cmp32.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_mmsys_routes, ptr %5, i32 %i.033
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %cur)
  %cmp3 = icmp eq i32 %9, %cur
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %to_comp = getelementptr %struct.mtk_mmsys_routes, ptr %5, i32 %i.033, i32 1
  %10 = ptrtoint ptr %to_comp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %to_comp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %next)
  %cmp5 = icmp eq i32 %11, %next
  br i1 %cmp5, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %addr = getelementptr %struct.mtk_mmsys_routes, ptr %5, i32 %i.033, i32 2
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !86
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %mask = getelementptr %struct.mtk_mmsys_routes, ptr %5, i32 %i.033, i32 3
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask, align 4
  %neg = xor i32 %19, -1
  %and = and i32 %17, %neg
  %val = getelementptr %struct.mtk_mmsys_routes, ptr %5, i32 %i.033, i32 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %or = or i32 %and, %21
  %22 = tail call i32 @llvm.bswap.i32(i32 %or)
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr, align 4
  %add.ptr13 = getelementptr i8, ptr %24, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %22) #6, !srcloc !87
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.033, 1
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %num_routes = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %num_routes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_routes, align 4
  %cmp = icmp ult i32 %inc, %30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mmsys_ddp_disconnect(ptr nocapture noundef readonly %dev, i32 noundef %cur, i32 noundef %next) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.mtk_mmsys, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %routes1 = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %routes1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %routes1, align 4
  %num_routes27 = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %num_routes27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_routes27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp28.not = icmp eq i32 %7, 0
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_mmsys_routes, ptr %5, i32 %i.029
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %cur)
  %cmp3 = icmp eq i32 %9, %cur
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %to_comp = getelementptr %struct.mtk_mmsys_routes, ptr %5, i32 %i.029, i32 1
  %10 = ptrtoint ptr %to_comp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %to_comp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %next)
  %cmp5 = icmp eq i32 %11, %next
  br i1 %cmp5, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %addr = getelementptr %struct.mtk_mmsys_routes, ptr %5, i32 %i.029, i32 2
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !86
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %mask = getelementptr %struct.mtk_mmsys_routes, ptr %5, i32 %i.029, i32 3
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask, align 4
  %neg = xor i32 %19, -1
  %and = and i32 %17, %neg
  %20 = tail call i32 @llvm.bswap.i32(i32 %and)
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  %add.ptr12 = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %20) #6, !srcloc !87
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.029, 1
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %num_routes = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %num_routes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_routes, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mmsys_drv_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_mmsys_drv, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mmsys_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %pdevinfo.i.i76 = alloca %struct.platform_device_info, align 8
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 96, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %do.body9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %1) #9
  br label %cleanup

do.body9:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.mtk_mmsys, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mtk_mmsys_probe.__key, i16 noundef signext 3) #6
  %rcdev = getelementptr inbounds %struct.mtk_mmsys, ptr %call.i, i32 0, i32 3
  %owner = getelementptr inbounds %struct.mtk_mmsys, ptr %call.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %owner, align 4
  %nr_resets = getelementptr inbounds %struct.mtk_mmsys, ptr %call.i, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %nr_resets, align 4
  %4 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mtk_mmsys_reset_ops, ptr %rcdev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %of_node17 = getelementptr inbounds %struct.mtk_mmsys, ptr %call.i, i32 0, i32 3, i32 5
  %7 = ptrtoint ptr %of_node17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %of_node17, align 4
  %call20 = tail call i32 @devm_reset_controller_register(ptr noundef %dev1, ptr noundef %rcdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call20) #9
  br label %cleanup

if.end27:                                         ; preds = %do.body9
  %call29 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %data = getelementptr inbounds %struct.mtk_mmsys, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call29, ptr %data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %call29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call29, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  %12 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 255, i32 48)
  %14 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev1, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %fwnode.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %12, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %11, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -2, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %properties.i.i, align 8
  %21 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  %cmp.i75 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i76) #6
  %23 = getelementptr inbounds i8, ptr %pdevinfo.i.i76, i32 8
  %24 = call ptr @memset(ptr %23, i32 255, i32 48)
  %25 = ptrtoint ptr %pdevinfo.i.i76 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev1, ptr %pdevinfo.i.i76, align 8
  %fwnode.i.i77 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i76, i32 0, i32 1
  %26 = ptrtoint ptr %fwnode.i.i77 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %fwnode.i.i77, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %23, align 8
  %name2.i.i78 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i76, i32 0, i32 3
  %28 = ptrtoint ptr %name2.i.i78 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.10, ptr %name2.i.i78, align 4
  %id3.i.i79 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i76, i32 0, i32 4
  %29 = ptrtoint ptr %id3.i.i79 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -2, ptr %id3.i.i79, align 8
  %res4.i.i80 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i76, i32 0, i32 5
  %dma_mask.i.i81 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i76, i32 0, i32 9
  %30 = ptrtoint ptr %dma_mask.i.i81 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %dma_mask.i.i81, align 8
  %properties.i.i82 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i76, i32 0, i32 10
  %31 = ptrtoint ptr %properties.i.i82 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %properties.i.i82, align 8
  %32 = call ptr @memset(ptr %res4.i.i80, i32 0, i32 16)
  %call.i.i83 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i76) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i76) #6
  %cmp.i84 = icmp ugt ptr %call.i.i83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %if.then40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  call void @platform_device_unregister(ptr noundef %call.i.i) #6
  %33 = ptrtoint ptr %call.i.i83 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end36.cleanup_crit_edge, %if.then34, %do.end25, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %call20, %do.end25 ], [ %22, %if.then34 ], [ %33, %if.then40 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mmsys_reset(ptr noundef %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %rcdev, i32 -52
  %lock.i.i = getelementptr i8, ptr %rcdev, i32 -44
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #6
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %1, i32 320
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #6, !srcloc !86
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %shl.i.i = shl nuw i32 1, %id
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %3, %neg.i.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #6
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %6, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 %4) #6, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #6
  %call3.i.i7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #6
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr6.i.i8 = getelementptr i8, ptr %8, i32 320
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i8) #6, !srcloc !86
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  %or.i.i = or i32 %10, %shl.i.i
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr11.i.i10 = getelementptr i8, ptr %13, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i10, i32 %11) #6, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i7) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mmsys_reset_assert(ptr noundef %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rcdev, i32 -52
  %lock.i = getelementptr i8, ptr %rcdev, i32 -44
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %1, i32 320
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #6, !srcloc !86
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %shl.i = shl nuw i32 1, %id
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %3, %neg.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %6, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %4) #6, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mmsys_reset_deassert(ptr noundef %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rcdev, i32 -52
  %lock.i = getelementptr i8, ptr %rcdev, i32 -44
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %1, i32 320
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #6, !srcloc !86
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %shl.i = shl nuw i32 1, %id
  %or.i = or i32 %3, %shl.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %6, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %4) #6, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__ksymtab_mtk_mmsys_ddp_connect, !1, !"__ksymtab_mtk_mmsys_ddp_connect", i1 false, i1 false}
!1 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 95, i32 1}
!2 = !{ptr @__ksymtab_mtk_mmsys_ddp_disconnect, !3, !"__ksymtab_mtk_mmsys_ddp_disconnect", i1 false, i1 false}
!3 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 113, i32 1}
!4 = !{ptr @__initcall__kmod_mtk_mmsys__170_264_mtk_mmsys_drv_init6, !5, !"__initcall__kmod_mtk_mmsys__170_264_mtk_mmsys_drv_init6", i1 false, i1 false}
!5 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 264, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 258, i32 11}
!8 = !{ptr @mtk_mmsys_drv, !9, !"mtk_mmsys_drv", i1 false, i1 false}
!9 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 256, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 182, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mtk_mmsys_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @mtk_mmsys_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @mtk_mmsys_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 186, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 194, i32 3}
!23 = !{ptr @mtk_mmsys_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mtk_mmsys_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 206, i32 50}
!27 = !{ptr @mtk_mmsys_reset_ops, !28, !"mtk_mmsys_reset_ops", i1 false, i1 false}
!28 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 161, i32 39}
!29 = !{ptr @of_match_mtk_mmsys, !30, !"of_match_mtk_mmsys", i1 false, i1 false}
!30 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 216, i32 34}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 22, i32 16}
!33 = !{ptr @mt2701_mmsys_driver_data, !34, !"mt2701_mmsys_driver_data", i1 false, i1 false}
!34 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 21, i32 43}
!35 = !{ptr @mmsys_default_routing_table, !36, !"mmsys_default_routing_table", i1 false, i1 false}
!36 = !{!"../drivers/soc/mediatek/mtk-mmsys.h", i32 106, i32 38}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 28, i32 16}
!39 = !{ptr @mt2712_mmsys_driver_data, !40, !"mt2712_mmsys_driver_data", i1 false, i1 false}
!40 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 27, i32 43}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 34, i32 16}
!43 = !{ptr @mt6779_mmsys_driver_data, !44, !"mt6779_mmsys_driver_data", i1 false, i1 false}
!44 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 33, i32 43}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 38, i32 16}
!47 = !{ptr @mt6797_mmsys_driver_data, !48, !"mt6797_mmsys_driver_data", i1 false, i1 false}
!48 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 37, i32 43}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 42, i32 16}
!51 = !{ptr @mt8167_mmsys_driver_data, !52, !"mt8167_mmsys_driver_data", i1 false, i1 false}
!52 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 41, i32 43}
!53 = !{ptr @mt8167_mmsys_routing_table, !54, !"mt8167_mmsys_routing_table", i1 false, i1 false}
!54 = !{!"../drivers/soc/mediatek/mt8167-mmsys.h", i32 16, i32 38}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 48, i32 16}
!57 = !{ptr @mt8173_mmsys_driver_data, !58, !"mt8173_mmsys_driver_data", i1 false, i1 false}
!58 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 47, i32 43}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 54, i32 16}
!61 = !{ptr @mt8183_mmsys_driver_data, !62, !"mt8183_mmsys_driver_data", i1 false, i1 false}
!62 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 53, i32 43}
!63 = !{ptr @mmsys_mt8183_routing_table, !64, !"mmsys_mt8183_routing_table", i1 false, i1 false}
!64 = !{!"../drivers/soc/mediatek/mt8183-mmsys.h", i32 28, i32 38}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 60, i32 16}
!67 = !{ptr @mt8192_mmsys_driver_data, !68, !"mt8192_mmsys_driver_data", i1 false, i1 false}
!68 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 59, i32 43}
!69 = !{ptr @mmsys_mt8192_routing_table, !70, !"mmsys_mt8192_routing_table", i1 false, i1 false}
!70 = !{!"../drivers/soc/mediatek/mt8192-mmsys.h", i32 33, i32 38}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 66, i32 16}
!73 = !{ptr @mt8365_mmsys_driver_data, !74, !"mt8365_mmsys_driver_data", i1 false, i1 false}
!74 = !{!"../drivers/soc/mediatek/mtk-mmsys.c", i32 65, i32 43}
!75 = !{ptr @mt8365_mmsys_routing_table, !76, !"mt8365_mmsys_routing_table", i1 false, i1 false}
!76 = !{!"../drivers/soc/mediatek/mt8365-mmsys.h", i32 22, i32 38}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 4783871}
!87 = !{i64 4783453}
