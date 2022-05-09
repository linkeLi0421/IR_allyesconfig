; ModuleID = '/llk/IR_all_yes/drivers/soc/mediatek/mtk-pmic-wrap.c_pt.bc'
source_filename = "../drivers/soc/mediatek/mtk-pmic-wrap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pwrap_slv_type = type { ptr, i32, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pmic_wrapper_type = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.pmic_wrapper = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_mtk_pmic_wrap__196_2284_pwrap_drv_init6 = internal global ptr @pwrap_drv_init, section ".initcall6.init", align 4
@pwrap_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pwrap_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pwrap_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pwrap_drv_exit = internal global ptr @pwrap_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author197 = internal constant [40 x i8] c"mtk_pmic_wrap.author=Flora Fu, MediaTek\00", section ".modinfo", align 1
@__UNIQUE_ID_description198 = internal constant [62 x i8] c"mtk_pmic_wrap.description=MediaTek MT8135 PMIC Wrapper Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file199 = internal constant [54 x i8] c"mtk_pmic_wrap.file=drivers/soc/mediatek/mtk-pmic-wrap\00", section ".modinfo", align 1
@__UNIQUE_ID_license200 = internal constant [29 x i8] c"mtk_pmic_wrap.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt-pmic-pwrap\00", [18 x i8] zeroinitializer }, align 32
@of_pwrap_match_tbl = internal constant { [12 x %struct.of_device_id], [592 x i8] } { [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-pwrap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwrap_mt2701 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6765-pwrap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwrap_mt6765 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6779-pwrap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwrap_mt6779 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6797-pwrap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwrap_mt6797 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6873-pwrap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwrap_mt6873 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-pwrap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwrap_mt7622 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8135-pwrap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwrap_mt8135 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-pwrap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwrap_mt8173 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-pwrap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwrap_mt8183 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-pwrap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwrap_mt8195 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8516-pwrap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwrap_mt8516 }, %struct.of_device_id zeroinitializer], [592 x i8] zeroinitializer }, align 32
@of_slave_match_tbl = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6323\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmic_mt6323 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6351\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmic_mt6351 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6357\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmic_mt6357 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6358\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmic_mt6358 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6359\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmic_mt6359 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6380-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmic_mt6380 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6397\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmic_mt6397 }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@pwrap_probe.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 2, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_pmic_wrap\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwrap_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/soc/mediatek/mtk-pmic-wrap.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"slave pmic should be defined in dts\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwrap\00", [26 x i8] zeroinitializer }, align 32
@pwrap_probe.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 2, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot get pwrap reset: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwrap-bridge\00", [19 x i8] zeroinitializer }, align 32
@pwrap_probe.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 2, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot get pwrap-bridge reset: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@pwrap_probe.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 2, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get clock: %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wrap\00", [27 x i8] zeroinitializer }, align 32
@pwrap_probe.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 2, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pwrap_probe.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 2, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init failed with %d\0A\00", [43 x i8] zeroinitializer }, align 32
@pwrap_probe.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 2, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"initialization isn't finished\0A\00", [33 x i8] zeroinitializer }, align 32
@pwrap_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"mtk_pmic_wrap:2253:(wrp->slave->regmap)->lock\00", [50 x i8] zeroinitializer }, align 32
@pwrap_probe.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 2, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to create child devices at %pOF\0A\00", [56 x i8] zeroinitializer }, align 32
@pmic_mt6323 = internal constant { %struct.pwrap_slv_type, [40 x i8] } { %struct.pwrap_slv_type { ptr @mt6323_regs, i32 0, ptr @pwrap_regmap_config16, i32 7, ptr @pwrap_read16, ptr @pwrap_write16 }, [40 x i8] zeroinitializer }, align 32
@pmic_mt6351 = internal constant { %struct.pwrap_slv_type, [40 x i8] } { %struct.pwrap_slv_type { ptr @mt6351_regs, i32 1, ptr @pwrap_regmap_config16, i32 0, ptr @pwrap_read16, ptr @pwrap_write16 }, [40 x i8] zeroinitializer }, align 32
@pmic_mt6357 = internal constant { %struct.pwrap_slv_type, [40 x i8] } { %struct.pwrap_slv_type { ptr @mt6357_regs, i32 2, ptr @pwrap_regmap_config16, i32 0, ptr @pwrap_read16, ptr @pwrap_write16 }, [40 x i8] zeroinitializer }, align 32
@pmic_mt6358 = internal constant { %struct.pwrap_slv_type, [40 x i8] } { %struct.pwrap_slv_type { ptr @mt6358_regs, i32 3, ptr @pwrap_regmap_config16, i32 3, ptr @pwrap_read16, ptr @pwrap_write16 }, [40 x i8] zeroinitializer }, align 32
@pmic_mt6359 = internal constant { %struct.pwrap_slv_type, [40 x i8] } { %struct.pwrap_slv_type { ptr @mt6359_regs, i32 4, ptr @pwrap_regmap_config16, i32 2, ptr @pwrap_read16, ptr @pwrap_write16 }, [40 x i8] zeroinitializer }, align 32
@pmic_mt6380 = internal constant { %struct.pwrap_slv_type, [40 x i8] } { %struct.pwrap_slv_type { ptr null, i32 5, ptr @pwrap_regmap_config32, i32 0, ptr @pwrap_read32, ptr @pwrap_write32 }, [40 x i8] zeroinitializer }, align 32
@pmic_mt6397 = internal constant { %struct.pwrap_slv_type, [40 x i8] } { %struct.pwrap_slv_type { ptr @mt6397_regs, i32 6, ptr @pwrap_regmap_config16, i32 7, ptr @pwrap_read16, ptr @pwrap_write16 }, [40 x i8] zeroinitializer }, align 32
@mt6323_regs = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 394, i32 396, i32 398, i32 402, i32 404, i32 406, i32 408, i32 410, i32 414, i32 416, i32 418, i32 412, i32 420], [40 x i8] zeroinitializer }, align 32
@pwrap_regmap_config16 = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 2, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @pwrap_regmap_read, ptr @pwrap_regmap_write, ptr null, i8 0, i32 65535, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mt6351_regs = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 754, i32 756, i32 758, i32 762, i32 764, i32 0, i32 768, i32 770, i32 774, i32 776, i32 778, i32 772, i32 780], [40 x i8] zeroinitializer }, align 32
@mt6357_regs = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 1034, i32 1036, i32 1038, i32 1042, i32 1044, i32 0, i32 1048, i32 1050, i32 1054, i32 1056, i32 1058, i32 1052, i32 1060], [40 x i8] zeroinitializer }, align 32
@mt6358_regs = internal constant { [29 x i32], [44 x i8] } { [29 x i32] [i32 0, i32 1036, i32 1038, i32 1040, i32 1044, i32 0, i32 0, i32 1050, i32 1052, i32 1056, i32 1058, i32 1060, i32 1054, i32 0, i32 48, i32 56, i32 64, i32 152, i32 1032, i32 1034, i32 1074, i32 1076, i32 1078, i32 1080, i32 1082, i32 1084, i32 1086, i32 1096, i32 1098], [44 x i8] zeroinitializer }, align 32
@mt6359_regs = internal constant { [49 x i32], [60 x i8] } { [49 x i32] [i32 0, i32 1036, i32 1038, i32 1040, i32 1044, i32 1046, i32 0, i32 1048, i32 1050, i32 1054, i32 1056, i32 1058, i32 1052, i32 1060, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1098, i32 1042, i32 1034, i32 1064, i32 1066, i32 1068, i32 1070, i32 1072, i32 1074, i32 1076, i32 1078, i32 1080, i32 1082, i32 1084, i32 1086, i32 1088, i32 1090, i32 1092, i32 1094, i32 1096, i32 1096], [60 x i8] zeroinitializer }, align 32
@pwrap_regmap_config32 = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @pwrap_regmap_read, ptr @pwrap_regmap_write, ptr null, i8 0, i32 65535, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@mt6397_regs = internal constant { [57 x i32], [60 x i8] } { [57 x i32] [i32 48128, i32 48130, i32 48138, i32 48140, i32 48142, i32 48144, i32 48146, i32 48152, i32 48154, i32 48160, i32 48162, i32 48164, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48128, i32 48132, i32 48134, i32 48136, i32 48148, i32 48150, i32 48156, i32 48158], [60 x i8] zeroinitializer }, align 32
@pwrap_reset_spislave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 1360, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s fail, ret=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwrap_reset_spislave\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pwrap_reset_spislave._entry_ptr = internal global ptr @pwrap_reset_spislave._entry, section ".printk_index", align 4
@__const.pwrap_init_sidly.dly = private unnamed_addr constant [16 x i8] c"\FF\00\01\00\02\FF\01\01\03\FF\FF\FF\03\FF\02\01", align 1
@pwrap_init_sidly.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 1, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwrap_init_sidly\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[Read Test] pass, SIDLY=%x\0A\00", [36 x i8] zeroinitializer }, align 32
@pwrap_init_sidly._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 1397, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sidly pass range 0x%x not continuous\0A\00", [58 x i8] zeroinitializer }, align 32
@pwrap_init_sidly._entry_ptr = internal global ptr @pwrap_init_sidly._entry, section ".printk_index", align 4
@pwrap_init_dual_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.23, ptr @.str.3, i32 1418, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwrap_init_dual_io\00", [45 x i8] zeroinitializer }, align 32
@pwrap_init_dual_io._entry_ptr = internal global ptr @pwrap_init_dual_io._entry, section ".printk_index", align 4
@pwrap_init_dual_io._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 1430, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Read failed on DIO mode: 0x%04x!=0x%04x\0A\00", [55 x i8] zeroinitializer }, align 32
@pwrap_init_dual_io._entry_ptr.26 = internal global ptr @pwrap_init_dual_io._entry.24, section ".printk_index", align 4
@pwrap_init_cipher._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 1576, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cipher data ready@AP fail, ret=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwrap_init_cipher\00", [46 x i8] zeroinitializer }, align 32
@pwrap_init_cipher._entry_ptr = internal global ptr @pwrap_init_cipher._entry, section ".printk_index", align 4
@pwrap_init_cipher._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 1584, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"timeout waiting for cipher data ready@PMIC\0A\00", [52 x i8] zeroinitializer }, align 32
@pwrap_init_cipher._entry_ptr.31 = internal global ptr @pwrap_init_cipher._entry.29, section ".printk_index", align 4
@pwrap_init_cipher._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.3, i32 1592, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cipher mode idle fail, ret=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@pwrap_init_cipher._entry_ptr.34 = internal global ptr @pwrap_init_cipher._entry.32, section ".printk_index", align 4
@pwrap_init_cipher._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.3, i32 1604, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rdata=0x%04X\0A\00", [18 x i8] zeroinitializer }, align 32
@pwrap_init_cipher._entry_ptr.37 = internal global ptr @pwrap_init_cipher._entry.35, section ".printk_index", align 4
@pwrap_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 1805, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unexpected interrupt int=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwrap_interrupt\00", [16 x i8] zeroinitializer }, align 32
@pwrap_interrupt._entry_ptr = internal global ptr @pwrap_interrupt._entry, section ".printk_index", align 4
@pwrap_interrupt._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 1810, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unexpected interrupt int1=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@pwrap_interrupt._entry_ptr.42 = internal global ptr @pwrap_interrupt._entry.40, section ".printk_index", align 4
@pwrap_mt2701 = internal constant { %struct.pmic_wrapper_type, [56 x i8] } { %struct.pmic_wrapper_type { ptr @mt2701_regs, i32 0, i32 63, i32 2147483643, i32 0, i32 16384, i32 -1, i32 6, ptr @pwrap_mt2701_init_reg_clock, ptr @pwrap_mt2701_init_soc_specific }, [56 x i8] zeroinitializer }, align 32
@pwrap_mt6765 = internal constant { %struct.pmic_wrapper_type, [56 x i8] } { %struct.pmic_wrapper_type { ptr @mt6765_regs, i32 1, i32 261429, i32 -1, i32 0, i32 8192, i32 -1, i32 6, ptr @pwrap_common_init_reg_clock, ptr null }, [56 x i8] zeroinitializer }, align 32
@pwrap_mt6779 = internal constant { %struct.pmic_wrapper_type, [56 x i8] } { %struct.pmic_wrapper_type { ptr @mt6779_regs, i32 2, i32 1031039, i32 -2, i32 0, i32 8192, i32 -1, i32 0, ptr @pwrap_common_init_reg_clock, ptr null }, [56 x i8] zeroinitializer }, align 32
@pwrap_mt6797 = internal constant { %struct.pmic_wrapper_type, [56 x i8] } { %struct.pmic_wrapper_type { ptr @mt6797_regs, i32 3, i32 8191, i32 -58, i32 0, i32 8192, i32 -1, i32 6, ptr @pwrap_common_init_reg_clock, ptr null }, [56 x i8] zeroinitializer }, align 32
@pwrap_mt6873 = internal constant { %struct.pmic_wrapper_type, [56 x i8] } { %struct.pmic_wrapper_type { ptr @mt6873_regs, i32 4, i32 30591, i32 48, i32 0, i32 8192, i32 -1, i32 32, ptr @pwrap_common_init_reg_clock, ptr null }, [56 x i8] zeroinitializer }, align 32
@pwrap_mt7622 = internal constant { %struct.pmic_wrapper_type, [56 x i8] } { %struct.pmic_wrapper_type { ptr @mt7622_regs, i32 5, i32 255, i32 2147483647, i32 0, i32 8192, i32 -1, i32 6, ptr @pwrap_common_init_reg_clock, ptr @pwrap_mt7622_init_soc_specific }, [56 x i8] zeroinitializer }, align 32
@pwrap_mt8135 = internal constant { %struct.pmic_wrapper_type, [56 x i8] } { %struct.pmic_wrapper_type { ptr @mt8135_regs, i32 6, i32 511, i32 2147483645, i32 0, i32 8192, i32 -1, i32 7, ptr @pwrap_common_init_reg_clock, ptr @pwrap_mt8135_init_soc_specific }, [56 x i8] zeroinitializer }, align 32
@pwrap_mt8173 = internal constant { %struct.pmic_wrapper_type, [56 x i8] } { %struct.pmic_wrapper_type { ptr @mt8173_regs, i32 7, i32 63, i32 2147483645, i32 0, i32 8192, i32 -34603073, i32 6, ptr @pwrap_common_init_reg_clock, ptr @pwrap_mt8173_init_soc_specific }, [56 x i8] zeroinitializer }, align 32
@pwrap_mt8183 = internal constant { %struct.pmic_wrapper_type, [56 x i8] } { %struct.pmic_wrapper_type { ptr @mt8183_regs, i32 8, i32 260725, i32 -1, i32 -285736961, i32 8192, i32 -1, i32 24, ptr @pwrap_common_init_reg_clock, ptr @pwrap_mt8183_init_soc_specific }, [56 x i8] zeroinitializer }, align 32
@pwrap_mt8195 = internal global { %struct.pmic_wrapper_type, [56 x i8] } { %struct.pmic_wrapper_type { ptr @mt8195_regs, i32 9, i32 30591, i32 1572864, i32 0, i32 8192, i32 -1, i32 40, ptr @pwrap_common_init_reg_clock, ptr null }, [56 x i8] zeroinitializer }, align 32
@pwrap_mt8516 = internal global { %struct.pmic_wrapper_type, [56 x i8] } { %struct.pmic_wrapper_type { ptr @mt8516_regs, i32 10, i32 255, i32 2147483643, i32 0, i32 8192, i32 -1, i32 4, ptr @pwrap_mt2701_init_reg_clock, ptr null }, [56 x i8] zeroinitializer }, align 32
@mt2701_regs = internal global { [125 x i32], [108 x i8] } { [125 x i32] [i32 0, i32 4, i32 8, i32 12, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60, i32 68, i32 72, i32 76, i32 80, i32 84, i32 88, i32 92, i32 96, i32 100, i32 104, i32 108, i32 112, i32 116, i32 120, i32 124, i32 128, i32 132, i32 136, i32 140, i32 144, i32 148, i32 152, i32 156, i32 160, i32 164, i32 168, i32 172, i32 176, i32 180, i32 184, i32 188, i32 192, i32 196, i32 200, i32 204, i32 208, i32 212, i32 216, i32 220, i32 224, i32 292, i32 296, i32 304, i32 308, i32 312, i32 316, i32 320, i32 0, i32 0, i32 0, i32 0, i32 324, i32 328, i32 332, i32 336, i32 340, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24, i32 28, i32 228, i32 232, i32 236, i32 240, i32 244, i32 248, i32 252, i32 256, i32 260, i32 264, i32 268, i32 272, i32 276, i32 280, i32 284, i32 288, i32 0, i32 300], [108 x i8] zeroinitializer }, align 32
@mt6765_regs = internal global { [106 x i32], [120 x i8] } { [106 x i32] [i32 0, i32 4, i32 8, i32 0, i32 36, i32 40, i32 44, i32 48, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 104, i32 108, i32 0, i32 0, i32 124, i32 128, i32 0, i32 0, i32 140, i32 0, i32 0, i32 0, i32 0, i32 148, i32 0, i32 0, i32 0, i32 0, i32 156, i32 160, i32 3104, i32 3108, i32 3112, i32 180, i32 184, i32 188, i32 192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 232, i32 0, i32 240, i32 244, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 476, i32 480, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32], [120 x i8] zeroinitializer }, align 32
@mt6779_regs = internal global { [138 x i32], [152 x i8] } { [138 x i32] [i32 0, i32 4, i32 8, i32 0, i32 36, i32 40, i32 0, i32 0, i32 0, i32 64, i32 0, i32 0, i32 0, i32 0, i32 104, i32 108, i32 0, i32 0, i32 124, i32 128, i32 0, i32 0, i32 140, i32 144, i32 0, i32 0, i32 0, i32 148, i32 152, i32 0, i32 0, i32 0, i32 156, i32 160, i32 3104, i32 3108, i32 3112, i32 188, i32 192, i32 196, i32 200, i32 0, i32 0, i32 0, i32 0, i32 0, i32 240, i32 0, i32 248, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 48, i32 52, i32 60, i32 0, i32 0, i32 0, i32 0, i32 204, i32 212, i32 216, i32 256], [152 x i8] zeroinitializer }, align 32
@mt6797_regs = internal global { [106 x i32], [120 x i8] } { [106 x i32] [i32 0, i32 4, i32 8, i32 12, i32 24, i32 28, i32 32, i32 36, i32 40, i32 0, i32 0, i32 0, i32 0, i32 0, i32 80, i32 84, i32 0, i32 0, i32 96, i32 100, i32 0, i32 0, i32 112, i32 0, i32 0, i32 0, i32 0, i32 132, i32 0, i32 0, i32 0, i32 0, i32 152, i32 156, i32 160, i32 164, i32 168, i32 192, i32 196, i32 200, i32 204, i32 0, i32 0, i32 0, i32 0, i32 0, i32 244, i32 0, i32 252, i32 256, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 460, i32 468, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16], [120 x i8] zeroinitializer }, align 32
@mt6873_regs = internal global { [63 x i32], [36 x i8] } { [63 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3200, i32 3240, i32 3236, i32 1096, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 992, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3204, i32 3220], [36 x i8] zeroinitializer }, align 32
@mt7622_regs = internal global { [125 x i32], [108 x i8] } { [125 x i32] [i32 0, i32 4, i32 8, i32 12, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 64, i32 68, i32 72, i32 76, i32 80, i32 84, i32 88, i32 92, i32 96, i32 100, i32 104, i32 108, i32 112, i32 116, i32 120, i32 124, i32 128, i32 132, i32 136, i32 140, i32 144, i32 148, i32 152, i32 156, i32 160, i32 164, i32 168, i32 172, i32 176, i32 180, i32 184, i32 188, i32 192, i32 196, i32 200, i32 204, i32 208, i32 212, i32 216, i32 220, i32 224, i32 228, i32 364, i32 368, i32 376, i32 380, i32 384, i32 388, i32 392, i32 48, i32 52, i32 0, i32 0, i32 400, i32 404, i32 0, i32 0, i32 0, i32 56, i32 60, i32 296, i32 300, i32 304, i32 308, i32 312, i32 316, i32 320, i32 324, i32 328, i32 332, i32 336, i32 340, i32 344, i32 348, i32 352, i32 356, i32 396, i32 408, i32 412, i32 416, i32 568, i32 572, i32 576, i32 580, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 20, i32 232, i32 236, i32 240, i32 244, i32 248, i32 252, i32 256, i32 260, i32 264, i32 268, i32 272, i32 276, i32 280, i32 284, i32 288, i32 292, i32 360, i32 372], [108 x i8] zeroinitializer }, align 32
@mt8135_regs = internal global { [105 x i32], [124 x i8] } { [105 x i32] [i32 0, i32 4, i32 8, i32 12, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 60, i32 80, i32 84, i32 88, i32 92, i32 96, i32 100, i32 104, i32 108, i32 112, i32 116, i32 120, i32 124, i32 128, i32 132, i32 136, i32 140, i32 144, i32 148, i32 152, i32 156, i32 160, i32 164, i32 168, i32 172, i32 176, i32 180, i32 184, i32 188, i32 192, i32 196, i32 200, i32 204, i32 208, i32 220, i32 224, i32 228, i32 232, i32 236, i32 240, i32 308, i32 312, i32 324, i32 328, i32 332, i32 348, i32 352, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 52, i32 56, i32 64, i32 68, i32 72, i32 76, i32 212, i32 216, i32 316, i32 320], [124 x i8] zeroinitializer }, align 32
@pwrap_mt8135_init_soc_specific._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 1653, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enable dewrap fail\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pwrap_mt8135_init_soc_specific\00", [33 x i8] zeroinitializer }, align 32
@pwrap_mt8135_init_soc_specific._entry_ptr = internal global ptr @pwrap_mt8135_init_soc_specific._entry, section ".printk_index", align 4
@mt8173_regs = internal global { [125 x i32], [108 x i8] } { [125 x i32] [i32 0, i32 4, i32 8, i32 12, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 64, i32 68, i32 72, i32 76, i32 80, i32 84, i32 88, i32 92, i32 96, i32 100, i32 104, i32 108, i32 112, i32 116, i32 120, i32 124, i32 128, i32 132, i32 136, i32 140, i32 144, i32 148, i32 152, i32 156, i32 160, i32 164, i32 168, i32 172, i32 176, i32 180, i32 184, i32 188, i32 192, i32 196, i32 200, i32 204, i32 208, i32 212, i32 216, i32 220, i32 224, i32 228, i32 300, i32 304, i32 312, i32 316, i32 320, i32 324, i32 328, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 20, i32 232, i32 236, i32 240, i32 244, i32 248, i32 252, i32 256, i32 260, i32 264, i32 268, i32 272, i32 276, i32 280, i32 284, i32 288, i32 292, i32 296, i32 308], [108 x i8] zeroinitializer }, align 32
@pwrap_mt8173_init_soc_specific._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.45, ptr @.str.3, i32 1667, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pwrap_mt8173_init_soc_specific\00", [33 x i8] zeroinitializer }, align 32
@pwrap_mt8173_init_soc_specific._entry_ptr = internal global ptr @pwrap_mt8173_init_soc_specific._entry, section ".printk_index", align 4
@mt8183_regs = internal global { [144 x i32], [128 x i8] } { [144 x i32] [i32 0, i32 4, i32 8, i32 0, i32 24, i32 28, i32 0, i32 0, i32 0, i32 52, i32 0, i32 0, i32 0, i32 0, i32 92, i32 96, i32 0, i32 0, i32 112, i32 116, i32 0, i32 0, i32 128, i32 132, i32 0, i32 0, i32 0, i32 136, i32 140, i32 0, i32 0, i32 0, i32 144, i32 148, i32 3104, i32 3108, i32 3112, i32 176, i32 0, i32 184, i32 188, i32 208, i32 0, i32 0, i32 0, i32 224, i32 228, i32 0, i32 236, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 32, i32 36, i32 40, i32 48, i32 160, i32 164, i32 168, i32 172, i32 192, i32 200, i32 204, i32 244, i32 476, i32 480, i32 484, i32 488, i32 492, i32 496], [128 x i8] zeroinitializer }, align 32
@mt8195_regs = internal global { [137 x i32], [156 x i8] } { [137 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2176, i32 2216, i32 2212, i32 1056, i32 0, i32 1064, i32 1068, i32 0, i32 0, i32 0, i32 0, i32 0, i32 996, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2180, i32 2196, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 76, i32 0, i32 0, i32 0, i32 0, i32 1104, i32 1112, i32 1116], [156 x i8] zeroinitializer }, align 32
@mt8516_regs = internal global { [146 x i32], [152 x i8] } { [146 x i32] [i32 0, i32 4, i32 8, i32 12, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 64, i32 68, i32 72, i32 76, i32 80, i32 84, i32 88, i32 92, i32 96, i32 100, i32 104, i32 108, i32 112, i32 116, i32 120, i32 124, i32 128, i32 132, i32 136, i32 140, i32 144, i32 148, i32 152, i32 156, i32 160, i32 164, i32 168, i32 172, i32 176, i32 180, i32 184, i32 188, i32 192, i32 196, i32 200, i32 204, i32 208, i32 212, i32 216, i32 220, i32 224, i32 228, i32 300, i32 304, i32 312, i32 316, i32 320, i32 324, i32 328, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 360, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 20, i32 232, i32 236, i32 240, i32 244, i32 248, i32 252, i32 256, i32 260, i32 264, i32 268, i32 272, i32 276, i32 280, i32 284, i32 288, i32 292, i32 296, i32 308, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 364, i32 368], [152 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 10]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"pwrap_drv\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2276, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2278, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"of_pwrap_match_tbl\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2072, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"of_slave_match_tbl\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1900, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2125, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2139, i32 59 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2148, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2155, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2164, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2170, i32 40 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2172, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2177, i32 41 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2205, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2216, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2253, i32 16 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2261, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"pmic_mt6323\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1835, i32 36 }
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"pmic_mt6351\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1845, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant [12 x i8] c"pmic_mt6357\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1854, i32 36 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"pmic_mt6358\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1863, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"pmic_mt6359\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1872, i32 36 }
@___asan_gen_.124 = private unnamed_addr constant [12 x i8] c"pmic_mt6380\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1881, i32 36 }
@___asan_gen_.127 = private unnamed_addr constant [12 x i8] c"pmic_mt6397\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1890, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant [12 x i8] c"mt6323_regs\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 150, i32 18 }
@___asan_gen_.133 = private unnamed_addr constant [22 x i8] c"pwrap_regmap_config16\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1817, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"mt6351_regs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 167, i32 18 }
@___asan_gen_.139 = private unnamed_addr constant [12 x i8] c"mt6357_regs\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 182, i32 18 }
@___asan_gen_.142 = private unnamed_addr constant [12 x i8] c"mt6358_regs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 197, i32 18 }
@___asan_gen_.145 = private unnamed_addr constant [12 x i8] c"mt6359_regs\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 225, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant [22 x i8] c"pwrap_regmap_config32\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1826, i32 35 }
@___asan_gen_.151 = private unnamed_addr constant [12 x i8] c"mt6397_regs\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 261, i32 18 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1360, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1390, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1396, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1418, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1428, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1576, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1583, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1592, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1604, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1805, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1810, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [13 x i8] c"pwrap_mt2701\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1931, i32 39 }
@___asan_gen_.238 = private unnamed_addr constant [13 x i8] c"pwrap_mt6765\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1944, i32 39 }
@___asan_gen_.241 = private unnamed_addr constant [13 x i8] c"pwrap_mt6779\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1956, i32 39 }
@___asan_gen_.244 = private unnamed_addr constant [13 x i8] c"pwrap_mt6797\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1969, i32 39 }
@___asan_gen_.247 = private unnamed_addr constant [13 x i8] c"pwrap_mt6873\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1982, i32 39 }
@___asan_gen_.250 = private unnamed_addr constant [13 x i8] c"pwrap_mt7622\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1995, i32 39 }
@___asan_gen_.253 = private unnamed_addr constant [13 x i8] c"pwrap_mt8135\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2008, i32 39 }
@___asan_gen_.256 = private unnamed_addr constant [13 x i8] c"pwrap_mt8173\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2021, i32 39 }
@___asan_gen_.259 = private unnamed_addr constant [13 x i8] c"pwrap_mt8183\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2034, i32 39 }
@___asan_gen_.262 = private unnamed_addr constant [13 x i8] c"pwrap_mt8195\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2047, i32 33 }
@___asan_gen_.265 = private unnamed_addr constant [13 x i8] c"pwrap_mt8516\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2060, i32 33 }
@___asan_gen_.268 = private unnamed_addr constant [12 x i8] c"mt2701_regs\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 445, i32 12 }
@___asan_gen_.271 = private unnamed_addr constant [12 x i8] c"mt6765_regs\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 531, i32 12 }
@___asan_gen_.274 = private unnamed_addr constant [12 x i8] c"mt6779_regs\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 563, i32 12 }
@___asan_gen_.277 = private unnamed_addr constant [12 x i8] c"mt6797_regs\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 602, i32 12 }
@___asan_gen_.280 = private unnamed_addr constant [12 x i8] c"mt6873_regs\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 635, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant [12 x i8] c"mt7622_regs\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 646, i32 12 }
@___asan_gen_.286 = private unnamed_addr constant [12 x i8] c"mt8135_regs\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 758, i32 12 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1653, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [12 x i8] c"mt8173_regs\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 831, i32 12 }
@___asan_gen_.301 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1667, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [12 x i8] c"mt8183_regs\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 913, i32 12 }
@___asan_gen_.310 = private unnamed_addr constant [12 x i8] c"mt8195_regs\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 964, i32 12 }
@___asan_gen_.313 = private unnamed_addr constant [12 x i8] c"mt8516_regs\00", align 1
@___asan_gen_.314 = private constant [40 x i8] c"../drivers/soc/mediatek/mtk-pmic-wrap.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 981, i32 12 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_author197, ptr @__UNIQUE_ID_description198, ptr @__UNIQUE_ID_file199, ptr @__UNIQUE_ID_license200, ptr @__exitcall_pwrap_drv_exit, ptr @__initcall__kmod_mtk_pmic_wrap__196_2284_pwrap_drv_init6, ptr @pwrap_drv_exit, ptr @pwrap_init_cipher._entry, ptr @pwrap_init_cipher._entry.29, ptr @pwrap_init_cipher._entry.32, ptr @pwrap_init_cipher._entry.35, ptr @pwrap_init_cipher._entry_ptr, ptr @pwrap_init_cipher._entry_ptr.31, ptr @pwrap_init_cipher._entry_ptr.34, ptr @pwrap_init_cipher._entry_ptr.37, ptr @pwrap_init_dual_io._entry, ptr @pwrap_init_dual_io._entry.24, ptr @pwrap_init_dual_io._entry_ptr, ptr @pwrap_init_dual_io._entry_ptr.26, ptr @pwrap_init_sidly._entry, ptr @pwrap_init_sidly._entry_ptr, ptr @pwrap_interrupt._entry, ptr @pwrap_interrupt._entry.40, ptr @pwrap_interrupt._entry_ptr, ptr @pwrap_interrupt._entry_ptr.42, ptr @pwrap_mt8135_init_soc_specific._entry, ptr @pwrap_mt8135_init_soc_specific._entry_ptr, ptr @pwrap_mt8173_init_soc_specific._entry, ptr @pwrap_mt8173_init_soc_specific._entry_ptr, ptr @pwrap_reset_spislave._entry, ptr @pwrap_reset_spislave._entry_ptr, ptr @pwrap_drv, ptr @.str, ptr @of_pwrap_match_tbl, ptr @of_slave_match_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @pwrap_probe._key, ptr @.str.14, ptr @.str.15, ptr @pmic_mt6323, ptr @pmic_mt6351, ptr @pmic_mt6357, ptr @pmic_mt6358, ptr @pmic_mt6359, ptr @pmic_mt6380, ptr @pmic_mt6397, ptr @mt6323_regs, ptr @pwrap_regmap_config16, ptr @mt6351_regs, ptr @mt6357_regs, ptr @mt6358_regs, ptr @mt6359_regs, ptr @pwrap_regmap_config32, ptr @mt6397_regs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @pwrap_mt2701, ptr @pwrap_mt6765, ptr @pwrap_mt6779, ptr @pwrap_mt6797, ptr @pwrap_mt6873, ptr @pwrap_mt7622, ptr @pwrap_mt8135, ptr @pwrap_mt8173, ptr @pwrap_mt8183, ptr @pwrap_mt8195, ptr @pwrap_mt8516, ptr @mt2701_regs, ptr @mt6765_regs, ptr @mt6779_regs, ptr @mt6797_regs, ptr @mt6873_regs, ptr @mt7622_regs, ptr @mt8135_regs, ptr @.str.43, ptr @.str.44, ptr @mt8173_regs, ptr @.str.45, ptr @mt8183_regs, ptr @mt8195_regs, ptr @mt8516_regs], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pwrap_match_tbl to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_slave_match_tbl to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mt6323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mt6351 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mt6357 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mt6358 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mt6359 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mt6380 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mt6397 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6323_regs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_regmap_config16 to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6351_regs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6357_regs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_regs to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_regs to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_regmap_config32 to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6397_regs to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_reset_spislave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_init_sidly._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_init_dual_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_init_dual_io._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_init_cipher._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_init_cipher._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_init_cipher._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_init_cipher._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_interrupt._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_mt2701 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_mt6765 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_mt6779 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_mt6797 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_mt6873 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_mt7622 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_mt8135 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_mt8173 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_mt8183 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_mt8195 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_mt8516 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_regs to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6765_regs to i32), i32 424, i32 544, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6779_regs to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_regs to i32), i32 424, i32 544, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6873_regs to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_regs to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8135_regs to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_mt8135_init_soc_specific._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_regs to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_mt8173_init_soc_specific._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_regs to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_regs to i32), i32 548, i32 704, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8516_regs to i32), i32 584, i32 736, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwrap_drv, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pwrap_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwrap_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %child = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %child, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.end

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_match_node(ptr noundef nonnull @of_slave_match_tbl, ptr noundef nonnull %3) #7
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %if.end11

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrap_probe.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrap_probe, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !196

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwrap_probe.__UNIQUE_ID_ddebug188, ptr noundef %dev, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #7
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call18 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %master = getelementptr inbounds %struct.pmic_wrapper, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call18, ptr %master, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %slave = getelementptr inbounds %struct.pmic_wrapper, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %slave, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %call.i, align 4
  %call21 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.5) #7
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %call23 = tail call ptr @devm_ioremap_resource(ptr noundef %11, ptr noundef %call21) #7
  %base = getelementptr inbounds %struct.pmic_wrapper, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call23, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master, align 4
  %caps = getelementptr inbounds %struct.pmic_wrapper_type, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caps, align 4
  %and = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end29.if.end57_crit_edge, label %if.then31

if.end29.if.end57_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then31:                                        ; preds = %if.end29
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %19, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rstc = getelementptr inbounds %struct.pmic_wrapper, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %rstc, align 4
  %cmp.i417 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i417, label %if.then36, label %if.then31.if.end57_crit_edge

if.then31.if.end57_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then36:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call.i.i to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrap_probe.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrap_probe, %if.then51)) #7
          to label %cleanup [label %if.then51], !srcloc !196

if.then51:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwrap_probe.__UNIQUE_ID_ddebug189, ptr noundef %23, ptr noundef nonnull @.str.6, i32 noundef %21) #7
  br label %cleanup

if.end57:                                         ; preds = %if.then31.if.end57_crit_edge, %if.end29.if.end57_crit_edge
  %24 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %master, align 4
  %caps59 = getelementptr inbounds %struct.pmic_wrapper_type, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %caps59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %caps59, align 4
  %and60 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %cmp61.not = icmp eq i32 %and60, 0
  br i1 %cmp61.not, label %if.end57.if.end97_crit_edge, label %if.then62

if.end57.if.end97_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then62:                                        ; preds = %if.end57
  %call63 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.7) #7
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %call65 = tail call ptr @devm_ioremap_resource(ptr noundef %29, ptr noundef %call63) #7
  %bridge_base = getelementptr inbounds %struct.pmic_wrapper, ptr %call.i, i32 0, i32 9
  %30 = ptrtoint ptr %bridge_base to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call65, ptr %bridge_base, align 4
  %cmp.i418 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i418, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call65 to i32
  br label %cleanup

if.end71:                                         ; preds = %if.then62
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %call.i.i419 = tail call ptr @__devm_reset_control_get(ptr noundef %33, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rstc_bridge = getelementptr inbounds %struct.pmic_wrapper, ptr %call.i, i32 0, i32 8
  %34 = ptrtoint ptr %rstc_bridge to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i419, ptr %rstc_bridge, align 4
  %cmp.i420 = icmp ugt ptr %call.i.i419, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i420, label %if.then76, label %if.end71.if.end97_crit_edge

if.end71.if.end97_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call.i.i419 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrap_probe.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrap_probe, %if.then91)) #7
          to label %cleanup [label %if.then91], !srcloc !196

if.then91:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwrap_probe.__UNIQUE_ID_ddebug190, ptr noundef %37, ptr noundef nonnull @.str.8, i32 noundef %35) #7
  br label %cleanup

if.end97:                                         ; preds = %if.end71.if.end97_crit_edge, %if.end57.if.end97_crit_edge
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %call99 = tail call ptr @devm_clk_get(ptr noundef %39, ptr noundef nonnull @.str.9) #7
  %clk_spi = getelementptr inbounds %struct.pmic_wrapper, ptr %call.i, i32 0, i32 5
  %40 = ptrtoint ptr %clk_spi to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call99, ptr %clk_spi, align 4
  %cmp.i421 = icmp ugt ptr %call99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i421, label %do.body103, label %if.end124

do.body103:                                       ; preds = %if.end97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrap_probe.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrap_probe, %if.then115)) #7
          to label %do.end121 [label %if.then115], !srcloc !196

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %43 = ptrtoint ptr %clk_spi to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk_spi, align 4
  %45 = ptrtoint ptr %44 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwrap_probe.__UNIQUE_ID_ddebug191, ptr noundef %42, ptr noundef nonnull @.str.10, i32 noundef %45) #7
  br label %do.end121

do.end121:                                        ; preds = %if.then115, %do.body103
  %46 = ptrtoint ptr %clk_spi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk_spi, align 4
  %48 = ptrtoint ptr %47 to i32
  br label %cleanup

if.end124:                                        ; preds = %if.end97
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  %call126 = tail call ptr @devm_clk_get(ptr noundef %50, ptr noundef nonnull @.str.11) #7
  %clk_wrap = getelementptr inbounds %struct.pmic_wrapper, ptr %call.i, i32 0, i32 6
  %51 = ptrtoint ptr %clk_wrap to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call126, ptr %clk_wrap, align 4
  %cmp.i422 = icmp ugt ptr %call126, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i422, label %do.body130, label %if.end151

do.body130:                                       ; preds = %if.end124
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrap_probe.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrap_probe, %if.then142)) #7
          to label %do.end148 [label %if.then142], !srcloc !196

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %54 = ptrtoint ptr %clk_wrap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk_wrap, align 4
  %56 = ptrtoint ptr %55 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwrap_probe.__UNIQUE_ID_ddebug192, ptr noundef %53, ptr noundef nonnull @.str.10, i32 noundef %56) #7
  br label %do.end148

do.end148:                                        ; preds = %if.then142, %do.body130
  %57 = ptrtoint ptr %clk_wrap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk_wrap, align 4
  %59 = ptrtoint ptr %58 to i32
  br label %cleanup

if.end151:                                        ; preds = %if.end124
  %60 = ptrtoint ptr %clk_spi to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk_spi, align 4
  %call.i423 = tail call i32 @clk_prepare(ptr noundef %61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i423)
  %tobool.not.i = icmp eq i32 %call.i423, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end151.cleanup_crit_edge

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end151
  %call1.i = tail call i32 @clk_enable(ptr noundef %61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end156, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %61) #7
  br label %cleanup

if.end156:                                        ; preds = %if.end.i
  %62 = ptrtoint ptr %clk_wrap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk_wrap, align 4
  %call158 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end161, label %if.end156.err_out1_crit_edge

if.end156.err_out1_crit_edge:                     ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out1

if.end161:                                        ; preds = %if.end156
  %64 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %master, align 4
  %caps163 = getelementptr inbounds %struct.pmic_wrapper_type, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %caps163 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %caps163, align 4
  %and164 = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %cmp165.not = icmp eq i32 %and164, 0
  br i1 %cmp165.not, label %if.end161.if.end167_crit_edge, label %if.then166

if.end161.if.end167_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

if.then166:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %70 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %master, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %arrayidx.i = getelementptr i32, ptr %73, i32 57
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %78 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %master, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %arrayidx.i427 = getelementptr i32, ptr %81, i32 58
  %82 = ptrtoint ptr %arrayidx.i427 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i427, align 4
  %add.ptr.i428 = getelementptr i8, ptr %77, i32 %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i428, i32 0) #7, !srcloc !198
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.end161.if.end167_crit_edge
  %84 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base, align 4
  %86 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %master, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %arrayidx.i431 = getelementptr i32, ptr %89, i32 33
  %90 = ptrtoint ptr %arrayidx.i431 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i431, align 4
  %add.ptr.i432 = getelementptr i8, ptr %85, i32 %91
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i432) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool169.not = icmp eq i32 %92, 0
  br i1 %tobool169.not, label %if.then170, label %if.end167.if.end192_crit_edge

if.end167.if.end192_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

if.then170:                                       ; preds = %if.end167
  %call171 = tail call fastcc i32 @pwrap_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.then170.if.end192_crit_edge, label %do.body174

if.then170.if.end192_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

do.body174:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrap_probe.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrap_probe, %if.then186)) #7
          to label %err_out2 [label %if.then186], !srcloc !196

if.then186:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwrap_probe.__UNIQUE_ID_ddebug193, ptr noundef %94, ptr noundef nonnull @.str.12, i32 noundef %call171) #7
  br label %err_out2

if.end192:                                        ; preds = %if.then170.if.end192_crit_edge, %if.end167.if.end192_crit_edge
  %95 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %master, align 4
  %caps194 = getelementptr inbounds %struct.pmic_wrapper_type, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %caps194 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %caps194, align 4
  %and195 = and i32 %98, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %cmp196.not = icmp eq i32 %and195, 0
  %. = select i1 %cmp196.not, i32 2097152, i32 32768
  %99 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base, align 4
  %101 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %96, align 4
  %arrayidx.i435 = getelementptr i32, ptr %102, i32 35
  %103 = ptrtoint ptr %arrayidx.i435 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i435, align 4
  %add.ptr.i436 = getelementptr i8, ptr %100, i32 %104
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i436) #7, !srcloc !199
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %and200 = and i32 %106, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %do.body203, label %if.end220

do.body203:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrap_probe.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrap_probe, %if.then215)) #7
          to label %err_out2 [label %if.then215], !srcloc !196

if.then215:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwrap_probe.__UNIQUE_ID_ddebug194, ptr noundef %108, ptr noundef nonnull @.str.13) #7
  br label %err_out2

if.end220:                                        ; preds = %if.end192
  %109 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %master, align 4
  %caps222 = getelementptr inbounds %struct.pmic_wrapper_type, ptr %110, i32 0, i32 7
  %111 = ptrtoint ptr %caps222 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %caps222, align 4
  %and223 = and i32 %112, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %cmp224.not = icmp eq i32 %and223, 0
  br i1 %cmp224.not, label %if.then225, label %if.end220.if.end226_crit_edge

if.end220.if.end226_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end226

if.then225:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %113 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base, align 4
  %115 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %master, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %arrayidx.i439 = getelementptr i32, ptr %118, i32 48
  %119 = ptrtoint ptr %arrayidx.i439 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i439, align 4
  %add.ptr.i440 = getelementptr i8, ptr %114, i32 %120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i440, i32 251658240) #7, !srcloc !198
  br label %if.end226

if.end226:                                        ; preds = %if.then225, %if.end220.if.end226_crit_edge
  %121 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %master, align 4
  %wdt_src = getelementptr inbounds %struct.pmic_wrapper_type, ptr %122, i32 0, i32 6
  %123 = ptrtoint ptr %wdt_src to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %wdt_src, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #7
  %126 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base, align 4
  %128 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %master, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %arrayidx.i443 = getelementptr i32, ptr %131, i32 49
  %132 = ptrtoint ptr %arrayidx.i443 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx.i443, align 4
  %add.ptr.i444 = getelementptr i8, ptr %127, i32 %133
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i444, i32 %125) #7, !srcloc !198
  %134 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %master, align 4
  %caps229 = getelementptr inbounds %struct.pmic_wrapper_type, ptr %135, i32 0, i32 7
  %136 = ptrtoint ptr %caps229 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %caps229, align 4
  %and230 = and i32 %137, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %cmp231.not = icmp eq i32 %and230, 0
  br i1 %cmp231.not, label %if.end226.if.end235_crit_edge, label %if.then232

if.end226.if.end235_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end235

if.then232:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #9
  %wdt_src234 = getelementptr inbounds %struct.pmic_wrapper_type, ptr %135, i32 0, i32 6
  %138 = ptrtoint ptr %wdt_src234 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %wdt_src234, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #7
  %141 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base, align 4
  %143 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %master, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %arrayidx.i447 = getelementptr i32, ptr %146, i32 137
  %147 = ptrtoint ptr %arrayidx.i447 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.i447, align 4
  %add.ptr.i448 = getelementptr i8, ptr %142, i32 %148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i448, i32 %140) #7, !srcloc !198
  br label %if.end235

if.end235:                                        ; preds = %if.then232, %if.end226.if.end235_crit_edge
  %149 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %master, align 4
  %caps237 = getelementptr inbounds %struct.pmic_wrapper_type, ptr %150, i32 0, i32 7
  %151 = ptrtoint ptr %caps237 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %caps237, align 4
  %and238 = and i32 %152, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238)
  %cmp239.not = icmp eq i32 %and238, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %153 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base, align 4
  %155 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %master, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %arrayidx.i455 = getelementptr i32, ptr %158, i32 46
  %159 = ptrtoint ptr %arrayidx.i455 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx.i455, align 4
  %add.ptr.i456 = getelementptr i8, ptr %154, i32 %160
  br i1 %cmp239.not, label %if.else241, label %if.then240

if.then240:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i456, i32 50331648) #7, !srcloc !198
  br label %if.end242

if.else241:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i456, i32 16777216) #7, !srcloc !198
  br label %if.end242

if.end242:                                        ; preds = %if.else241, %if.then240
  %161 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %master, align 4
  %int_en_all = getelementptr inbounds %struct.pmic_wrapper_type, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %int_en_all to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %int_en_all, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #7
  %166 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %base, align 4
  %168 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %master, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %arrayidx.i459 = getelementptr i32, ptr %171, i32 37
  %172 = ptrtoint ptr %arrayidx.i459 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx.i459, align 4
  %add.ptr.i460 = getelementptr i8, ptr %167, i32 %173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i460, i32 %165) #7, !srcloc !198
  %174 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %master, align 4
  %caps245 = getelementptr inbounds %struct.pmic_wrapper_type, ptr %175, i32 0, i32 7
  %176 = ptrtoint ptr %caps245 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %caps245, align 4
  %and246 = and i32 %177, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %cmp247.not = icmp eq i32 %and246, 0
  br i1 %cmp247.not, label %if.end242.if.end250_crit_edge, label %if.then248

if.end242.if.end250_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250

if.then248:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #9
  %int1_en_all = getelementptr inbounds %struct.pmic_wrapper_type, ptr %175, i32 0, i32 4
  %178 = ptrtoint ptr %int1_en_all to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %int1_en_all, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #7
  %181 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base, align 4
  %183 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %master, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %184, align 4
  %arrayidx.i463 = getelementptr i32, ptr %186, i32 134
  %187 = ptrtoint ptr %arrayidx.i463 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx.i463, align 4
  %add.ptr.i464 = getelementptr i8, ptr %182, i32 %188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i464, i32 %180) #7, !srcloc !198
  br label %if.end250

if.end250:                                        ; preds = %if.then248, %if.end242.if.end250_crit_edge
  %call251 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %189 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %call.i, align 4
  %call.i465 = tail call i32 @devm_request_threaded_irq(ptr noundef %190, i32 noundef %call251, ptr noundef nonnull @pwrap_interrupt, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i465)
  %tobool254.not = icmp eq i32 %call.i465, 0
  br i1 %tobool254.not, label %if.end256, label %if.end250.err_out2_crit_edge

if.end250.err_out2_crit_edge:                     ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out2

if.end256:                                        ; preds = %if.end250
  %191 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %call.i, align 4
  %193 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %slave, align 4
  %regmap = getelementptr inbounds %struct.pwrap_slv_type, ptr %194, i32 0, i32 2
  %195 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %regmap, align 4
  %call260 = tail call ptr @__devm_regmap_init(ptr noundef %192, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef %196, ptr noundef nonnull @pwrap_probe._key, ptr noundef nonnull @.str.14) #7
  %regmap261 = getelementptr inbounds %struct.pmic_wrapper, ptr %call.i, i32 0, i32 2
  %197 = ptrtoint ptr %regmap261 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call260, ptr %regmap261, align 4
  %cmp.i466 = icmp ugt ptr %call260, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i466, label %if.then264, label %if.end267

if.then264:                                       ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #9
  %198 = ptrtoint ptr %call260 to i32
  br label %err_out2

if.end267:                                        ; preds = %if.end256
  %199 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %call.i, align 4
  %call269 = tail call i32 @of_platform_populate(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %200) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.end267.cleanup_crit_edge, label %do.body272

if.end267.cleanup_crit_edge:                      ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body272:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrap_probe.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrap_probe, %if.then284)) #7
          to label %err_out2 [label %if.then284], !srcloc !196

if.then284:                                       ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #9
  %201 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwrap_probe.__UNIQUE_ID_ddebug195, ptr noundef %202, ptr noundef nonnull @.str.15, ptr noundef %1) #7
  br label %err_out2

err_out2:                                         ; preds = %if.then284, %do.body272, %if.then264, %if.end250.err_out2_crit_edge, %if.then215, %do.body203, %if.then186, %do.body174
  %ret.0 = phi i32 [ %call.i465, %if.end250.err_out2_crit_edge ], [ %198, %if.then264 ], [ %call269, %if.then284 ], [ %call171, %if.then186 ], [ -19, %if.then215 ], [ %call171, %do.body174 ], [ -19, %do.body203 ], [ %call269, %do.body272 ]
  %203 = ptrtoint ptr %clk_wrap to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %clk_wrap, align 4
  tail call void @clk_disable(ptr noundef %204) #7
  tail call void @clk_unprepare(ptr noundef %204) #7
  br label %err_out1

err_out1:                                         ; preds = %err_out2, %if.end156.err_out1_crit_edge
  %ret.1 = phi i32 [ %call158, %if.end156.err_out1_crit_edge ], [ %ret.0, %err_out2 ]
  %205 = ptrtoint ptr %clk_spi to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %clk_spi, align 4
  tail call void @clk_disable(ptr noundef %206) #7
  tail call void @clk_unprepare(ptr noundef %206) #7
  br label %cleanup

cleanup:                                          ; preds = %err_out1, %if.end267.cleanup_crit_edge, %if.then3.i, %if.end151.cleanup_crit_edge, %do.end148, %do.end121, %if.then91, %if.then76, %if.then68, %if.then51, %if.then36, %if.then26, %if.end11.cleanup_crit_edge, %if.then8, %do.body
  %retval.0 = phi i32 [ %13, %if.then26 ], [ %31, %if.then68 ], [ %48, %do.end121 ], [ %59, %do.end148 ], [ %ret.1, %err_out1 ], [ -22, %if.then8 ], [ -12, %if.end11.cleanup_crit_edge ], [ %21, %if.then51 ], [ %35, %if.then91 ], [ 0, %if.end267.cleanup_crit_edge ], [ -22, %do.body ], [ %21, %if.then36 ], [ %35, %if.then76 ], [ %call1.i, %if.then3.i ], [ %call.i423, %if.end151.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pwrap_init(ptr noundef %wrp) unnamed_addr #2 align 64 {
entry:
  %rdata.i.i.i = alloca i32, align 4
  %rdata.i.i = alloca i32, align 4
  %rdata.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rstc = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 7
  %0 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rstc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @reset_control_reset(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rstc_bridge = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 8
  %2 = ptrtoint ptr %rstc_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstc_bridge, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @reset_control_reset(ptr noundef nonnull %3) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %master = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 3
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %type = getelementptr inbounds %struct.pmic_wrapper_type, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp = icmp eq i32 %7, 7
  br i1 %cmp, label %if.then7, label %if.end6.if.end8_crit_edge

if.end6.if.end8_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %arrayidx.i = getelementptr i32, ptr %13, i32 57
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %18 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %arrayidx.i129 = getelementptr i32, ptr %21, i32 58
  %22 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i129, align 4
  %add.ptr.i130 = getelementptr i8, ptr %17, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 0) #7, !srcloc !198
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end6.if.end8_crit_edge
  %slave = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 4
  %24 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %slave, align 4
  %caps = getelementptr inbounds %struct.pwrap_slv_type, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %caps, align 4
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9.not = icmp eq i32 %and, 0
  br i1 %cmp9.not, label %if.end8.if.end15_crit_edge, label %if.then10

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %base.i.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %30 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %master, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %arrayidx.i.i = getelementptr i32, ptr %33, i32 15
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i, align 4
  %38 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %master, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %arrayidx.i32.i = getelementptr i32, ptr %41, i32 1
  %42 = ptrtoint ptr %arrayidx.i32.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i32.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %37, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 0) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i, align 4
  %46 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %master, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %45, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 16777216) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  %54 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %master, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %arrayidx.i39.i = getelementptr i32, ptr %57, i32 18
  %58 = ptrtoint ptr %arrayidx.i39.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i39.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %53, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 16777216) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i, align 4
  %62 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %master, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %arrayidx.i43.i = getelementptr i32, ptr %65, i32 2
  %66 = ptrtoint ptr %arrayidx.i43.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i43.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %61, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 0) #7, !srcloc !198
  %68 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %master, align 4
  %spi_w.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %spi_w.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %spi_w.i, align 4
  %or.i = or i32 %71, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %73 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i, align 4
  %75 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %master, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %arrayidx.i47.i = getelementptr i32, ptr %78, i32 19
  %79 = ptrtoint ptr %arrayidx.i47.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i47.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %74, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 %72) #7, !srcloc !198
  %81 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %master, align 4
  %spi_w2.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %spi_w2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %spi_w2.i, align 4
  %or3.i = or i32 %84, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %85 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #7
  %86 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i, align 4
  %88 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %master, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %arrayidx.i51.i = getelementptr i32, ptr %91, i32 19
  %92 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i51.i, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %87, i32 %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 %85) #7, !srcloc !198
  %94 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %master, align 4
  %spi_w5.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %spi_w5.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %spi_w5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #7
  %99 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base.i.i, align 4
  %101 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %master, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %arrayidx.i55.i = getelementptr i32, ptr %104, i32 19
  %105 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i55.i, align 4
  %add.ptr.i56.i = getelementptr i8, ptr %100, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 %98) #7, !srcloc !198
  %107 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %master, align 4
  %spi_w8.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %spi_w8.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %spi_w8.i, align 4
  %or9.i = or i32 %110, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %111 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #7
  %112 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i.i, align 4
  %114 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %master, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %arrayidx.i59.i = getelementptr i32, ptr %117, i32 19
  %118 = ptrtoint ptr %arrayidx.i59.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx.i59.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %113, i32 %119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %111) #7, !srcloc !198
  %120 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %master, align 4
  %spi_w8.1.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %spi_w8.1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %spi_w8.1.i, align 4
  %or9.1.i = or i32 %123, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %124 = tail call i32 @llvm.bswap.i32(i32 %or9.1.i) #7
  %125 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base.i.i, align 4
  %127 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %master, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %arrayidx.i59.1.i = getelementptr i32, ptr %130, i32 19
  %131 = ptrtoint ptr %arrayidx.i59.1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.i59.1.i, align 4
  %add.ptr.i60.1.i = getelementptr i8, ptr %126, i32 %132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.1.i, i32 %124) #7, !srcloc !198
  %133 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %master, align 4
  %spi_w8.2.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %134, i32 0, i32 5
  %135 = ptrtoint ptr %spi_w8.2.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %spi_w8.2.i, align 4
  %or9.2.i = or i32 %136, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %137 = tail call i32 @llvm.bswap.i32(i32 %or9.2.i) #7
  %138 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i.i, align 4
  %140 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %master, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %arrayidx.i59.2.i = getelementptr i32, ptr %143, i32 19
  %144 = ptrtoint ptr %arrayidx.i59.2.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.i59.2.i, align 4
  %add.ptr.i60.2.i = getelementptr i8, ptr %139, i32 %145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.2.i, i32 %137) #7, !srcloc !198
  %146 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %master, align 4
  %spi_w8.3.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %147, i32 0, i32 5
  %148 = ptrtoint ptr %spi_w8.3.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %spi_w8.3.i, align 4
  %or9.3.i = or i32 %149, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %150 = tail call i32 @llvm.bswap.i32(i32 %or9.3.i) #7
  %151 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i.i, align 4
  %153 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %master, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %arrayidx.i59.3.i = getelementptr i32, ptr %156, i32 19
  %157 = ptrtoint ptr %arrayidx.i59.3.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.i59.3.i, align 4
  %add.ptr.i60.3.i = getelementptr i8, ptr %152, i32 %158
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.3.i, i32 %150) #7, !srcloc !198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %159 = load volatile i32, ptr @jiffies, align 128
  %call.i.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i.i.i)
  %cmp.i.i.i = icmp ult i32 %call.i.i.i, 10000
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 1073741822, i32 1
  %add.i.i = add i32 %spec.select.i.i.i, %159
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.then10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %160 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  %161 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base.i.i, align 4
  %163 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %master, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %166, i32 35
  %167 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %162, i32 %168
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %170 = and i32 %169, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.i.not.i = icmp eq i32 %170, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %do.body.i.i
  br i1 %tobool.i.not.i, label %pwrap_reset_spislave.exit, label %if.then.i.i.pwrap_reset_spislave.exit.thread_crit_edge

if.then.i.i.pwrap_reset_spislave.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pwrap_reset_spislave.exit.thread

if.end.i.i:                                       ; preds = %do.body.i.i
  br i1 %tobool.i.not.i, label %if.end.i.i.do.body.i.i_crit_edge, label %if.end.i.i.pwrap_reset_spislave.exit.thread_crit_edge

if.end.i.i.pwrap_reset_spislave.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pwrap_reset_spislave.exit.thread

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

pwrap_reset_spislave.exit.thread:                 ; preds = %if.end.i.i.pwrap_reset_spislave.exit.thread_crit_edge, %if.then.i.i.pwrap_reset_spislave.exit.thread_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %171 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %base.i.i, align 4
  %173 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %master, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %174, align 4
  %arrayidx.i63.i = getelementptr i32, ptr %176, i32 18
  %177 = ptrtoint ptr %arrayidx.i63.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx.i63.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %172, i32 %178
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 0) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %179 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %base.i.i, align 4
  %181 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %master, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %184, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %180, i32 %186
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 0) #7, !srcloc !198
  br label %if.end15

pwrap_reset_spislave.exit:                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %187 = ptrtoint ptr %wrp to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %wrp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef -110) #10
  br label %cleanup

if.end15:                                         ; preds = %pwrap_reset_spislave.exit.thread, %if.end8.if.end15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %base.i131 = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %189 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base.i131, align 4
  %191 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %master, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %192, align 4
  %arrayidx.i133 = getelementptr i32, ptr %194, i32 1
  %195 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx.i133, align 4
  %add.ptr.i134 = getelementptr i8, ptr %190, i32 %196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 16777216) #7, !srcloc !198
  %197 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %master, align 4
  %arb_en_all = getelementptr inbounds %struct.pmic_wrapper_type, ptr %198, i32 0, i32 2
  %199 = ptrtoint ptr %arb_en_all to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arb_en_all, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #7
  %202 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %base.i131, align 4
  %204 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %master, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 4
  %arrayidx.i137 = getelementptr i32, ptr %207, i32 15
  %208 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx.i137, align 4
  %add.ptr.i138 = getelementptr i8, ptr %203, i32 %209
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %201) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %210 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %base.i131, align 4
  %212 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %master, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %213, align 4
  %arrayidx.i141 = getelementptr i32, ptr %215, i32 32
  %216 = ptrtoint ptr %arrayidx.i141 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx.i141, align 4
  %add.ptr.i142 = getelementptr i8, ptr %211, i32 %217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 16777216) #7, !srcloc !198
  %218 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %master, align 4
  %init_reg_clock = getelementptr inbounds %struct.pmic_wrapper_type, ptr %219, i32 0, i32 8
  %220 = ptrtoint ptr %init_reg_clock to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %init_reg_clock, align 4
  %call18 = tail call i32 %221(ptr noundef %wrp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %222 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %slave, align 4
  %caps23 = getelementptr inbounds %struct.pwrap_slv_type, ptr %223, i32 0, i32 3
  %224 = ptrtoint ptr %caps23 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %caps23, align 4
  %and24 = and i32 %225, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %cmp25.not = icmp eq i32 %and24, 0
  br i1 %cmp25.not, label %if.end21.if.end31_crit_edge, label %if.then26

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then26:                                        ; preds = %if.end21
  %call27 = tail call fastcc i32 @pwrap_init_sidly(ptr noundef %wrp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end31_crit_edge, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end31:                                         ; preds = %if.then26.if.end31_crit_edge, %if.end21.if.end31_crit_edge
  %226 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %slave, align 4
  %caps33 = getelementptr inbounds %struct.pwrap_slv_type, ptr %227, i32 0, i32 3
  %228 = ptrtoint ptr %caps33 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %caps33, align 4
  %and34 = and i32 %229, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %cmp35.not = icmp eq i32 %and34, 0
  br i1 %cmp35.not, label %if.end31.if.end41_crit_edge, label %if.then36

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then36:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdata.i) #7
  %230 = ptrtoint ptr %rdata.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 -1, ptr %rdata.i, align 4, !annotation !201
  %231 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %227, align 4
  %arrayidx.i143 = getelementptr i32, ptr %232, i32 1
  %233 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx.i143, align 4
  %pwrap_write.i.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %227, i32 0, i32 5
  %235 = ptrtoint ptr %pwrap_write.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %pwrap_write.i.i, align 4
  %call.i.i = tail call i32 %236(ptr noundef %wrp, i32 noundef %234, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %237 = load volatile i32, ptr @jiffies, align 128
  %call.i.i.i144 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i.i.i144)
  %cmp.i.i.i145 = icmp ult i32 %call.i.i.i144, 10000
  %spec.select.i.i.i146 = select i1 %cmp.i.i.i145, i32 1073741822, i32 1
  %add.i.i147 = add i32 %spec.select.i.i.i146, %237
  br label %do.body.i.i152

do.body.i.i152:                                   ; preds = %if.end.i.i154.do.body.i.i152_crit_edge, %if.then36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %238 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i148 = sub i32 %add.i.i147, %238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i148)
  %cmp.i.i149 = icmp slt i32 %sub.i.i148, 0
  %239 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %base.i131, align 4
  %241 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %master, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %242, align 4
  %arrayidx.i.i.i150 = getelementptr i32, ptr %244, i32 35
  %245 = ptrtoint ptr %arrayidx.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx.i.i.i150, align 4
  %add.ptr.i.i.i151 = getelementptr i8, ptr %240, i32 %246
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i151) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %248 = and i32 %247, 5888
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %248)
  %249 = icmp eq i32 %248, 4096
  br i1 %cmp.i.i149, label %if.then.i.i153, label %if.end.i.i154

if.then.i.i153:                                   ; preds = %do.body.i.i152
  br i1 %249, label %if.then.i.i153.if.end.i158_crit_edge, label %do.end.i155

if.then.i.i153.if.end.i158_crit_edge:             ; preds = %if.then.i.i153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i158

if.end.i.i154:                                    ; preds = %do.body.i.i152
  br i1 %249, label %if.end.i.i154.if.end.i158_crit_edge, label %if.end.i.i154.do.body.i.i152_crit_edge

if.end.i.i154.do.body.i.i152_crit_edge:           ; preds = %if.end.i.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i152

if.end.i.i154.if.end.i158_crit_edge:              ; preds = %if.end.i.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i158

do.end.i155:                                      ; preds = %if.then.i.i153
  call void @__sanitizer_cov_trace_pc() #9
  %250 = ptrtoint ptr %wrp to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %wrp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %251, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.23, i32 noundef -110) #10
  br label %pwrap_init_dual_io.exit.thread

if.end.i158:                                      ; preds = %if.end.i.i154.if.end.i158_crit_edge, %if.then.i.i153.if.end.i158_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %252 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %base.i131, align 4
  %254 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %master, align 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %255, align 4
  %arrayidx.i.i156 = getelementptr i32, ptr %257, i32 2
  %258 = ptrtoint ptr %arrayidx.i.i156 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx.i.i156, align 4
  %add.ptr.i.i157 = getelementptr i8, ptr %253, i32 %259
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i157, i32 16777216) #7, !srcloc !198
  %260 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %slave, align 4
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %261, align 4
  %arrayidx4.i = getelementptr i32, ptr %263, i32 2
  %264 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx4.i, align 4
  %pwrap_read.i.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %261, i32 0, i32 4
  %266 = ptrtoint ptr %pwrap_read.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %pwrap_read.i.i, align 4
  %call.i23.i = call i32 %267(ptr noundef %wrp, i32 noundef %265, ptr noundef nonnull %rdata.i) #7
  %268 = ptrtoint ptr %rdata.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %rdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23205, i32 %269)
  %cmp.not.i = icmp eq i32 %269, 23205
  br i1 %cmp.not.i, label %pwrap_init_dual_io.exit, label %do.end9.i

do.end9.i:                                        ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #9
  %270 = ptrtoint ptr %wrp to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %wrp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %271, ptr noundef nonnull @.str.25, i32 noundef 23205, i32 noundef %269) #10
  br label %pwrap_init_dual_io.exit.thread

pwrap_init_dual_io.exit.thread:                   ; preds = %do.end9.i, %do.end.i155
  %retval.0.i159.ph = phi i32 [ -14, %do.end9.i ], [ -110, %do.end.i155 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdata.i) #7
  br label %cleanup

pwrap_init_dual_io.exit:                          ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdata.i) #7
  br label %if.end41

if.end41:                                         ; preds = %pwrap_init_dual_io.exit, %if.end31.if.end41_crit_edge
  %272 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %slave, align 4
  %caps43 = getelementptr inbounds %struct.pwrap_slv_type, ptr %273, i32 0, i32 3
  %274 = ptrtoint ptr %caps43 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %caps43, align 4
  %and44 = and i32 %275, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %cmp45.not = icmp eq i32 %and44, 0
  br i1 %cmp45.not, label %if.end41.if.end51_crit_edge, label %if.then46

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then46:                                        ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdata.i.i) #7
  %276 = ptrtoint ptr %rdata.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 0, ptr %rdata.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %277 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %base.i131, align 4
  %279 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %master, align 4
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %280, align 4
  %arrayidx.i.i.i162 = getelementptr i32, ptr %282, i32 56
  %283 = ptrtoint ptr %arrayidx.i.i.i162 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %arrayidx.i.i.i162, align 4
  %add.ptr.i.i.i163 = getelementptr i8, ptr %278, i32 %284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i163, i32 16777216) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %285 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %base.i131, align 4
  %287 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %master, align 4
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %288, align 4
  %arrayidx.i118.i.i = getelementptr i32, ptr %290, i32 56
  %291 = ptrtoint ptr %arrayidx.i118.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %arrayidx.i118.i.i, align 4
  %add.ptr.i119.i.i = getelementptr i8, ptr %286, i32 %292
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i.i, i32 0) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %293 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %base.i131, align 4
  %295 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %master, align 4
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %296, align 4
  %arrayidx.i122.i.i = getelementptr i32, ptr %298, i32 52
  %299 = ptrtoint ptr %arrayidx.i122.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %arrayidx.i122.i.i, align 4
  %add.ptr.i123.i.i = getelementptr i8, ptr %294, i32 %300
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.i.i, i32 16777216) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %301 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %base.i131, align 4
  %303 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %master, align 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %304, align 4
  %arrayidx.i126.i.i = getelementptr i32, ptr %306, i32 53
  %307 = ptrtoint ptr %arrayidx.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx.i126.i.i, align 4
  %add.ptr.i127.i.i = getelementptr i8, ptr %302, i32 %308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i.i, i32 33554432) #7, !srcloc !198
  %309 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %master, align 4
  %type.i.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %310, i32 0, i32 1
  %311 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %type.i.i, align 4
  %313 = zext i32 %312 to i64
  call void @__sanitizer_cov_trace_switch(i64 %313, ptr @__sancov_gen_cov_switch_values)
  switch i32 %312, label %if.then46.sw.epilog.i.i_crit_edge [
    i32 6, label %sw.bb.i.i
    i32 0, label %if.then46.sw.bb1.i.i_crit_edge
    i32 1, label %if.then46.sw.bb1.i.i_crit_edge256
    i32 2, label %if.then46.sw.bb1.i.i_crit_edge257
    i32 3, label %if.then46.sw.bb1.i.i_crit_edge258
    i32 7, label %if.then46.sw.bb1.i.i_crit_edge259
    i32 10, label %if.then46.sw.bb1.i.i_crit_edge260
    i32 5, label %sw.bb2.i.i
  ]

if.then46.sw.bb1.i.i_crit_edge260:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.then46.sw.bb1.i.i_crit_edge259:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.then46.sw.bb1.i.i_crit_edge258:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.then46.sw.bb1.i.i_crit_edge257:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.then46.sw.bb1.i.i_crit_edge256:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.then46.sw.bb1.i.i_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.then46.sw.epilog.i.i_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %314 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %base.i131, align 4
  %316 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %master, align 4
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %317, align 4
  %arrayidx.i130.i.i = getelementptr i32, ptr %319, i32 103
  %320 = ptrtoint ptr %arrayidx.i130.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx.i130.i.i, align 4
  %add.ptr.i131.i.i = getelementptr i8, ptr %315, i32 %321
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131.i.i, i32 16777216) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %322 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %base.i131, align 4
  %324 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %master, align 4
  %326 = ptrtoint ptr %325 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %325, align 4
  %arrayidx.i134.i.i = getelementptr i32, ptr %327, i32 104
  %328 = ptrtoint ptr %arrayidx.i134.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx.i134.i.i, align 4
  %add.ptr.i135.i.i = getelementptr i8, ptr %323, i32 %329
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135.i.i, i32 16777216) #7, !srcloc !198
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.then46.sw.bb1.i.i_crit_edge, %if.then46.sw.bb1.i.i_crit_edge256, %if.then46.sw.bb1.i.i_crit_edge257, %if.then46.sw.bb1.i.i_crit_edge258, %if.then46.sw.bb1.i.i_crit_edge259, %if.then46.sw.bb1.i.i_crit_edge260
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %330 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %base.i131, align 4
  %332 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %master, align 4
  %334 = ptrtoint ptr %333 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %333, align 4
  %arrayidx.i138.i.i = getelementptr i32, ptr %335, i32 124
  %336 = ptrtoint ptr %arrayidx.i138.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx.i138.i.i, align 4
  %add.ptr.i139.i.i = getelementptr i8, ptr %331, i32 %337
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i.i, i32 16777216) #7, !srcloc !198
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %338 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %base.i131, align 4
  %340 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %master, align 4
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %341, align 4
  %arrayidx.i142.i.i = getelementptr i32, ptr %343, i32 124
  %344 = ptrtoint ptr %arrayidx.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx.i142.i.i, align 4
  %add.ptr.i143.i.i = getelementptr i8, ptr %339, i32 %345
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i.i, i32 0) #7, !srcloc !198
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.then46.sw.epilog.i.i_crit_edge
  %346 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %slave, align 4
  %348 = ptrtoint ptr %347 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %347, align 4
  %arrayidx.i.i164 = getelementptr i32, ptr %349, i32 11
  %350 = ptrtoint ptr %arrayidx.i.i164 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %arrayidx.i.i164, align 4
  %pwrap_write.i.i.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %347, i32 0, i32 5
  %352 = ptrtoint ptr %pwrap_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %pwrap_write.i.i.i, align 4
  %call.i.i.i165 = call i32 %353(ptr noundef %wrp, i32 noundef %351, i32 noundef 1) #7
  %354 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %slave, align 4
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %355, align 4
  %arrayidx6.i.i = getelementptr i32, ptr %357, i32 11
  %358 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %arrayidx6.i.i, align 4
  %pwrap_write.i145.i.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %355, i32 0, i32 5
  %360 = ptrtoint ptr %pwrap_write.i145.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %pwrap_write.i145.i.i, align 4
  %call.i146.i.i = call i32 %361(ptr noundef %wrp, i32 noundef %359, i32 noundef 0) #7
  %362 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %slave, align 4
  %364 = ptrtoint ptr %363 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %363, align 4
  %arrayidx10.i.i = getelementptr i32, ptr %365, i32 7
  %366 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx10.i.i, align 4
  %pwrap_write.i148.i.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %363, i32 0, i32 5
  %368 = ptrtoint ptr %pwrap_write.i148.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %pwrap_write.i148.i.i, align 4
  %call.i149.i.i = call i32 %369(ptr noundef %wrp, i32 noundef %367, i32 noundef 1) #7
  %370 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %slave, align 4
  %372 = ptrtoint ptr %371 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %371, align 4
  %arrayidx14.i.i = getelementptr i32, ptr %373, i32 8
  %374 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx14.i.i, align 4
  %pwrap_write.i151.i.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %371, i32 0, i32 5
  %376 = ptrtoint ptr %pwrap_write.i151.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %pwrap_write.i151.i.i, align 4
  %call.i152.i.i = call i32 %377(ptr noundef %wrp, i32 noundef %375, i32 noundef 2) #7
  %378 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %slave, align 4
  %type17.i.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %379, i32 0, i32 1
  %380 = ptrtoint ptr %type17.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %type17.i.i, align 4
  %382 = zext i32 %381 to i64
  call void @__sanitizer_cov_trace_switch(i64 %382, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %381, label %sw.epilog.i.i.sw.epilog32.i.i_crit_edge [
    i32 6, label %sw.bb18.i.i
    i32 0, label %sw.epilog.i.i.sw.epilog32.sink.split.i.i_crit_edge
    i32 1, label %sw.epilog.i.i.sw.epilog32.sink.split.i.i_crit_edge261
    i32 2, label %sw.epilog.i.i.sw.epilog32.sink.split.i.i_crit_edge262
  ]

sw.epilog.i.i.sw.epilog32.sink.split.i.i_crit_edge262: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog32.sink.split.i.i

sw.epilog.i.i.sw.epilog32.sink.split.i.i_crit_edge261: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog32.sink.split.i.i

sw.epilog.i.i.sw.epilog32.sink.split.i.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog32.sink.split.i.i

sw.epilog.i.i.sw.epilog32.i.i_crit_edge:          ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog32.i.i

sw.bb18.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %383 = ptrtoint ptr %379 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %379, align 4
  %arrayidx21.i.i = getelementptr i32, ptr %384, i32 55
  %385 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %arrayidx21.i.i, align 4
  %pwrap_write.i154.i.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %379, i32 0, i32 5
  %387 = ptrtoint ptr %pwrap_write.i154.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %pwrap_write.i154.i.i, align 4
  %call.i155.i.i = call i32 %388(ptr noundef %wrp, i32 noundef %386, i32 noundef 1) #7
  %389 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %slave, align 4
  br label %sw.epilog32.sink.split.i.i

sw.epilog32.sink.split.i.i:                       ; preds = %sw.bb18.i.i, %sw.epilog.i.i.sw.epilog32.sink.split.i.i_crit_edge, %sw.epilog.i.i.sw.epilog32.sink.split.i.i_crit_edge261, %sw.epilog.i.i.sw.epilog32.sink.split.i.i_crit_edge262
  %.sink236.i.i = phi ptr [ %390, %sw.bb18.i.i ], [ %379, %sw.epilog.i.i.sw.epilog32.sink.split.i.i_crit_edge ], [ %379, %sw.epilog.i.i.sw.epilog32.sink.split.i.i_crit_edge261 ], [ %379, %sw.epilog.i.i.sw.epilog32.sink.split.i.i_crit_edge262 ]
  %.sink235.i.i = phi i32 [ 56, %sw.bb18.i.i ], [ 12, %sw.epilog.i.i.sw.epilog32.sink.split.i.i_crit_edge ], [ 12, %sw.epilog.i.i.sw.epilog32.sink.split.i.i_crit_edge261 ], [ 12, %sw.epilog.i.i.sw.epilog32.sink.split.i.i_crit_edge262 ]
  %391 = ptrtoint ptr %.sink236.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %.sink236.i.i, align 4
  %arrayidx30.i.i = getelementptr i32, ptr %392, i32 %.sink235.i.i
  %393 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %arrayidx30.i.i, align 4
  %pwrap_write.i160.i.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %.sink236.i.i, i32 0, i32 5
  %395 = ptrtoint ptr %pwrap_write.i160.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %pwrap_write.i160.i.i, align 4
  %call.i161.i.i = call i32 %396(ptr noundef %wrp, i32 noundef %394, i32 noundef 1) #7
  br label %sw.epilog32.i.i

sw.epilog32.i.i:                                  ; preds = %sw.epilog32.sink.split.i.i, %sw.epilog.i.i.sw.epilog32.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %397 = load volatile i32, ptr @jiffies, align 128
  %call.i.i.i.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %call.i.i.i.i, 10000
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, i32 1073741822, i32 1
  %add.i.i.i = add i32 %spec.select.i.i.i.i, %397
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i.do.body.i.i.i_crit_edge, %sw.epilog32.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %398 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %398
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i166 = icmp slt i32 %sub.i.i.i, 0
  %399 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %base.i131, align 4
  %401 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %master, align 4
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %402, align 4
  %arrayidx.i.i.i.i = getelementptr i32, ptr %404, i32 54
  %405 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %400, i32 %406
  %407 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %408 = and i32 %407, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %408)
  %tobool.i.not.i.i = icmp eq i32 %408, 0
  br i1 %cmp.i.i.i166, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  br i1 %tobool.i.not.i.i, label %do.end.i.i, label %if.then.i.i.i.if.end.i.i167_crit_edge

if.then.i.i.i.if.end.i.i167_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i167

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  br i1 %tobool.i.not.i.i, label %if.end.i.i.i.do.body.i.i.i_crit_edge, label %if.end.i.i.i.if.end.i.i167_crit_edge

if.end.i.i.i.if.end.i.i167_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i167

if.end.i.i.i.do.body.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

do.end.i.i:                                       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %409 = ptrtoint ptr %wrp to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %wrp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %410, ptr noundef nonnull @.str.27, i32 noundef -110) #10
  br label %pwrap_init_cipher.exit.thread.i

if.end.i.i167:                                    ; preds = %if.end.i.i.i.if.end.i.i167_crit_edge, %if.then.i.i.i.if.end.i.i167_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %411 = load volatile i32, ptr @jiffies, align 128
  %call.i.i162.i.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i.i162.i.i)
  %cmp.i.i163.i.i = icmp ult i32 %call.i.i162.i.i, 10000
  %spec.select.i.i164.i.i = select i1 %cmp.i.i163.i.i, i32 1073741822, i32 1
  %add.i165.i.i = add i32 %spec.select.i.i164.i.i, %411
  br label %do.body.i169.i.i

do.body.i169.i.i:                                 ; preds = %do.body.i169.i.i.backedge, %if.end.i.i167
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %412 = load volatile i32, ptr @jiffies, align 128
  %sub.i166.i.i = sub i32 %add.i165.i.i, %412
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i166.i.i)
  %cmp.i167.i.i = icmp slt i32 %sub.i166.i.i, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdata.i.i.i) #7
  %413 = ptrtoint ptr %rdata.i.i.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 -1, ptr %rdata.i.i.i, align 4, !annotation !201
  %414 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %slave, align 4
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %415, align 4
  %arrayidx.i201.i.i = getelementptr i32, ptr %417, i32 9
  %418 = ptrtoint ptr %arrayidx.i201.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %arrayidx.i201.i.i, align 4
  %pwrap_read.i.i.i.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %415, i32 0, i32 4
  %420 = ptrtoint ptr %pwrap_read.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %pwrap_read.i.i.i.i, align 4
  %call.i.i202.i.i = call i32 %421(ptr noundef %wrp, i32 noundef %419, ptr noundef nonnull %rdata.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i202.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i202.i.i, 0
  br i1 %tobool.not.i.i.i, label %pwrap_is_pmic_cipher_ready.exit.i.i, label %pwrap_is_pmic_cipher_ready.exit.thread.i.i

pwrap_is_pmic_cipher_ready.exit.i.i:              ; preds = %do.body.i169.i.i
  %422 = ptrtoint ptr %rdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %rdata.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %423)
  %cmp.i203.i.i = icmp eq i32 %423, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdata.i.i.i) #7
  br i1 %cmp.i167.i.i, label %if.then.i171.i.i, label %if.end.i172.i.i

pwrap_is_pmic_cipher_ready.exit.thread.i.i:       ; preds = %do.body.i169.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdata.i.i.i) #7
  br i1 %cmp.i167.i.i, label %pwrap_is_pmic_cipher_ready.exit.thread.i.i.do.end39.i.i_crit_edge, label %pwrap_is_pmic_cipher_ready.exit.thread.i.i.do.body.i169.i.i.backedge_crit_edge

pwrap_is_pmic_cipher_ready.exit.thread.i.i.do.body.i169.i.i.backedge_crit_edge: ; preds = %pwrap_is_pmic_cipher_ready.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i169.i.i.backedge

pwrap_is_pmic_cipher_ready.exit.thread.i.i.do.end39.i.i_crit_edge: ; preds = %pwrap_is_pmic_cipher_ready.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i.i

if.then.i171.i.i:                                 ; preds = %pwrap_is_pmic_cipher_ready.exit.i.i
  br i1 %cmp.i203.i.i, label %if.then.i171.i.i.if.end41.i.i_crit_edge, label %if.then.i171.i.i.do.end39.i.i_crit_edge

if.then.i171.i.i.do.end39.i.i_crit_edge:          ; preds = %if.then.i171.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i.i

if.then.i171.i.i.if.end41.i.i_crit_edge:          ; preds = %if.then.i171.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i.i

if.end.i172.i.i:                                  ; preds = %pwrap_is_pmic_cipher_ready.exit.i.i
  br i1 %cmp.i203.i.i, label %if.end.i172.i.i.if.end41.i.i_crit_edge, label %if.end.i172.i.i.do.body.i169.i.i.backedge_crit_edge

if.end.i172.i.i.do.body.i169.i.i.backedge_crit_edge: ; preds = %if.end.i172.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i169.i.i.backedge

if.end.i172.i.i.if.end41.i.i_crit_edge:           ; preds = %if.end.i172.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i.i

do.body.i169.i.i.backedge:                        ; preds = %if.end.i172.i.i.do.body.i169.i.i.backedge_crit_edge, %pwrap_is_pmic_cipher_ready.exit.thread.i.i.do.body.i169.i.i.backedge_crit_edge
  br label %do.body.i169.i.i

do.end39.i.i:                                     ; preds = %if.then.i171.i.i.do.end39.i.i_crit_edge, %pwrap_is_pmic_cipher_ready.exit.thread.i.i.do.end39.i.i_crit_edge
  %424 = ptrtoint ptr %wrp to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %wrp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %425, ptr noundef nonnull @.str.30) #10
  br label %pwrap_init_cipher.exit.thread.i

if.end41.i.i:                                     ; preds = %if.end.i172.i.i.if.end41.i.i_crit_edge, %if.then.i171.i.i.if.end41.i.i_crit_edge
  %426 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %slave, align 4
  %428 = ptrtoint ptr %427 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %427, align 4
  %arrayidx44.i.i = getelementptr i32, ptr %429, i32 10
  %430 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %arrayidx44.i.i, align 4
  %pwrap_write.i176.i.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %427, i32 0, i32 5
  %432 = ptrtoint ptr %pwrap_write.i176.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %pwrap_write.i176.i.i, align 4
  %call.i177.i.i = call i32 %433(ptr noundef %wrp, i32 noundef %431, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %434 = load volatile i32, ptr @jiffies, align 128
  %call.i.i178.i.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i.i178.i.i)
  %cmp.i.i179.i.i = icmp ult i32 %call.i.i178.i.i, 10000
  %spec.select.i.i180.i.i = select i1 %cmp.i.i179.i.i, i32 1073741822, i32 1
  %add.i181.i.i = add i32 %spec.select.i.i180.i.i, %434
  br label %do.body.i185.i.i

do.body.i185.i.i:                                 ; preds = %if.end.i188.i.i.do.body.i185.i.i_crit_edge, %if.end41.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %435 = load volatile i32, ptr @jiffies, align 128
  %sub.i182.i.i = sub i32 %add.i181.i.i, %435
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i182.i.i)
  %cmp.i183.i.i = icmp slt i32 %sub.i182.i.i, 0
  %436 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %base.i131, align 4
  %438 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %master, align 4
  %440 = ptrtoint ptr %439 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %439, align 4
  %arrayidx.i.i208.i.i = getelementptr i32, ptr %441, i32 35
  %442 = ptrtoint ptr %arrayidx.i.i208.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %arrayidx.i.i208.i.i, align 4
  %add.ptr.i.i209.i.i = getelementptr i8, ptr %437, i32 %443
  %444 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i209.i.i) #7, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %445 = and i32 %444, 5888
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %445)
  %446 = icmp eq i32 %445, 4096
  br i1 %cmp.i183.i.i, label %if.then.i187.i.i, label %if.end.i188.i.i

if.then.i187.i.i:                                 ; preds = %do.body.i185.i.i
  br i1 %446, label %if.then.i187.i.i.if.end53.i.i_crit_edge, label %do.end51.i.i

if.then.i187.i.i.if.end53.i.i_crit_edge:          ; preds = %if.then.i187.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i.i

if.end.i188.i.i:                                  ; preds = %do.body.i185.i.i
  br i1 %446, label %if.end.i188.i.i.if.end53.i.i_crit_edge, label %if.end.i188.i.i.do.body.i185.i.i_crit_edge

if.end.i188.i.i.do.body.i185.i.i_crit_edge:       ; preds = %if.end.i188.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i185.i.i

if.end.i188.i.i.if.end53.i.i_crit_edge:           ; preds = %if.end.i188.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i.i

do.end51.i.i:                                     ; preds = %if.then.i187.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %447 = ptrtoint ptr %wrp to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %wrp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %448, ptr noundef nonnull @.str.33, i32 noundef -110) #10
  br label %pwrap_init_cipher.exit.thread.i

if.end53.i.i:                                     ; preds = %if.end.i188.i.i.if.end53.i.i_crit_edge, %if.then.i187.i.i.if.end53.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %449 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %base.i131, align 4
  %451 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %master, align 4
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %452, align 4
  %arrayidx.i193.i.i = getelementptr i32, ptr %454, i32 55
  %455 = ptrtoint ptr %arrayidx.i193.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %arrayidx.i193.i.i, align 4
  %add.ptr.i194.i.i = getelementptr i8, ptr %450, i32 %456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194.i.i, i32 16777216) #7, !srcloc !198
  %457 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %slave, align 4
  %459 = ptrtoint ptr %458 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %458, align 4
  %arrayidx56.i.i = getelementptr i32, ptr %460, i32 3
  %461 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %arrayidx56.i.i, align 4
  %pwrap_write.i196.i.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %458, i32 0, i32 5
  %463 = ptrtoint ptr %pwrap_write.i196.i.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %pwrap_write.i196.i.i, align 4
  %call.i197.i.i = call i32 %464(ptr noundef %wrp, i32 noundef %462, i32 noundef 42330) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197.i.i)
  %tobool58.not.i.i = icmp eq i32 %call.i197.i.i, 0
  br i1 %tobool58.not.i.i, label %lor.lhs.false.i.i, label %if.end53.i.i.do.end68.i.i_crit_edge

if.end53.i.i.do.end68.i.i_crit_edge:              ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68.i.i

lor.lhs.false.i.i:                                ; preds = %if.end53.i.i
  %465 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %slave, align 4
  %467 = ptrtoint ptr %466 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %466, align 4
  %arrayidx61.i.i = getelementptr i32, ptr %468, i32 3
  %469 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %arrayidx61.i.i, align 4
  %pwrap_read.i.i.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %466, i32 0, i32 4
  %471 = ptrtoint ptr %pwrap_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %pwrap_read.i.i.i, align 4
  %call.i199.i.i = call i32 %472(ptr noundef %wrp, i32 noundef %470, ptr noundef nonnull %rdata.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199.i.i)
  %tobool63.not.i.i = icmp eq i32 %call.i199.i.i, 0
  br i1 %tobool63.not.i.i, label %lor.lhs.false64.i.i, label %lor.lhs.false.i.i.do.end68.i.i_crit_edge

lor.lhs.false.i.i.do.end68.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68.i.i

lor.lhs.false64.i.i:                              ; preds = %lor.lhs.false.i.i
  %473 = ptrtoint ptr %rdata.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %rdata.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42330, i32 %474)
  %cmp.not.i.i = icmp eq i32 %474, 42330
  br i1 %cmp.not.i.i, label %if.end.i171, label %lor.lhs.false64.i.i.do.end68.i.i_crit_edge

lor.lhs.false64.i.i.do.end68.i.i_crit_edge:       ; preds = %lor.lhs.false64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68.i.i

do.end68.i.i:                                     ; preds = %lor.lhs.false64.i.i.do.end68.i.i_crit_edge, %lor.lhs.false.i.i.do.end68.i.i_crit_edge, %if.end53.i.i.do.end68.i.i_crit_edge
  %475 = ptrtoint ptr %wrp to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %wrp, align 4
  %477 = ptrtoint ptr %rdata.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %rdata.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %476, ptr noundef nonnull @.str.36, i32 noundef %478) #10
  br label %pwrap_init_cipher.exit.thread.i

pwrap_init_cipher.exit.thread.i:                  ; preds = %do.end68.i.i, %do.end51.i.i, %do.end39.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -14, %do.end68.i.i ], [ -110, %do.end51.i.i ], [ -110, %do.end39.i.i ], [ -110, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdata.i.i) #7
  br label %cleanup

if.end.i171:                                      ; preds = %lor.lhs.false64.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdata.i.i) #7
  %479 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %slave, align 4
  %481 = ptrtoint ptr %480 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %480, align 4
  %arrayidx.i168 = getelementptr i32, ptr %482, i32 4
  %483 = ptrtoint ptr %arrayidx.i168 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %arrayidx.i168, align 4
  %pwrap_write.i.i169 = getelementptr inbounds %struct.pwrap_slv_type, ptr %480, i32 0, i32 5
  %485 = ptrtoint ptr %pwrap_write.i.i169 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %pwrap_write.i.i169, align 4
  %call.i.i170 = call i32 %486(ptr noundef %wrp, i32 noundef %484, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i170)
  %tobool2.not.i = icmp eq i32 %call.i.i170, 0
  br i1 %tobool2.not.i, label %pwrap_init_security.exit, label %if.end.i171.cleanup_crit_edge

if.end.i171.cleanup_crit_edge:                    ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pwrap_init_security.exit:                         ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %487 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %base.i131, align 4
  %489 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %master, align 4
  %491 = ptrtoint ptr %490 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %490, align 4
  %arrayidx.i18.i = getelementptr i32, ptr %492, i32 45
  %493 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %arrayidx.i18.i, align 4
  %add.ptr.i.i172 = getelementptr i8, ptr %488, i32 %494
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i172, i32 16777216) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %495 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %base.i131, align 4
  %497 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %master, align 4
  %499 = ptrtoint ptr %498 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %498, align 4
  %arrayidx.i21.i = getelementptr i32, ptr %500, i32 42
  %501 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %arrayidx.i21.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %496, i32 %502
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 0) #7, !srcloc !198
  %503 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %slave, align 4
  %505 = ptrtoint ptr %504 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %504, align 4
  %arrayidx7.i = getelementptr i32, ptr %506, i32 5
  %507 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %arrayidx7.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %509 = call i32 @llvm.bswap.i32(i32 %508) #7
  %510 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %base.i131, align 4
  %512 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %master, align 4
  %514 = ptrtoint ptr %513 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %513, align 4
  %arrayidx.i25.i = getelementptr i32, ptr %515, i32 41
  %516 = ptrtoint ptr %arrayidx.i25.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %arrayidx.i25.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %511, i32 %517
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %509) #7, !srcloc !198
  %518 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %master, align 4
  %arb_en_all.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %519, i32 0, i32 2
  %520 = ptrtoint ptr %arb_en_all.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %arb_en_all.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %522 = call i32 @llvm.bswap.i32(i32 %521) #7
  %523 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %base.i131, align 4
  %525 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %master, align 4
  %527 = ptrtoint ptr %526 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %526, align 4
  %arrayidx.i29.i = getelementptr i32, ptr %528, i32 15
  %529 = ptrtoint ptr %arrayidx.i29.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %arrayidx.i29.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %524, i32 %530
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %522) #7, !srcloc !198
  br label %if.end51

if.end51:                                         ; preds = %pwrap_init_security.exit, %if.end41.if.end51_crit_edge
  %531 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %master, align 4
  %type53 = getelementptr inbounds %struct.pmic_wrapper_type, ptr %532, i32 0, i32 1
  %533 = ptrtoint ptr %type53 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %type53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %534)
  %cmp54 = icmp eq i32 %534, 6
  br i1 %cmp54, label %if.then55, label %if.end51.if.end56_crit_edge

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %535 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %base.i131, align 4
  %537 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %master, align 4
  %539 = ptrtoint ptr %538 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %538, align 4
  %arrayidx.i176 = getelementptr i32, ptr %540, i32 98
  %541 = ptrtoint ptr %arrayidx.i176 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %arrayidx.i176, align 4
  %add.ptr.i177 = getelementptr i8, ptr %536, i32 %542
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 117440512) #7, !srcloc !198
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end51.if.end56_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %543 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %base.i131, align 4
  %545 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %master, align 4
  %547 = ptrtoint ptr %546 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %546, align 4
  %arrayidx.i180 = getelementptr i32, ptr %548, i32 22
  %549 = ptrtoint ptr %arrayidx.i180 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %arrayidx.i180, align 4
  %add.ptr.i181 = getelementptr i8, ptr %544, i32 %550
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 16777216) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %551 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %base.i131, align 4
  %553 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %master, align 4
  %555 = ptrtoint ptr %554 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %554, align 4
  %arrayidx.i184 = getelementptr i32, ptr %556, i32 27
  %557 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %arrayidx.i184, align 4
  %add.ptr.i185 = getelementptr i8, ptr %552, i32 %558
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 16777216) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %559 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %base.i131, align 4
  %561 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %master, align 4
  %563 = ptrtoint ptr %562 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %562, align 4
  %arrayidx.i188 = getelementptr i32, ptr %564, i32 32
  %565 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %arrayidx.i188, align 4
  %add.ptr.i189 = getelementptr i8, ptr %560, i32 %566
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189, i32 16777216) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %567 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %base.i131, align 4
  %569 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %master, align 4
  %571 = ptrtoint ptr %570 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %570, align 4
  %arrayidx.i192 = getelementptr i32, ptr %572, i32 8
  %573 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %arrayidx.i192, align 4
  %add.ptr.i193 = getelementptr i8, ptr %568, i32 %574
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193, i32 83886080) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %575 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %base.i131, align 4
  %577 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %master, align 4
  %579 = ptrtoint ptr %578 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %578, align 4
  %arrayidx.i196 = getelementptr i32, ptr %580, i32 9
  %581 = ptrtoint ptr %arrayidx.i196 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %arrayidx.i196, align 4
  %add.ptr.i197 = getelementptr i8, ptr %576, i32 %582
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i197, i32 -16777216) #7, !srcloc !198
  %583 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %master, align 4
  %init_soc_specific = getelementptr inbounds %struct.pmic_wrapper_type, ptr %584, i32 0, i32 9
  %585 = ptrtoint ptr %init_soc_specific to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %init_soc_specific, align 4
  %tobool58.not = icmp eq ptr %586, null
  br i1 %tobool58.not, label %if.end56.if.end66_crit_edge, label %if.then59

if.end56.if.end66_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then59:                                        ; preds = %if.end56
  %call62 = call i32 %586(ptr noundef %wrp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then59.if.end66_crit_edge, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then59.if.end66_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.end66:                                         ; preds = %if.then59.if.end66_crit_edge, %if.end56.if.end66_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %587 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %base.i131, align 4
  %589 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %master, align 4
  %591 = ptrtoint ptr %590 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %590, align 4
  %arrayidx.i200 = getelementptr i32, ptr %592, i32 33
  %593 = ptrtoint ptr %arrayidx.i200 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %arrayidx.i200, align 4
  %add.ptr.i201 = getelementptr i8, ptr %588, i32 %594
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201, i32 16777216) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %595 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %base.i131, align 4
  %597 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %master, align 4
  %599 = ptrtoint ptr %598 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %598, align 4
  %arrayidx.i204 = getelementptr i32, ptr %600, i32 23
  %601 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %arrayidx.i204, align 4
  %add.ptr.i205 = getelementptr i8, ptr %596, i32 %602
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205, i32 16777216) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %603 = ptrtoint ptr %base.i131 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %base.i131, align 4
  %605 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %master, align 4
  %607 = ptrtoint ptr %606 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %606, align 4
  %arrayidx.i208 = getelementptr i32, ptr %608, i32 28
  %609 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %arrayidx.i208, align 4
  %add.ptr.i209 = getelementptr i8, ptr %604, i32 %610
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i209, i32 16777216) #7, !srcloc !198
  %611 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %master, align 4
  %caps68 = getelementptr inbounds %struct.pmic_wrapper_type, ptr %612, i32 0, i32 7
  %613 = ptrtoint ptr %caps68 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %caps68, align 4
  %and69 = and i32 %614, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %cmp70.not = icmp eq i32 %and69, 0
  br i1 %cmp70.not, label %if.end66.cleanup_crit_edge, label %do.body

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  call void @arm_heavy_mb() #7
  %bridge_base = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 9
  %615 = ptrtoint ptr %bridge_base to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %bridge_base, align 4
  %add.ptr = getelementptr i8, ptr %616, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  call void @arm_heavy_mb() #7
  %617 = ptrtoint ptr %bridge_base to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %bridge_base, align 4
  %add.ptr76 = getelementptr i8, ptr %618, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 16777216) #7, !srcloc !198
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end66.cleanup_crit_edge, %if.then59.cleanup_crit_edge, %if.end.i171.cleanup_crit_edge, %pwrap_init_cipher.exit.thread.i, %pwrap_init_dual_io.exit.thread, %if.then26.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %pwrap_reset_spislave.exit
  %retval.0 = phi i32 [ -110, %pwrap_reset_spislave.exit ], [ %call18, %if.end15.cleanup_crit_edge ], [ %call27, %if.then26.cleanup_crit_edge ], [ %call62, %if.then59.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %if.end66.cleanup_crit_edge ], [ %retval.0.i159.ph, %pwrap_init_dual_io.exit.thread ], [ %retval.0.i.ph.i, %pwrap_init_cipher.exit.thread.i ], [ -14, %if.end.i171.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_interrupt(i32 noundef %irqno, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.pmic_wrapper, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %master.i = getelementptr inbounds %struct.pmic_wrapper, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 39
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !199
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.38, i32 noundef %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %arrayidx.i15 = getelementptr i32, ptr %17, i32 40
  %18 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i15, align 4
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 -1) #7, !srcloc !198
  %20 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master.i, align 4
  %caps = getelementptr inbounds %struct.pmic_wrapper_type, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %caps, align 4
  %and = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %21, align 4
  %arrayidx.i19 = getelementptr i32, ptr %27, i32 135
  %28 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i19, align 4
  %add.ptr.i20 = getelementptr i8, ptr %25, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #7, !srcloc !199
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %32 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.41, i32 noundef %31) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %36 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %master.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %arrayidx.i23 = getelementptr i32, ptr %39, i32 136
  %40 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i23, align 4
  %add.ptr.i24 = getelementptr i8, ptr %35, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 -1) #7, !srcloc !198
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_read16(ptr nocapture noundef readonly %wrp, i32 noundef %adr, ptr nocapture noundef writeonly %rdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 10000
  %spec.select.i.i = select i1 %cmp.i.i, i32 1073741822, i32 1
  %add.i = add i32 %spec.select.i.i, %0
  %base.i.i.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %master.i.i.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %2 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i.i, align 4
  %4 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %7, i32 35
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !199
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %12 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master.i.i.i, align 4
  %caps.i.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps.i.i, align 4
  %and.i.i = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  %16 = select i1 %cmp.not.i.i, i32 458752, i32 14
  %17 = and i32 %16, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i60 = icmp eq i32 %17, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  br i1 %cmp.i60, label %if.then.i.if.end_crit_edge, label %if.then

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %do.body.i
  br i1 %cmp.i60, label %if.end.i.if.end_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %if.then.i
  %18 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i.i, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %13, align 4
  %arrayidx.i.i.i.i = getelementptr i32, ptr %21, i32 35
  %22 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %19, i32 %23
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !199
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %26 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master.i.i.i, align 4
  %caps.i.i.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %caps.i.i.i, align 4
  %and.i.i.i = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %retval.0.in.v.i.i.i = select i1 %cmp.not.i.i.i, i32 16, i32 1
  %retval.0.in.i.i.i = lshr i32 %25, %retval.0.in.v.i.i.i
  %retval.0.i.i.i = and i32 %retval.0.in.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %retval.0.i.i.i)
  %cmp.i.i32 = icmp eq i32 %retval.0.i.i.i, 6
  br i1 %cmp.i.i32, label %if.then.i33, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i33:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i.i, align 4
  %32 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %arrayidx.i.i = getelementptr i32, ptr %35, i32 36
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #7, !srcloc !198
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %38 = shl i32 %adr, 15
  %shl = and i32 %38, -65536
  %val.0 = select i1 %cmp.not.i.i, i32 %shl, i32 %adr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %val.0) #7
  %40 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i.i, align 4
  %42 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %master.i.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %arrayidx.i = getelementptr i32, ptr %45, i32 34
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %39) #7, !srcloc !198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %call.i.i35 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i.i35)
  %cmp.i.i36 = icmp ult i32 %call.i.i35, 10000
  %spec.select.i.i37 = select i1 %cmp.i.i36, i32 1073741822, i32 1
  %add.i38 = add i32 %spec.select.i.i37, %48
  br label %do.body.i42

do.body.i42:                                      ; preds = %if.end.i45.do.body.i42_crit_edge, %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub.i39 = sub i32 %add.i38, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i39)
  %cmp.i40 = icmp slt i32 %sub.i39, 0
  %50 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i.i, align 4
  %52 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %master.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %arrayidx.i.i.i63 = getelementptr i32, ptr %55, i32 35
  %56 = ptrtoint ptr %arrayidx.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i.i63, align 4
  %add.ptr.i.i.i64 = getelementptr i8, ptr %51, i32 %57
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i64) #7, !srcloc !199
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %60 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %master.i.i.i, align 4
  %caps.i.i65 = getelementptr inbounds %struct.pmic_wrapper_type, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %caps.i.i65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %caps.i.i65, align 4
  %and.i.i66 = and i32 %63, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i66)
  %cmp.not.i.i67 = icmp eq i32 %and.i.i66, 0
  %retval.0.in.v.i.i = select i1 %cmp.not.i.i67, i32 16, i32 1
  %retval.0.in.i.i = lshr i32 %59, %retval.0.in.v.i.i
  %retval.0.i.i = and i32 %retval.0.in.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %retval.0.i.i)
  %cmp.i68 = icmp eq i32 %retval.0.i.i, 6
  br i1 %cmp.i40, label %if.then.i44, label %if.end.i45

if.then.i44:                                      ; preds = %do.body.i42
  br i1 %cmp.i68, label %if.then.i44.if.end6_crit_edge, label %if.then.i44.cleanup_crit_edge

if.then.i44.cleanup_crit_edge:                    ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i44.if.end6_crit_edge:                    ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.i45:                                       ; preds = %do.body.i42
  br i1 %cmp.i68, label %if.end.i45.if.end6_crit_edge, label %if.end.i45.do.body.i42_crit_edge

if.end.i45.do.body.i42_crit_edge:                 ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i42

if.end.i45.if.end6_crit_edge:                     ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %if.end.i45.if.end6_crit_edge, %if.then.i44.if.end6_crit_edge
  %64 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i.i.i, align 4
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %61, align 4
  br i1 %cmp.not.i.i67, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i50 = getelementptr i32, ptr %67, i32 62
  %68 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i50, align 4
  %add.ptr.i51 = getelementptr i8, ptr %65, i32 %69
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #7, !srcloc !199
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  br label %if.end15

if.else13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i54 = getelementptr i32, ptr %67, i32 35
  %72 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %65, i32 %73
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #7, !srcloc !199
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then11
  %val.1 = phi i32 [ %71, %if.then11 ], [ %75, %if.else13 ]
  %and17 = and i32 %val.1, 65535
  %76 = ptrtoint ptr %rdata to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and17, ptr %rdata, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %77 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i.i.i, align 4
  %79 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %master.i.i.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %arrayidx.i58 = getelementptr i32, ptr %82, i32 36
  %83 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i58, align 4
  %add.ptr.i59 = getelementptr i8, ptr %78, i32 %84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 16777216) #7, !srcloc !198
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then.i44.cleanup_crit_edge, %if.then.i33, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -110, %if.then.cleanup_crit_edge ], [ -110, %if.then.i33 ], [ -110, %if.then.i44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_write16(ptr nocapture noundef readonly %wrp, i32 noundef %adr, i32 noundef %wdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 10000
  %spec.select.i.i = select i1 %cmp.i.i, i32 1073741822, i32 1
  %add.i = add i32 %spec.select.i.i, %0
  %base.i.i.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %master.i.i.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %2 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i.i, align 4
  %4 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %7, i32 35
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !199
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %12 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master.i.i.i, align 4
  %caps.i.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps.i.i, align 4
  %and.i.i = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  %16 = select i1 %cmp.not.i.i, i32 458752, i32 14
  %17 = and i32 %16, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i24 = icmp eq i32 %17, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  br i1 %cmp.i24, label %if.then.i.if.end_crit_edge, label %if.then

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %do.body.i
  br i1 %cmp.i24, label %if.end.i.if.end_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %if.then.i
  %18 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i.i, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %13, align 4
  %arrayidx.i.i.i.i = getelementptr i32, ptr %21, i32 35
  %22 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %19, i32 %23
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !199
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %26 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master.i.i.i, align 4
  %caps.i.i.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %caps.i.i.i, align 4
  %and.i.i.i = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %retval.0.in.v.i.i.i = select i1 %cmp.not.i.i.i, i32 16, i32 1
  %retval.0.in.i.i.i = lshr i32 %25, %retval.0.in.v.i.i.i
  %retval.0.i.i.i = and i32 %retval.0.in.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %retval.0.i.i.i)
  %cmp.i.i13 = icmp eq i32 %retval.0.i.i.i, 6
  br i1 %cmp.i.i13, label %if.then.i14, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i14:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i.i, align 4
  %32 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %arrayidx.i.i = getelementptr i32, ptr %35, i32 36
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #7, !srcloc !198
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  br i1 %cmp.not.i.i, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %wdata) #7
  %39 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i.i, align 4
  %41 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %master.i.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %arrayidx.i = getelementptr i32, ptr %44, i32 61
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %38) #7, !srcloc !198
  %or = or i32 %adr, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %48 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i.i, align 4
  %50 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %master.i.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %arrayidx.i18 = getelementptr i32, ptr %53, i32 34
  %54 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %49, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %47) #7, !srcloc !198
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %56 = shl i32 %adr, 15
  %shl = and i32 %56, 2147418112
  %or2 = or i32 %shl, %wdata
  %or3 = or i32 %or2, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %or3) #7
  %58 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i.i.i, align 4
  %60 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %master.i.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %arrayidx.i22 = getelementptr i32, ptr %63, i32 34
  %64 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i22, align 4
  %add.ptr.i23 = getelementptr i8, ptr %59, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %57) #7, !srcloc !198
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then1, %if.then.i14, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ 0, %if.then1 ], [ -110, %if.then.cleanup_crit_edge ], [ -110, %if.then.i14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_regmap_read(ptr noundef %context, i32 noundef %adr, ptr noundef %rdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slave.i = getelementptr inbounds %struct.pmic_wrapper, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave.i, align 4
  %pwrap_read.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pwrap_read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrap_read.i, align 4
  %call.i = tail call i32 %3(ptr noundef %context, i32 noundef %adr, ptr noundef %rdata) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_regmap_write(ptr noundef %context, i32 noundef %adr, i32 noundef %wdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slave.i = getelementptr inbounds %struct.pmic_wrapper, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave.i, align 4
  %pwrap_write.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pwrap_write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrap_write.i, align 4
  %call.i = tail call i32 %3(ptr noundef %context, i32 noundef %adr, i32 noundef %wdata) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_read32(ptr nocapture noundef readonly %wrp, i32 noundef %adr, ptr nocapture noundef %rdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rdata, align 4
  %base.i.i.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %master.i.i.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 3
  %shl1 = shl i32 %adr, 16
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %entry
  %msb.071 = phi i32 [ 0, %entry ], [ %inc, %if.end5.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 10000
  %spec.select.i.i = select i1 %cmp.i.i, i32 1073741822, i32 1
  %add.i = add i32 %spec.select.i.i, %1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %3 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i.i, align 4
  %5 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master.i.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %8, i32 35
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !199
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %13 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master.i.i.i, align 4
  %caps.i.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %caps.i.i, align 4
  %and.i.i = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  %17 = select i1 %cmp.not.i.i, i32 458752, i32 14
  %18 = and i32 %17, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i45 = icmp eq i32 %18, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  br i1 %cmp.i45, label %if.then.i.if.end_crit_edge, label %if.then

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %do.body.i
  br i1 %cmp.i45, label %if.end.i.if.end_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %if.then.i
  %19 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i.i, align 4
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %14, align 4
  %arrayidx.i.i.i.i = getelementptr i32, ptr %22, i32 35
  %23 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 %24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !199
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %27 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master.i.i.i, align 4
  %caps.i.i.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %caps.i.i.i, align 4
  %and.i.i.i = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %retval.0.in.v.i.i.i = select i1 %cmp.not.i.i.i, i32 16, i32 1
  %retval.0.in.i.i.i = lshr i32 %26, %retval.0.in.v.i.i.i
  %retval.0.i.i.i = and i32 %retval.0.in.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %retval.0.i.i.i)
  %cmp.i.i21 = icmp eq i32 %retval.0.i.i.i, 6
  br i1 %cmp.i.i21, label %if.then.i22, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i22:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i.i, align 4
  %33 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master.i.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %arrayidx.i.i = getelementptr i32, ptr %36, i32 36
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #7, !srcloc !198
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %shl = shl i32 %msb.071, 30
  %or = or i32 %shl, %shl1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %40 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i.i, align 4
  %42 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %master.i.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %arrayidx.i = getelementptr i32, ptr %45, i32 34
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %39) #7, !srcloc !198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %call.i.i24 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i.i24)
  %cmp.i.i25 = icmp ult i32 %call.i.i24, 10000
  %spec.select.i.i26 = select i1 %cmp.i.i25, i32 1073741822, i32 1
  %add.i27 = add i32 %spec.select.i.i26, %48
  br label %do.body.i31

do.body.i31:                                      ; preds = %if.end.i34.do.body.i31_crit_edge, %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub.i28 = sub i32 %add.i27, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i28)
  %cmp.i29 = icmp slt i32 %sub.i28, 0
  %50 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i.i, align 4
  %52 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %master.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %arrayidx.i.i.i48 = getelementptr i32, ptr %55, i32 35
  %56 = ptrtoint ptr %arrayidx.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i.i48, align 4
  %add.ptr.i.i.i49 = getelementptr i8, ptr %51, i32 %57
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i49) #7, !srcloc !199
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %60 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %master.i.i.i, align 4
  %caps.i.i50 = getelementptr inbounds %struct.pmic_wrapper_type, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %caps.i.i50 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %caps.i.i50, align 4
  %and.i.i51 = and i32 %63, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i51)
  %cmp.not.i.i52 = icmp eq i32 %and.i.i51, 0
  %retval.0.in.v.i.i = select i1 %cmp.not.i.i52, i32 16, i32 1
  %retval.0.in.i.i = lshr i32 %59, %retval.0.in.v.i.i
  %retval.0.i.i = and i32 %retval.0.in.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %retval.0.i.i)
  %cmp.i53 = icmp eq i32 %retval.0.i.i, 6
  br i1 %cmp.i29, label %if.then.i33, label %if.end.i34

if.then.i33:                                      ; preds = %do.body.i31
  br i1 %cmp.i53, label %if.then.i33.if.end5_crit_edge, label %if.then.i33.cleanup_crit_edge

if.then.i33.cleanup_crit_edge:                    ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i33.if.end5_crit_edge:                    ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end.i34:                                       ; preds = %do.body.i31
  br i1 %cmp.i53, label %if.end.i34.if.end5_crit_edge, label %if.end.i34.do.body.i31_crit_edge

if.end.i34.do.body.i31_crit_edge:                 ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i31

if.end.i34.if.end5_crit_edge:                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %if.end.i34.if.end5_crit_edge, %if.then.i33.if.end5_crit_edge
  %64 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i.i.i, align 4
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %61, align 4
  %arrayidx.i39 = getelementptr i32, ptr %67, i32 35
  %68 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i39, align 4
  %add.ptr.i40 = getelementptr i8, ptr %65, i32 %69
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %71 = and i32 %70, -65536
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %mul = shl i32 %msb.071, 4
  %shl7 = shl i32 %72, %mul
  %73 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rdata, align 4
  %add = add i32 %shl7, %74
  store i32 %add, ptr %rdata, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %75 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i.i.i, align 4
  %77 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %master.i.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %arrayidx.i43 = getelementptr i32, ptr %80, i32 36
  %81 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i43, align 4
  %add.ptr.i44 = getelementptr i8, ptr %76, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 16777216) #7, !srcloc !198
  %inc = add nuw nsw i32 %msb.071, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %if.end5.cleanup_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5.cleanup_crit_edge, %if.then.i33.cleanup_crit_edge, %if.then.i22, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then.cleanup_crit_edge ], [ -110, %if.then.i22 ], [ -110, %if.then.i33.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_write32(ptr noundef %wrp, i32 noundef %adr, i32 noundef %wdata) #2 align 64 {
entry:
  %rdata = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdata) #7
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rdata, align 4, !annotation !201
  %base.i.i.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %master.i.i.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 3
  %shl1 = shl i32 %adr, 16
  %slave.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 10000
  %spec.select.i.i = select i1 %cmp.i.i, i32 1073741822, i32 1
  %add.i = add i32 %spec.select.i.i, %1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %3 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i.i, align 4
  %5 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master.i.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %8, i32 35
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %10
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !199
  %12 = call i32 @llvm.bswap.i32(i32 %11) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %13 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master.i.i.i, align 4
  %caps.i.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %caps.i.i, align 4
  %and.i.i = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  %17 = select i1 %cmp.not.i.i, i32 458752, i32 14
  %18 = and i32 %17, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i22 = icmp eq i32 %18, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  br i1 %cmp.i22, label %if.then.i.for.inc_crit_edge, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i:                                         ; preds = %do.body.i
  br i1 %cmp.i22, label %if.end.i.for.inc_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %if.then.i.1.if.then_crit_edge, %if.then.i.if.then_crit_edge
  %.lcssa.lcssa = phi ptr [ %14, %if.then.i.if.then_crit_edge ], [ %65, %if.then.i.1.if.then_crit_edge ]
  %19 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i.i, align 4
  %21 = ptrtoint ptr %.lcssa.lcssa to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.lcssa.lcssa, align 4
  %arrayidx.i.i.i.i = getelementptr i32, ptr %22, i32 35
  %23 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 %24
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !199
  %26 = call i32 @llvm.bswap.i32(i32 %25) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %27 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master.i.i.i, align 4
  %caps.i.i.i = getelementptr inbounds %struct.pmic_wrapper_type, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %caps.i.i.i, align 4
  %and.i.i.i = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %retval.0.in.v.i.i.i = select i1 %cmp.not.i.i.i, i32 16, i32 1
  %retval.0.in.i.i.i = lshr i32 %26, %retval.0.in.v.i.i.i
  %retval.0.i.i.i = and i32 %retval.0.in.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %retval.0.i.i.i)
  %cmp.i.i19 = icmp eq i32 %retval.0.i.i.i, 6
  br i1 %cmp.i.i19, label %if.then.i20, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i20:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i.i, align 4
  %33 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master.i.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %arrayidx.i.i = getelementptr i32, ptr %36, i32 36
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %38
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #7, !srcloc !198
  br label %cleanup

for.inc:                                          ; preds = %if.end.i.for.inc_crit_edge, %if.then.i.for.inc_crit_edge
  %and = and i32 %wdata, 65535
  %or2 = or i32 %shl1, %and
  %or3 = or i32 %or2, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %39 = call i32 @llvm.bswap.i32(i32 %or3) #7
  %40 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i.i, align 4
  %42 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %master.i.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %arrayidx.i = getelementptr i32, ptr %45, i32 34
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 %47
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %39) #7, !srcloc !198
  %48 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %slave.i, align 4
  %pwrap_read.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %pwrap_read.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pwrap_read.i, align 4
  %call.i = call i32 %51(ptr noundef %wrp, i32 noundef %adr, ptr noundef nonnull %rdata) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %call.i.i.1 = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i.i.1)
  %cmp.i.i.1 = icmp ult i32 %call.i.i.1, 10000
  %spec.select.i.i.1 = select i1 %cmp.i.i.1, i32 1073741822, i32 1
  %add.i.1 = add i32 %spec.select.i.i.1, %52
  br label %do.body.i.1

do.body.i.1:                                      ; preds = %if.end.i.1.do.body.i.1_crit_edge, %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %sub.i.1 = sub i32 %add.i.1, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.1)
  %cmp.i.1 = icmp slt i32 %sub.i.1, 0
  %54 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i.i.i, align 4
  %56 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %master.i.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %arrayidx.i.i.i.1 = getelementptr i32, ptr %59, i32 35
  %60 = ptrtoint ptr %arrayidx.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i.i.1, align 4
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %55, i32 %61
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.1) #7, !srcloc !199
  %63 = call i32 @llvm.bswap.i32(i32 %62) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %64 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %master.i.i.i, align 4
  %caps.i.i.1 = getelementptr inbounds %struct.pmic_wrapper_type, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %caps.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %caps.i.i.1, align 4
  %and.i.i.1 = and i32 %67, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.1)
  %cmp.not.i.i.1 = icmp eq i32 %and.i.i.1, 0
  %68 = select i1 %cmp.not.i.i.1, i32 458752, i32 14
  %69 = and i32 %68, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i22.1 = icmp eq i32 %69, 0
  br i1 %cmp.i.1, label %if.then.i.1, label %if.end.i.1

if.end.i.1:                                       ; preds = %do.body.i.1
  br i1 %cmp.i22.1, label %if.end.i.1.for.inc.1_crit_edge, label %if.end.i.1.do.body.i.1_crit_edge

if.end.i.1.do.body.i.1_crit_edge:                 ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.1

if.end.i.1.for.inc.1_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.i.1:                                      ; preds = %do.body.i.1
  br i1 %cmp.i22.1, label %if.then.i.1.for.inc.1_crit_edge, label %if.then.i.1.if.then_crit_edge

if.then.i.1.if.then_crit_edge:                    ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.i.1.for.inc.1_crit_edge:                  ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.i.1.for.inc.1_crit_edge, %if.end.i.1.for.inc.1_crit_edge
  %shr.1 = lshr i32 %wdata, 16
  %or.1 = or i32 %shl1, %shr.1
  %or3.1 = or i32 %or.1, -1073741824
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %70 = call i32 @llvm.bswap.i32(i32 %or3.1) #7
  %71 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i.i.i, align 4
  %73 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %master.i.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %arrayidx.i.1 = getelementptr i32, ptr %76, i32 34
  %77 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %72, i32 %78
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %70) #7, !srcloc !198
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1, %if.then.i20, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then.cleanup_crit_edge ], [ -110, %if.then.i20 ], [ 0, %for.inc.1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdata) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pwrap_init_sidly(ptr noundef %wrp) unnamed_addr #2 align 64 {
entry:
  %rdata = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdata) #7
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rdata, align 4, !annotation !201
  %base.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %master.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 3
  %slave = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.039 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %pass.038 = phi i32 [ 0, %entry ], [ %pass.1, %for.inc.for.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %1 = call i32 @llvm.bswap.i32(i32 %i.039) #7
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #7, !srcloc !198
  %10 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slave, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %pwrap_read.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %11, i32 0, i32 4
  %16 = ptrtoint ptr %pwrap_read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pwrap_read.i, align 4
  %call.i = call i32 %17(ptr noundef %wrp, i32 noundef %15, ptr noundef nonnull %rdata) #7
  %18 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23205, i32 %19)
  %cmp1 = icmp eq i32 %19, 23205
  br i1 %cmp1, label %do.body, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrap_init_sidly.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrap_init_sidly, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !196

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %wrp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wrp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwrap_init_sidly.__UNIQUE_ID_ddebug187, ptr noundef %21, ptr noundef nonnull @.str.21, i32 noundef %i.039) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %shl = shl nuw nsw i32 1, %i.039
  %or = or i32 %shl, %pass.038
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %pass.1 = phi i32 [ %or, %do.end ], [ %pass.038, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %22 = lshr i32 11809, %pass.1
  %23 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp8.not = icmp eq i32 %23, 0
  br i1 %cmp8.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %wrp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wrp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.22, i32 noundef %pass.1) #10
  br label %cleanup

if.end15:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx7 = getelementptr [16 x i8], ptr @__const.pwrap_init_sidly.dly, i32 0, i32 %pass.1
  %26 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx7, align 1
  %conv = sext i8 %27 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %28 = call i32 @llvm.bswap.i32(i32 %conv) #7
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %31 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %master.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %arrayidx.i35 = getelementptr i32, ptr %34, i32 3
  %35 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i35, align 4
  %add.ptr.i36 = getelementptr i8, ptr %30, i32 %36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %28) #7, !srcloc !198
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end13
  %retval.0 = phi i32 [ -5, %do.end13 ], [ 0, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdata) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_mt2701_init_reg_clock(ptr noundef %wrp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slave = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 4
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 4
  %type = getelementptr inbounds %struct.pwrap_slv_type, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 6, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %master.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 3
  %7 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %arrayidx.i = getelementptr i32, ptr %10, i32 105
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 201326592) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %15 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %arrayidx.i.i = getelementptr i32, ptr %18, i32 4
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 67108864) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %23 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %arrayidx.i9.i = getelementptr i32, ptr %26, i32 5
  %27 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i9.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %22, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 0) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %31 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %master.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %arrayidx.i13.i = getelementptr i32, ptr %34, i32 6
  %35 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i13.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %30, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 33554432) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %39 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %master.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %arrayidx.i17.i = getelementptr i32, ptr %42, i32 7
  %43 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i17.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %38, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 33554432) #7, !srcloc !198
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %base.i9 = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %45 = ptrtoint ptr %base.i9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i9, align 4
  %master.i10 = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 3
  %47 = ptrtoint ptr %master.i10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %master.i10, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %arrayidx.i11 = getelementptr i32, ptr %50, i32 105
  %51 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %46, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 134217728) #7, !srcloc !198
  %53 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %slave, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %arrayidx = getelementptr i32, ptr %56, i32 13
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx, align 4
  %pwrap_write.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %54, i32 0, i32 5
  %59 = ptrtoint ptr %pwrap_write.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pwrap_write.i, align 4
  %call.i = tail call i32 %60(ptr noundef %wrp, i32 noundef %58, i32 noundef 8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %61 = ptrtoint ptr %base.i9 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i9, align 4
  %63 = ptrtoint ptr %master.i10 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %master.i10, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %arrayidx.i.i15 = getelementptr i32, ptr %66, i32 4
  %67 = ptrtoint ptr %arrayidx.i.i15 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i15, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %62, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16, i32 83886080) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %69 = ptrtoint ptr %base.i9 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i9, align 4
  %71 = ptrtoint ptr %master.i10 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %master.i10, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %arrayidx.i9.i17 = getelementptr i32, ptr %74, i32 5
  %75 = ptrtoint ptr %arrayidx.i9.i17 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i9.i17, align 4
  %add.ptr.i10.i18 = getelementptr i8, ptr %70, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i18, i32 0) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %77 = ptrtoint ptr %base.i9 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i9, align 4
  %79 = ptrtoint ptr %master.i10 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %master.i10, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %arrayidx.i13.i19 = getelementptr i32, ptr %82, i32 6
  %83 = ptrtoint ptr %arrayidx.i13.i19 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i13.i19, align 4
  %add.ptr.i14.i20 = getelementptr i8, ptr %78, i32 %84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i20, i32 33554432) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %85 = ptrtoint ptr %base.i9 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i9, align 4
  %87 = ptrtoint ptr %master.i10 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %master.i10, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %arrayidx.i17.i21 = getelementptr i32, ptr %90, i32 7
  %91 = ptrtoint ptr %arrayidx.i17.i21 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i17.i21, align 4
  %add.ptr.i18.i22 = getelementptr i8, ptr %86, i32 %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i22, i32 33554432) #7, !srcloc !198
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_mt2701_init_soc_specific(ptr nocapture noundef readonly %wrp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slave = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 4
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 4
  %type = getelementptr inbounds %struct.pwrap_slv_type, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cond = icmp eq i32 %3, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %master.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 3
  %6 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %arrayidx.i = getelementptr i32, ptr %9, i32 63
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1812398080) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %arrayidx.i8 = getelementptr i32, ptr %17, i32 64
  %18 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %13, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 8388608) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %22 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %arrayidx.i12 = getelementptr i32, ptr %25, i32 65
  %26 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i12, align 4
  %add.ptr.i13 = getelementptr i8, ptr %21, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 738656256) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %30 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %master.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %arrayidx.i16 = getelementptr i32, ptr %33, i32 66
  %34 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i16, align 4
  %add.ptr.i17 = getelementptr i8, ptr %29, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 772210688) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %38 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %master.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %arrayidx.i20 = getelementptr i32, ptr %41, i32 67
  %42 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i20, align 4
  %add.ptr.i21 = getelementptr i8, ptr %37, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 805765120) #7, !srcloc !198
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_common_init_reg_clock(ptr nocapture noundef readonly %wrp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 3
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %type = getelementptr inbounds %struct.pmic_wrapper_type, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 6, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %base.i.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %arrayidx.i.i = getelementptr i32, ptr %10, i32 4
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %15 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %arrayidx.i9.i = getelementptr i32, ptr %18, i32 5
  %19 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i9.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %14, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 67108864) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i, align 4
  %23 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %arrayidx.i13.i = getelementptr i32, ptr %26, i32 6
  %27 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i13.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %22, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 33554432) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i, align 4
  %31 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %master, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %arrayidx.i17.i = getelementptr i32, ptr %34, i32 7
  %35 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i17.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %30, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 33554432) #7, !srcloc !198
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %39 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %master, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %arrayidx.i = getelementptr i32, ptr %42, i32 94
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %47 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %master, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %arrayidx.i.i7 = getelementptr i32, ptr %50, i32 4
  %51 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i7, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %46, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8, i32 0) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %55 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %master, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %arrayidx.i9.i9 = getelementptr i32, ptr %58, i32 5
  %59 = ptrtoint ptr %arrayidx.i9.i9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i9.i9, align 4
  %add.ptr.i10.i10 = getelementptr i8, ptr %54, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i10, i32 67108864) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  %63 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %master, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %arrayidx.i13.i11 = getelementptr i32, ptr %66, i32 6
  %67 = ptrtoint ptr %arrayidx.i13.i11 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i13.i11, align 4
  %add.ptr.i14.i12 = getelementptr i8, ptr %62, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i12, i32 0) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %69 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i, align 4
  %71 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %master, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %arrayidx.i17.i13 = getelementptr i32, ptr %74, i32 7
  %75 = ptrtoint ptr %arrayidx.i17.i13 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i17.i13, align 4
  %add.ptr.i18.i14 = getelementptr i8, ptr %70, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i14, i32 0) #7, !srcloc !198
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_mt7622_init_soc_specific(ptr nocapture noundef readonly %wrp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %master.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 3
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 8
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %arrayidx.i4 = getelementptr i32, ptr %13, i32 93
  %14 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %9, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 8) #7, !srcloc !198
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_mt8135_init_soc_specific(ptr noundef %wrp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %master.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 3
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 95
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %arrayidx.i47 = getelementptr i32, ptr %13, i32 96
  %14 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i47, align 4
  %add.ptr.i48 = getelementptr i8, ptr %9, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 -65536) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  tail call void @arm_heavy_mb() #7
  %bridge_base = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 9
  %16 = ptrtoint ptr %bridge_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bridge_base, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2130706432) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %bridge_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bridge_base, align 4
  %add.ptr4 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %bridge_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bridge_base, align 4
  %add.ptr8 = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 16777216) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %bridge_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bridge_base, align 4
  %add.ptr12 = getelementptr i8, ptr %23, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 16777216) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %bridge_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bridge_base, align 4
  %add.ptr16 = getelementptr i8, ptr %25, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 -65536) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %bridge_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bridge_base, align 4
  %add.ptr20 = getelementptr i8, ptr %27, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 16777216) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %bridge_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bridge_base, align 4
  %add.ptr24 = getelementptr i8, ptr %29, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 -16318464) #7, !srcloc !198
  %slave = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 4
  %30 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slave, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %arrayidx = getelementptr i32, ptr %33, i32 49
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  %pwrap_write.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %31, i32 0, i32 5
  %36 = ptrtoint ptr %pwrap_write.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pwrap_write.i, align 4
  %call.i = tail call i32 %37(ptr noundef %wrp, i32 noundef %35, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end31_crit_edge

entry.do.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

lor.lhs.false:                                    ; preds = %entry
  %38 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %slave, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %arrayidx27 = getelementptr i32, ptr %41, i32 50
  %42 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx27, align 4
  %pwrap_write.i50 = getelementptr inbounds %struct.pwrap_slv_type, ptr %39, i32 0, i32 5
  %44 = ptrtoint ptr %pwrap_write.i50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pwrap_write.i50, align 4
  %call.i51 = tail call i32 %45(ptr noundef %wrp, i32 noundef %43, i32 noundef 65535) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool29.not = icmp eq i32 %call.i51, 0
  br i1 %tobool29.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.do.end31_crit_edge

lor.lhs.false.do.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end31:                                         ; preds = %lor.lhs.false.do.end31_crit_edge, %entry.do.end31_crit_edge
  %46 = ptrtoint ptr %wrp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wrp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.43) #10
  br label %return

return:                                           ; preds = %do.end31, %lor.lhs.false.return_crit_edge
  %retval.0 = phi i32 [ -14, %do.end31 ], [ 0, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_mt8173_init_soc_specific(ptr noundef %wrp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slave = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 4
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 49
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %pwrap_write.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %pwrap_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwrap_write.i, align 4
  %call.i = tail call i32 %7(ptr noundef %wrp, i32 noundef %5, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slave, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %arrayidx3 = getelementptr i32, ptr %11, i32 50
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3, align 4
  %pwrap_write.i11 = getelementptr inbounds %struct.pwrap_slv_type, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %pwrap_write.i11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pwrap_write.i11, align 4
  %call.i12 = tail call i32 %15(ptr noundef %wrp, i32 noundef %13, i32 noundef 65535) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool5.not = icmp eq i32 %call.i12, 0
  br i1 %tobool5.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %16 = ptrtoint ptr %wrp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wrp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.43) #10
  br label %return

return:                                           ; preds = %do.end, %lor.lhs.false.return_crit_edge
  %retval.0 = phi i32 [ -14, %do.end ], [ 0, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrap_mt8183_init_soc_specific(ptr noundef %wrp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %master.i = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 3
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 9
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -184549376) #7, !srcloc !198
  %slave = getelementptr inbounds %struct.pmic_wrapper, ptr %wrp, i32 0, i32 4
  %8 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slave, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %pwrap_write.i = getelementptr inbounds %struct.pwrap_slv_type, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %pwrap_write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pwrap_write.i, align 4
  %call.i = tail call i32 %15(ptr noundef %wrp, i32 noundef %13, i32 noundef 1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %18 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %arrayidx.i12 = getelementptr i32, ptr %21, i32 45
  %22 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i12, align 4
  %add.ptr.i13 = getelementptr i8, ptr %17, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 16777216) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %26 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %arrayidx.i16 = getelementptr i32, ptr %29, i32 41
  %30 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i16, align 4
  %add.ptr.i17 = getelementptr i8, ptr %25, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 369360896) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %34 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %master.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %arrayidx.i20 = getelementptr i32, ptr %37, i32 59
  %38 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i20, align 4
  %add.ptr.i21 = getelementptr i8, ptr %33, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 772014080) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %42 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %master.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %arrayidx.i24 = getelementptr i32, ptr %45, i32 130
  %46 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i24, align 4
  %add.ptr.i25 = getelementptr i8, ptr %41, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 16777216) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %50 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %master.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %arrayidx.i28 = getelementptr i32, ptr %53, i32 132
  %54 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i28, align 4
  %add.ptr.i29 = getelementptr i8, ptr %49, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 16777216) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  %58 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %master.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %arrayidx.i32 = getelementptr i32, ptr %61, i32 131
  %62 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i32, align 4
  %add.ptr.i33 = getelementptr i8, ptr %57, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 16777216) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %66 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %master.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %arrayidx.i36 = getelementptr i32, ptr %69, i32 133
  %70 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i36, align 4
  %add.ptr.i37 = getelementptr i8, ptr %65, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 16777216) #7, !srcloc !198
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !165, !166, !167, !169, !171, !173, !174, !175, !177, !179, !181, !183, !185}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @__initcall__kmod_mtk_pmic_wrap__196_2284_pwrap_drv_init6, !1, !"__initcall__kmod_mtk_pmic_wrap__196_2284_pwrap_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2284, i32 1}
!2 = !{ptr @__exitcall_pwrap_drv_exit, !1, !"__exitcall_pwrap_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author197, !4, !"__UNIQUE_ID_author197", i1 false, i1 false}
!4 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2286, i32 1}
!5 = !{ptr @__UNIQUE_ID_description198, !6, !"__UNIQUE_ID_description198", i1 false, i1 false}
!6 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2287, i32 1}
!7 = !{ptr @__UNIQUE_ID_file199, !8, !"__UNIQUE_ID_file199", i1 false, i1 false}
!8 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2288, i32 1}
!9 = !{ptr @__UNIQUE_ID_license200, !8, !"__UNIQUE_ID_license200", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2278, i32 11}
!12 = !{ptr @pwrap_drv, !13, !"pwrap_drv", i1 false, i1 false}
!13 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2276, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2125, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pwrap_probe.__UNIQUE_ID_ddebug188, !15, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2139, i32 59}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2148, i32 4}
!24 = !{ptr @pwrap_probe.__UNIQUE_ID_ddebug189, !23, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2155, i32 5}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2164, i32 4}
!29 = !{ptr @pwrap_probe.__UNIQUE_ID_ddebug190, !28, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2170, i32 40}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2172, i32 3}
!34 = !{ptr @pwrap_probe.__UNIQUE_ID_ddebug191, !33, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2177, i32 41}
!37 = !{ptr @pwrap_probe.__UNIQUE_ID_ddebug192, !38, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!38 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2179, i32 3}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2205, i32 4}
!41 = !{ptr @pwrap_probe.__UNIQUE_ID_ddebug193, !40, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2216, i32 3}
!44 = !{ptr @pwrap_probe.__UNIQUE_ID_ddebug194, !43, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!45 = !{ptr @pwrap_probe._key, !46, !"_key", i1 false, i1 false}
!46 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2253, i32 16}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2261, i32 3}
!50 = !{ptr @pwrap_probe.__UNIQUE_ID_ddebug195, !49, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!51 = !{ptr @of_slave_match_tbl, !52, !"of_slave_match_tbl", i1 false, i1 false}
!52 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1900, i32 34}
!53 = !{ptr @pmic_mt6323, !54, !"pmic_mt6323", i1 false, i1 false}
!54 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1835, i32 36}
!55 = !{ptr @mt6323_regs, !56, !"mt6323_regs", i1 false, i1 false}
!56 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 150, i32 18}
!57 = !{ptr @pwrap_regmap_config16, !58, !"pwrap_regmap_config16", i1 false, i1 false}
!58 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1817, i32 35}
!59 = !{ptr @pmic_mt6351, !60, !"pmic_mt6351", i1 false, i1 false}
!60 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1845, i32 36}
!61 = !{ptr @mt6351_regs, !62, !"mt6351_regs", i1 false, i1 false}
!62 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 167, i32 18}
!63 = !{ptr @pmic_mt6357, !64, !"pmic_mt6357", i1 false, i1 false}
!64 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1854, i32 36}
!65 = !{ptr @mt6357_regs, !66, !"mt6357_regs", i1 false, i1 false}
!66 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 182, i32 18}
!67 = !{ptr @pmic_mt6358, !68, !"pmic_mt6358", i1 false, i1 false}
!68 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1863, i32 36}
!69 = !{ptr @mt6358_regs, !70, !"mt6358_regs", i1 false, i1 false}
!70 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 197, i32 18}
!71 = !{ptr @pmic_mt6359, !72, !"pmic_mt6359", i1 false, i1 false}
!72 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1872, i32 36}
!73 = !{ptr @mt6359_regs, !74, !"mt6359_regs", i1 false, i1 false}
!74 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 225, i32 18}
!75 = !{ptr @pmic_mt6380, !76, !"pmic_mt6380", i1 false, i1 false}
!76 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1881, i32 36}
!77 = !{ptr @pwrap_regmap_config32, !78, !"pwrap_regmap_config32", i1 false, i1 false}
!78 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1826, i32 35}
!79 = !{ptr @pmic_mt6397, !80, !"pmic_mt6397", i1 false, i1 false}
!80 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1890, i32 36}
!81 = !{ptr @mt6397_regs, !82, !"mt6397_regs", i1 false, i1 false}
!82 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 261, i32 18}
!83 = !{ptr @.str.16, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1360, i32 3}
!85 = !{ptr @.str.17, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.18, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.19, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @pwrap_reset_spislave._entry, !84, !"_entry", i1 false, i1 false}
!89 = !{ptr @pwrap_reset_spislave._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.20, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1390, i32 4}
!92 = !{ptr @.str.21, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @pwrap_init_sidly.__UNIQUE_ID_ddebug187, !91, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!94 = !{ptr @.str.22, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1396, i32 3}
!96 = !{ptr @pwrap_init_sidly._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @pwrap_init_sidly._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.23, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1418, i32 3}
!100 = !{ptr @pwrap_init_dual_io._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @pwrap_init_dual_io._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.25, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1428, i32 3}
!104 = !{ptr @pwrap_init_dual_io._entry.24, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @pwrap_init_dual_io._entry_ptr.26, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.27, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1576, i32 3}
!108 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @pwrap_init_cipher._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @pwrap_init_cipher._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1583, i32 3}
!113 = !{ptr @pwrap_init_cipher._entry.29, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @pwrap_init_cipher._entry_ptr.31, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.33, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1592, i32 3}
!117 = !{ptr @pwrap_init_cipher._entry.32, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @pwrap_init_cipher._entry_ptr.34, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.36, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1604, i32 3}
!121 = !{ptr @pwrap_init_cipher._entry.35, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @pwrap_init_cipher._entry_ptr.37, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.38, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1805, i32 2}
!125 = !{ptr @.str.39, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @pwrap_interrupt._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @pwrap_interrupt._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.41, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1810, i32 3}
!130 = !{ptr @pwrap_interrupt._entry.40, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @pwrap_interrupt._entry_ptr.42, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @of_pwrap_match_tbl, !133, !"of_pwrap_match_tbl", i1 false, i1 false}
!133 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2072, i32 34}
!134 = !{ptr @pwrap_mt2701, !135, !"pwrap_mt2701", i1 false, i1 false}
!135 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1931, i32 39}
!136 = !{ptr @mt2701_regs, !137, !"mt2701_regs", i1 false, i1 false}
!137 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 445, i32 12}
!138 = !{ptr @pwrap_mt6765, !139, !"pwrap_mt6765", i1 false, i1 false}
!139 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1944, i32 39}
!140 = !{ptr @mt6765_regs, !141, !"mt6765_regs", i1 false, i1 false}
!141 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 531, i32 12}
!142 = !{ptr @pwrap_mt6779, !143, !"pwrap_mt6779", i1 false, i1 false}
!143 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1956, i32 39}
!144 = !{ptr @mt6779_regs, !145, !"mt6779_regs", i1 false, i1 false}
!145 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 563, i32 12}
!146 = !{ptr @pwrap_mt6797, !147, !"pwrap_mt6797", i1 false, i1 false}
!147 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1969, i32 39}
!148 = !{ptr @mt6797_regs, !149, !"mt6797_regs", i1 false, i1 false}
!149 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 602, i32 12}
!150 = !{ptr @pwrap_mt6873, !151, !"pwrap_mt6873", i1 false, i1 false}
!151 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1982, i32 39}
!152 = !{ptr @mt6873_regs, !153, !"mt6873_regs", i1 false, i1 false}
!153 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 635, i32 12}
!154 = !{ptr @pwrap_mt7622, !155, !"pwrap_mt7622", i1 false, i1 false}
!155 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1995, i32 39}
!156 = !{ptr @mt7622_regs, !157, !"mt7622_regs", i1 false, i1 false}
!157 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 646, i32 12}
!158 = !{ptr @pwrap_mt8135, !159, !"pwrap_mt8135", i1 false, i1 false}
!159 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2008, i32 39}
!160 = !{ptr @mt8135_regs, !161, !"mt8135_regs", i1 false, i1 false}
!161 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 758, i32 12}
!162 = !{ptr @.str.43, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1653, i32 3}
!164 = !{ptr @.str.44, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @pwrap_mt8135_init_soc_specific._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @pwrap_mt8135_init_soc_specific._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @pwrap_mt8173, !168, !"pwrap_mt8173", i1 false, i1 false}
!168 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2021, i32 39}
!169 = !{ptr @mt8173_regs, !170, !"mt8173_regs", i1 false, i1 false}
!170 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 831, i32 12}
!171 = !{ptr @.str.45, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 1667, i32 3}
!173 = !{ptr @pwrap_mt8173_init_soc_specific._entry, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @pwrap_mt8173_init_soc_specific._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @pwrap_mt8183, !176, !"pwrap_mt8183", i1 false, i1 false}
!176 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2034, i32 39}
!177 = !{ptr @mt8183_regs, !178, !"mt8183_regs", i1 false, i1 false}
!178 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 913, i32 12}
!179 = !{ptr @pwrap_mt8195, !180, !"pwrap_mt8195", i1 false, i1 false}
!180 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2047, i32 33}
!181 = !{ptr @mt8195_regs, !182, !"mt8195_regs", i1 false, i1 false}
!182 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 964, i32 12}
!183 = !{ptr @pwrap_mt8516, !184, !"pwrap_mt8516", i1 false, i1 false}
!184 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 2060, i32 33}
!185 = !{ptr @mt8516_regs, !186, !"mt8516_regs", i1 false, i1 false}
!186 = !{!"../drivers/soc/mediatek/mtk-pmic-wrap.c", i32 981, i32 12}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{i64 2148779600, i64 2148779605, i64 2148779618, i64 2148779662, i64 2148779696, i64 2148779717}
!197 = !{i64 2153336139}
!198 = !{i64 4287313}
!199 = !{i64 4287731}
!200 = !{i64 2153335908}
!201 = !{!"auto-init"}
!202 = !{i64 2153360982}
!203 = !{i64 2153361380}
!204 = !{i64 2153354088}
!205 = !{i64 2153354496}
!206 = !{i64 2153354902}
!207 = !{i64 2153355308}
!208 = !{i64 2153355717}
!209 = !{i64 2153356132}
!210 = !{i64 2153356540}
