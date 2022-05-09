; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/denali_dt.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/denali_dt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.denali_dt_data = type { i32, i32, i32, ptr }
%struct.nand_ecc_caps = type { ptr, i32, ptr }
%struct.nand_ecc_step_info = type { i32, ptr, i32 }
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
%struct.denali_controller = type { %struct.nand_controller, ptr, %struct.list_head, i32, i32, ptr, ptr, %struct.completion, i32, i32, i32, %struct.spinlock, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.denali_dt = type { %struct.denali_controller, ptr, ptr, ptr, ptr, ptr }
%struct.denali_chip = type { %struct.nand_chip, %struct.list_head, i32, [0 x %struct.denali_chip_sel] }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.46 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.46 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.anon.49 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.denali_chip_sel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_denali_dt__185_258_denali_dt_driver_init6 = internal global ptr @denali_dt_driver_init, section ".initcall6.init", align 4
@denali_dt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @denali_dt_probe, ptr @denali_dt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @denali_nand_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_denali_dt_driver_exit = internal global ptr @denali_dt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file186 = internal constant [46 x i8] c"denali_dt.file=drivers/mtd/nand/raw/denali_dt\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [25 x i8] c"denali_dt.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author188 = internal constant [28 x i8] c"denali_dt.author=Jamie Iles\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [59 x i8] c"denali_dt.description=DT driver for Denali NAND controller\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"denali-nand-dt\00", [17 x i8] zeroinitializer }, align 32
@denali_nand_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-denali-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @denali_socfpga_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-denali-nand-v5a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @denali_uniphier_v5a_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-denali-nand-v5b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @denali_uniphier_v5b_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/nand/raw/denali_dt.c\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"denali_reg\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nand_data\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nand_x\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ecc\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@denali_socfpga_data = internal constant { %struct.denali_dt_data, [16 x i8] } { %struct.denali_dt_data { i32 0, i32 1, i32 2, ptr @denali_socfpga_ecc_caps }, [16 x i8] zeroinitializer }, align 32
@denali_uniphier_v5a_data = internal constant { %struct.denali_dt_data, [16 x i8] } { %struct.denali_dt_data { i32 0, i32 3, i32 8, ptr @denali_uniphier_v5a_ecc_caps }, [16 x i8] zeroinitializer }, align 32
@denali_uniphier_v5b_data = internal constant { %struct.denali_dt_data, [16 x i8] } { %struct.denali_dt_data { i32 1281, i32 3, i32 8, ptr @denali_uniphier_v5b_ecc_caps }, [16 x i8] zeroinitializer }, align 32
@denali_socfpga_ecc_caps = internal constant { %struct.nand_ecc_caps, [20 x i8] } { %struct.nand_ecc_caps { ptr @denali_socfpga_ecc_caps_stepinfo, i32 1, ptr @denali_calc_ecc_bytes }, [20 x i8] zeroinitializer }, align 32
@denali_socfpga_ecc_caps_stepinfo = internal constant { %struct.nand_ecc_step_info, [20 x i8] } { %struct.nand_ecc_step_info { i32 512, ptr @denali_socfpga_ecc_caps_strengths, i32 2 }, [20 x i8] zeroinitializer }, align 32
@denali_socfpga_ecc_caps_strengths = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 15], [24 x i8] zeroinitializer }, align 32
@denali_uniphier_v5a_ecc_caps = internal constant { %struct.nand_ecc_caps, [20 x i8] } { %struct.nand_ecc_caps { ptr @denali_uniphier_v5a_ecc_caps_stepinfo, i32 1, ptr @denali_calc_ecc_bytes }, [20 x i8] zeroinitializer }, align 32
@denali_uniphier_v5a_ecc_caps_stepinfo = internal constant { %struct.nand_ecc_step_info, [20 x i8] } { %struct.nand_ecc_step_info { i32 1024, ptr @denali_uniphier_v5a_ecc_caps_strengths, i32 3 }, [20 x i8] zeroinitializer }, align 32
@denali_uniphier_v5a_ecc_caps_strengths = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 16, i32 24], [20 x i8] zeroinitializer }, align 32
@denali_uniphier_v5b_ecc_caps = internal constant { %struct.nand_ecc_caps, [20 x i8] } { %struct.nand_ecc_caps { ptr @denali_uniphier_v5b_ecc_caps_stepinfo, i32 1, ptr @denali_calc_ecc_bytes }, [20 x i8] zeroinitializer }, align 32
@denali_uniphier_v5b_ecc_caps_stepinfo = internal constant { %struct.nand_ecc_step_info, [20 x i8] } { %struct.nand_ecc_step_info { i32 1024, ptr @denali_uniphier_v5b_ecc_caps_strengths, i32 2 }, [20 x i8] zeroinitializer }, align 32
@denali_uniphier_v5b_ecc_caps_strengths = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 16], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"denali_dt_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 250, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 254, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"denali_nand_dt_ids\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 65, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 128, i32 6 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 141, i32 60 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 145, i32 61 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 149, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 153, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 157, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 165, i32 60 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 464, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"denali_socfpga_data\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 40, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant [25 x i8] c"denali_uniphier_v5a_data\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 48, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant [25 x i8] c"denali_uniphier_v5b_data\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 57, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"denali_socfpga_ecc_caps\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [33 x i8] c"denali_socfpga_ecc_caps_stepinfo\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [34 x i8] c"denali_socfpga_ecc_caps_strengths\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 38, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant [29 x i8] c"denali_uniphier_v5a_ecc_caps\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [38 x i8] c"denali_uniphier_v5a_ecc_caps_stepinfo\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [39 x i8] c"denali_uniphier_v5a_ecc_caps_strengths\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 46, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant [29 x i8] c"denali_uniphier_v5b_ecc_caps\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [38 x i8] c"denali_uniphier_v5b_ecc_caps_stepinfo\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [39 x i8] c"denali_uniphier_v5b_ecc_caps_strengths\00", align 1
@___asan_gen_.76 = private constant [36 x i8] c"../drivers/mtd/nand/raw/denali_dt.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 55, i32 1 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_denali_dt_driver_exit, ptr @__initcall__kmod_denali_dt__185_258_denali_dt_driver_init6, ptr @denali_dt_driver_exit, ptr @denali_dt_driver, ptr @.str, ptr @denali_nand_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @denali_socfpga_data, ptr @denali_uniphier_v5a_data, ptr @denali_uniphier_v5b_data, ptr @denali_socfpga_ecc_caps, ptr @denali_socfpga_ecc_caps_stepinfo, ptr @denali_socfpga_ecc_caps_strengths, ptr @denali_uniphier_v5a_ecc_caps, ptr @denali_uniphier_v5a_ecc_caps_stepinfo, ptr @denali_uniphier_v5a_ecc_caps_strengths, ptr @denali_uniphier_v5b_ecc_caps, ptr @denali_uniphier_v5b_ecc_caps_stepinfo, ptr @denali_uniphier_v5b_ecc_caps_strengths], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_dt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_nand_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_socfpga_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_uniphier_v5a_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_uniphier_v5b_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_socfpga_ecc_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_socfpga_ecc_caps_stepinfo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_socfpga_ecc_caps_strengths to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_uniphier_v5a_ecc_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_uniphier_v5a_ecc_caps_stepinfo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_uniphier_v5a_ecc_caps_strengths to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_uniphier_v5b_ecc_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_uniphier_v5b_ecc_caps_stepinfo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_uniphier_v5b_ecc_caps_strengths to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_dt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @denali_dt_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @denali_dt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @denali_dt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_dt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 300, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end28, !prof !59

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 128, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %0 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call2, align 4
  %revision29 = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 17
  %2 = ptrtoint ptr %revision29 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %revision29, align 4
  %caps = getelementptr inbounds %struct.denali_dt_data, ptr %call2, i32 0, i32 1
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps, align 4
  %caps30 = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 18
  %5 = ptrtoint ptr %caps30 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %caps30, align 4
  %oob_skip_bytes = getelementptr inbounds %struct.denali_dt_data, ptr %call2, i32 0, i32 2
  %6 = ptrtoint ptr %oob_skip_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oob_skip_bytes, align 4
  %oob_skip_bytes31 = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 14
  %8 = ptrtoint ptr %oob_skip_bytes31 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %oob_skip_bytes31, align 4
  %ecc_caps = getelementptr inbounds %struct.denali_dt_data, ptr %call2, i32 0, i32 3
  %9 = ptrtoint ptr %ecc_caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ecc_caps, align 4
  %ecc_caps32 = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 19
  %11 = ptrtoint ptr %ecc_caps32 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %ecc_caps32, align 4
  %dev33 = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %dev33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev1, ptr %dev33, align 4
  %call34 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call34, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %if.end28.cleanup_crit_edge, label %if.end38

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %call39 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #6
  %reg = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call39, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %call46 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #6
  %host = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call46, ptr %host, align 4
  %cmp.i217 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call46 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  %call53 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #6
  %clk = getelementptr inbounds %struct.denali_dt, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call53, ptr %clk, align 4
  %cmp.i218 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i218, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call53 to i32
  br label %cleanup

if.end59:                                         ; preds = %if.end52
  %call60 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.5) #6
  %clk_x = getelementptr inbounds %struct.denali_dt, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %clk_x to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call60, ptr %clk_x, align 4
  %cmp.i219 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call60 to i32
  br label %cleanup

if.end66:                                         ; preds = %if.end59
  %call67 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #6
  %clk_ecc = getelementptr inbounds %struct.denali_dt, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %clk_ecc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call67, ptr %clk_ecc, align 4
  %cmp.i220 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call67 to i32
  br label %cleanup

if.end73:                                         ; preds = %if.end66
  %call.i221 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %rst = getelementptr inbounds %struct.denali_dt, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i221, ptr %rst, align 4
  %cmp.i222 = icmp ugt ptr %call.i221, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222, label %if.then77, label %if.end80

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call.i221 to i32
  br label %cleanup

if.end80:                                         ; preds = %if.end73
  %call.i223 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %rst_reg = getelementptr inbounds %struct.denali_dt, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %rst_reg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i223, ptr %rst_reg, align 4
  %cmp.i224 = icmp ugt ptr %call.i223, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call.i223 to i32
  br label %cleanup

if.end87:                                         ; preds = %if.end80
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk, align 4
  %call89 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end92:                                         ; preds = %if.end87
  %30 = ptrtoint ptr %clk_x to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_x, align 4
  %call94 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end92.out_disable_clk_crit_edge

if.end92.out_disable_clk_crit_edge:               ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_disable_clk

if.end97:                                         ; preds = %if.end92
  %32 = ptrtoint ptr %clk_ecc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_ecc, align 4
  %call99 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end97.out_disable_clk_x_crit_edge

if.end97.out_disable_clk_x_crit_edge:             ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_disable_clk_x

if.end102:                                        ; preds = %if.end97
  %34 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk, align 4
  %call104 = tail call i32 @clk_get_rate(ptr noundef %35) #6
  %clk_rate = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call104, ptr %clk_rate, align 4
  %37 = ptrtoint ptr %clk_x to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk_x, align 4
  %call106 = tail call i32 @clk_get_rate(ptr noundef %38) #6
  %clk_x_rate = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 4
  %39 = ptrtoint ptr %clk_x_rate to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call106, ptr %clk_x_rate, align 4
  %40 = ptrtoint ptr %rst_reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rst_reg, align 4
  %call108 = tail call i32 @reset_control_deassert(ptr noundef %41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end102.out_disable_clk_ecc_crit_edge

if.end102.out_disable_clk_ecc_crit_edge:          ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_disable_clk_ecc

if.end111:                                        ; preds = %if.end102
  %42 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rst, align 4
  %call113 = tail call i32 @reset_control_deassert(ptr noundef %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.end111.out_assert_rst_reg_crit_edge

if.end111.out_assert_rst_reg_crit_edge:           ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_assert_rst_reg

if.end116:                                        ; preds = %if.end111
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 1000, i32 noundef 2) #6
  %call117 = tail call i32 @denali_init(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %if.end116.out_assert_rst_crit_edge

if.end116.out_assert_rst_crit_edge:               ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_assert_rst

if.end120:                                        ; preds = %if.end116
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %44 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node, align 8
  %call121 = tail call ptr @of_get_next_child(ptr noundef %45, ptr noundef null) #6
  %cmp122.not226 = icmp eq ptr %call121, null
  br i1 %cmp122.not226, label %if.end120.for.end_crit_edge, label %if.end120.for.body_crit_edge

if.end120.for.body_crit_edge:                     ; preds = %if.end120
  br label %for.body

if.end120.for.end_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end120.for.body_crit_edge
  %np.0227 = phi ptr [ %call128, %for.inc.for.body_crit_edge ], [ %call121, %if.end120.for.body_crit_edge ]
  %call123 = tail call fastcc i32 @denali_dt_chip_init(ptr noundef nonnull %call.i, ptr noundef nonnull %np.0227)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %for.inc, label %if.then125

if.then125:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @of_node_put(ptr noundef nonnull %np.0227) #6
  tail call void @denali_remove(ptr noundef nonnull %call.i) #6
  br label %out_assert_rst

for.inc:                                          ; preds = %for.body
  %46 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node, align 8
  %call128 = tail call ptr @of_get_next_child(ptr noundef %47, ptr noundef nonnull %np.0227) #6
  %cmp122.not = icmp eq ptr %call128, null
  br i1 %cmp122.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end120.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

out_assert_rst:                                   ; preds = %if.then125, %if.end116.out_assert_rst_crit_edge
  %ret.0 = phi i32 [ %call117, %if.end116.out_assert_rst_crit_edge ], [ %call123, %if.then125 ]
  %49 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rst, align 4
  %call130 = tail call i32 @reset_control_assert(ptr noundef %50) #6
  br label %out_assert_rst_reg

out_assert_rst_reg:                               ; preds = %out_assert_rst, %if.end111.out_assert_rst_reg_crit_edge
  %ret.1 = phi i32 [ %call113, %if.end111.out_assert_rst_reg_crit_edge ], [ %ret.0, %out_assert_rst ]
  %51 = ptrtoint ptr %rst_reg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rst_reg, align 4
  %call132 = tail call i32 @reset_control_assert(ptr noundef %52) #6
  br label %out_disable_clk_ecc

out_disable_clk_ecc:                              ; preds = %out_assert_rst_reg, %if.end102.out_disable_clk_ecc_crit_edge
  %ret.2 = phi i32 [ %call108, %if.end102.out_disable_clk_ecc_crit_edge ], [ %ret.1, %out_assert_rst_reg ]
  %53 = ptrtoint ptr %clk_ecc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk_ecc, align 4
  tail call void @clk_disable(ptr noundef %54) #6
  tail call void @clk_unprepare(ptr noundef %54) #6
  br label %out_disable_clk_x

out_disable_clk_x:                                ; preds = %out_disable_clk_ecc, %if.end97.out_disable_clk_x_crit_edge
  %ret.3 = phi i32 [ %call99, %if.end97.out_disable_clk_x_crit_edge ], [ %ret.2, %out_disable_clk_ecc ]
  %55 = ptrtoint ptr %clk_x to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk_x, align 4
  tail call void @clk_disable(ptr noundef %56) #6
  tail call void @clk_unprepare(ptr noundef %56) #6
  br label %out_disable_clk

out_disable_clk:                                  ; preds = %out_disable_clk_x, %if.end92.out_disable_clk_crit_edge
  %ret.4 = phi i32 [ %call94, %if.end92.out_disable_clk_crit_edge ], [ %ret.3, %out_disable_clk_x ]
  %57 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %58) #6
  tail call void @clk_unprepare(ptr noundef %58) #6
  br label %cleanup

cleanup:                                          ; preds = %out_disable_clk, %for.end, %if.end87.cleanup_crit_edge, %if.then84, %if.then77, %if.then70, %if.then63, %if.then56, %if.then49, %if.then42, %if.end28.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %15, %if.then42 ], [ %17, %if.then49 ], [ %19, %if.then56 ], [ %21, %if.then63 ], [ %23, %if.then70 ], [ %25, %if.then77 ], [ %27, %if.then84 ], [ %ret.4, %out_disable_clk ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ %call34, %if.end28.cleanup_crit_edge ], [ %call89, %if.end87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_dt_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @denali_remove(ptr noundef %1) #6
  %rst = getelementptr inbounds %struct.denali_dt, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #6
  %rst_reg = getelementptr inbounds %struct.denali_dt, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %rst_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst_reg, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #6
  %clk_ecc = getelementptr inbounds %struct.denali_dt, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clk_ecc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ecc, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %clk_x = getelementptr inbounds %struct.denali_dt, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %clk_x to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_x, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %clk = getelementptr inbounds %struct.denali_dt, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
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
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @denali_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @denali_dt_chip_init(ptr noundef %denali, ptr noundef %chip_np) unnamed_addr #2 align 64 {
entry:
  %bank = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank) #6
  %0 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bank, align 4, !annotation !60
  %call.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %chip_np, ptr noundef nonnull @.str.7, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 36) #6
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %5, i32 2184) #6
  %retval.0.i = select i1 %4, i32 -1, i32 %spec.select.i
  %call.i32 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %retval.0.i, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i32, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %nsels5 = getelementptr inbounds %struct.denali_chip, ptr %call.i32, i32 0, i32 2
  %6 = ptrtoint ptr %nsels5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i, ptr %nsels5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp633.not = icmp eq i32 %call.i, 0
  br i1 %cmp633.not, label %if.end4.for.end_crit_edge, label %for.body.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %of_node.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i32, i32 0, i32 56, i32 27
  %name.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i32, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %nand_set_flash_node.exit.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %nand_set_flash_node.exit.for.body_crit_edge ]
  %call7 = call i32 @of_property_read_u32_index(ptr noundef %chip_np, ptr noundef nonnull @.str.7, i32 noundef %i.034, ptr noundef nonnull %bank) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %7 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bank, align 4
  %arrayidx = getelementptr %struct.denali_chip, ptr %call.i32, i32 0, i32 3, i32 %i.034
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %chip_np, ptr %of_node.i.i, align 8
  %11 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end10.nand_set_flash_node.exit_crit_edge

if.end10.nand_set_flash_node.exit_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %nand_set_flash_node.exit

if.then.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = call i32 @of_property_read_string(ptr noundef %chip_np, ptr noundef nonnull @.str.8, ptr noundef %name.i.i) #6
  br label %nand_set_flash_node.exit

nand_set_flash_node.exit:                         ; preds = %if.then.i.i, %if.end10.nand_set_flash_node.exit_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %nand_set_flash_node.exit.for.end_crit_edge, label %nand_set_flash_node.exit.for.body_crit_edge

nand_set_flash_node.exit.for.body_crit_edge:      ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

nand_set_flash_node.exit.for.end_crit_edge:       ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %nand_set_flash_node.exit.for.end_crit_edge, %if.end4.for.end_crit_edge
  %call12 = call i32 @denali_chip_init(ptr noundef %denali, ptr noundef nonnull %call.i32) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %for.end ], [ %call.i, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call7, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @denali_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @denali_chip_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @denali_calc_ecc_bytes(i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_denali_dt__185_258_denali_dt_driver_init6, !1, !"__initcall__kmod_denali_dt__185_258_denali_dt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 258, i32 1}
!2 = !{ptr @__exitcall_denali_dt_driver_exit, !1, !"__exitcall_denali_dt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file186, !4, !"__UNIQUE_ID_file186", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 260, i32 1}
!5 = !{ptr @__UNIQUE_ID_license187, !4, !"__UNIQUE_ID_license187", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author188, !7, !"__UNIQUE_ID_author188", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 261, i32 1}
!8 = !{ptr @__UNIQUE_ID_description189, !9, !"__UNIQUE_ID_description189", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 262, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 254, i32 11}
!12 = !{ptr @denali_dt_driver, !13, !"denali_dt_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 250, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 128, i32 6}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 141, i32 60}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 145, i32 61}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 149, i32 30}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 153, i32 32}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 157, i32 34}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 165, i32 60}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!30 = !{ptr @denali_nand_dt_ids, !31, !"denali_nand_dt_ids", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 65, i32 34}
!32 = !{ptr @denali_socfpga_data, !33, !"denali_socfpga_data", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 40, i32 36}
!34 = !{ptr @denali_socfpga_ecc_caps, !35, !"denali_socfpga_ecc_caps", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 38, i32 1}
!36 = !{ptr @denali_socfpga_ecc_caps_stepinfo, !35, !"denali_socfpga_ecc_caps_stepinfo", i1 false, i1 false}
!37 = !{ptr @denali_socfpga_ecc_caps_strengths, !35, !"denali_socfpga_ecc_caps_strengths", i1 false, i1 false}
!38 = !{ptr @denali_uniphier_v5a_data, !39, !"denali_uniphier_v5a_data", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 48, i32 36}
!40 = !{ptr @denali_uniphier_v5a_ecc_caps, !41, !"denali_uniphier_v5a_ecc_caps", i1 false, i1 false}
!41 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 46, i32 1}
!42 = !{ptr @denali_uniphier_v5a_ecc_caps_stepinfo, !41, !"denali_uniphier_v5a_ecc_caps_stepinfo", i1 false, i1 false}
!43 = !{ptr @denali_uniphier_v5a_ecc_caps_strengths, !41, !"denali_uniphier_v5a_ecc_caps_strengths", i1 false, i1 false}
!44 = !{ptr @denali_uniphier_v5b_data, !45, !"denali_uniphier_v5b_data", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 57, i32 36}
!46 = !{ptr @denali_uniphier_v5b_ecc_caps, !47, !"denali_uniphier_v5b_ecc_caps", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/raw/denali_dt.c", i32 55, i32 1}
!48 = !{ptr @denali_uniphier_v5b_ecc_caps_stepinfo, !47, !"denali_uniphier_v5b_ecc_caps_stepinfo", i1 false, i1 false}
!49 = !{ptr @denali_uniphier_v5b_ecc_caps_strengths, !47, !"denali_uniphier_v5b_ecc_caps_strengths", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{!"auto-init"}
