; ModuleID = '/llk/IR_all_yes/drivers/regulator/uniphier-regulator.c_pt.bc'
source_filename = "../drivers/regulator/uniphier-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.uniphier_regulator_soc_data = type { i32, ptr, i32, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.uniphier_regulator_priv = type { [2 x %struct.clk_bulk_data], [2 x ptr], ptr }
%struct.clk_bulk_data = type { ptr, ptr }

@__initcall__kmod_uniphier_regulator__288_218_uniphier_regulator_driver_init6 = internal global ptr @uniphier_regulator_driver_init, section ".initcall6.init", align 4
@uniphier_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_regulator_probe, ptr @uniphier_regulator_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_regulator_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_regulator_driver_exit = internal global ptr @uniphier_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [76 x i8] c"uniphier_regulator.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [68 x i8] c"uniphier_regulator.description=UniPhier Regulator Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"uniphier_regulator.file=drivers/regulator/uniphier-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [31 x i8] c"uniphier_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uniphier-regulator\00", [45 x i8] zeroinitializer }, align 32
@uniphier_regulator_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-usb3-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_usb3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-usb3-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_usb3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-usb3-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_usb3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-usb3-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_usb3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-usb3-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_usb3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-usb3-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_usb3_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/uniphier-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@uniphier_regulator_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"uniphier_regulator:87:(priv->data->regconf)->lock\00", [46 x i8] zeroinitializer }, align 32
@uniphier_pro4_usb3_data = internal constant { %struct.uniphier_regulator_soc_data, [40 x i8] } { %struct.uniphier_regulator_soc_data { i32 2, ptr @uniphier_pro4_clock_reset_names, i32 2, ptr @uniphier_pro4_clock_reset_names, ptr @uniphier_usb3_regulator_desc, ptr @uniphier_usb3_regulator_regconf }, [40 x i8] zeroinitializer }, align 32
@uniphier_pxs2_usb3_data = internal constant { %struct.uniphier_regulator_soc_data, [40 x i8] } { %struct.uniphier_regulator_soc_data { i32 1, ptr @uniphier_pxs2_clock_reset_names, i32 1, ptr @uniphier_pxs2_clock_reset_names, ptr @uniphier_usb3_regulator_desc, ptr @uniphier_usb3_regulator_regconf }, [40 x i8] zeroinitializer }, align 32
@uniphier_pro4_clock_reset_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@uniphier_usb3_regulator_desc = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.5, ptr null, ptr @.str.5, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @uniphier_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24, i32 24, i32 8, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@uniphier_usb3_regulator_regconf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gio\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@uniphier_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@uniphier_pxs2_clock_reset_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.4], [28 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [26 x i8] c"uniphier_regulator_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 210, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 214, i32 12 }
@___asan_gen_.12 = private unnamed_addr constant [25 x i8] c"uniphier_regulator_match\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 180, i32 34 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 57, i32 6 }
@___asan_gen_.18 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 87, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [24 x i8] c"uniphier_pro4_usb3_data\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 158, i32 49 }
@___asan_gen_.27 = private unnamed_addr constant [24 x i8] c"uniphier_pxs2_usb3_data\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 171, i32 49 }
@___asan_gen_.30 = private unnamed_addr constant [32 x i8] c"uniphier_pro4_clock_reset_names\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 154, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant [29 x i8] c"uniphier_usb3_regulator_desc\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 135, i32 36 }
@___asan_gen_.36 = private unnamed_addr constant [32 x i8] c"uniphier_usb3_regulator_regconf\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 147, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 155, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 155, i32 9 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 136, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant [23 x i8] c"uniphier_regulator_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 35, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [32 x i8] c"uniphier_pxs2_clock_reset_names\00", align 1
@___asan_gen_.52 = private constant [42 x i8] c"../drivers/regulator/uniphier-regulator.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 167, i32 27 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_uniphier_regulator_driver_exit, ptr @__initcall__kmod_uniphier_regulator__288_218_uniphier_regulator_driver_init6, ptr @uniphier_regulator_driver_exit, ptr @uniphier_regulator_driver, ptr @.str, ptr @uniphier_regulator_match, ptr @.str.1, ptr @uniphier_regulator_probe._key, ptr @.str.2, ptr @uniphier_pro4_usb3_data, ptr @uniphier_pxs2_usb3_data, ptr @uniphier_pro4_clock_reset_names, ptr @uniphier_usb3_regulator_desc, ptr @uniphier_usb3_regulator_regconf, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @uniphier_regulator_ops, ptr @uniphier_pxs2_clock_reset_names], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_regulator_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_regulator_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pro4_usb3_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pxs2_usb3_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pro4_clock_reset_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_usb3_regulator_desc to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_usb3_regulator_regconf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pxs2_clock_reset_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_regulator_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_regulator_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #4
  %0 = call ptr @memset(ptr %config, i32 0, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #4
  %data = getelementptr inbounds %struct.uniphier_regulator_priv, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %data, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end29, !prof !50

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 57, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %call30 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end29
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp195 = icmp sgt i32 %5, 0
  br i1 %cmp195, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %call30 to i32
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %7 = phi ptr [ %14, %for.body.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %i.0196 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %clock_names = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %clock_names to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clock_names, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %i.0196
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %arrayidx37 = getelementptr [2 x %struct.clk_bulk_data], ptr %call.i, i32 0, i32 %i.0196
  %12 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %arrayidx37, align 4
  %inc = add nuw nsw i32 %i.0196, 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa194 = phi i32 [ %5, %for.cond.preheader.for.end_crit_edge ], [ %16, %for.body.for.end_crit_edge ]
  %call41 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef %.lcssa194, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %for.cond45.preheader, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond45.preheader:                             ; preds = %for.end
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %nrsts197 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %nrsts197 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nrsts197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp47198 = icmp sgt i32 %20, 0
  br i1 %cmp47198, label %for.cond45.preheader.for.body48_crit_edge, label %for.cond45.preheader.for.end63_crit_edge

for.cond45.preheader.for.end63_crit_edge:         ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end63

for.cond45.preheader.for.body48_crit_edge:        ; preds = %for.cond45.preheader
  br label %for.body48

for.cond45:                                       ; preds = %for.body48
  %inc62 = add nuw nsw i32 %i.1199, 1
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %nrsts = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %nrsts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nrsts, align 4
  %cmp47 = icmp slt i32 %inc62, %24
  br i1 %cmp47, label %for.cond45.for.body48_crit_edge, label %for.cond45.for.end63_crit_edge

for.cond45.for.end63_crit_edge:                   ; preds = %for.cond45
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end63

for.cond45.for.body48_crit_edge:                  ; preds = %for.cond45
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body48

for.body48:                                       ; preds = %for.cond45.for.body48_crit_edge, %for.cond45.preheader.for.body48_crit_edge
  %25 = phi ptr [ %22, %for.cond45.for.body48_crit_edge ], [ %18, %for.cond45.preheader.for.body48_crit_edge ]
  %i.1199 = phi i32 [ %inc62, %for.cond45.for.body48_crit_edge ], [ 0, %for.cond45.preheader.for.body48_crit_edge ]
  %reset_names = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %reset_names to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reset_names, align 4
  %arrayidx50 = getelementptr ptr, ptr %27, i32 %i.1199
  %28 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx50, align 4
  %call.i182 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef %29, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %arrayidx52 = getelementptr %struct.uniphier_regulator_priv, ptr %call.i, i32 0, i32 1, i32 %i.1199
  %30 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i182, ptr %arrayidx52, align 4
  %cmp.i183 = icmp ugt ptr %call.i182, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %if.then56, label %for.cond45

if.then56:                                        ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %call.i182 to i32
  br label %cleanup

for.end63:                                        ; preds = %for.cond45.for.end63_crit_edge, %for.cond45.preheader.for.end63_crit_edge
  %.lcssa192 = phi ptr [ %18, %for.cond45.preheader.for.end63_crit_edge ], [ %22, %for.cond45.for.end63_crit_edge ]
  %32 = ptrtoint ptr %.lcssa192 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %.lcssa192, align 4
  %call.i184 = tail call i32 @clk_bulk_prepare(i32 noundef %33, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool.not.i = icmp eq i32 %call.i184, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end63.cleanup_crit_edge

for.end63.cleanup_crit_edge:                      ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %for.end63
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %33, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.cond72.preheader, label %if.then3.i

for.cond72.preheader:                             ; preds = %if.end.i
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %nrsts74201 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %nrsts74201 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nrsts74201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp75202 = icmp sgt i32 %37, 0
  br i1 %cmp75202, label %for.cond72.preheader.for.body76_crit_edge, label %for.cond72.preheader.for.end85_crit_edge

for.cond72.preheader.for.end85_crit_edge:         ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end85

for.cond72.preheader.for.body76_crit_edge:        ; preds = %for.cond72.preheader
  br label %for.body76

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_bulk_unprepare(i32 noundef %33, ptr noundef nonnull %call.i) #4
  br label %cleanup

for.body76:                                       ; preds = %for.inc83.for.body76_crit_edge, %for.cond72.preheader.for.body76_crit_edge
  %nr.0203 = phi i32 [ %inc84, %for.inc83.for.body76_crit_edge ], [ 0, %for.cond72.preheader.for.body76_crit_edge ]
  %arrayidx78 = getelementptr %struct.uniphier_regulator_priv, ptr %call.i, i32 0, i32 1, i32 %nr.0203
  %38 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx78, align 4
  %call79 = tail call i32 @reset_control_deassert(ptr noundef %39) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %for.inc83, label %for.body76.out_rst_assert_crit_edge

for.body76.out_rst_assert_crit_edge:              ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_rst_assert

for.inc83:                                        ; preds = %for.body76
  %inc84 = add nuw nsw i32 %nr.0203, 1
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %nrsts74 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %nrsts74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nrsts74, align 4
  %cmp75 = icmp slt i32 %inc84, %43
  br i1 %cmp75, label %for.inc83.for.body76_crit_edge, label %for.inc83.for.end85_crit_edge

for.inc83.for.end85_crit_edge:                    ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end85

for.inc83.for.body76_crit_edge:                   ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body76

for.end85:                                        ; preds = %for.inc83.for.end85_crit_edge, %for.cond72.preheader.for.end85_crit_edge
  %nr.0.lcssa = phi i32 [ 0, %for.cond72.preheader.for.end85_crit_edge ], [ %inc84, %for.inc83.for.end85_crit_edge ]
  %.lcssa = phi ptr [ %35, %for.cond72.preheader.for.end85_crit_edge ], [ %41, %for.inc83.for.end85_crit_edge ]
  %regconf = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %.lcssa, i32 0, i32 5
  %44 = ptrtoint ptr %regconf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regconf, align 4
  %call88 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call30, ptr noundef %45, ptr noundef nonnull @uniphier_regulator_probe._key, ptr noundef nonnull @.str.2) #4
  %cmp.i185 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %if.then90, label %if.end92

if.then90:                                        ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %call88 to i32
  br label %out_rst_assert

if.end92:                                         ; preds = %for.end85
  %47 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dev1, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %48 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %49 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node, align 8
  %of_node94 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %51 = ptrtoint ptr %of_node94 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %of_node94, align 4
  %regmap95 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %52 = ptrtoint ptr %regmap95 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call88, ptr %regmap95, align 4
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %desc = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %desc, align 4
  %call98 = tail call ptr @of_get_regulator_init_data(ptr noundef %dev1, ptr noundef %50, ptr noundef %56) #4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %57 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call98, ptr %init_data, align 4
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %desc100 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %desc100 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %desc100, align 4
  %call101 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %61, ptr noundef nonnull %config) #4
  %cmp.i186 = icmp ugt ptr %call101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %call101 to i32
  br label %out_rst_assert

if.end105:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %63 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

out_rst_assert:                                   ; preds = %if.then103, %if.then90, %for.body76.out_rst_assert_crit_edge
  %nr.0191 = phi i32 [ %nr.0.lcssa, %if.then90 ], [ %nr.0.lcssa, %if.then103 ], [ %nr.0203, %for.body76.out_rst_assert_crit_edge ]
  %ret.0 = phi i32 [ %46, %if.then90 ], [ %62, %if.then103 ], [ %call79, %for.body76.out_rst_assert_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.0191)
  %tobool106.not206 = icmp eq i32 %nr.0191, 0
  br i1 %tobool106.not206, label %out_rst_assert.while.end_crit_edge, label %out_rst_assert.while.body_crit_edge

out_rst_assert.while.body_crit_edge:              ; preds = %out_rst_assert
  br label %while.body

out_rst_assert.while.end_crit_edge:               ; preds = %out_rst_assert
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %out_rst_assert.while.body_crit_edge
  %nr.1207 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %nr.0191, %out_rst_assert.while.body_crit_edge ]
  %dec = add nsw i32 %nr.1207, -1
  %arrayidx108 = getelementptr %struct.uniphier_regulator_priv, ptr %call.i, i32 0, i32 1, i32 %dec
  %64 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx108, align 4
  %call109 = call i32 @reset_control_assert(ptr noundef %65) #4
  %tobool106.not = icmp eq i32 %dec, 0
  br i1 %tobool106.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %out_rst_assert.while.end_crit_edge
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  call void @clk_bulk_disable(i32 noundef %69, ptr noundef nonnull %call.i) #4
  call void @clk_bulk_unprepare(i32 noundef %69, ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end105, %if.then3.i, %for.end63.cleanup_crit_edge, %if.then56, %for.end.cleanup_crit_edge, %if.then32, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %6, %if.then32 ], [ %31, %if.then56 ], [ %ret.0, %while.end ], [ 0, %if.end105 ], [ -12, %entry.cleanup_crit_edge ], [ %call41, %for.end.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i184, %for.end63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_regulator_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.uniphier_regulator_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %nrsts8 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nrsts8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nrsts8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp sgt i32 %5, 0
  br i1 %cmp9, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.uniphier_regulator_priv, ptr %1, i32 0, i32 1, i32 %i.010
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %7) #4
  %inc = add nuw nsw i32 %i.010, 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %nrsts = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nrsts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nrsts, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %3, %entry.for.end_crit_edge ], [ %9, %for.body.for.end_crit_edge ]
  %12 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %.lcssa, align 4
  tail call void @clk_bulk_disable(i32 noundef %13, ptr noundef %1) #4
  tail call void @clk_bulk_unprepare(i32 noundef %13, ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_uniphier_regulator__288_218_uniphier_regulator_driver_init6, !1, !"__initcall__kmod_uniphier_regulator__288_218_uniphier_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/uniphier-regulator.c", i32 218, i32 1}
!2 = !{ptr @__exitcall_uniphier_regulator_driver_exit, !1, !"__exitcall_uniphier_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/uniphier-regulator.c", i32 220, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/uniphier-regulator.c", i32 221, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/uniphier-regulator.c", i32 222, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/uniphier-regulator.c", i32 214, i32 12}
!12 = !{ptr @uniphier_regulator_driver, !13, !"uniphier_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/uniphier-regulator.c", i32 210, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/uniphier-regulator.c", i32 57, i32 6}
!16 = !{ptr @uniphier_regulator_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/regulator/uniphier-regulator.c", i32 87, i32 11}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @uniphier_regulator_match, !20, !"uniphier_regulator_match", i1 false, i1 false}
!20 = !{!"../drivers/regulator/uniphier-regulator.c", i32 180, i32 34}
!21 = !{ptr @uniphier_pro4_usb3_data, !22, !"uniphier_pro4_usb3_data", i1 false, i1 false}
!22 = !{!"../drivers/regulator/uniphier-regulator.c", i32 158, i32 49}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/uniphier-regulator.c", i32 155, i32 2}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/uniphier-regulator.c", i32 155, i32 9}
!27 = !{ptr @uniphier_pro4_clock_reset_names, !28, !"uniphier_pro4_clock_reset_names", i1 false, i1 false}
!28 = !{!"../drivers/regulator/uniphier-regulator.c", i32 154, i32 27}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/uniphier-regulator.c", i32 136, i32 10}
!31 = !{ptr @uniphier_usb3_regulator_desc, !32, !"uniphier_usb3_regulator_desc", i1 false, i1 false}
!32 = !{!"../drivers/regulator/uniphier-regulator.c", i32 135, i32 36}
!33 = !{ptr @uniphier_regulator_ops, !34, !"uniphier_regulator_ops", i1 false, i1 false}
!34 = !{!"../drivers/regulator/uniphier-regulator.c", i32 35, i32 35}
!35 = !{ptr @uniphier_usb3_regulator_regconf, !36, !"uniphier_usb3_regulator_regconf", i1 false, i1 false}
!36 = !{!"../drivers/regulator/uniphier-regulator.c", i32 147, i32 35}
!37 = !{ptr @uniphier_pxs2_usb3_data, !38, !"uniphier_pxs2_usb3_data", i1 false, i1 false}
!38 = !{!"../drivers/regulator/uniphier-regulator.c", i32 171, i32 49}
!39 = !{ptr @uniphier_pxs2_clock_reset_names, !40, !"uniphier_pxs2_clock_reset_names", i1 false, i1 false}
!40 = !{!"../drivers/regulator/uniphier-regulator.c", i32 167, i32 27}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 1, i32 2000}
